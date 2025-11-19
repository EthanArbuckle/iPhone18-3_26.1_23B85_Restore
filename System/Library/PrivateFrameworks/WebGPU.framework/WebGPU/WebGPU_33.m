void WGSL::TypeChecker::visit(WGSL::AST::IndexAccessExpression &)::$_2::operator()(uint64_t a1, unint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v5 = a3;
  v6 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_99;
  }

  v8 = *(a2 + 8);
  v9 = *(a3 + 48);
  if (v9 == 1)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v11 = *a3;
    v20 = *a2;
    v10 = *(a3 + 8);
    v21 = **a2;
    v22 = *(v21 + 64);
    LOBYTE(v53[0]) = 0;
    v55 = 0;
    if (*(v22 + 56) == 1)
    {
      v54 = -1;
      v23 = *(v22 + 48);
      if (v23 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v23, v50, v53, (v22 + 32));
        v54 = *(v22 + 48);
        v21 = *v20;
      }

      v55 = 1;
    }

    v24 = *(v21 + 72);
    LOBYTE(v50[0]) = 0;
    v52 = 0;
    if (*(v24 + 56) != 1)
    {
      goto LABEL_88;
    }

    v25 = 255;
    v51 = -1;
    v19 = *(v24 + 48);
    if (v19 != 255)
    {
      v19 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v19, v48, v50, (v24 + 32));
      v25 = *(v24 + 48);
      v51 = *(v24 + 48);
    }

    v52 = 1;
    if (!v10)
    {
      if (v55 != 1)
      {
        goto LABEL_88;
      }

      if (v54 != 8)
      {
        goto LABEL_164;
      }

      if (!v53[0] || (v10 = *v53[0], !v10))
      {
LABEL_88:
        v36 = 0;
        v40 = 0;
        if (v52 != 1)
        {
          goto LABEL_91;
        }

        goto LABEL_89;
      }
    }

    switch(v25)
    {
      case 5:
        a2 = v50[0];
        break;
      case 4:
        a2 = LODWORD(v50[0]);
        break;
      case 3:
        a2 = SLODWORD(v50[0]);
        break;
      default:
        __break(0xC471u);
        JUMPOUT(0x225866DC4);
    }

    if ((a2 & 0x8000000000000000) != 0 || a2 >= v10)
    {
      WTF::makeString<WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned int,char>(v48, a2, v10 - 1);
      v10 = *(*v20 + 8);
      v4 = *(*v20 + 16);
      v36 = v48[0];
      v40 = 1;
      if (v52 != 1)
      {
        goto LABEL_91;
      }

LABEL_89:
      if (v51 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v50);
      }

LABEL_91:
      if (v55 == 1 && v54 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v50, v53);
      }

      if (v40)
      {
        goto LABEL_123;
      }

      goto LABEL_95;
    }

    if (v55 != 1)
    {
      goto LABEL_88;
    }

    if (v54 != 8)
    {
      goto LABEL_164;
    }

    if (*v53[0] <= a2)
    {
      __break(0xC471u);
      JUMPOUT(0x225866D64);
    }

    v37 = *v20;
    v38 = v53[0] + 24 * a2;
    LOBYTE(v48[0]) = 0;
    v49 = -1;
    v39 = *(v38 + 24);
    if (v39 == 255)
    {
      v10 = (v37 + 56);
      if ((v37[56] & 1) == 0)
      {
        v37[32] = 0;
        v37[48] = -1;
LABEL_143:
        *v10 = 1;
        goto LABEL_146;
      }

      a3 = (v37 + 32);
    }

    else
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v39, &v56, v48, (v38 + 8));
      v39 = *(v38 + 24);
      v49 = *(v38 + 24);
      v10 = (v37 + 56);
      a3 = (v37 + 32);
      if ((v37[56] & 1) == 0)
      {
        v37[32] = 0;
        v37[48] = -1;
        if (v39 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v39, &v56, a3, v48);
          v37[48] = v49;
        }

        goto LABEL_143;
      }
    }

    if (v37[48] == 255)
    {
      if (v39 == 255)
      {
        goto LABEL_148;
      }
    }

    else if (v39 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, a3);
      v37[48] = -1;
      goto LABEL_146;
    }

    v56 = a3;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v39, &v56, a3, v48);
LABEL_146:
    if (v49 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v48);
    }

LABEL_148:
    v36 = 0;
    v40 = 0;
    v49 = -1;
    if (v52 != 1)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  if (v9 == 2)
  {
    v11 = WGSL::TypeStore::vectorType(*(v8 + 72), *(a3 + 9), *a3);
    v12 = *v6;
    v13 = *(v5 + 8);
    v14 = **v6;
    v15 = *(v14 + 64);
    LOBYTE(v53[0]) = 0;
    v55 = 0;
    if (*(v15 + 56) == 1)
    {
      v54 = -1;
      v16 = *(v15 + 48);
      if (v16 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v16, v50, v53, (v15 + 32));
        v54 = *(v15 + 48);
        v14 = *v12;
      }

      v55 = 1;
    }

    v17 = *(v14 + 72);
    LOBYTE(v50[0]) = 0;
    v52 = 0;
    if (*(v17 + 56) != 1)
    {
      goto LABEL_67;
    }

    v18 = 255;
    v51 = -1;
    v19 = *(v17 + 48);
    if (v19 != 255)
    {
      v19 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v19, v48, v50, (v17 + 32));
      v18 = *(v17 + 48);
      v51 = *(v17 + 48);
    }

    v52 = 1;
    if (!v13)
    {
      if (v55 != 1)
      {
        goto LABEL_67;
      }

      if (v54 != 9)
      {
        goto LABEL_164;
      }

      v13 = LODWORD(v53[0]);
      if (!LODWORD(v53[0]))
      {
LABEL_67:
        v35 = 0;
        v36 = 0;
        if (v52 != 1)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }
    }

    switch(v18)
    {
      case 5:
        a2 = v50[0];
        break;
      case 4:
        a2 = LODWORD(v50[0]);
        break;
      case 3:
        a2 = SLODWORD(v50[0]);
        break;
      default:
        __break(0xC471u);
        JUMPOUT(0x225866DA4);
    }

    if ((a2 & 0x8000000000000000) != 0 || a2 >= v13)
    {
      WTF::makeString<WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned int,char>(v48, a2, v13 - 1);
      v4 = *(*v12 + 8);
      v13 = *(*v12 + 16);
      v36 = v48[0];
      v35 = 1;
      if (v52 != 1)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v55 != 1)
      {
        goto LABEL_67;
      }

      if (v54 != 9)
      {
        goto LABEL_164;
      }

      v32 = *v12;
      WGSL::ConstantMatrix::operator[](v53, a2, &v47);
      v48[0] = v47;
      v49 = 8;
      v33 = (v32 + 32);
      if (v32[56] == 1)
      {
        v56 = (v32 + 32);
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(8, &v56, v33, v48);
        v34 = v49;
      }

      else
      {
        v32[32] = 0;
        v32[48] = -1;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(8, &v56, v33, v48);
        v34 = v49;
        v32[48] = v49;
        v32[56] = 1;
      }

      if (v34 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v48);
      }

      v35 = 0;
      v36 = 0;
      v49 = -1;
      if (v52 != 1)
      {
LABEL_70:
        if (v55 == 1 && v54 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v50, v53);
        }

        if (v35)
        {
          if (v36)
          {
            atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
            *a1 = v36;
            *(a1 + 8) = v4;
            *(a1 + 16) = v13;
            goto LABEL_125;
          }

          *a1 = 0;
          *(a1 + 8) = v4;
          *(a1 + 16) = v13;
LABEL_167:
          *(a1 + 24) = 1;
          return;
        }

        goto LABEL_95;
      }
    }

LABEL_68:
    if (v51 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v50);
    }

    goto LABEL_70;
  }

  if (v9 != 3)
  {
    goto LABEL_99;
  }

  if (*(a3 + 16) == 1)
  {
    v10 = *(a3 + 2) | 0x100000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = *a3;
  v26 = *a2;
  v27 = **a2;
  v28 = *(v27 + 8);
  LOBYTE(v53[0]) = 0;
  v55 = 0;
  if (*(v28 + 56) == 1)
  {
    v54 = -1;
    v29 = *(v28 + 48);
    if (v29 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, v50, v53, (v28 + 32));
      v54 = *(v28 + 48);
      v27 = *v26;
    }

    v55 = 1;
  }

  v30 = *(v27 + 9);
  LOBYTE(v50[0]) = 0;
  v52 = 0;
  if (*(v30 + 56) != 1)
  {
    goto LABEL_116;
  }

  v31 = 255;
  v51 = -1;
  v19 = *(v30 + 48);
  if (v19 != 255)
  {
    v19 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v19, v48, v50, (v30 + 32));
    v31 = *(v30 + 48);
    v51 = *(v30 + 48);
  }

  v52 = 1;
  if ((v10 & 0x100000000) == 0 || !v10)
  {
    if (v55 != 1)
    {
      goto LABEL_116;
    }

    if (v54 != 7)
    {
      goto LABEL_164;
    }

    if (!v53[0] || (v10 = *v53[0], !v10))
    {
LABEL_116:
      v36 = 0;
      v46 = 0;
      if (v52 != 1)
      {
        goto LABEL_119;
      }

      goto LABEL_117;
    }
  }

  switch(v31)
  {
    case 5:
      a2 = v50[0];
      break;
    case 4:
      a2 = LODWORD(v50[0]);
      break;
    case 3:
      a2 = SLODWORD(v50[0]);
      break;
    default:
      __break(0xC471u);
      goto LABEL_174;
  }

  if ((a2 & 0x8000000000000000) == 0 && a2 < v10)
  {
    if (v55 != 1)
    {
      goto LABEL_116;
    }

    if (v54 == 7)
    {
      if (*v53[0] <= a2)
      {
        __break(0xC471u);
        JUMPOUT(0x225866D84);
      }

      v43 = *v26;
      v44 = v53[0] + 24 * a2;
      LOBYTE(v48[0]) = 0;
      v49 = -1;
      v45 = *(v44 + 24);
      if (v45 == 255)
      {
        v10 = (v43 + 56);
        if ((v43[56] & 1) == 0)
        {
          v43[32] = 0;
          v43[48] = -1;
LABEL_151:
          *v10 = 1;
          goto LABEL_154;
        }

        a3 = (v43 + 32);
      }

      else
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v45, &v56, v48, (v44 + 8));
        v45 = *(v44 + 24);
        v49 = *(v44 + 24);
        v10 = (v43 + 56);
        a3 = (v43 + 32);
        if ((v43[56] & 1) == 0)
        {
          v43[32] = 0;
          v43[48] = -1;
          if (v45 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v45, &v56, a3, v48);
            v43[48] = v49;
          }

          goto LABEL_151;
        }
      }

      if (v43[48] == 255)
      {
        if (v45 == 255)
        {
          goto LABEL_156;
        }
      }

      else if (v45 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, a3);
        v43[48] = -1;
        goto LABEL_154;
      }

      v56 = a3;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v45, &v56, a3, v48);
LABEL_154:
      if (v49 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v48);
      }

LABEL_156:
      v36 = 0;
      v46 = 0;
      v49 = -1;
      if (v52 != 1)
      {
        goto LABEL_119;
      }

      goto LABEL_117;
    }

LABEL_164:
    mpark::throw_bad_variant_access(v19);
  }

  WTF::makeString<WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned int,char>(v48, a2, v10 - 1);
  v10 = *(*v26 + 8);
  v4 = *(*v26 + 16);
  v36 = v48[0];
  v46 = 1;
  if (v52 != 1)
  {
    goto LABEL_119;
  }

LABEL_117:
  if (v51 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v50);
  }

LABEL_119:
  if (v55 == 1 && v54 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v50, v53);
  }

  if (v46)
  {
LABEL_123:
    if (v36)
    {
      atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      *a1 = v36;
      *(a1 + 8) = v10;
      *(a1 + 16) = v4;
LABEL_125:
      *(a1 + 24) = 1;
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, a2);
      }

      return;
    }

    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = v4;
    goto LABEL_167;
  }

LABEL_95:
  if (v11)
  {
    if ((*(*(*(v6 + 16) + 72) + 56) & 1) != 0 || (v11 = WGSL::concretize(v11, *(v8 + 72), a3)) != 0)
    {
      *a1 = v11;
      *(a1 + 24) = 0;
      return;
    }

    __break(0xC471u);
LABEL_174:
    JUMPOUT(0x225866D44);
  }

LABEL_99:
  v57[0] = 0;
  v58 = -1;
  v41 = *(v5 + 48);
  if (v41 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v41, v53, v57, v5);
    v58 = *(v5 + 48);
  }

  WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(v53, "cannot index type '", 20, v57);
  v42 = *(v6 + 16);
  *a1 = v53[0];
  *(a1 + 8) = *(v42 + 8);
  *(a1 + 24) = 1;
  if (v58 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(v50, v57);
  }
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,char>(void *a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >> 31)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    v8 = *(a4 + 4);
    if (v8 < 0)
    {
      goto LABEL_18;
    }

    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 1;
    if (__OFSUB__(a3, 1))
    {
LABEL_18:
      *a1 = 0;
      goto LABEL_19;
    }
  }

  if (__OFADD__(v5, v10))
  {
    goto LABEL_18;
  }

  v11 = !a4 || (*(a4 + 16) & 4) != 0;
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<char,void>>((v5 + v10), v11, a2, v5, a4, 39, a1);
  if (!*a1)
  {
LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x225866E84);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6)
{
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
    JUMPOUT(0x225867788);
  }

  if (a6)
  {
    v7 = a6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >> 31)
  {
    __break(0xC471u);
    goto LABEL_175;
  }

  v12 = result;
  if (a4)
  {
    v13 = *(a4 + 4);
    if (((v13 | v7) & 0x80000000) != 0)
    {
      goto LABEL_172;
    }
  }

  else
  {
    v13 = 0;
    if ((v7 & 0x80000000) != 0)
    {
LABEL_172:
      *v12 = 0;
      __break(0xC471u);
      goto LABEL_176;
    }
  }

  v14 = __OFADD__(v13, v7);
  v15 = v13 + v7;
  if (v14)
  {
    goto LABEL_172;
  }

  v14 = __OFADD__(v15, 2);
  v16 = v15 + 2;
  if (v14)
  {
    goto LABEL_172;
  }

  v14 = __OFADD__(v6, v16);
  v17 = v6 + v16;
  if (v14)
  {
    goto LABEL_172;
  }

  v18 = v17 + 11;
  if (__OFADD__(v17, 11))
  {
    goto LABEL_172;
  }

  if (!a4 || (*(a4 + 16) & 4) != 0)
  {
    if (v17 == -11)
    {
      goto LABEL_52;
    }

    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_172;
    }

    result = WTF::tryFastCompactMalloc((v18 + 20));
    v21 = v153;
    if (!v153)
    {
      goto LABEL_172;
    }

    *v153 = 2;
    *(v153 + 4) = v18;
    *(v153 + 20) = *"cannot use ";
    *(v153 + 8) = v153 + 20;
    *(v153 + 16) = 4;
    *(v153 + 27) = 543519605;
    if (v18 <= 0xA)
    {
      goto LABEL_175;
    }

    v46 = v18 - 11;
    v47 = (v153 + 31);
    if (v6)
    {
      if (v6 == 1)
      {
        *v47 = a2->i8[0];
      }

      else
      {
        result = memcpy((v153 + 31), a2, v6);
      }
    }

    v48 = v46 - v6;
    if (v46 < v6)
    {
      goto LABEL_175;
    }

    *&v47[v6] = 10016;
    if (v48 <= 1)
    {
      goto LABEL_175;
    }

    v49 = &v47[v6];
    v50 = &v47[v6 + 2];
    if (!a4)
    {
      v57 = 0;
      goto LABEL_101;
    }

    v51 = v48 - 2;
    v52 = *(a4 + 8);
    v53 = *(a4 + 4);
    if ((*(a4 + 16) & 4) != 0)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          *v50 = v52->i8[0];
        }

        else
        {
          result = memcpy(v49 + 2, v52, v53);
        }
      }

LABEL_100:
      v57 = *(a4 + 4);
      if (v51 < v57)
      {
        goto LABEL_175;
      }

LABEL_101:
      if (v7)
      {
        if (v7 == 1)
        {
          *(v50 + v57) = a5->i8[0];
        }

        else
        {
          result = memcpy(v50 + v57, a5, v7);
        }
      }

      goto LABEL_129;
    }

    v54 = (v50 + v53);
    if (v53 < 0x10)
    {
      v55 = (v49 + 2);
      if (v50 == v54)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v55 = (v49 + 2);
      do
      {
        v56 = vld2q_s8(v52->i8);
        v52 += 2;
        *v55++ = v56;
      }

      while (v55 != (v50 + (v53 & 0xFFFFFFF0)));
      if (v55 == v54)
      {
        goto LABEL_100;
      }
    }

    v68 = a3 + v153 + v53;
    v69 = v68 - v55 - (a3 != 0) + 33;
    if (v69 < 4 || (!a3 ? (v70 = v55) : (v70 = (v55 + 1)), v55 < &v52[4].i16[v68 + 1 - v70] ? (v71 = v52 >= v68 - (a3 != 0) + 33) : (v71 = 1), !v71))
    {
      v73 = v55;
      v74 = v52;
      goto LABEL_84;
    }

    if (v69 >= 0x20)
    {
      v72 = v69 & 0xFFFFFFFFFFFFFFE0;
      v131 = v52 + 2;
      v132 = (v55 + 1);
      v133 = v69 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v135 = v131[-2];
        v134 = v131[-1];
        v137 = *v131;
        v136 = v131[1];
        v131 += 4;
        v132[-1] = vuzp1q_s8(v135, v134);
        *v132 = vuzp1q_s8(v137, v136);
        v132 += 2;
        v133 -= 32;
      }

      while (v133);
      if (v69 == v72)
      {
        goto LABEL_100;
      }

      if ((v69 & 0x1C) == 0)
      {
        v74 = (v52 + 2 * v72);
        v73 = (v55 + v72);
        goto LABEL_84;
      }
    }

    else
    {
      v72 = 0;
    }

    v73 = (v55 + (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v74 = (v52 + 2 * (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v138 = (v52 + 2 * v72);
    v139 = (v55 + v72);
    v140 = v72 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v141 = *v138++;
      *v139++ = vuzp1_s8(v141, v141).u32[0];
      v140 += 4;
    }

    while (v140);
    if (v69 == (v69 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_100;
    }

    do
    {
LABEL_84:
      v75 = v74->i8[0];
      v74 = (v74 + 2);
      *v73 = v75;
      v73 = (v73 + 1);
    }

    while (v73 != v54);
    goto LABEL_100;
  }

  if (v17 == -11)
  {
LABEL_52:
    v21 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_129;
  }

  if (v18 > 0x7FFFFFEF)
  {
    goto LABEL_172;
  }

  v19 = v18;
  result = WTF::tryFastCompactMalloc((2 * v18 + 20));
  v20 = a6;
  v21 = v153;
  if (!v153)
  {
    goto LABEL_172;
  }

  *v153 = 2;
  *(v153 + 4) = v18;
  *(v153 + 20) = xmmword_2258828C0;
  *(v153 + 8) = v153 + 20;
  *(v153 + 16) = 0;
  *(v153 + 36) = 6619251;
  *(v153 + 40) = 32;
  if (v18 <= 0xA)
  {
LABEL_175:
    __break(1u);
LABEL_176:
    JUMPOUT(0x225867768);
  }

  v22 = v153 + 42;
  v23 = (v153 + 42 + 2 * v6);
  if (v6 >= 0x40)
  {
    v24 = v22 + 2 * (v6 & 0x7FFFFFC0);
    v25 = 0uLL;
    do
    {
      v154.val[0] = *a2;
      v26 = a2[1];
      v157.val[0] = a2[2];
      v27 = a2[3];
      a2 += 4;
      v28 = v27;
      v157.val[1] = 0uLL;
      v160.val[0] = v26;
      v154.val[1] = 0uLL;
      v29 = v22;
      vst2q_s8(v29, v154);
      v29 += 32;
      v160.val[1] = 0uLL;
      vst2q_s8(v29, v160);
      v30 = (v22 + 64);
      vst2q_s8(v30, v157);
      v31 = (v22 + 96);
      vst2q_s8(v31, *(&v25 - 1));
      v22 += 128;
    }

    while (v22 != v24);
    v22 = v24;
  }

  v32 = v19 - 11;
  if (v22 != v23)
  {
    v33 = v153 + 2 * a3 - v22;
    v34 = -2;
    if (a3)
    {
      v35 = -2;
    }

    else
    {
      v35 = 0;
    }

    v36 = v33 + v35 + 40;
    if (v36 < 0xE)
    {
      goto LABEL_36;
    }

    if (!a3)
    {
      v34 = 0;
    }

    v37 = v33 + v34 + 40;
    if (v22 < a2->u64 + (v37 >> 1) + 1 && a2 < (v37 & 0xFFFFFFFFFFFFFFFELL) + v22 + 2)
    {
LABEL_36:
      v38 = a2;
      v39 = v22;
      goto LABEL_37;
    }

    v105 = (v36 >> 1) + 1;
    if (v36 >= 0x3E)
    {
      v106 = v105 & 0xFFFFFFFFFFFFFFE0;
      v109 = (v22 + 32);
      v110 = &a2[1];
      v111 = v105 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v112 = *v110[-2].i8;
        v113 = vmovl_u8(*v110);
        v114 = vmovl_high_u8(*v110->i8);
        v109[-2] = vmovl_u8(*v112.i8);
        v109[-1] = vmovl_high_u8(v112);
        *v109 = v113;
        v109[1] = v114;
        v109 += 4;
        v110 += 4;
        v111 -= 32;
      }

      while (v111);
      if (v105 == v106)
      {
        goto LABEL_38;
      }

      if ((v105 & 0x18) == 0)
      {
        v39 = (v22 + 2 * v106);
        v38 = (a2 + v106);
        do
        {
LABEL_37:
          v40 = v38->u8[0];
          v38 = (v38 + 1);
          *v39++ = v40;
        }

        while (v39 != v23);
        goto LABEL_38;
      }
    }

    else
    {
      v106 = 0;
    }

    v38 = (a2 + (v105 & 0xFFFFFFFFFFFFFFF8));
    v39 = (v22 + 2 * (v105 & 0xFFFFFFFFFFFFFFF8));
    v115 = (v22 + 2 * v106);
    v116 = &a2->i8[v106];
    v117 = v106 - (v105 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v118 = *v116++;
      *v115++ = vmovl_u8(v118);
      v117 += 8;
    }

    while (v117);
    if (v105 != (v105 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  v71 = v32 >= v6;
  v41 = v32 - v6;
  if (!v71)
  {
    goto LABEL_175;
  }

  *v23 = 2555936;
  v42 = (v23 + 1);
  if (v41 <= 1)
  {
    goto LABEL_175;
  }

  v43 = v41 - 2;
  v44 = *(a4 + 8);
  v45 = *(a4 + 4);
  if ((*(a4 + 16) & 4) != 0)
  {
    v58 = &v42[2 * v45];
    if (v45 < 0x40)
    {
      v59 = v42;
    }

    else
    {
      v59 = &v42[2 * (v45 & 0xFFFFFFC0)];
      v60 = 0uLL;
      v61 = v42;
      do
      {
        v155.val[0] = *v44;
        v62 = v44[1];
        v158.val[0] = v44[2];
        v63 = v44[3];
        v44 += 4;
        v64 = v63;
        v158.val[1] = 0uLL;
        v161.val[0] = v62;
        v155.val[1] = 0uLL;
        v65 = v61;
        vst2q_s8(v65, v155);
        v65 += 32;
        v161.val[1] = 0uLL;
        vst2q_s8(v65, v161);
        v66 = v61 + 64;
        vst2q_s8(v66, v158);
        v67 = v61 + 96;
        vst2q_s8(v67, *(&v60 - 1));
        v61 += 128;
      }

      while (v61 != v59);
    }

    if (v59 == v58)
    {
      goto LABEL_106;
    }

    v76 = v153 + 2 * (a3 + v45) - v59;
    v77 = -2;
    if (a3)
    {
      v78 = -2;
    }

    else
    {
      v78 = 0;
    }

    v79 = v76 + v78 + 44;
    if (v79 < 0xE)
    {
      goto LABEL_96;
    }

    if (!a3)
    {
      v77 = 0;
    }

    v80 = v76 + v77 + 44;
    if (v59 < v44->u64 + (v80 >> 1) + 1 && v44 < (v80 & 0xFFFFFFFFFFFFFFFELL) + v59 + 2)
    {
LABEL_96:
      v81 = v44;
      v82 = v59;
      goto LABEL_97;
    }

    v119 = (v79 >> 1) + 1;
    if (v79 >= 0x3E)
    {
      v120 = v119 & 0xFFFFFFFFFFFFFFE0;
      v142 = (v59 + 32);
      v143 = &v44[1];
      v144 = v119 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v145 = *v143[-2].i8;
        v146 = vmovl_u8(*v143);
        v147 = vmovl_high_u8(*v143->i8);
        v142[-2] = vmovl_u8(*v145.i8);
        v142[-1] = vmovl_high_u8(v145);
        *v142 = v146;
        v142[1] = v147;
        v142 += 4;
        v143 += 4;
        v144 -= 32;
      }

      while (v144);
      if (v119 == v120)
      {
        goto LABEL_106;
      }

      if ((v119 & 0x18) == 0)
      {
        v82 = (v59 + 2 * v120);
        v81 = (v44 + v120);
        goto LABEL_97;
      }
    }

    else
    {
      v120 = 0;
    }

    v81 = (v44 + (v119 & 0xFFFFFFFFFFFFFFF8));
    v82 = (v59 + 2 * (v119 & 0xFFFFFFFFFFFFFFF8));
    v148 = (v59 + 2 * v120);
    v149 = &v44->i8[v120];
    v150 = v120 - (v119 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v151 = *v149++;
      *v148++ = vmovl_u8(v151);
      v150 += 8;
    }

    while (v150);
    if (v119 == (v119 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_106;
    }

    do
    {
LABEL_97:
      v83 = v81->u8[0];
      v81 = (v81 + 1);
      *v82 = v83;
      v82 += 2;
    }

    while (v82 != v58);
    goto LABEL_106;
  }

  if (v45)
  {
    if (v45 == 1)
    {
      *v42 = v44->i16[0];
    }

    else
    {
      result = memcpy(v42, v44, 2 * v45);
      v20 = a6;
    }
  }

LABEL_106:
  v84 = *(a4 + 4);
  if (v43 < v84)
  {
    goto LABEL_175;
  }

  v85 = &v42[2 * v84];
  v86 = (v85 + 2 * v7);
  if (v7 >= 0x40)
  {
    v87 = v85 + 2 * (v7 & 0x7FFFFFC0);
    v88 = 0uLL;
    do
    {
      v156.val[0] = *a5;
      v89 = a5[1];
      v159.val[0] = a5[2];
      v90 = a5[3];
      a5 += 4;
      v91 = v90;
      v159.val[1] = 0uLL;
      v162.val[0] = v89;
      v156.val[1] = 0uLL;
      v92 = v85;
      vst2q_s8(v92, v156);
      v92 += 32;
      v162.val[1] = 0uLL;
      vst2q_s8(v92, v162);
      v93 = (v85 + 64);
      vst2q_s8(v93, v159);
      v94 = (v85 + 96);
      vst2q_s8(v94, *(&v88 - 1));
      v85 += 128;
    }

    while (v85 != v87);
    v85 = v87;
  }

  if (v85 != v86)
  {
    v95 = v153 + 2 * (a3 + v20 + v84) - v85;
    if (a3)
    {
      v96 = -2;
    }

    else
    {
      v96 = 0;
    }

    if (v20)
    {
      v97 = -2;
    }

    else
    {
      v97 = 0;
    }

    v98 = v95 + v96 + v97 + 44;
    if (v98 < 0xE || (a3 ? (v99 = -2) : (v99 = 0), v20 ? (v100 = -2) : (v100 = 0), (v101 = v95 + v99 + v100 + 44, v85 < a5->u64 + (v101 >> 1) + 1) && a5 < (v101 & 0xFFFFFFFFFFFFFFFELL) + v85 + 2))
    {
      v102 = a5;
      v103 = v85;
      goto LABEL_128;
    }

    v107 = (v98 >> 1) + 1;
    if (v98 >= 0x3E)
    {
      v108 = v107 & 0xFFFFFFFFFFFFFFE0;
      v121 = (v85 + 32);
      v122 = &a5[1];
      v123 = v107 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v124 = *v122[-2].i8;
        v125 = vmovl_u8(*v122);
        v126 = vmovl_high_u8(*v122->i8);
        v121[-2] = vmovl_u8(*v124.i8);
        v121[-1] = vmovl_high_u8(v124);
        *v121 = v125;
        v121[1] = v126;
        v121 += 4;
        v122 += 4;
        v123 -= 32;
      }

      while (v123);
      if (v107 == v108)
      {
        goto LABEL_129;
      }

      if ((v107 & 0x18) == 0)
      {
        v103 = (v85 + 2 * v108);
        v102 = (a5 + v108);
        do
        {
LABEL_128:
          v104 = v102->u8[0];
          v102 = (v102 + 1);
          *v103++ = v104;
        }

        while (v103 != v86);
        goto LABEL_129;
      }
    }

    else
    {
      v108 = 0;
    }

    v102 = (a5 + (v107 & 0xFFFFFFFFFFFFFFF8));
    v103 = (v85 + 2 * (v107 & 0xFFFFFFFFFFFFFFF8));
    v127 = (v85 + 2 * v108);
    v128 = &a5->i8[v108];
    v129 = v108 - (v107 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v130 = *v128++;
      *v127++ = vmovl_u8(v130);
      v129 += 8;
    }

    while (v129);
    if (v107 != (v107 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_128;
    }
  }

LABEL_129:
  *v12 = v21;
  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(uint64_t result, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225867980);
  }

  if (a5)
  {
    v6 = a5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >> 31)
  {
    __break(0xC471u);
LABEL_34:
    __break(1u);
LABEL_35:
    JUMPOUT(0x225867960);
  }

  v7 = result;
  if (__OFADD__(v6, 11) || (v8 = v6 + 21, __OFADD__(v6 + 11, 10)) || (v9 = __OFADD__(v5, v8), v10 = v5 + v8, v9) || (v11 = (v10 + 11), __OFADD__(v10, 11)))
  {
LABEL_31:
    *v7 = 0;
    __break(0xC471u);
    goto LABEL_35;
  }

  if (v10 != -11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      result = WTF::tryFastCompactMalloc((v11 + 20));
      v14 = v22;
      if (v22)
      {
        *v22 = 2;
        *(v22 + 4) = v11;
        *(v22 + 20) = *"cannot use ";
        *(v22 + 8) = v22 + 20;
        *(v22 + 16) = 4;
        *(v22 + 27) = 543519605;
        if (v11 > 0xA)
        {
          v15 = v11 - 11;
          v16 = (v22 + 31);
          if (v5)
          {
            if (v5 == 1)
            {
              *v16 = *a2;
            }

            else
            {
              result = memcpy((v22 + 31), a2, v5);
            }
          }

          v17 = v15 - v5;
          if (v15 >= v5)
          {
            v18 = &v16[v5];
            *v18 = *" value in ";
            *(v18 + 4) = 8302;
            if (v17 > 9)
            {
              v19 = v17 - 10;
              v20 = v18 + 10;
              if (v6)
              {
                if (v6 == 1)
                {
                  *v20 = *a4;
                }

                else
                {
                  result = memcpy(v18 + 10, a4, v6);
                }
              }

              if (v19 >= v6)
              {
                v21 = &v20[v6];
                *v21 = *" expression";
                *(v21 + 7) = 1852795251;
                goto LABEL_30;
              }
            }
          }
        }

        goto LABEL_34;
      }
    }

    goto LABEL_31;
  }

  v14 = MEMORY[0x277CD4668];
  atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
LABEL_30:
  *v7 = v14;
  return result;
}

_BYTE *WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,unsigned int,WTF::ASCIILiteral,unsigned long>(_BYTE *result, _BYTE *a2, uint64_t a3, char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, unsigned int a8, unint64_t a9)
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
    JUMPOUT(0x225867B90);
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
    JUMPOUT(0x225867BB0);
  }

  if (a7)
  {
    v11 = a7 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 >> 31;
  if (v11 >> 31)
  {
    __break(0xC471u);
LABEL_42:
    __break(1u);
LABEL_43:
    JUMPOUT(0x225867B70);
  }

  v16 = result;
  v17 = a8;
  do
  {
    LODWORD(v12) = v12 + 1;
    v18 = v17 > 9;
    v17 /= 0xAu;
  }

  while (v18);
  v19 = 0;
  v20 = a9;
  do
  {
    ++v19;
    v18 = v20 > 9;
    v20 /= 0xAuLL;
  }

  while (v18);
  if (v19 < 0 || ((v21 = __OFADD__(v19, 8), v22 = v19 + 8, !v21) ? (v23 = 0) : (v23 = 1), (v12 & 0x80000000) != 0 || (v23 & 1) != 0 || (v21 = __OFADD__(v12, v22), v24 = v12 + v22, v21) || (v21 = __OFADD__(v11, v24), v25 = v11 + v24, v21) || (v21 = __OFADD__(v10, v25), v26 = v10 + v25, v21) || (v27 = (v9 + v26), __OFADD__(v9, v26))))
  {
LABEL_38:
    *v16 = 0;
    __break(0xC471u);
    goto LABEL_43;
  }

  if (v27)
  {
    if ((v27 & 0x80000000) == 0)
    {
      WTF::tryFastCompactMalloc((v27 + 20));
      v30 = a2;
      v31 = v35;
      if (v35)
      {
        v34 = v16;
        v32 = a6;
        v33 = (v35 + 20);
        *v35 = 2;
        *(v35 + 4) = v27;
        *(v35 + 8) = v35 + 20;
        *(v35 + 16) = 4;
        if (v9)
        {
          if (v9 == 1)
          {
            *v33 = *v30;
          }

          else
          {
            memcpy((v35 + 20), v30, v9);
          }
        }

        if (v27 >= v9)
        {
          result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(&v33[v9], v27 - v9, a4, v10, v32, v11, a8, v29, ", found ", 8uLL, a9);
          v16 = v34;
          goto LABEL_37;
        }

        goto LABEL_42;
      }
    }

    goto LABEL_38;
  }

  v31 = MEMORY[0x277CD4668];
  atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
LABEL_37:
  *v16 = v31;
  return result;
}

double WGSL::TypeChecker::setConstantValue<WGSL::AST::CallExpression>(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, double a5)
{
  LOBYTE(v18[0]) = 0;
  v19 = -1;
  v8 = *(a4 + 16);
  if (v8 == 255)
  {
    v10 = (a2 + 56);
    v11 = (a2 + 32);
    if ((*(a2 + 56) & 1) == 0)
    {
      *(a2 + 32) = 0;
      *(a2 + 48) = -1;
LABEL_12:
      *v10 = 1;
      if (v19 != 255)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, &v15, v18, a4);
    v8 = *(a4 + 16);
    v19 = *(a4 + 16);
    v10 = (a2 + 56);
    v11 = (a2 + 32);
    if ((*(a2 + 56) & 1) == 0)
    {
      *(a2 + 32) = 0;
      *(a2 + 48) = -1;
      if (v8 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, &v15, (a2 + 32), v18);
        *(a2 + 48) = v19;
        *v10 = 1;
        if (v19 == 255)
        {
          goto LABEL_17;
        }

LABEL_16:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v15, v18);
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  if (*(a2 + 48) == 255)
  {
    if (v8 == 255)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15 = v11;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v8, &v15, v11, v18);
    if (v19 == 255)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v8 != 255)
  {
    goto LABEL_15;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v15, v11);
  *(a2 + 48) = -1;
  if (v19 != 255)
  {
    goto LABEL_16;
  }

LABEL_17:
  v19 = -1;
  WGSL::TypeChecker::convertValue(&v15, (a2 + 8), a3, v11, a5);
  if (v17 == 1)
  {
    v14 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      result = *&v16;
      *(a1 + 8) = v16;
      *a1 = v14;
      *(a1 + 24) = 1;
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }
    }

    else
    {
      result = *&v16;
      *(a1 + 8) = v16;
      *a1 = 0;
      *(a1 + 24) = 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void WGSL::zeroValue(WGSL *this, const WGSL::Type **a2)
{
  v2 = *(a2 + 48);
  if (v2 == 255)
  {
    v3 = -1;
  }

  else
  {
    v3 = *(a2 + 48);
  }

  switch(v3)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_172;
      }

      v26 = this;
      v27 = *(a2 + 8);
      if (*(a2 + 8))
      {
        v28 = WTF::fastMalloc((24 * v27 + 8));
        *v28 = v27;
        bzero(v28 + 2, 24 * ((24 * v27 - 24) / 0x18uLL) + 24);
        WGSL::zeroValue(v59, *a2);
        if (!*(a2 + 8))
        {
          goto LABEL_136;
        }
      }

      else
      {
        v28 = 0;
        WGSL::zeroValue(v59, *a2);
        if (!*(a2 + 8))
        {
          goto LABEL_136;
        }
      }

      v52 = 0;
      v53 = (v28 + 6);
      do
      {
LABEL_132:
        if (v52 >= *v28)
        {
          __break(0xC471u);
          JUMPOUT(0x22586880CLL);
        }

        if (*v53 == 255)
        {
          if (v60 != 255)
          {
LABEL_130:
            v55 = v53 - 2;
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v60, &v55, v53 - 2, v59);
          }

          ++v52;
          v53 += 3;
          if (v52 >= *(a2 + 8))
          {
            break;
          }

          goto LABEL_132;
        }

        if (v60 != 255)
        {
          goto LABEL_130;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v53 - 16);
        *v53 = -1;
        v53 += 3;
        ++v52;
      }

      while (v52 < *(a2 + 8));
LABEL_136:
      *v26 = v28;
      *(v26 + 16) = 8;
      if (v60 == 255)
      {
        return;
      }

      goto LABEL_140;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_172;
      }

      v12 = this;
      v13 = *(a2 + 8);
      v14 = *(a2 + 9);
      v15 = v14 * v13;
      if (v14 * v13)
      {
        v16 = 24 * v15;
        v17 = WTF::fastMalloc((v16 + 8));
        *v17 = v15;
        bzero(v17 + 2, 24 * ((v16 - 24) / 0x18uLL) + 24);
        WGSL::zeroValue(v59, *a2);
        v18 = *v17;
        if (!v18)
        {
          goto LABEL_125;
        }

        v19 = 0;
        v20 = (v17 + 6);
        while (1)
        {
          while (1)
          {
            if (v19 >= v18)
            {
              __break(0xC471u);
              JUMPOUT(0x22586884CLL);
            }

            if (*v20 != 255)
            {
              break;
            }

            if (v60 != 255)
            {
              goto LABEL_23;
            }

LABEL_24:
            ++v19;
            v18 = *v17;
            v20 += 3;
            if (v19 >= v18)
            {
              goto LABEL_125;
            }
          }

          if (v60 != 255)
          {
LABEL_23:
            v55 = v20 - 2;
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v60, &v55, v20 - 2, v59);
            goto LABEL_24;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v20 - 16);
          *v20 = -1;
          v20 += 3;
          ++v19;
          v18 = *v17;
          if (v19 >= v18)
          {
            goto LABEL_125;
          }
        }
      }

      WGSL::zeroValue(v59, *a2);
      v17 = 0;
LABEL_125:
      *v12 = v13 | (v14 << 32);
      *(v12 + 1) = v17;
      *(v12 + 16) = 9;
      if (v60 == 255)
      {
        return;
      }

      goto LABEL_140;
    case 3:
      if (v2 != 3 || *(a2 + 16) != 1)
      {
        goto LABEL_172;
      }

      v21 = *(a2 + 2);
      if (v21)
      {
        v22 = this;
        v23 = WTF::fastMalloc((24 * v21 + 8));
        *v23 = v21;
        v24 = (v23 + 6);
        bzero(v23 + 2, 24 * ((24 * v21 - 24) / 0x18uLL) + 24);
        WGSL::zeroValue(v59, *a2);
        v25 = 0;
        while (1)
        {
          while (1)
          {
            if (v25 >= *v23)
            {
              __break(0xC471u);
              JUMPOUT(0x22586882CLL);
            }

            if (*v24 != 255)
            {
              break;
            }

            if (v60 != 255)
            {
              goto LABEL_35;
            }

LABEL_36:
            ++v25;
            v24 += 3;
            if (v21 == v25)
            {
              goto LABEL_139;
            }
          }

          if (v60 != 255)
          {
LABEL_35:
            v55 = v24 - 2;
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v60, &v55, v24 - 2, v59);
            goto LABEL_36;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v24 - 16);
          *v24 = -1;
          v24 += 3;
          if (v21 == ++v25)
          {
            goto LABEL_139;
          }
        }
      }

      v22 = this;
      WGSL::zeroValue(v59, *a2);
      v23 = 0;
LABEL_139:
      *v22 = v23;
      *(v22 + 16) = 7;
      if (v60 != 255)
      {
LABEL_140:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v59);
      }

      return;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_172;
      }

      v58 = 0;
      v7 = a2[1];
      if (v7)
      {
        v8 = *(v7 - 1);
        v9 = (v7 + 16 * v8);
        if (*(v7 - 3))
        {
          if (!v8)
          {
            goto LABEL_142;
          }

          v10 = 16 * v8;
          v11 = a2[1];
          while (*v11 + 1 <= 1)
          {
            v11 += 2;
            v10 -= 16;
            if (!v10)
            {
              v11 = v9;
              break;
            }
          }

LABEL_51:
          if (v7)
          {
            v29 = (v7 + 16 * *(v7 - 1));
            if (v11 != v29)
            {
LABEL_53:
              v54 = this;
              while (1)
              {
                WGSL::zeroValue(&v55, v11[1]);
                if (*v11 == -1)
                {
                  __break(0xC471u);
                  JUMPOUT(0x2258687CCLL);
                }

                if (!*v11)
                {
                  __break(0xC471u);
                  JUMPOUT(0x2258687ECLL);
                }

                v32 = v58;
                if (v58 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v58, 8u, 0), (v32 = v58) != 0))
                {
                  v33 = *(v32 - 8);
                  v34 = *v11;
                  v35 = *(*v11 + 4);
                  if (v35 < 0x100)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  v33 = 0;
                  v34 = *v11;
                  v35 = *(*v11 + 4);
                  if (v35 < 0x100)
                  {
LABEL_62:
                    v36 = WTF::StringImpl::hashSlowCase(v34);
                    goto LABEL_63;
                  }
                }

                v36 = v35 >> 8;
LABEL_63:
                v37 = 0;
                for (i = 1; ; ++i)
                {
                  v39 = v36 & v33;
                  v40 = v32 + 32 * v39;
                  v41 = *v40;
                  if (*v40 == -1)
                  {
                    v37 = (v32 + 32 * v39);
                    goto LABEL_65;
                  }

                  if (!v41)
                  {
                    if (v37)
                    {
                      v41 = 0;
                      *v37 = 0u;
                      v37[1] = 0u;
                      --*(v58 - 16);
                      v40 = v37;
                    }

                    v42 = *v11;
                    if (*v11)
                    {
                      atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
                      v41 = *v40;
                    }

                    *v40 = v42;
                    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v41, v30);
                    }

                    LOBYTE(v59[0]) = 0;
                    LOBYTE(v60) = -1;
                    if (v57 > 5u)
                    {
                      if (v57 > 8u)
                      {
                        if (v57 == 9)
                        {
                          v44 = v56;
                          v56 = 0;
                          v59[0] = v55;
                          v59[1] = v44;
                          goto LABEL_101;
                        }

                        if (v57 != 10)
                        {
                          goto LABEL_102;
                        }
                      }

                      else if (v57 == 6)
                      {
                        LOBYTE(v59[0]) = v55;
                        goto LABEL_101;
                      }

                      v43 = v55;
                      v55 = 0;
                    }

                    else
                    {
                      if (v57 <= 2u)
                      {
                        if (v57)
                        {
                          if (v57 == 1)
                          {
                            LOWORD(v59[0]) = v55;
                          }

                          else
                          {
                            v59[0] = v55;
                          }
                        }

                        else
                        {
                          LODWORD(v59[0]) = v55;
                        }

LABEL_101:
                        LOBYTE(v60) = v57;
LABEL_102:
                        if (*(v40 + 24) == 255)
                        {
                          if (v57 != 255)
                          {
                            goto LABEL_106;
                          }
                        }

                        else
                        {
                          if (v57 == 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v61, (v40 + 8));
                            *(v40 + 24) = -1;
                            goto LABEL_107;
                          }

LABEL_106:
                          v61 = (v40 + 8);
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v57, &v61, (v40 + 8), v59);
                        }

LABEL_107:
                        if (v60 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v61, v59);
                        }

                        v45 = v58;
                        if (v58)
                        {
                          v46 = *(v58 - 16);
                          v47 = *(v58 - 12) + 1;
                          *(v58 - 12) = v47;
                          v48 = (v46 + v47);
                          v49 = *(v45 - 4);
                          if (v49 <= 0x400)
                          {
                            goto LABEL_111;
                          }

LABEL_115:
                          if (v49 > 2 * v48)
                          {
                            goto LABEL_118;
                          }

                          goto LABEL_116;
                        }

                        v47 = 1;
                        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
                        v48 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
                        v49 = MEMORY[0xFFFFFFFFFFFFFFFC];
                        if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
                        {
                          goto LABEL_115;
                        }

LABEL_111:
                        if (3 * v49 > 4 * v48)
                        {
                          goto LABEL_118;
                        }

                        if (v49)
                        {
LABEL_116:
                          v50 = v49 << (6 * v47 >= (2 * v49));
                        }

                        else
                        {
                          v50 = 8;
                        }

                        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v58, v50, v40);
                        goto LABEL_118;
                      }

                      if (v57 == 3 || v57 == 4)
                      {
                        LODWORD(v59[0]) = v55;
                        goto LABEL_101;
                      }

                      v43 = v55;
                    }

                    v59[0] = v43;
                    goto LABEL_101;
                  }

                  if (WTF::equal(v41, *v11, v31))
                  {
                    break;
                  }

LABEL_65:
                  v36 = i + v39;
                }

                if (*(v40 + 24) == 255)
                {
                  if (v57 == 255)
                  {
                    goto LABEL_120;
                  }

LABEL_88:
                  v59[0] = (v40 + 8);
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v57, v59, (v40 + 8), &v55);
                  goto LABEL_118;
                }

                if (v57 != 255)
                {
                  goto LABEL_88;
                }

                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, (v40 + 8));
                *(v40 + 24) = -1;
LABEL_118:
                if (v57 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, &v55);
                }

                do
                {
LABEL_120:
                  v11 += 2;
                }

                while (v11 != v9 && *v11 + 1 <= 1);
                if (v11 == v29)
                {
                  v51 = v58;
                  this = v54;
                  goto LABEL_143;
                }
              }
            }
          }

          else
          {
            v29 = 0;
            if (v11)
            {
              goto LABEL_53;
            }
          }

LABEL_142:
          v51 = 0;
LABEL_143:
          *this = v51;
          v6 = 10;
          goto LABEL_144;
        }
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v11 = v9;
      v9 = (v7 + 16 * v8);
      goto LABEL_51;
    case 5:
      if (v2 == 5)
      {
        __break(0xC471u);
        JUMPOUT(0x22586888CLL);
      }

      goto LABEL_172;
    case 6:
      if (v2 == 6)
      {
        __break(0xC471u);
        JUMPOUT(0x2258687A0);
      }

      goto LABEL_172;
    case 7:
      if (v2 == 7)
      {
        __break(0xC471u);
        JUMPOUT(0x225868778);
      }

      goto LABEL_172;
    case 8:
      if (v2 == 8)
      {
        __break(0xC471u);
        JUMPOUT(0x225868750);
      }

      goto LABEL_172;
    case 9:
      if (v2 == 9)
      {
        __break(0xC471u);
        JUMPOUT(0x225868728);
      }

      goto LABEL_172;
    case 10:
      if (v2 == 10)
      {
        __break(0xC471u);
        JUMPOUT(0x225868700);
      }

      goto LABEL_172;
    case 11:
      if (v2 == 11)
      {
        __break(0xC471u);
        JUMPOUT(0x2258686D8);
      }

      goto LABEL_172;
    case 12:
      if (v2 == 12)
      {
        __break(0xC471u);
        JUMPOUT(0x2258686B0);
      }

      goto LABEL_172;
    case 13:
      if (v2 == 13)
      {
        __break(0xC471u);
        JUMPOUT(0x225868688);
      }

      goto LABEL_172;
    default:
      if (*(a2 + 48))
      {
LABEL_172:
        mpark::throw_bad_variant_access(this);
      }

      v5 = *a2;
      if (v5 <= 2)
      {
        if (*a2)
        {
          *this = 0;
          if (v5 == 1)
          {
            v6 = 3;
          }

          else
          {
            v6 = 4;
          }
        }

        else
        {
          *this = 0;
          v6 = 5;
        }

        goto LABEL_144;
      }

      if (*a2 <= 4u)
      {
        if (v5 == 3)
        {
          *this = 0;
          v6 = 2;
        }

        else
        {
          *this = 0;
          v6 = 1;
        }

        goto LABEL_144;
      }

      if (*a2 <= 6u)
      {
        if (v5 == 5)
        {
          *this = 0;
          *(this + 16) = 0;
          return;
        }

LABEL_178:
        __break(0xC471u);
        JUMPOUT(0x22586886CLL);
      }

      if (v5 != 7)
      {
        goto LABEL_178;
      }

      *this = 0;
      v6 = 6;
LABEL_144:
      *(this + 16) = v6;
      return;
  }
}

_BYTE *WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,unsigned long,WTF::ASCIILiteral,unsigned long>(_BYTE *result, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a3)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 >> 31;
  if (v5 >> 31)
  {
    __break(0xC471u);
LABEL_27:
    JUMPOUT(0x225868A34);
  }

  v10 = result;
  v11 = a4;
  do
  {
    LODWORD(v6) = v6 + 1;
    v12 = v11 > 9;
    v11 /= 0xAuLL;
  }

  while (v12);
  v13 = 0;
  v14 = a5;
  do
  {
    ++v13;
    v12 = v14 > 9;
    v14 /= 0xAuLL;
  }

  while (v12);
  if (v13 < 0)
  {
    goto LABEL_25;
  }

  v15 = __OFADD__(v13, 8);
  v16 = v13 + 8;
  v17 = v15;
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  if (v17)
  {
    goto LABEL_25;
  }

  v15 = __OFADD__(v6, v16);
  v18 = v6 + v16;
  if (v15)
  {
    goto LABEL_25;
  }

  v15 = __OFADD__(v18, 21);
  v19 = v18 + 21;
  if (v15)
  {
    goto LABEL_25;
  }

  v15 = __OFADD__(v5, v19);
  v20 = v5 + v19;
  if (v15)
  {
    goto LABEL_25;
  }

  v21 = (v20 + 21);
  if (__OFADD__(v20, 21))
  {
    goto LABEL_25;
  }

  if (v20 == -21)
  {
    v22 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_24;
  }

  if ((v21 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v21 + 20)), (v22 = v23) == 0))
  {
LABEL_25:
    *v10 = 0;
    __break(0xC471u);
    goto LABEL_27;
  }

  *v23 = 2;
  *(v23 + 4) = v21;
  *(v23 + 8) = v23 + 20;
  *(v23 + 16) = 4;
  result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>((v23 + 20), v21, "funtion call has too ", 0x15uLL, a2, v5, " arguments: expected ", 0x15uLL, a4, ", found ", 8uLL, a5);
LABEL_24:
  *v10 = v22;
  return result;
}

uint64_t WGSL::ConstantValue::integerValue(WGSL::ConstantValue *this)
{
  if (!this)
  {
    goto LABEL_8;
  }

  v1 = *(this + 16);
  switch(v1)
  {
    case 5:
      return *this;
    case 4:
      return *this;
    case 3:
      return *this;
  }

LABEL_8:
  result = 167;
  __break(0xC471u);
  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,char>(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 4);
    if (v4 < 0)
    {
      goto LABEL_14;
    }

    v2 = __OFADD__(v4, 1);
    v5 = v4 + 1;
    if (v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 1;
    if (v2)
    {
LABEL_14:
      *a1 = 0;
      __break(0xC471u);
      goto LABEL_16;
    }
  }

  if (__OFADD__(v5, 34))
  {
    goto LABEL_14;
  }

  v6 = !a2 || (*(a2 + 16) & 4) != 0;
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(a1, v5 + 34, v6, "ignoring return value of builtin '", 0x22uLL, a2);
  if (!*a1)
  {
    __break(0xC471u);
LABEL_16:
    JUMPOUT(0x225868B3CLL);
  }

  return result;
}

unint64_t WTF::makeString<WTF::ASCIILiteral,long long,WTF::ASCIILiteral>(void *a1, unint64_t a2)
{
  v3 = 0;
  v4 = a2;
  do
  {
    ++v3;
    v5 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v5);
  if (v3 < 0 || (v6 = __OFADD__(v3, 25), v7 = v3 + 25, v6) || __OFADD__(v7, 13))
  {
    *a1 = 0;
    __break(0xC471u);
    goto LABEL_10;
  }

  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v10, v7 + 13, "array count (", 0xDuLL, a2, ") must be less than 65536", 0x19uLL);
  v9 = v10;
  *a1 = v10;
  if (!v9)
  {
    __break(0xC471u);
LABEL_10:
    JUMPOUT(0x225868BE4);
  }

  return result;
}

WTF::StringImpl *WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(WTF::StringImpl **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v57[20] = *MEMORY[0x277D85DE8];
  WTF::StringPrintStream::StringPrintStream(v57);
  WGSL::Type::dump(a2, v57);
  WTF::StringPrintStream::toString(&v55, v57);
  WTF::StringPrintStream::~StringPrintStream(v57);
  WTF::StringPrintStream::StringPrintStream(v57);
  WGSL::Type::dump(a3, v57);
  WTF::StringPrintStream::toString(&v54, v57);
  WTF::StringPrintStream::~StringPrintStream(v57);
  v8 = v55;
  if (v55)
  {
    v9 = *(v55 + 1);
    v10 = v54;
    if (v54)
    {
LABEL_3:
      v11 = *(v10 + 1);
      if ((v11 & 0x80000000) == 0)
      {
        v6 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v6)
        {
          goto LABEL_9;
        }
      }

LABEL_17:
      v17 = 0;
      *a1 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = 0;
    v10 = v54;
    if (v54)
    {
      goto LABEL_3;
    }
  }

  v12 = 1;
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = __OFADD__(v12, 43);
  v13 = v12 + 43;
  v14 = v6;
  if (v9 < 0)
  {
    goto LABEL_17;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  v6 = __OFADD__(v9, v13);
  v15 = v9 + v13;
  if (v6)
  {
    goto LABEL_17;
  }

  v16 = (v15 + 1);
  if (__OFADD__(v15, 1))
  {
    goto LABEL_17;
  }

  if (v55 && (*(v55 + 16) & 4) == 0)
  {
    v20 = 0;
LABEL_34:
    atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
    v10 = v54;
    goto LABEL_35;
  }

  v20 = !v10 || (*(v10 + 16) & 4) != 0;
  if (v55)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  if (!v20)
  {
    if (v16 > 0x7FFFFFEF)
    {
      goto LABEL_50;
    }

    WTF::tryFastCompactMalloc((2 * v16 + 20));
    v17 = v57[0];
    if (!v57[0])
    {
      goto LABEL_102;
    }

    *v57[0] = 2;
    *(v17 + 1) = v16;
    *(v17 + 1) = v17 + 20;
    *(v17 + 4) = 0;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(v17 + 10) = 39;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v22 = (v17 + 22);
    v23 = v16 - 1;
    if (!v8)
    {
      v25 = 0;
      goto LABEL_85;
    }

    v21 = *(v8 + 1);
    v24 = *(v8 + 1);
    if ((*(v8 + 16) & 4) == 0)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          *v22 = v21->i16[0];
        }

        else
        {
          memcpy(v17 + 22, v21, 2 * v24);
        }
      }

LABEL_84:
      v25 = *(v8 + 1);
      if (v23 < v25)
      {
        __break(1u);
        goto LABEL_118;
      }

LABEL_85:
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v57[0] = v10;
      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(&v22[v25], v23 - v25, "' cannot be used to construct an array of '", 0x2BuLL, v57, 39);
      v43 = v57[0];
      v57[0] = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v7);
      }

      if (!v10 || atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
LABEL_93:
        if (v8)
        {
          goto LABEL_94;
        }

        goto LABEL_96;
      }

LABEL_92:
      WTF::StringImpl::destroy(v10, v7);
      goto LABEL_93;
    }

    v26 = &v22[v24];
    if (v24 < 0x40)
    {
      v27 = v17 + 22;
    }

    else
    {
      v27 = &v22[v24 & 0xFFFFFFC0];
      v28 = 0uLL;
      v29 = v17 + 22;
      do
      {
        v58.val[0] = *v21;
        v30 = v21[1];
        v59.val[0] = v21[2];
        v31 = v21[3];
        v21 += 4;
        v32 = v31;
        v59.val[1] = 0uLL;
        v60.val[0] = v30;
        v58.val[1] = 0uLL;
        v33 = v29;
        vst2q_s8(v33, v58);
        v33 += 32;
        v60.val[1] = 0uLL;
        vst2q_s8(v33, v60);
        v34 = v29 + 64;
        vst2q_s8(v34, v59);
        v35 = v29 + 96;
        vst2q_s8(v35, *(&v28 - 1));
        v29 += 128;
      }

      while (v29 != v27);
    }

    if (v27 == v26)
    {
      goto LABEL_84;
    }

    v36 = v17 + 2 * v24 - v27 + 20;
    if (v36 < 0xE || (v27 < v21->u64 + (v36 >> 1) + 1 ? (v37 = v21 >= (v36 & 0xFFFFFFFFFFFFFFFELL) + v27 + 2) : (v37 = 1), !v37))
    {
      v40 = v21;
      v41 = v27;
      goto LABEL_81;
    }

    v38 = (v36 >> 1) + 1;
    if (v36 >= 0x3E)
    {
      v39 = v38 & 0xFFFFFFFFFFFFFFE0;
      v44 = (v27 + 32);
      v45 = &v21[1];
      v46 = v38 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v47 = *v45[-2].i8;
        v48 = vmovl_u8(*v45);
        v49 = vmovl_high_u8(*v45->i8);
        v44[-2] = vmovl_u8(*v47.i8);
        v44[-1] = vmovl_high_u8(v47);
        *v44 = v48;
        v44[1] = v49;
        v44 += 4;
        v45 += 4;
        v46 -= 32;
      }

      while (v46);
      if (v38 == v39)
      {
        goto LABEL_84;
      }

      if ((v38 & 0x18) == 0)
      {
        v41 = (v27 + 2 * v39);
        v40 = (v21 + v39);
        goto LABEL_81;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = (v21 + (v38 & 0xFFFFFFFFFFFFFFF8));
    v41 = (v27 + 2 * (v38 & 0xFFFFFFFFFFFFFFF8));
    v50 = (v27 + 2 * v39);
    v51 = &v21->i8[v39];
    v52 = v39 - (v38 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v53 = *v51++;
      *v50++ = vmovl_u8(v53);
      v52 += 8;
    }

    while (v52);
    if (v38 == (v38 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_84;
    }

    do
    {
LABEL_81:
      v42 = v40->u8[0];
      v40 = (v40 + 1);
      *v41++ = v42;
    }

    while (v41 != v26);
    goto LABEL_84;
  }

  if ((v16 & 0x80000000) != 0)
  {
LABEL_50:
    v17 = 0;
    goto LABEL_102;
  }

  WTF::tryFastCompactMalloc((v16 + 20));
  v17 = v57[0];
  if (v57[0])
  {
    *v57[0] = 2;
    *(v17 + 1) = v16;
    *(v17 + 1) = v17 + 20;
    *(v17 + 4) = 4;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(v17 + 20) = 39;
    v21 = (v16 - 1);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v57[0] = v8;
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      v56 = v10;
      WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>((v17 + 21), v21, v57, "' cannot be used to construct an array of '", 0x2BuLL, &v56, 39);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

LABEL_118:
    v56 = 0;
    WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>((v17 + 21), v21, v57, "' cannot be used to construct an array of '", 0x2BuLL, &v56, 39);
    if (v8)
    {
LABEL_94:
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

LABEL_96:
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }
  }

LABEL_102:
  *a1 = v17;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

LABEL_18:
  v18 = v54;
  v54 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v7);
  }

  result = v55;
  v55 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
  }

  if (!v17)
  {
    __break(0xC471u);
  }

  return result;
}

WTF **WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(WTF **result, _BYTE *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    v4 = *v2;
    if (v4)
    {
      v5 = 24 * v4;
      v6 = v2 + 24;
      do
      {
        a2 = v6 - 16;
        if (*v6 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v7, a2);
        }

        *v6 = -1;
        v6 += 24;
        v5 -= 24;
      }

      while (v5);
    }

    WTF::fastFree(v2, a2);
    return v3;
  }

  return result;
}

void WGSL::constantBitcast(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v165 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (!**a3)
  {
    __break(0xC471u);
    JUMPOUT(0x22586A664);
  }

  v5 = a1;
  if (!a2 || a2[48] != 1)
  {
    a1 = *(v3 + 24);
    if (a1 != 2)
    {
      if (a1 != 5)
      {
        if (a1 == 8)
        {
          v15 = *(v3 + 1);
          if (*v15)
          {
            if (*(v15 + 24) != 1)
            {
              goto LABEL_319;
            }

            if (*v15 == 1)
            {
              __break(0xC471u);
              JUMPOUT(0x22586A6ACLL);
            }

            if (*(v15 + 48) != 1)
            {
              goto LABEL_319;
            }

            LODWORD(__src) = *(v15 + 8) | (*(v15 + 32) << 16);
            LOBYTE(v158) = 4;
            WGSL::convertValue<WGSL::BitwiseCast>(&v149, a2, &__src);
            if (v158 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v141, &__src);
            }

            *v5 = 0;
            *(v5 + 16) = -1;
            v16 = v150;
            if (v150 > 5u)
            {
              if (v150 > 8u)
              {
                if (v150 == 9)
                {
                  v105 = *(&v149 + 1);
                  *(&v149 + 1) = 0;
                  *v5 = v149;
                  *(v5 + 8) = v105;
                  goto LABEL_259;
                }

                if (v150 != 10)
                {
                  *(v5 + 24) = 0;
                  return;
                }
              }

              else if (v150 == 6)
              {
                *v5 = v149;
                goto LABEL_259;
              }

              v77 = v149;
              *&v149 = 0;
            }

            else
            {
              if (v150 <= 2u)
              {
                if (v150)
                {
                  if (v150 == 1)
                  {
                    *v5 = v149;
                  }

                  else
                  {
                    *v5 = v149;
                  }
                }

                else
                {
                  *v5 = v149;
                }

                goto LABEL_259;
              }

              if (v150 == 3 || v150 == 4)
              {
                *v5 = v149;
LABEL_259:
                *(v5 + 16) = v16;
                *(v5 + 24) = 0;
                p_src = &__src;
                v19 = &v149;
                goto LABEL_313;
              }

              v77 = v149;
            }

            *v5 = v77;
            goto LABEL_259;
          }

LABEL_323:
          __break(0xC471u);
          JUMPOUT(0x22586A68CLL);
        }

        LOBYTE(v129[0]) = 0;
        v130 = -1;
        if (a1 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(a1, &__src, v129, v3 + 1);
          v130 = *(v3 + 24);
        }

        WGSL::convertValue<WGSL::BitwiseCast>(&__src, a2, v129);
        *v5 = 0;
        *(v5 + 16) = -1;
        v29 = v158;
        if (v158 > 5u)
        {
          if (v158 > 8u)
          {
            if (v158 == 9)
            {
              v104 = *(&__src + 1);
              *(&__src + 1) = 0;
              *v5 = __src;
              *(v5 + 8) = v104;
              goto LABEL_249;
            }

            if (v158 != 10)
            {
              *(v5 + 24) = 0;
              LOBYTE(v158) = -1;
              if (v130 == 255)
              {
                return;
              }

LABEL_250:
              p_src = &v149;
              v19 = v129;
              goto LABEL_313;
            }
          }

          else if (v158 == 6)
          {
            *v5 = __src;
            goto LABEL_249;
          }

          v73 = __src;
          *&__src = 0;
        }

        else
        {
          if (v158 <= 2u)
          {
            if (v158)
            {
              if (v158 == 1)
              {
                *v5 = __src;
              }

              else
              {
                *v5 = __src;
              }
            }

            else
            {
              *v5 = __src;
            }

LABEL_249:
            *(v5 + 16) = v29;
            *(v5 + 24) = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
            LOBYTE(v158) = -1;
            if (v130 == 255)
            {
              return;
            }

            goto LABEL_250;
          }

          if (v158 == 3 || v158 == 4)
          {
            *v5 = __src;
            goto LABEL_249;
          }

          v73 = __src;
        }

        *v5 = v73;
        goto LABEL_249;
      }

      if (a2[48])
      {
        goto LABEL_319;
      }

      v17 = *(v3 + 1);
      if (*a2 == 2)
      {
        if (!HIDWORD(v17))
        {
          LODWORD(__src) = *(v3 + 1);
          LOBYTE(v158) = 4;
          *v5 = v17;
          *(v5 + 16) = 4;
          *(v5 + 24) = 0;
          p_src = &v149;
          v19 = &__src;
LABEL_313:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(p_src, v19);
          return;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          v102 = -v17;
          v74 = 1;
          do
          {
            ++v74;
            v98 = v102 >= 0xA;
            v102 /= 0xAuLL;
          }

          while (v98);
        }

        else
        {
          v74 = 0;
          v75 = *(v3 + 1);
          do
          {
            ++v74;
            v47 = v75 > 9;
            v75 /= 0xAuLL;
          }

          while (v47);
        }

        if (v74 < 0 || (v99 = __OFADD__(v74, 31), v103 = v74 + 31, v99) || __OFADD__(v103, 6) || (WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&__src, v103 + 6, "value ", 6uLL, v17, " cannot be represented as 'u32'", 0x1FuLL), (v101 = __src) == 0))
        {
          __break(0xC471u);
          JUMPOUT(0x22586A6B4);
        }

LABEL_241:
        *v5 = v101;
        goto LABEL_242;
      }

      if (v17 != v17)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          v97 = -v17;
          v45 = 1;
          do
          {
            ++v45;
            v98 = v97 >= 0xA;
            v97 /= 0xAuLL;
          }

          while (v98);
        }

        else
        {
          v45 = 0;
          v46 = *(v3 + 1);
          do
          {
            ++v45;
            v47 = v46 > 9;
            v46 /= 0xAuLL;
          }

          while (v47);
        }

        if (v45 < 0 || (v99 = __OFADD__(v45, 31), v100 = v45 + 31, v99) || __OFADD__(v100, 6) || (WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&__src, v100 + 6, "value ", 6uLL, v17, " cannot be represented as 'i32'", 0x1FuLL), (v101 = __src) == 0))
        {
          __break(0xC471u);
          goto LABEL_338;
        }

        goto LABEL_241;
      }

      v133[0] = *(v3 + 1);
      v134 = 3;
      WGSL::convertValue<WGSL::BitwiseCast>(&__src, a2, v133);
      *v5 = 0;
      *(v5 + 16) = -1;
      v76 = v158;
      if (v158 > 5u)
      {
        if (v158 > 8u)
        {
          if (v158 == 9)
          {
            v127 = *(&__src + 1);
            *(&__src + 1) = 0;
            *v5 = __src;
            *(v5 + 8) = v127;
            goto LABEL_311;
          }

          if (v158 != 10)
          {
            *(v5 + 24) = 0;
            LOBYTE(v158) = -1;
            if (v134 == 255)
            {
              return;
            }

            goto LABEL_312;
          }
        }

        else if (v158 == 6)
        {
          *v5 = __src;
          goto LABEL_311;
        }

        v106 = __src;
        *&__src = 0;
      }

      else
      {
        if (v158 <= 2u)
        {
          if (v158)
          {
            if (v158 == 1)
            {
              *v5 = __src;
            }

            else
            {
              *v5 = __src;
            }
          }

          else
          {
            *v5 = __src;
          }

LABEL_311:
          *(v5 + 16) = v76;
          *(v5 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
          LOBYTE(v158) = -1;
          if (v134 == 255)
          {
            return;
          }

LABEL_312:
          p_src = &v149;
          v19 = v133;
          goto LABEL_313;
        }

        if (v158 == 3 || v158 == 4)
        {
          *v5 = __src;
          goto LABEL_311;
        }

        v106 = __src;
      }

      *v5 = v106;
      goto LABEL_311;
    }

    v20 = *(v3 + 1);
    WGSL::convertFloat<float,double>(double)::max = 2139095039;
    WGSL::convertFloat<float,double>(double)::lowest = -8388609;
    *&v21 = v20;
    v22 = v21 | 0x100000000;
    if (fabs(v20) > 3.40282347e38)
    {
      v22 = 0;
    }

    if ((v22 & 0x100000000) == 0)
    {
      WTF::numberToStringAndSize();
      HIDWORD(v148) = v23;
      if (v23 < 0 || __OFADD__(v23, 31) || (v24 = (v23 + 37), __OFADD__(v23 + 31, 6)))
      {
        __break(0xC471u);
      }

      else
      {
        v153 = v145;
        v154 = v146;
        v155 = v147;
        v156 = v148;
        v149 = v141;
        v150 = v142;
        v151 = v143;
        v152 = v144;
        WTF::tryFastCompactMalloc((v24 + 20));
        v25 = __src;
        if (!__src)
        {
          __break(0xC471u);
          JUMPOUT(0x22586A6DCLL);
        }

        *__src = 2;
        *(v25 + 4) = v24;
        *(v25 + 8) = v25 + 20;
        *(v25 + 16) = 4;
        v161 = v153;
        v162 = v154;
        v163 = v155;
        v164 = v156;
        __src = v149;
        v158 = v150;
        v159 = v151;
        v160 = v152;
        *(v25 + 20) = 1970037110;
        *(v25 + 24) = 8293;
        v26 = HIDWORD(v164);
        if (HIDWORD(v164) < 0x7D)
        {
          v27 = v24 - 6;
          v28 = (v25 + 26);
          if (HIDWORD(v164))
          {
            if (HIDWORD(v164) == 1)
            {
              *v28 = __src;
            }

            else
            {
              memcpy((v25 + 26), &__src, HIDWORD(v164));
            }
          }

          if (v27 >= v26)
          {
            qmemcpy(&v28[v26], " cannot be represented as 'f32'", 31);
            *v5 = v25;
LABEL_242:
            *(v5 + 24) = 1;
            return;
          }
        }
      }

      __break(1u);
      goto LABEL_323;
    }

    v131[0] = v22;
    v132 = 0;
    WGSL::convertValue<WGSL::BitwiseCast>(&__src, a2, v131);
    *v5 = 0;
    *(v5 + 16) = -1;
    v44 = v158;
    if (v158 > 5u)
    {
      if (v158 > 8u)
      {
        if (v158 == 9)
        {
          v116 = *(&__src + 1);
          *(&__src + 1) = 0;
          *v5 = __src;
          *(v5 + 8) = v116;
          goto LABEL_286;
        }

        if (v158 != 10)
        {
          *(v5 + 24) = 0;
          LOBYTE(v158) = -1;
          if (v132 == 255)
          {
            return;
          }

LABEL_287:
          p_src = &v149;
          v19 = v131;
          goto LABEL_313;
        }
      }

      else if (v158 == 6)
      {
        *v5 = __src;
        goto LABEL_286;
      }

      v92 = __src;
      *&__src = 0;
    }

    else
    {
      if (v158 <= 2u)
      {
        if (v158)
        {
          if (v158 == 1)
          {
            *v5 = __src;
          }

          else
          {
            *v5 = __src;
          }
        }

        else
        {
          *v5 = __src;
        }

LABEL_286:
        *(v5 + 16) = v44;
        *(v5 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
        LOBYTE(v158) = -1;
        if (v132 == 255)
        {
          return;
        }

        goto LABEL_287;
      }

      if (v158 == 3 || v158 == 4)
      {
        *v5 = __src;
        goto LABEL_286;
      }

      v92 = __src;
    }

    *v5 = v92;
    goto LABEL_286;
  }

  v6 = a2[8];
  if (*(v3 + 24) != 8)
  {
    if (v6 != 2)
    {
      __break(0xC471u);
      JUMPOUT(0x22586A6D4);
    }

    v30 = WTF::fastMalloc(0x38);
    *v30 = 2;
    *(v30 + 2) = 0u;
    *(v30 + 6) = 0u;
    *(v30 + 10) = 0u;
    *&v149 = v30;
    WGSL::constantBitcast(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_1::operator()(&v135, &v149, (v3 + 2), 0);
    if (v136 == 1)
    {
      v32 = v135;
      if (v135)
      {
        if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v31);
        }
      }
    }

    v33 = *v30;
    v34 = 24 * v33;
    v35 = WTF::fastMalloc((24 * v33 + 8));
    v36 = v35;
    *v35 = v33;
    if (v33)
    {
      v37 = (v35 + 6);
      v38 = (v30 + 6);
      do
      {
        *(v37 - 16) = 0;
        *v37 = -1;
        v39 = *v38;
        if (v39 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v39, &__src, v37 - 2, v38 - 2);
          *v37 = *v38;
        }

        v37 += 3;
        v38 += 3;
        v34 -= 24;
      }

      while (v34);
    }

    LOBYTE(v158) = 8;
    *&__src = 0;
    *v5 = v36;
    *(v5 + 16) = 8;
    *(v5 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v141, &__src);
    v41 = *v30;
    if (v41)
    {
      v42 = 24 * v41;
      v43 = v30 + 6;
      do
      {
        v40 = v43 - 16;
        if (*v43 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, v40);
        }

        *v43 = -1;
        v43 += 24;
        v42 -= 24;
      }

      while (v42);
    }

    WTF::fastFree(v30, v40);
    return;
  }

  v7 = *(v3 + 1);
  if (!v7)
  {
    if (!a2[8])
    {
      v11 = 0;
      goto LABEL_82;
    }

    goto LABEL_135;
  }

  v8 = *v7;
  if (v8 != v6)
  {
    if (!a2[8])
    {
      v67 = 0;
      *&v141 = 0;
      goto LABEL_200;
    }

LABEL_135:
    v67 = WTF::fastMalloc((24 * v6 + 8));
    *v67 = v6;
    bzero(v67 + 8, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
    v68 = a2[8];
    *&v141 = v67;
    v7 = *(v3 + 1);
    if (v68 == 4)
    {
      if (!*v7)
      {
        __break(0xC471u);
        JUMPOUT(0x22586A7FCLL);
      }

      WGSL::constantBitcast(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_1::operator()(&__src, &v141, (v7 + 2), 0);
      if (BYTE8(__src) == 1)
      {
LABEL_140:
        v71 = __src;
        if (__src)
        {
          atomic_fetch_add_explicit(__src, 2u, memory_order_relaxed);
          *v5 = v71;
          *(v5 + 24) = 1;
          if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v71, v69);
          }

          *&v141 = 0;
          v72 = *v67;
          if (!v72)
          {
            goto LABEL_318;
          }

          goto LABEL_276;
        }

        *v5 = 0;
        *(v5 + 24) = 1;
        *&v141 = 0;
        v72 = *v67;
        if (!v72)
        {
LABEL_318:
          WTF::fastFree(v67, v69);
          return;
        }

LABEL_276:
        v114 = 24 * v72;
        v115 = v67 + 24;
        do
        {
          v69 = (v115 - 16);
          if (*v115 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, v69);
          }

          *v115 = -1;
          v115 += 24;
          v114 -= 24;
        }

        while (v114);
        goto LABEL_318;
      }

      v70 = *(v3 + 1);
      if (*v70 > 1u)
      {
        WGSL::constantBitcast(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_1::operator()(&__src, &v141, (v70 + 8), 2u);
        if (BYTE8(__src) == 1)
        {
          goto LABEL_140;
        }

        v96 = v67;
LABEL_268:
        v107 = *v67;
        v108 = 24 * v107;
        v109 = WTF::fastMalloc((24 * v107 + 8));
        v110 = v109;
        *v109 = v107;
        if (v107)
        {
          v111 = (v109 + 6);
          v112 = (v67 + 24);
          do
          {
            *(v111 - 16) = 0;
            *v111 = -1;
            v113 = *v112;
            if (v113 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v113, &v149, v111 - 2, v112 - 2);
              *v111 = *v112;
            }

            v111 += 3;
            v112 += 3;
            v108 -= 24;
          }

          while (v108);
          v96 = v141;
        }

        LOBYTE(v158) = 8;
        *&__src = 0;
        *v5 = v110;
        *(v5 + 16) = 8;
        *(v5 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
        *&v141 = 0;
        v67 = v96;
        if (!v96)
        {
          return;
        }

        v72 = *v96;
        if (!v72)
        {
          goto LABEL_318;
        }

        goto LABEL_276;
      }

      __break(0xC471u);
LABEL_338:
      JUMPOUT(0x22586A134);
    }

    LODWORD(v8) = *v7;
LABEL_200:
    if (!v8)
    {
      __break(0xC471u);
      JUMPOUT(0x22586A73CLL);
    }

    if (*(v7 + 24) != 1)
    {
      goto LABEL_319;
    }

    if (v8 == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x22586A75CLL);
    }

    if (*(v7 + 48) != 1)
    {
      goto LABEL_319;
    }

    v93 = *a2;
    LODWORD(__src) = *(v7 + 4) | (*(v7 + 16) << 16);
    LOBYTE(v158) = 4;
    WGSL::convertValue<WGSL::BitwiseCast>(&v149, v93, &__src);
    if (v158 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v137, &__src);
    }

    if (!*v67)
    {
      __break(0xC471u);
      JUMPOUT(0x22586A77CLL);
    }

    a1 = v150;
    if (v67[24] == 255)
    {
      if (v150 == 255)
      {
        goto LABEL_214;
      }
    }

    else if (v150 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, v67 + 8);
      v67[24] = -1;
      goto LABEL_212;
    }

    *&__src = v67 + 8;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v150, &__src, v67 + 1, &v149);
LABEL_212:
    if (v150 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, &v149);
    }

LABEL_214:
    v94 = *(v3 + 1);
    if (*v94 <= 2u)
    {
      __break(0xC471u);
      JUMPOUT(0x22586A79CLL);
    }

    if (*(v94 + 72) == 1)
    {
      if (*v94 == 3)
      {
        __break(0xC471u);
        JUMPOUT(0x22586A7BCLL);
      }

      if (*(v94 + 96) == 1)
      {
        v95 = *a2;
        LODWORD(__src) = *(v94 + 56) | (*(v94 + 80) << 16);
        LOBYTE(v158) = 4;
        WGSL::convertValue<WGSL::BitwiseCast>(&v149, v95, &__src);
        if (v158 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v137, &__src);
        }

        v96 = v141;
        if (*v141 <= 1u)
        {
          __break(0xC471u);
          JUMPOUT(0x22586A7DCLL);
        }

        if (*(v141 + 48) == 255)
        {
          if (v150 == 255)
          {
            goto LABEL_268;
          }
        }

        else if (v150 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, (v141 + 32));
          *(v96 + 48) = -1;
          goto LABEL_226;
        }

        *&__src = v141 + 32;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v150, &__src, (v141 + 32), &v149);
LABEL_226:
        if (v150 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, &v149);
        }

        goto LABEL_268;
      }
    }

LABEL_319:
    mpark::throw_bad_variant_access(a1);
  }

  v9 = 24 * v8;
  v10 = WTF::fastMalloc((24 * v8 + 8));
  v11 = v10;
  *v10 = v8;
  if (v8)
  {
    v12 = (v10 + 6);
    v13 = (v7 + 6);
    do
    {
      *(v12 - 16) = 0;
      *v12 = -1;
      v14 = *v13;
      if (v14 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v14, &__src, v12 - 2, v13 - 2);
        *v12 = *v13;
      }

      v12 += 3;
      v13 += 3;
      v9 -= 24;
    }

    while (v9);
  }

LABEL_82:
  *&v141 = v11;
  LOBYTE(v142) = 8;
  LOBYTE(__src) = 0;
  LOBYTE(v158) = -1;
  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(8, &v149, &__src, &v141);
  LOBYTE(v158) = v142;
  if (v142 == 255)
  {
    goto LABEL_171;
  }

  if (v142 != 8 || !__src)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
LABEL_171:
    v78 = *a2;
    v79 = *(v3 + 1);
    if (v79)
    {
      v80 = *v79;
      v81 = 24 * v80;
      v82 = WTF::fastMalloc((24 * v80 + 8));
      v83 = v82;
      *v82 = v80;
      if (v80)
      {
        v84 = (v82 + 6);
        v85 = (v79 + 6);
        do
        {
          *(v84 - 16) = 0;
          *v84 = -1;
          v86 = *v85;
          if (v86 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v86, &__src, v84 - 2, v85 - 2);
            *v84 = *v85;
          }

          v84 += 3;
          v85 += 3;
          v81 -= 24;
        }

        while (v81);
      }
    }

    else
    {
      v83 = 0;
    }

    *&__src = v83;
    LOBYTE(v158) = 8;
    v87 = WTF::fastMalloc(0x20);
    *v87 = 1;
    *(v87 + 8) = 0;
    *(v87 + 24) = -1;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(8, &v149, v87 + 1, &__src);
    *(v87 + 24) = v158;
    *&v149 = v87;
    WGSL::constantBitcast(v5, v78, &v149);
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
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v137, v88);
        }

        *v91 = -1;
        v91 += 24;
        v90 -= 24;
      }

      while (v90);
    }

    WTF::fastFree(v87, v88);
    if (v158 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v137, &__src);
    }

    if (v142 == 255)
    {
      return;
    }

    goto LABEL_189;
  }

  v48 = *__src;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
  if (!v48)
  {
    goto LABEL_171;
  }

  v49 = WTF::fastMalloc((24 * v48 + 8));
  *v49 = v48;
  v50 = v49 + 2;
  v128 = v49;
  bzero(v49 + 2, 24 * ((24 * v48 - 24) / 0x18uLL) + 24);
  v51 = 0;
  LODWORD(v137[0]) = 0;
  v138 = 0;
  do
  {
    v52 = v142;
    if (v142 != 8)
    {
      if (v138 == 255)
      {
        if (v142 == 255)
        {
          goto LABEL_98;
        }
      }

      else if (v142 == 255)
      {
LABEL_96:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, v137);
        v138 = -1;
LABEL_98:
        v54 = *a2;
        LOBYTE(v149) = 0;
        v55 = -1;
        goto LABEL_105;
      }

      *&__src = v137;
      v56 = &v141;
      goto LABEL_102;
    }

    if (v51 >= *v141)
    {
      __break(0xC471u);
      JUMPOUT(0x22586A6FCLL);
    }

    v53 = v141 + 24 * v51;
    v52 = *(v53 + 24);
    if (v138 != 255)
    {
      if (v52 == 255)
      {
        goto LABEL_96;
      }

LABEL_101:
      *&__src = v137;
      v56 = (v53 + 8);
LABEL_102:
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v52, &__src, v137, v56);
      goto LABEL_103;
    }

    if (v52 != 255)
    {
      goto LABEL_101;
    }

LABEL_103:
    v54 = *a2;
    LOBYTE(v149) = 0;
    LOBYTE(v150) = -1;
    if (v138 == 255)
    {
      goto LABEL_106;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v138, &v140, &v149, v137);
    v55 = v138;
LABEL_105:
    LOBYTE(v150) = v55;
LABEL_106:
    v57 = WTF::fastMalloc(0x20);
    *v57 = 1;
    *(v57 + 8) = 0;
    *(v57 + 24) = -1;
    if (v150 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v150, &v140, v57 + 1, &v149);
      *(v57 + 24) = v150;
    }

    v139 = v57;
    WGSL::constantBitcast(&__src, v54, &v139);
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
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v140, v58);
        }

        *v61 = -1;
        v61 += 24;
        v60 -= 24;
      }

      while (v60);
    }

    a1 = WTF::fastFree(v57, v58);
    if (v150 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v140, &v149);
    }

    v63 = BYTE8(v158);
    if (BYTE8(v158))
    {
      if (BYTE8(v158) != 1)
      {
        goto LABEL_319;
      }

      v64 = __src;
      if (__src)
      {
        atomic_fetch_add_explicit(__src, 2u, memory_order_relaxed);
      }

      *v5 = v64;
      *(v5 + 24) = 1;
    }

    else
    {
      if (v51 >= *v128)
      {
        __break(0xC471u);
        JUMPOUT(0x22586A71CLL);
      }

      v65 = &v50[6 * v51];
      if (*(v65 + 16) == 255)
      {
        if (v158 == 255)
        {
          goto LABEL_126;
        }
      }

      else if (v158 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &v50[6 * v51]);
        LOBYTE(v50[6 * v51 + 4]) = -1;
        goto LABEL_126;
      }

      *&v149 = &v50[6 * v51];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v158, &v149, v65, &__src);
    }

LABEL_126:
    if (BYTE8(v158) == 255)
    {
      goto LABEL_87;
    }

    if (BYTE8(v158))
    {
      v66 = __src;
      *&__src = 0;
      if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, v62);
      }

LABEL_87:
      if (v63)
      {
        goto LABEL_296;
      }

      goto LABEL_88;
    }

    if (v158 == 255)
    {
      goto LABEL_87;
    }

    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
    if (v63)
    {
      goto LABEL_296;
    }

LABEL_88:
    ++v51;
  }

  while (v51 != v48);
  v117 = *v128;
  v118 = 24 * v117;
  v119 = WTF::fastMalloc((24 * v117 + 8));
  v120 = v119;
  *v119 = v117;
  if (v117)
  {
    v121 = (v119 + 6);
    v122 = (v128 + 24);
    do
    {
      *(v121 - 16) = 0;
      *v121 = -1;
      v123 = *v122;
      if (v123 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v123, &__src, v121 - 2, v122 - 2);
        *v121 = *v122;
      }

      v121 += 3;
      v122 += 3;
      v118 -= 24;
    }

    while (v118);
  }

  LOBYTE(v158) = 8;
  *&__src = 0;
  *v5 = v120;
  *(v5 + 16) = 8;
  *(v5 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v149, &__src);
LABEL_296:
  if (v138 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, v137);
  }

  v124 = *v128;
  if (v124)
  {
    v125 = 24 * v124;
    v126 = v128 + 24;
    do
    {
      v62 = (v126 - 16);
      if (*v126 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&__src, v62);
      }

      *v126 = -1;
      v126 += 24;
      v125 -= 24;
    }

    while (v125);
  }

  WTF::fastFree(v128, v62);
  if (v142 != 255)
  {
LABEL_189:
    p_src = &__src;
    v19 = &v141;
    goto LABEL_313;
  }
}

void *WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v6 = WTF::fastMalloc((24 * a3 + 8));
    *v6 = a3;
    v7 = (v6 + 6);
    v8 = 24 * a3;
    do
    {
      *(v7 - 16) = 0;
      *v7 = -1;
      v9 = *(a2 + 16);
      if (v9 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v10, v7 - 2, a2);
        *v7 = *(a2 + 16);
      }

      a2 += 24;
      v7 += 3;
      v8 -= 24;
    }

    while (v8);
    result = v4;
  }

  else
  {
    v6 = 0;
  }

  *result = v6;
  return result;
}

unint64_t WTF::makeString<WTF::String>(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 4);
    if ((v4 & 0x80000000) != 0)
    {
      *a1 = 0;
      __break(0xC471u);
LABEL_8:
      JUMPOUT(0x22586A944);
    }

    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(a1, v4, (*(a2 + 16) >> 2) & 1, a2);
    if (*a1)
    {
      return result;
    }

LABEL_6:
    __break(0xC471u);
    goto LABEL_8;
  }

  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(a1, 0, 1, 0);
  if (!*a1)
  {
    goto LABEL_6;
  }

  return result;
}

_BYTE *std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(_BYTE *result, WTF::StringImpl *a2)
{
  if (result[24] == 255)
  {
    goto LABEL_6;
  }

  if (!result[24])
  {
    if (result[16] != 255)
    {
      v2 = result;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, result);
      result = v2;
    }

    result[16] = -1;
    goto LABEL_6;
  }

  v3 = *result;
  *result = 0;
  if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
LABEL_6:
    result[24] = -1;
    return result;
  }

  v4 = result;
  WTF::StringImpl::destroy(v3, a2);
  result = v4;
  v4[24] = -1;
  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::String,WGSL::AST::IdentifierExpression *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::IdentifierExpression *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::IdentifierExpression *&>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, void *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x22586AC38);
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

void WGSL::TypeChecker::lookupType(WGSL::TypeChecker *this, const WGSL::AST::Identifier *a2, uint64_t a3)
{
  v6 = WGSL::ContextProvider<WGSL::Binding>::Context::lookup(*a2, (a3 + 24), a3);
  if (v6)
  {
    v7 = *v6;
    if (v7 == 1)
    {
      v8 = *(v6 + 1);
      if (*(*(a2 + 5) + 34))
      {
        goto LABEL_9;
      }

      if (v8)
      {
        v9 = *(v6 + 1);
        if (*(v8 + 48) - 1 <= 1)
        {
          v9 = *v8;
        }
      }

      else
      {
        v9 = 0;
      }

      if (v9 == *(*(a2 + 9) + 80))
      {
        WTF::makeString<WTF::ASCIILiteral>(&v26, "f16 type used without f16 extension enabled", 0x2CuLL);
        v18 = *(a3 + 8);
        v17 = *(a3 + 16);
        v19 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
          *this = v19;
          *(this + 1) = v18;
          *(this + 2) = v17;
          *(this + 24) = 1;
          if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {

            WTF::StringImpl::destroy(v19, v16);
          }
        }

        else
        {
          *this = 0;
          *(this + 1) = v18;
          *(this + 2) = v17;
          *(this + 24) = 1;
        }
      }

      else
      {
LABEL_9:
        *this = v8;
        *(this + 24) = 0;
      }
    }

    else
    {
      if (v7 == 2)
      {
        v12 = "function";
      }

      else
      {
        v12 = "value";
      }

      if (v7 == 2)
      {
        v13 = 9;
      }

      else
      {
        v13 = 6;
      }

      v21 = *(a3 + 8);
      v20 = off_2838D37C0;
      v14 = *(a3 + 24);
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v22 = v14;
      WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral>(&v26, v12, v13, v14, "' as type", 10);
      *this = v26;
      *(this + 8) = *(a3 + 8);
      *(this + 24) = 1;
      WGSL::AST::Identifier::~Identifier(&v20, v15);
    }
  }

  else
  {
    v24 = *(a3 + 8);
    v23 = off_2838D37C0;
    v10 = *(a3 + 24);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v25 = v10;
    WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v26, "unresolved type '", 18, v10);
    *this = v26;
    *(this + 8) = *(a3 + 8);
    *(this + 24) = 1;
    v26 = 0;
    WGSL::AST::Identifier::~Identifier(&v23, v11);
  }
}

uint64_t WGSL::TypeChecker::vectorFieldAccess(WGSL::Types::Vector const&,WGSL::AST::FieldAccessExpression &)::$_2::operator()(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 118)
  {
    if (a3 <= 120)
    {
      if (a3 == 119)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

    if (a3 != 121)
    {
      if (a3 != 122)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

LABEL_15:
    if (*a2 <= 1u)
    {
      __break(0xC471u);
      JUMPOUT(0x22586B08CLL);
    }

    *a1 = 0;
    *(a1 + 16) = -1;
    v5 = (a1 + 16);
    v7 = (a2 + 48);
    result = *(a2 + 48);
    if (result == 255)
    {
      return result;
    }

    v8 = &v11;
    v9 = (a2 + 32);
LABEL_25:
    result = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(result, v8, a1, v9);
    *v5 = *v7;
    return result;
  }

  if (a3 > 102)
  {
    if (a3 != 103)
    {
      if (a3 != 114)
      {
        goto LABEL_31;
      }

LABEL_18:
      if (!*a2)
      {
        __break(0xC471u);
        JUMPOUT(0x22586B0ACLL);
      }

      *a1 = 0;
      *(a1 + 16) = -1;
      v5 = (a1 + 16);
      v7 = (a2 + 24);
      result = *(a2 + 24);
      if (result == 255)
      {
        return result;
      }

      v8 = &v10;
      v9 = (a2 + 8);
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (a3 == 97)
  {
LABEL_8:
    if (*a2 <= 3u)
    {
      __break(0xC471u);
      JUMPOUT(0x22586B06CLL);
    }

    *a1 = 0;
    *(a1 + 16) = -1;
    v5 = (a1 + 16);
    v7 = (a2 + 96);
    result = *(a2 + 96);
    if (result == 255)
    {
      return result;
    }

    v8 = &v13;
    v9 = (a2 + 80);
    goto LABEL_25;
  }

  if (a3 != 98)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (*a2 <= 2u)
  {
LABEL_31:
    __break(0xC471u);
    JUMPOUT(0x22586B04CLL);
  }

  *a1 = 0;
  *(a1 + 16) = -1;
  v5 = (a1 + 16);
  v7 = (a2 + 72);
  result = *(a2 + 72);
  if (result != 255)
  {
    v8 = &v12;
    v9 = (a2 + 56);
    goto LABEL_25;
  }

  return result;
}

WTF::StringImpl *WGSL::TypeChecker::analyze(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a3 + 16))(a3);
  switch(result)
  {
    case '%':
    case '\'':
    case '(':
    case '*':
    case ',':
    case '-':
    case '1':
    case '4':
      v7 = 8;
      goto LABEL_3;
    case '&':
      v30 = *(a2 + 92);
      if (v30)
      {
        if (*(*(a2 + 80) + 16 * v30 - 8) != 4)
        {
          v7 = 2;
          goto LABEL_3;
        }

        v96 = 81;
      }

      else
      {
        v95 = "break statement must be in a loop or switch case";
        v96 = 49;
      }

      goto LABEL_234;
    case ')':
      v48 = *(a3 + 52);
      if (v48)
      {
        v49 = *(a3 + 40);
        v50 = 8 * v48;
        v51 = 8;
        while (1)
        {
          result = WGSL::TypeChecker::analyze(&v133, a2, *v49);
          if (v135)
          {
            break;
          }

          if ((v51 & 8) != 0)
          {
            v51 = v133 | v51 & 0xF7;
          }

          ++v49;
          v50 -= 8;
          if (!v50)
          {
            *a1 = v51;
            goto LABEL_4;
          }
        }

        if (v135 == 1)
        {
          v130 = v133;
          if (v133)
          {
            atomic_fetch_add_explicit(v133, 2u, memory_order_relaxed);
            *(a1 + 8) = v134;
            if (atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(v130, v52);
            }
          }

          else
          {
            *(a1 + 8) = v134;
          }

          *(a1 + 24) = 1;
          *a1 = v130;
          return result;
        }

        goto LABEL_251;
      }

      *a1 = 8;
      goto LABEL_4;
    case '+':
      v17 = *(a2 + 92);
      if (v17 - 1 < 0)
      {
        goto LABEL_202;
      }

      v18 = *(a2 + 80);
      v19 = v18 + 16 * (v17 - 1);
      v20 = *(v19 + 8);
      if (*(v19 + 8))
      {
        v21 = *(v19 + 8);
      }

      else
      {
        v125 = --v17 - 1;
        if (v17 - 1 < 0)
        {
LABEL_202:
          result = WTF::tryFastCompactMalloc(0x38);
          v127 = v133;
          if (!v133)
          {
            __break(0xC471u);
            JUMPOUT(0x22586BDBCLL);
          }

          *v133 = 0x2400000002;
          qmemcpy(v127 + 20, "continue statement must be in a loop", 36);
          *(v127 + 1) = v127 + 20;
          *(v127 + 4) = 4;
          goto LABEL_204;
        }

        while (1)
        {
          v19 = v18 + 16 * v125;
          v21 = *(v19 + 8);
          if (*(v19 + 8))
          {
            break;
          }

          --v17;
          if (v125-- <= 0)
          {
            goto LABEL_202;
          }
        }
      }

      if (v21 != 4)
      {
        if (v21 == 1)
        {
          v22 = v19;
        }

        else
        {
          v22 = 0;
        }

        if (!v20 && v22 && *(*v22 + 96) == 1)
        {
          *(*v22 + 104) = 1;
          result = (*(*a3 + 16))(a3);
          if (result != 43)
          {
LABEL_274:
            __break(0xC471u);
            JUMPOUT(0x22586BE0CLL);
          }

          *(a3 + 24) = 1;
          v23 = *(a2 + 92);
          if (v17 < v23)
          {
            v24 = (*(a2 + 80) + 16 * v17);
            if (v24[8])
            {
              goto LABEL_251;
            }

            *(*v24 + 24) = 1;
            if (v17 + 1 < v23)
            {
              v25 = ~v17 + v23;
              v26 = v24 + 24;
              while (!*v26)
              {
                *(*(v26 - 1) + 25) = 1;
                v26 += 16;
                if (!--v25)
                {
                  goto LABEL_39;
                }
              }

              goto LABEL_251;
            }
          }
        }

LABEL_39:
        v7 = 4;
LABEL_3:
        *a1 = v7;
        goto LABEL_4;
      }

      v95 = "continuing blocks must not contain a continue statement";
      v96 = 56;
      goto LABEL_234;
    case '.':
      v31 = *(a3 + 32);
      v32 = *(a2 + 92);
      if (v32 == *(a2 + 88))
      {
        v33 = v32 + (v32 >> 1);
        if (v33 <= v32 + 1)
        {
          v33 = v32 + 1;
        }

        if (v33 >> 28)
        {
          __break(0xC471u);
          JUMPOUT(0x22586BDCCLL);
        }

        v34 = *(a2 + 80);
        if (v33 <= 0x10)
        {
          v35 = 16;
        }

        else
        {
          v35 = v33;
        }

        result = WTF::fastMalloc((16 * v35));
        *(a2 + 88) = v35;
        *(a2 + 80) = result;
        if (v32)
        {
          v37 = 16 * v32;
          v38 = v34;
          do
          {
            v39 = *v38;
            v38 = (v38 + 16);
            *result = v39;
            result = (result + 16);
            v37 -= 16;
          }

          while (v37);
          result = *(a2 + 80);
        }

        if (v34)
        {
          if (result == v34)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
          }

          WTF::fastFree(v34, v36);
          result = *(a2 + 80);
        }

        v32 = *(a2 + 92);
        v40 = result + 16 * v32;
      }

      else
      {
        v40 = *(a2 + 80) + 16 * v32;
      }

      *v40 = a3;
      *(v40 + 8) = 2;
      v78 = v32 + 1;
      *(a2 + 92) = v32 + 1;
      v79 = *(a3 + 48);
      v80 = *(v79 + 52);
      if (v80)
      {
        v81 = *(v79 + 40);
        v82 = 8 * v80;
        v83 = 8;
        do
        {
          result = WGSL::TypeChecker::analyze(&v133, a2, *v81);
          v84 = v135;
          if (v135)
          {
            goto LABEL_227;
          }

          if ((v83 & 8) != 0)
          {
            v83 = v133 | v83 & 0xF7;
          }

          ++v81;
          v82 -= 8;
        }

        while (v82);
        v78 = *(a2 + 92);
      }

      else
      {
        v83 = 8;
      }

      if (!v78)
      {
        __break(0xC471u);
        JUMPOUT(0x22586BDA4);
      }

      *(a2 + 92) = v78 - 1;
      v7 = v83 & 0xF1;
      if (v31 || (v83 & 2) != 0)
      {
        goto LABEL_217;
      }

      if ((v83 & 0xF1) != 0)
      {
        goto LABEL_3;
      }

      v95 = "for-loop does not exit";
      v96 = 23;
      goto LABEL_234;
    case '/':
      v41 = *(a3 + 32);
      v42 = *(v41 + 52);
      if (!v42)
      {
        v45 = 8;
LABEL_151:
        v97 = *(a3 + 40);
        if (v97)
        {
          result = WGSL::TypeChecker::analyze(&v133, a2, v97);
          if (v135)
          {
            if (v135 != 1)
            {
              goto LABEL_251;
            }

            result = v133;
            if (v133)
            {
              atomic_fetch_add_explicit(v133, 2u, memory_order_relaxed);
              *a1 = result;
              *(a1 + 8) = v134;
              *(a1 + 24) = 1;
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                return WTF::StringImpl::destroy(result, v98);
              }

              return result;
            }

            *a1 = 0;
            v128 = v134;
LABEL_205:
            *(a1 + 8) = v128;
            goto LABEL_206;
          }

          v99 = v133;
        }

        else
        {
          v99 = 8;
        }

        v7 = v99 | v45;
        goto LABEL_3;
      }

      v43 = *(v41 + 40);
      v44 = 8 * v42;
      v45 = 8;
      while (1)
      {
        result = WGSL::TypeChecker::analyze(&v133, a2, *v43);
        v47 = v135;
        if (v135)
        {
          goto LABEL_224;
        }

        if ((v45 & 8) != 0)
        {
          v45 = v133 | v45 & 0xF7;
        }

        ++v43;
        v44 -= 8;
        if (!v44)
        {
          goto LABEL_151;
        }
      }

    case '0':
      v62 = *(a2 + 92);
      if (v62 == *(a2 + 88))
      {
        v63 = v62 + (v62 >> 1);
        if (v63 <= v62 + 1)
        {
          v63 = v62 + 1;
        }

        if (v63 >> 28)
        {
          __break(0xC471u);
          JUMPOUT(0x22586BDDCLL);
        }

        v64 = *(a2 + 80);
        if (v63 <= 0x10)
        {
          v65 = 16;
        }

        else
        {
          v65 = v63;
        }

        result = WTF::fastMalloc((16 * v65));
        *(a2 + 88) = v65;
        *(a2 + 80) = result;
        if (v62)
        {
          v67 = 16 * v62;
          v68 = v64;
          do
          {
            v69 = *v68;
            v68 = (v68 + 16);
            *result = v69;
            result = (result + 16);
            v67 -= 16;
          }

          while (v67);
          result = *(a2 + 80);
        }

        if (v64)
        {
          if (result == v64)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
          }

          WTF::fastFree(v64, v66);
          result = *(a2 + 80);
        }

        v62 = *(a2 + 92);
        v70 = result + 16 * v62;
      }

      else
      {
        v70 = *(a2 + 80) + 16 * v62;
      }

      *v70 = a3;
      *(v70 + 8) = 1;
      v90 = v62 + 1;
      *(a2 + 92) = v62 + 1;
      v91 = *(a3 + 52);
      if (!v91)
      {
        v94 = 8;
        if (*(a3 + 96) != 1)
        {
          goto LABEL_213;
        }

        goto LABEL_171;
      }

      v92 = *(a3 + 40);
      v93 = 8 * v91;
      v94 = 8;
      do
      {
        result = WGSL::TypeChecker::analyze(&v133, a2, *v92);
        if (v135)
        {
          if (v135 != 1)
          {
            goto LABEL_251;
          }

          v129 = v133;
          if (!v133)
          {
            v131 = v134;
            goto LABEL_254;
          }

          atomic_fetch_add_explicit(v133, 2u, memory_order_relaxed);
          v132 = v134;
          if (atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(v129, v46);
          }

LABEL_222:
          atomic_fetch_add_explicit(v129, 2u, memory_order_relaxed);
          *(a1 + 8) = v132;
          *a1 = v129;
          *(a1 + 24) = 1;
          if (atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(v129, v46);
          }

          return result;
        }

        if ((v94 & 8) != 0)
        {
          v94 = v133 | v94 & 0xF7;
        }

        ++v92;
        v93 -= 8;
      }

      while (v93);
      v90 = *(a2 + 92);
      if (*(a3 + 96) != 1)
      {
        goto LABEL_213;
      }

LABEL_171:
      v109 = a3 + 56;
      if (v90 == *(a2 + 88))
      {
        v110 = v90 + (v90 >> 1);
        if (v110 <= v90 + 1)
        {
          v110 = v90 + 1;
        }

        if (v110 >> 28)
        {
          __break(0xC471u);
          goto LABEL_273;
        }

        v111 = *(a2 + 80);
        if (v110 <= 0x10)
        {
          v112 = 16;
        }

        else
        {
          v112 = v110;
        }

        result = WTF::fastMalloc((16 * v112));
        *(a2 + 88) = v112;
        *(a2 + 80) = result;
        if (v90)
        {
          v114 = 16 * v90;
          v115 = v111;
          do
          {
            v116 = *v115;
            v115 = (v115 + 16);
            *result = v116;
            result = (result + 16);
            v114 -= 16;
          }

          while (v114);
          result = *(a2 + 80);
        }

        if (v111)
        {
          if (result == v111)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
          }

          WTF::fastFree(v111, v113);
          result = *(a2 + 80);
        }

        v117 = *(a2 + 92);
        v118 = result + 16 * v117;
        *v118 = v109;
        v118[8] = 4;
        LOBYTE(v118) = *(a3 + 96);
        v119 = v117 + 1;
        *(a2 + 92) = v119;
        if ((v118 & 1) == 0)
        {
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }
      }

      else
      {
        v120 = *(a2 + 80) + 16 * v90;
        *v120 = v109;
        *(v120 + 8) = 4;
        v119 = v90 + 1;
        *(a2 + 92) = v90 + 1;
      }

      v121 = *(a3 + 68);
      if (!v121)
      {
        v124 = 8;
LABEL_208:
        if (!v119)
        {
          __break(0xC471u);
          JUMPOUT(0x22586BDE4);
        }

        v90 = v119 - 1;
        *(a2 + 92) = v119 - 1;
        if ((*(a3 + 96) & 1) == 0)
        {
          goto LABEL_273;
        }

        if (*(a3 + 88))
        {
          v94 |= v124 | 6;
        }

        else
        {
          v94 |= v124;
        }

LABEL_213:
        if (!v90)
        {
          __break(0xC471u);
          JUMPOUT(0x22586BDACLL);
        }

        *(a2 + 92) = v90 - 1;
        v7 = v94 & 0xF1;
        if ((v94 & 2) != 0)
        {
LABEL_217:
          v7 |= 8u;
          goto LABEL_3;
        }

        if ((v94 & 0xF1) != 0)
        {
          goto LABEL_3;
        }

        v95 = "loop does not exit";
        v96 = 19;
LABEL_234:
        result = WTF::makeString<WTF::ASCIILiteral>(&v133, v95, v96);
        v127 = v133;
LABEL_204:
        *a1 = v127;
        v128 = *(a3 + 8);
        goto LABEL_205;
      }

      v122 = *(a3 + 56);
      v123 = 8 * v121;
      v124 = 8;
      while (1)
      {
        result = WGSL::TypeChecker::analyze(&v133, a2, *v122);
        v84 = v135;
        if (v135)
        {
          break;
        }

        if ((v124 & 8) != 0)
        {
          v124 = v133 | v124 & 0xF7;
        }

        ++v122;
        v123 -= 8;
        if (!v123)
        {
          v119 = *(a2 + 92);
          goto LABEL_208;
        }
      }

LABEL_227:
      if (v84 != 1)
      {
        goto LABEL_251;
      }

      v129 = v133;
      if (v133)
      {
        goto LABEL_220;
      }

      v131 = v134;
LABEL_254:
      *(a1 + 8) = v131;
      *a1 = 0;
LABEL_206:
      *(a1 + 24) = 1;
      return result;
    case '2':
      v27 = *(a2 + 92);
      if (!v27)
      {
        goto LABEL_44;
      }

      v28 = (*(a2 + 80) + 8);
      while (1)
      {
        v29 = *v28;
        v28 += 16;
        if (v29 == 4)
        {
          break;
        }

        if (!--v27)
        {
LABEL_44:
          v7 = 1;
          goto LABEL_3;
        }
      }

      v95 = "continuing blocks must not contain a return statement";
      v96 = 54;
      goto LABEL_234;
    case '3':
      v53 = *(a2 + 92);
      if (v53 == *(a2 + 88))
      {
        v54 = v53 + (v53 >> 1);
        if (v54 <= v53 + 1)
        {
          v54 = v53 + 1;
        }

        if (v54 >> 28)
        {
          __break(0xC471u);
          JUMPOUT(0x22586BDD4);
        }

        v55 = *(a2 + 80);
        if (v54 <= 0x10)
        {
          v56 = 16;
        }

        else
        {
          v56 = v54;
        }

        result = WTF::fastMalloc((16 * v56));
        *(a2 + 88) = v56;
        *(a2 + 80) = result;
        if (v53)
        {
          v58 = 16 * v53;
          v59 = v55;
          do
          {
            v60 = *v59;
            v59 = (v59 + 16);
            *result = v60;
            result = (result + 16);
            v58 -= 16;
          }

          while (v58);
          result = *(a2 + 80);
        }

        if (v55)
        {
          if (result == v55)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
          }

          WTF::fastFree(v55, v57);
          result = *(a2 + 80);
        }

        v53 = *(a2 + 92);
        v61 = result + 16 * v53;
      }

      else
      {
        v61 = *(a2 + 80) + 16 * v53;
      }

      *v61 = a3;
      *(v61 + 8) = 0;
      *(a2 + 92) = v53 + 1;
      v85 = *(a3 + 88);
      v86 = *(v85 + 52);
      if (v86)
      {
        v87 = *(v85 + 40);
        v88 = 8 * v86;
        v89 = 8;
        while (1)
        {
          result = WGSL::TypeChecker::analyze(&v133, a2, *v87);
          v47 = v135;
          if (v135)
          {
            break;
          }

          if ((v89 & 8) != 0)
          {
            v89 = v133 | v89 & 0xF7;
          }

          ++v87;
          v88 -= 8;
          if (!v88)
          {
            goto LABEL_156;
          }
        }

LABEL_224:
        if (v47 != 1)
        {
          goto LABEL_251;
        }

        v129 = v133;
        if (!v133)
        {
          v131 = v134;
          goto LABEL_254;
        }
      }

      else
      {
        v89 = 8;
LABEL_156:
        v100 = *(a3 + 68);
        if (!v100)
        {
LABEL_166:
          v108 = *(a2 + 92);
          if (!v108)
          {
            __break(0xC471u);
            JUMPOUT(0x22586BDB4);
          }

          *(a2 + 92) = v108 - 1;
          v7 = v89 & 0xF5 | 8;
          if ((v89 & 2) == 0)
          {
            v7 = v89;
          }

          goto LABEL_3;
        }

        v101 = *(a3 + 56);
        v102 = v101 + 24 * v100;
        while (1)
        {
          v104 = *(v101 + 16);
          v105 = *(v104 + 52);
          if (v105)
          {
            break;
          }

          v103 = 8;
LABEL_159:
          v89 |= v103;
          v101 += 24;
          if (v101 == v102)
          {
            goto LABEL_166;
          }
        }

        v106 = *(v104 + 40);
        v107 = 8 * v105;
        v103 = 8;
        while (1)
        {
          result = WGSL::TypeChecker::analyze(&v133, a2, *v106);
          if (v135)
          {
            break;
          }

          if ((v103 & 8) != 0)
          {
            v103 = v133 | v103 & 0xF7;
          }

          ++v106;
          v107 -= 8;
          if (!v107)
          {
            goto LABEL_159;
          }
        }

        if (v135 != 1)
        {
LABEL_251:
          mpark::throw_bad_variant_access(result);
        }

        v129 = v133;
        if (!v133)
        {
          v131 = v134;
          goto LABEL_254;
        }
      }

LABEL_220:
      atomic_fetch_add_explicit(v133, 2u, memory_order_relaxed);
      v132 = v134;
      if (atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v129, v46);
      }

      goto LABEL_222;
    case '5':
      v8 = *(a2 + 92);
      if (v8 == *(a2 + 88))
      {
        v9 = v8 + (v8 >> 1);
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v9 >> 28)
        {
          __break(0xC471u);
          JUMPOUT(0x22586BDC4);
        }

        v10 = *(a2 + 80);
        if (v9 <= 0x10)
        {
          v11 = 16;
        }

        else
        {
          v11 = v9;
        }

        result = WTF::fastMalloc((16 * v11));
        *(a2 + 88) = v11;
        *(a2 + 80) = result;
        if (v8)
        {
          v13 = 16 * v8;
          v14 = v10;
          do
          {
            v15 = *v14;
            v14 = (v14 + 16);
            *result = v15;
            result = (result + 16);
            v13 -= 16;
          }

          while (v13);
          result = *(a2 + 80);
        }

        if (v10)
        {
          if (result == v10)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
          }

          WTF::fastFree(v10, v12);
          result = *(a2 + 80);
        }

        v8 = *(a2 + 92);
        v16 = result + 16 * v8;
      }

      else
      {
        v16 = *(a2 + 80) + 16 * v8;
      }

      *v16 = a3;
      *(v16 + 8) = 3;
      v71 = v8 + 1;
      *(a2 + 92) = v8 + 1;
      v72 = *(a3 + 32);
      v73 = *(v72 + 52);
      if (!v73)
      {
        v77 = 8;
LABEL_142:
        if (!v71)
        {
          __break(0xC471u);
          JUMPOUT(0x22586BD9CLL);
        }

        *(a2 + 92) = v71 - 1;
        *a1 = v77;
LABEL_4:
        *(a1 + 24) = 0;
        return result;
      }

      v74 = *(v72 + 40);
      v75 = 8 * v73;
      v76 = 8;
      while (1)
      {
        result = WGSL::TypeChecker::analyze(&v133, a2, *v74);
        if (v135)
        {
          break;
        }

        if ((v76 & 8) != 0)
        {
          v76 = v133 | v76 & 0xF7;
        }

        ++v74;
        v75 -= 8;
        if (!v75)
        {
          v71 = *(a2 + 92);
          v77 = v76 & 0xF1 | 8;
          goto LABEL_142;
        }
      }

      if (v135 == 1)
      {
        v129 = v133;
        if (v133)
        {
          goto LABEL_220;
        }

        v131 = v134;
        goto LABEL_254;
      }

      goto LABEL_251;
    default:
      __break(0xC471u);
      JUMPOUT(0x22586BD94);
  }
}

uint64_t WGSL::TypeChecker::convertValueImpl(mpark *a1, unsigned int **a2, const WTF::StringImpl *a3, double _D0)
{
  v4 = *(a1 + 48);
  if (v4 == 255)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  switch(v5)
  {
    case 1:
      if (v4 != 1 || *(a2 + 16) != 8)
      {
        goto LABEL_197;
      }

      v23 = *a2;
      if (*a2)
      {
        v24 = (*a2 + 2);
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v25 = &(*a2)[6 * *v23 + 2];
        if (v24 == v25)
        {
          return 1;
        }
      }

      else
      {
        v25 = 0;
        if (!v24)
        {
          return 1;
        }
      }

      do
      {
        result = WGSL::TypeChecker::convertValueImpl(*a1, v24);
        v24 += 24;
        if (result)
        {
          v37 = v24 == v25;
        }

        else
        {
          v37 = 1;
        }
      }

      while (!v37);
      return result;
    case 2:
      if (v4 != 2 || *(a2 + 16) != 9)
      {
        goto LABEL_197;
      }

      v17 = a2[1];
      if (v17)
      {
        v18 = v17 + 2;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = &v17[6 * *v17 + 2];
        if (v18 == v19)
        {
          return 1;
        }
      }

      else
      {
        v19 = 0;
        if (!v18)
        {
          return 1;
        }
      }

      do
      {
        result = WGSL::TypeChecker::convertValueImpl(*a1, v18);
        v18 += 6;
        if (result)
        {
          _ZF = v18 == v19;
        }

        else
        {
          _ZF = 1;
        }
      }

      while (!_ZF);
      return result;
    case 3:
      if (v4 != 3 || *(a2 + 16) != 7)
      {
        goto LABEL_197;
      }

      v20 = *a2;
      if (*a2)
      {
        v21 = (*a2 + 2);
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = &(*a2)[6 * *v20 + 2];
        if (v21 == v22)
        {
          return 1;
        }
      }

      else
      {
        v22 = 0;
        if (!v21)
        {
          return 1;
        }
      }

      do
      {
        result = WGSL::TypeChecker::convertValueImpl(*a1, v21);
        v21 += 24;
        if (result)
        {
          v36 = v21 == v22;
        }

        else
        {
          v36 = 1;
        }
      }

      while (!v36);
      return result;
    case 4:
      if (v4 != 4 || *(a2 + 16) != 10)
      {
        goto LABEL_197;
      }

      v12 = *(a1 + 1);
      if (!v12)
      {
        v14 = 0;
        v13 = 0;
        goto LABEL_67;
      }

      v13 = *(v12 - 4);
      v14 = v12 + 16 * v13;
      if (!*(v12 - 12))
      {
LABEL_67:
        v16 = v14;
        v14 = v12 + 16 * v13;
        goto LABEL_68;
      }

      if (!v13)
      {
        v34 = 0;
        v16 = *(a1 + 1);
        goto LABEL_106;
      }

      v15 = 16 * v13;
      v16 = *(a1 + 1);
      while ((*v16 + 1) <= 1)
      {
        v16 += 16;
        v15 -= 16;
        if (!v15)
        {
          v16 = v14;
          break;
        }
      }

LABEL_68:
      if (!v12)
      {
        v39 = 0;
        if (v16)
        {
          goto LABEL_109;
        }

        return 1;
      }

      v34 = *(v12 - 4);
LABEL_106:
      v39 = v12 + 16 * v34;
      if (v16 != v39)
      {
LABEL_109:
        v44 = *a2;
        if (!*a2)
        {
LABEL_198:
          __break(0xC471u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(0xC471u);
          JUMPOUT(0x22586C82CLL);
        }

        v45 = *v16;
        if (*v16 == -1)
        {
          goto LABEL_200;
        }

        if (!v45)
        {
          __break(0xC471u);
          JUMPOUT(0x22586C84CLL);
        }

        v46 = *(v44 - 8);
        v47 = *(v45 + 4);
        if (v47 < 0x100)
        {
          v48 = WTF::StringImpl::hashSlowCase(v45);
        }

        else
        {
          v48 = v47 >> 8;
        }

        for (i = 0; ; v48 = i + v50)
        {
          v50 = v48 & v46;
          v51 = *(v44 + 32 * v50);
          if (v51 != -1)
          {
            if (!v51)
            {
              v53 = *a2;
              if (!*a2)
              {
                goto LABEL_198;
              }

              v54 = *(v53 - 4);
              v52 = v53 + 32 * v54;
LABEL_124:
              if (v52 == v53 + 32 * v54)
              {
                goto LABEL_198;
              }

LABEL_125:
              result = WGSL::TypeChecker::convertValueImpl(*(v16 + 8), v52 + 8);
              if (!result)
              {
                return result;
              }

              do
              {
                v16 += 16;
              }

              while (v16 != v14 && (*v16 + 1) <= 1);
              if (v16 == v39)
              {
                return result;
              }

              goto LABEL_109;
            }

            if (WTF::equal(v51, *v16, a3))
            {
              v52 = v44 + 32 * v50;
              v53 = *a2;
              if (*a2)
              {
                v54 = *(v53 - 4);
                goto LABEL_124;
              }

              goto LABEL_125;
            }
          }

          ++i;
        }
      }

      return 1;
    case 5:
      if (v4 != 5 || *(a2 + 16) != 10)
      {
        goto LABEL_197;
      }

      v26 = *(a1 + 8);
      if (v26 >= 3)
      {
        goto LABEL_199;
      }

      v27 = *a2;
      if (*a2)
      {
        v28 = *(v27 - 4);
        v29 = (v27 + 32 * v28);
        if (*(v27 - 12))
        {
          if (!v28)
          {
            v38 = 0;
            v31 = *a2;
            goto LABEL_130;
          }

          v30 = 32 * v28;
          v31 = *a2;
          do
          {
            if ((*v31 + 1) > 1)
            {
              goto LABEL_93;
            }

            v31 += 4;
            v30 -= 32;
          }

          while (v30);
          v31 = v29;
LABEL_93:
          if (!v27)
          {
            v40 = 0;
            if (!v31)
            {
              return 1;
            }

            goto LABEL_131;
          }

          v38 = *(v27 - 4);
LABEL_130:
          v40 = (v27 + 32 * v38);
          if (v31 == v40)
          {
            return 1;
          }

LABEL_131:
          v55 = WGSL::Types::PrimitiveStruct::keys[v26];
          while (1)
          {
            v56 = *v31;
            if (*v31)
            {
              v57 = *(v56 + 8);
              v58 = *(v56 + 4) | (((*(v56 + 16) >> 2) & 1) << 32);
              v59 = WTF::operator==(v57, v58, *v55, *(v55 + 1));
              v60 = v55;
              if ((v59 & 1) == 0)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v57 = 0;
              v58 = 0x100000000;
              v61 = WTF::operator==(0, 0x100000000, *v55, *(v55 + 1));
              v60 = v55;
              if ((v61 & 1) == 0)
              {
LABEL_137:
                v62 = WTF::operator==(v57, v58, *(v55 + 3), *(v55 + 4));
                v60 = v55 + 24;
                if ((v62 & 1) == 0)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22586C88CLL);
                }
              }
            }

            v63 = *(v60 + 4);
            v64 = *(a1 + 2);
            if (*v64 <= v63)
            {
              __break(0xC471u);
              JUMPOUT(0x22586C86CLL);
            }

            result = WGSL::TypeChecker::convertValueImpl(*&v64[2 * v63 + 2], v31 + 1);
            if (result)
            {
              do
              {
                v31 += 4;
              }

              while (v31 != v29 && (*v31 + 1) <= 1);
              if (v31 != v40)
              {
                continue;
              }
            }

            return result;
          }
        }
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v31 = v29;
      v29 = (v27 + 32 * v28);
      goto LABEL_93;
    case 6:
      if (v4 == 6)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C8CCLL);
      }

      goto LABEL_197;
    case 7:
      if (v4 == 7)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C7E0);
      }

      goto LABEL_197;
    case 8:
      if (v4 == 8)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C7B8);
      }

      goto LABEL_197;
    case 9:
      if (v4 == 9)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C790);
      }

      goto LABEL_197;
    case 10:
      if (v4 == 10)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C768);
      }

      goto LABEL_197;
    case 11:
      if (v4 == 11)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C740);
      }

      goto LABEL_197;
    case 12:
      if (v4 == 12)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C718);
      }

      goto LABEL_197;
    case 13:
      if (v4 == 13)
      {
        __break(0xC471u);
        JUMPOUT(0x22586C6F0);
      }

      goto LABEL_197;
    default:
      if (*(a1 + 48))
      {
LABEL_197:
        mpark::throw_bad_variant_access(a1);
      }

      result = 0;
      v9 = *a1;
      if (v9 <= 2)
      {
        if (!*a1)
        {
          if (*(a2 + 16) != 5)
          {
            __break(0xC471u);
            JUMPOUT(0x22586C408);
          }

          return 1;
        }

        if (v9 == 1)
        {
          v67 = *(a2 + 16);
          if (v67 == 3)
          {
            return 1;
          }

          if (v67 == 5 && *a2 == *a2)
          {
            LODWORD(v74[0]) = *a2;
            v75 = 3;
            v76 = a2;
            v33 = 3;
            goto LABEL_177;
          }
        }

        else
        {
          if (v9 != 2)
          {
            return result;
          }

          v32 = *(a2 + 16);
          if (v32 == 4)
          {
            return 1;
          }

          if (v32 == 5 && !(*a2 >> 32))
          {
            LODWORD(v74[0]) = *a2;
            v75 = 4;
            v76 = a2;
            v33 = 4;
            goto LABEL_177;
          }
        }

        return 0;
      }

      if (*a1 <= 4u)
      {
        if (v9 == 3)
        {
          v65 = *(a2 + 16);
          if (v65 == 2)
          {
            v66 = *a2;
            WGSL::convertFloat<double,double>(double)::max = 0x7FEFFFFFFFFFFFFFLL;
            WGSL::convertFloat<double,double>(double)::lowest = 0xFFEFFFFFFFFFFFFFLL;
            if (fabs(v66) > 1.79769313e308)
            {
              return 0;
            }
          }

          else
          {
            if (v65 != 5)
            {
              __break(0xC471u);
              JUMPOUT(0x22586C8ACLL);
            }

            v66 = *a2;
            WGSL::convertFloat<double,double>(double)::max = 0x7FEFFFFFFFFFFFFFLL;
            WGSL::convertFloat<double,double>(double)::lowest = 0xFFEFFFFFFFFFFFFFLL;
            if (fabs(v66) > 1.79769313e308)
            {
              return 0;
            }
          }

          v74[0] = *&v66;
          v75 = 2;
          v76 = a2;
          v33 = 2;
          goto LABEL_177;
        }

        if (v9 != 4)
        {
          return result;
        }

        v10 = *(a2 + 16);
        switch(v10)
        {
          case 5:
            _D0 = *a2;
            WGSL::convertFloat<half,double>(double)::max = 31743;
            WGSL::convertFloat<half,double>(double)::lowest = -1025;
            v11 = fabs(_D0) <= 65504.0;
            break;
          case 2:
            _D0 = *a2;
            WGSL::convertFloat<half,double>(double)::max = 31743;
            WGSL::convertFloat<half,double>(double)::lowest = -1025;
            v11 = 1;
            if (fabs(_D0) > 65504.0)
            {
              v11 = 0;
            }

            break;
          case 1:
            LOWORD(_D0) = *a2;
            v11 = 1;
            if (fabsl(*a2) > COERCE_SHORT_FLOAT(31743))
            {
              v11 = 0;
            }

            goto LABEL_165;
          default:
            return 0;
        }

        __asm { FCVT            H0, D0 }

LABEL_165:
        if (v11)
        {
          v72 = LODWORD(_D0) | 0x10000;
        }

        else
        {
          v72 = 0;
        }

        if (v72 >= 0x10000)
        {
          LOWORD(v74[0]) = v72;
          v75 = 1;
          v76 = a2;
          v33 = 1;
          goto LABEL_177;
        }

        return 0;
      }

      if (v9 == 7)
      {
        if (*(a2 + 16) != 6)
        {
          __break(0xC471u);
          JUMPOUT(0x22586C478);
        }

        return 1;
      }

      if (v9 != 5)
      {
        return result;
      }

      v41 = *(a2 + 16);
      if (v41 == 5)
      {
        v68 = *a2;
        WGSL::convertFloat<float,double>(double)::max = 2139095039;
        WGSL::convertFloat<float,double>(double)::lowest = -8388609;
        v43 = fabs(v68) <= 3.40282347e38;
      }

      else
      {
        if (v41 != 2)
        {
          if (*(a2 + 16))
          {
            return 0;
          }

          v42 = *a2;
          v43 = fabsf(*a2) <= 3.4028e38;
          goto LABEL_172;
        }

        v68 = *a2;
        WGSL::convertFloat<float,double>(double)::max = 2139095039;
        WGSL::convertFloat<float,double>(double)::lowest = -8388609;
        v43 = 1;
        if (fabs(v68) > 3.40282347e38)
        {
          v43 = 0;
        }
      }

      v42 = v68;
LABEL_172:
      if (v43)
      {
        v73 = LODWORD(v42) | 0x100000000;
      }

      else
      {
        v73 = 0;
      }

      if (HIDWORD(v73))
      {
        LODWORD(v74[0]) = v73;
        v75 = 0;
        v76 = a2;
        v33 = 0;
LABEL_177:
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v33, &v76, a2, v74);
        if (v75 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v76, v74);
        }

        return 1;
      }

      return 0;
  }
}

WTF::StringImpl *WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WGSL::Type,char>(WTF::StringImpl **a1, uint64_t a2, unsigned __int8 *a3)
{
  v107[20] = *MEMORY[0x277D85DE8];
  WTF::StringPrintStream::StringPrintStream(v107);
  WGSL::Type::dump(a3, v107);
  WTF::StringPrintStream::toString(&v106, v107);
  WTF::StringPrintStream::~StringPrintStream(v107);
  v8 = v106;
  if (a2)
  {
    v9 = *(a2 + 4);
    if (v106)
    {
LABEL_3:
      v10 = *(v106 + 1);
      if ((v10 & 0x80000000) == 0)
      {
        v6 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v6)
        {
          goto LABEL_9;
        }
      }

LABEL_17:
      v16 = 0;
      *a1 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = 0;
    if (v106)
    {
      goto LABEL_3;
    }
  }

  v11 = 1;
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = __OFADD__(v11, 27);
  v12 = v11 + 27;
  v13 = v6;
  if (v9 < 0)
  {
    goto LABEL_17;
  }

  if (v13)
  {
    goto LABEL_17;
  }

  v6 = __OFADD__(v9, v12);
  v14 = v9 + v12;
  if (v6)
  {
    goto LABEL_17;
  }

  v15 = (v14 + 6);
  if (__OFADD__(v14, 6))
  {
    goto LABEL_17;
  }

  if (!a2 || (*(a2 + 16) & 4) != 0)
  {
    if (v106)
    {
      v19 = *(v106 + 4);
      atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
      if ((v19 & 4) == 0)
      {
        v18 = a2;
        if (v15)
        {
          if (v15 <= 0x7FFFFFEF)
          {
            goto LABEL_33;
          }

          goto LABEL_56;
        }

        goto LABEL_174;
      }
    }

    if (!v15)
    {
      goto LABEL_174;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }

    WTF::tryFastCompactMalloc((v15 + 20));
    v16 = v107[0];
    if (!v107[0])
    {
      goto LABEL_175;
    }

    v24 = (v107[0] + 20);
    *v107[0] = 2;
    *(v16 + 1) = v15;
    *(v16 + 1) = v16 + 20;
    *(v16 + 4) = 4;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      *(v16 + 12) = 8293;
      *v24 = 1970037110;
      if (v15 <= 5)
      {
        goto LABEL_171;
      }

      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    else
    {
      *(v16 + 12) = 8293;
      *v24 = 1970037110;
      if (v15 < 6)
      {
        goto LABEL_171;
      }
    }

    v25 = v15 - 6;
    v26 = v16 + 26;
    if (!a2)
    {
      v31 = 0;
      goto LABEL_94;
    }

    v7 = *(a2 + 8);
    v27 = *(a2 + 4);
    if ((*(a2 + 16) & 4) != 0)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          *v26 = v7->i8[0];
        }

        else
        {
          memcpy(v16 + 26, v7, v27);
        }
      }
    }

    else
    {
      v28 = &v26[v27];
      if (v27 < 0x10)
      {
        v29 = v16 + 26;
      }

      else
      {
        v29 = v16 + 26;
        do
        {
          v30 = vld2q_s8(v7->i8);
          v7 += 2;
          *v29 = v30;
          v29 += 16;
        }

        while (v29 != &v26[v27 & 0xFFFFFFF0]);
      }

      if (v29 != v28)
      {
        v43 = v16 + v27;
        v44 = v16 + v27 - v29 + 26;
        if (v44 < 4 || (v29 < v7[3].u64 + 2 * v43 + -2 * v29 + 4 ? (v45 = v7 >= (v43 + 26)) : (v45 = 1), !v45))
        {
          v47 = v29;
          v48 = v7;
          goto LABEL_77;
        }

        if (v44 >= 0x20)
        {
          v46 = v44 & 0xFFFFFFFFFFFFFFE0;
          v85 = v7 + 2;
          v86 = (v29 + 16);
          v87 = v44 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v89 = v85[-2];
            v88 = v85[-1];
            v91 = *v85;
            v90 = v85[1];
            v85 += 4;
            v86[-1] = vuzp1q_s8(v89, v88);
            *v86 = vuzp1q_s8(v91, v90);
            v86 += 2;
            v87 -= 32;
          }

          while (v87);
          if (v44 == v46)
          {
            goto LABEL_93;
          }

          if ((v44 & 0x1C) == 0)
          {
            v48 = (v7 + 2 * v46);
            v47 = (v29 + v46);
            do
            {
LABEL_77:
              v49 = v48->i8[0];
              v48 = (v48 + 2);
              *v47++ = v49;
            }

            while (v47 != v28);
            goto LABEL_93;
          }
        }

        else
        {
          v46 = 0;
        }

        v47 = (v29 + (v44 & 0xFFFFFFFFFFFFFFFCLL));
        v48 = (v7 + 2 * (v44 & 0xFFFFFFFFFFFFFFFCLL));
        v92 = (v7 + 2 * v46);
        v93 = (v29 + v46);
        v94 = v46 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v95 = *v92++;
          *v93++ = vuzp1_s8(v95, v95).u32[0];
          v94 += 4;
        }

        while (v94);
        if (v44 != (v44 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_77;
        }
      }
    }

LABEL_93:
    v31 = *(a2 + 4);
    if (v25 < v31)
    {
      goto LABEL_171;
    }

LABEL_94:
    v57 = v25 - v31;
    v58 = &v26[v31];
    if (!v8)
    {
      qmemcpy(v58, " cannot be represented as '", 27);
      if (v57 >= 0x1C)
      {
        v58[27] = 39;
LABEL_170:
        *a1 = v16;
        goto LABEL_18;
      }

LABEL_171:
      __break(1u);
    }

    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    qmemcpy(v58, " cannot be represented as '", 27);
    if (v57 <= 0x1A)
    {
      goto LABEL_171;
    }

    v59 = v57 - 27;
    v60 = v58 + 27;
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    v7 = *(v8 + 1);
    v61 = *(v8 + 1);
    if ((*(v8 + 16) & 4) != 0)
    {
      if (v61)
      {
        if (v61 == 1)
        {
          *v60 = v7->i8[0];
        }

        else
        {
          memcpy(v60, v7, v61);
        }
      }
    }

    else
    {
      v62 = &v60[v61];
      if (v61 < 0x10)
      {
        v63 = v60;
      }

      else
      {
        v63 = v60;
        do
        {
          v64 = vld2q_s8(v7->i8);
          v7 += 2;
          *v63 = v64;
          v63 += 16;
        }

        while (v63 != &v60[v61 & 0xFFFFFFF0]);
      }

      if (v63 != v62)
      {
        v65 = v16 + v31 + v61;
        v66 = &v65[-v63 + 53];
        if (v66 < 4 || (v63 < &v7[6].u64[1] + 2 * v65 + -2 * v63 + 2 ? (v67 = v7 >= (v65 + 53)) : (v67 = 1), !v67))
        {
          v69 = v63;
          v70 = v7;
          goto LABEL_115;
        }

        if (v66 >= 0x20)
        {
          v68 = v66 & 0xFFFFFFFFFFFFFFE0;
          v74 = v7 + 2;
          v75 = (v63 + 16);
          v76 = v66 & 0xFFFFFFFFFFFFFFE0;
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
          if (v66 == v68)
          {
            goto LABEL_118;
          }

          if ((v66 & 0x1C) == 0)
          {
            v70 = (v7 + 2 * v68);
            v69 = (v63 + v68);
            do
            {
LABEL_115:
              v71 = v70->i8[0];
              v70 = (v70 + 2);
              *v69++ = v71;
            }

            while (v69 != v62);
            goto LABEL_118;
          }
        }

        else
        {
          v68 = 0;
        }

        v69 = (v63 + (v66 & 0xFFFFFFFFFFFFFFFCLL));
        v70 = (v7 + 2 * (v66 & 0xFFFFFFFFFFFFFFFCLL));
        v81 = (v7 + 2 * v68);
        v82 = (v63 + v68);
        v83 = v68 - (v66 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v84 = *v81++;
          *v82++ = vuzp1_s8(v84, v84).u32[0];
          v83 += 4;
        }

        while (v83);
        if (v66 != (v66 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_115;
        }
      }
    }

LABEL_118:
    v72 = *(v8 + 1);
    if (v59 <= v72)
    {
      goto LABEL_171;
    }

    v60[v72] = 39;
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_121;
      }
    }

    else if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
LABEL_121:
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_136;
      }

      goto LABEL_122;
    }

    WTF::StringImpl::destroy(v8, v7);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_136;
    }

LABEL_122:
    WTF::StringImpl::destroy(v8, v7);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

  if (v106)
  {
    atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
    if (v14 != -6)
    {
      goto LABEL_27;
    }

LABEL_174:
    v16 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
LABEL_175:
    *a1 = v16;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_176;
  }

  if (v14 == -6)
  {
    goto LABEL_174;
  }

LABEL_27:
  v18 = 1;
  if (v15 > 0x7FFFFFEF)
  {
LABEL_56:
    v16 = 0;
    goto LABEL_175;
  }

LABEL_33:
  WTF::tryFastCompactMalloc((2 * v15 + 20));
  v16 = v107[0];
  if (!v107[0])
  {
    goto LABEL_175;
  }

  *v107[0] = 2;
  *(v16 + 1) = v15;
  *(v16 + 1) = v16 + 20;
  *(v16 + 4) = 0;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(v16 + 20) = 0x75006C00610076;
  *(v16 + 7) = 2097253;
  if (v15 <= 5)
  {
    goto LABEL_171;
  }

  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v20 = (v16 + 32);
  v21 = v15 - 6;
  if (!v18)
  {
    v32 = 0;
    goto LABEL_129;
  }

  v22 = *(a2 + 8);
  v23 = *(a2 + 4);
  if ((*(a2 + 16) & 4) != 0)
  {
    v33 = &v20[v23];
    if (v23 < 0x40)
    {
      v34 = v16 + 32;
    }

    else
    {
      v34 = &v20[v23 & 0xFFFFFFC0];
      v35 = 0uLL;
      v36 = v16 + 32;
      do
      {
        v108.val[0] = *v22;
        v37 = v22[1];
        v109.val[0] = v22[2];
        v38 = v22[3];
        v22 += 4;
        v39 = v38;
        v109.val[1] = 0uLL;
        v110.val[0] = v37;
        v108.val[1] = 0uLL;
        v40 = v36;
        vst2q_s8(v40, v108);
        v40 += 32;
        v110.val[1] = 0uLL;
        vst2q_s8(v40, v110);
        v41 = v36 + 64;
        vst2q_s8(v41, v109);
        v42 = v36 + 96;
        vst2q_s8(v42, *(&v35 - 1));
        v36 += 128;
      }

      while (v36 != v34);
    }

    if (v34 == v33)
    {
      goto LABEL_128;
    }

    v50 = v16 + 2 * v23 - v34 + 30;
    if (v50 < 0xE || (v34 < v22->u64 + (v50 >> 1) + 1 ? (v51 = v22 >= (v50 & 0xFFFFFFFFFFFFFFFELL) + v34 + 2) : (v51 = 1), !v51))
    {
      v54 = v22;
      v55 = v34;
      goto LABEL_90;
    }

    v52 = (v50 >> 1) + 1;
    if (v50 >= 0x3E)
    {
      v53 = v52 & 0xFFFFFFFFFFFFFFE0;
      v96 = (v34 + 32);
      v97 = &v22[1];
      v98 = v52 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v99 = *v97[-2].i8;
        v100 = vmovl_u8(*v97);
        v101 = vmovl_high_u8(*v97->i8);
        v96[-2] = vmovl_u8(*v99.i8);
        v96[-1] = vmovl_high_u8(v99);
        *v96 = v100;
        v96[1] = v101;
        v96 += 4;
        v97 += 4;
        v98 -= 32;
      }

      while (v98);
      if (v52 == v53)
      {
        goto LABEL_128;
      }

      if ((v52 & 0x18) == 0)
      {
        v55 = (v34 + 2 * v53);
        v54 = (v22 + v53);
        goto LABEL_90;
      }
    }

    else
    {
      v53 = 0;
    }

    v54 = (v22 + (v52 & 0xFFFFFFFFFFFFFFF8));
    v55 = (v34 + 2 * (v52 & 0xFFFFFFFFFFFFFFF8));
    v102 = (v34 + 2 * v53);
    v103 = &v22->i8[v53];
    v104 = v53 - (v52 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v105 = *v103++;
      *v102++ = vmovl_u8(v105);
      v104 += 8;
    }

    while (v104);
    if (v52 == (v52 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_128;
    }

    do
    {
LABEL_90:
      v56 = v54->u8[0];
      v54 = (v54 + 1);
      *v55++ = v56;
    }

    while (v55 != v33);
    goto LABEL_128;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      *v20 = v22->i16[0];
    }

    else
    {
      memcpy(v16 + 32, v22, 2 * v23);
    }
  }

LABEL_128:
  v32 = *(a2 + 4);
  if (v21 < v32)
  {
    goto LABEL_171;
  }

LABEL_129:
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v107[0] = v8;
  WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(&v20[v32], v21 - v32, " cannot be represented as '", 0x1BuLL, v107, 39);
  v73 = v107[0];
  v107[0] = 0;
  if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v73, v7);
  }

  if (!v8)
  {
    goto LABEL_170;
  }

  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    goto LABEL_122;
  }

LABEL_136:
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
LABEL_137:
    WTF::StringImpl::destroy(v8, v7);
  }

LABEL_138:
  *a1 = v16;
LABEL_176:
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

LABEL_18:
  result = v106;
  v106 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
  }

  if (!v16)
  {
    __break(0xC471u);
    JUMPOUT(0x22586D158);
  }

  return result;
}

void WGSL::TypeChecker::accessMode(WGSL::TypeChecker *this, WGSL::AST::Expression *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = WGSL::TypeChecker::infer(&v14, a2, a3, 3u, 0);
  if (v16)
  {
    if (v16 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    v12 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      *(this + 8) = v15;
      *this = v12;
      *(this + 24) = 1;
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v12, v7);
      }
    }

    else
    {
      *(this + 8) = v15;
      *this = 0;
      *(this + 24) = 1;
    }
  }

  else
  {
    v10 = v14;
    v11 = *(*(a2 + 9) + 112);
    if (v14 != v11 && WGSL::conversionRank(v11, v14, v8) == -1)
    {
      WGSL::Type::Type(v18, v10);
      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v13, "cannot use '", 13, v18, "' as access mode", 17);
      *this = v13;
      *(this + 8) = *(a3 + 8);
      *(this + 24) = 1;
      if (v18[48] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v17, v18);
      }
    }

    else if ((*(*a3 + 16))(a3, v9) == 21)
    {
      *this = *WGSL::parseAccessMode((a3 + 88));
      *(this + 24) = 0;
    }

    else
    {
      __break(0xC471u);
    }
  }
}

unint64_t WTF::Vector<std::unique_ptr<mpark::variant<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>>,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3)
  {
    v6 = *(a1 + 12);
    if (v5 + 8 * v6 > a3)
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

      if (!(v8 >> 29))
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

        v11 = WTF::fastMalloc((8 * v10));
        *(a1 + 8) = v10;
        *a1 = v11;
        memcpy(v11, v5, 8 * v6);
        if ((a1 + 16) != v5 && v5)
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

LABEL_33:
      __break(0xC471u);
      JUMPOUT(0x22586D500);
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

  if (v15 >> 29)
  {
    goto LABEL_33;
  }

  v16 = *(a1 + 12);
  if (v15 <= 0x10)
  {
    v17 = 16;
  }

  else
  {
    v17 = v15;
  }

  v18 = WTF::fastMalloc((8 * v17));
  *(a1 + 8) = v17;
  *a1 = v18;
  memcpy(v18, v5, 8 * v16);
  if ((a1 + 16) == v5 || !v5)
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

uint64_t *mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(uint64_t *result)
{
  v1 = *(result + 24);
  if (v1 == 255)
  {
    v1 = -1;
  }

  if (v1 <= 4)
  {
    if (v1 > 2)
    {
      return result;
    }

    if (v1 == 1)
    {
      v2 = result[2];
      result[2] = 0;
      if (v2)
      {
        goto LABEL_16;
      }

      return result;
    }

    goto LABEL_12;
  }

  if (v1 > 7)
  {
    if ((v1 - 9) < 2)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v1 == 5 || v1 == 6)
  {
LABEL_12:
    v2 = result[1];
    result[1] = 0;
    if (v2)
    {
      goto LABEL_16;
    }

    return result;
  }

LABEL_15:
  v2 = *result;
  *result = 0;
  if (v2)
  {
LABEL_16:
    if (*(v2 + 24) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v2);
    }

    *(v2 + 24) = -1;

    JUMPOUT(0x22AA68560);
  }

  return result;
}

void WGSL::OverloadCandidate::~OverloadCandidate(WGSL::OverloadCandidate *this, void *a2)
{
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    if (*(v3 + 24) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v3);
    }

    *(v3 + 24) = -1;
    MEMORY[0x22AA68560](v3, 0x1062C401A182E57);
  }

  v4 = *(this + 15);
  v5 = *(this + 6);
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      *v5 = 0;
      if (v7)
      {
        if (*(v7 + 24) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v7);
        }

        *(v7 + 24) = -1;
        MEMORY[0x22AA68560](v7, 0x1062C401A182E57);
      }

      v5 = (v5 + 8);
      v6 -= 8;
    }

    while (v6);
    v5 = *(this + 6);
  }

  if ((this + 64) == v5 || v5 == 0)
  {
    v9 = *(this + 3);
    if ((this + 40) != v9 && v9 != 0)
    {
LABEL_29:
      *(this + 3) = 0;
      *(this + 8) = 0;
      WTF::fastFree(v9, a2);
      v11 = *this;
      if ((this + 16) == *this)
      {
        return;
      }

      goto LABEL_30;
    }
  }

  else
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, a2);
    v9 = *(this + 3);
    if ((this + 40) != v9 && v9 != 0)
    {
      goto LABEL_29;
    }
  }

  v11 = *this;
  if ((this + 16) == *this)
  {
    return;
  }

LABEL_30:
  if (v11)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v11, a2);
  }
}

unint64_t WTF::Vector<WGSL::ValueVariable,2ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1 <= a2)
  {
    v5 = *(a1 + 12);
    if (v4 + 4 * v5 > a2)
    {
      v6 = *(a1 + 8);
      if (v6 + (v6 >> 1) <= v6 + 1)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = v6 + (v6 >> 1);
      }

      if (!(v7 >> 30))
      {
        v8 = a2 - v4;
        if (v7 <= 0x10)
        {
          v9 = 16;
        }

        else
        {
          v9 = v7;
        }

        v10 = WTF::fastMalloc((4 * v9));
        *(a1 + 8) = v9;
        *a1 = v10;
        memcpy(v10, v4, 4 * v5);
        if ((a1 + 16) != v4 && v4)
        {
          if (*a1 == v4)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
          }

          WTF::fastFree(v4, v11);
        }

        return *a1 + v8;
      }

LABEL_29:
      __break(0xC471u);
      JUMPOUT(0x22586D8C0);
    }
  }

  v13 = *(a1 + 8);
  if (v13 + (v13 >> 1) <= v13 + 1)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v13 + (v13 >> 1);
  }

  if (v14 >> 30)
  {
    goto LABEL_29;
  }

  v15 = *(a1 + 12);
  if (v14 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v14;
  }

  v17 = WTF::fastMalloc((4 * v16));
  *(a1 + 8) = v16;
  *a1 = v17;
  memcpy(v17, v4, 4 * v15);
  if ((a1 + 16) == v4 || !v4)
  {
    return v2;
  }

  if (*a1 == v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  WTF::fastFree(v4, v18);
  return v2;
}

unint64_t WTF::Vector<WGSL::TypeVariable,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  v7 = *a1 + 8 * v6;
  if (*a1 > a3 || v7 <= a3)
  {
    v9 = *(a1 + 8);
    if (v9 + (v9 >> 1) <= v9 + 1)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9 + (v9 >> 1);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (!(v10 >> 29))
    {
      if (v10 <= 0x10)
      {
        v11 = 16;
      }

      else
      {
        v11 = v10;
      }

      v12 = WTF::fastMalloc((8 * v11));
      *(a1 + 8) = v11;
      *a1 = v12;
      if (!v6)
      {
        goto LABEL_38;
      }

      v14 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v14 < 3)
      {
        v15 = v5;
      }

      else
      {
        v15 = v5;
        if ((v12 - v5) >= 0x20)
        {
          v16 = v14 + 1;
          v17 = v16 & 0x3FFFFFFFFFFFFFFCLL;
          v18 = &v12[v17];
          v15 = (v5 + v17 * 8);
          v19 = (v5 + 16);
          v20 = v12 + 2;
          v21 = v16 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 4;
          }

          while (v21);
          v12 = v18;
          if (v16 == (v16 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_38;
          }
        }
      }

      do
      {
        v37 = *v15;
        v15 = (v15 + 8);
        *v12++ = v37;
      }

      while (v15 != v7);
LABEL_38:
      if ((a1 + 16) != v5 && v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v13);
      }

      return a3;
    }

LABEL_52:
    __break(0xC471u);
    JUMPOUT(0x22586DB18);
  }

  v23 = *(a1 + 8);
  if (v23 + (v23 >> 1) <= v23 + 1)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v23 + (v23 >> 1);
  }

  if (v24 <= a2)
  {
    v24 = a2;
  }

  if (v24 >> 29)
  {
    goto LABEL_52;
  }

  if (v24 <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = v24;
  }

  v26 = WTF::fastMalloc((8 * v25));
  *(a1 + 8) = v25;
  *a1 = v26;
  v28 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v28 < 3)
  {
    v29 = v5;
  }

  else
  {
    v29 = v5;
    if ((v26 - v5) >= 0x20)
    {
      v30 = v28 + 1;
      v31 = v30 & 0x3FFFFFFFFFFFFFFCLL;
      v32 = &v26[v31];
      v29 = (v5 + v31 * 8);
      v33 = (v5 + 16);
      v34 = v26 + 2;
      v35 = v30 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      v26 = v32;
      if (v30 == (v30 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_46;
      }
    }
  }

  do
  {
    v39 = *v29;
    v29 = (v29 + 8);
    *v26++ = v39;
  }

  while (v29 != v7);
LABEL_46:
  v40 = a3 - v5;
  if ((a1 + 16) != v5 && v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v27);
  }

  return *a1 + v40;
}

void WGSL::constantBitwiseShiftLeft(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue>(mpark *a1, int *a2, unsigned int a3, char a4)
{
  if (a4 != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = *(a2 + 16);
  if (v5 != 5)
  {
    if (v5 == 4)
    {
      if (a3 >= 0x20)
      {
        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(v14, "shift left value must be less than the bit width of the shifted value, which is ", 0x50uLL, 0x20uLL);
        v6 = v14[0];
        if (!v14[0])
        {
          __break(0xC471u);
          goto LABEL_31;
        }

        goto LABEL_25;
      }

      v7 = *a2;
      if (!(v7 >> (32 - a3)))
      {
        v8 = v7 << a3;
        LODWORD(v14[0]) = v8;
        v9 = 4;
LABEL_27:
        v15 = v9;
        *a1 = v8;
        goto LABEL_28;
      }
    }

    else
    {
      if (v5 != 3)
      {
        __break(0xC471u);
LABEL_31:
        JUMPOUT(0x22586DB88);
      }

      if (a3 >= 0x20)
      {
        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(v14, "shift left value must be less than the bit width of the shifted value, which is ", 0x50uLL, 0x20uLL);
        v6 = v14[0];
        if (!v14[0])
        {
          __break(0xC471u);
          JUMPOUT(0x22586DBF0);
        }

        goto LABEL_25;
      }

      v12 = *a2;
      v13 = -1 << (31 - a3);
      if (v13 <= v12 || (v13 & v12) == 0)
      {
        v8 = v12 << a3;
        LODWORD(v14[0]) = v8;
        v9 = 3;
        goto LABEL_27;
      }
    }

LABEL_24:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v14[0];
LABEL_25:
    *a1 = v6;
    *(a1 + 24) = 1;
    return;
  }

  if (a3 >= 0x40)
  {
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(v14, "shift left value must be less than the bit width of the shifted value, which is ", 0x50uLL, 0x40uLL);
    v6 = v14[0];
    if (!v14[0])
    {
      __break(0xC471u);
      JUMPOUT(0x22586DBB8);
    }

    goto LABEL_25;
  }

  v10 = -1 << -(a3 + 1);
  if (v10 > *a2 && (*a2 & v10) != 0)
  {
    goto LABEL_24;
  }

  v14[0] = *a2 << a3;
  v9 = 5;
  v15 = 5;
  *a1 = v14[0];
LABEL_28:
  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v16, v14);
}

void WGSL::constantBitwiseShiftRight(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue>(mpark *a1, uint64_t a2, unsigned int a3, char a4)
{
  if (a4 != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = *(a2 + 16);
  if (v5 == 5)
  {
    if (a3 >= 0x40)
    {
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(v9, "shift right value must be less than the bit width of the shifted value, which is ", 0x51uLL, 0x40uLL);
      v6 = v9[0];
      if (!v9[0])
      {
        __break(0xC471u);
        JUMPOUT(0x22586DDA4);
      }

LABEL_13:
      *a1 = v6;
      *(a1 + 24) = 1;
      return;
    }

    v9[0] = *a2 >> a3;
    v8 = 5;
    v10 = 5;
    *a1 = v9[0];
  }

  else
  {
    if (v5 == 4)
    {
      if (a3 >= 0x20)
      {
        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(v9, "shift right value must be less than the bit width of the shifted value, which is ", 0x51uLL, 0x20uLL);
        v6 = v9[0];
        if (!v9[0])
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      v7 = *a2 >> a3;
      LODWORD(v9[0]) = v7;
      v8 = 4;
    }

    else
    {
      if (v5 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x22586DE80);
      }

      if (a3 >= 0x20)
      {
        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(v9, "shift right value must be less than the bit width of the shifted value, which is ", 0x51uLL, 0x20uLL);
        v6 = v9[0];
        if (!v9[0])
        {
LABEL_21:
          __break(0xC471u);
          JUMPOUT(0x22586DD74);
        }

        goto LABEL_13;
      }

      v7 = *a2 >> a3;
      LODWORD(v9[0]) = v7;
      v8 = 3;
    }

    v10 = v8;
    *a1 = v7;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v11, v9);
}

void WGSL::constantVector(WGSL *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v7 = a4;
  v8 = 24 * a4;
  v9 = WTF::fastMalloc((v8 + 8));
  *v9 = a4;
  v10 = v9 + 2;
  bzero(v9 + 2, 24 * ((v8 - 24) / 0x18uLL) + 24);
  v12 = *a3;
  if (!*a3)
  {
LABEL_4:
    WGSL::zeroValue(a1, a2);
    v15 = *v9;
    if (v15)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  v13 = *v12;
  if (*v12 == 1)
  {
    if (*(a2 + 48) != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v16 = *a2;
    if (*(v12 + 24) == 8)
    {
      v17 = *(v12 + 1);
      if (v17)
      {
        v18 = v17 + 2;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = &v17[6 * *v17 + 2];
        if (v18 == v19)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v19 = 0;
        if (!v18)
        {
LABEL_89:
          *a1 = v9;
          *(a1 + 16) = 8;
          return;
        }
      }

      v46 = 0;
      while (1)
      {
        LOBYTE(v57[0]) = 0;
        v58 = -1;
        v47 = *(v18 + 16);
        if (v47 == 255)
        {
          LOBYTE(v53[0]) = 0;
          v48 = -1;
        }

        else
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v47, v55, v57, v18);
          v58 = *(v18 + 16);
          LOBYTE(v53[0]) = 0;
          v54 = -1;
          if (v58 == 255)
          {
            goto LABEL_77;
          }

          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v58, &v59, v53, v57);
          v48 = v58;
        }

        v54 = v48;
LABEL_77:
        WGSL::convertValue<WGSL::StaticCast>(v55, v16, v53);
        if (*v9 <= v46)
        {
          __break(0xC471u);
LABEL_96:
          JUMPOUT(0x22586E47CLL);
        }

        v49 = &v10[6 * v46];
        if (*(v49 + 16) == 255)
        {
          if (v56 == 255)
          {
            goto LABEL_85;
          }
        }

        else if (v56 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v59, &v10[6 * v46]);
          LOBYTE(v10[6 * v46 + 4]) = -1;
          if (v56 == 255)
          {
            goto LABEL_85;
          }

LABEL_84:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v59, v55);
          goto LABEL_85;
        }

        v59 = &v10[6 * v46];
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v56, &v59, v49, v55);
        if (v56 != 255)
        {
          goto LABEL_84;
        }

LABEL_85:
        v56 = -1;
        if (v54 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v59, v53);
        }

        v54 = -1;
        if (v58 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v55, v57);
        }

        v18 += 6;
        ++v46;
        if (v18 == v19)
        {
          goto LABEL_89;
        }
      }
    }

    v42 = 0;
    v43 = v9 + 6;
    while (1)
    {
      v44 = *a3;
      if (!**a3)
      {
        __break(0xC471u);
        JUMPOUT(0x22586E4BCLL);
      }

      LOBYTE(v51[0]) = 0;
      v52 = -1;
      v45 = *(v44 + 24);
      if (v45 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v45, v57, v51, v44 + 1);
        v52 = *(v44 + 24);
      }

      WGSL::convertValue<WGSL::StaticCast>(v57, v16, v51);
      if (v42 >= *v9)
      {
        __break(0xC471u);
        JUMPOUT(0x22586E4DCLL);
      }

      if (*v43 == 255)
      {
        if (v58 == 255)
        {
          goto LABEL_67;
        }
      }

      else if (v58 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v55, v43 - 16);
        *v43 = -1;
        if (v58 == 255)
        {
          goto LABEL_67;
        }

LABEL_66:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v55, v57);
        goto LABEL_67;
      }

      v55[0] = v43 - 16;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v58, v55, v43 - 2, v57);
      if (v58 != 255)
      {
        goto LABEL_66;
      }

LABEL_67:
      v58 = -1;
      if (v52 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v55, v51);
      }

      v52 = -1;
      ++v42;
      v43 += 24;
      if (v7 == v42)
      {
        goto LABEL_89;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v21 = (v12 + 2);
  v22 = &v12[6 * v13 + 2];
  do
  {
    v23 = *(v21 + 16);
    if (v23 == 8)
    {
      v24 = *v21;
      if (*v21)
      {
        v25 = (*v21 + 2);
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = &(*v21)[6 * *v24 + 2];
      }

      else
      {
        v26 = 0;
      }

      for (i = v20; ; i = (i + 1))
      {
        if (v25 == v26)
        {
          goto LABEL_16;
        }

        LOBYTE(v57[0]) = 0;
        v30 = 255;
        v58 = -1;
        v31 = *(v25 + 16);
        if (v31 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v31, v55, v57, v25);
          v30 = *(v25 + 16);
          v58 = *(v25 + 16);
        }

        if (*v9 <= i)
        {
          __break(0xC471u);
          goto LABEL_96;
        }

        v32 = &v10[6 * i];
        if (*(v32 + 16) == 255)
        {
          break;
        }

        if (v30 != 255)
        {
          goto LABEL_39;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v55, &v10[6 * i]);
        LOBYTE(v10[6 * i + 4]) = -1;
        if (v58 != 255)
        {
          goto LABEL_40;
        }

LABEL_29:
        v25 += 24;
      }

      if (v30 == 255)
      {
        goto LABEL_29;
      }

LABEL_39:
      v55[0] = &v10[6 * i];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v30, v55, v32, v57);
      if (v58 == 255)
      {
        goto LABEL_29;
      }

LABEL_40:
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v55, v57);
      goto LABEL_29;
    }

    if (*v9 <= v20)
    {
      __break(0xC471u);
      JUMPOUT(0x22586E49CLL);
    }

    i = (v20 + 1);
    v28 = &v10[6 * v20];
    if (*(v28 + 16) == 255)
    {
      if (v23 != 255)
      {
LABEL_15:
        v57[0] = &v10[6 * v20];
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v23, v57, v28, v21);
      }
    }

    else
    {
      if (v23 != 255)
      {
        goto LABEL_15;
      }

      v29 = &v10[6 * v20];
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v28);
      *(v29 + 16) = -1;
    }

LABEL_16:
    v21 += 3;
    v20 = i;
  }

  while (v21 != v22);
  v33 = *v9;
  v34 = 24 * v33;
  v35 = WTF::fastMalloc((24 * v33 + 8));
  v36 = v35;
  *v35 = v33;
  if (v33)
  {
    v37 = (v35 + 6);
    v38 = (v9 + 6);
    do
    {
      *(v37 - 16) = 0;
      *v37 = -1;
      v39 = *v38;
      if (v39 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v39, v57, v37 - 2, v38 - 2);
        *v37 = *v38;
      }

      v37 += 3;
      v38 += 3;
      v34 -= 24;
    }

    while (v34);
  }

  *a1 = v36;
  *(a1 + 16) = 8;
  v15 = *v9;
  if (v15)
  {
LABEL_49:
    v40 = 24 * v15;
    v41 = v9 + 6;
    do
    {
      v14 = v41 - 16;
      if (*v41 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v14);
      }

      *v41 = -1;
      v41 += 24;
      v40 -= 24;
    }

    while (v40);
  }

LABEL_53:
  WTF::fastFree(v9, v14);
}

void WGSL::convertValue<WGSL::StaticCast>(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a2[48])
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = *a2;
  if (v5 <= 2)
  {
    if (*a2)
    {
      if (v5 == 1)
      {
        LOBYTE(v42[0]) = 0;
        v43 = -1;
        v9 = *(a3 + 16);
        if (v9 == 255)
        {
          goto LABEL_143;
        }

        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v46, v42, a3);
        v43 = *(a3 + 16);
        if (v43 <= 2u)
        {
          if (v43)
          {
            if (v43 == 1)
            {
              v21 = *v42;
            }

            else
            {
              if (v43 != 2)
              {
                goto LABEL_143;
              }

              v21 = *v42;
            }
          }

          else
          {
            v21 = *v42;
          }
        }

        else
        {
          if (v43 <= 4u)
          {
            if (v43 != 3 && v43 != 4)
            {
LABEL_143:
              __break(0xC471u);
              JUMPOUT(0x22586EBD8);
            }

            goto LABEL_73;
          }

          if (v43 == 5)
          {
LABEL_73:
            v21 = v42[0];
            goto LABEL_106;
          }

          if (v43 != 6)
          {
            goto LABEL_143;
          }

          v21 = LOBYTE(v42[0]);
        }

LABEL_106:
        *a1 = v21;
        a1[16] = 3;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v42);
        return;
      }

      if (v5 != 2)
      {
        goto LABEL_141;
      }

      LOBYTE(v40[0]) = 0;
      v41 = -1;
      v15 = *(a3 + 16);
      if (v15 == 255)
      {
LABEL_146:
        __break(0xC471u);
        JUMPOUT(0x22586EC38);
      }

      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v15, &v46, v40, a3);
      v41 = *(a3 + 16);
      if (v41 <= 2u)
      {
        if (v41)
        {
          if (v41 == 1)
          {
            v27 = *v40;
          }

          else
          {
            if (v41 != 2)
            {
              goto LABEL_146;
            }

            v27 = *v40;
          }
        }

        else
        {
          v27 = *v40;
        }
      }

      else
      {
        if (v41 <= 4u)
        {
          if (v41 != 3 && v41 != 4)
          {
            goto LABEL_146;
          }

          goto LABEL_79;
        }

        if (v41 == 5)
        {
LABEL_79:
          v27 = v40[0];
          goto LABEL_131;
        }

        if (v41 != 6)
        {
          goto LABEL_146;
        }

        v27 = LOBYTE(v40[0]);
      }

LABEL_131:
      *a1 = v27;
      a1[16] = 4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v40);
      return;
    }

    LOBYTE(v44[0]) = 0;
    v45 = -1;
    v13 = *(a3 + 16);
    if (v13 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v13, &v46, v44, a3);
      v45 = *(a3 + 16);
      if (v45 <= 2u)
      {
        switch(v45)
        {
          case 0u:
            v14 = *v44;
            goto LABEL_94;
          case 1u:
            v14 = *v44;
            goto LABEL_94;
          case 2u:
            v14 = *v44;
            goto LABEL_94;
        }
      }

      else if (v45 > 4u)
      {
        if (v45 == 5)
        {
          v14 = v44[0];
          goto LABEL_94;
        }

        if (v45 == 6)
        {
          v14 = LOBYTE(v44[0]);
          goto LABEL_94;
        }
      }

      else
      {
        if (v45 == 3)
        {
          v14 = SLODWORD(v44[0]);
LABEL_94:
          *a1 = v14;
          a1[16] = 5;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
          return;
        }

        if (v45 == 4)
        {
          v14 = LODWORD(v44[0]);
          goto LABEL_94;
        }
      }
    }

    __break(0xC471u);
    JUMPOUT(0x22586EBB8);
  }

  if (*a2 > 4u)
  {
    if (v5 == 5)
    {
      LOBYTE(v36[0]) = 0;
      v37 = -1;
      v10 = *(a3 + 16);
      if (v10 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v46, v36, a3);
        v37 = *(a3 + 16);
        if (v37 <= 2u)
        {
          switch(v37)
          {
            case 0u:
              _S0 = *v36;
              goto LABEL_118;
            case 1u:
              _H0 = v36[0];
              __asm { FCVT            S0, H0 }

              goto LABEL_118;
            case 2u:
              _S0 = *v36;
              goto LABEL_118;
          }
        }

        else if (v37 > 4u)
        {
          if (v37 == 5)
          {
            _S0 = v36[0];
            goto LABEL_118;
          }

          if (v37 == 6)
          {
            LOBYTE(v11) = v36[0];
            goto LABEL_117;
          }
        }

        else
        {
          if (v37 == 3)
          {
            _S0 = SLODWORD(v36[0]);
LABEL_118:
            *a1 = _S0;
            a1[16] = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v36);
            return;
          }

          if (v37 == 4)
          {
            v11 = v36[0];
LABEL_117:
            _S0 = v11;
            goto LABEL_118;
          }
        }
      }

      __break(0xC471u);
      JUMPOUT(0x22586EC18);
    }

    if (v5 == 7)
    {
      LOBYTE(v32[0]) = 0;
      v33 = -1;
      v19 = *(a3 + 16);
      if (v19 == 255)
      {
        goto LABEL_148;
      }

      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v19, &v46, v32, a3);
      v33 = *(a3 + 16);
      if (v33 <= 2u)
      {
        if (v33)
        {
          if (v33 == 1)
          {
            __asm { FCMP            H0, #0 }
          }

          else
          {
            if (v33 != 2)
            {
              goto LABEL_148;
            }

            _ZF = *v32 == 0.0;
          }
        }

        else
        {
          _ZF = *v32 == 0.0;
        }
      }

      else
      {
        if (v33 <= 4u)
        {
          if (v33 == 3 || v33 == 4)
          {
            _ZF = LODWORD(v32[0]) == 0;
            goto LABEL_125;
          }

LABEL_148:
          __break(0xC471u);
LABEL_149:
          JUMPOUT(0x22586EB98);
        }

        if (v33 != 5)
        {
          if (v33 == 6)
          {
            v31 = v32[0];
LABEL_128:
            *a1 = v31;
            a1[16] = 6;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v32);
            return;
          }

          goto LABEL_148;
        }

        _ZF = v32[0] == 0;
      }

LABEL_125:
      v31 = !_ZF;
      goto LABEL_128;
    }

LABEL_141:
    __break(0xC471u);
    goto LABEL_149;
  }

  if (v5 == 3)
  {
    LOBYTE(v38[0]) = 0;
    v39 = -1;
    v6 = *(a3 + 16);
    if (v6 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, &v46, v38, a3);
      v39 = *(a3 + 16);
      if (v39 <= 2u)
      {
        switch(v39)
        {
          case 0u:
            _D0 = *v38;
            goto LABEL_114;
          case 1u:
            _H0 = v38[0];
            __asm { FCVT            D0, H0 }

            goto LABEL_114;
          case 2u:
            _D0 = *v38;
            goto LABEL_114;
        }
      }

      else if (v39 > 4u)
      {
        if (v39 == 5)
        {
          _D0 = v38[0];
          goto LABEL_114;
        }

        if (v39 == 6)
        {
          LOBYTE(v7) = v38[0];
          goto LABEL_113;
        }
      }

      else
      {
        if (v39 == 3)
        {
          _D0 = SLODWORD(v38[0]);
LABEL_114:
          *a1 = _D0;
          a1[16] = 2;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v38);
          return;
        }

        if (v39 == 4)
        {
          LODWORD(v7) = v38[0];
LABEL_113:
          _D0 = v7;
          goto LABEL_114;
        }
      }
    }

    __break(0xC471u);
    JUMPOUT(0x22586EBF8);
  }

  if (v5 != 4)
  {
    goto LABEL_141;
  }

  LOBYTE(v34[0]) = 0;
  v35 = -1;
  v16 = *(a3 + 16);
  if (v16 == 255)
  {
    goto LABEL_147;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v16, &v46, v34, a3);
  v35 = *(a3 + 16);
  if (v35 > 2u)
  {
    if (v35 > 4u)
    {
      if (v35 == 5)
      {
        _S0 = v34[0];
        goto LABEL_134;
      }

      if (v35 == 6)
      {
        LOBYTE(v17) = v34[0];
        _H0 = v17;
        goto LABEL_135;
      }
    }

    else
    {
      if (v35 == 3)
      {
        _S0 = SLODWORD(v34[0]);
LABEL_134:
        __asm { FCVT            H0, S0 }

        goto LABEL_135;
      }

      if (v35 == 4)
      {
        _S0 = LODWORD(v34[0]);
        goto LABEL_134;
      }
    }

LABEL_147:
    __break(0xC471u);
    JUMPOUT(0x22586EC58);
  }

  switch(v35)
  {
    case 0u:
      _S0 = *v34;
      goto LABEL_134;
    case 1u:
      _H0 = *v34;
      break;
    case 2u:
      _D0 = v34[0];
      __asm { FCVT            H0, D0 }

      break;
    default:
      goto LABEL_147;
  }

LABEL_135:
  *a1 = _H0;
  a1[16] = 1;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v34);
}

void WGSL::constantMatrix(uint64_t a1, uint64_t a2, unsigned int **a3, unsigned int a4, uint64_t a5)
{
  v5 = *a3;
  if (*a3)
  {
    v6 = *v5;
    if (v6 != 1)
    {
      if (!v6)
      {
        goto LABEL_4;
      }

      v16 = (a5 * a4);
      if (v6 == v16)
      {
        v18 = a1;
        v19 = a5 << 32;
        v20 = 24 * v6;
        v21 = WTF::fastMalloc((24 * v6 + 8));
        *v21 = v6;
        v22 = (v21 + 6);
        v23 = (v5 + 6);
        do
        {
          *(v22 - 16) = 0;
          *v22 = -1;
          v24 = *v23;
          if (v24 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v24, v46, v22 - 2, v23 - 2);
            *v22 = *v23;
          }

          v22 += 3;
          v23 += 3;
          v20 -= 24;
        }

        while (v20);
        v35 = *a3;
        if (*a3)
        {
          v35 = *v35;
        }

        if (v35 != v16)
        {
LABEL_66:
          __break(0xC471u);
          JUMPOUT(0x22586F0DCLL);
        }

        *v18 = v19 | a4;
        v18[1] = v21;
        goto LABEL_61;
      }

      *(&v40 + 1) = a5;
      v43 = a1;
      DWORD1(v40) = a4;
      if (v6 != a4)
      {
        __break(0xC471u);
        JUMPOUT(0x22586F11CLL);
      }

      v25 = WTF::fastMalloc((24 * v16 + 8));
      *v25 = v16;
      v26 = v25 + 2;
      bzero(v25 + 2, 24 * ((24 * v16 - 24) / 0x18uLL) + 24);
      v27 = *a3;
      if (!*a3 || !*v27)
      {
LABEL_44:
        *v43 = v40 >> 32;
        *(v43 + 8) = v25;
        *(v43 + 16) = 9;
        return;
      }

      v28 = 0;
      v29 = &v27[6 * *v27 + 2];
      v30 = (v27 + 2);
LABEL_25:
      if (*(v30 + 16) != 8)
      {
        goto LABEL_62;
      }

      v31 = *v30;
      if (*v30)
      {
        v32 = (*v30 + 2);
      }

      else
      {
        v32 = 0;
      }

      if (v31)
      {
        v33 = &(*v30)[6 * *v31 + 2];
      }

      else
      {
        v33 = 0;
      }

      while (1)
      {
        if (v32 == v33)
        {
          v30 += 3;
          if (v30 == v29)
          {
            goto LABEL_44;
          }

          goto LABEL_25;
        }

        if (*v25 <= v28)
        {
          goto LABEL_66;
        }

        v34 = &v26[6 * v28];
        a1 = *(v32 + 16);
        if (*(v34 + 16) == 255)
        {
          break;
        }

        if (a1 != 255)
        {
          goto LABEL_33;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, &v26[6 * v28]);
        LOBYTE(v26[6 * v28 + 4]) = -1;
LABEL_34:
        v32 += 24;
        ++v28;
      }

      if (a1 == 255)
      {
        goto LABEL_34;
      }

LABEL_33:
      v46[0] = &v26[6 * v28];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(a1, v46, v34, v32);
      goto LABEL_34;
    }

    if (*(a2 + 48) != 2 || *(v5 + 24) != 9)
    {
LABEL_62:
      mpark::throw_bad_variant_access(a1);
    }

    v42 = a1;
    v7 = *a2;
    v9 = a5 * a4;
    v10 = WTF::fastMalloc((24 * a5 * a4 + 8));
    *v10 = v9;
    v11 = v10 + 2;
    bzero(v10 + 2, 24 * ((24 * v9 - 24) / 0x18) + 24);
    v12 = *(v5 + 2);
    if (v12)
    {
      v13 = v12 + 2;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = &v12[6 * *v12 + 2];
      if (v13 == v14)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v14 = 0;
      if (!v13)
      {
LABEL_60:
        v39 = a4;
        v18 = v42;
        *v42 = v39 | (a5 << 32);
        v42[1] = v10;
LABEL_61:
        *(v18 + 16) = 9;
        return;
      }
    }

    v36 = 0;
    while (1)
    {
      LOBYTE(v44[0]) = 0;
      v45 = -1;
      v37 = *(v13 + 16);
      if (v37 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v37, v46, v44, v13);
        v45 = *(v13 + 16);
      }

      WGSL::convertValue<WGSL::StaticCast>(v46, v7, v44);
      if (*v10 <= v36)
      {
        __break(0xC471u);
        JUMPOUT(0x22586F0FCLL);
      }

      v38 = &v11[6 * v36];
      if (*(v38 + 16) == 255)
      {
        if (v47 == 255)
        {
          goto LABEL_58;
        }
      }

      else if (v47 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, &v11[6 * v36]);
        LOBYTE(v11[6 * v36 + 4]) = -1;
        if (v47 == 255)
        {
          goto LABEL_58;
        }

LABEL_57:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, v46);
        goto LABEL_58;
      }

      v48 = &v11[6 * v36];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v47, &v48, v38, v46);
      if (v47 != 255)
      {
        goto LABEL_57;
      }

LABEL_58:
      v47 = -1;
      if (v45 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, v44);
      }

      v45 = -1;
      v13 += 6;
      ++v36;
      if (v13 == v14)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_4:

  WGSL::zeroValue(a1, a2);
}

uint64_t *WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if (a3 <= 1)
  {
    v6 = a3 & 1;
    v7 = 1;
    goto LABEL_5;
  }

  v8 = __clz(a3 - 1);
  if (!v8)
  {
    __break(1u);
LABEL_63:
    __break(0xC471u);
    JUMPOUT(0x22586F4BCLL);
  }

  v7 = (1 << -v8);
  v6 = a3;
  if (a3 <= 0x400)
  {
LABEL_5:
    if (3 * v7 > 4 * v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v7 <= 2 * a3)
  {
LABEL_6:
    LODWORD(v7) = 2 * v7;
  }

LABEL_7:
  v9 = a3;
  v10 = v7;
  if (v7 > 0x400)
  {
    if (v10 * 0.416666667 > v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v10 * 0.604166667 <= v9)
  {
LABEL_11:
    LODWORD(v7) = 2 * v7;
  }

LABEL_12:
  if (v7 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v7;
  }

  v12 = WTF::fastMalloc(((32 * v11) | 0x10));
  bzero((v12 + 16), 32 * v11);
  *a1 = v12 + 16;
  *(v12 + 8) = v11 - 1;
  *(v12 + 12) = v11;
  *v12 = 0;
  if (a3)
  {
    v15 = a2 + 32 * a3;
    do
    {
      if (*a2 == -1 || !*a2)
      {
        goto LABEL_63;
      }

      v17 = *a1;
      if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, 0), (v17 = *a1) != 0))
      {
        v18 = *(v17 - 8);
        v19 = *a2;
        v20 = *(*a2 + 16);
        if (v20 < 0x100)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = 0;
        v19 = *a2;
        v20 = *(*a2 + 16);
        if (v20 < 0x100)
        {
LABEL_27:
          v21 = WTF::StringImpl::hashSlowCase(v19);
          goto LABEL_28;
        }
      }

      v21 = v20 >> 8;
LABEL_28:
      v22 = 0;
      for (i = 1; ; ++i)
      {
        v24 = v21 & v18;
        v25 = v17 + 32 * v24;
        v26 = *v25;
        if (*v25 == -1)
        {
          v22 = (v17 + 32 * v24);
          goto LABEL_30;
        }

        if (!v26)
        {
          break;
        }

        if (WTF::equal(v26, *a2, v14))
        {
          goto LABEL_19;
        }

LABEL_30:
        v21 = i + v24;
      }

      if (v22)
      {
        v26 = 0;
        *v22 = 0u;
        v22[1] = 0u;
        --*(*a1 - 16);
        v25 = v22;
      }

      v27 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
        v26 = *v25;
      }

      *v25 = v27;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v13);
      }

      LOBYTE(v36[0]) = 0;
      v28 = 255;
      v37 = -1;
      v29 = *(a2 + 24);
      if (v29 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, &v38, v36, (a2 + 8));
        v28 = *(a2 + 24);
        v37 = *(a2 + 24);
      }

      v14 = (v25 + 8);
      if (*(v25 + 24) == 255)
      {
        if (v28 != 255)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v28 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, (v25 + 8));
          *(v25 + 24) = -1;
          goto LABEL_49;
        }

LABEL_48:
        v38 = (v25 + 8);
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v28, &v38, v14, v36);
      }

LABEL_49:
      if (v37 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v36);
      }

      v30 = *a1;
      if (*a1)
      {
        v31 = *(v30 - 16);
        v32 = *(v30 - 12) + 1;
        *(v30 - 12) = v32;
        v33 = (v31 + v32);
        v34 = *(v30 - 4);
        if (v34 <= 0x400)
        {
          goto LABEL_53;
        }

LABEL_57:
        if (v34 > 2 * v33)
        {
          goto LABEL_19;
        }

LABEL_17:
        v16 = v34 << (6 * v32 >= (2 * v34));
        goto LABEL_18;
      }

      v32 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v33 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v34 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
      {
        goto LABEL_57;
      }

LABEL_53:
      if (3 * v34 <= 4 * v33)
      {
        if (v34)
        {
          goto LABEL_17;
        }

        v16 = 8;
LABEL_18:
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v16, v25);
      }

LABEL_19:
      a2 += 32;
    }

    while (a2 != v15);
  }

  return a1;
}

void WGSL::constantFrexp(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue>(uint64_t a1, __int16 *a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3 == 2)
    {
      v12 = *a2;
      __e = 0;
      v21[0] = frexp(v12, &__e);
      v22 = 2;
      v13 = __e;
      v19[0] = __e;
      v20 = 5;
      *a1 = v21[0];
      *(a1 + 16) = 2;
      *(a1 + 24) = v13;
      *(a1 + 40) = 5;
      p_e = &v24;
LABEL_9:
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(p_e, v19);
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v19, v21);
      return;
    }

    if (v3 == 1)
    {
      _H0 = *a2;
      __asm { FCVT            S0, H0; float }

      _S0 = frexpf(_S0, &v18);
      v11 = v18;
      __asm { FCVT            H0, S0 }

      LOWORD(v21[0]) = LOWORD(_S0);
      v22 = 1;
      LODWORD(v19[0]) = v18;
      v20 = 3;
      *a1 = LOWORD(_S0);
      *(a1 + 16) = 1;
      *(a1 + 24) = v11;
      *(a1 + 40) = 3;
LABEL_8:
      p_e = &__e;
      goto LABEL_9;
    }

    if (!*(a2 + 16))
    {
      v15 = frexpf(*a2, &v17);
      v16 = v17;
      *v21 = v15;
      v22 = 0;
      LODWORD(v19[0]) = v17;
      v20 = 3;
      *a1 = v15;
      *(a1 + 16) = 0;
      *(a1 + 24) = v16;
      *(a1 + 40) = 3;
      goto LABEL_8;
    }
  }

  __break(0xC471u);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4WGSL13ConstantValueES4_EEC2B8sn200100IJLm0ELm1EEJS4_S4_EJEJEJRNS3_14ConstantVectorES8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(uint64_t a1, unsigned int *a2, unsigned int **a3)
{
  if (a2)
  {
    v6 = *a2;
    v7 = 24 * v6;
    v8 = WTF::fastMalloc((24 * v6 + 8));
    v9 = v8;
    *v8 = v6;
    if (v6)
    {
      v10 = (v8 + 6);
      v11 = (a2 + 6);
      do
      {
        *(v10 - 16) = 0;
        *v10 = -1;
        v12 = *v11;
        if (v12 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v12, &v22, v10 - 2, v11 - 2);
          *v10 = *v11;
        }

        v10 += 3;
        v11 += 3;
        v7 -= 24;
      }

      while (v7);
    }
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  *(a1 + 16) = 8;
  v13 = *a3;
  if (*a3)
  {
    v14 = *v13;
    v15 = 24 * v14;
    v16 = WTF::fastMalloc((24 * v14 + 8));
    v17 = v16;
    *v16 = v14;
    if (v14)
    {
      v18 = (v16 + 6);
      v19 = (v13 + 6);
      do
      {
        *(v18 - 16) = 0;
        *v18 = -1;
        v20 = *v19;
        if (v20 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v20, &v23, v18 - 2, v19 - 2);
          *v18 = *v19;
        }

        v18 += 3;
        v19 += 3;
        v15 -= 24;
      }

      while (v15);
    }
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 24) = v17;
  *(a1 + 40) = 8;
  return a1;
}

mpark *WGSL::constantInsertBits(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue,WGSL::ConstantValue,WGSL::ConstantValue>(mpark *result, uint64_t a2, uint64_t a3, unsigned int a4, char a5, unsigned int a6, char a7)
{
  if (a5 != 4)
  {
    goto LABEL_22;
  }

  v7 = a4 >= 0x20 ? 32 : a4;
  if (a7 != 4)
  {
    goto LABEL_22;
  }

  v8 = 32 - v7;
  if (32 - v7 >= a6)
  {
    v8 = a6;
  }

  if (v8 == 32)
  {
    a2 = a3;
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_15:

    return mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(result, a2);
  }

  if (a2)
  {
    v9 = *(a2 + 16);
    if (v9 == 3)
    {
      if (*(a3 + 16) == 3)
      {
        *result = ((*a3 & ~(-1 << v8)) << v7) | *a2 & ~(~(-1 << v8) << v7);
        *(result + 16) = 3;
        return result;
      }

LABEL_22:
      mpark::throw_bad_variant_access(result);
    }
  }

  else
  {
    v9 = MEMORY[0x10];
  }

  if (v9 != 4 || *(a3 + 16) != 4)
  {
    goto LABEL_22;
  }

  *result = ((*a3 & ~(-1 << v8)) << v7) | *a2 & ~(~(-1 << v8) << v7);
  *(result + 16) = 4;
  return result;
}

void *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(void *result, _BYTE *a2, size_t a3, void *a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v7 = -a4;
    v4 = 1;
    do
    {
      ++v4;
      v8 = v7 >= 0xA;
      v7 /= 0xAu;
    }

    while (v8);
  }

  else
  {
    v4 = 0;
    v5 = a4;
    do
    {
      ++v4;
      v6 = v5 > 9;
      v5 /= 0xAu;
    }

    while (v6);
  }

  if (((v4 | a3) & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v9 = (a3 + v4);
  if (__OFADD__(a3, v4))
  {
    goto LABEL_10;
  }

  if (!v9)
  {
    v10 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_22;
  }

  if ((v9 & 0x80000000) != 0)
  {
LABEL_10:
    v10 = 0;
LABEL_22:
    *result = v10;
    return result;
  }

  v14 = result;
  WTF::tryFastCompactMalloc((v9 + 20));
  v10 = v17;
  if (!v17)
  {
LABEL_21:
    result = v14;
    goto LABEL_22;
  }

  v15 = (v17 + 20);
  *v17 = 2;
  *(v17 + 4) = v9;
  *(v17 + 8) = v17 + 20;
  *(v17 + 16) = 4;
  result = a4;
  v16 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      *v15 = *a2;
    }

    else
    {
      memcpy((v17 + 20), a2, a3);
      v16 = a3;
      result = a4;
    }
  }

  if (v9 >= v16)
  {
    WTF::writeIntegerToBuffer<unsigned char,int>(result, &v15[v16], v9 - v16);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void WGSL::constantModf(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue>(uint64_t a1, __int16 *a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3 == 2)
    {
      v13 = *a2;
      __y = 0.0;
      v19[0] = modf(v13, &__y);
      v11 = 2;
      v20 = 2;
      *v17 = __y;
      v14 = __y;
      v18 = 2;
      *a1 = v19[0];
      *(a1 + 16) = 2;
      *(a1 + 24) = v14;
      goto LABEL_6;
    }

    if (v3 == 1)
    {
      _H0 = *a2;
      LODWORD(__y) = 0;
      __asm { FCVT            S0, H0; float }

      _S0 = modff(_S0, &__y);
      __asm { FCVT            H0, S0 }

      LOWORD(v19[0]) = LOWORD(_S0);
      v11 = 1;
      v20 = 1;
      _S1 = LODWORD(__y);
      __asm { FCVT            H1, S1 }

      LOWORD(v17[0]) = _S1;
      v18 = 1;
      *a1 = LOWORD(_S0);
      *(a1 + 16) = 1;
      *(a1 + 24) = _S1;
LABEL_6:
      *(a1 + 40) = v11;
LABEL_9:
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v22, v17);
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v17, v19);
      return;
    }

    if (!*(a2 + 16))
    {
      v15 = *a2;
      LODWORD(__y) = 0;
      LODWORD(v19[0]) = modff(v15, &__y);
      v20 = 0;
      LODWORD(v17[0]) = LODWORD(__y);
      v16 = LODWORD(__y);
      v18 = 0;
      *a1 = LODWORD(v19[0]);
      *(a1 + 16) = 0;
      *(a1 + 24) = v16;
      *(a1 + 40) = 0;
      goto LABEL_9;
    }
  }

  __break(0xC471u);
}

void WGSL::constantQuantizeToF16(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()(WTF::String *a1, float _S0)
{
  _S1 = fabsf(_S0);
  __asm { FCVT            H1, S0 }

  v7 = LODWORD(_S1) | 0x10000;
  if (_VF)
  {
    v7 = 0;
  }

  if ((v7 & 0x10000) != 0)
  {
    _H0 = v7;
    __asm { FCVT            S0, H0 }

    LODWORD(v16[0]) = _S0;
    v17 = 0;
    *a1 = _S0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v19, v16);
    return;
  }

  WTF::String::number(&v18, a1, _S0);
  if (v18)
  {
    v9 = *(v18 + 1);
    if (v9 < 0)
    {
      goto LABEL_22;
    }

    _VF = __OFADD__(v9, 31);
    v10 = v9 + 31;
    if (_VF)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = 31;
    if (_VF)
    {
LABEL_22:
      v16[0] = 0;
LABEL_23:
      __break(0xC471u);
      return;
    }
  }

  if (__OFADD__(v10, 6))
  {
    goto LABEL_22;
  }

  v13 = !v18 || (*(v18 + 16) & 4) != 0;
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v10 + 6), v13, "value ", 6uLL, v18, " cannot be represented as 'f16'", 0x1FuLL, v16);
  if (!v16[0])
  {
    goto LABEL_23;
  }

  *a1 = v16[0];
  *(a1 + 24) = 1;
  v16[0] = 0;
  v15 = v18;
  v18 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }
  }
}

WTF::StringImpl *WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v127[20] = *MEMORY[0x277D85DE8];
  WTF::StringPrintStream::StringPrintStream(v127);
  WGSL::Type::dump(a2, v127);
  WTF::StringPrintStream::toString(&v126, v127);
  WTF::StringPrintStream::~StringPrintStream(v127);
  v8 = *(a3 + 24);
  v9 = v126;
  if (v126)
  {
    v10 = *(v126 + 1);
    if (v8)
    {
LABEL_3:
      v11 = *(v8 + 4);
      if ((v11 & 0x80000000) == 0)
      {
        v6 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v6)
        {
          goto LABEL_9;
        }
      }

LABEL_17:
      v17 = 0;
      *a1 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v12 = 1;
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = __OFADD__(v12, 33);
  v13 = v12 + 33;
  v14 = v6;
  if (v10 < 0)
  {
    goto LABEL_17;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  v6 = __OFADD__(v10, v13);
  v15 = v10 + v13;
  if (v6)
  {
    goto LABEL_17;
  }

  v16 = (v15 + 8);
  if (__OFADD__(v15, 8))
  {
    goto LABEL_17;
  }

  if (v126 && (*(v126 + 16) & 4) == 0)
  {
LABEL_28:
    atomic_fetch_add_explicit(v126, 2u, memory_order_relaxed);
    if (v15 != -8)
    {
      goto LABEL_29;
    }

LABEL_184:
    v17 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
LABEL_185:
    *a1 = v17;
    if (v9)
    {
      goto LABEL_186;
    }

    goto LABEL_18;
  }

  if (!v8 || (*(v8 + 16) & 4) != 0)
  {
    if (v126)
    {
      atomic_fetch_add_explicit(v126, 2u, memory_order_relaxed);
      if (v15 == -8)
      {
        goto LABEL_184;
      }
    }

    else if (v15 == -8)
    {
      goto LABEL_184;
    }

    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

    v19 = v16;
    WTF::tryFastCompactMalloc((v16 + 20));
    v17 = v127[0];
    if (!v127[0])
    {
      goto LABEL_185;
    }

    v21 = (v127[0] + 20);
    *v127[0] = 2;
    *(v17 + 4) = v16;
    *(v17 + 8) = v17 + 20;
    *(v17 + 16) = 4;
    if (!v9)
    {
      *v21 = 0x2720746375727473;
      if (v16 < 8)
      {
        goto LABEL_190;
      }

      v51 = 0;
      v16 = v16 - 8;
      goto LABEL_84;
    }

    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    *v21 = 0x2720746375727473;
    if (v16 <= 7)
    {
      goto LABEL_190;
    }

    v16 = v16 - 8;
    v22 = v17 + 28;
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    v7 = *(v9 + 1);
    v23 = *(v9 + 1);
    if ((*(v9 + 16) & 4) != 0)
    {
      if (v23)
      {
        if (v23 == 1)
        {
          *v22 = v7->i8[0];
        }

        else
        {
          memcpy(v22, v7, v23);
        }
      }
    }

    else
    {
      v24 = (v22 + v23);
      if (v23 >= 0x10)
      {
        v25 = v22 + (v23 & 0xFFFFFFF0);
        do
        {
          v26 = vld2q_s8(v7->i8);
          v7 += 2;
          *v22 = v26;
          v22 += 16;
        }

        while (v22 != v25);
      }

      if (v22 != v24)
      {
        v27 = v17 + v23;
        v28 = v17 + v23 - v22 + 28;
        if (v28 < 4 || (v22 < &v7[3].u64[1] + 2 * v27 + -2 * v22 ? (v29 = v7 >= v27 + 28) : (v29 = 1), !v29))
        {
          v41 = v22;
          v42 = v7;
          goto LABEL_67;
        }

        if (v28 >= 0x20)
        {
          v30 = v28 & 0xFFFFFFFFFFFFFFE0;
          v84 = v7 + 2;
          v85 = (v22 + 16);
          v86 = v28 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v88 = v84[-2];
            v87 = v84[-1];
            v90 = *v84;
            v89 = v84[1];
            v84 += 4;
            v85[-1] = vuzp1q_s8(v88, v87);
            *v85 = vuzp1q_s8(v90, v89);
            v85 += 2;
            v86 -= 32;
          }

          while (v86);
          if (v28 == v30)
          {
            goto LABEL_83;
          }

          if ((v28 & 0x1C) == 0)
          {
            v42 = (v7 + 2 * v30);
            v41 = (v22 + v30);
            do
            {
LABEL_67:
              v43 = v42->i8[0];
              v42 = (v42 + 2);
              *v41++ = v43;
            }

            while (v41 != v24);
            goto LABEL_83;
          }
        }

        else
        {
          v30 = 0;
        }

        v41 = (v22 + (v28 & 0xFFFFFFFFFFFFFFFCLL));
        v42 = (v7 + 2 * (v28 & 0xFFFFFFFFFFFFFFFCLL));
        v91 = (v7 + 2 * v30);
        v92 = (v22 + v30);
        v93 = v30 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v94 = *v91++;
          *v92++ = vuzp1_s8(v94, v94).u32[0];
          v93 += 4;
        }

        while (v93);
        if (v28 != (v28 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_67;
        }
      }
    }

LABEL_83:
    v51 = *(v9 + 1);
    if (v16 < v51)
    {
      goto LABEL_190;
    }

LABEL_84:
    qmemcpy((v17 + v51 + 28), "' does not have a member called '", 33);
    if (v16 - v51 <= 0x20)
    {
      goto LABEL_190;
    }

    v19 = v16 - v51 - 33;
    v16 = v17 + v51 + 61;
    if (!v8)
    {
      v56 = 0;
LABEL_131:
      if (v19 == v56)
      {
        goto LABEL_190;
      }

      *(v16 + v56) = 39;
      if (v9)
      {
        goto LABEL_133;
      }

LABEL_142:
      *a1 = v17;
      goto LABEL_18;
    }

    v7 = *(v8 + 8);
    v52 = *(v8 + 4);
    if ((*(v8 + 16) & 4) != 0)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          *v16 = v7->i8[0];
        }

        else
        {
          memcpy(v16, v7, v52);
        }
      }
    }

    else
    {
      v53 = (v16 + v52);
      if (v52 < 0x10)
      {
        v54 = v17 + v51 + 61;
      }

      else
      {
        v54 = v17 + v51 + 61;
        do
        {
          v55 = vld2q_s8(v7->i8);
          v7 += 2;
          *v54 = v55;
          v54 += 16;
        }

        while (v54 != v16 + (v52 & 0xFFFFFFF0));
      }

      if (v54 != v53)
      {
        v57 = v51 + v17 + v52;
        v58 = v57 - v54 + 61;
        if (v58 < 4 || (v54 < &v7[7].u64[1] + 2 * v57 + -2 * v54 + 2 ? (v59 = v7 >= v57 + 61) : (v59 = 1), !v59))
        {
          v75 = v54;
          v76 = v7;
          goto LABEL_119;
        }

        if (v58 >= 0x20)
        {
          v60 = v58 & 0xFFFFFFFFFFFFFFE0;
          v105 = v7 + 2;
          v106 = (v54 + 16);
          v107 = v58 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v109 = v105[-2];
            v108 = v105[-1];
            v111 = *v105;
            v110 = v105[1];
            v105 += 4;
            v106[-1] = vuzp1q_s8(v109, v108);
            *v106 = vuzp1q_s8(v111, v110);
            v106 += 2;
            v107 -= 32;
          }

          while (v107);
          if (v58 == v60)
          {
            goto LABEL_130;
          }

          if ((v58 & 0x1C) == 0)
          {
            v76 = (v7 + 2 * v60);
            v75 = (v54 + v60);
            do
            {
LABEL_119:
              v77 = v76->i8[0];
              v76 = (v76 + 2);
              *v75++ = v77;
            }

            while (v75 != v53);
            goto LABEL_130;
          }
        }

        else
        {
          v60 = 0;
        }

        v75 = (v54 + (v58 & 0xFFFFFFFFFFFFFFFCLL));
        v76 = (v7 + 2 * (v58 & 0xFFFFFFFFFFFFFFFCLL));
        v112 = (v7 + 2 * v60);
        v113 = (v54 + v60);
        v114 = v60 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v115 = *v112++;
          *v113++ = vuzp1_s8(v115, v115).u32[0];
          v114 += 4;
        }

        while (v114);
        if (v58 != (v58 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_119;
        }
      }
    }

LABEL_130:
    v56 = *(v8 + 4);
    if (v19 < v56)
    {
      goto LABEL_190;
    }

    goto LABEL_131;
  }

  if (v126)
  {
    goto LABEL_28;
  }

  if (v15 == -8)
  {
    goto LABEL_184;
  }

LABEL_29:
  if (v16 > 0x7FFFFFEF)
  {
LABEL_58:
    v17 = 0;
    goto LABEL_185;
  }

  v19 = v16;
  WTF::tryFastCompactMalloc((2 * v16 + 20));
  v17 = v127[0];
  if (!v127[0])
  {
    goto LABEL_185;
  }

  *v127[0] = 2;
  *(v17 + 4) = v16;
  *(v17 + 8) = v17 + 20;
  *(v17 + 16) = 0;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(v17 + 20) = xmmword_2258828D0;
  if (v16 <= 7)
  {
    goto LABEL_190;
  }

  v16 = v17 + 36;
  v19 -= 8;
  if (!v9)
  {
    goto LABEL_191;
  }

  atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  v7 = *(v9 + 1);
  v20 = *(v9 + 1);
  if ((*(v9 + 16) & 4) != 0)
  {
    v31 = (v16 + 2 * v20);
    if (v20 < 0x40)
    {
      v32 = v17 + 36;
    }

    else
    {
      v32 = v16 + 2 * (v20 & 0xFFFFFFC0);
      v33 = 0uLL;
      v34 = (v17 + 36);
      do
      {
        v128.val[0] = *v7;
        v35 = v7[1];
        v130.val[0] = v7[2];
        v36 = v7[3];
        v7 += 4;
        v37 = v36;
        v130.val[1] = 0uLL;
        v132.val[0] = v35;
        v128.val[1] = 0uLL;
        v38 = v34;
        vst2q_s8(v38, v128);
        v38 += 32;
        v132.val[1] = 0uLL;
        vst2q_s8(v38, v132);
        v39 = v34 + 64;
        vst2q_s8(v39, v130);
        v40 = v34 + 96;
        vst2q_s8(v40, *(&v33 - 1));
        v34 += 128;
      }

      while (v34 != v32);
    }

    if (v32 == v31)
    {
      goto LABEL_106;
    }

    v44 = v17 + 2 * v20 - v32 + 34;
    if (v44 < 0xE || (v32 < v7->u64 + (v44 >> 1) + 1 ? (v45 = v7 >= (v44 & 0xFFFFFFFFFFFFFFFELL) + v32 + 2) : (v45 = 1), !v45))
    {
      v48 = v7;
      v49 = v32;
      goto LABEL_80;
    }

    v46 = (v44 >> 1) + 1;
    if (v44 >= 0x3E)
    {
      v47 = v46 & 0xFFFFFFFFFFFFFFE0;
      v95 = (v32 + 32);
      v96 = &v7[1];
      v97 = v46 & 0xFFFFFFFFFFFFFFE0;
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
      if (v46 == v47)
      {
        goto LABEL_106;
      }

      if ((v46 & 0x18) == 0)
      {
        v49 = (v32 + 2 * v47);
        v48 = (v7 + v47);
        goto LABEL_80;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = (v7 + (v46 & 0xFFFFFFFFFFFFFFF8));
    v49 = (v32 + 2 * (v46 & 0xFFFFFFFFFFFFFFF8));
    v101 = (v32 + 2 * v47);
    v102 = &v7->i8[v47];
    v103 = v47 - (v46 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v104 = *v102++;
      *v101++ = vmovl_u8(v104);
      v103 += 8;
    }

    while (v103);
    if (v46 == (v46 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_106;
    }

    do
    {
LABEL_80:
      v50 = v48->u8[0];
      v48 = (v48 + 1);
      *v49++ = v50;
    }

    while (v49 != v31);
    goto LABEL_106;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      *v16 = v7->i16[0];
    }

    else
    {
      memcpy((v17 + 36), v7, 2 * v20);
    }
  }

LABEL_106:
  v61 = *(v9 + 1);
  if (v19 < v61)
  {
    goto LABEL_190;
  }

  while (1)
  {
    v62 = v16 + 2 * v61;
    *v62 = xmmword_2258828E0;
    *(v62 + 16) = xmmword_2258828F0;
    *(v62 + 32) = xmmword_225882900;
    *(v62 + 48) = xmmword_225882910;
    *(v62 + 64) = 39;
    if (v19 - v61 <= 0x20)
    {
      goto LABEL_190;
    }

    v16 = v62 + 66;
    v19 = v19 - v61 - 33;
    if (!v8)
    {
      break;
    }

    v7 = *(v8 + 8);
    v63 = *(v8 + 4);
    if ((*(v8 + 16) & 4) != 0)
    {
      v65 = (v16 + 2 * v63);
      if (v63 < 0x40)
      {
        v66 = v16;
      }

      else
      {
        v66 = v16 + 2 * (v63 & 0xFFFFFFC0);
        v67 = 0uLL;
        v68 = v16;
        do
        {
          v129.val[0] = *v7;
          v69 = v7[1];
          v131.val[0] = v7[2];
          v70 = v7[3];
          v7 += 4;
          v71 = v70;
          v131.val[1] = 0uLL;
          v133.val[0] = v69;
          v129.val[1] = 0uLL;
          v72 = v68;
          vst2q_s8(v72, v129);
          v72 += 32;
          v133.val[1] = 0uLL;
          vst2q_s8(v72, v133);
          v73 = v68 + 64;
          vst2q_s8(v73, v131);
          v74 = v68 + 96;
          vst2q_s8(v74, *(&v67 - 1));
          v68 += 128;
        }

        while (v68 != v66);
      }

      if (v66 != v65)
      {
        v78 = v17 + 2 * (v61 + v63) - v66 + 100;
        if (v78 < 0xE || v66 < v7->u64 + (v78 >> 1) + 1 && v7 < (v78 & 0xFFFFFFFFFFFFFFFELL) + v66 + 2)
        {
          v79 = v7;
          v80 = v66;
          goto LABEL_127;
        }

        v82 = (v78 >> 1) + 1;
        if (v78 >= 0x3E)
        {
          v83 = v82 & 0xFFFFFFFFFFFFFFE0;
          v116 = (v66 + 32);
          v117 = &v7[1];
          v118 = v82 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v119 = *v117[-2].i8;
            v120 = vmovl_u8(*v117);
            v121 = vmovl_high_u8(*v117->i8);
            v116[-2] = vmovl_u8(*v119.i8);
            v116[-1] = vmovl_high_u8(v119);
            *v116 = v120;
            v116[1] = v121;
            v116 += 4;
            v117 += 4;
            v118 -= 32;
          }

          while (v118);
          if (v82 == v83)
          {
            goto LABEL_139;
          }

          if ((v82 & 0x18) == 0)
          {
            v80 = (v66 + 2 * v83);
            v79 = (v7 + v83);
            do
            {
LABEL_127:
              v81 = v79->u8[0];
              v79 = (v79 + 1);
              *v80++ = v81;
            }

            while (v80 != v65);
            goto LABEL_139;
          }
        }

        else
        {
          v83 = 0;
        }

        v79 = (v7 + (v82 & 0xFFFFFFFFFFFFFFF8));
        v80 = (v66 + 2 * (v82 & 0xFFFFFFFFFFFFFFF8));
        v122 = (v66 + 2 * v83);
        v123 = &v7->i8[v83];
        v124 = v83 - (v82 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v125 = *v123++;
          *v122++ = vmovl_u8(v125);
          v124 += 8;
        }

        while (v124);
        if (v82 != (v82 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_127;
        }
      }
    }

    else if (v63)
    {
      if (v63 == 1)
      {
        *v16 = v7->i16[0];
      }

      else
      {
        memcpy(v16, v7, 2 * v63);
      }
    }

LABEL_139:
    v64 = *(v8 + 4);
    if (v19 >= v64)
    {
      goto LABEL_140;
    }

LABEL_190:
    __break(1u);
LABEL_191:
    v61 = 0;
  }

  v64 = 0;
LABEL_140:
  if (v19 == v64)
  {
    goto LABEL_190;
  }

  *(v16 + 2 * v64) = 39;
  if (!v9)
  {
    goto LABEL_142;
  }

LABEL_133:
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  *a1 = v17;
LABEL_186:
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

LABEL_18:
  result = v126;
  v126 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
  }

  if (!v17)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned int,char>(uint64_t result, unint64_t a2, unsigned int a3)
{
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = -a2;
    v6 = 1;
    do
    {
      ++v6;
      v10 = v9 >= 0xA;
      v9 /= 0xAuLL;
    }

    while (v10);
  }

  else
  {
    v6 = 0;
    v7 = a2;
    do
    {
      ++v6;
      v8 = v7 > 9;
      v7 /= 0xAuLL;
    }

    while (v8);
  }

  v11 = 0;
  v12 = a3;
  do
  {
    ++v11;
    v8 = v12 > 9;
    v12 /= 0xAu;
  }

  while (v8);
  if ((v11 & 0x80000000) == 0)
  {
    v13 = __OFADD__(v11, 1);
    v14 = v11 + 1;
    if (!v13)
    {
      v13 = __OFADD__(v14, 22);
      v15 = v14 + 22;
      v16 = v13;
      if ((v6 & 0x80000000) == 0 && !v16)
      {
        v13 = __OFADD__(v6, v15);
        v17 = v6 + v15;
        if (!v13)
        {
          v18 = (v17 + 6);
          if (!__OFADD__(v17, 6))
          {
            if (v17 == -6)
            {
              v19 = MEMORY[0x277CD4668];
              atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
              goto LABEL_24;
            }

            if ((v18 & 0x80000000) == 0)
            {
              result = WTF::tryFastCompactMalloc((v18 + 20));
              v19 = v20;
              if (v20)
              {
                *v20 = 2;
                *(v20 + 4) = v18;
                *(v20 + 8) = v20 + 20;
                *(v20 + 16) = 0x65646E6900000004;
                *(v20 + 24) = 8312;
                if (v18 > 5)
                {
                  result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<char,void>>((v20 + 26), v18 - 6, a2, " is out of bounds [0..", 0x16uLL, a3, 93);
LABEL_24:
                  *v5 = v19;
                  return result;
                }

                __break(1u);
              }
            }
          }
        }
      }
    }
  }

  *v5 = 0;
  __break(0xC471u);
  return result;
}

uint64_t WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<char,void>>(void *a1, unint64_t a2, unint64_t a3, _BYTE *__src, size_t __n, uint64_t a6, char a7)
{
  v52 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = 25;
    v11 = 1;
    v12 = a3;
    do
    {
      if (v11 == 26)
      {
        goto LABEL_56;
      }

      v13 = v9;
      v51[--v10] = (v12 % 0xA) | 0x30;
      ++v11;
      ++v9;
      v14 = v12 > 9;
      v12 /= 0xAuLL;
    }

    while (v14);
    if (a2 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = a2;
    }

    if (v15 >= 8)
    {
      v31 = v15 + 1;
      v32 = v31 & 7;
      if ((v31 & 7) == 0)
      {
        v32 = 8;
      }

      v16 = v31 - v32;
      if (a2 >= v13)
      {
        v33 = v13;
      }

      else
      {
        v33 = a2;
      }

      v34 = v33 - v32 + 1;
      v35 = v51;
      v36 = a1;
      do
      {
        *v36++ = *&v35[v10];
        v35 += 8;
        v34 -= 8;
      }

      while (v34);
    }

    else
    {
      v16 = 0;
    }

    v37 = v16 - v13;
    v38 = v37 - 1;
    v39 = a1 + v16;
    v40 = a2 - v16;
    while (v40)
    {
      *v39++ = *(&v52 + v38++);
      ++v37;
      --v40;
      if (v37 == 1)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_56;
  }

  v17 = 0;
  v18 = -a3;
  do
  {
    if (v17 == -25)
    {
      goto LABEL_56;
    }

    v51[v17-- + 24] = (v18 % 0xA) | 0x30;
    v14 = v18 > 9;
    v18 /= 0xAuLL;
  }

  while (v14);
  if ((v17 + 24) >= 0x19)
  {
    goto LABEL_56;
  }

  v19 = 0;
  v51[v17 + 24] = 45;
  if (a2 >= -v17)
  {
    v20 = -v17;
  }

  else
  {
    v20 = a2;
  }

  if (v20 >= 8)
  {
    v21 = &v51[v17 + 24];
    v22 = (v20 + 1) & 7;
    if (!v22)
    {
      v22 = 8;
    }

    v19 = v20 + 1 - v22;
    if (a2 >= -v17)
    {
      v23 = -v17;
    }

    else
    {
      v23 = a2;
    }

    v24 = v23 - v22 + 1;
    v25 = a1;
    do
    {
      v26 = *v21++;
      *v25++ = v26;
      v24 -= 8;
    }

    while (v24);
  }

  v27 = v19 + v17;
  v28 = a1 + v19;
  v29 = v27 + 1;
  v30 = a2 - v19;
  do
  {
    if (!v30)
    {
      goto LABEL_56;
    }

    *v28++ = v51[v27++ + 24];
    ++v29;
    --v30;
  }

  while (v29 != 2);
LABEL_39:
  if ((a3 & 0x8000000000000000) != 0)
  {
    v42 = -a3;
    v41 = 1;
    do
    {
      ++v41;
      v43 = v42 >= 0xA;
      v42 /= 0xAuLL;
    }

    while (v43);
  }

  else
  {
    v41 = 0;
    do
    {
      ++v41;
      v14 = a3 > 9;
      a3 /= 0xAuLL;
    }

    while (v14);
  }

  v44 = a2 - v41;
  if (a2 < v41)
  {
    goto LABEL_56;
  }

  v45 = a1 + v41;
  if (__n)
  {
    if (__n == 1)
    {
      *v45 = *__src;
    }

    else
    {
      v46 = __n;
      memcpy(a1 + v41, __src, __n);
      LODWORD(__n) = v46;
    }
  }

  v43 = v44 >= __n;
  v47 = v44 - __n;
  if (!v43)
  {
    goto LABEL_56;
  }

  v48 = &v45[__n];
  result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a6, v48, v47);
  LODWORD(v50) = 0;
  do
  {
    v50 = (v50 + 1);
    v14 = a6 > 9;
    LODWORD(a6) = a6 / 0xA;
  }

  while (v14);
  if (v47 <= v50)
  {
LABEL_56:
    __break(1u);
  }

  v48[v50] = a7;
  return result;
}

void std::__optional_storage_base<WGSL::ConstantValue,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WGSL::ConstantValue,false>>(_BYTE *a1, uint64_t a2)
{
  if (a1[24] == *(a2 + 24))
  {
    if (!a1[24])
    {
      return;
    }

    v3 = a1[16];
    v4 = *(a2 + 16);
    if (v3 != 255)
    {
      if (v4 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v6, a1);
        a1[16] = -1;
        return;
      }

LABEL_13:
      v5 = a1;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v4, &v5, a1, a2);
      return;
    }

    if (v4 != 255)
    {
      goto LABEL_13;
    }
  }

  else if (a1[24])
  {
    if (a1[16] != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v7, a1);
    }

    a1[16] = -1;
    a1[24] = 0;
  }

  else
  {
    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(a1, a2);
    a1[24] = 1;
  }
}

void WGSL::constantBitcast(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_1::operator()(WTF::String *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a3 + 16);
  if (v7 > 2)
  {
    if (v7 != 5)
    {
      if (v7 != 4 && v7 != 3)
      {
LABEL_61:
        __break(0xC471u);
        JUMPOUT(0x225870EE4);
      }

      goto LABEL_7;
    }

    v8 = *a3;
    if (*a3 == *a3)
    {
      v9 = v8 >> 16;
      goto LABEL_8;
    }

    WTF::String::number(*a3);
    if (v29)
    {
      v15 = *(v29 + 4);
      if (v15 < 0)
      {
        goto LABEL_62;
      }

      v14 = __OFADD__(v15, 31);
      v16 = v15 + 31;
      if (v14)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v16 = 31;
      if (v14)
      {
        goto LABEL_62;
      }
    }

    if (!__OFADD__(v16, 6))
    {
      v22 = !v29 || (*(v29 + 16) & 4) != 0;
      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v16 + 6), v22, "value ", 6uLL, v29, " cannot be represented as 'i32'", 0x1FuLL, v26);
      if (v26[0])
      {
        *a1 = v26[0];
        *(a1 + 8) = 1;
        v26[0] = 0;
        v24 = v29;
        v29 = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_57;
      }

LABEL_63:
      __break(0xC471u);
      JUMPOUT(0x225870EF0);
    }

LABEL_62:
    v26[0] = 0;
    goto LABEL_63;
  }

  if (!*(a3 + 16))
  {
LABEL_7:
    LOWORD(v8) = *a3;
    LOWORD(v9) = *(a3 + 2);
LABEL_8:
    LOWORD(v26[0]) = v8;
    v27 = 1;
    if (**a2 > a4)
    {
      v10 = *a2 + 24 * a4;
      v11 = *(v10 + 24);
      if (v11 != 255)
      {
        if (v11 == 1)
        {
          *(v10 + 8) = v8;
          goto LABEL_14;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, (v10 + 8));
      }

      *(v10 + 8) = v8;
      *(v10 + 24) = 1;
LABEL_14:
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v26);
      LOWORD(v26[0]) = v9;
      v27 = 1;
      if (**a2 <= a4 + 1)
      {
        __break(0xC471u);
        JUMPOUT(0x225870EC4);
      }

      v12 = *a2 + 24 * (a4 + 1);
      v13 = *(v12 + 24);
      if (v13 != 255)
      {
        if (v13 == 1)
        {
          *(v12 + 8) = v9;
LABEL_20:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v26);
          *a1 = 0;
          *(a1 + 8) = 0;
          return;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, (v12 + 8));
      }

      *(v12 + 8) = v9;
      *(v12 + 24) = 1;
      goto LABEL_20;
    }

    __break(0xC471u);
LABEL_66:
    JUMPOUT(0x225870EA4);
  }

  if (v7 != 2)
  {
    goto LABEL_61;
  }

  v17 = *a3;
  WGSL::convertFloat<float,double>(double)::max = 2139095039;
  WGSL::convertFloat<float,double>(double)::lowest = -8388609;
  if (fabs(v17) > 3.40282347e38)
  {
    v8 = 0;
  }

  else
  {
    *&v18 = v17;
    v8 = v18 | 0x100000000;
  }

  if ((v8 & 0x100000000) != 0)
  {
    v9 = v8 >> 16;
    goto LABEL_8;
  }

  WTF::String::number(&v28, a1, v17);
  if (v28)
  {
    v20 = *(v28 + 1);
    if (v20 < 0)
    {
      goto LABEL_64;
    }

    v14 = __OFADD__(v20, 31);
    v21 = v20 + 31;
    if (v14)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v21 = 31;
    if (v19)
    {
LABEL_64:
      v26[0] = 0;
LABEL_65:
      __break(0xC471u);
      goto LABEL_66;
    }
  }

  if (__OFADD__(v21, 6))
  {
    goto LABEL_64;
  }

  v25 = !v28 || (*(v28 + 16) & 4) != 0;
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v21 + 6), v25, "value ", 6uLL, v28, " cannot be represented as 'f32'", 0x1FuLL, v26);
  if (!v26[0])
  {
    goto LABEL_65;
  }

  *a1 = v26[0];
  *(a1 + 8) = 1;
  v26[0] = 0;
  v24 = v28;
  v28 = 0;
  if (!v24)
  {
    return;
  }

LABEL_57:
  if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }
}

void WGSL::convertValue<WGSL::BitwiseCast>(mpark *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a2[48])
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = *a2;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      LOBYTE(v24[0]) = 0;
      v25 = -1;
      v6 = *(a3 + 16);
      if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, &v28, v24, a3), v25 = *(a3 + 16), v25 - 3 >= 2) && v25)
      {
        __break(0xC471u);
        JUMPOUT(0x225871134);
      }

      *a1 = v24[0];
      *(a1 + 16) = 3;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v24);
      return;
    }

    if (v5 == 2)
    {
      LOBYTE(v22[0]) = 0;
      v23 = -1;
      v9 = *(a3 + 16);
      if (v9 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v28, v22, a3), v23 = *(a3 + 16), v23 - 3 >= 2) && v23)
      {
        __break(0xC471u);
        JUMPOUT(0x225871154);
      }

      *a1 = v22[0];
      *(a1 + 16) = 4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v22);
      return;
    }

    if (!*a2)
    {
      LOBYTE(v26) = 0;
      v27 = -1;
      v12 = *(a3 + 16);
      if (v12 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v12, &v28, &v26, a3);
        v27 = *(a3 + 16);
      }

      __break(0xC471u);
      JUMPOUT(0x225871220);
    }

    goto LABEL_40;
  }

  if (*a2 <= 4u)
  {
    if (v5 == 4)
    {
      LOBYTE(v16[0]) = 0;
      v17 = -1;
      v7 = *(a3 + 16);
      if (v7 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, &v28, v16, a3);
        v17 = *(a3 + 16);
        v8 = v17;
        if (v17 == 1)
        {
          *a1 = v16[0];
          *(a1 + 16) = v8;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v16);
          return;
        }
      }

      __break(0xC471u);
LABEL_41:
      JUMPOUT(0x225871114);
    }

    if (v5 == 3)
    {
      LOBYTE(v20) = 0;
      v21 = -1;
      v11 = *(a3 + 16);
      if (v11 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v11, &v28, &v20, a3);
        v21 = *(a3 + 16);
      }

      __break(0xC471u);
      JUMPOUT(0x2258711CCLL);
    }

LABEL_40:
    __break(0xC471u);
    goto LABEL_41;
  }

  if (v5 != 5)
  {
    if (v5 == 7)
    {
      LOBYTE(v14) = 0;
      v15 = -1;
      v13 = *(a3 + 16);
      if (v13 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v13, &v28, &v14, a3);
        v15 = *(a3 + 16);
      }

      __break(0xC471u);
      JUMPOUT(0x225871278);
    }

    goto LABEL_40;
  }

  LOBYTE(v18[0]) = 0;
  v19 = -1;
  v10 = *(a3 + 16);
  if (v10 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v28, v18, a3), v19 = *(a3 + 16), v19 - 3 >= 2) && v19)
  {
    __break(0xC471u);
    JUMPOUT(0x225871174);
  }

  *a1 = v18[0];
  *(a1 + 16) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v18);
}

void WGSL::TypeChecker::~TypeChecker(WTF::StringImpl ***this, WTF::StringImpl *a2)
{
  v2 = this;
  v3 = this[13];
  if (v3)
  {
    v4 = *(v3 - 1);
    if (v4)
    {
      v5 = this[13];
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

    WTF::fastFree((v3 - 2), a2);
  }

  v7 = *(v2 + 12);
  if (!v7)
  {
    goto LABEL_56;
  }

  v34 = v2;
  v8 = *(v7 - 4);
  if (!v8)
  {
    goto LABEL_55;
  }

  v9 = 0;
  v35 = *(v7 - 4);
  while (2)
  {
    v10 = v7 + 48 * v9;
    if (*v10 == -1)
    {
      goto LABEL_13;
    }

    v11 = *(v10 + 44);
    v12 = *(v10 + 32);
    if (!v11)
    {
      goto LABEL_50;
    }

    v13 = v12 + 88 * v11;
    do
    {
      v14 = *(v12 + 80);
      *(v12 + 80) = 0;
      if (v14)
      {
        if (*(v14 + 24) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v14);
        }

        *(v14 + 24) = -1;
        MEMORY[0x22AA68560](v14, 0x1062C401A182E57);
      }

      v15 = *(v12 + 60);
      v16 = *(v12 + 48);
      if (v15)
      {
        v17 = 8 * v15;
        do
        {
          v18 = *v16;
          *v16 = 0;
          if (v18)
          {
            if (*(v18 + 24) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v18);
            }

            *(v18 + 24) = -1;
            MEMORY[0x22AA68560](v18, 0x1062C401A182E57);
          }

          v16 = (v16 + 8);
          v17 -= 8;
        }

        while (v17);
        v16 = *(v12 + 48);
      }

      if ((v12 + 64) == v16 || v16 == 0)
      {
        v20 = *(v12 + 24);
        if ((v12 + 40) == v20 || v20 == 0)
        {
LABEL_40:
          v22 = *v12;
          if (v12 + 16 == *v12)
          {
            goto LABEL_17;
          }

          goto LABEL_47;
        }
      }

      else
      {
        *(v12 + 48) = 0;
        *(v12 + 56) = 0;
        WTF::fastFree(v16, a2);
        v20 = *(v12 + 24);
        if ((v12 + 40) == v20 || v20 == 0)
        {
          goto LABEL_40;
        }
      }

      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      WTF::fastFree(v20, a2);
      v22 = *v12;
      if (v12 + 16 == *v12)
      {
        goto LABEL_17;
      }

LABEL_47:
      if (v22)
      {
        *v12 = 0;
        *(v12 + 8) = 0;
        WTF::fastFree(v22, a2);
      }

LABEL_17:
      v12 += 88;
    }

    while (v12 != v13);
    v12 = *(v10 + 32);
    v8 = v35;
LABEL_50:
    if (v12)
    {
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      WTF::fastFree(v12, a2);
    }

    v24 = *v10;
    *v10 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, a2);
    }

LABEL_13:
    if (++v9 != v8)
    {
      continue;
    }

    break;
  }

LABEL_55:
  WTF::fastFree((v7 - 16), a2);
  v2 = v34;
LABEL_56:
  v25 = *(v2 + 10);
  if (v25)
  {
    *(v2 + 10) = 0;
    *(v2 + 22) = 0;
    WTF::fastFree(v25, a2);
  }

  v26 = *(v2 + 3);
  *v26 = *(v2 + 4);
  v27 = *(v26 + 20);
  if (v27)
  {
    v28 = v27 - 1;
    std::unique_ptr<WGSL::ContextProvider<WGSL::Binding>::Context,std::default_delete<WGSL::ContextProvider<WGSL::Binding>::Context>>::~unique_ptr[abi:sn200100]((*(v26 + 8) + 8 * (v27 - 1)), a2);
    *(v26 + 20) = v28;
    v30 = *(v2 + 5);
    if (v30)
    {
      v31 = *(v2 + 1);
      v32 = 8 * v30;
      do
      {
        v31 = std::unique_ptr<WGSL::ContextProvider<WGSL::Binding>::Context,std::default_delete<WGSL::ContextProvider<WGSL::Binding>::Context>>::~unique_ptr[abi:sn200100](v31, v29) + 1;
        v32 -= 8;
      }

      while (v32);
    }

    v33 = *(v2 + 1);
    if (v33)
    {
      *(v2 + 1) = 0;
      *(v2 + 4) = 0;
      WTF::fastFree(v33, v29);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void *std::unique_ptr<WGSL::ContextProvider<WGSL::Binding>::Context,std::default_delete<WGSL::ContextProvider<WGSL::Binding>::Context>>::~unique_ptr[abi:sn200100](void *result, WTF::StringImpl *a2)
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
        v6 = (v4 + 32);
        do
        {
          v7 = *(v6 - 4);
          if (v7 != -1)
          {
            if (v6[24] == 1)
            {
              if (v6[16] != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, v6);
                v7 = *(v6 - 4);
              }

              v6[16] = -1;
            }

            *(v6 - 4) = 0;
            if (v7)
            {
              if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v7, a2);
              }
            }
          }

          v6 += 64;
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

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(unint64_t result, unsigned int a2, _BYTE *a3, size_t a4, unint64_t a5, _BYTE *a6, size_t a7)
{
  v7 = result;
  v56[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v14 = a2;
      result = WTF::tryFastCompactMalloc((a2 + 20));
      v15 = v56[0];
      if (v56[0])
      {
        v16 = (v56[0] + 20);
        *v56[0] = 2;
        *(v15 + 4) = a2;
        *(v15 + 8) = v15 + 20;
        *(v15 + 16) = 4;
        if (a4)
        {
          if (a4 == 1)
          {
            *v16 = *a3;
          }

          else
          {
            memcpy((v15 + 20), a3, a4);
          }
        }

        v17 = v14 - a4;
        if (v14 < a4)
        {
          goto LABEL_61;
        }

        v18 = &v16[a4];
        v19 = a5;
        if ((a5 & 0x8000000000000000) == 0)
        {
          v20 = 0;
          v21 = 25;
          v22 = 1;
          result = a5;
          do
          {
            if (v22 == 26)
            {
              goto LABEL_61;
            }

            v23 = v20;
            --v21;
            *(v56 + v21) = (result % 0xA) | 0x30;
            ++v22;
            ++v20;
            v24 = result > 9;
            result /= 0xAuLL;
          }

          while (v24);
          if (v23 >= v17)
          {
            v25 = v14 - a4;
          }

          else
          {
            v25 = v23;
          }

          if (v25 >= 8)
          {
            v42 = v25 + 1;
            v43 = v42 & 7;
            if ((v42 & 7) == 0)
            {
              v43 = 8;
            }

            v26 = v42 - v43;
            if (v23 >= v17)
            {
              v44 = v14 - a4;
            }

            else
            {
              v44 = v23;
            }

            v45 = ~v44 + v43;
            v46 = v56;
            v47 = &v16[a4];
            do
            {
              *v47++ = *(v46++ + v21);
              v45 += 8;
            }

            while (v45);
          }

          else
          {
            v26 = 0;
          }

          v48 = v26 - v23;
          v49 = v48 - 1;
          v50 = v26 + a4;
          v51 = (v50 + v15 + 20);
          v52 = v50 - v14;
          while (v52)
          {
            *v51++ = *(&v56[3] + ++v49);
            ++v48;
            ++v52;
            if (v48 == 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_61;
        }

        v27 = 0;
        v28 = -a5;
        do
        {
          if (v27 == -25)
          {
            goto LABEL_61;
          }

          result = (v28 % 0xA) | 0x30;
          *(&v56[3] + v27--) = (v28 % 0xA) | 0x30;
          v24 = v28 > 9;
          v28 /= 0xAuLL;
        }

        while (v24);
        if ((v27 + 24) >= 0x19)
        {
          goto LABEL_61;
        }

        v29 = 0;
        *(&v56[3] + v27) = 45;
        if (-v27 < v17)
        {
          v30 = -v27;
        }

        else
        {
          v30 = v14 - a4;
        }

        if (v30 >= 8)
        {
          v31 = (&v56[3] + v27);
          v32 = (v30 + 1) & 7;
          if (!v32)
          {
            v32 = 8;
          }

          v29 = v30 + 1 - v32;
          if (-v27 >= v17)
          {
            v33 = v14 - a4;
          }

          else
          {
            v33 = -v27;
          }

          v34 = ~v33 + v32;
          v35 = &v16[a4];
          do
          {
            v36 = *v31++;
            *v35++ = v36;
            v34 += 8;
          }

          while (v34);
        }

        v37 = v29 + v27;
        v38 = v29 + a4;
        v39 = (v38 + v15 + 20);
        v40 = v37 + 1;
        v41 = v38 - v14;
        do
        {
          if (!v41)
          {
            goto LABEL_61;
          }

          *v39++ = *(&v56[3] + v37++);
          ++v40;
          ++v41;
        }

        while (v40 != 2);
LABEL_49:
        if ((a5 & 0x8000000000000000) != 0)
        {
          v54 = -a5;
          v53 = 1;
          do
          {
            ++v53;
            v55 = v54 >= 0xA;
            v54 /= 0xAuLL;
          }

          while (v55);
        }

        else
        {
          v53 = 0;
          do
          {
            ++v53;
            v24 = v19 > 9;
            v19 /= 0xAuLL;
          }

          while (v24);
        }

        if (v17 < v53)
        {
LABEL_61:
          __break(1u);
        }

        if (a7)
        {
          if (a7 == 1)
          {
            v18[v53] = *a6;
          }

          else
          {
            result = memcpy(&v18[v53], a6, a7);
          }
        }
      }
    }
  }

  else
  {
    v15 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
  }

  *v7 = v15;
  return result;
}

uint64_t std::__function::__func<WGSL::TypeChecker::declareBuiltins(void)::$_0,std::allocator<WGSL::TypeChecker::declareBuiltins(void)::$_0>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D65D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WGSL::TypeChecker::declareBuiltins(void)::$_0,std::allocator<WGSL::TypeChecker::declareBuiltins(void)::$_0>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression &)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 108);
  if (v5 <= 1)
  {
    v29 = "'ptr' requires at least 2 template arguments";
    v30 = a3;
    v31 = 45;
LABEL_38:
    WTF::makeString<WTF::ASCIILiteral>(v30, v29, v31);
    v32 = *(a2 + 8);
    goto LABEL_39;
  }

  if (v5 >= 4)
  {
    v29 = "'ptr' requires at most 3 template arguments";
    v30 = a3;
    v31 = 44;
    goto LABEL_38;
  }

  v6 = *(a1 + 8);
  v7 = **(a2 + 96);
  v11 = WGSL::TypeChecker::infer(&v40, v6, v7, 3u, 0);
  if (v42)
  {
    if (v42 != 1)
    {
      goto LABEL_65;
    }

    v33 = v40;
    if (!v40)
    {
      v32 = v41;
LABEL_47:
      *a3 = 0;
      goto LABEL_39;
    }

    atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
    v32 = v41;
    if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v37 = v32;
      WTF::StringImpl::destroy(v33, v9);
      v32 = v37;
    }

LABEL_48:
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    *a3 = v33;
    *(a3 + 8) = v32;
    *(a3 + 24) = 1;
    if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      WTF::StringImpl::destroy(v33, v9);
    }

    return;
  }

  v12 = v40;
  v13 = *(*(v6 + 72) + 128);
  if (v40 != v13 && WGSL::conversionRank(v13, v40, v10) == -1)
  {
    WGSL::Type::Type(&v44, v12);
    WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v39, "cannot use '", 13, &v44, "' as address space", 19);
    v32 = *(v7 + 8);
    v33 = v39;
    if (v47 != 255)
    {
      v38 = *(v7 + 8);
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v43, &v44);
      v32 = v38;
    }

    if (!v33)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  if ((*(*v7 + 16))(v7, v11) != 21)
  {
    __break(0xC471u);
    JUMPOUT(0x225871FD0);
  }

  v14 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::AddressSpace> [6]>::tryGet<WTF::String>(WGSL::parseAddressSpace(WTF::String const&)::__map, (v7 + 88));
  if (*(a2 + 108) <= 1u)
  {
    __break(0xC471u);
    JUMPOUT(0x225871FD8);
  }

  v15 = *v14;
  WGSL::TypeChecker::resolve(&v40, v6, *(*(a2 + 96) + 8));
  if (v42)
  {
    if (v42 == 1)
    {
      v34 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
        *a3 = v34;
        v35 = v41;
        goto LABEL_63;
      }

      *a3 = 0;
      v32 = v41;
LABEL_39:
      *(a3 + 8) = v32;
      *(a3 + 24) = 1;
      return;
    }

LABEL_65:
    mpark::throw_bad_variant_access(v8);
  }

  v17 = v40;
  if ((WGSL::Type::isStorable(v40) & 1) == 0)
  {
    WGSL::Type::Type(&v44, v17);
    v20 = "' cannot be used as the store type of a pointer";
    v21 = 48;
LABEL_56:
    WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(&v39, &v44, v20, v21);
    *a3 = v39;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 24) = 1;
    if (v47 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v43, &v44);
    }

    return;
  }

  v18 = v17;
  if (*(v17 + 48) == 12)
  {
    v19 = v15 == 3 || v15 == 5;
    v18 = v17;
    if (!v19)
    {
      WGSL::Type::Type(&v44, v17);
      v20 = "' atomic variables must have <storage> or <workgroup> address space";
      v21 = 68;
      goto LABEL_56;
    }
  }

  while (1)
  {
    v22 = v18[48];
    if (v22 != 4)
    {
      break;
    }

    v24 = *v18;
    v25 = *(*v18 + 84);
    if (!v25)
    {
      goto LABEL_74;
    }

    v23 = (*(*(*(v24 + 72) + 8 * v25 - 8) + 104) + 24);
LABEL_16:
    v18 = *v23;
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  if (v22 == 10)
  {
    v23 = (v18 + 8);
    goto LABEL_16;
  }

  if (v22 != 3)
  {
LABEL_29:
    v27 = v15 != 3;
    if (v5 == 2)
    {
      goto LABEL_26;
    }

LABEL_30:
    if (v27)
    {
      WTF::makeString<WTF::ASCIILiteral>(&v44, "only pointers in <storage> address space may specify an access mode", 0x44uLL);
      if (*(a2 + 108) <= 2u)
      {
LABEL_74:
        __break(0xC471u);
        JUMPOUT(0x225871FB0);
      }

      v36 = *(*(a2 + 96) + 16);
      *a3 = v44;
      v32 = *(v36 + 8);
      goto LABEL_39;
    }

    if (*(a2 + 108) <= 2u)
    {
      __break(0xC471u);
      JUMPOUT(0x225871FE0);
    }

    WGSL::TypeChecker::accessMode(&v44, v6, *(*(a2 + 96) + 16));
    if (!v46)
    {
      LOBYTE(v28) = v44;
      goto LABEL_34;
    }

    if (v46 == 1)
    {
      v34 = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
        *a3 = v34;
        v35 = v45;
LABEL_63:
        *(a3 + 8) = v35;
        *(a3 + 24) = 1;
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v16);
        }

        return;
      }

      *a3 = 0;
      v32 = v45;
      goto LABEL_39;
    }

    goto LABEL_65;
  }

  v26 = v18[16];
  v27 = v15 != 3;
  if (!v26 && v15 != 3)
  {
    v29 = "runtime-sized arrays can only be used in the <storage> address space";
    v30 = a3;
    v31 = 69;
    goto LABEL_38;
  }

  if (v5 != 2)
  {
    goto LABEL_30;
  }

LABEL_26:
  v28 = 0x10000010001uLL >> (8 * (v15 & 0x1F));
  if (v15 > 5)
  {
    LOBYTE(v28) = 0;
  }

LABEL_34:
  *a3 = WGSL::TypeStore::pointerType(*(v6 + 72), v15, v17, v28);
  *(a3 + 24) = 0;
}

uint64_t std::__function::__func<WGSL::TypeChecker::declareBuiltins(void)::$_1,std::allocator<WGSL::TypeChecker::declareBuiltins(void)::$_1>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D6618;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WGSL::TypeChecker::declareBuiltins(void)::$_1,std::allocator<WGSL::TypeChecker::declareBuiltins(void)::$_1>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression &)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 108) != 1)
  {
    WTF::makeString<WTF::ASCIILiteral>(a3, "'atomic' requires 1 template argument", 0x26uLL);
    v10 = *(a2 + 8);
    goto LABEL_16;
  }

  v5 = *(a1 + 8);
  WGSL::TypeChecker::resolve(&v14, v5, **(a2 + 96));
  if (!v16)
  {
    v8 = *(v5 + 72);
    if (v14 == *(v8 + 56))
    {
      v9 = 176;
      goto LABEL_7;
    }

    if (v14 == *(v8 + 64))
    {
      v9 = 184;
LABEL_7:
      *a3 = *(v8 + v9);
      *(a3 + 24) = 0;
      return;
    }

    WTF::makeString<WTF::ASCIILiteral>(&v13, "atomic only supports i32 or u32 types", 0x26uLL);
    if (!*(a2 + 108))
    {
      __break(0xC471u);
      return;
    }

    v12 = **(a2 + 96);
    *a3 = v13;
    v10 = *(v12 + 8);
LABEL_16:
    *(a3 + 8) = v10;
    *(a3 + 24) = 1;
    return;
  }

  if (v16 != 1)
  {
    mpark::throw_bad_variant_access(v6);
  }

  v11 = v14;
  if (!v14)
  {
    *a3 = 0;
    v10 = v15;
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  *a3 = v11;
  *(a3 + 8) = v15;
  *(a3 + 24) = 1;
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }
}

__n128 std::__function::__func<std::experimental::fundamentals_v3::expected<void,WGSL::CompilationMessage> WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_2,int>(WTF::ASCIILiteral,WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_2 const&,int &&)::{lambda(WGSL::AST::ElaboratedTypeExpression &)#1},std::allocator<WGSL::AST::ElaboratedTypeExpression &>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D6660;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

double std::__function::__func<std::experimental::fundamentals_v3::expected<void,WGSL::CompilationMessage> WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_2,int>(WTF::ASCIILiteral,WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_2 const&,int &&)::{lambda(WGSL::AST::ElaboratedTypeExpression &)#1},std::allocator<WGSL::AST::ElaboratedTypeExpression &>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 108) == 1)
  {
    v6 = *(a1 + 8);
    WGSL::TypeChecker::resolve(&v24, v6, **(a2 + 96));
    if (v26)
    {
      if (v26 != 1)
      {
        mpark::throw_bad_variant_access(v7);
      }

      v22 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
        *a3 = v22;
        *&v19 = v25;
        *(a3 + 8) = v25;
        *(a3 + 24) = 1;
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v8);
        }
      }

      else
      {
        *a3 = 0;
        *&v19 = v25;
        *(a3 + 8) = v25;
        *(a3 + 24) = 1;
      }
    }

    else
    {
      if (!v24)
      {
        goto LABEL_16;
      }

      v9 = v24;
      while (*(v9 + 48) == 10)
      {
        v9 = *(v9 + 1);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      if (*(v9 + 48) || ((v10 = *v9, v10 >= 6) ? (v11 = v10 == 7) : (v11 = 1), !v11))
      {
LABEL_16:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v15 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          v16 = v15[1];
          if ((v16 & 0x80000000) == 0)
          {
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(&v27, v16, (*(v15 + 16) >> 2) & 1, v15);
            v18 = v27;
            if (v27)
            {
LABEL_19:
              *a3 = v18;
              v19 = *(a2 + 8);
              *(a3 + 8) = v19;
              *(a3 + 24) = 1;
              if (v15)
              {
                if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v15, v17);
                }

                if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v15, v17);
                }
              }

              return *&v19;
            }
          }
        }

        else
        {
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(&v27, 0, 1, 0);
          v18 = v27;
          if (v27)
          {
            goto LABEL_19;
          }
        }

        __break(0xC471u);
        JUMPOUT(0x22587252CLL);
      }

      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      v14 = (*(v6 + 72) + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      *a3 = v12(v14, *(a1 + 40));
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v25 = *(a2 + 72);
    v24 = off_2838D37C0;
    v20 = *(a2 + 88);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v26 = v20;
    WTF::makeString<char,WGSL::AST::Identifier,WTF::ASCIILiteral>(&v27, v20, "' requires 1 template argument", 31);
    *a3 = v27;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 24) = 1;
    WGSL::AST::Identifier::~Identifier(&v24, v21);
  }

  return *&v19;
}

uint64_t WTF::makeString<char,WGSL::AST::Identifier,WTF::ASCIILiteral>(uint64_t result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4 - 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >> 31)
  {
    __break(0xC471u);
    goto LABEL_120;
  }

  v7 = result;
  if (a2)
  {
    v8 = *(a2 + 4);
    if (((v8 | v4) & 0x80000000) != 0)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v8 = 0;
    if ((v4 & 0x80000000) != 0)
    {
LABEL_118:
      *v7 = 0;
      __break(0xC471u);
      goto LABEL_121;
    }
  }

  v9 = __OFADD__(v8, v4);
  v10 = v8 + v4;
  if (v9)
  {
    goto LABEL_118;
  }

  v11 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    goto LABEL_118;
  }

  if (!a2 || (*(a2 + 16) & 4) != 0)
  {
    if (v10 == -1)
    {
      goto LABEL_30;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_118;
    }

    result = WTF::tryFastCompactMalloc((v11 + 20));
    v13 = v103;
    if (!v103)
    {
      goto LABEL_118;
    }

    *v103 = 2;
    *(v103 + 4) = v11;
    *(v103 + 20) = 39;
    *(v103 + 8) = v103 + 20;
    *(v103 + 16) = 4;
    v19 = (v103 + 21);
    if (!a2)
    {
      v26 = 0;
      goto LABEL_66;
    }

    v20 = v11 - 1;
    v21 = *(a2 + 8);
    v22 = *(a2 + 4);
    if ((*(a2 + 16) & 4) != 0)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          *v19 = v21->i8[0];
        }

        else
        {
          result = memcpy((v103 + 21), v21, v22);
        }
      }

LABEL_65:
      v26 = *(a2 + 4);
      if (v20 < v26)
      {
LABEL_120:
        __break(1u);
LABEL_121:
        JUMPOUT(0x225872B64);
      }

LABEL_66:
      if (v4)
      {
        if (v4 == 1)
        {
          v19[v26] = a3->i8[0];
        }

        else
        {
          result = memcpy(&v19[v26], a3, v4);
        }
      }

      goto LABEL_88;
    }

    v23 = &v19[v22];
    if (v22 < 0x10)
    {
      v24 = v103 + 21;
      if (v19 == v23)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v24 = v103 + 21;
      do
      {
        v25 = vld2q_s8(v21->i8);
        v21 += 2;
        *v24 = v25;
        v24 += 16;
      }

      while (v24 != &v19[v22 & 0xFFFFFFF0]);
      if (v24 == v23)
      {
        goto LABEL_65;
      }
    }

    v37 = v103 + v22;
    v38 = v103 + v22 - v24 + 21;
    if (v38 < 4 || (v24 < &v21[2].u64[1] + 2 * v37 + -2 * v24 + 2 ? (v39 = v21 >= v37 + 21) : (v39 = 1), !v39))
    {
      v41 = v24;
      v42 = v21;
      goto LABEL_49;
    }

    if (v38 >= 0x20)
    {
      v40 = v38 & 0xFFFFFFFFFFFFFFE0;
      v82 = v21 + 2;
      v83 = (v24 + 16);
      v84 = v38 & 0xFFFFFFFFFFFFFFE0;
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
      if (v38 == v40)
      {
        goto LABEL_65;
      }

      if ((v38 & 0x1C) == 0)
      {
        v42 = (v21 + 2 * v40);
        v41 = (v24 + v40);
        goto LABEL_49;
      }
    }

    else
    {
      v40 = 0;
    }

    v41 = (v24 + (v38 & 0xFFFFFFFFFFFFFFFCLL));
    v42 = (v21 + 2 * (v38 & 0xFFFFFFFFFFFFFFFCLL));
    v89 = (v21 + 2 * v40);
    v90 = (v24 + v40);
    v91 = v40 - (v38 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v92 = *v89++;
      *v90++ = vuzp1_s8(v92, v92).u32[0];
      v91 += 4;
    }

    while (v91);
    if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_65;
    }

    do
    {
LABEL_49:
      v43 = v42->i8[0];
      v42 = (v42 + 2);
      *v41++ = v43;
    }

    while (v41 != v23);
    goto LABEL_65;
  }

  if (v10 == -1)
  {
LABEL_30:
    v13 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_88;
  }

  if (v11 > 0x7FFFFFEF)
  {
    goto LABEL_118;
  }

  result = WTF::tryFastCompactMalloc((2 * v11 + 20));
  v13 = v103;
  if (!v103)
  {
    goto LABEL_118;
  }

  v14 = a4;
  *v103 = 2;
  *(v103 + 4) = v11;
  *(v103 + 20) = 39;
  *(v103 + 8) = v103 + 20;
  *(v103 + 16) = 0;
  v15 = v11 - 1;
  v16 = (v103 + 22);
  v17 = *(a2 + 8);
  v18 = *(a2 + 4);
  if ((*(a2 + 16) & 4) != 0)
  {
    v27 = &v16[v18];
    if (v18 < 0x40)
    {
      v28 = v103 + 22;
    }

    else
    {
      v28 = &v16[v18 & 0xFFFFFFC0];
      v29 = 0uLL;
      v30 = (v103 + 22);
      do
      {
        v104.val[0] = *v17;
        v31 = v17[1];
        v106.val[0] = v17[2];
        v32 = v17[3];
        v17 += 4;
        v33 = v32;
        v106.val[1] = 0uLL;
        v108.val[0] = v31;
        v104.val[1] = 0uLL;
        v34 = v30;
        vst2q_s8(v34, v104);
        v34 += 32;
        v108.val[1] = 0uLL;
        vst2q_s8(v34, v108);
        v35 = v30 + 64;
        vst2q_s8(v35, v106);
        v36 = v30 + 96;
        vst2q_s8(v36, *(&v29 - 1));
        v30 += 128;
      }

      while (v30 != v28);
    }

    if (v28 == v27)
    {
      goto LABEL_71;
    }

    v44 = v103 + 2 * v18 - v28 + 20;
    if (v44 < 0xE || (v28 < v17->u64 + (v44 >> 1) + 1 ? (v45 = v17 >= (v44 & 0xFFFFFFFFFFFFFFFELL) + v28 + 2) : (v45 = 1), !v45))
    {
      v48 = v17;
      v49 = v28;
      goto LABEL_62;
    }

    v46 = (v44 >> 1) + 1;
    if (v44 >= 0x3E)
    {
      v47 = v46 & 0xFFFFFFFFFFFFFFE0;
      v93 = (v28 + 32);
      v94 = &v17[1];
      v95 = v46 & 0xFFFFFFFFFFFFFFE0;
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
      if (v46 == v47)
      {
        goto LABEL_71;
      }

      if ((v46 & 0x18) == 0)
      {
        v49 = (v28 + 2 * v47);
        v48 = (v17 + v47);
        goto LABEL_62;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = (v17 + (v46 & 0xFFFFFFFFFFFFFFF8));
    v49 = (v28 + 2 * (v46 & 0xFFFFFFFFFFFFFFF8));
    v99 = (v28 + 2 * v47);
    v100 = &v17->i8[v47];
    v101 = v47 - (v46 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v102 = *v100++;
      *v99++ = vmovl_u8(v102);
      v101 += 8;
    }

    while (v101);
    if (v46 == (v46 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_71;
    }

    do
    {
LABEL_62:
      v50 = v48->u8[0];
      v48 = (v48 + 1);
      *v49++ = v50;
    }

    while (v49 != v27);
    goto LABEL_71;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      *v16 = v17->i16[0];
    }

    else
    {
      result = memcpy((v103 + 22), v17, 2 * v18);
      v14 = a4;
    }
  }

LABEL_71:
  v51 = *(a2 + 4);
  if (v15 < v51)
  {
    goto LABEL_120;
  }

  v52 = &v16[v51];
  v53 = (v52 + 2 * v4);
  if (v4 >= 0x40)
  {
    v54 = v52 + 2 * (v4 & 0x7FFFFFC0);
    v55 = 0uLL;
    do
    {
      v105.val[0] = *a3;
      v56 = a3[1];
      v107.val[0] = a3[2];
      v57 = a3[3];
      a3 += 4;
      v58 = v57;
      v107.val[1] = 0uLL;
      v109.val[0] = v56;
      v105.val[1] = 0uLL;
      v59 = v52;
      vst2q_s8(v59, v105);
      v59 += 32;
      v109.val[1] = 0uLL;
      vst2q_s8(v59, v109);
      v60 = (v52 + 64);
      vst2q_s8(v60, v107);
      v61 = (v52 + 96);
      vst2q_s8(v61, *(&v55 - 1));
      v52 += 128;
    }

    while (v52 != v54);
    v52 = v54;
  }

  if (v52 != v53)
  {
    v62 = v103 + 2 * (v14 + v51) - v52;
    if (v14)
    {
      v63 = -2;
    }

    else
    {
      v63 = 0;
    }

    v64 = v62 + v63 + 20;
    if (v64 < 0xE || (v14 ? (v65 = -2) : (v65 = 0), (v66 = v62 + v65 + 20, v52 < a3->u64 + (v66 >> 1) + 1) && a3 < (v66 & 0xFFFFFFFFFFFFFFFELL) + v52 + 2))
    {
      v67 = a3;
      v68 = v52;
      goto LABEL_87;
    }

    v70 = (v64 >> 1) + 1;
    if (v64 >= 0x3E)
    {
      v71 = v70 & 0xFFFFFFFFFFFFFFE0;
      v72 = (v52 + 32);
      v73 = &a3[1];
      v74 = v70 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v75 = *v73[-2].i8;
        v76 = vmovl_u8(*v73);
        v77 = vmovl_high_u8(*v73->i8);
        v72[-2] = vmovl_u8(*v75.i8);
        v72[-1] = vmovl_high_u8(v75);
        *v72 = v76;
        v72[1] = v77;
        v72 += 4;
        v73 += 4;
        v74 -= 32;
      }

      while (v74);
      if (v70 == v71)
      {
        goto LABEL_88;
      }

      if ((v70 & 0x18) == 0)
      {
        v68 = (v52 + 2 * v71);
        v67 = (a3 + v71);
        do
        {
LABEL_87:
          v69 = v67->u8[0];
          v67 = (v67 + 1);
          *v68++ = v69;
        }

        while (v68 != v53);
        goto LABEL_88;
      }
    }

    else
    {
      v71 = 0;
    }

    v67 = (a3 + (v70 & 0xFFFFFFFFFFFFFFF8));
    v68 = (v52 + 2 * (v70 & 0xFFFFFFFFFFFFFFF8));
    v78 = (v52 + 2 * v71);
    v79 = &a3->i8[v71];
    v80 = v71 - (v70 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v81 = *v79++;
      *v78++ = vmovl_u8(v81);
      v80 += 8;
    }

    while (v80);
    if (v70 != (v70 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_87;
    }
  }

LABEL_88:
  *v7 = v13;
  return result;
}

__n128 std::__function::__func<std::experimental::fundamentals_v3::expected<void,WGSL::CompilationMessage> WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_3,int,int>(WTF::ASCIILiteral,WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_3 const&,int,int &&)::{lambda(WGSL::AST::ElaboratedTypeExpression &)#1},std::allocator<WGSL::AST::ElaboratedTypeExpression &>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D66A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<std::experimental::fundamentals_v3::expected<void,WGSL::CompilationMessage> WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_3,int,int>(WTF::ASCIILiteral,WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_3 const&,int,int &&)::{lambda(WGSL::AST::ElaboratedTypeExpression &)#1},std::allocator<WGSL::AST::ElaboratedTypeExpression &>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 108) == 1)
  {
    v6 = *(a1 + 8);
    WGSL::TypeChecker::resolve(&v26, v6, **(a2 + 96));
    if (!v28)
    {
      if (v26)
      {
        v9 = v26;
        while (*(v9 + 48) == 10)
        {
          v9 = *(v9 + 1);
          if (!v9)
          {
            goto LABEL_15;
          }
        }

        if (!*(v9 + 48))
        {
          v10 = *v9;
          v11 = v10 > 5;
          v12 = (1 << v10) & 0x39;
          if (!v11 && v12 != 0)
          {
            v14 = *(a1 + 16);
            v15 = *(a1 + 24);
            v16 = (*(v6 + 72) + (v15 >> 1));
            if (v15)
            {
              v14 = *(*v16 + v14);
            }

            *a3 = v14(v16, *(a1 + 40), *(a1 + 44));
            *(a3 + 24) = 0;
            return *&v21;
          }
        }
      }

LABEL_15:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v17 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        v18 = v17[1];
        if ((v18 & 0x80000000) == 0)
        {
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(&v29, v18, (*(v17 + 16) >> 2) & 1, v17);
          v20 = v29;
          if (v29)
          {
LABEL_18:
            *a3 = v20;
            v21 = *(a2 + 8);
            *(a3 + 8) = v21;
            *(a3 + 24) = 1;
            if (v17)
            {
              if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v19);
              }

              if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v19);
              }
            }

            return *&v21;
          }
        }
      }

      else
      {
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(&v29, 0, 1, 0);
        v20 = v29;
        if (v29)
        {
          goto LABEL_18;
        }
      }

      __break(0xC471u);
      JUMPOUT(0x225872EC8);
    }

    if (v28 != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

    v24 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      *a3 = v24;
      *&v21 = v27;
      *(a3 + 8) = v27;
      *(a3 + 24) = 1;
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v8);
      }
    }

    else
    {
      *a3 = 0;
      *&v21 = v27;
      *(a3 + 8) = v27;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    v27 = *(a2 + 72);
    v26 = off_2838D37C0;
    v22 = *(a2 + 88);
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    v28 = v22;
    WTF::makeString<char,WGSL::AST::Identifier,WTF::ASCIILiteral>(&v29, v22, "' requires 1 template argument", 31);
    *a3 = v29;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 24) = 1;
    WGSL::AST::Identifier::~Identifier(&v26, v23);
  }

  return *&v21;
}

__n128 std::__function::__func<std::experimental::fundamentals_v3::expected<void,WGSL::CompilationMessage> WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(WGSL::Types::Texture::Kind,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_4,WGSL::Types::Texture::Kind>(WTF::ASCIILiteral,WGSL::Type const* (WGSL::TypeStore::*)(WGSL::Types::Texture::Kind,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_4 const&,WGSL::Types::Texture::Kind &&)::{lambda(WGSL::AST::ElaboratedTypeExpression &)#1},std::allocator<WGSL::AST::ElaboratedTypeExpression &>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D66F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

double std::__function::__func<std::experimental::fundamentals_v3::expected<void,WGSL::CompilationMessage> WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(WGSL::Types::Texture::Kind,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_4,WGSL::Types::Texture::Kind>(WTF::ASCIILiteral,WGSL::Type const* (WGSL::TypeStore::*)(WGSL::Types::Texture::Kind,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_4 const&,WGSL::Types::Texture::Kind &&)::{lambda(WGSL::AST::ElaboratedTypeExpression &)#1},std::allocator<WGSL::AST::ElaboratedTypeExpression &>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 108) == 1)
  {
    v6 = *(a1 + 8);
    WGSL::TypeChecker::resolve(&v24, v6, **(a2 + 96));
    if (v26)
    {
      if (v26 != 1)
      {
        mpark::throw_bad_variant_access(v7);
      }

      v22 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
        *a3 = v22;
        *&v19 = v25;
        *(a3 + 8) = v25;
        *(a3 + 24) = 1;
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v8);
        }
      }

      else
      {
        *a3 = 0;
        *&v19 = v25;
        *(a3 + 8) = v25;
        *(a3 + 24) = 1;
      }
    }

    else
    {
      if (!v24)
      {
        goto LABEL_16;
      }

      v9 = v24;
      while (*(v9 + 48) == 10)
      {
        v9 = *(v9 + 1);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      if (*(v9 + 48) || ((v10 = *v9, v10 >= 4) ? (v11 = v10 == 5) : (v11 = 1), !v11))
      {
LABEL_16:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v15 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          v16 = v15[1];
          if ((v16 & 0x80000000) == 0)
          {
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(&v27, v16, (*(v15 + 16) >> 2) & 1, v15);
            v18 = v27;
            if (v27)
            {
LABEL_19:
              *a3 = v18;
              v19 = *(a2 + 8);
              *(a3 + 8) = v19;
              *(a3 + 24) = 1;
              if (v15)
              {
                if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v15, v17);
                }

                if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v15, v17);
                }
              }

              return *&v19;
            }
          }
        }

        else
        {
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(&v27, 0, 1, 0);
          v18 = v27;
          if (v27)
          {
            goto LABEL_19;
          }
        }

        __break(0xC471u);
        JUMPOUT(0x225873234);
      }

      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      v14 = (*(v6 + 72) + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      *a3 = v12(v14, *(a1 + 40));
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v25 = *(a2 + 72);
    v24 = off_2838D37C0;
    v20 = *(a2 + 88);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v26 = v20;
    WTF::makeString<char,WGSL::AST::Identifier,WTF::ASCIILiteral>(&v27, v20, "' requires 1 template argument", 31);
    *a3 = v27;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 24) = 1;
    WGSL::AST::Identifier::~Identifier(&v24, v21);
  }

  return *&v19;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::OverloadedDeclaration,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::OverloadedDeclaration>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  v70 = *a1;
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

  v7 = WTF::fastMalloc((48 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 48 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v71 = 0;
    v73 = v5;
    v12 = v70;
    while (1)
    {
      v14 = v12 + 48 * v11;
      v15 = *v14;
      if (*v14 == -1)
      {
        goto LABEL_11;
      }

      if (v15)
      {
        break;
      }

      v16 = *(v14 + 44);
      v17 = *(v14 + 32);
      if (!v16)
      {
        goto LABEL_52;
      }

      v18 = v17 + 88 * v16;
      do
      {
        v19 = *(v17 + 80);
        *(v17 + 80) = 0;
        if (v19)
        {
          if (*(v19 + 24) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v19);
          }

          *(v19 + 24) = -1;
          MEMORY[0x22AA68560](v19, 0x1062C401A182E57);
        }

        v20 = *(v17 + 60);
        v21 = *(v17 + 48);
        if (v20)
        {
          v22 = 8 * v20;
          do
          {
            v23 = *v21;
            *v21 = 0;
            if (v23)
            {
              if (*(v23 + 24) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v23);
              }

              *(v23 + 24) = -1;
              MEMORY[0x22AA68560](v23, 0x1062C401A182E57);
            }

            v21 = (v21 + 8);
            v22 -= 8;
          }

          while (v22);
          v21 = *(v17 + 48);
        }

        if ((v17 + 64) == v21 || v21 == 0)
        {
          v25 = *(v17 + 24);
          if ((v17 + 40) == v25 || v25 == 0)
          {
LABEL_39:
            v27 = *v17;
            if (v17 + 16 == *v17)
            {
              goto LABEL_16;
            }

            goto LABEL_46;
          }
        }

        else
        {
          *(v17 + 48) = 0;
          *(v17 + 56) = 0;
          WTF::fastFree(v21, v8);
          v25 = *(v17 + 24);
          if ((v17 + 40) == v25 || v25 == 0)
          {
            goto LABEL_39;
          }
        }

        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        WTF::fastFree(v25, v8);
        v27 = *v17;
        if (v17 + 16 == *v17)
        {
          goto LABEL_16;
        }

LABEL_46:
        if (v27)
        {
          *v17 = 0;
          *(v17 + 8) = 0;
          WTF::fastFree(v27, v8);
        }

LABEL_16:
        v17 += 88;
      }

      while (v17 != v18);
      v17 = *(v14 + 32);
      v12 = v70;
LABEL_52:
      if (v17)
      {
        *(v14 + 32) = 0;
        *(v14 + 40) = 0;
        WTF::fastFree(v17, v8);
      }

      v33 = *v14;
      *v14 = 0;
      if (v33)
      {
        if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v8);
        }
      }

LABEL_11:
      if (++v11 == v73)
      {
        goto LABEL_142;
      }
    }

    v29 = *a1;
    if (*a1)
    {
      v30 = *(v29 - 8);
      v31 = *(v15 + 4);
      if (v31 >= 0x100)
      {
        goto LABEL_50;
      }

LABEL_58:
      v32 = WTF::StringImpl::hashSlowCase(v15);
    }

    else
    {
      v30 = 0;
      v31 = *(v15 + 4);
      if (v31 < 0x100)
      {
        goto LABEL_58;
      }

LABEL_50:
      v32 = v31 >> 8;
    }

    v34 = 0;
    do
    {
      v35 = v29 + 48 * (v32 & v30);
      v32 = ++v34 + (v32 & v30);
    }

    while (*v35);
    v36 = *(v35 + 32);
    v72 = (v35 + 32);
    v37 = *(v35 + 44);
    if (v37)
    {
      v38 = v36 + 88 * v37;
      while (1)
      {
        v39 = *(v36 + 80);
        *(v36 + 80) = 0;
        if (v39)
        {
          if (*(v39 + 24) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v39);
          }

          *(v39 + 24) = -1;
          MEMORY[0x22AA68560](v39, 0x1062C401A182E57);
        }

        v40 = *(v36 + 60);
        v41 = *(v36 + 48);
        if (v40)
        {
          v42 = 8 * v40;
          do
          {
            v43 = *v41;
            *v41 = 0;
            if (v43)
            {
              if (*(v43 + 24) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v43);
              }

              *(v43 + 24) = -1;
              MEMORY[0x22AA68560](v43, 0x1062C401A182E57);
            }

            v41 = (v41 + 8);
            v42 -= 8;
          }

          while (v42);
          v41 = *(v36 + 48);
        }

        if ((v36 + 64) == v41 || v41 == 0)
        {
          v45 = *(v36 + 24);
          if ((v36 + 40) == v45 || v45 == 0)
          {
LABEL_86:
            v47 = *v36;
            if (v36 + 16 != *v36)
            {
              goto LABEL_93;
            }

            goto LABEL_63;
          }
        }

        else
        {
          *(v36 + 48) = 0;
          *(v36 + 56) = 0;
          WTF::fastFree(v41, v8);
          v45 = *(v36 + 24);
          if ((v36 + 40) == v45 || v45 == 0)
          {
            goto LABEL_86;
          }
        }

        *(v36 + 24) = 0;
        *(v36 + 32) = 0;
        WTF::fastFree(v45, v8);
        v47 = *v36;
        if (v36 + 16 != *v36)
        {
LABEL_93:
          if (v47)
          {
            *v36 = 0;
            *(v36 + 8) = 0;
            WTF::fastFree(v47, v8);
          }
        }

LABEL_63:
        v36 += 88;
        if (v36 == v38)
        {
          v36 = *v72;
          break;
        }
      }
    }

    if (v36)
    {
      *(v35 + 32) = 0;
      *(v35 + 40) = 0;
      WTF::fastFree(v36, v8);
    }

    v49 = *v35;
    *v35 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v8);
    }

    v50 = *v14;
    *v14 = 0;
    *v35 = v50;
    v51 = *(v14 + 8);
    *(v35 + 24) = *(v14 + 24);
    *(v35 + 8) = v51;
    *v72 = 0;
    *(v35 + 40) = 0;
    v52 = *(v14 + 32);
    *(v14 + 32) = 0;
    *(v35 + 32) = v52;
    LODWORD(v52) = *(v14 + 40);
    *(v14 + 40) = 0;
    *(v35 + 40) = v52;
    LODWORD(v52) = *(v14 + 44);
    *(v14 + 44) = 0;
    *(v35 + 44) = v52;
    v53 = *(v14 + 44);
    v54 = *(v14 + 32);
    if (!v53)
    {
      goto LABEL_136;
    }

    v55 = v54 + 88 * v53;
    while (1)
    {
      v56 = *(v54 + 80);
      *(v54 + 80) = 0;
      if (v56)
      {
        if (*(v56 + 24) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v56);
        }

        *(v56 + 24) = -1;
        MEMORY[0x22AA68560](v56, 0x1062C401A182E57);
      }

      v57 = *(v54 + 60);
      v58 = *(v54 + 48);
      if (v57)
      {
        v59 = 8 * v57;
        do
        {
          v60 = *v58;
          *v58 = 0;
          if (v60)
          {
            if (*(v60 + 24) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::AbstractVector,WGSL::AbstractMatrix,WGSL::AbstractTexture,WGSL::AbstractTextureStorage,WGSL::AbstractChannelFormat,WGSL::AbstractReference,WGSL::AbstractPointer,WGSL::AbstractArray,WGSL::AbstractAtomic,WGSL::TypeVariable,WGSL::Type const*>,(mpark::detail::Trait)1> &>(v60);
            }

            *(v60 + 24) = -1;
            MEMORY[0x22AA68560](v60, 0x1062C401A182E57);
          }

          v58 = (v58 + 8);
          v59 -= 8;
        }

        while (v59);
        v58 = *(v54 + 48);
      }

      if ((v54 + 64) == v58 || v58 == 0)
      {
        v62 = *(v54 + 24);
        if ((v54 + 40) == v62 || v62 == 0)
        {
LABEL_126:
          v64 = *v54;
          if (v54 + 16 != *v54)
          {
            goto LABEL_133;
          }

          goto LABEL_103;
        }
      }

      else
      {
        *(v54 + 48) = 0;
        *(v54 + 56) = 0;
        WTF::fastFree(v58, v8);
        v62 = *(v54 + 24);
        if ((v54 + 40) == v62 || v62 == 0)
        {
          goto LABEL_126;
        }
      }

      *(v54 + 24) = 0;
      *(v54 + 32) = 0;
      WTF::fastFree(v62, v8);
      v64 = *v54;
      if (v54 + 16 != *v54)
      {
LABEL_133:
        if (v64)
        {
          *v54 = 0;
          *(v54 + 8) = 0;
          WTF::fastFree(v64, v8);
        }
      }

LABEL_103:
      v54 += 88;
      if (v54 == v55)
      {
        v54 = *(v14 + 32);
LABEL_136:
        if (v54)
        {
          *(v14 + 32) = 0;
          *(v14 + 40) = 0;
          WTF::fastFree(v54, v8);
        }

        v66 = *v14;
        *v14 = 0;
        if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v66, v8);
        }

        v13 = v71;
        if (v14 == a3)
        {
          v13 = v35;
        }

        v71 = v13;
        v12 = v70;
        goto LABEL_11;
      }
    }
  }

  v71 = 0;
  result = 0;
  v12 = v70;
  if (v70)
  {
LABEL_142:
    WTF::fastFree((v12 - 16), v8);
    return v71;
  }

  return result;
}

void *WTF::Vector<WGSL::OverloadCandidate,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WGSL::OverloadCandidate>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WGSL::OverloadCandidate,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = v3;
  v5 = *(a1 + 12);
  v6 = *a1;
  v7 = *a1 + 88 * v5;
  v8 = (v7 + 16);
  *v7 = v7 + 16;
  *(v7 + 8) = 1;
  v9 = (v3 + 16);
  v10 = *v3;
  if (*v3 == v3 + 16)
  {
    v12 = *(v3 + 12);
    if (v12)
    {
      v13 = 8 * v12;
      if ((v13 - 8) < 0x38)
      {
        goto LABEL_9;
      }

      if (v6 + 88 * v5 - v3 < 0x20)
      {
        goto LABEL_9;
      }

      v14 = ((v13 - 8) >> 3) + 1;
      v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
      v8 = (v8 + v15);
      v9 = (v9 + v15);
      v16 = (v3 + 32);
      v17 = (88 * v5 + v6 + 32);
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
LABEL_9:
        v20 = v3 + v13 + 16;
        do
        {
          v21 = *v9++;
          *v8++ = v21;
        }

        while (v9 != v20);
      }
    }

    v11 = *(v3 + 8);
  }

  else
  {
    *v3 = v9;
    *v7 = v10;
    v11 = *(v3 + 8);
    *(v3 + 8) = 1;
  }

  *(v7 + 8) = v11;
  v22 = *(v3 + 12);
  *(v3 + 12) = 0;
  *(v7 + 12) = v22;
  *(v7 + 24) = v7 + 40;
  *(v7 + 32) = 2;
  v23 = *(v3 + 24);
  v24 = (v3 + 40);
  if (v23 == v3 + 40)
  {
    memcpy((v7 + 40), v24, 4 * *(v3 + 36));
    v25 = *(v4 + 32);
  }

  else
  {
    *(v3 + 24) = v24;
    *(v7 + 24) = v23;
    v25 = *(v3 + 32);
    *(v3 + 32) = 2;
  }

  *(v7 + 32) = v25;
  v26 = *(v4 + 36);
  *(v4 + 36) = 0;
  *(v7 + 36) = v26;
  result = (v7 + 64);
  *(v7 + 48) = v7 + 64;
  *(v7 + 56) = 2;
  v28 = *(v4 + 48);
  v29 = (v4 + 64);
  if (v28 == v4 + 64)
  {
    result = memcpy(result, v29, 8 * *(v4 + 60));
    v30 = *(v4 + 56);
  }

  else
  {
    *(v4 + 48) = v29;
    *(v7 + 48) = v28;
    v30 = *(v4 + 56);
    *(v4 + 56) = 2;
  }

  *(v7 + 56) = v30;
  v31 = *(v4 + 60);
  *(v4 + 60) = 0;
  *(v7 + 60) = v31;
  v32 = *(v4 + 80);
  *(v4 + 80) = 0;
  *(v7 + 80) = v32;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WGSL::OverloadCandidate,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 88 * *(a1 + 12) <= a3)
  {
    WTF::Vector<WGSL::OverloadCandidate,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WGSL::OverloadCandidate,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

void WTF::Vector<WGSL::OverloadCandidate,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
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

  if (v3 >= 0x2E8BA2F)
  {
    __break(0xC471u);
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 12);
    if (v3 <= 0x10)
    {
      v3 = 16;
    }

    v7 = 88 * v3;
    v8 = WTF::fastMalloc((88 * v3));
    *(a1 + 8) = v7 / 0x58;
    *a1 = v8;
    if (v6)
    {
      v10 = v8;
      v11 = (v5 + 88 * v6);
      v12 = v8 - v5;
      v13 = v5;
      do
      {
        v17 = (v10 + 16);
        *v10 = v10 + 16;
        *(v10 + 8) = 1;
        v18 = (v13 + 16);
        v19 = *v13;
        if (*v13 == (v13 + 16))
        {
          v21 = *(v13 + 3);
          if (v21)
          {
            v22 = 8 * v21;
            if ((v22 - 8) < 0x18)
            {
              goto LABEL_21;
            }

            if (v12 < 0x20)
            {
              goto LABEL_21;
            }

            v23 = ((v22 - 8) >> 3) + 1;
            v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL);
            v17 = (v17 + v24);
            v18 = (v18 + v24);
            v25 = 16;
            v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v27 = (v10 + v25);
              v28 = *(v13 + v25 + 16);
              *v27 = *(v13 + v25);
              v27[1] = v28;
              v25 += 32;
              v26 -= 4;
            }

            while (v26);
            if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_21:
              v29 = v13 + v22 + 16;
              do
              {
                v30 = *v18++;
                *v17++ = v30;
              }

              while (v18 != v29);
            }
          }

          v20 = *(v13 + 2);
        }

        else
        {
          *v13 = v18;
          *v10 = v19;
          v20 = *(v13 + 2);
          *(v13 + 2) = 1;
        }

        *(v10 + 8) = v20;
        v31 = *(v13 + 3);
        *(v13 + 3) = 0;
        *(v10 + 12) = v31;
        *(v10 + 24) = v10 + 40;
        *(v10 + 32) = 2;
        v32 = *(v13 + 3);
        v33 = v13 + 40;
        if (v32 == (v13 + 40))
        {
          memcpy((v10 + 40), v33, 4 * *(v13 + 9));
          v34 = *(v13 + 8);
        }

        else
        {
          *(v13 + 3) = v33;
          *(v10 + 24) = v32;
          v34 = *(v13 + 8);
          *(v13 + 8) = 2;
        }

        *(v10 + 32) = v34;
        v35 = *(v13 + 9);
        *(v13 + 9) = 0;
        *(v10 + 36) = v35;
        *(v10 + 48) = v10 + 64;
        *(v10 + 56) = 2;
        v36 = *(v13 + 6);
        v37 = v13 + 64;
        if (v36 == (v13 + 64))
        {
          memcpy((v10 + 64), v37, 8 * *(v13 + 15));
          v14 = *(v13 + 14);
        }

        else
        {
          *(v13 + 6) = v37;
          *(v10 + 48) = v36;
          v14 = *(v13 + 14);
          *(v13 + 14) = 2;
        }

        *(v10 + 56) = v14;
        v15 = *(v13 + 15);
        *(v13 + 15) = 0;
        *(v10 + 60) = v15;
        v16 = *(v13 + 10);
        *(v13 + 10) = 0;
        *(v10 + 80) = v16;
        WGSL::OverloadCandidate::~OverloadCandidate(v13, v37);
        v10 += 88;
        v13 = (v13 + 88);
      }

      while (v13 != v11);
    }

    if (v5)
    {
      if (*a1 == v5)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v5, v9);
    }
  }
}

WTF::StringImpl *WTF::tryMakeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(WTF::StringImpl **a1, int8x16_t *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned __int8 *a6, char *a7)
{
  v111[20] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = a3 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >> 31)
  {
    __break(0xC471u);
    goto LABEL_180;
  }

  WTF::StringPrintStream::StringPrintStream(v111);
  WGSL::Type::dump(a4, v111);
  WTF::StringPrintStream::toString(&v109, v111);
  WTF::StringPrintStream::~StringPrintStream(v111);
  v15 = *(a5 + 8);
  v16 = v15 != 0;
  v17 = v15 - 1;
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 >> 31)
  {
    __break(0xC471u);
    goto LABEL_179;
  }

  v19 = *a5;
  WTF::StringPrintStream::StringPrintStream(v111);
  WGSL::Type::dump(a6, v111);
  WTF::StringPrintStream::toString(&v108, v111);
  WTF::StringPrintStream::~StringPrintStream(v111);
  v22 = v109;
  if (v109)
  {
    v23 = *(v109 + 1);
    v24 = *a7;
    v25 = v108;
    if (v108)
    {
LABEL_11:
      v26 = *(v25 + 1);
      if ((v26 & 0x80000000) == 0)
      {
        v20 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (!v20)
        {
          goto LABEL_17;
        }
      }

LABEL_25:
      *a1 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v23 = 0;
    v24 = *a7;
    v25 = v108;
    if (v108)
    {
      goto LABEL_11;
    }
  }

  v27 = 1;
  if (v20)
  {
    goto LABEL_25;
  }

LABEL_17:
  v20 = __OFADD__(v18, v27);
  v28 = v18 + v27;
  v29 = v20;
  if (v23 < 0)
  {
    goto LABEL_25;
  }

  if (v29)
  {
    goto LABEL_25;
  }

  v20 = __OFADD__(v23, v28);
  v30 = v23 + v28;
  if (v20)
  {
    goto LABEL_25;
  }

  v31 = (v7 + v30);
  if (__OFADD__(v7, v30))
  {
    goto LABEL_25;
  }

  if (v109 && (*(v109 + 16) & 4) == 0)
  {
    v34 = 0;
LABEL_41:
    atomic_fetch_add_explicit(v109, 2u, memory_order_relaxed);
    v25 = v108;
    goto LABEL_42;
  }

  v34 = !v25 || (*(v25 + 16) & 4) != 0;
  if (v109)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  if (!v34)
  {
    if (!v31)
    {
LABEL_90:
      v60 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
      *a1 = v60;
      if (!v25)
      {
        goto LABEL_152;
      }

LABEL_150:
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v21);
      }

      goto LABEL_152;
    }

    if (v31 > 0x7FFFFFEF)
    {
      goto LABEL_88;
    }

    WTF::tryFastCompactMalloc((2 * v31 + 20));
    v37 = v111[0];
    if (!v111[0])
    {
      goto LABEL_88;
    }

    v38 = v111[0] + 20;
    *v111[0] = 2;
    *(v37 + 1) = v31;
    *(v37 + 1) = v37 + 20;
    *(v37 + 4) = 0;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v39 = &v38[2 * v7];
    if (v7 >= 0x40)
    {
      v40 = &v38[2 * (v7 & 0x7FFFFFC0)];
      v41 = 0uLL;
      do
      {
        v112.val[0] = *a2;
        v42 = a2[1];
        v114.val[0] = a2[2];
        v43 = a2[3];
        a2 += 4;
        v44 = v43;
        v114.val[1] = 0uLL;
        v116.val[0] = v42;
        v112.val[1] = 0uLL;
        v45 = v38;
        vst2q_s8(v45, v112);
        v45 += 32;
        v116.val[1] = 0uLL;
        vst2q_s8(v45, v116);
        v46 = v38 + 64;
        vst2q_s8(v46, v114);
        v47 = v38 + 96;
        vst2q_s8(v47, *(&v41 - 1));
        v38 += 128;
      }

      while (v38 != v40);
      v38 = v40;
    }

    if (v38 != v39)
    {
      v48 = (v37 + 2 * a3) - v38;
      v49 = -2;
      if (a3)
      {
        v50 = -2;
      }

      else
      {
        v50 = 0;
      }

      v51 = v48 + v50 + 18;
      if (v51 < 0xE)
      {
        goto LABEL_75;
      }

      if (!a3)
      {
        v49 = 0;
      }

      v52 = v48 + v49 + 18;
      if (v38 < &a2->i8[(v52 >> 1) + 1] && a2 < &v38[(v52 & 0xFFFFFFFFFFFFFFFELL) + 2])
      {
LABEL_75:
        v53 = a2;
        v54 = v38;
        goto LABEL_76;
      }

      v73 = (v51 >> 1) + 1;
      if (v51 >= 0x3E)
      {
        v74 = v73 & 0xFFFFFFFFFFFFFFE0;
        v85 = (v38 + 32);
        v86 = &a2[1];
        v87 = v73 & 0xFFFFFFFFFFFFFFE0;
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
        if (v73 == v74)
        {
          goto LABEL_77;
        }

        if ((v73 & 0x18) == 0)
        {
          v54 = &v38[2 * v74];
          v53 = (a2 + v74);
          do
          {
LABEL_76:
            v55 = v53->u8[0];
            v53 = (v53 + 1);
            *v54 = v55;
            v54 += 2;
          }

          while (v54 != v39);
          goto LABEL_77;
        }
      }

      else
      {
        v74 = 0;
      }

      v53 = (a2 + (v73 & 0xFFFFFFFFFFFFFFF8));
      v54 = &v38[2 * (v73 & 0xFFFFFFFFFFFFFFF8)];
      v91 = &v38[2 * v74];
      v92 = &a2->i8[v74];
      v93 = v74 - (v73 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v94 = *v92++;
        *v91++ = vmovl_u8(v94);
        v93 += 8;
      }

      while (v93);
      if (v73 != (v73 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_76;
      }
    }

LABEL_77:
    v16 = v31 >= v7;
    v56 = v31 - v7;
    if (!v16)
    {
      goto LABEL_179;
    }

    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v57 = v37;
    if (!v22)
    {
      v62 = 0;
      goto LABEL_132;
    }

    v58 = *(v22 + 1);
    v59 = *(v22 + 1);
    if ((*(v22 + 16) & 4) == 0)
    {
      if (v59)
      {
        if (v59 == 1)
        {
          *v39 = v58->i16[0];
        }

        else
        {
          v83 = v39;
          memcpy(v39, v58, 2 * v59);
          v39 = v83;
        }
      }

LABEL_131:
      v62 = *(v22 + 1);
      if (v56 >= v62)
      {
LABEL_132:
        if (v25)
        {
          atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
        }

        v111[0] = v25;
        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(&v39[2 * v62], v56 - v62, v19, v18, v111, v24);
        v84 = v111[0];
        v111[0] = 0;
        if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v84, v21);
        }

        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v21);
        }

        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }

        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v21);
        }

        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }

        *a1 = v57;
        if (!v25)
        {
          goto LABEL_152;
        }

        goto LABEL_150;
      }

LABEL_179:
      __break(1u);
LABEL_180:
      JUMPOUT(0x225874628);
    }

    v63 = &v39[2 * v59];
    if (v59 < 0x40)
    {
      v64 = v39;
    }

    else
    {
      v64 = &v39[2 * (v59 & 0xFFFFFFC0)];
      v65 = 0uLL;
      v66 = v39;
      do
      {
        v113.val[0] = *v58;
        v67 = v58[1];
        v115.val[0] = v58[2];
        v68 = v58[3];
        v58 += 4;
        v69 = v68;
        v115.val[1] = 0uLL;
        v117.val[0] = v67;
        v113.val[1] = 0uLL;
        v70 = v66;
        vst2q_s8(v70, v113);
        v70 += 32;
        v117.val[1] = 0uLL;
        vst2q_s8(v70, v117);
        v71 = v66 + 64;
        vst2q_s8(v71, v115);
        v72 = v66 + 96;
        vst2q_s8(v72, *(&v65 - 1));
        v66 += 128;
      }

      while (v66 != v64);
    }

    if (v64 == v63)
    {
      goto LABEL_131;
    }

    v75 = v37 + 2 * v59 + 2 * a3 - v64;
    v76 = -2;
    if (a3)
    {
      v77 = -2;
    }

    else
    {
      v77 = 0;
    }

    v78 = &v75[v77 + 18];
    if (v78 < 0xE)
    {
      goto LABEL_127;
    }

    if (!a3)
    {
      v76 = 0;
    }

    v79 = &v75[v76 + 18];
    if (v64 < v58->u64 + (v79 >> 1) + 1 && v58 < (v79 & 0xFFFFFFFFFFFFFFFELL) + v64 + 2)
    {
LABEL_127:
      v80 = v58;
      v81 = v64;
      goto LABEL_128;
    }

    v95 = (v78 >> 1) + 1;
    if (v78 >= 0x3E)
    {
      v96 = v95 & 0xFFFFFFFFFFFFFFE0;
      v97 = (v64 + 32);
      v98 = &v58[1];
      v99 = v95 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v100 = *v98[-2].i8;
        v101 = vmovl_u8(*v98);
        v102 = vmovl_high_u8(*v98->i8);
        v97[-2] = vmovl_u8(*v100.i8);
        v97[-1] = vmovl_high_u8(v100);
        *v97 = v101;
        v97[1] = v102;
        v97 += 4;
        v98 += 4;
        v99 -= 32;
      }

      while (v99);
      if (v95 == v96)
      {
        goto LABEL_131;
      }

      if ((v95 & 0x18) == 0)
      {
        v81 = (v64 + 2 * v96);
        v80 = (v58 + v96);
        goto LABEL_128;
      }
    }

    else
    {
      v96 = 0;
    }

    v80 = (v58 + (v95 & 0xFFFFFFFFFFFFFFF8));
    v81 = (v64 + 2 * (v95 & 0xFFFFFFFFFFFFFFF8));
    v103 = (v64 + 2 * v96);
    v104 = &v58->i8[v96];
    v105 = v96 - (v95 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v106 = *v104++;
      *v103++ = vmovl_u8(v106);
      v105 += 8;
    }

    while (v105);
    if (v95 == (v95 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_131;
    }

    do
    {
LABEL_128:
      v82 = v80->u8[0];
      v80 = (v80 + 1);
      *v81 = v82;
      v81 += 2;
    }

    while (v81 != v63);
    goto LABEL_131;
  }

  if (!v31)
  {
    goto LABEL_90;
  }

  if ((v31 & 0x80000000) == 0)
  {
    WTF::tryFastCompactMalloc((v31 + 20));
    v35 = v111[0];
    if (v111[0])
    {
      v36 = v111[0] + 20;
      *v111[0] = 2;
      *(v35 + 1) = v31;
      *(v35 + 1) = v35 + 20;
      *(v35 + 4) = 4;
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      }

      v107 = v35;
      if (v25)
      {
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      }

      if (v7)
      {
        if (v7 == 1)
        {
          *v36 = a2->i8[0];
        }

        else
        {
          memcpy(v35 + 20, a2, v7);
        }
      }

      v61 = v31 - v7;
      if (v31 >= v7)
      {
        if (v22)
        {
          atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        }

        v111[0] = v22;
        if (v25)
        {
          atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
          v110 = v25;
          WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(&v36[v7], v61, v111, v19, v18, &v110, v24);
          if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v21);
          }

          if (!v22)
          {
LABEL_102:
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v21);
            }

            if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v21);
            }

            *a1 = v107;
            if (!v25)
            {
              goto LABEL_152;
            }

            goto LABEL_150;
          }
        }

        else
        {
          v110 = 0;
          WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(&v36[v7], v61, v111, v19, v18, &v110, v24);
          if (!v22)
          {
            goto LABEL_102;
          }
        }

        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }

        goto LABEL_102;
      }

      goto LABEL_179;
    }
  }

LABEL_88:
  *a1 = 0;
  if (v25)
  {
    goto LABEL_150;
  }

LABEL_152:
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

LABEL_26:
  v32 = v108;
  v108 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v21);
  }

  result = v109;
  v109 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v21);
    }
  }

  return result;
}

int8x16_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(int8x16_t *__dst, unint64_t a2, uint64_t *a3, _BYTE *__src, size_t __n, void *a6, char a7)
{
  v9 = __dst;
  v10 = *a3;
  if (!*a3)
  {
    goto LABEL_31;
  }

  v11 = *(v10 + 8);
  v12 = *(v10 + 4);
  if ((*(v10 + 16) & 4) == 0)
  {
    v13 = (__dst + v12);
    if (v12 < 0x10)
    {
      v14 = __dst;
      if (__dst == v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = __dst;
      do
      {
        v15 = vld2q_s8(v11);
        v11 += 32;
        *v14++ = v15;
      }

      while (v14 != &__dst->i8[v12 & 0xFFFFFFF0]);
      if (v14 == v13)
      {
        goto LABEL_24;
      }
    }

    v16 = &__dst->i8[v12];
    v17 = &__dst->i8[v12] - v14;
    if (v17 < 4 || (v14 < &v11[2 * v17] ? (v18 = v11 >= v16) : (v18 = 1), !v18))
    {
      v20 = v14;
      v21 = v11;
      goto LABEL_21;
    }

    if (v17 >= 0x20)
    {
      v19 = v17 & 0xFFFFFFFFFFFFFFE0;
      v58 = (v11 + 32);
      v59 = v14 + 1;
      v60 = v17 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v62 = v58[-2];
        v61 = v58[-1];
        v64 = *v58;
        v63 = v58[1];
        v58 += 4;
        v59[-1] = vuzp1q_s8(v62, v61);
        *v59 = vuzp1q_s8(v64, v63);
        v59 += 2;
        v60 -= 32;
      }

      while (v60);
      if (v17 == v19)
      {
        goto LABEL_24;
      }

      if ((v17 & 0x1C) == 0)
      {
        v21 = &v11[2 * v19];
        v20 = (v14 + v19);
        goto LABEL_21;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = (v14 + (v17 & 0xFFFFFFFFFFFFFFFCLL));
    v21 = &v11[2 * (v17 & 0xFFFFFFFFFFFFFFFCLL)];
    v65 = &v11[2 * v19];
    v66 = (v14->i32 + v19);
    v67 = v19 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v68 = *v65++;
      *v66++ = vuzp1_s8(v68, v68).u32[0];
      v67 += 4;
    }

    while (v67);
    if (v17 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_24;
    }

    do
    {
LABEL_21:
      v22 = *v21;
      v21 += 2;
      v20->i8[0] = v22;
      v20 = (v20 + 1);
    }

    while (v20 != v13);
    goto LABEL_24;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      __dst->i8[0] = *v11;
    }

    else
    {
      v23 = a2;
      v24 = a3;
      v25 = __src;
      v26 = a6;
      __dst = memcpy(__dst, v11, v12);
      a3 = v24;
      a6 = v26;
      a2 = v23;
      __src = v25;
    }
  }

LABEL_24:
  if (*a3)
  {
    v27 = *(*a3 + 4);
    if (a2 < v27)
    {
      goto LABEL_86;
    }

    v28 = *a6;
    if (!*a6)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_31:
  v27 = 0;
  v28 = *a6;
  if (*a6)
  {
LABEL_27:
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  }

LABEL_28:
  v29 = &v9->i8[v27];
  v30 = a2 - v27;
  if (__n)
  {
    if (__n == 1)
    {
      *v29 = *__src;
    }

    else
    {
      __dst = memcpy(&v9->i8[v27], __src, __n);
    }
  }

  v31 = __n;
  v32 = v30 - __n;
  if (v30 < __n)
  {
    goto LABEL_86;
  }

  v33 = &v29[__n];
  if (!v28)
  {
    if (v30 != v31)
    {
      *v33 = a7;
      return __dst;
    }

LABEL_86:
    __break(1u);
    return __dst;
  }

  atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  v34 = *(v28 + 8);
  v35 = *(v28 + 4);
  if ((*(v28 + 16) & 4) == 0)
  {
    v36 = &v33[v35];
    if (v35 < 0x10)
    {
      v37 = &v29[v31];
      if (v33 == v36)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v37 = &v29[v31];
      do
      {
        v38 = vld2q_s8(v34);
        v34 += 32;
        *v37++ = v38;
      }

      while (v37 != &v33[v35 & 0xFFFFFFF0]);
      if (v37 == v36)
      {
        goto LABEL_58;
      }
    }

    v39 = &v9->i8[v27 + v35 + v31];
    v40 = v39 - v37;
    if ((v39 - v37) < 4 || (v37 < &v34[2 * v40] ? (v41 = v34 >= v39) : (v41 = 1), !v41))
    {
      v43 = v37;
      v44 = v34;
      goto LABEL_55;
    }

    if (v40 >= 0x20)
    {
      v42 = v40 & 0xFFFFFFFFFFFFFFE0;
      v47 = (v34 + 32);
      v48 = v37 + 1;
      v49 = v40 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v51 = v47[-2];
        v50 = v47[-1];
        v53 = *v47;
        v52 = v47[1];
        v47 += 4;
        v48[-1] = vuzp1q_s8(v51, v50);
        *v48 = vuzp1q_s8(v53, v52);
        v48 += 2;
        v49 -= 32;
      }

      while (v49);
      if (v40 == v42)
      {
        goto LABEL_58;
      }

      if ((v40 & 0x1C) == 0)
      {
        v44 = &v34[2 * v42];
        v43 = (v37 + v42);
        goto LABEL_55;
      }
    }

    else
    {
      v42 = 0;
    }

    v43 = (v37 + (v40 & 0xFFFFFFFFFFFFFFFCLL));
    v44 = &v34[2 * (v40 & 0xFFFFFFFFFFFFFFFCLL)];
    v54 = &v34[2 * v42];
    v55 = (v37->i32 + v42);
    v56 = v42 - (v40 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v57 = *v54++;
      *v55++ = vuzp1_s8(v57, v57).u32[0];
      v56 += 4;
    }

    while (v56);
    if (v40 == (v40 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_58;
    }

    do
    {
LABEL_55:
      v45 = *v44;
      v44 += 2;
      v43->i8[0] = v45;
      v43 = (v43 + 1);
    }

    while (v43 != v36);
    goto LABEL_58;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      *v33 = *v34;
    }

    else
    {
      __dst = memcpy(&v29[v31], v34, v35);
    }
  }

LABEL_58:
  v46 = *(v28 + 4);
  if (v32 <= v46)
  {
    goto LABEL_86;
  }

  v33[v46] = a7;
  if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    __dst = WTF::StringImpl::destroy(v28, v34);
  }

  if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v28, v34);
  }

  return __dst;
}

void *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(void *result, unsigned __int8 *a2, size_t a3, unsigned __int8 *a4, unint64_t a5, unsigned __int8 a6, size_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, char a11)
{
  if (a7)
  {
    v16 = *(a7 + 4);
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = 0;
    if (a10)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v16 = 0;
  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_3:
  v17 = *(a8 + 4);
  if (a10)
  {
LABEL_4:
    v18 = *(a10 + 4);
    if ((v18 & 0x80000000) == 0)
    {
      v11 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

LABEL_23:
    *result = 0;
    return result;
  }

LABEL_10:
  v19 = 1;
  if (v11)
  {
    goto LABEL_23;
  }

LABEL_11:
  v11 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  v21 = v11;
  if (v17 < 0 || (v21 & 1) != 0)
  {
    goto LABEL_23;
  }

  v11 = __OFADD__(v17, v20);
  v22 = v17 + v20;
  v23 = v11;
  if (v16 < 0)
  {
    goto LABEL_23;
  }

  if (v23)
  {
    goto LABEL_23;
  }

  v11 = __OFADD__(v16, v22);
  v24 = v16 + v22;
  if (v11)
  {
    goto LABEL_23;
  }

  v11 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  v26 = v11;
  if ((a5 & 0x80000000) != 0 || v26)
  {
    goto LABEL_23;
  }

  v11 = __OFADD__(a5, v25);
  v27 = a5 + v25;
  v28 = v11;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v28)
  {
    goto LABEL_23;
  }

  v29 = (a3 + v27);
  if (__OFADD__(a3, v27))
  {
    goto LABEL_23;
  }

  if ((!a7 || (*(a7 + 16) & 4) != 0) && (!a8 || (*(a8 + 16) & 4) != 0) && (!a10 || (*(a10 + 16) & 4) != 0))
  {
    v30 = a8;
    v31 = result;
    v32 = 1;
  }

  else
  {
    v30 = a8;
    v31 = result;
    v32 = 0;
  }

  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&v33, v29, v32, a2, a3, a4, a5, a6, a7, v30, a9, a10, a11);
  *v31 = v33;
  return result;
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(unint64_t result, size_t a2, int a3, unsigned __int8 *a4, size_t a5, unsigned __int8 *a6, unint64_t a7, unint64_t a8, size_t a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12, char a13)
{
  v13 = a12;
  v14 = a9;
  v15 = a2;
  if (!a3)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    if (a2 > 0x7FFFFFEF)
    {
      goto LABEL_10;
    }

    v225 = a13;
    v226 = a11;
    v224 = result;
    v21 = a2;
    v27 = a4;
    v22 = a7;
    result = WTF::tryFastCompactMalloc((2 * a2 + 20));
    v26 = v227;
    if (!v227)
    {
      result = v224;
      goto LABEL_212;
    }

    v33 = v227 + 20;
    *v227 = 2;
    *(v227 + 1) = v21;
    *(v227 + 1) = v227 + 20;
    *(v227 + 4) = 0;
    v34 = a5;
    v25 = &v227[2 * a5 + 20];
    if (a5 < 0x40)
    {
      v35 = (v227 + 20);
      v29 = a8;
      v24 = v22;
      v38 = a6;
      v39 = v27;
      v40 = a12;
      v20 = a10;
    }

    else
    {
      v35 = &v33[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
      v36 = 0uLL;
      v37 = (v227 + 20);
      v29 = a8;
      v24 = v22;
      v38 = a6;
      v39 = v27;
      v40 = a12;
      v20 = a10;
      do
      {
        v228.val[0] = *v39;
        v41 = *(v39 + 16);
        v233.val[0] = *(v39 + 32);
        v42 = *(v39 + 48);
        v39 += 64;
        v43 = v42;
        v233.val[1] = 0uLL;
        v238.val[0] = v41;
        v228.val[1] = 0uLL;
        v44 = v37;
        vst2q_s8(v44, v228);
        v44 += 32;
        v238.val[1] = 0uLL;
        vst2q_s8(v44, v238);
        v45 = v37 + 64;
        vst2q_s8(v45, v233);
        v46 = v37 + 96;
        vst2q_s8(v46, *(&v36 - 1));
        v37 += 128;
      }

      while (v37 != v35);
    }

    if (v35 != v25)
    {
      v47 = &v227[2 * v34 - v35 + 18];
      if (v47 < 0xE || (v35 < v39 + (v47 >> 1) + 1 ? (v48 = v39 >= (v47 & 0xFFFFFFFFFFFFFFFELL) + v35 + 2) : (v48 = 1), !v48))
      {
        v50 = v39;
        result = v35;
        goto LABEL_30;
      }

      v49 = (v47 >> 1) + 1;
      if (v47 >= 0x3E)
      {
        v23 = v49 & 0xFFFFFFFFFFFFFFE0;
        v157 = (v35 + 32);
        result = v39 + 16;
        v158 = v49 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v159 = *(result - 16);
          v160 = vmovl_u8(*result);
          v161 = vmovl_high_u8(*result);
          v157[-2] = vmovl_u8(*v159.i8);
          v157[-1] = vmovl_high_u8(v159);
          *v157 = v160;
          v157[1] = v161;
          v157 += 4;
          result += 32;
          v158 -= 32;
        }

        while (v158);
        if (v49 == v23)
        {
          goto LABEL_31;
        }

        if ((v49 & 0x18) == 0)
        {
          result = v35 + 2 * v23;
          v50 = (v39 + v23);
          do
          {
LABEL_30:
            v51 = *v50++;
            *result = v51;
            result += 2;
          }

          while (result != v25);
          goto LABEL_31;
        }
      }

      else
      {
        v23 = 0;
      }

      v50 = (v39 + (v49 & 0xFFFFFFFFFFFFFFF8));
      result = v35 + 2 * (v49 & 0xFFFFFFFFFFFFFFF8);
      v162 = (v35 + 2 * v23);
      v163 = (v39 + v23);
      v23 -= v49 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v164 = *v163++;
        *v162++ = vmovl_u8(v164);
        v23 += 8;
      }

      while (v23);
      if (v49 != (v49 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v52 = v34;
    v48 = v15 >= v34;
    v53 = v15 - v34;
    if (!v48)
    {
      goto LABEL_279;
    }

    v54 = &v33[2 * v52];
    v25 = v54 + 2 * v24;
    if (v24 < 0x40)
    {
      v55 = v54;
    }

    else
    {
      v55 = v54 + 2 * (v24 & 0x7FFFFFFFFFFFFFC0);
      v56 = 0uLL;
      v57 = v54;
      do
      {
        v229.val[0] = *v38;
        v58 = *(v38 + 16);
        v234.val[0] = *(v38 + 32);
        v59 = *(v38 + 48);
        v38 += 64;
        v60 = v59;
        v234.val[1] = 0uLL;
        v239.val[0] = v58;
        v229.val[1] = 0uLL;
        v61 = v57;
        vst2q_s8(v61, v229);
        v61 += 32;
        v239.val[1] = 0uLL;
        vst2q_s8(v61, v239);
        v62 = v57 + 64;
        vst2q_s8(v62, v234);
        v63 = v57 + 96;
        vst2q_s8(v63, *(&v56 - 1));
        v57 += 128;
      }

      while (v57 != v55);
    }

    if (v55 != v25)
    {
      v64 = &v227[2 * v24 + 2 * v52 - v55 + 18];
      if (v64 < 0xE || v55 < v38 + (v64 >> 1) + 1 && v38 < (v64 & 0xFFFFFFFFFFFFFFFELL) + v55 + 2)
      {
        v65 = v38;
        v66 = v55;
        goto LABEL_43;
      }

      v91 = (v64 >> 1) + 1;
      if (v64 >= 0x3E)
      {
        result = v91 & 0xFFFFFFFFFFFFFFE0;
        v165 = (v55 + 32);
        v166 = (v38 + 16);
        v23 = v91 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v167 = *v166[-2].i8;
          v168 = vmovl_u8(*v166);
          v169 = vmovl_high_u8(*v166->i8);
          v165[-2] = vmovl_u8(*v167.i8);
          v165[-1] = vmovl_high_u8(v167);
          *v165 = v168;
          v165[1] = v169;
          v165 += 4;
          v166 += 4;
          v23 -= 32;
        }

        while (v23);
        if (v91 == result)
        {
          goto LABEL_44;
        }

        if ((v91 & 0x18) == 0)
        {
          v66 = (v55 + 2 * result);
          v65 = (v38 + result);
          do
          {
LABEL_43:
            v67 = *v65++;
            *v66++ = v67;
          }

          while (v66 != v25);
          goto LABEL_44;
        }
      }

      else
      {
        result = 0;
      }

      v23 = v91 & 0xFFFFFFFFFFFFFFF8;
      v65 = (v38 + (v91 & 0xFFFFFFFFFFFFFFF8));
      v66 = (v55 + 2 * (v91 & 0xFFFFFFFFFFFFFFF8));
      v170 = (v55 + 2 * result);
      v171 = (v38 + result);
      result -= v91 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v172 = *v171++;
        *v170++ = vmovl_u8(v172);
        result += 8;
      }

      while (result);
      if (v91 != v23)
      {
        goto LABEL_43;
      }
    }

LABEL_44:
    v15 = v24;
    if (v53 < v24)
    {
      goto LABEL_279;
    }

    result = v224;
    if (v53 == v24)
    {
      goto LABEL_279;
    }

    v68 = (v54 + 2 * v24);
    *v68 = v29;
    v27 = v68 + 1;
    v29 = ~v24;
    v69 = v53 + v29;
    if (!a9)
    {
      v13 = a11;
      goto LABEL_159;
    }

    v23 = *(a9 + 8);
    v70 = *(a9 + 4);
    v29 = *(a9 + 16);
    if ((v29 & 4) == 0)
    {
      if (v70)
      {
        if (v70 == 1)
        {
          v29 = *v23;
          *v27 = v29;
        }

        else
        {
          v22 = v227;
          memcpy(v27, v23, 2 * v70);
          v26 = v227;
          result = v224;
        }
      }

LABEL_158:
      v13 = a11;
      v14 = *(a9 + 4);
      if (v69 < v14)
      {
        goto LABEL_279;
      }

LABEL_159:
      v123 = v69 - v14;
      v27 += v14;
      if (!v20)
      {
        v125 = 0;
        goto LABEL_184;
      }

      v23 = *(v20 + 1);
      v124 = *(v20 + 1);
      v29 = v20[16];
      if ((v29 & 4) == 0)
      {
        if (v124)
        {
          if (v124 == 1)
          {
            v29 = *v23;
            *v27 = v29;
          }

          else
          {
            v22 = v26;
            memcpy(v27, v23, 2 * v124);
            v26 = v22;
            result = v224;
          }
        }

LABEL_183:
        v125 = *(v20 + 1);
        if (v123 < v125)
        {
          goto LABEL_279;
        }

LABEL_184:
        if (v123 == v125)
        {
          goto LABEL_279;
        }

        v140 = &v27[v125];
        *v140 = v13;
        v27 = v140 + 1;
        v141 = v123 + ~v125;
        if (!v40)
        {
          v29 = 0;
LABEL_210:
          if (v141 == v29)
          {
            goto LABEL_279;
          }

          v27[v29] = a13;
          goto LABEL_212;
        }

        v23 = *(v40 + 1);
        v142 = *(v40 + 1);
        if ((v40[16] & 4) == 0)
        {
          if (v142)
          {
            if (v142 == 1)
            {
              *v27 = *v23;
            }

            else
            {
              v22 = v26;
              memcpy(v27, v23, 2 * v142);
              v26 = v22;
              result = v224;
            }
          }

LABEL_209:
          v29 = *(v40 + 1);
          if (v141 < v29)
          {
            goto LABEL_279;
          }

          goto LABEL_210;
        }

        v143 = &v27[v142];
        if (v142 < 0x40)
        {
          v24 = v27;
        }

        else
        {
          v24 = &v27[v142 & 0xFFFFFFC0];
          v144 = 0uLL;
          v145 = v27;
          do
          {
            v232.val[0] = *v23;
            v146 = *(v23 + 16);
            v237.val[0] = *(v23 + 32);
            v147 = *(v23 + 48);
            v23 += 64;
            v148 = v147;
            v237.val[1] = 0uLL;
            v242.val[0] = v146;
            v232.val[1] = 0uLL;
            v149 = v145;
            vst2q_s8(v149, v232);
            v149 += 32;
            v242.val[1] = 0uLL;
            vst2q_s8(v149, v242);
            v150 = v145 + 64;
            vst2q_s8(v150, v237);
            v25 = (v145 + 96);
            vst2q_s8(v25, *(&v144 - 1));
            v145 += 128;
          }

          while (v145 != v24);
        }

        if (v24 == v143)
        {
          goto LABEL_209;
        }

        v151 = &v26[2 * v14 + 2 * v125 + 2 * v142 + 2 * v52 + 2 * v15 - v24 + 22];
        if (v151 < 0xE || (v24 < v23 + (v151 >> 1) + 1 ? (v152 = v23 >= (v151 & 0xFFFFFFFFFFFFFFFELL) + v24 + 2) : (v152 = 1), !v152))
        {
          v154 = v23;
          v155 = v24;
          goto LABEL_206;
        }

        v153 = (v151 >> 1) + 1;
        if (v151 >= 0x3E)
        {
          v25 = v153 & 0xFFFFFFFFFFFFFFE0;
          v216 = (v24 + 32);
          v217 = (v23 + 16);
          v218 = v153 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v219 = *v217[-2].i8;
            v220 = vmovl_u8(*v217);
            v221 = vmovl_high_u8(*v217->i8);
            v216[-2] = vmovl_u8(*v219.i8);
            v216[-1] = vmovl_high_u8(v219);
            *v216 = v220;
            v216[1] = v221;
            v216 += 4;
            v217 += 4;
            v218 -= 32;
          }

          while (v218);
          if (v153 == v25)
          {
            goto LABEL_209;
          }

          if ((v153 & 0x18) == 0)
          {
            v155 = (v24 + 2 * v25);
            v154 = (v23 + v25);
            goto LABEL_206;
          }
        }

        else
        {
          v25 = 0;
        }

        v154 = (v23 + (v153 & 0xFFFFFFFFFFFFFFF8));
        v155 = (v24 + 2 * (v153 & 0xFFFFFFFFFFFFFFF8));
        v24 += 2 * v25;
        v222 = (v23 + v25);
        v25 -= v153 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v223 = *v222++;
          *v24 = vmovl_u8(v223);
          v24 += 16;
          v25 += 8;
        }

        while (v25);
        if (v153 == (v153 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_209;
        }

        do
        {
LABEL_206:
          v156 = *v154++;
          v24 = v156;
          *v155++ = v156;
        }

        while (v155 != v143);
        goto LABEL_209;
      }

      v29 = &v27[v124];
      if (v124 < 0x40)
      {
        v24 = v27;
      }

      else
      {
        v24 = &v27[v124 & 0xFFFFFFC0];
        v126 = 0uLL;
        v127 = v27;
        do
        {
          v231.val[0] = *v23;
          v128 = *(v23 + 16);
          v236.val[0] = *(v23 + 32);
          v129 = *(v23 + 48);
          v23 += 64;
          v130 = v129;
          v236.val[1] = 0uLL;
          v241.val[0] = v128;
          v231.val[1] = 0uLL;
          v131 = v127;
          vst2q_s8(v131, v231);
          v131 += 32;
          v241.val[1] = 0uLL;
          vst2q_s8(v131, v241);
          v132 = v127 + 64;
          vst2q_s8(v132, v236);
          v133 = v127 + 96;
          vst2q_s8(v133, *(&v126 - 1));
          v127 += 128;
        }

        while (v127 != v24);
      }

      if (v24 == v29)
      {
        goto LABEL_183;
      }

      v134 = &v26[2 * v14 + 2 * v124 + 2 * v52 + 2 * v15 - v24 + 20];
      if (v134 < 0xE || (v24 < v23 + (v134 >> 1) + 1 ? (v135 = v23 >= (v134 & 0xFFFFFFFFFFFFFFFELL) + v24 + 2) : (v135 = 1), !v135))
      {
        v137 = v23;
        v138 = v24;
        goto LABEL_180;
      }

      v136 = (v134 >> 1) + 1;
      if (v134 >= 0x3E)
      {
        v25 = v136 & 0xFFFFFFFFFFFFFFE0;
        v208 = (v24 + 32);
        v209 = (v23 + 16);
        v210 = v136 & 0xFFFFFFFFFFFFFFE0;
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
        if (v136 == v25)
        {
          goto LABEL_183;
        }

        if ((v136 & 0x18) == 0)
        {
          v138 = (v24 + 2 * v25);
          v137 = (v23 + v25);
          goto LABEL_180;
        }
      }

      else
      {
        v25 = 0;
      }

      v137 = (v23 + (v136 & 0xFFFFFFFFFFFFFFF8));
      v138 = (v24 + 2 * (v136 & 0xFFFFFFFFFFFFFFF8));
      v24 += 2 * v25;
      v214 = (v23 + v25);
      v25 -= v136 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v215 = *v214++;
        *v24 = vmovl_u8(v215);
        v24 += 16;
        v25 += 8;
      }

      while (v25);
      if (v136 == (v136 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_183;
      }

      do
      {
LABEL_180:
        v139 = *v137++;
        v24 = v139;
        *v138++ = v139;
      }

      while (v138 != v29);
      goto LABEL_183;
    }

    v29 = &v27[v70];
    if (v70 < 0x40)
    {
      v24 = v27;
    }

    else
    {
      v24 = &v27[v70 & 0xFFFFFFC0];
      v77 = 0uLL;
      v78 = v27;
      do
      {
        v230.val[0] = *v23;
        v79 = *(v23 + 16);
        v235.val[0] = *(v23 + 32);
        v80 = *(v23 + 48);
        v23 += 64;
        v81 = v80;
        v235.val[1] = 0uLL;
        v240.val[0] = v79;
        v230.val[1] = 0uLL;
        v82 = v78;
        vst2q_s8(v82, v230);
        v82 += 32;
        v240.val[1] = 0uLL;
        vst2q_s8(v82, v240);
        v83 = v78 + 64;
        vst2q_s8(v83, v235);
        v84 = v78 + 96;
        vst2q_s8(v84, *(&v77 - 1));
        v78 += 128;
      }

      while (v78 != v24);
    }

    if (v24 == v29)
    {
      goto LABEL_158;
    }

    v92 = &v227[2 * v52 + 2 * v70 + 2 * v15 - v24 + 20];
    if (v92 < 0xE || (v24 < v23 + (v92 >> 1) + 1 ? (v93 = v23 >= (v92 & 0xFFFFFFFFFFFFFFFELL) + v24 + 2) : (v93 = 1), !v93))
    {
      v95 = v23;
      v96 = v24;
      goto LABEL_100;
    }

    v94 = (v92 >> 1) + 1;
    if (v92 >= 0x3E)
    {
      v25 = v94 & 0xFFFFFFFFFFFFFFE0;
      v200 = (v24 + 32);
      v201 = (v23 + 16);
      v202 = v94 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v203 = *v201[-2].i8;
        v204 = vmovl_u8(*v201);
        v205 = vmovl_high_u8(*v201->i8);
        v200[-2] = vmovl_u8(*v203.i8);
        v200[-1] = vmovl_high_u8(v203);
        *v200 = v204;
        v200[1] = v205;
        v200 += 4;
        v201 += 4;
        v202 -= 32;
      }

      while (v202);
      if (v94 == v25)
      {
        goto LABEL_158;
      }

      if ((v94 & 0x18) == 0)
      {
        v96 = (v24 + 2 * v25);
        v95 = (v23 + v25);
        goto LABEL_100;
      }
    }

    else
    {
      v25 = 0;
    }

    v95 = (v23 + (v94 & 0xFFFFFFFFFFFFFFF8));
    v96 = (v24 + 2 * (v94 & 0xFFFFFFFFFFFFFFF8));
    v24 += 2 * v25;
    v206 = (v23 + v25);
    v25 -= v94 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v207 = *v206++;
      *v24 = vmovl_u8(v207);
      v24 += 16;
      v25 += 8;
    }

    while (v25);
    if (v94 == (v94 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_158;
    }

    do
    {
LABEL_100:
      v97 = *v95++;
      v24 = v97;
      *v96++ = v97;
    }

    while (v96 != v29);
    goto LABEL_158;
  }

  if (!a2)
  {
LABEL_11:
    v26 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_212;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_10:
    v26 = 0;
    goto LABEL_212;
  }

  v226 = a11;
  v16 = result;
  v17 = a2;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  result = WTF::tryFastCompactMalloc((a2 + 20));
  v26 = v227;
  if (v227)
  {
    v225 = a13;
    v27 = v227 + 20;
    *v227 = 2;
    *(v227 + 1) = v17;
    *(v227 + 1) = v227 + 20;
    *(v227 + 4) = 4;
    v28 = v21;
    v29 = a5;
    if (a5)
    {
      if (a5 == 1)
      {
        v24 = *a4;
        *v27 = v24;
      }

      else
      {
        result = memcpy(v227 + 20, a4, a5);
        v26 = v227;
        v29 = a5;
        v28 = v21;
      }
    }

    v52 = v29;
    v71 = v15 - v29;
    if (v15 < v29)
    {
      goto LABEL_279;
    }

    v27 = (v27 + v29);
    v29 = v22;
    result = v16;
    if (v28)
    {
      if (v28 == 1)
      {
        v24 = *v20;
        *v27 = v24;
      }

      else
      {
        v72 = v20;
        v20 = v26;
        memcpy(v27, v72, v28);
        v26 = v20;
        result = v16;
        LODWORD(v28) = v21;
        v29 = v22;
      }
    }

    v15 = v28;
    if (v71 < v28)
    {
      goto LABEL_279;
    }

    v20 = a12;
    v21 = a9;
    v13 = a10;
    if (v71 == v28)
    {
      goto LABEL_279;
    }

    v73 = v27 + v28;
    *v73 = v29;
    v27 = v73 + 1;
    v29 = ~v28;
    v22 = v71 + v29;
    if (!a9)
    {
      v76 = 0;
      goto LABEL_104;
    }

    v23 = *(a9 + 8);
    v74 = *(a9 + 4);
    v29 = *(a9 + 16);
    if ((v29 & 4) != 0)
    {
      if (v74)
      {
        if (v74 == 1)
        {
          v29 = *v23;
          *v27 = v29;
        }

        else
        {
          v98 = result;
          v99 = v26;
          memcpy(v27, v23, v74);
          v26 = v99;
          result = v98;
        }
      }

      goto LABEL_103;
    }

    v29 = v27 + v74;
    if (v74 < 0x10)
    {
      v24 = v27;
    }

    else
    {
      v24 = v27;
      do
      {
        v75 = vld2q_s8(v23);
        v23 += 32;
        *v24 = v75;
        v24 += 16;
      }

      while (v24 != (v27 + (v74 & 0xFFFFFFF0)));
    }

    if (v24 == v29)
    {
      goto LABEL_103;
    }

    v85 = &v26[v74 + v52 + v15];
    v86 = v85 - v24 + 21;
    if (v86 >= 4 && ((v25 = v23 - 2 * v24, v24 < v25 + 2 * v85 + 42) ? (v87 = v23 >= &v26[v74 + 21 + v15 + v52]) : (v87 = 1), v87))
    {
      if (v86 >= 0x20)
      {
        v25 = v86 & 0xFFFFFFFFFFFFFFE0;
        v173 = (v23 + 32);
        v174 = (v24 + 16);
        v175 = v86 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v177 = v173[-2];
          v176 = v173[-1];
          v179 = *v173;
          v178 = v173[1];
          v173 += 4;
          v174[-1] = vuzp1q_s8(v177, v176);
          *v174 = vuzp1q_s8(v179, v178);
          v174 += 2;
          v175 -= 32;
        }

        while (v175);
        if (v86 == v25)
        {
          goto LABEL_103;
        }

        if ((v86 & 0x1C) == 0)
        {
          goto LABEL_280;
        }
      }

      else
      {
        v25 = 0;
      }

      v88 = (v24 + (v86 & 0xFFFFFFFFFFFFFFFCLL));
      v89 = (v23 + 2 * (v86 & 0xFFFFFFFFFFFFFFFCLL));
      v180 = (v23 + 2 * v25);
      v24 += v25;
      v25 -= v86 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v181 = *v180++;
        *v24 = vuzp1_s8(v181, v181).u32[0];
        v24 += 4;
        v25 += 4;
      }

      while (v25);
      if (v86 == (v86 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_103;
      }
    }

    else
    {
      v88 = v24;
      v89 = v23;
    }

    while (1)
    {
      do
      {
        v90 = *v89;
        v89 += 2;
        v24 = v90;
        *v88++ = v90;
      }

      while (v88 != v29);
LABEL_103:
      v76 = *(v21 + 4);
      if (v22 < v76)
      {
        goto LABEL_279;
      }

LABEL_104:
      v22 -= v76;
      v27 = (v27 + v76);
      if (!v13)
      {
        v102 = 0;
        goto LABEL_129;
      }

      v23 = *(v13 + 1);
      v100 = *(v13 + 1);
      v29 = v13[16];
      if ((v29 & 4) != 0)
      {
        if (v100)
        {
          if (v100 == 1)
          {
            v29 = *v23;
            *v27 = v29;
          }

          else
          {
            v109 = result;
            v110 = v26;
            memcpy(v27, v23, v100);
            v26 = v110;
            result = v109;
          }
        }
      }

      else
      {
        v29 = v27 + v100;
        if (v100 < 0x10)
        {
          v24 = v27;
        }

        else
        {
          v24 = v27;
          do
          {
            v101 = vld2q_s8(v23);
            v23 += 32;
            *v24 = v101;
            v24 += 16;
          }

          while (v24 != (v27 + (v100 & 0xFFFFFFF0)));
        }

        if (v24 != v29)
        {
          v103 = &v26[v76 + v100 + v52 + v15 - v24 + 21];
          if (v103 < 4 || ((v104 = &v26[v76 + v100], v25 = v23 - 2 * v24, v24 < v25 + 2 * (v104 + v52 + v15) + 42) ? (v105 = v23 >= v104 + v15 + v52 + 21) : (v105 = 1), !v105))
          {
            v106 = v24;
            v107 = v23;
            goto LABEL_125;
          }

          if (v103 >= 0x20)
          {
            v25 = v103 & 0xFFFFFFFFFFFFFFE0;
            v182 = (v23 + 32);
            v183 = (v24 + 16);
            v184 = v103 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v186 = v182[-2];
              v185 = v182[-1];
              v188 = *v182;
              v187 = v182[1];
              v182 += 4;
              v183[-1] = vuzp1q_s8(v186, v185);
              *v183 = vuzp1q_s8(v188, v187);
              v183 += 2;
              v184 -= 32;
            }

            while (v184);
            if (v103 == v25)
            {
              goto LABEL_128;
            }

            if ((v103 & 0x1C) == 0)
            {
              v107 = (v23 + 2 * v25);
              v106 = (v24 + v25);
              do
              {
LABEL_125:
                v108 = *v107;
                v107 += 2;
                v24 = v108;
                *v106++ = v108;
              }

              while (v106 != v29);
              goto LABEL_128;
            }
          }

          else
          {
            v25 = 0;
          }

          v106 = (v24 + (v103 & 0xFFFFFFFFFFFFFFFCLL));
          v107 = (v23 + 2 * (v103 & 0xFFFFFFFFFFFFFFFCLL));
          v189 = (v23 + 2 * v25);
          v24 += v25;
          v25 -= v103 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v190 = *v189++;
            *v24 = vuzp1_s8(v190, v190).u32[0];
            v24 += 4;
            v25 += 4;
          }

          while (v25);
          if (v103 != (v103 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_125;
          }
        }
      }

LABEL_128:
      v102 = *(v13 + 1);
      if (v22 < v102)
      {
        goto LABEL_279;
      }

LABEL_129:
      if (v22 == v102)
      {
        goto LABEL_279;
      }

      v111 = v27 + v102;
      *v111 = v226;
      v27 = v111 + 1;
      v22 += ~v102;
      if (v20)
      {
        v23 = *(v20 + 1);
        v112 = *(v20 + 1);
        if ((v20[16] & 4) != 0)
        {
          if (v112)
          {
            if (v112 == 1)
            {
              *v27 = *v23;
            }

            else
            {
              v121 = result;
              v122 = v26;
              memcpy(v27, v23, v112);
              v26 = v122;
              result = v121;
            }
          }
        }

        else
        {
          v113 = v27 + v112;
          if (v112 < 0x10)
          {
            v24 = v27;
          }

          else
          {
            v24 = v27;
            do
            {
              v114 = vld2q_s8(v23);
              v23 += 32;
              *v24 = v114;
              v24 += 16;
            }

            while (v24 != (v27 + (v112 & 0xFFFFFFF0)));
          }

          if (v24 != v113)
          {
            v25 = &v26[v112];
            v115 = &v26[v112 + v76 + v102 + v52 + v15 - v24 + 22];
            if (v115 < 4 || ((v116 = v102 + v76 + v25, v25 = v116 + v15 + v52 + 22, v24 < v23 - 2 * v24 + 2 * (v116 + v52 + v15) + 44) ? (v117 = v23 >= v25) : (v117 = 1), !v117))
            {
              v118 = v24;
              v119 = v23;
              goto LABEL_151;
            }

            if (v115 >= 0x20)
            {
              v25 = v115 & 0xFFFFFFFFFFFFFFE0;
              v191 = (v23 + 32);
              v192 = (v24 + 16);
              v193 = v115 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v195 = v191[-2];
                v194 = v191[-1];
                v197 = *v191;
                v196 = v191[1];
                v191 += 4;
                v192[-1] = vuzp1q_s8(v195, v194);
                *v192 = vuzp1q_s8(v197, v196);
                v192 += 2;
                v193 -= 32;
              }

              while (v193);
              if (v115 != v25)
              {
                if ((v115 & 0x1C) == 0)
                {
                  v119 = (v23 + 2 * v25);
                  v118 = (v24 + v25);
                  goto LABEL_151;
                }

                goto LABEL_249;
              }
            }

            else
            {
              v25 = 0;
LABEL_249:
              v118 = (v24 + (v115 & 0xFFFFFFFFFFFFFFFCLL));
              v119 = (v23 + 2 * (v115 & 0xFFFFFFFFFFFFFFFCLL));
              v198 = (v23 + 2 * v25);
              v24 += v25;
              v25 -= v115 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v199 = *v198++;
                *v24 = vuzp1_s8(v199, v199).u32[0];
                v24 += 4;
                v25 += 4;
              }

              while (v25);
              if (v115 != (v115 & 0xFFFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_151:
                  v120 = *v119;
                  v119 += 2;
                  v24 = v120;
                  *v118++ = v120;
                }

                while (v118 != v113);
              }
            }
          }
        }

        v29 = *(v20 + 1);
        if (v22 < v29)
        {
          goto LABEL_279;
        }

        goto LABEL_155;
      }

      v29 = 0;
LABEL_155:
      if (v22 != v29)
      {
        *(v27 + v29) = v225;
        goto LABEL_212;
      }

LABEL_279:
      __break(1u);
LABEL_280:
      v89 = (v23 + 2 * v25);
      v88 = (v24 + v25);
    }
  }

  result = v16;
LABEL_212:
  *result = v26;
  return result;
}

uint64_t WGSL::ContextProvider<WGSL::Binding>::Context::lookup(void *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  while (1)
  {
    v5 = a1[1];
    if (v5)
    {
      v6 = *a2;
      if (*a2 == -1 || !v6)
      {
        __break(0xC471u);
        JUMPOUT(0x225875C40);
      }

      v7 = *(v5 - 8);
      v8 = *(v6 + 4);
      v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
      for (i = 0; ; v9 = i + v11)
      {
        v11 = v9 & v7;
        v12 = *(v5 + (v11 << 6));
        if (v12 != -1)
        {
          if (!v12)
          {
            goto LABEL_16;
          }

          if (WTF::equal(v12, *a2, a3))
          {
            break;
          }
        }

        ++i;
      }

      v13 = v5 + (v11 << 6);
      v14 = a1[1];
      if (!v14 || v13 != v14 + (*(v14 - 4) << 6))
      {
        return v13 + 8;
      }
    }

LABEL_16:
    a1 = *a1;
    if (!a1)
    {
      return 0;
    }
  }
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(char *__dst, unint64_t a2, char *__src, size_t __n, _BYTE *a5, size_t a6, uint64_t a7, int a8, char *a9, size_t a10, unint64_t a11)
{
  *&v45[1] = *MEMORY[0x277D85DE8];
  if (__n)
  {
    if (__n == 1)
    {
      *__dst = *__src;
    }

    else
    {
      v14 = a2;
      v15 = a5;
      v16 = __n;
      memcpy(__dst, __src, __n);
      a2 = v14;
      LODWORD(__n) = v16;
      a5 = v15;
    }
  }

  v17 = __n;
  v18 = a2 - __n;
  if (a2 < __n)
  {
    goto LABEL_37;
  }

  v19 = &__dst[__n];
  if (a6)
  {
    if (a6 == 1)
    {
      *v19 = *a5;
    }

    else
    {
      memcpy(&__dst[__n], a5, a6);
    }
  }

  v20 = a6;
  v21 = v18 >= a6;
  v22 = v18 - a6;
  if (!v21)
  {
    goto LABEL_37;
  }

  v23 = &v19[v20];
  WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a7, v23, v22);
  LODWORD(v25) = 0;
  do
  {
    v25 = (v25 + 1);
    v26 = a7 > 9;
    LODWORD(a7) = a7 / 0xA;
  }

  while (v26);
  v27 = v22 - v25;
  if (v22 < v25)
  {
    goto LABEL_37;
  }

  if (a10)
  {
    if (a10 == 1)
    {
      v23[v25] = *a9;
    }

    else
    {
      memcpy(&v23[v25], a9, a10);
    }
  }

  v28 = v27 - a10;
  if (v27 < a10)
  {
LABEL_37:
    __break(1u);
  }

  v29 = 0;
  result = v45;
  v31 = 25;
  v32 = 1;
  do
  {
    if (v32 == 26)
    {
      goto LABEL_37;
    }

    v33 = v32;
    v34 = v29;
    v35 = result;
    v44[--v31] = (a11 % 0xA) | 0x30;
    ++v32;
    ++v29;
    --result;
    v26 = a11 > 9;
    a11 /= 0xAuLL;
  }

  while (v26);
  if (v34 < v28)
  {
    v28 = v34;
  }

  if (v28 >= 8)
  {
    v37 = v28 + 1;
    v38 = 8;
    if ((v37 & 7) != 0)
    {
      v38 = v37 & 7;
    }

    v36 = v37 - v38;
    v39 = &__dst[v17 + a10 + v20 + v25];
    if (v34 >= v22 - a10 - v25)
    {
      v34 = v22 - a10 - v25;
    }

    v40 = ~v34 + v38;
    v41 = v44;
    do
    {
      *v39 = *&v41[v31];
      v39 += 8;
      v41 += 8;
      v40 += 8;
    }

    while (v40);
  }

  else
  {
    v36 = 0;
  }

  v42 = &__dst[v17 + a10 + v20 + v25];
  v43 = v22 - a10 - v25;
  do
  {
    if (v36 == v43)
    {
      goto LABEL_37;
    }

    v42[v36] = *(v35 + v36);
    ++v35;
    ++v42;
    --v33;
    --v43;
  }

  while (v36 != v33);
  return result;
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(char *__dst, unint64_t a2, char *__src, size_t __n, _BYTE *a5, size_t a6, char *a7, size_t a8, unint64_t a9, char *a10, size_t a11, unint64_t a12)
{
  *&v67[1] = *MEMORY[0x277D85DE8];
  if (__n)
  {
    if (__n == 1)
    {
      *__dst = *__src;
    }

    else
    {
      v16 = a2;
      v17 = a5;
      v18 = __n;
      memcpy(__dst, __src, __n);
      a2 = v16;
      LODWORD(__n) = v18;
      a5 = v17;
    }
  }

  v19 = __n;
  v20 = a2 - __n;
  if (a2 < __n)
  {
    goto LABEL_58;
  }

  v21 = &__dst[__n];
  if (a6)
  {
    if (a6 == 1)
    {
      *v21 = *a5;
    }

    else
    {
      memcpy(&__dst[__n], a5, a6);
    }
  }

  v22 = a6;
  v23 = v20 >= a6;
  v24 = v20 - a6;
  if (!v23)
  {
    goto LABEL_58;
  }

  v25 = &v21[a6];
  if (a8)
  {
    if (a8 == 1)
    {
      *v25 = *a7;
    }

    else
    {
      memcpy(&v21[v22], a7, a8);
    }
  }

  v26 = v24 - a8;
  if (v24 < a8)
  {
    goto LABEL_58;
  }

  v27 = 0;
  v29 = v26;
  v30 = &v25[a8];
  v31 = v30;
  v32 = v67;
  v33 = 25;
  v34 = a9;
  v35 = 1;
  v36 = a9;
  do
  {
    if (v35 == 26)
    {
      goto LABEL_58;
    }

    v37 = v35;
    v38 = v27;
    v39 = v32;
    v66[--v33] = (v36 % 0xA) | 0x30;
    ++v35;
    ++v27;
    --v32;
    v40 = v36 > 9;
    v36 /= 0xAuLL;
  }

  while (v40);
  v41 = v38 >= v26 ? v26 : v38;
  if (v41 >= 8)
  {
    v43 = v41 + 1;
    v44 = v43 & 7;
    if ((v43 & 7) == 0)
    {
      v44 = 8;
    }

    v42 = v43 - v44;
    if (v38 >= v26)
    {
      v38 = v26;
    }

    v45 = ~v38 + v44;
    v46 = v66;
    v47 = &v25[a8];
    do
    {
      *v47 = *&v46[v33];
      v47 += 8;
      v46 += 8;
      v45 += 8;
    }

    while (v45);
  }

  else
  {
    v42 = 0;
  }

  do
  {
    if (v42 == v29)
    {
      goto LABEL_58;
    }

    v31[v42] = v39[v42];
    ++v39;
    ++v31;
    --v37;
    --v29;
  }

  while (v42 != v37);
  LODWORD(v48) = 0;
  do
  {
    v48 = (v48 + 1);
    v40 = v34 > 9;
    v34 /= 0xAuLL;
  }

  while (v40);
  v49 = v26 - v48;
  if (v26 < v48)
  {
    goto LABEL_58;
  }

  if (a11)
  {
    if (a11 == 1)
    {
      v30[v48] = *a10;
    }

    else
    {
      memcpy(&v30[v48], a10, a11);
    }
  }

  v50 = v49 - a11;
  if (v49 < a11)
  {
LABEL_58:
    __break(1u);
  }

  v51 = 0;
  result = v67;
  v53 = 25;
  v54 = 1;
  do
  {
    if (v54 == 26)
    {
      goto LABEL_58;
    }

    v55 = v54;
    v56 = v51;
    v57 = result;
    v66[--v53] = (a12 % 0xA) | 0x30;
    ++v54;
    ++v51;
    --result;
    v40 = a12 > 9;
    a12 /= 0xAuLL;
  }

  while (v40);
  if (v56 < v50)
  {
    v50 = v56;
  }

  if (v50 >= 8)
  {
    v59 = v50 + 1;
    v60 = 8;
    if ((v59 & 7) != 0)
    {
      v60 = v59 & 7;
    }

    v58 = v59 - v60;
    v61 = &__dst[a11 + a8 + v22 + v19 + v48];
    if (v56 >= v26 - a11 - v48)
    {
      v56 = v26 - a11 - v48;
    }

    v62 = ~v56 + v60;
    v63 = v66;
    do
    {
      *v61 = *&v63[v53];
      v61 += 8;
      v63 += 8;
      v62 += 8;
    }

    while (v62);
  }

  else
  {
    v58 = 0;
  }

  v64 = &__dst[a11 + a8 + v22 + v19 + v48];
  v65 = v26 - a11 - v48;
  do
  {
    if (v58 == v65)
    {
      goto LABEL_58;
    }

    v64[v58] = *(v57 + v58);
    ++v57;
    ++v64;
    --v55;
    --v65;
  }

  while (v58 != v55);
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(uint64_t result, unsigned int a2, int a3, int8x16_t *a4, size_t a5, uint64_t a6)
{
  v10 = result;
  v11 = a2;
  if (!a3)
  {
    if (a2 > 0x7FFFFFEF)
    {
      goto LABEL_8;
    }

    result = WTF::tryFastCompactMalloc((2 * a2 + 20));
    v12 = v101;
    if (!v101)
    {
      goto LABEL_78;
    }

    v14 = v101 + 20;
    *v101 = 2;
    *(v101 + 4) = a2;
    *(v101 + 8) = v101 + 20;
    *(v101 + 16) = 0;
    v15 = v101 + 20 + 2 * a5;
    if (a5 < 0x40)
    {
      v16 = v101 + 20;
      if (v14 == v15)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = v14 + 2 * (a5 & 0x7FFFFFFFFFFFFFC0);
      v17 = 0uLL;
      v18 = (v101 + 20);
      do
      {
        v102.val[0] = *a4;
        v19 = a4[1];
        v104.val[0] = a4[2];
        v20 = a4[3];
        a4 += 4;
        v21 = v20;
        v104.val[1] = 0uLL;
        v106.val[0] = v19;
        v102.val[1] = 0uLL;
        v22 = v18;
        vst2q_s8(v22, v102);
        v22 += 32;
        v106.val[1] = 0uLL;
        vst2q_s8(v22, v106);
        v23 = v18 + 64;
        vst2q_s8(v23, v104);
        v24 = v18 + 96;
        vst2q_s8(v24, *(&v17 - 1));
        v18 += 128;
      }

      while (v18 != v16);
      if (v16 == v15)
      {
LABEL_26:
        v32 = a5;
        v33 = v11 - a5;
        if (v11 < a5)
        {
          goto LABEL_108;
        }

        v34 = (v14 + 2 * a5);
        if (!a6)
        {
          v46 = 0;
LABEL_76:
          if (v33 != v46)
          {
            v34[v46] = 39;
            goto LABEL_78;
          }

          goto LABEL_108;
        }

        v35 = *(a6 + 8);
        v36 = *(a6 + 4);
        if ((*(a6 + 16) & 4) == 0)
        {
          if (v36)
          {
            if (v36 == 1)
            {
              *v34 = v35->i16[0];
            }

            else
            {
              result = memcpy(v34, v35, 2 * v36);
            }
          }

LABEL_75:
          v46 = *(a6 + 4);
          if (v33 < v46)
          {
            goto LABEL_108;
          }

          goto LABEL_76;
        }

        v47 = &v34[v36];
        if (v36 < 0x40)
        {
          v48 = v34;
        }

        else
        {
          v48 = &v34[v36 & 0xFFFFFFC0];
          v49 = 0uLL;
          v50 = v34;
          do
          {
            v103.val[0] = *v35;
            v51 = v35[1];
            v105.val[0] = v35[2];
            v52 = v35[3];
            v35 += 4;
            v53 = v52;
            v105.val[1] = 0uLL;
            v107.val[0] = v51;
            v103.val[1] = 0uLL;
            v54 = v50;
            vst2q_s8(v54, v103);
            v54 += 32;
            v107.val[1] = 0uLL;
            vst2q_s8(v54, v107);
            v55 = v50 + 64;
            vst2q_s8(v55, v105);
            v56 = v50 + 96;
            vst2q_s8(v56, *(&v49 - 1));
            v50 += 128;
          }

          while (v50 != v48);
        }

        if (v48 == v47)
        {
          goto LABEL_75;
        }

        v64 = v101 + 2 * (v32 + v36) - v48 + 18;
        if (v64 < 0xE || v48 < v35->u64 + (v64 >> 1) + 1 && v35 < (v64 & 0xFFFFFFFFFFFFFFFELL) + v48 + 2)
        {
          v65 = v35;
          v66 = v48;
          goto LABEL_68;
        }

        v78 = (v64 >> 1) + 1;
        if (v64 >= 0x3E)
        {
          v79 = v78 & 0xFFFFFFFFFFFFFFE0;
          v91 = (v48 + 32);
          v92 = &v35[1];
          v93 = v78 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v94 = *v92[-2].i8;
            v95 = vmovl_u8(*v92);
            v96 = vmovl_high_u8(*v92->i8);
            v91[-2] = vmovl_u8(*v94.i8);
            v91[-1] = vmovl_high_u8(v94);
            *v91 = v95;
            v91[1] = v96;
            v91 += 4;
            v92 += 4;
            v93 -= 32;
          }

          while (v93);
          if (v78 == v79)
          {
            goto LABEL_75;
          }

          if ((v78 & 0x18) == 0)
          {
            v66 = (v48 + 2 * v79);
            v65 = (v35 + v79);
            goto LABEL_68;
          }
        }

        else
        {
          v79 = 0;
        }

        v65 = (v35 + (v78 & 0xFFFFFFFFFFFFFFF8));
        v66 = (v48 + 2 * (v78 & 0xFFFFFFFFFFFFFFF8));
        v97 = (v48 + 2 * v79);
        v98 = &v35->i8[v79];
        v99 = v79 - (v78 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v100 = *v98++;
          *v97++ = vmovl_u8(v100);
          v99 += 8;
        }

        while (v99);
        if (v78 == (v78 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_75;
        }

        do
        {
LABEL_68:
          v67 = v65->u8[0];
          v65 = (v65 + 1);
          *v66++ = v67;
        }

        while (v66 != v47);
        goto LABEL_75;
      }
    }

    v25 = v101 + 2 * a5 - v16 + 18;
    if (v25 < 0xE || (v16 < a4->u64 + (v25 >> 1) + 1 ? (v26 = a4 >= (v25 & 0xFFFFFFFFFFFFFFFELL) + v16 + 2) : (v26 = 1), !v26))
    {
      v29 = a4;
      v30 = v16;
      goto LABEL_25;
    }

    v27 = (v25 >> 1) + 1;
    if (v25 >= 0x3E)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFE0;
      v68 = (v16 + 32);
      v69 = &a4[1];
      v70 = v27 & 0xFFFFFFFFFFFFFFE0;
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
      if (v27 == v28)
      {
        goto LABEL_26;
      }

      if ((v27 & 0x18) == 0)
      {
        v30 = (v16 + 2 * v28);
        v29 = (a4 + v28);
        goto LABEL_25;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = (a4 + (v27 & 0xFFFFFFFFFFFFFFF8));
    v30 = (v16 + 2 * (v27 & 0xFFFFFFFFFFFFFFF8));
    v74 = (v16 + 2 * v28);
    v75 = &a4->i8[v28];
    v76 = v28 - (v27 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v77 = *v75++;
      *v74++ = vmovl_u8(v77);
      v76 += 8;
    }

    while (v76);
    if (v27 == (v27 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_26;
    }

    do
    {
LABEL_25:
      v31 = v29->u8[0];
      v29 = (v29 + 1);
      *v30++ = v31;
    }

    while (v30 != v15);
    goto LABEL_26;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_78;
  }

  result = WTF::tryFastCompactMalloc((a2 + 20));
  v12 = v101;
  if (!v101)
  {
LABEL_78:
    *v10 = v12;
    return result;
  }

  v13 = (v101 + 20);
  *v101 = 2;
  *(v101 + 4) = a2;
  *(v101 + 8) = v101 + 20;
  *(v101 + 16) = 4;
  if (a5)
  {
    if (a5 == 1)
    {
      *v13 = a4->i8[0];
    }

    else
    {
      result = memcpy((v101 + 20), a4, a5);
    }
  }

  v37 = a5;
  v38 = v11 - a5;
  if (v11 < a5)
  {
    goto LABEL_108;
  }

  v39 = &v13[a5];
  if (a6)
  {
    v40 = *(a6 + 8);
    v41 = *(a6 + 4);
    if ((*(a6 + 16) & 4) != 0)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          *v39 = v40->i8[0];
        }

        else
        {
          result = memcpy(&v13[v37], v40, v41);
        }
      }
    }

    else
    {
      v42 = &v39[v41];
      if (v41 < 0x10)
      {
        v43 = &v13[v37];
      }

      else
      {
        v43 = &v13[v37];
        do
        {
          v44 = vld2q_s8(v40->i8);
          v40 += 2;
          *v43 = v44;
          v43 += 16;
        }

        while (v43 != &v39[v41 & 0xFFFFFFF0]);
      }

      if (v43 != v42)
      {
        v57 = v101 + v41 + v37;
        v58 = v57 - v43 + 20;
        if (v58 < 4 || (v43 < &v40[2].u64[1] + 2 * v57 + -2 * v43 ? (v59 = v40 >= v57 + 20) : (v59 = 1), !v59))
        {
          v61 = v43;
          v62 = v40;
          goto LABEL_60;
        }

        if (v58 >= 0x20)
        {
          v60 = v58 & 0xFFFFFFFFFFFFFFE0;
          v80 = v40 + 2;
          v81 = (v43 + 16);
          v82 = v58 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v84 = v80[-2];
            v83 = v80[-1];
            v86 = *v80;
            v85 = v80[1];
            v80 += 4;
            v81[-1] = vuzp1q_s8(v84, v83);
            *v81 = vuzp1q_s8(v86, v85);
            v81 += 2;
            v82 -= 32;
          }

          while (v82);
          if (v58 == v60)
          {
            goto LABEL_71;
          }

          if ((v58 & 0x1C) == 0)
          {
            v62 = (v40 + 2 * v60);
            v61 = (v43 + v60);
            do
            {
LABEL_60:
              v63 = v62->i8[0];
              v62 = (v62 + 2);
              *v61++ = v63;
            }

            while (v61 != v42);
            goto LABEL_71;
          }
        }

        else
        {
          v60 = 0;
        }

        v61 = (v43 + (v58 & 0xFFFFFFFFFFFFFFFCLL));
        v62 = (v40 + 2 * (v58 & 0xFFFFFFFFFFFFFFFCLL));
        v87 = (v40 + 2 * v60);
        v88 = (v43 + v60);
        v89 = v60 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v90 = *v87++;
          *v88++ = vuzp1_s8(v90, v90).u32[0];
          v89 += 4;
        }

        while (v89);
        if (v58 != (v58 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_60;
        }
      }
    }

LABEL_71:
    v45 = *(a6 + 4);
    if (v38 < v45)
    {
      goto LABEL_108;
    }

    goto LABEL_72;
  }

  v45 = 0;
LABEL_72:
  if (v38 != v45)
  {
    v39[v45] = 39;
    goto LABEL_78;
  }

LABEL_108:
  __break(1u);
  return result;
}

void *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned long,void>>(void *result, _BYTE *a2, size_t a3, unint64_t a4)
{
  v4 = 0;
  v37[1] = *MEMORY[0x277D85DE8];
  LODWORD(v5) = a3;
  v6 = a4;
  do
  {
    ++v4;
    v5 = (v5 + 1);
    v7 = v6 > 9;
    v6 /= 0xAuLL;
  }

  while (v7);
  if (((v4 | a3) & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  v8 = (a3 + v4);
  if (__OFADD__(a3, v4))
  {
    goto LABEL_6;
  }

  if (!v8)
  {
    v9 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_34;
  }

  if ((v8 & 0x80000000) != 0)
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v13 = result;
    WTF::tryFastCompactMalloc((v8 + 20));
    v9 = v36[0];
    if (v36[0])
    {
      v14 = (v36[0] + 20);
      *v36[0] = 2;
      *(v9 + 4) = v8;
      *(v9 + 8) = v9 + 20;
      *(v9 + 16) = 4;
      v15 = a4;
      v16 = a3;
      if (a3)
      {
        if (a3 == 1)
        {
          *v14 = *a2;
        }

        else
        {
          memcpy((v9 + 20), a2, a3);
          v16 = a3;
          v15 = a4;
        }
      }

      v17 = v16;
      v18 = v8 - v16;
      if (v8 >= v16)
      {
        v19 = 0;
        v20 = &v14[v16];
        v21 = v37;
        v22 = 25;
        v23 = 1;
        result = v13;
        do
        {
          if (v23 == 26)
          {
            goto LABEL_35;
          }

          v24 = v23;
          v25 = v19;
          v26 = v21;
          --v22;
          *(v36 + v22) = (v15 % 0xA) | 0x30;
          ++v23;
          ++v19;
          v21 = (v21 - 1);
          v7 = v15 > 9;
          v15 /= 0xAuLL;
        }

        while (v7);
        if (v25 >= v18)
        {
          v27 = v18;
        }

        else
        {
          v27 = v25;
        }

        if (v27 >= 8)
        {
          v29 = v27 + 1;
          v30 = v29 & 7;
          if ((v29 & 7) == 0)
          {
            v30 = 8;
          }

          v28 = v29 - v30;
          v31 = v5 - v17;
          if (v25 < v5 - v17)
          {
            v31 = v25;
          }

          v32 = ~v31 + v30;
          v33 = v36;
          v34 = &v14[v17];
          do
          {
            *v34++ = *(v33++ + v22);
            v32 += 8;
          }

          while (v32);
        }

        else
        {
          v28 = 0;
        }

        v35 = v5 - v17;
        while (v28 != v35)
        {
          v20[v28] = *(v26 + v28);
          v26 = (v26 + 1);
          ++v20;
          --v24;
          --v35;
          if (v28 == v24)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_35:
      __break(1u);
    }

    result = v13;
  }

LABEL_34:
  *result = v9;
  return result;
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(unint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v6 = result;
  if (!a3)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    if (a2 > 0x7FFFFFEF)
    {
      v7 = 0;
      goto LABEL_21;
    }

    result = WTF::tryFastCompactMalloc((2 * a2 + 20));
    v7 = v59;
    if (!v59)
    {
      goto LABEL_21;
    }

    result = v59 + 20;
    *v59 = 2;
    *(v59 + 4) = a2;
    *(v59 + 8) = v59 + 20;
    *(v59 + 16) = 0;
    if (!a4)
    {
      goto LABEL_21;
    }

    v8 = *(a4 + 8);
    v18 = *(a4 + 4);
    if ((*(a4 + 16) & 4) == 0)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          *result = *v8;
          *v6 = v59;
          return result;
        }

        v9 = 2 * v18;
        goto LABEL_52;
      }

LABEL_21:
      *v6 = v7;
      return result;
    }

    v19 = (result + 2 * v18);
    if (v18 >= 0x40)
    {
      v20 = result + 2 * (v18 & 0xFFFFFFC0);
      v21 = 0uLL;
      do
      {
        v60.val[0] = *v8;
        v22 = *(v8 + 16);
        v61.val[0] = *(v8 + 32);
        v23 = *(v8 + 48);
        v8 += 64;
        v24 = v23;
        v61.val[1] = 0uLL;
        v62.val[0] = v22;
        v60.val[1] = 0uLL;
        v25 = result;
        vst2q_s8(v25, v60);
        v25 += 32;
        v62.val[1] = 0uLL;
        vst2q_s8(v25, v62);
        v26 = (result + 64);
        vst2q_s8(v26, v61);
        v27 = (result + 96);
        vst2q_s8(v27, *(&v21 - 1));
        result += 128;
      }

      while (result != v20);
      result = v20;
    }

    if (result == v19)
    {
      goto LABEL_21;
    }

    v28 = v59 + 2 * v18 - result + 18;
    if (v28 < 0xE || (result < v8 + (v28 >> 1) + 1 ? (v29 = v8 >= (v28 & 0xFFFFFFFFFFFFFFFELL) + result + 2) : (v29 = 1), !v29))
    {
      v35 = v8;
      v36 = result;
      goto LABEL_49;
    }

    v30 = (v28 >> 1) + 1;
    if (v28 >= 0x3E)
    {
      v31 = v30 & 0xFFFFFFFFFFFFFFE0;
      v49 = (result + 32);
      v50 = (v8 + 16);
      v51 = v30 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v52 = *v50[-2].i8;
        v53 = vmovl_u8(*v50);
        v54 = vmovl_high_u8(*v50->i8);
        v49[-2] = vmovl_u8(*v52.i8);
        v49[-1] = vmovl_high_u8(v52);
        *v49 = v53;
        v49[1] = v54;
        v49 += 4;
        v50 += 4;
        v51 -= 32;
      }

      while (v51);
      if (v30 == v31)
      {
        goto LABEL_21;
      }

      if ((v30 & 0x18) == 0)
      {
        v36 = (result + 2 * v31);
        v35 = (v8 + v31);
        do
        {
LABEL_49:
          v37 = *v35++;
          *v36++ = v37;
        }

        while (v36 != v19);
        goto LABEL_21;
      }
    }

    else
    {
      v31 = 0;
    }

    v35 = (v8 + (v30 & 0xFFFFFFFFFFFFFFF8));
    v36 = (result + 2 * (v30 & 0xFFFFFFFFFFFFFFF8));
    v55 = (result + 2 * v31);
    v56 = (v8 + v31);
    v57 = v31 - (v30 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v58 = *v56++;
      *v55++ = vmovl_u8(v58);
      v57 += 8;
    }

    while (v57);
    if (v30 == (v30 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  if (!a2)
  {
LABEL_22:
    v17 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    *result = v17;
    return result;
  }

  result = WTF::tryFastCompactMalloc((a2 + 20));
  v7 = v59;
  if (!v59)
  {
    goto LABEL_21;
  }

  result = v59 + 20;
  *v59 = 2;
  *(v59 + 4) = a2;
  *(v59 + 8) = v59 + 20;
  *(v59 + 16) = 4;
  if (!a4)
  {
    goto LABEL_21;
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 4);
  if ((*(a4 + 16) & 4) == 0)
  {
    v10 = (result + v9);
    if (v9 >= 0x10)
    {
      v11 = result + (v9 & 0xFFFFFFF0);
      do
      {
        v12 = vld2q_s8(v8);
        v8 += 32;
        *result = v12;
        result += 16;
      }

      while (result != v11);
    }

    if (result == v10)
    {
      goto LABEL_21;
    }

    v13 = v59 + v9;
    v14 = v59 + v9 - result + 20;
    if (v14 < 4 || (result < v8 - 2 * result + 2 * v13 + 40 ? (v15 = v8 >= v13 + 20) : (v15 = 1), !v15))
    {
      v32 = result;
      v33 = v8;
      goto LABEL_46;
    }

    if (v14 >= 0x20)
    {
      v16 = v14 & 0xFFFFFFFFFFFFFFE0;
      v38 = (v8 + 32);
      v39 = (result + 16);
      v40 = v14 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v42 = v38[-2];
        v41 = v38[-1];
        v44 = *v38;
        v43 = v38[1];
        v38 += 4;
        v39[-1] = vuzp1q_s8(v42, v41);
        *v39 = vuzp1q_s8(v44, v43);
        v39 += 2;
        v40 -= 32;
      }

      while (v40);
      if (v14 == v16)
      {
        goto LABEL_21;
      }

      if ((v14 & 0x1C) == 0)
      {
        v33 = (v8 + 2 * v16);
        v32 = (result + v16);
        do
        {
LABEL_46:
          v34 = *v33;
          v33 += 2;
          *v32++ = v34;
        }

        while (v32 != v10);
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    v32 = (result + (v14 & 0xFFFFFFFFFFFFFFFCLL));
    v33 = (v8 + 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL));
    v45 = (v8 + 2 * v16);
    v46 = (result + v16);
    v47 = v16 - (v14 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v48 = *v45++;
      *v46++ = vuzp1_s8(v48, v48).u32[0];
      v47 += 4;
    }

    while (v47);
    if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

  if (!v9)
  {
    goto LABEL_21;
  }

  if (v9 == 1)
  {
    *result = *v8;
    *v6 = v59;
    return result;
  }

LABEL_52:
  result = memcpy(result, v8, v9);
  *v6 = v7;
  return result;
}

uint64_t WTF::HashTable<WGSL::AST::Expression const*,WTF::KeyValuePair<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Expression const*>,WTF::HashMap<WGSL::AST::Expression const*,WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Expression const*>,WTF::HashTraits<WGSL::AST::Expression const*>,WTF::HashTraits<WTF::Vector<WTF::Function<std::optional<WTF::String> ()(WGSL::ConstantValue const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Expression const*>,WTF::FastMalloc>::rehash(void *a1, unsigned int a2, uint64_t *a3)
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
    v42 = v5;
    do
    {
      v13 = (v5 + 24 * v10);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v19 = *v4;
          if (*v4)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v19 + 24 * v24;
            v24 = (v24 + v25++) & v20;
          }

          while (*v26);
          v27 = (v26 + 8);
          v28 = *(v26 + 8);
          v29 = *(v26 + 20);
          if (v29)
          {
            v30 = v12;
            v31 = v11;
            v32 = v4;
            v33 = 8 * v29;
            do
            {
              v34 = *v28;
              *v28 = 0;
              if (v34)
              {
                (*(*v34 + 8))(v34);
              }

              v28 = (v28 + 8);
              v33 -= 8;
            }

            while (v33);
            v28 = *v27;
            v4 = v32;
            v11 = v31;
            v12 = v30;
            v5 = v42;
          }

          if (v28)
          {
            *(v26 + 8) = 0;
            *(v26 + 16) = 0;
            WTF::fastFree(v28, v9);
          }

          v35 = *v13;
          *v27 = 0;
          *(v26 + 16) = 0;
          v36 = v13[1];
          v13[1] = 0;
          *v26 = v35;
          *(v26 + 8) = v36;
          LODWORD(v35) = *(v13 + 4);
          *(v13 + 4) = 0;
          *(v26 + 16) = v35;
          LODWORD(v35) = *(v13 + 5);
          *(v13 + 5) = 0;
          *(v26 + 20) = v35;
          v37 = *(v13 + 5);
          v38 = v13[1];
          if (v37)
          {
            v39 = 8 * v37;
            do
            {
              v40 = *v38;
              *v38 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }

              v38 = (v38 + 8);
              v39 -= 8;
            }

            while (v39);
            v38 = v13[1];
          }

          if (v38)
          {
            v13[1] = 0;
            *(v13 + 4) = 0;
            WTF::fastFree(v38, v9);
          }

          if (v13 == a3)
          {
            v11 = v26;
          }
        }

        else
        {
          v15 = *(v13 + 5);
          v16 = v13[1];
          if (v15)
          {
            v17 = 8 * v15;
            do
            {
              v18 = *v16;
              *v16 = 0;
              if (v18)
              {
                (*(*v18 + 8))(v18);
              }

              v16 = (v16 + 8);
              v17 -= 8;
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

uint64_t WTF::Detail::CallableWrapper<WGSL::TypeChecker::visit(WGSL::AST::ArrayTypeExpression &)::$_0,std::optional<WTF::String>,WGSL::ConstantValue const&>::call@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 5:
      if (*a1 > 0)
      {
        goto LABEL_6;
      }

LABEL_9:
      result = WTF::StringImpl::createWithoutCopyingNonEmpty();
      a2[8] = 1;
      return result;
    case 4:
      if (!*a1)
      {
        goto LABEL_9;
      }

LABEL_6:
      *a2 = 0;
      a2[8] = 0;
      return result;
    case 3:
      if (*a1 > 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
  }

  result = 167;
  __break(0xC471u);
  return result;
}

void WTF::HashMap<WTF::String,WGSL::Binding,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Binding>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::Binding const&>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, __int128 *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x225877514);
  }

  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Binding>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Binding>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Binding,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Binding>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
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
    v16 = v8 + (v15 << 6);
    v17 = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + (v15 << 6));
      goto LABEL_11;
    }

    if (!v17)
    {
      if (v13)
      {
        v17 = 0;
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        --*(*a2 - 16);
        v16 = v13;
      }

      v20 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        v17 = *v16;
      }

      *v16 = v20;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, a2);
      }

      v29 = *a4;
      v30 = *(a4 + 16);
      LOBYTE(v31[0]) = 0;
      v33 = 0;
      if (*(a4 + 48) == 1)
      {
        v32 = -1;
        v21 = *(a4 + 40);
        if (v21 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v21, &v34, v31, a4 + 3);
          v32 = *(a4 + 40);
        }

        v33 = 1;
      }

      *(v16 + 24) = v30;
      *(v16 + 8) = v29;
      std::__optional_storage_base<WGSL::ConstantValue,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WGSL::ConstantValue,false>>((v16 + 32), v31);
      if (v33 == 1 && v32 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v34, v31);
      }

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
          goto LABEL_33;
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
LABEL_33:
          if (3 * v26 > 4 * v25)
          {
LABEL_41:
            v27 = v22 + (v26 << 6);
            v28 = 1;
            goto LABEL_44;
          }

          if (!v26)
          {
            v16 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Binding>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Binding>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Binding,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Binding>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v16);
            v22 = *a2;
            if (!*a2)
            {
LABEL_36:
              v26 = 0;
              goto LABEL_41;
            }

LABEL_40:
            v26 = *(v22 - 4);
            goto LABEL_41;
          }

LABEL_39:
          v16 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Binding>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Binding>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Binding,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Binding>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v26 << (6 * v24 >= (2 * v26)), v16);
          v22 = *a2;
          if (!*a2)
          {
            goto LABEL_36;
          }

          goto LABEL_40;
        }
      }

      if (v26 > 2 * v25)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (WTF::equal(v17, *a3, a3))
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
  v27 = v18 + (v19 << 6);
LABEL_44:
  *a1 = v16;
  *(a1 + 8) = v27;
  *(a1 + 16) = v28;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Binding>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Binding>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Binding,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Binding>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc(((a2 << 6) | 0x10));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), a2 << 6);
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
    v15 = v7;
    while (1)
    {
      v16 = v6 + (v13 << 6);
      v17 = *v16;
      if (*v16 != -1)
      {
        if (v17)
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
            v20 = *(v17 + 4);
            if (v20 >= 0x100)
            {
              goto LABEL_22;
            }

LABEL_24:
            v21 = WTF::StringImpl::hashSlowCase(v17);
          }

          else
          {
            v19 = 0;
            v20 = *(v17 + 4);
            if (v20 < 0x100)
            {
              goto LABEL_24;
            }

LABEL_22:
            v21 = v20 >> 8;
          }

          v22 = 0;
          do
          {
            v23 = v21 & v19;
            v21 = ++v22 + v23;
          }

          while (*(v18 + (v23 << 6)));
          v24 = v18 + (v23 << 6);
          if ((*(v24 + 56) & 1) == 0 || *(v24 + 48) == 255)
          {
            *v24 = 0;
          }

          else
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v31, (v24 + 32));
            v25 = *v24;
            *(v24 + 48) = -1;
            *v24 = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v10);
            }
          }

          v26 = *v16;
          *v16 = 0;
          *v24 = v26;
          v27 = *(v16 + 8);
          *(v24 + 24) = *(v16 + 24);
          *(v24 + 8) = v27;
          *(v24 + 32) = 0;
          *(v24 + 56) = 0;
          if (*(v16 + 56) == 1)
          {
            mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v24 + 32, (v16 + 32));
            *(v24 + 56) = 1;
            if (*(v16 + 56))
            {
              if (*(v16 + 48) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, (v16 + 32));
              }

              *(v16 + 48) = -1;
            }
          }

          v28 = *v16;
          *v16 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v10);
          }

          if (v16 == a3)
          {
            v14 = v24;
          }

          goto LABEL_10;
        }

        if (*(v16 + 56) == 1)
        {
          if (*(v16 + 48) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, (v16 + 32));
            v17 = *v16;
          }

          *(v16 + 48) = -1;
        }

        *v16 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v10);
          }
        }
      }

LABEL_10:
      if (++v13 == v15)
      {
        goto LABEL_42;
      }
    }
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_42:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

__n128 std::__function::__func<WGSL::TypeChecker::allocateTextureStorageConstructor(WTF::ASCIILiteral,WGSL::Types::TextureStorage::Kind)::$_0,std::allocator<WGSL::TypeChecker::allocateTextureStorageConstructor(WTF::ASCIILiteral,WGSL::Types::TextureStorage::Kind)::$_0>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D6760;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<WGSL::TypeChecker::allocateTextureStorageConstructor(WTF::ASCIILiteral,WGSL::Types::TextureStorage::Kind)::$_0,std::allocator<WGSL::TypeChecker::allocateTextureStorageConstructor(WTF::ASCIILiteral,WGSL::Types::TextureStorage::Kind)::$_0>,std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression &)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a2 + 108) == 2)
  {
    v6 = *(a1 + 8);
    v7 = **(a2 + 96);
    v11 = WGSL::TypeChecker::infer(&v25, v6, v7, 3u, 0);
    if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_30;
      }

      v19 = v25;
      if (!v25)
      {
        v20 = v26;
        goto LABEL_20;
      }

      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      v20 = v26;
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v22 = v20;
        WTF::StringImpl::destroy(v19, v9);
        v20 = v22;
      }
    }

    else
    {
      v12 = v25;
      v13 = *(v6[9] + 120);
      if (v25 == v13 || WGSL::conversionRank(v13, v25, v10) != -1)
      {
        if ((*(*v7 + 16))(v7, v11) != 21 || (v14 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::TexelFormat> [17]>::tryGet<WTF::String>(WGSL::parseTexelFormat(WTF::String const&)::__map, (v7 + 88)), *(a2 + 108) <= 1u))
        {
          __break(0xC471u);
          JUMPOUT(0x225877BB8);
        }

        v15 = *v14;
        WGSL::TypeChecker::accessMode(&v29, v6, *(*(a2 + 96) + 8));
        if (!v31)
        {
          *a3 = WGSL::TypeStore::textureStorageType(v6[9], *(a1 + 16), v15, v29);
          *(a3 + 24) = 0;
          return;
        }

        if (v31 == 1)
        {
          v21 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
            *a3 = v21;
            *(a3 + 8) = v30;
            *(a3 + 24) = 1;
            if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v16);
            }

            return;
          }

          *a3 = 0;
          v20 = v30;
LABEL_21:
          *(a3 + 8) = v20;
          *(a3 + 24) = 1;
          return;
        }

LABEL_30:
        mpark::throw_bad_variant_access(v8);
      }

      WGSL::Type::Type(&v29, v12);
      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v24, "cannot use '", 13, &v29, "' as texel format", 18);
      v20 = *(v7 + 8);
      v19 = v24;
      if (v32 != 255)
      {
        v23 = *(v7 + 8);
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v28, &v29);
        v20 = v23;
      }

      if (!v19)
      {
LABEL_20:
        *a3 = 0;
        goto LABEL_21;
      }
    }

    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    *a3 = v19;
    *(a3 + 8) = v20;
    *(a3 + 24) = 1;
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      WTF::StringImpl::destroy(v19, v9);
    }
  }

  else
  {
    v30 = *(a2 + 72);
    v29 = off_2838D37C0;
    v17 = *(a2 + 88);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    v31 = v17;
    WTF::makeString<char,WGSL::AST::Identifier,WTF::ASCIILiteral>(&v25, v17, "' requires 2 template argument", 31);
    *a3 = v25;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 24) = 1;
    WGSL::AST::Identifier::~Identifier(&v29, v18);
  }
}

unint64_t WGSL::Types::Array::stride(WGSL::Types::Array *this)
{
  v2 = WGSL::Type::alignment(*this);
  result = WGSL::Type::maybeSize(*this);
  if ((result & 0x100000000) != 0)
  {
    return (v2 + result - 1) & -v2;
  }

  __break(1u);
  return result;
}

uint64_t WGSL::Type::alignment(uint64_t this)
{
  while (2)
  {
    LODWORD(v1) = *(this + 48);
    if (v1 == 255)
    {
      v2 = -1;
    }

    else
    {
      v2 = *(this + 48);
    }

    switch(v2)
    {
      case 1:
        if (v1 != 1)
        {
          goto LABEL_57;
        }

        v14 = this;
        v7 = WGSL::Type::alignment(*this);
        v8 = *(v14 + 8);
        goto LABEL_30;
      case 2:
        if (v1 != 2)
        {
          goto LABEL_57;
        }

        v6 = this;
        v7 = WGSL::Type::alignment(*this);
        v8 = *(v6 + 9);
LABEL_30:
        if (v8 == 2)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        return (v7 << v15);
      case 3:
        if (v1 != 3)
        {
          goto LABEL_57;
        }

        this = *this;
        continue;
      case 4:
        if (v1 != 4)
        {
          goto LABEL_57;
        }

        v1 = *this;
        if ((*(*this + 136) & 1) == 0)
        {
          goto LABEL_43;
        }

        return *(v1 + 33);
      case 5:
        if (v1 != 5)
        {
          goto LABEL_57;
        }

        v9 = *(this + 16);
        if (v9)
        {
          v10 = (v9 + 2);
        }

        else
        {
          v10 = 0;
        }

        if (v9)
        {
          v11 = &v9[2 * *v9 + 2];
          if (v10 != v11)
          {
            goto LABEL_22;
          }

          return 0;
        }

        v11 = 0;
        if (!v10)
        {
          return 0;
        }

LABEL_22:
        LODWORD(v4) = 0;
        do
        {
          v12 = *v10++;
          v13 = WGSL::Type::alignment(v12);
          if (v4 <= v13)
          {
            v4 = v13;
          }

          else
          {
            v4 = v4;
          }
        }

        while (v10 != v11);
        return v4;
      case 6:
        if (v1 == 6)
        {
          __break(0xC471u);
          JUMPOUT(0x225877F48);
        }

        goto LABEL_57;
      case 7:
        if (v1 == 7)
        {
          __break(0xC471u);
          JUMPOUT(0x225877F1CLL);
        }

        goto LABEL_57;
      case 8:
        if (v1 == 8)
        {
          __break(0xC471u);
          JUMPOUT(0x225877EF4);
        }

        goto LABEL_57;
      case 9:
        if (v1 == 9)
        {
          __break(0xC471u);
          JUMPOUT(0x225877ECCLL);
        }

        goto LABEL_57;
      case 10:
        if (v1 == 10)
        {
          __break(0xC471u);
          JUMPOUT(0x225877EA4);
        }

        goto LABEL_57;
      case 11:
        if (v1 == 11)
        {
          __break(0xC471u);
          JUMPOUT(0x225877E7CLL);
        }

        goto LABEL_57;
      case 12:
        if (v1 != 12)
        {
          goto LABEL_57;
        }

        this = *this;
        if (!this)
        {
          __break(0xC471u);
          JUMPOUT(0x225877C8CLL);
        }

        continue;
      case 13:
        goto LABEL_44;
      default:
        if (*(this + 48))
        {
          goto LABEL_57;
        }

        v3 = *this;
        v4 = 2;
        if (v3 > 0xD)
        {
          return v4;
        }

        if (((1 << v3) & 0x26) != 0)
        {
          return 4;
        }

        if (v3 == 7)
        {
          return 1;
        }

        LODWORD(v1) = 1 << v3;
        if ((v1 & 0x3F49) != 0)
        {
          this = 409;
          __break(0xC471u);
LABEL_43:
          __break(1u);
LABEL_44:
          if (v1 == 13)
          {
            __break(0xC471u);
            JUMPOUT(0x225877E54);
          }

LABEL_57:
          mpark::throw_bad_variant_access(this);
        }

        return v4;
    }
  }
}

unsigned __int8 *WGSL::Type::dump(unsigned __int8 *result, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = result[48];
  if (v2 == 255)
  {
    v3 = -1;
  }

  else
  {
    v3 = result[48];
  }

  v5 = result;
  switch(v3)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_90;
      }

      v14 = *result;
      v15 = (*(*a2 + 32))(a2);
      WTF::printInternal();
      goto LABEL_39;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_90;
      }

      v14 = *result;
      v15 = (*(*a2 + 32))(a2);
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
LABEL_39:
      WTF::printInternal();
      WTF::printInternal();
      WGSL::Type::dump(v14, v15);
      goto LABEL_126;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_90;
      }

      v16 = *result;
      v17 = (*(*a2 + 32))(a2);
      WTF::printInternal();
      WGSL::Type::dump(v16, v17);
      result = (*(*a2 + 40))(a2);
      v18 = v5[16];
      if (v18 == 255)
      {
        v19 = -1;
      }

      else
      {
        v19 = v5[16];
      }

      if (v19 == 2)
      {
        if (v18 != 2)
        {
          goto LABEL_90;
        }

        v38 = *(v5 + 1);
        (*(*a2 + 32))(a2);
        WTF::printInternal();
        (*(*a2 + 40))(a2);
        LOBYTE(v49) = 0;
        v50 = 0;
        v48 = &unk_2838D3580;
        WTF::StringPrintStream::StringPrintStream(v51);
        v52 = 0;
        WGSL::AST::Visitor::visit(&v48, v38);
        WTF::StringPrintStream::toString(&v47, v51);
        (*(*a2 + 32))(a2);
        WTF::printInternal();
        (*(*a2 + 40))(a2);
        v40 = v47;
        v47 = 0;
        if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v39);
        }

        v41 = v52;
        v52 = 0;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v39);
        }

        WTF::StringPrintStream::~StringPrintStream(v51);
        v48 = &unk_2838D37E8;
        if (v50 == 1)
        {
          v43 = v49;
          v49 = 0;
          if (v43)
          {
            if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v42);
            }
          }
        }
      }

      else
      {
        if (v19 == 1)
        {
          if (v18 == 1)
          {
            (*(*a2 + 32))(a2);
            WTF::printInternal();
            WTF::printInternal();
LABEL_98:
            (*(*a2 + 40))(a2);
            goto LABEL_99;
          }

LABEL_90:
          mpark::throw_bad_variant_access(result);
        }

        if (v5[16])
        {
          goto LABEL_90;
        }
      }

LABEL_99:
      (*(*a2 + 32))(a2);
      goto LABEL_126;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_90;
      }

      v11 = (*(*a2 + 32))(a2);
      (*(*v11 + 32))(v11);
      WTF::printInternal();
      (*(*v11 + 40))(v11);
      goto LABEL_127;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_90;
      }

      (*(*a2 + 32))(a2);
      WTF::printInternal();
      WTF::printInternal();
      (*(*a2 + 40))(a2);
      v21 = v5[8];
      if (v21 == 2)
      {
        v22 = *(v5 + 2);
        if (!*v22)
        {
          __break(0xC471u);
          JUMPOUT(0x225878F30);
        }
      }

      else if (v21 == 1)
      {
        v22 = *(v5 + 2);
        if (!*v22)
        {
          __break(0xC471u);
          JUMPOUT(0x225878BA0);
        }
      }

      else
      {
        if (v5[8])
        {
          goto LABEL_99;
        }

        v22 = *(v5 + 2);
        if (!*v22)
        {
          __break(0xC471u);
          JUMPOUT(0x225878494);
        }
      }

      v44 = *(v22 + 8);
      v45 = (*(*a2 + 32))(a2);
      WGSL::Type::dump(v44, v45);
      goto LABEL_98;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_90;
      }

      (*(*a2 + 32))(a2);
      WTF::printInternal();
      (*(*a2 + 40))(a2);
      v23 = *(v5 + 3);
      if (v23)
      {
        v24 = *v5;
        v25 = **v5;
        v26 = (*(*a2 + 32))(a2);
        WGSL::Type::dump(v25, v26);
        (*(*a2 + 40))(a2);
        if (v23 != 1)
        {
          v27 = v24 + 1;
          v28 = 8 * v23 - 8;
          do
          {
            v29 = *v27++;
            (*(*a2 + 32))(a2);
            WTF::printInternal();
            (*(*a2 + 40))(a2);
            v30 = (*(*a2 + 32))(a2);
            WGSL::Type::dump(v29, v30);
            (*(*a2 + 40))(a2);
            v28 -= 8;
          }

          while (v28);
        }
      }

      v31 = *(v5 + 2);
      v32 = (*(*a2 + 32))(a2);
      WTF::printInternal();
      WGSL::Type::dump(v31, v32);
      goto LABEL_127;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_90;
      }

      v20 = result[8];
      if (v20 <= 3)
      {
        if (v20 == 1 || v20 == 2)
        {
          goto LABEL_103;
        }

        if (v20 == 3)
        {
          WTF::PrintStream::print<char [17]>(a2);
        }
      }

      else
      {
        if (result[8] <= 5u)
        {
          if (v20 != 4)
          {
            if (v20 == 5)
            {
              WTF::PrintStream::print<char [13]>(a2);
            }

            goto LABEL_104;
          }

LABEL_103:
          WTF::PrintStream::print<char [11]>(a2);
          goto LABEL_104;
        }

        if (v20 == 6)
        {
          WTF::PrintStream::print<char [19]>(a2);
        }

        else if (v20 == 7)
        {
          WTF::PrintStream::print<char [24]>(a2);
        }
      }

LABEL_104:
      v12 = *v5;
      v13 = (*(*a2 + 32))(a2);
LABEL_105:
      WTF::printInternal();
      WGSL::Type::dump(v12, v13);
LABEL_126:
      WTF::printInternal();
LABEL_127:
      v46 = *(*a2 + 40);

      return v46(a2);
    case 8:
      if (v2 == 8)
      {
        if ((*result - 1) < 4u)
        {
          (*(*a2 + 32))(a2);
          WTF::printInternal();
          (*(*a2 + 40))(a2);
        }

        v7 = (*(*a2 + 32))(a2);
        WTF::printInternal();
        switch(v5[1])
        {
          case 1u:
            v33 = "r32float";
            v34 = 9;
            goto LABEL_123;
          case 2u:
            v33 = "r32sint";
            v34 = 8;
            goto LABEL_123;
          case 3u:
            v33 = "r32uint";
            v34 = 8;
            goto LABEL_123;
          case 4u:
            v33 = "rg32float";
            v34 = 10;
            goto LABEL_123;
          case 5u:
            v33 = "rg32sint";
            v34 = 9;
            goto LABEL_123;
          case 6u:
            v33 = "rg32uint";
            v34 = 9;
            goto LABEL_123;
          case 7u:
            v33 = "rgba16float";
            v34 = 12;
            goto LABEL_123;
          case 8u:
            v33 = "rgba16sint";
            goto LABEL_122;
          case 9u:
            v33 = "rgba16uint";
            goto LABEL_122;
          case 0xAu:
            v33 = "rgba32float";
            v34 = 12;
            goto LABEL_123;
          case 0xBu:
            v33 = "rgba32sint";
            goto LABEL_122;
          case 0xCu:
            v33 = "rgba32uint";
            goto LABEL_122;
          case 0xDu:
            v33 = "rgba8sint";
            v34 = 10;
            goto LABEL_123;
          case 0xEu:
            v33 = "rgba8snorm";
            goto LABEL_122;
          case 0xFu:
            v33 = "rgba8uint";
            v34 = 10;
            goto LABEL_123;
          case 0x10u:
            v33 = "rgba8unorm";
            goto LABEL_122;
          default:
            v33 = "bgra8unorm";
LABEL_122:
            v34 = 11;
LABEL_123:
            v48 = v33;
            v49 = v34;
            (*(*v7 + 32))(v7);
            WTF::ASCIILiteral::dump();
            (*(*v7 + 40))(v7);
            WTF::printInternal();
            v35 = v5[2];
            if (v35 == 2)
            {
              goto LABEL_124;
            }

            goto LABEL_75;
        }
      }

      goto LABEL_90;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_90;
      }

      if (*result - 1 <= 4)
      {
        goto LABEL_20;
      }

      return result;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_90;
      }

      v6 = *(result + 1);
      v7 = (*(*a2 + 32))(a2);
      WTF::printInternal();
      v8 = *v5;
      v9 = "function";
      v10 = 9;
      if (v8 <= 2)
      {
        goto LABEL_62;
      }

      if (v8 == 3)
      {
        goto LABEL_57;
      }

      goto LABEL_11;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_90;
      }

      v6 = *(result + 1);
      v7 = (*(*a2 + 32))(a2);
      WTF::printInternal();
      v8 = *v5;
      v9 = "function";
      v10 = 9;
      if (v8 <= 2)
      {
LABEL_62:
        if (v8 == 1)
        {
          v9 = "handle";
          v10 = 7;
LABEL_74:
          v48 = v9;
          v49 = v10;
          (*(*v7 + 32))(v7);
          WTF::ASCIILiteral::dump();
          (*(*v7 + 40))(v7);
          WTF::printInternal();
          WGSL::Type::dump(v6, v7);
          WTF::printInternal();
          v35 = v5[1];
          if (v35 == 2)
          {
LABEL_124:
            v36 = "write";
            v37 = 6;
          }

          else
          {
LABEL_75:
            if (v35 == 1)
            {
              v36 = "read_write";
              v37 = 11;
            }

            else
            {
              v36 = "read";
              v37 = 5;
            }
          }

          v48 = v36;
          v49 = v37;
          (*(*v7 + 32))(v7);
          WTF::ASCIILiteral::dump();
          (*(*v7 + 40))(v7);
          goto LABEL_126;
        }

        if (v8 != 2)
        {
          goto LABEL_74;
        }

        v9 = "private";
      }

      else if (v8 == 3)
      {
LABEL_57:
        v9 = "storage";
      }

      else
      {
LABEL_11:
        if (v8 != 4)
        {
          if (v8 == 5)
          {
            v9 = "workgroup";
            v10 = 10;
          }

          goto LABEL_74;
        }

        v9 = "uniform";
      }

      v10 = 8;
      goto LABEL_74;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_90;
      }

      v12 = *result;
      v13 = (*(*a2 + 32))(a2);
      goto LABEL_105;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_90;
      }

      (*(*a2 + 32))(a2);
      WTF::ASCIILiteral::dump();
      goto LABEL_127;
    default:
      if (result[48])
      {
        goto LABEL_90;
      }

      if (*result > 0xDuLL)
      {
        return result;
      }

LABEL_20:
      (*(*a2 + 32))(a2);
      goto LABEL_126;
  }
}

uint64_t WGSL::conversionRank(WGSL *this, const WGSL::Type *a2, const WGSL::Type *a3)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (this)
        {
          if (*(this + 48) != 10)
          {
            while (1)
            {
              v3 = a2 == 0;
              if (!a2 || *(a2 + 48) != 10)
              {
                break;
              }

              if (*(a2 + 1) == 2)
              {
                return 0xFFFFFFFFLL;
              }

              a2 = *(a2 + 1);
              if (this == a2)
              {
                return 0;
              }
            }

            goto LABEL_11;
          }

          if (*(this + 1) == 2)
          {
            return 0xFFFFFFFFLL;
          }

          this = *(this + 1);
          if (this == a2)
          {
            return 0;
          }
        }

        while (1)
        {
          v3 = a2 == 0;
          if (!a2 || *(a2 + 48) != 10)
          {
            break;
          }

          if (*(a2 + 1) == 2)
          {
            return 0xFFFFFFFFLL;
          }

          a2 = *(a2 + 1);
          if (!a2)
          {
            return 0;
          }
        }

LABEL_11:
        if (!this)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = *(this + 48);
        if (v4 <= 1)
        {
          break;
        }

        if (v4 == 2)
        {
          if (v3 || *(a2 + 48) != 2 || *(this + 8) != *(a2 + 8) || *(this + 9) != *(a2 + 9))
          {
            return 0xFFFFFFFFLL;
          }

          a2 = *a2;
          this = *this;
          if (this == a2)
          {
            return 0;
          }
        }

        else
        {
          if (v4 != 3)
          {
            goto LABEL_41;
          }

          if (v3 || *(a2 + 48) != 3)
          {
            return 0xFFFFFFFFLL;
          }

          v5 = *(this + 16);
          v6 = *(a2 + 16);
          if (v5 == 255 || v6 != v5)
          {
            if (v6 != v5)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else if (*(this + 16))
          {
            if (v5 == 2)
            {
              if (*(this + 1) != *(a2 + 1))
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (*(this + 2) != *(a2 + 2))
            {
              return 0xFFFFFFFFLL;
            }
          }

          a2 = *a2;
          this = *this;
          if (this == a2)
          {
            return 0;
          }
        }
      }

      if (v4 != 1)
      {
        break;
      }

      if (v3 || *(a2 + 48) != 1 || *(this + 8) != *(a2 + 8))
      {
        return 0xFFFFFFFFLL;
      }

      a2 = *a2;
      this = *this;
      if (this == a2)
      {
        return 0;
      }
    }

    if (!*(this + 48))
    {
      break;
    }

LABEL_41:
    if (v4 != 5)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a2 + 48) != 5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(this + 8);
    if (v7 != *(a2 + 8))
    {
      return 0xFFFFFFFFLL;
    }

    if (v7 == 1)
    {
      v8 = *(this + 2);
      if (!*v8)
      {
        __break(0xC471u);
        JUMPOUT(0x2258792DCLL);
      }

      v9 = *(a2 + 2);
      if (!*v9)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (*(this + 8))
      {
        return 0xFFFFFFFFLL;
      }

      v8 = *(this + 2);
      if (!*v8)
      {
LABEL_81:
        __break(0xC471u);
        JUMPOUT(0x22587929CLL);
      }

      v9 = *(a2 + 2);
      if (!*v9)
      {
        __break(0xC471u);
        JUMPOUT(0x2258792BCLL);
      }
    }

    a2 = *(v9 + 8);
    this = *(v8 + 8);
    if (this == a2)
    {
      return 0;
    }
  }

  if (v3 || *(a2 + 48))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *a2 | (*this << 8);
  if (v11 <= 3)
  {
    switch(v11)
    {
      case 1:
        return 3;
      case 2:
        return 4;
      case 3:
        return 5;
      default:
        return 0xFFFFFFFFLL;
    }
  }

  else if (v11 > 771)
  {
    if (v11 == 773)
    {
      return 1;
    }

    else
    {
      if (v11 != 772)
      {
        return 0xFFFFFFFFLL;
      }

      return 2;
    }
  }

  else
  {
    if (v11 != 4)
    {
      if (v11 == 5)
      {
        return 6;
      }

      return 0xFFFFFFFFLL;
    }

    return 7;
  }
}

void WGSL::Type::toString(WGSL::Type *this@<X0>, uint64_t *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  WTF::StringPrintStream::StringPrintStream(v4);
  WGSL::Type::dump(this, v4);
  WTF::StringPrintStream::toString(a2, v4);
  WTF::StringPrintStream::~StringPrintStream(v4);
}

unint64_t WGSL::Type::maybeSize(unint64_t this)
{
  v1 = *(this + 48);
  if (v1 == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(this + 48);
  }

  switch(v2)
  {
    case 1:
      if (v1 != 1)
      {
        goto LABEL_67;
      }

      v15 = this;
      this = WGSL::Type::maybeSize(*this);
      if ((this & 0x100000000) == 0)
      {
        goto LABEL_66;
      }

      return (this * *(v15 + 8)) | 0x100000000;
    case 2:
      if (v1 != 2)
      {
        goto LABEL_67;
      }

      v6 = *(this + 9);
      v7 = this;
      this = WGSL::Type::maybeSize(*this);
      if ((this & 0x100000000) == 0)
      {
        goto LABEL_66;
      }

      v8 = this;
      v9 = *(v7 + 9);
      v10 = WGSL::Type::alignment(*v7);
      if (v9 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      return ((((v10 << v11) + v8 * v6 - 1) & -(v10 << v11)) * *(v7 + 8)) | 0x100000000;
    case 3:
      if (v1 != 3)
      {
        goto LABEL_67;
      }

      v12 = *(this + 16);
      if (v12 == 2)
      {
        v20 = *(this + 8);
        if (*(v20 + 56) == 1)
        {
          v21 = this;
          v13 = WGSL::ConstantValue::integerValue((v20 + 32));
          this = v21;
          v14 = HIDWORD(v13) == 0;
          goto LABEL_59;
        }
      }

      else if (v12 == 1)
      {
        LODWORD(v13) = *(this + 8);
        v14 = 1;
        goto LABEL_59;
      }

      v14 = 1;
      LODWORD(v13) = 1;
LABEL_59:
      v22 = this;
      this = WGSL::Type::maybeSize(*this);
      if ((this & 0x100000000) == 0)
      {
        goto LABEL_66;
      }

      v23 = this;
      v24 = WGSL::Type::alignment(*v22);
      v25 = (v23 + v24 - 1) & -v24;
      if (v25 < v23)
      {
        return 0x1FFFFFFFFLL;
      }

      v26 = v13 * v25;
      result = 0x1FFFFFFFFLL;
      if ((v26 & 0xFFFFFFFF00000000) == 0)
      {
        v27 = v26 | 0x100000000;
        if (v14)
        {
          return v27;
        }
      }

      return result;
    case 4:
      if (v1 != 4)
      {
        goto LABEL_67;
      }

      if ((*(*this + 128) & 1) == 0)
      {
        goto LABEL_66;
      }

      return *(*this + 124) | 0x100000000;
    case 5:
      if (v1 != 5)
      {
        goto LABEL_67;
      }

      v16 = *(this + 16);
      if (v16)
      {
        v17 = (v16 + 2);
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = &v16[2 * *v16 + 2];
        if (v17 != v18)
        {
          goto LABEL_41;
        }

        return 0x100000000;
      }

      v18 = 0;
      if (!v17)
      {
        return 0x100000000;
      }

LABEL_41:
      LODWORD(v19) = 0;
      do
      {
        this = WGSL::Type::maybeSize(*v17);
        if ((this & 0x100000000) == 0)
        {
LABEL_66:
          __break(1u);
LABEL_67:
          mpark::throw_bad_variant_access(this);
        }

        v19 = (v19 + this);
        ++v17;
      }

      while (v17 != v18);
      return v19 | 0x100000000;
    case 6:
      if (v1 != 6)
      {
        goto LABEL_67;
      }

      return 0;
    case 7:
      if (v1 != 7)
      {
        goto LABEL_67;
      }

      return 0;
    case 8:
      if (v1 != 8)
      {
        goto LABEL_67;
      }

      return 0;
    case 9:
      if (v1 != 9)
      {
        goto LABEL_67;
      }

      return 0;
    case 10:
      if (v1 != 10)
      {
        goto LABEL_67;
      }

      return 0;
    case 11:
      if (v1 != 11)
      {
        goto LABEL_67;
      }

      return 0;
    case 12:
      if (v1 != 12)
      {
        goto LABEL_67;
      }

      v5 = *this;
      if (!v5)
      {
        __break(0xC471u);
        JUMPOUT(0x22587974CLL);
      }

      this = WGSL::Type::maybeSize(v5);
      if ((this & 0x100000000) == 0)
      {
        goto LABEL_66;
      }

      return this & 0x1FFFFFFFFLL;
    case 13:
      if (v1 != 13)
      {
        goto LABEL_67;
      }

      return 0;
    default:
      if (*(this + 48))
      {
        goto LABEL_67;
      }

      v3 = *this;
      if (v3 > 0xD)
      {
        return 0x100000002;
      }

      else
      {
        return qword_225882990[v3] | qword_225882920[v3];
      }
  }
}

uint64_t WGSL::Type::packing(WGSL::Type *this)
{
  if (!this)
  {
    return 2;
  }

  while (1)
  {
    v1 = *(this + 48);
    if (v1 != 10)
    {
      break;
    }

    this = *(this + 1);
    if (!this)
    {
      return 2;
    }
  }

  if (v1 == 1)
  {
    if (*(this + 8) == 3)
    {
      return 17;
    }

    return 2;
  }

  if (v1 != 3)
  {
    if (v1 == 4 && *(*this + 88) == 6)
    {
      return 5;
    }

    return 2;
  }

  v3 = WGSL::Type::packing(*this);
  return (8 * (v3 & 1)) | v3;
}

uint64_t WGSL::Type::isConstructible(WGSL::Type *this)
{
  v1 = *(this + 48);
  if (v1 == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(this + 48);
  }

  if (v2 == 3)
  {
    while (1)
    {
      if (v1 != 3)
      {
LABEL_49:
        mpark::throw_bad_variant_access(this);
      }

      if (*(this + 16) != 1)
      {
        return 0;
      }

      this = *this;
      v1 = *(this + 48);
      if (v1 == 255)
      {
        v2 = -1;
      }

      else
      {
        v2 = *(this + 48);
      }

      if (v2 != 3)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    switch(v2)
    {
      case 1:
        if (v1 != 1)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 2:
        if (v1 != 2)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 3:
        __break(1u);
        JUMPOUT(0x2258799D4);
      case 4:
        if (v1 != 4)
        {
          goto LABEL_49;
        }

        v8 = *(*this + 84);
        if (v8)
        {
          v9 = *(*this + 72);
          v10 = 8 * v8 - 8;
          do
          {
            v11 = *v9++;
            isConstructible = WGSL::Type::isConstructible(*(*(v11 + 104) + 24));
            if (isConstructible)
            {
              v13 = v10 == 0;
            }

            else
            {
              v13 = 1;
            }

            v10 -= 8;
          }

          while (!v13);
          result = isConstructible & 1;
        }

        else
        {
LABEL_48:
          result = 1;
        }

        break;
      case 5:
        if (v1 != 5)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 6:
        if (v1 != 6)
        {
          goto LABEL_49;
        }

        return 0;
      case 7:
        if (v1 != 7)
        {
          goto LABEL_49;
        }

        return 0;
      case 8:
        if (v1 != 8)
        {
          goto LABEL_49;
        }

        return 0;
      case 9:
        if (v1 == 9)
        {
          return 0;
        }

        goto LABEL_49;
      case 10:
        if (v1 != 10)
        {
          goto LABEL_49;
        }

        return 0;
      case 11:
        if (v1 != 11)
        {
          goto LABEL_49;
        }

        return 0;
      case 12:
        if (v1 != 12)
        {
          goto LABEL_49;
        }

        return 0;
      case 13:
        if (v1 != 13)
        {
          goto LABEL_49;
        }

        return 0;
      default:
        if (v1)
        {
          goto LABEL_49;
        }

        v3 = *this;
        v4 = v3 >= 0xE;
        v5 = 0xBFu >> v3;
        if (v4)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5;
        }

        result = v6 & 1;
        break;
    }
  }

  return result;
}

uint64_t WGSL::Type::isStorable(WGSL::Type *this)
{
  while (2)
  {
    v1 = *(this + 48);
    if (v1 == 255)
    {
      v2 = -1;
    }

    else
    {
      v2 = *(this + 48);
    }

    switch(v2)
    {
      case 1:
        if (v1 != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      case 2:
        if (v1 != 2)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      case 3:
        if (v1 != 3)
        {
          goto LABEL_11;
        }

LABEL_3:
        this = *this;
        continue;
      case 4:
        if (v1 != 4)
        {
          goto LABEL_11;
        }

        v4 = *(*this + 84);
        if (!v4)
        {
          return 1;
        }

        v5 = *(*this + 72);
        v6 = 8 * v4 - 8;
        do
        {
          v7 = *v5++;
          isStorable = WGSL::Type::isStorable(*(*(v7 + 104) + 24));
          if (isStorable)
          {
            v9 = v6 == 0;
          }

          else
          {
            v9 = 1;
          }

          v6 -= 8;
        }

        while (!v9);
        return isStorable & 1;
      case 5:
        if (v1 != 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v1 == 6)
        {
          return 0;
        }

        goto LABEL_11;
      case 7:
        if (v1 != 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v1 != 8)
        {
          goto LABEL_11;
        }

        return 1;
      case 9:
        if (v1 == 9)
        {
          return 1;
        }

        goto LABEL_11;
      case 10:
        if (v1 != 10)
        {
          goto LABEL_11;
        }

        return 0;
      case 11:
        if (v1 != 11)
        {
          goto LABEL_11;
        }

        return 0;
      case 12:
        if (v1 != 12)
        {
          goto LABEL_11;
        }

        return 1;
      case 13:
        if (v1 != 13)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (*(this + 48))
        {
LABEL_11:
          mpark::throw_bad_variant_access(this);
        }

        v10 = *this;
        v11 = v10 >= 0xE;
        v12 = 0x7B6u >> v10;
        if (v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        return v13 & 1;
    }
  }
}

uint64_t WGSL::Type::isHostShareable(WGSL::Type *this)
{
  while (2)
  {
    v1 = *(this + 48);
    if (v1 == 255)
    {
      v2 = -1;
    }

    else
    {
      v2 = *(this + 48);
    }

    switch(v2)
    {
      case 1:
        if (v1 != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      case 2:
        if (v1 != 2)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      case 3:
        if (v1 != 3)
        {
          goto LABEL_11;
        }

LABEL_3:
        this = *this;
        continue;
      case 4:
        if (v1 != 4)
        {
          goto LABEL_11;
        }

        v5 = *(*this + 84);
        if (!v5)
        {
          return 1;
        }

        v6 = *(*this + 72);
        v7 = 8 * v5 - 8;
        do
        {
          v8 = *v6++;
          isHostShareable = WGSL::Type::isHostShareable(*(*(v8 + 104) + 24));
          if (isHostShareable)
          {
            v9 = v7 == 0;
          }

          else
          {
            v9 = 1;
          }

          v7 -= 8;
        }

        while (!v9);
        return isHostShareable & 1;
      case 5:
        if (v1 != 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v1 == 6)
        {
          return 0;
        }

        goto LABEL_11;
      case 7:
        if (v1 != 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v1 != 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v1 != 9)
        {
          goto LABEL_11;
        }

        return 0;
      case 10:
        if (v1 != 10)
        {
          goto LABEL_11;
        }

        return 0;
      case 11:
        if (v1 != 11)
        {
          goto LABEL_11;
        }

        return 0;
      case 12:
        if (v1 != 12)
        {
          goto LABEL_11;
        }

        LOBYTE(isHostShareable) = 1;
        return isHostShareable & 1;
      case 13:
        if (v1 != 13)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (*(this + 48))
        {
LABEL_11:
          mpark::throw_bad_variant_access(this);
        }

        v10 = *this;
        v11 = v10 >= 0xE;
        v12 = 0x36u >> v10;
        if (v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        return v13 & 1;
    }
  }
}

uint64_t WGSL::Type::hasFixedFootprint(WGSL::Type *this)
{
  v1 = *(this + 48);
  if (v1 == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(this + 48);
  }

  switch(v2)
  {
    case 1:
      if (v1 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    case 2:
      if (v1 != 2)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    case 3:
      if (v1 != 3)
      {
        goto LABEL_38;
      }

      result = *(this + 16) != 0;
      break;
    case 4:
      if (v1 != 4)
      {
        goto LABEL_38;
      }

      v8 = *(*this + 84);
      if (v8)
      {
        v9 = *(*this + 72);
        v10 = 8 * v8 - 8;
        do
        {
          v11 = *v9++;
          hasFixedFootprint = WGSL::Type::hasFixedFootprint(*(*(v11 + 104) + 24));
          if (hasFixedFootprint)
          {
            v13 = v10 == 0;
          }

          else
          {
            v13 = 1;
          }

          v10 -= 8;
        }

        while (!v13);
        result = hasFixedFootprint & 1;
      }

      else
      {
LABEL_32:
        result = 1;
      }

      break;
    case 5:
      if (v1 == 5)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    case 6:
      if (v1 != 6)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 7:
      if (v1 != 7)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 8:
      if (v1 != 8)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 9:
      if (v1 != 9)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 10:
      if (v1 != 10)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 11:
      if (v1 != 11)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 12:
      if (v1 != 12)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    case 13:
      if (v1 != 13)
      {
        goto LABEL_38;
      }

LABEL_34:
      result = 0;
      break;
    default:
      if (*(this + 48))
      {
LABEL_38:
        mpark::throw_bad_variant_access(this);
      }

      v3 = *this;
      v4 = v3 >= 0xE;
      v5 = 0xB6u >> v3;
      if (v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      result = v6 & 1;
      break;
  }

  return result;
}

uint64_t WGSL::Type::hasCreationFixedFootprint(WGSL::Type *this)
{
  v1 = *(this + 48);
  if (v1 == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(this + 48);
  }

  switch(v2)
  {
    case 1:
      if (v1 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    case 2:
      if (v1 != 2)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    case 3:
      if (v1 != 3)
      {
        goto LABEL_38;
      }

      result = *(this + 16) == 1;
      break;
    case 4:
      if (v1 != 4)
      {
        goto LABEL_38;
      }

      v8 = *(*this + 84);
      if (v8)
      {
        v9 = *(*this + 72);
        v10 = 8 * v8 - 8;
        do
        {
          v11 = *v9++;
          hasCreationFixedFootprint = WGSL::Type::hasCreationFixedFootprint(*(*(v11 + 104) + 24));
          if (hasCreationFixedFootprint)
          {
            v13 = v10 == 0;
          }

          else
          {
            v13 = 1;
          }

          v10 -= 8;
        }

        while (!v13);
        result = hasCreationFixedFootprint & 1;
      }

      else
      {
LABEL_32:
        result = 1;
      }

      break;
    case 5:
      if (v1 == 5)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    case 6:
      if (v1 != 6)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 7:
      if (v1 != 7)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 8:
      if (v1 != 8)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 9:
      if (v1 != 9)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 10:
      if (v1 != 10)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 11:
      if (v1 != 11)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 12:
      if (v1 != 12)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    case 13:
      if (v1 != 13)
      {
        goto LABEL_38;
      }

LABEL_34:
      result = 0;
      break;
    default:
      if (*(this + 48))
      {
LABEL_38:
        mpark::throw_bad_variant_access(this);
      }

      v3 = *this;
      v4 = v3 >= 0xE;
      v5 = 0xB6u >> v3;
      if (v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      result = v6 & 1;
      break;
  }

  return result;
}

uint64_t WTF::PrintStream::print<char [17]>(uint64_t a1)
{
  (*(*a1 + 32))(a1);
  WTF::printInternal();
  v2 = *(*a1 + 40);

  return v2(a1);
}

uint64_t WTF::PrintStream::print<char [13]>(uint64_t a1)
{
  (*(*a1 + 32))(a1);
  WTF::printInternal();
  v2 = *(*a1 + 40);

  return v2(a1);
}

uint64_t WTF::PrintStream::print<char [11]>(uint64_t a1)
{
  (*(*a1 + 32))(a1);
  WTF::printInternal();
  v2 = *(*a1 + 40);

  return v2(a1);
}

uint64_t WTF::PrintStream::print<char [19]>(uint64_t a1)
{
  (*(*a1 + 32))(a1);
  WTF::printInternal();
  v2 = *(*a1 + 40);

  return v2(a1);
}

uint64_t WTF::PrintStream::print<char [24]>(uint64_t a1)
{
  (*(*a1 + 32))(a1);
  WTF::printInternal();
  v2 = *(*a1 + 40);

  return v2(a1);
}

void WGSL::TypeStore::TypeStore(WGSL::TypeStore *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  WGSL::TypeStore::allocateType<WGSL::Types::Primitive,WGSL::Types::Primitive::Kind>();
}

uint64_t WGSL::TypeStore::arrayType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  v7 = a2;
  v5 = a2;
  v6 = v8;
  result = WGSL::TypeCache::find<WGSL::ArrayKey>((a1 + 16), &v5);
  if (!result)
  {
    WGSL::TypeStore::allocateType<WGSL::Types::Array,WGSL::Type const*&,mpark::variant<std::monostate,unsigned int,WGSL::AST::Expression *> &>();
  }

  return result;
}

uint64_t WGSL::TypeCache::find<WGSL::ArrayKey>(mpark *a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if (v2 == 255)
  {
    v3 = -1;
  }

  else
  {
    v3 = *(a2 + 16);
  }

  if (v3 == 2)
  {
    if (v2 == 2)
    {
      v4 = __ROR8__(a2[1], 32) & 0xFFFFFFFF0000FFFFLL;
      goto LABEL_12;
    }

LABEL_51:
    mpark::throw_bad_variant_access(a1);
  }

  if (v3 != 1)
  {
    if (!*(a2 + 16))
    {
      v4 = 0;
      goto LABEL_12;
    }

    goto LABEL_51;
  }

  if (v2 != 1)
  {
    goto LABEL_51;
  }

  v4 = *(a2 + 2) << 32;
LABEL_12:
  v5 = *a2;
  v23[0] = v4 & 0xFFFFFFFF00000000 | (v4 << 16) | 3;
  v23[1] = v5;
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = v4;
  v8 = HIDWORD(v4);
  v9 = *(v6 - 8);
  v10 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(v23);
  for (i = 0; ; v10 = i + (v10 & v9))
  {
    v12 = v6 + 24 * (v10 & v9);
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    if (*v12 == 3 && v13 == 0)
    {
      break;
    }

LABEL_26:
    if (*v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13 == 0;
    }

    if (!v17 || v14 != 0 || *(v12 + 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_46:
    if (!*(v12 + 8))
    {
      return 0;
    }

LABEL_14:
    ++i;
  }

  if (v14 != v7)
  {
    if (*v12)
    {
      v20 = 0;
    }

    else
    {
      v20 = v14 == 0;
    }

    if (!v20 || *(v12 + 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

  if (*(v12 + 4) != v8 || *(v12 + 8) != v5)
  {
    v13 = 0;
    v14 = v7;
    goto LABEL_26;
  }

  if (v12 == v6 + 24 * *(v6 - 4))
  {
    return 0;
  }

  else
  {
    return *(v12 + 16);
  }
}

uint64_t WGSL::TypeStore::vectorType(WGSL::TypeStore *this, unsigned int a2, const WGSL::Type *a3)
{
  v4 = *(this + 2);
  v21[0] = (a2 << 8) | 1;
  v21[1] = a3;
  if (!v4)
  {
LABEL_41:
    WGSL::TypeStore::allocateType<WGSL::Types::Vector,WGSL::Type const*&,unsigned char &>();
  }

  v6 = *(v4 - 8);
  v7 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(v21);
  for (i = 0; ; v7 = i + v9)
  {
    v9 = v7 & v6;
    v10 = v4 + 24 * (v7 & v6);
    v11 = *(v10 + 1);
    if (*v10 == 1 && v11 == a2)
    {
      v11 = a2;
      if (!*(v10 + 2))
      {
        break;
      }
    }

    if (*v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13 || *(v10 + 2) != 0 || *(v10 + 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (!*(v10 + 8))
    {
      goto LABEL_41;
    }

LABEL_3:
    ++i;
  }

  if (*(v10 + 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v10 + 8) == a3;
  }

  if (!v16)
  {
    if (*v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2 == 0;
    }

    if (!v17 || *(v10 + 4) != 0)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  if (v10 == v4 + 24 * *(v4 - 4) || !*(v10 + 16))
  {
    goto LABEL_41;
  }

  return *(v10 + 16);
}

uint64_t WGSL::TypeStore::matrixType(WGSL::TypeStore *this, unsigned int a2, unsigned int a3, const WGSL::Type *a4)
{
  v6 = *(this + 2);
  v21[0] = (a2 << 8) | (a3 << 16) | 2;
  v21[1] = a4;
  if (!v6)
  {
    goto LABEL_29;
  }

  v8 = *(v6 - 8);
  v9 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(v21);
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v8;
    v12 = v6 + 24 * (v9 & v8);
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    if (*v12 == 2 && v13 == a2)
    {
      v13 = a2;
      if (v14 == a3)
      {
        v16 = !*(v12 + 4) && *(v12 + 8) == a4;
        v14 = a3;
        v13 = a2;
        if (v16)
        {
          break;
        }
      }
    }

    if (*v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13 == 0;
    }

    v19 = v17 && v14 == 0 && *(v12 + 4) == 0;
    if (v19 && !*(v12 + 8))
    {
      goto LABEL_29;
    }
  }

  if (v12 == v6 + 24 * *(v6 - 4) || !*(v12 + 16))
  {
LABEL_29:
    WGSL::TypeStore::allocateType<WGSL::Types::Matrix,WGSL::Type const*&,unsigned char &,unsigned char &>();
  }

  return *(v12 + 16);
}

uint64_t WGSL::TypeStore::textureType(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v21[0] = (a2 << 8) | 4;
  v21[1] = a3;
  if (!v4)
  {
LABEL_41:
    WGSL::TypeStore::allocateType<WGSL::Types::Texture,WGSL::Type const*&,WGSL::Types::Texture::Kind &>();
  }

  v6 = *(v4 - 8);
  v7 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(v21);
  for (i = 0; ; v7 = i + v9)
  {
    v9 = v7 & v6;
    v10 = v4 + 24 * (v7 & v6);
    v11 = *(v10 + 1);
    if (*v10 == 4 && v11 == a2)
    {
      v11 = a2;
      if (!*(v10 + 2))
      {
        break;
      }
    }

    if (*v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13 || *(v10 + 2) != 0 || *(v10 + 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (!*(v10 + 8))
    {
      goto LABEL_41;
    }

LABEL_3:
    ++i;
  }

  if (*(v10 + 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v10 + 8) == a3;
  }

  if (!v16)
  {
    if (*v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2 == 0;
    }

    if (!v17 || *(v10 + 4) != 0)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  if (v10 == v4 + 24 * *(v4 - 4) || !*(v10 + 16))
  {
    goto LABEL_41;
  }

  return *(v10 + 16);
}

uint64_t WGSL::TypeStore::textureStorageType(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 16);
  v21[0] = (a2 << 8) | (a4 << 32) | (a3 << 16) | 5;
  v21[1] = 0;
  if (!v6)
  {
    goto LABEL_29;
  }

  v8 = *(v6 - 8);
  v9 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(v21);
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v8;
    v12 = v6 + 24 * (v9 & v8);
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    if (*v12 == 5 && v13 == a2)
    {
      v13 = a2;
      if (v14 == a3)
      {
        v16 = *(v12 + 4) == v4 && *(v12 + 8) == 0;
        v14 = a3;
        v13 = a2;
        if (v16)
        {
          break;
        }
      }
    }

    if (*v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13 == 0;
    }

    v19 = v17 && v14 == 0 && *(v12 + 4) == 0;
    if (v19 && !*(v12 + 8))
    {
      goto LABEL_29;
    }
  }

  if (v12 == v6 + 24 * *(v6 - 4) || !*(v12 + 16))
  {
LABEL_29:
    WGSL::TypeStore::allocateType<WGSL::Types::TextureStorage,WGSL::Types::TextureStorage::Kind &,WGSL::TexelFormat &,WGSL::AccessMode &>();
  }

  return *(v12 + 16);
}

uint64_t WGSL::TypeStore::referenceType(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5)
{
  v7 = *(a1 + 16);
  v8 = 0x100000000;
  if (!a5)
  {
    v8 = 0;
  }

  v24[0] = (a4 << 16) | (a2 << 8) | v8 | 6;
  v24[1] = a3;
  if (!v7)
  {
    goto LABEL_31;
  }

  v10 = HIDWORD(v8);
  v11 = *(v7 - 8);
  v12 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(v24);
  for (i = 0; ; v12 = ++i + v14)
  {
    v14 = v12 & v11;
    v15 = v7 + 24 * (v12 & v11);
    v16 = *(v15 + 1);
    v17 = *(v15 + 2);
    if (*v15 == 6 && v16 == a2)
    {
      v16 = a2;
      if (v17 == a4)
      {
        v19 = *(v15 + 4) == v10 && *(v15 + 8) == a3;
        v17 = a4;
        v16 = a2;
        if (v19)
        {
          break;
        }
      }
    }

    if (*v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16 == 0;
    }

    v22 = v20 && v17 == 0 && *(v15 + 4) == 0;
    if (v22 && !*(v15 + 8))
    {
      goto LABEL_31;
    }
  }

  if (v15 == v7 + 24 * *(v7 - 4) || !*(v15 + 16))
  {
LABEL_31:
    WGSL::TypeStore::allocateType<WGSL::Types::Reference,WGSL::AddressSpace &,WGSL::AccessMode &,WGSL::Type const*&,BOOL &>();
  }

  return *(v15 + 16);
}

uint64_t WGSL::TypeStore::pointerType(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v6 = *(a1 + 16);
  v21[0] = (a2 << 8) | (a4 << 16) | 7;
  v21[1] = a3;
  if (!v6)
  {
    goto LABEL_29;
  }

  v8 = *(v6 - 8);
  v9 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(v21);
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v8;
    v12 = v6 + 24 * (v9 & v8);
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    if (*v12 == 7 && v13 == a2)
    {
      v13 = a2;
      if (v14 == a4)
      {
        v16 = !*(v12 + 4) && *(v12 + 8) == a3;
        v14 = a4;
        v13 = a2;
        if (v16)
        {
          break;
        }
      }
    }

    if (*v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13 == 0;
    }

    v19 = v17 && v14 == 0 && *(v12 + 4) == 0;
    if (v19 && !*(v12 + 8))
    {
      goto LABEL_29;
    }
  }

  if (v12 == v6 + 24 * *(v6 - 4) || !*(v12 + 16))
  {
LABEL_29:
    WGSL::TypeStore::allocateType<WGSL::Types::Pointer,WGSL::AddressSpace &,WGSL::AccessMode &,WGSL::Type const*&>();
  }

  return *(v12 + 16);
}

uint64_t WGSL::TypeStore::frexpResultType(WGSL::TypeStore *this, const WGSL::Type *a2, const WGSL::Type *a3)
{
  v5 = *(this + 2);
  v19 = 8;
  v20 = a2;
  if (!v5)
  {
LABEL_31:
    v17 = WTF::fastMalloc(0x18);
    *v17 = 2;
    *(v17 + 8) = a2;
    *(v17 + 16) = a3;
    v19 = "__frexp_result";
    v20 = 15;
    WGSL::TypeStore::allocateType<WGSL::Types::PrimitiveStruct,WTF::ASCIILiteral,WGSL::Types::PrimitiveStruct::Kind const&,WTF::FixedVector<WGSL::Type const*,WTF::FastMalloc> &>();
  }

  v6 = *(v5 - 8);
  v7 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(&v19);
  for (i = 0; ; v7 = i + (v7 & v6))
  {
    v9 = v5 + 24 * (v7 & v6);
    v10 = *(v9 + 1);
    v11 = *(v9 + 2);
    if (*v9 == 8 && v10 == 0)
    {
      break;
    }

LABEL_16:
    if (*v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 == 0;
    }

    v16 = v14 && v11 == 0 && *(v9 + 4) == 0;
    if (v16 && !*(v9 + 8))
    {
      goto LABEL_31;
    }

    ++i;
  }

  if (*(v9 + 2))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (*(v9 + 4))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v9 + 8) == a2;
  }

  if (!v13)
  {
    v11 = 0;
    goto LABEL_15;
  }

  if (v9 == v5 + 24 * *(v5 - 4) || !*(v9 + 16))
  {
    goto LABEL_31;
  }

  return *(v9 + 16);
}

uint64_t WGSL::TypeStore::modfResultType(WGSL::TypeStore *this, const WGSL::Type *a2, const WGSL::Type *a3)
{
  v5 = *(this + 2);
  v19 = 264;
  v20 = a2;
  if (!v5)
  {
LABEL_31:
    v17 = WTF::fastMalloc(0x18);
    *v17 = 2;
    *(v17 + 8) = a2;
    *(v17 + 16) = a3;
    v19 = "__modf_result";
    v20 = 14;
    WGSL::TypeStore::allocateType<WGSL::Types::PrimitiveStruct,WTF::ASCIILiteral,WGSL::Types::PrimitiveStruct::Kind const&,WTF::FixedVector<WGSL::Type const*,WTF::FastMalloc> &>();
  }

  v6 = *(v5 - 8);
  v7 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(&v19);
  for (i = 0; ; v7 = i + (v7 & v6))
  {
    v9 = v5 + 24 * (v7 & v6);
    v10 = *(v9 + 1);
    v11 = *(v9 + 2);
    if (*v9 == 8 && v10 == 1)
    {
      break;
    }

LABEL_16:
    if (*v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 == 0;
    }

    v16 = v14 && v11 == 0 && *(v9 + 4) == 0;
    if (v16 && !*(v9 + 8))
    {
      goto LABEL_31;
    }

    ++i;
  }

  if (*(v9 + 2))
  {
LABEL_15:
    v10 = 1;
    goto LABEL_16;
  }

  if (*(v9 + 4))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v9 + 8) == a2;
  }

  if (!v13)
  {
    v11 = 0;
    goto LABEL_15;
  }

  if (v9 == v5 + 24 * *(v5 - 4) || !*(v9 + 16))
  {
    goto LABEL_31;
  }

  return *(v9 + 16);
}

uint64_t WGSL::TypeStore::atomicCompareExchangeResultType(WGSL::TypeStore *this, const WGSL::Type *a2)
{
  if (*(this + 7) == a2)
  {
    result = *(this + 24);
    if (!result)
    {
      v5 = WTF::fastMalloc(0x18);
      *v5 = 2;
      *(v5 + 8) = a2;
      *(v5 + 16) = *(this + 6);
      WGSL::TypeStore::allocateType<WGSL::Types::PrimitiveStruct,WTF::ASCIILiteral,WGSL::Types::PrimitiveStruct::Kind const&,WTF::FixedVector<WGSL::Type const*,WTF::FastMalloc> &>();
    }
  }

  else
  {
    result = *(this + 25);
    if (!result)
    {
      v6 = WTF::fastMalloc(0x18);
      *v6 = 2;
      *(v6 + 8) = a2;
      *(v6 + 16) = *(this + 6);
      WGSL::TypeStore::allocateType<WGSL::Types::PrimitiveStruct,WTF::ASCIILiteral,WGSL::Types::PrimitiveStruct::Kind const&,WTF::FixedVector<WGSL::Type const*,WTF::FastMalloc> &>();
    }
  }

  return result;
}

unsigned __int8 *WTF::HashTable<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>>,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashMap<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>>,(WTF::ShouldValidateKey)1,std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 1);
  v5 = *(a2 + 1);
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6 && v4 == 0 && v5 == 0)
  {
    if (!*(a2 + 1))
    {
LABEL_41:
      __break(0xC471u);
      JUMPOUT(0x22587C8BCLL);
    }
  }

  else if (v2 == 255)
  {
    goto LABEL_41;
  }

  v9 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = *(v9 - 8);
  v12 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(a2);
  for (i = 0; ; v12 = i + v14)
  {
    v14 = v12 & v10;
    result = (v9 + 24 * (v12 & v10));
    v16 = result[1];
    v17 = *(result + 1);
    if (*result == v2 && v16 == v3)
    {
      v16 = v3;
      if (v17 == v4)
      {
        v19 = *(result + 1) == v5 && *(result + 1) == *(a2 + 1);
        v17 = v4;
        v16 = v3;
        if (v19)
        {
          break;
        }
      }
    }

    if (*result)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16 == 0;
    }

    v22 = v20 && v17 == 0 && *(result + 1) == 0;
    if (v22 && !*(result + 1))
    {
      return 0;
    }

    ++i;
  }

  return result;
}

unint64_t WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(unsigned __int8 *a1)
{
  v1 = ~(*a1 << 15) + *a1;
  v2 = (9 * (v1 ^ (v1 >> 10))) ^ ((9 * (v1 ^ (v1 >> 10))) >> 6);
  v3 = ~(a1[1] << 15) + a1[1];
  v4 = (9 * (v3 ^ (v3 >> 10))) ^ ((9 * (v3 ^ (v3 >> 10))) >> 6);
  v5 = ~(*(a1 + 1) << 15) + *(a1 + 1);
  v6 = (9 * (v5 ^ (v5 >> 10))) ^ ((9 * (v5 ^ (v5 >> 10))) >> 6);
  v7 = *(a1 + 1) + ~(*(a1 + 1) << 15);
  v8 = (9 * (v7 ^ (v7 >> 10))) ^ ((9 * (v7 ^ (v7 >> 10))) >> 6);
  v9 = (v8 + ~(v8 << 11)) ^ ((v8 + ~(v8 << 11)) >> 16);
  v10 = *(a1 + 1) + ~(*(a1 + 1) << 32);
  v11 = (v10 ^ (v10 >> 22)) + ~((v10 ^ (v10 >> 22)) << 13);
  v12 = (9 * (v11 ^ (v11 >> 8))) ^ ((9 * (v11 ^ (v11 >> 8))) >> 15);
  return (0xD7862706ELL * (277951225 * ((v2 + ~(v2 << 11)) ^ ((v2 + ~(v2 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v4 + ~(v4 << 11)) ^ ((v4 + ~(v4 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v6 + ~(v6 << 11)) ^ ((v6 + ~(v6 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * v9 + 95187966 * (((v12 + ~(v12 << 27)) >> 31) ^ (v12 + ~(v12 << 27))))) >> 4))) >> 4))) >> 4))) >> 4;
}

uint64_t WTF::HashMap<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::Type const*&>@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2[1] == 0;
  }

  if (v8 && *(a2 + 1) == 0 && *(a2 + 1) == 0)
  {
    if (!*(a2 + 1))
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x22587CB38);
    }
  }

  else if (*a2 == 255)
  {
    goto LABEL_62;
  }

  v11 = *a1;
  if (*a1 || (WTF::HashTable<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>>,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashMap<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::FastMalloc>::rehash(a1, 8u, 0), (v11 = *a1) != 0))
  {
    v12 = *(v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>(a2);
  v14 = 0;
  v15 = *a2;
  for (i = 1; ; ++i)
  {
    v17 = v13 & v12;
    v18 = (v11 + 24 * (v13 & v12));
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 1);
    result = *(v18 + 1);
    v23 = !*v18 && v20 == 0;
    v24 = v23 && v21 == 0;
    v25 = v24 && result == 0;
    if (v25 && !*(v18 + 1))
    {
      break;
    }

    if (v19 == v15 && v20 == a2[1] && v21 == *(a2 + 1) && result == *(a2 + 1) && *(v18 + 1) == *(a2 + 1))
    {
      v29 = 0;
      v30 = v11 + 24 * *(v11 - 4);
      goto LABEL_60;
    }

    if (v19 == 255)
    {
      v14 = (v11 + 24 * v17);
    }

    v13 = i + v17;
  }

  if (v14)
  {
    *v14 = 0;
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    --*(*a1 - 16);
    LOBYTE(v15) = *a2;
    v18 = v14;
  }

  *v18 = v15;
  v18[1] = a2[1];
  *(v18 + 1) = *(a2 + 1);
  *(v18 + 1) = *(a2 + 1);
  v31 = *a3;
  *(v18 + 1) = *(a2 + 1);
  *(v18 + 2) = v31;
  v32 = *a1;
  if (*a1)
  {
    v33 = *(v32 - 16);
    v34 = *(v32 - 12) + 1;
    *(v32 - 12) = v34;
    v35 = (v33 + v34);
    v36 = *(v32 - 4);
    if (v36 <= 0x400)
    {
      goto LABEL_51;
    }

LABEL_56:
    if (v36 > 2 * v35)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v34 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v35 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v36 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_56;
  }

LABEL_51:
  if (3 * v36 <= 4 * v35)
  {
    if (!v36)
    {
      result = WTF::HashTable<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>>,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashMap<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::FastMalloc>::rehash(a1, 8u, v18);
      v18 = result;
      v32 = *a1;
      if (!*a1)
      {
LABEL_54:
        LODWORD(v36) = 0;
        goto LABEL_59;
      }

LABEL_58:
      LODWORD(v36) = *(v32 - 4);
      goto LABEL_59;
    }

LABEL_57:
    result = WTF::HashTable<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>>,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashMap<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::FastMalloc>::rehash(a1, v36 << (6 * v34 >= (2 * v36)), v18);
    v18 = result;
    v32 = *a1;
    if (!*a1)
    {
      goto LABEL_54;
    }

    goto LABEL_58;
  }

LABEL_59:
  v30 = v32 + 24 * v36;
  v29 = 1;
LABEL_60:
  *a4 = v18;
  *(a4 + 8) = v30;
  *(a4 + 16) = v29;
  return result;
}

uint64_t WTF::HashTable<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*>>,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashMap<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>,WGSL::Type const*,WTF::DefaultHash<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unsigned __int8 *a3)
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

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 24 * v11);
      if (*v13 != 255)
      {
        v14 = !*v13 && v13[1] == 0;
        v15 = v14 && *(v13 + 1) == 0;
        v16 = v15 && *(v13 + 1) == 0;
        if (!v16 || *(v13 + 1))
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = WTF::TupleHash<unsigned char,unsigned char,unsigned short,unsigned int,unsigned long>::hash<0ul>((v6 + 24 * v11));
          for (i = 0; ; v19 = i + v21)
          {
            v21 = v19 & v18;
            v22 = v17 + 24 * (v19 & v18);
            v23 = !*v22 && *(v22 + 1) == 0;
            v24 = v23 && *(v22 + 2) == 0;
            v25 = v24 && *(v22 + 4) == 0;
            if (v25 && !*(v22 + 8))
            {
              break;
            }

            ++i;
          }

          v26 = *v13;
          *(v22 + 16) = *(v13 + 2);
          *v22 = v26;
          if (v13 == a3)
          {
            v12 = v17 + 24 * v21;
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

double WGSL::VisibilityValidator::validate@<D0>(WGSL::VisibilityValidator *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 5);
  if ((*(v4 + 352) & 1) == 0)
  {
    __break(1u);
LABEL_14:
    *this = v2;
    *(this + 8) = v11;
    *a2 = this;
    *&result = 0x100000001;
    *(a2 + 8) = 0x100000001;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    return result;
  }

  v5 = this;
  v6 = *(v4 + 332);
  if (v6)
  {
    v7 = 24 * v6;
    v8 = (*(v4 + 320) + 8);
    do
    {
      *(v5 + 48) = *v8;
      (*(*v5 + 56))(v5, *(v8 - 1));
      v8 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  if ((*(v5 + 32) & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 32) = 0;
    return result;
  }

  v2 = *(v5 + 1);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v11 = *(v5 + 1);
  this = WTF::fastMalloc(0x18);
  if (!v2)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  *this = v2;
  *(this + 8) = v11;
  *a2 = this;
  *&result = 0x100000001;
  *(a2 + 8) = 0x100000001;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v10);
  }

  return result;
}

_BYTE *WGSL::VisibilityValidator::visit(WGSL::VisibilityValidator *this, Function *a2)
{
  result = WGSL::AST::Visitor::visit(this, a2);
  v5 = *(this + 5);
  if ((*(v5 + 352) & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v6 = *(v5 + 344);
  v7 = *(v6 - 8);
  v8 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = v6 + 24 * v11;
  v13 = *v12;
  if (*v12 == a2)
  {
LABEL_6:
    v15 = *(v12 + 20);
    if (!v15)
    {
      return result;
    }

    goto LABEL_9;
  }

  v14 = 1;
  while (v13)
  {
    v11 = (v11 + v14) & v7;
    v12 = v6 + 24 * v11;
    v13 = *v12;
    ++v14;
    if (*v12 == a2)
    {
      goto LABEL_6;
    }
  }

  v12 = v6 + 24 * *(v6 - 4);
  v15 = *(v12 + 20);
  if (v15)
  {
LABEL_9:
    if ((*(this + 32) & 1) == 0)
    {
      v16 = *(v12 + 8);
      v17 = 24 * v15;
      do
      {
        if ((*(this + 32) & 1) == 0)
        {
          result = (*(*this + 56))(this, *v16);
        }

        v16 += 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  return result;
}

WTF::StringImpl *WGSL::VisibilityValidator::visit(WTF::StringImpl *this, WGSL::AST::CallExpression *a2)
{
  v3 = this;
  if ((*(this + 32) & 1) == 0)
  {
    this = (*(*this + 216))(this, *(a2 + 8));
  }

  v4 = *(a2 + 21);
  if (v4 && (*(v3 + 32) & 1) == 0)
  {
    v15 = *(a2 + 9);
    v16 = 8 * v4;
    do
    {
      if ((*(v3 + 32) & 1) == 0)
      {
        this = (*(*v3 + 216))(v3, *v15);
      }

      ++v15;
      v16 -= 8;
    }

    while (v16);
  }

  v5 = *(v3 + 48);
  if ((*(a2 + 89) & v5) == 0)
  {
    v6 = "compute";
    v7 = 7;
    if (v5 == 2)
    {
      v6 = "fragment";
      v7 = 8;
    }

    v8 = v5 == 1;
    if (v5 == 1)
    {
      v9 = "vertex";
    }

    else
    {
      v9 = v6;
    }

    if (v8)
    {
      v10 = 6;
    }

    else
    {
      v10 = v7;
    }

    v18 = "built-in cannot be used by ";
    *&v19 = 27;
    v22[0] = v9;
    v22[1] = v10;
    v21[0] = " pipeline stage";
    v21[1] = 15;
    this = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v18, v22, v21, &v17);
    v11 = v17;
    if (v17)
    {
      v17 = 0;
      v12 = *(a2 + 8);
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      v19 = v12;
      v18 = v11;
      v20 = 1;
      std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v18, v3 + 1);
      if (v20 == 1)
      {
        v14 = v18;
        v18 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }
      }

      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v13);
      }

      this = v17;
      v17 = 0;
      if (this)
      {
        if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(this, v13);
        }
      }
    }

    else
    {
      __break(0xC471u);
    }
  }

  return this;
}

void WGSL::VisibilityValidator::~VisibilityValidator(WGSL::VisibilityValidator *this, WTF::StringImpl *a2)
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

void WGSL::staticCheck(atomic_uint **a1, void *a2, uint64_t a3)
{
  if (WGSL::ShaderModule::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WGSL::ShaderModule::s_heapRef, a2);
    v6 = *a1;
    if (!*a1)
    {
LABEL_4:
      *NonCompact = v6;
      *(NonCompact + 8) = 0;
      *(NonCompact + 16) = 0;
      *(NonCompact + 24) = 0;
      *(NonCompact + 32) = 0;
      *(NonCompact + 40) = *a3;
      *(NonCompact + 56) = 0;
      v7 = *(a3 + 16);
      if (!v7)
      {
        goto LABEL_52;
      }

      v8 = *(v7 - 12);
      if (!v8)
      {
        goto LABEL_52;
      }

      v9 = *(v7 - 12);
      v10 = *(v7 - 12);
      if (v8 == 1)
      {
        goto LABEL_9;
      }

      v11 = __clz(v8 - 1);
      if (!v11)
      {
        __break(1u);
        __break(0xC471u);
        JUMPOUT(0x22587E37CLL);
      }

      v9 = (1 << -v11);
      v10 = 1 << -v11;
      if (v8 <= 0x400)
      {
LABEL_9:
        if (3 * v9 > 4 * v8)
        {
          goto LABEL_11;
        }
      }

      else if (v9 > 2 * v8)
      {
LABEL_11:
        v12 = v8;
        v13 = v10;
        if (v10 > 0x400)
        {
          if (v13 * 0.416666667 > v12)
          {
            goto LABEL_16;
          }
        }

        else if (v13 * 0.604166667 > v12)
        {
LABEL_16:
          if (v10 <= 8)
          {
            v14 = 8;
          }

          else
          {
            v14 = v10;
          }

          v15 = WTF::fastZeroedMalloc((8 * v14 + 16));
          *(NonCompact + 56) = v15 + 4;
          v15[2] = v14 - 1;
          v15[3] = v14;
          *v15 = 0;
          v15[1] = v8;
          v17 = *(a3 + 16);
          if (v17)
          {
            v18 = *(v17 - 1);
            v19 = &v17[v18];
            if (*(v17 - 3))
            {
              if (!v18)
              {
                v22 = 0;
                v21 = v17;
LABEL_34:
                v23 = &v17[v22];
                while (v21 != v23)
                {
LABEL_37:
                  v24 = *(NonCompact + 56);
                  if (v24)
                  {
                    v25 = *(v24 - 8);
                    v26 = *v21;
                    v27 = *(*v21 + 4);
                    if (v27 >= 0x100)
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    v25 = 0;
                    v26 = *v21;
                    v27 = *(*v21 + 4);
                    if (v27 >= 0x100)
                    {
LABEL_39:
                      v28 = v27 >> 8;
                      goto LABEL_42;
                    }
                  }

                  v28 = WTF::StringImpl::hashSlowCase(v26);
LABEL_42:
                  v29 = 0;
                  do
                  {
                    v30 = v28 & v25;
                    v28 = ++v29 + (v28 & v25);
                  }

                  while (*(v24 + 8 * v30));
                  v31 = *v21;
                  if (*v21)
                  {
                    atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
                    v32 = *(v24 + 8 * v30);
                    *(v24 + 8 * v30) = v31;
                    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v16);
                    }
                  }

                  else
                  {
                    *(v24 + 8 * v30) = 0;
                  }

                  do
                  {
                    ++v21;
                  }

                  while (v21 != v19 && *v21 + 1 <= 1);
                }

LABEL_52:
                *(NonCompact + 64) = 0u;
                *(NonCompact + 80) = 0u;
                WGSL::TypeStore::TypeStore((NonCompact + 96));
              }

              v20 = 8 * v18;
              v21 = v17;
              do
              {
                if (*v21 + 1 > 1)
                {
                  goto LABEL_26;
                }

                ++v21;
                v20 -= 8;
              }

              while (v20);
              v21 = v19;
LABEL_26:
              v22 = *(v17 - 1);
              goto LABEL_34;
            }
          }

          else
          {
            v19 = 0;
            v18 = 0;
          }

          v21 = v19;
          v19 = &v17[v18];
          if (!v17)
          {
            v23 = 0;
            if (v21)
            {
              goto LABEL_37;
            }

            goto LABEL_52;
          }

          goto LABEL_26;
        }

        v10 *= 2;
        goto LABEL_16;
      }

      v10 *= 2;
      goto LABEL_11;
    }
  }

  else
  {
    NonCompact = WGSL::ShaderModule::operatorNewSlow(0x198);
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_4;
    }
  }

  atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  goto LABEL_4;
}

void WGSL::generate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  WGSL::ShaderModule::validateOverrides(a1, a3, &v14);
  if (v16 == 1)
  {
    v11 = v14;
    if (!v14)
    {
      *a5 = 0;
      *(a5 + 8) = v15;
      *(a5 + 24) = 1;
      return;
    }

    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    v12 = v16;
    *a5 = v11;
    *(a5 + 8) = v15;
    *(a5 + 24) = 1;
    if ((v12 & 1) == 0)
    {
      return;
    }

    v13 = v14;
    v14 = 0;
    if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return;
    }

LABEL_9:
    WTF::StringImpl::destroy(v13, v10);
    return;
  }

  WGSL::Metal::generateMetalCode(a1, a2, a3, a4, &v14);
  v13 = v14;
  if (!v14)
  {
    *a5 = 0;
    *(a5 + 24) = 0;
    return;
  }

  atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  *a5 = v13;
  *(a5 + 24) = 0;
  if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    goto LABEL_9;
  }
}

void WGSL::prepare(WGSL *this, WGSL::ShaderModule *a2, const WTF::String *a3, WGSL::PipelineLayout *a4)
{
  v6 = 0;
  v7 = a3;
  WTF::HashMap<WTF::String,WGSL::PipelineLayout *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::PipelineLayout *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::PipelineLayout *&>(&v6, a2, &v7, v10);
  v10[0] = 0;
  v11 = this;
  v12 = *(this + 79);
  v13 = *(this + 93);
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = v9;
  v8[1] = this;
  v8[2] = &v6;
  v8[3] = v10;
  WGSL::prepareImpl(WGSL::ShaderModule &,WTF::HashMap<WTF::String,WGSL::PipelineLayout *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::PipelineLayout *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&)::{lambda(void)#1}::operator()(v8, v5);
}

WTF::StringImpl *WTF::HashMap<WTF::String,WGSL::PipelineLayout *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::PipelineLayout *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::PipelineLayout *&>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x22587E84CLL);
  }

  v8 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, 0);
    v8 = *a1;
    if (!*a1)
    {
      v9 = 0;
      v10 = *a2;
      v11 = *(*a2 + 16);
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
  v10 = *a2;
  v11 = *(*a2 + 16);
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
        --*(*a1 - 16);
        v16 = v13;
      }

      v20 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        result = *v16;
      }

      *v16 = v20;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      *(v16 + 1) = *a3;
      v21 = *a1;
      if (*a1)
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
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, 8u, v16);
            v16 = result;
            v21 = *a1;
            if (!*a1)
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
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v25 << (6 * v23 >= (2 * v25)), v16);
          v16 = result;
          v21 = *a1;
          if (!*a1)
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

    result = WTF::equal(result, *a2, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v18 = *a1;
  if (*a1)
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
  *a4 = v16;
  *(a4 + 8) = v26;
  *(a4 + 16) = v27;
  return result;
}

void WGSL::evaluate(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v31) = 0;
  v34 = 0;
  v6 = (a1 + 32);
  LOBYTE(v28[0]) = 0;
  v30 = 0;
  if (*(a1 + 56) == 1)
  {
    v7 = -1;
    v29 = -1;
    v8 = *(a1 + 48);
    if (v8 == 255)
    {
      v30 = 1;
      LOBYTE(v31) = 0;
    }

    else
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, &v35, v28, v6);
      v9 = *(a1 + 48);
      v29 = *(a1 + 48);
      v30 = 1;
      if (v34)
      {
        if (v33 == 255)
        {
          if (v9 == 255)
          {
            goto LABEL_14;
          }
        }

        else if (v9 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, &v31);
          v33 = -1;
          goto LABEL_14;
        }

        v35 = &v31;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v9, &v35, &v31, v28);
        goto LABEL_14;
      }

      LOBYTE(v31) = 0;
      v33 = -1;
      if (v9 == 255)
      {
LABEL_11:
        v34 = 1;
        goto LABEL_14;
      }

      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v35, &v31, v28);
      v7 = v29;
    }

    v33 = v7;
    goto LABEL_11;
  }

LABEL_14:
  if (v30 == 1 && v29 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v28);
  }

  if ((*(*a1 + 16))(a1) != 21)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    v16 = (a3 + 24);
    if (v34 != 1)
    {
      return;
    }

    *(a3 + 16) = -1;
    v17 = v33;
    if (v33 <= 5u)
    {
      if (v33 <= 2u)
      {
        if (!v33)
        {
LABEL_48:
          *a3 = v31;
LABEL_68:
          *(a3 + 16) = v17;
LABEL_69:
          *v16 = 1;
          if (v17 == 255)
          {
            return;
          }

          goto LABEL_81;
        }

LABEL_27:
        if (v17 == 1)
        {
          *a3 = v31;
        }

        else
        {
          *a3 = v31;
        }

        goto LABEL_68;
      }

      goto LABEL_52;
    }

LABEL_49:
    if (v17 > 8)
    {
      if (v17 == 9)
      {
        v24 = v32;
        v32 = 0;
        *a3 = v31;
        *(a3 + 8) = v24;
        goto LABEL_68;
      }

      if (v17 != 10)
      {
        goto LABEL_69;
      }
    }

    else if (v17 == 6)
    {
      *a3 = v31;
      goto LABEL_68;
    }

    v23 = v31;
    v31 = 0;
    goto LABEL_67;
  }

  v11 = *a2;
  if (!*a2)
  {
    goto LABEL_44;
  }

  v12 = *(a1 + 88);
  if (v12 == -1 || !v12)
  {
    __break(0xC471u);
    JUMPOUT(0x22587ED54);
  }

  v13 = *(v11 - 8);
  v14 = *(v12 + 4);
  v15 = v14 < 0x100 ? WTF::StringImpl::hashSlowCase(v12) : v14 >> 8;
  for (i = 0; ; v15 = i + v19)
  {
    v19 = v15 & v13;
    v20 = *(v11 + 32 * v19);
    if (v20 != -1)
    {
      if (!v20)
      {
        goto LABEL_44;
      }

      if (WTF::equal(v20, *(a1 + 88), v10))
      {
        break;
      }
    }

    ++i;
  }

  v21 = v11 + 32 * v19;
  if (*a2)
  {
    if (v21 == *a2 + 32 * *(*a2 - 4))
    {
LABEL_44:
      *a3 = 0;
      *(a3 + 24) = 0;
      v16 = (a3 + 24);
      if (v34 != 1)
      {
        return;
      }

      *(a3 + 16) = -1;
      v17 = v33;
      if (v33 <= 5u)
      {
        if (v33 <= 2u)
        {
          if (!v33)
          {
            goto LABEL_48;
          }

          goto LABEL_27;
        }

LABEL_52:
        if (v17 == 3 || v17 == 4)
        {
          *a3 = v31;
          goto LABEL_68;
        }

        v23 = v31;
LABEL_67:
        *a3 = v23;
        goto LABEL_68;
      }

      goto LABEL_49;
    }
  }

  LOBYTE(v26[0]) = 0;
  v27 = -1;
  v22 = *(v21 + 24);
  if (v22 == 255)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      *(a1 + 32) = 0;
      *(a1 + 48) = -1;
LABEL_72:
      *(a1 + 56) = 1;
      if (v27 != 255)
      {
        goto LABEL_76;
      }

      goto LABEL_77;
    }
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v22, v28, v26, (v21 + 8));
    v22 = *(v21 + 24);
    v27 = *(v21 + 24);
    if ((*(a1 + 56) & 1) == 0)
    {
      *(a1 + 32) = 0;
      *(a1 + 48) = -1;
      if (v22 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v22, v28, v6, v26);
        *(a1 + 48) = v27;
        *(a1 + 56) = 1;
        if (v27 == 255)
        {
          goto LABEL_77;
        }

LABEL_76:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, v26);
        goto LABEL_77;
      }

      goto LABEL_72;
    }
  }

  if (*(a1 + 48) == 255)
  {
    if (v22 == 255)
    {
      goto LABEL_77;
    }

LABEL_75:
    v28[0] = v6;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v22, v28, v6, v26);
    if (v27 == 255)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if (v22 != 255)
  {
    goto LABEL_75;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, v6);
  *(a1 + 48) = -1;
  if (v27 != 255)
  {
    goto LABEL_76;
  }

LABEL_77:
  v27 = -1;
  *a3 = 0;
  *(a3 + 16) = -1;
  v25 = *(v21 + 24);
  if (v25 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v25, v28, a3, (v21 + 8));
    *(a3 + 16) = *(v21 + 24);
  }

  *(a3 + 24) = 1;
  if ((v34 & 1) != 0 && v33 != 255)
  {
LABEL_81:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, &v31);
  }
}

uint64_t mpark::variant<WGSL::SuccessfulCheck,WGSL::FailedCheck>::variant<WGSL::FailedCheck&,WGSL::FailedCheck,0,0,0,1ul,WGSL::FailedCheck,0>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 3);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = v4;
  if (v4)
  {
    if (v4 >= 0xAAAAAAB)
    {
      goto LABEL_16;
    }

    v5 = 24 * v4;
    v6 = WTF::fastMalloc((24 * v4));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 24 * v7;
      do
      {
        v10 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *v6 = v10;
        *(v6 + 8) = *(v8 + 8);
        v6 += 24;
        v8 += 24;
      }

      while (v8 != v9);
    }
  }

  v11 = *(a2 + 7);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  if (v11 >= 0xAAAAAAB)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x22587EEC4);
  }

  v12 = 24 * v11;
  v13 = WTF::fastMalloc((24 * v11));
  *(a1 + 24) = v12 / 0x18;
  *(a1 + 16) = v13;
  v14 = *(a2 + 7);
  if (v14)
  {
    v15 = a2[2];
    v16 = v15 + 24 * v14;
    do
    {
      v17 = *v15;
      if (*v15)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      *v13 = v17;
      *(v13 + 8) = *(v15 + 8);
      v13 += 24;
      v15 += 24;
    }

    while (v15 != v16);
  }

LABEL_15:
  *(a1 + 32) = 1;
  return a1;
}

void WGSL::ShaderModule::~ShaderModule(WGSL::ShaderModule *this, void *a2)
{
  v3 = *(this + 101);
  v4 = *(this + 49);
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *(this + 49);
  }

  if (v4)
  {
    *(this + 49) = 0;
    *(this + 100) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(this + 48);
  if (v7)
  {
    v8 = *(v7 - 4);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = v7 + 24 * i;
        if (*v10 != -1)
        {
          v11 = *(v10 + 20);
          v12 = *(v10 + 8);
          if (v11)
          {
            v13 = 8 * v11;
            do
            {
              v14 = *v12;
              *v12 = 0;
              if (v14)
              {
                (*(*v14 + 8))(v14);
              }

              v12 = (v12 + 8);
              v13 -= 8;
            }

            while (v13);
            v12 = *(v10 + 8);
          }

          if (v12)
          {
            *(v10 + 8) = 0;
            *(v10 + 16) = 0;
            WTF::fastFree(v12, a2);
          }
        }
      }
    }

    WTF::fastFree((v7 - 16), a2);
  }

  v15 = *(this + 47);
  if (v15)
  {
    WTF::fastFree((v15 - 16), a2);
  }

  v16 = *(this + 93);
  v17 = *(this + 45);
  if (v16)
  {
    v18 = 32 * v16;
    v19 = *(this + 45);
    do
    {
      v20 = *(v17 + 3);
      if (v17 == v20)
      {
        (*(*v20 + 32))(v20);
      }

      else if (v20)
      {
        (*(*v20 + 40))(v20);
      }

      v17 = (v17 + 32);
      v19 += 32;
      v18 -= 32;
    }

    while (v18);
    v17 = *(this + 45);
  }

  if (v17)
  {
    *(this + 45) = 0;
    *(this + 92) = 0;
    WTF::fastFree(v17, a2);
  }

  if (*(this + 352) == 1)
  {
    WGSL::CallGraph::~CallGraph((this + 320), a2);
  }

  v21 = *(this + 79);
  v22 = *(this + 38);
  if (v21)
  {
    v23 = 8 * v21;
    do
    {
      v24 = *v22;
      *v22 = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      v22 = (v22 + 8);
      v23 -= 8;
    }

    while (v23);
    v22 = *(this + 38);
  }

  if (v22)
  {
    *(this + 38) = 0;
    *(this + 78) = 0;
    WTF::fastFree(v22, a2);
  }

  v25 = *(this + 14);
  if (v25)
  {
    WTF::fastFree((v25 - 16), a2);
  }

  v26 = *(this + 27);
  v27 = *(this + 12);
  if (v26)
  {
    v28 = 8 * v26;
    do
    {
      v29 = *v27;
      *v27 = 0;
      if (v29)
      {
        if (*(v29 + 48) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v37, v29);
        }

        *(v29 + 48) = -1;
        MEMORY[0x22AA68560](v29, 0x10F2C40B756F52CLL);
      }

      v27 = (v27 + 8);
      v28 -= 8;
    }

    while (v28);
    v27 = *(this + 12);
  }

  if (v27)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v27, a2);
  }

  v30 = *(this + 10);
  if (v30)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v30, a2);
  }

  v31 = *(this + 8);
  if (v31)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v31, a2);
  }

  v32 = *(this + 7);
  if (v32)
  {
    v33 = *(v32 - 4);
    if (v33)
    {
      v34 = *(this + 7);
      do
      {
        v35 = *v34;
        if (*v34 != -1)
        {
          *v34 = 0;
          if (v35)
          {
            if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, a2);
            }
          }
        }

        ++v34;
        --v33;
      }

      while (v33);
    }

    WTF::fastFree((v32 - 16), a2);
  }

  v36 = *this;
  *this = 0;
  if (v36)
  {
    if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, a2);
    }
  }
}

void WGSL::prepareImpl(WGSL::ShaderModule &,WTF::HashMap<WTF::String,WGSL::PipelineLayout *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::PipelineLayout *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&)::{lambda(void)#1}::operator()(uint64_t a1, WGSL::ShaderModule *a2)
{
  v17 = 0;
  WGSL::insertBoundsChecks(*(a1 + 8), a2, &v12);
  if (v16 == 1)
  {
    v4 = v14;
    if (v15)
    {
      v5 = 24 * v15;
      v6 = v14;
      do
      {
        v7 = *v6;
        *v6 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v3);
        }

        v6 = (v6 + 24);
        v5 -= 24;
      }

      while (v5);
    }

    if (v4)
    {
      WTF::fastFree(v4, v3);
    }

    v8 = v12;
    if (v13)
    {
      v9 = 24 * v13;
      v10 = v12;
      do
      {
        v11 = *v10;
        *v10 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v3);
        }

        v10 = (v10 + 24);
        v9 -= 24;
      }

      while (v9);
    }

    if (v8)
    {
      WTF::fastFree(v8, v3);
    }
  }

  WGSL::rewritePointers(*(a1 + 8), v3);
}

unsigned __int8 **WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::AddressSpace> [6]>::tryGet<WTF::String>(unsigned __int8 ***a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 4) | (((*(v3 + 16) >> 2) & 1) << 32);
    v6 = *a1;
    if (WTF::operator==(v4, v5, **a1, (*a1)[1]))
    {
LABEL_3:
      v7 = v6;
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x100000000;
    v6 = *a1;
    if (WTF::operator==(0, 0x100000000, **a1, (*a1)[1]))
    {
      goto LABEL_3;
    }
  }

  v7 = v6 + 3;
  if ((WTF::operator==(v4, v5, v6[3], v6[4]) & 1) == 0)
  {
    v7 = v6 + 6;
    if ((WTF::operator==(v4, v5, v6[6], v6[7]) & 1) == 0)
    {
      v7 = v6 + 9;
      if ((WTF::operator==(v4, v5, v6[9], v6[10]) & 1) == 0)
      {
        v7 = v6 + 12;
        if ((WTF::operator==(v4, v5, v6[12], v6[13]) & 1) == 0)
        {
          v8 = v6[15];
          v9 = v6[16];
          v10 = v6 + 15;
          if (WTF::operator==(v4, v5, v8, v9))
          {
            v7 = v10;
          }

          else
          {
            v7 = v10 + 3;
          }
        }
      }
    }
  }

LABEL_12:
  if (v7 == *a1 + 18)
  {
    return 0;
  }

  else
  {
    return v7 + 2;
  }
}

void *WGSL::parseAccessMode(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 8);
  v4 = *(v1 + 4);
  if (v3 != "read" && v4 == 4)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 114 || *(v3 + 1) != 24933 || *(v3 + 1) != 25697)
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 114)
      {
        return 0;
      }

      v9 = *(v3 + 2);
      v10 = *(v3 + 1);
      if (v9 != 6357093 || v10 != 6553697)
      {
        return 0;
      }
    }

    return &unk_2785681F8;
  }

  if (v3 == "read" && v4 == 4)
  {
    return &unk_2785681F8;
  }

  if (v3 != "read_write" && v4 == 10)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 114 || *(v3 + 1) != 0x746972775F646165 || *(v3 + 2) != 0x65746972775F6461)
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 114)
      {
        return 0;
      }

      v13 = vceqq_s16(*(v3 + 2), xmmword_225882A10);
      v13.i16[0] = vminvq_u16(v13);
      if (!v13.i32[0])
      {
        return 0;
      }

      v14 = vceqq_s16(*(v3 + 4), xmmword_225882A20);
      v14.i16[0] = vminvq_u16(v14);
      if (!v14.i32[0])
      {
        return 0;
      }
    }

    return &unk_278568210;
  }

  if (v3 == "read_write" && v4 == 10)
  {
    return &unk_278568210;
  }

  if (v3 == "write" || v4 != 5)
  {
    if (v4 != 5 || v3 != "write")
    {
      return 0;
    }

    return &unk_278568228;
  }

  if ((v2 & 4) != 0)
  {
    if (*v3 != 119 || *(v3 + 1) != 26994 || *(v3 + 3) != 25972)
    {
      return 0;
    }

    return &unk_278568228;
  }

  if (*v3 == 119 && *(v3 + 2) == 0x65007400690072)
  {
    return &unk_278568228;
  }

  return 0;
}

unsigned __int8 **WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::TexelFormat> [17]>::tryGet<WTF::String>(unsigned __int8 ***a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 4) | (((*(v3 + 16) >> 2) & 1) << 32);
    v6 = *a1;
    if (WTF::operator==(v4, v5, **a1, (*a1)[1]))
    {
LABEL_3:
      v7 = v6;
      goto LABEL_27;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x100000000;
    v6 = *a1;
    if (WTF::operator==(0, 0x100000000, **a1, (*a1)[1]))
    {
      goto LABEL_3;
    }
  }

  v7 = v6 + 3;
  if ((WTF::operator==(v4, v5, v6[3], v6[4]) & 1) == 0)
  {
    v7 = v6 + 6;
    if ((WTF::operator==(v4, v5, v6[6], v6[7]) & 1) == 0)
    {
      v7 = v6 + 9;
      if ((WTF::operator==(v4, v5, v6[9], v6[10]) & 1) == 0)
      {
        v7 = v6 + 12;
        if ((WTF::operator==(v4, v5, v6[12], v6[13]) & 1) == 0)
        {
          v7 = v6 + 15;
          if ((WTF::operator==(v4, v5, v6[15], v6[16]) & 1) == 0)
          {
            v7 = v6 + 18;
            if ((WTF::operator==(v4, v5, v6[18], v6[19]) & 1) == 0)
            {
              v7 = v6 + 21;
              if ((WTF::operator==(v4, v5, v6[21], v6[22]) & 1) == 0)
              {
                v7 = v6 + 24;
                if ((WTF::operator==(v4, v5, v6[24], v6[25]) & 1) == 0)
                {
                  v7 = v6 + 27;
                  if ((WTF::operator==(v4, v5, v6[27], v6[28]) & 1) == 0)
                  {
                    v7 = v6 + 30;
                    if ((WTF::operator==(v4, v5, v6[30], v6[31]) & 1) == 0)
                    {
                      if (WTF::operator==(v4, v5, v6[33], v6[34]))
                      {
                        v7 = v6 + 33;
                      }

                      else if (WTF::operator==(v4, v5, v6[36], v6[37]))
                      {
                        v7 = v6 + 36;
                      }

                      else if (WTF::operator==(v4, v5, v6[39], v6[40]))
                      {
                        v7 = v6 + 39;
                      }

                      else if (WTF::operator==(v4, v5, v6[42], v6[43]))
                      {
                        v7 = v6 + 42;
                      }

                      else if (WTF::operator==(v4, v5, v6[45], v6[46]))
                      {
                        v7 = v6 + 45;
                      }

                      else
                      {
                        v7 = v6 + 48;
                        if (!WTF::operator==(v4, v5, v6[48], v6[49]))
                        {
                          v7 = v6 + 51;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  if (v7 == *a1 + 51)
  {
    return 0;
  }

  else
  {
    return v7 + 2;
  }
}

void *WGSL::parseInterpolationType(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 8);
  v4 = *(v1 + 4);
  if (v3 != "flat" && v4 == 4)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 102 || *(v3 + 1) != 24940 || *(v3 + 1) != 29793)
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 102)
      {
        return 0;
      }

      v11 = *(v3 + 2);
      v12 = *(v3 + 1);
      if (v11 != 6357100 || v12 != 7602273)
      {
        return 0;
      }
    }

    return &unk_2785683E0;
  }

  if (v3 == "flat" && v4 == 4)
  {
    return &unk_2785683E0;
  }

  if (v3 != "linear" && v4 == 6)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 108 || *(v3 + 1) != 1634037353 || *(v3 + 2) != 1918985582)
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 108)
      {
        return 0;
      }

      v15 = *(v3 + 2);
      v16 = *(v3 + 4);
      if (v15 != 0x610065006E0069 || v16 != 0x7200610065006ELL)
      {
        return 0;
      }
    }

    return &unk_2785683F8;
  }

  if (v3 == "linear" && v4 == 6)
  {
    return &unk_2785683F8;
  }

  if (v3 == "perspective" || v4 != 11)
  {
    if (v4 != 11 || v3 != "perspective")
    {
      return 0;
    }

    return &unk_278568410;
  }

  if ((v2 & 4) != 0)
  {
    if (*v3 != 112 || *(v3 + 1) != 0x6974636570737265 || *(v3 + 3) != 0x6576697463657073)
    {
      return 0;
    }

    return &unk_278568410;
  }

  if (*v3 == 112)
  {
    v9 = vceqq_s16(*(v3 + 2), xmmword_225882A30);
    v9.i16[0] = vminvq_u16(v9);
    if (v9.i32[0])
    {
      v10 = vceqq_s16(*(v3 + 6), xmmword_225882A40);
      v10.i16[0] = vminvq_u16(v10);
      if (v10.i32[0])
      {
        return &unk_278568410;
      }
    }
  }

  return 0;
}

unsigned __int8 **WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::InterpolationSampling> [5]>::tryGet<WTF::String>(unsigned __int8 ***a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 4) | (((*(v3 + 16) >> 2) & 1) << 32);
    v6 = *a1;
    if (WTF::operator==(v4, v5, **a1, (*a1)[1]))
    {
LABEL_3:
      v7 = v6;
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x100000000;
    v6 = *a1;
    if (WTF::operator==(0, 0x100000000, **a1, (*a1)[1]))
    {
      goto LABEL_3;
    }
  }

  v7 = v6 + 3;
  if ((WTF::operator==(v4, v5, v6[3], v6[4]) & 1) == 0)
  {
    v7 = v6 + 6;
    if ((WTF::operator==(v4, v5, v6[6], v6[7]) & 1) == 0)
    {
      v7 = v6 + 9;
      if ((WTF::operator==(v4, v5, v6[9], v6[10]) & 1) == 0)
      {
        v8 = v6[12];
        v9 = v6[13];
        v10 = v6 + 12;
        if (WTF::operator==(v4, v5, v8, v9))
        {
          v7 = v10;
        }

        else
        {
          v7 = v10 + 3;
        }
      }
    }
  }

LABEL_11:
  if (v7 == *a1 + 15)
  {
    return 0;
  }

  else
  {
    return v7 + 2;
  }
}

void *WGSL::parseSeverityControl(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 8);
  v4 = *(v1 + 4);
  if (v3 != "error" && v4 == 5)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 101 || *(v3 + 1) != 29298 || *(v3 + 3) != 29295)
      {
        return 0;
      }
    }

    else if (*v3 != 101 || *(v3 + 2) != 0x72006F00720072)
    {
      return 0;
    }

    return &unk_2785684A8;
  }

  if (v3 == "error" && v4 == 5)
  {
    return &unk_2785684A8;
  }

  if (v3 != "info" && v4 == 4)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 105 || *(v3 + 1) != 26222 || *(v3 + 1) != 28518)
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 105)
      {
        return 0;
      }

      v10 = *(v3 + 2);
      v11 = *(v3 + 1);
      if (v10 != 6684782 || v11 != 7274598)
      {
        return 0;
      }
    }

    return &unk_2785684C0;
  }

  if (v3 == "info" && v4 == 4)
  {
    return &unk_2785684C0;
  }

  if (v3 != "off" && v4 == 3)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 == 111 && *(v3 + 1) == 26214)
      {
        return &unk_2785684D8;
      }
    }

    else if (*v3 == 111 && *(v3 + 2) == 6684774)
    {
      return &unk_2785684D8;
    }

    return 0;
  }

  if (v3 == "off" && v4 == 3)
  {
    return &unk_2785684D8;
  }

  if (v3 == "warning" || v4 != 7)
  {
    if (v4 != 7 || v3 != "warning")
    {
      return 0;
    }

    return &unk_2785684F0;
  }

  if ((v2 & 4) == 0)
  {
    if (*v3 != 119)
    {
      return 0;
    }

    if (*(v3 + 6) != 0x67006E0069006ELL || *(v3 + 2) != 0x69006E00720061)
    {
      return 0;
    }

    return &unk_2785684F0;
  }

  if (*v3 == 119 && *(v3 + 1) == 1768845921 && *(v3 + 3) == 1735289198)
  {
    return &unk_2785684F0;
  }

  return 0;
}

const char *WGSL::toString(int a1)
{
  v1 = "frag_depth";
  if (a1 <= 5)
  {
    v6 = "instance_index";
    v7 = "local_invocation_id";
    v8 = "local_invocation_index";
    if (a1 != 5)
    {
      v8 = "frag_depth";
    }

    if (a1 != 4)
    {
      v7 = v8;
    }

    if (a1 != 3)
    {
      v6 = v7;
    }

    if (a1 == 2)
    {
      v1 = "global_invocation_id";
    }

    if (a1 == 1)
    {
      v1 = "front_facing";
    }

    if (a1 <= 2)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = "sample_mask";
    v3 = "vertex_index";
    v4 = "workgroup_id";
    if (a1 != 11)
    {
      v4 = "frag_depth";
    }

    if (a1 != 10)
    {
      v3 = v4;
    }

    if (a1 != 9)
    {
      v2 = v3;
    }

    if (a1 == 8)
    {
      v1 = "sample_index";
    }

    if (a1 == 7)
    {
      v1 = "position";
    }

    if (a1 == 6)
    {
      v1 = "num_workgroups";
    }

    if (a1 <= 8)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unsigned __int8 **WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::Builtin> [12]>::tryGet<WTF::String>(unsigned __int8 ***a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 4) | (((*(v3 + 16) >> 2) & 1) << 32);
    v6 = *a1;
    if (WTF::operator==(v4, v5, **a1, (*a1)[1]))
    {
LABEL_3:
      v7 = v6;
      goto LABEL_17;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x100000000;
    v6 = *a1;
    if (WTF::operator==(0, 0x100000000, **a1, (*a1)[1]))
    {
      goto LABEL_3;
    }
  }

  v7 = v6 + 3;
  if ((WTF::operator==(v4, v5, v6[3], v6[4]) & 1) == 0)
  {
    v7 = v6 + 6;
    if ((WTF::operator==(v4, v5, v6[6], v6[7]) & 1) == 0)
    {
      v7 = v6 + 9;
      if ((WTF::operator==(v4, v5, v6[9], v6[10]) & 1) == 0)
      {
        v7 = v6 + 12;
        if ((WTF::operator==(v4, v5, v6[12], v6[13]) & 1) == 0)
        {
          v7 = v6 + 15;
          if ((WTF::operator==(v4, v5, v6[15], v6[16]) & 1) == 0)
          {
            v7 = v6 + 18;
            if ((WTF::operator==(v4, v5, v6[18], v6[19]) & 1) == 0)
            {
              v7 = v6 + 21;
              if ((WTF::operator==(v4, v5, v6[21], v6[22]) & 1) == 0)
              {
                v7 = v6 + 24;
                if ((WTF::operator==(v4, v5, v6[24], v6[25]) & 1) == 0)
                {
                  v7 = v6 + 27;
                  if ((WTF::operator==(v4, v5, v6[27], v6[28]) & 1) == 0)
                  {
                    v7 = v6 + 30;
                    if ((WTF::operator==(v4, v5, v6[30], v6[31]) & 1) == 0)
                    {
                      v7 = v6 + 33;
                      if (!WTF::operator==(v4, v5, v6[33], v6[34]))
                      {
                        v7 = v6 + 36;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  if (v7 == *a1 + 36)
  {
    return 0;
  }

  else
  {
    return v7 + 2;
  }
}

void *WGSL::parseLanguageFeature(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 8);
  v4 = *(v1 + 4);
  if (v3 != "packed_4x8_integer_dot_product" && v4 == 30)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 112)
      {
        return 0;
      }

      v21 = vandq_s8(vceqq_s8(*(v3 + 14), xmmword_225882A60), vceqq_s8(*(v3 + 1), xmmword_225882A50));
      v21.i8[0] = vminvq_u8(v21);
      if (!v21.i32[0])
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 112)
      {
        return 0;
      }

      v14 = vceqq_s16(*(v3 + 2), xmmword_225882A70);
      v14.i16[0] = vminvq_u16(v14);
      if (!v14.i32[0])
      {
        return 0;
      }

      v15 = vceqq_s16(*(v3 + 12), xmmword_225882A80);
      v15.i16[0] = vminvq_u16(v15);
      if (!v15.i32[0] || (v16 = vceqq_s16(*(v3 + 28), xmmword_225882A90), v16.i16[0] = vminvq_u16(v16), !v16.i32[0]) || (v17 = vceqq_s16(*(v3 + 44), xmmword_225882AA0), v17.i16[0] = vminvq_u16(v17), !v17.i32[0]))
      {
        v18 = 0;
        v19 = v3 == "unrestricted_pointer_parameters";
        goto LABEL_35;
      }
    }

    return &unk_278568630;
  }

  if (v3 == "packed_4x8_integer_dot_product" && v4 == 30)
  {
    return &unk_278568630;
  }

  if (v3 != "pointer_composite_access" && v4 == 24)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 112)
      {
        return 0;
      }

      v25 = vandq_s8(vceqq_s8(*(v3 + 8), xmmword_225882AC0), vceqq_s8(*(v3 + 1), xmmword_225882AB0));
      v25.i8[0] = vminvq_u8(v25);
      if (!v25.i32[0])
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 112)
      {
        return 0;
      }

      v22 = vceqq_s16(*(v3 + 2), xmmword_225882AD0);
      v22.i16[0] = vminvq_u16(v22);
      if (!v22.i32[0])
      {
        return 0;
      }

      v23 = vceqq_s16(*(v3 + 1), xmmword_225882AE0);
      v23.i16[0] = vminvq_u16(v23);
      if (!v23.i32[0])
      {
        return 0;
      }

      v24 = vceqq_s16(*(v3 + 2), xmmword_225882AF0);
      v24.i16[0] = vminvq_u16(v24);
      if (!v24.i32[0])
      {
        return 0;
      }
    }

    return &unk_278568648;
  }

  if (v3 == "pointer_composite_access" && v4 == 24)
  {
    return &unk_278568648;
  }

  if (v3 != "readonly_and_readwrite_storage_textures" && v4 == 39)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 114)
      {
        return 0;
      }

      v30 = vceqq_s8(*(v3 + 1), xmmword_225882B00);
      v30.i8[0] = vminvq_u8(v30);
      if (!v30.i32[0])
      {
        return 0;
      }

      v31 = vceqq_s8(*(v3 + 7), xmmword_225882B10);
      v31.i8[0] = vminvq_u8(v31);
      if (!v31.i32[0])
      {
        return 0;
      }

      v32 = vceqq_s8(*(v3 + 23), xmmword_225882B20);
      v32.i8[0] = vminvq_u8(v32);
      if (!v32.i32[0])
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 114)
      {
        return 0;
      }

      v9 = vceqq_s16(*(v3 + 2), xmmword_225882B30);
      v9.i16[0] = vminvq_u16(v9);
      if (!v9.i32[0])
      {
        return 0;
      }

      v10 = vceqq_s16(*(v3 + 14), xmmword_225882B40);
      v10.i16[0] = vminvq_u16(v10);
      if (!v10.i32[0])
      {
        return 0;
      }

      v11 = vceqq_s16(*(v3 + 30), xmmword_225882B50);
      v11.i16[0] = vminvq_u16(v11);
      if (!v11.i32[0])
      {
        return 0;
      }

      v12 = vceqq_s16(*(v3 + 46), xmmword_225882B60);
      v12.i16[0] = vminvq_u16(v12);
      if (!v12.i32[0])
      {
        return 0;
      }

      v13 = vceqq_s16(*(v3 + 62), xmmword_225882B70);
      v13.i16[0] = vminvq_u16(v13);
      if (!v13.i32[0])
      {
        return 0;
      }
    }

    return &unk_278568660;
  }

  if (v3 == "readonly_and_readwrite_storage_textures" && v4 == 39)
  {
    return &unk_278568660;
  }

  v18 = v4 == 31;
  v19 = v3 == "unrestricted_pointer_parameters";
  if (v3 != "unrestricted_pointer_parameters" && v4 == 31)
  {
    if ((v2 & 4) != 0)
    {
      if (*v3 != 117 || !vminvq_u8(vandq_s8(vceqq_s8(*(v3 + 15), xmmword_225882B90), vceqq_s8(*(v3 + 1), xmmword_225882B80))))
      {
        return 0;
      }
    }

    else
    {
      if (*v3 != 117)
      {
        return 0;
      }

      v26 = vceqq_s16(*(v3 + 2), xmmword_225882BA0);
      v26.i16[0] = vminvq_u16(v26);
      if (!v26.i32[0])
      {
        return 0;
      }

      v27 = vceqq_s16(*(v3 + 14), xmmword_225882BB0);
      v27.i16[0] = vminvq_u16(v27);
      if (!v27.i32[0])
      {
        return 0;
      }

      v28 = vceqq_s16(*(v3 + 30), xmmword_225882BC0);
      v28.i16[0] = vminvq_u16(v28);
      if (!v28.i32[0])
      {
        return 0;
      }

      v29 = vceqq_s16(*(v3 + 46), xmmword_225882BD0);
      v29.i16[0] = vminvq_u16(v29);
      if (!v29.i32[0])
      {
        return 0;
      }
    }

    return &unk_278568678;
  }

LABEL_35:
  if (v19 && v18)
  {
    return &unk_278568678;
  }

  return 0;
}

void WGSL::ShaderModule::validateOverrides(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 384);
  if (!v6)
  {
    v8 = 0;
    LODWORD(v7) = 0;
LABEL_10:
    v10 = v8;
    v8 = v6 + 24 * v7;
    if (!v6)
    {
      v12 = 0;
      if (v10)
      {
        goto LABEL_17;
      }

      goto LABEL_41;
    }

    goto LABEL_8;
  }

  v7 = *(v6 - 4);
  v8 = v6 + 24 * v7;
  if (!*(v6 - 12))
  {
    goto LABEL_10;
  }

  if (v7)
  {
    v9 = 24 * v7;
    v10 = *(a1 + 384);
    while ((*v10 + 1) <= 1)
    {
      v10 += 24;
      v9 -= 24;
      if (!v9)
      {
        v10 = v8;
        break;
      }
    }

LABEL_8:
    v11 = *(v6 - 4);
    goto LABEL_14;
  }

  v11 = 0;
  v10 = *(a1 + 384);
LABEL_14:
  v12 = v6 + 24 * v11;
  while (v10 != v12)
  {
LABEL_17:
    WGSL::evaluate(*v10, a2, v30);
    if (v31)
    {
      v15 = *(v10 + 20);
      if (v15)
      {
        v16 = *(v10 + 8);
        v17 = 8 * v15;
        while (1)
        {
          if ((v31 & 1) == 0)
          {
            __break(1u);
            CFEqual(v13, v14);
            return;
          }

          v13 = (*(**v16 + 16))(&v28);
          if (v29 == 1)
          {
            break;
          }

          v16 += 8;
          v17 -= 8;
          if (!v17)
          {
            goto LABEL_23;
          }
        }

        v21 = *(*v10 + 8);
        v20 = *(*v10 + 16);
        v22 = v28;
        if (!v28)
        {
          *a3 = 0;
          *(a3 + 8) = v21;
          *(a3 + 16) = v20;
          *(a3 + 24) = 1;
          v18 = 0;
          if (v31 == 1)
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
        v23 = v29;
        *a3 = v22;
        *(a3 + 8) = v21;
        *(a3 + 16) = v20;
        *(a3 + 24) = 1;
        if (v23)
        {
          v24 = v28;
          v28 = 0;
          if (v24)
          {
            if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v14);
            }
          }
        }

        v18 = 0;
        if (v31 == 1)
        {
LABEL_33:
          if (v30[16] != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v30);
          }
        }
      }

      else
      {
LABEL_23:
        v18 = 1;
        if (v31 == 1)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v18 = 0;
      v19 = *(*v10 + 8);
      *a3 = v28;
      *(a3 + 8) = v19;
      *(a3 + 24) = 1;
      if (v31 == 1)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    if (!v18)
    {
      return;
    }

    do
    {
      v10 += 24;
    }

    while (v10 != v8 && (*v10 + 1) <= 1);
  }

LABEL_41:
  v25 = *(a1 + 404);
  if (v25)
  {
    v26 = *(a1 + 392);
    v27 = 8 * v25;
    while (1)
    {
      (*(**v26 + 16))();
      if (*(a3 + 24))
      {
        break;
      }

      v26 += 8;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
LABEL_45:
    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

uint64_t WTF::StringImpl::createWithoutCopyingNonEmpty()
{
  return MEMORY[0x282123028]();
}

{
  return MEMORY[0x282123030]();
}

uint64_t WTF::parseDouble()
{
  return MEMORY[0x282123058]();
}

{
  return MEMORY[0x282123060]();
}

uint64_t WTF::MachSendRight::MachSendRight()
{
  return MEMORY[0x282123068]();
}

{
  return MEMORY[0x282123070]();
}

uint64_t WTF::StringBuilder::append()
{
  return MEMORY[0x2821230A0]();
}

{
  return MEMORY[0x2821230A8]();
}

uint64_t WTF::printInternal()
{
  return MEMORY[0x2821230B0]();
}

{
  return MEMORY[0x2821230B8]();
}

{
  return MEMORY[0x2821230C0]();
}

{
  return MEMORY[0x2821230C8]();
}

{
  return MEMORY[0x2821230D0]();
}

{
  return MEMORY[0x2821230D8]();
}

{
  return MEMORY[0x2821230E0]();
}

{
  return MEMORY[0x2821230E8]();
}

{
  return MEMORY[0x2821230F0]();
}

uint64_t WTF::numberToStringAndSize()
{
  return MEMORY[0x282123148]();
}

{
  return MEMORY[0x282123150]();
}

uint64_t WTF::equal(WTF *this, const WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  return MEMORY[0x282123178](this, a2, a3);
}

{
  return MEMORY[0x282123180](this, a2, a3);
}

uint64_t WTF::String::number(WTF::String *this)
{
  return MEMORY[0x282123198](this);
}

{
  return MEMORY[0x2821231A0](this);
}

{
  return MEMORY[0x2821231A8](this);
}

{
  return MEMORY[0x2821231B0](this);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v2 = MEMORY[0x2822026A8](__x, __y);
  result.rem = v3;
  result.quot = v2;
  return result;
}