_BYTE *WGSL::AST::Visitor::visit(_BYTE *this, Function *a2)
{
  v3 = this;
  v4 = *(a2 + 21);
  if (v4 && (this[32] & 1) == 0)
  {
    v9 = *(a2 + 9);
    v10 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        this = (*(*v3 + 96))(v3, *v9);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  v5 = *(a2 + 17);
  if (v5 && (v3[32] & 1) == 0)
  {
    v11 = *(a2 + 7);
    v12 = 8 * v5;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        this = (*(*v3 + 344))(v3, *v11);
      }

      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  v6 = *(a2 + 25);
  if (v6 && (v3[32] & 1) == 0)
  {
    v13 = *(a2 + 11);
    v14 = 8 * v6;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        this = (*(*v3 + 96))(v3, *v13);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  if (!*(a2 + 13) || (v3[32] & 1) != 0)
  {
    if (v3[32])
    {
      return this;
    }
  }

  else
  {
    this = (*(*v3 + 216))(v3);
    if (v3[32])
    {
      return this;
    }
  }

  v7 = *(a2 + 14);
  v8 = *(*v3 + 400);

  return v8(v3, v7);
}

void WGSL::AST::Visitor::~Visitor(WGSL::AST::Visitor *this, WTF::StringImpl *a2)
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

WTF::StringImpl *WGSL::AttributeValidator::validate@<X0>(WTF::StringImpl *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 6);
  v5 = *(v4 + 92);
  if (v5 && (*(this + 32) & 1) == 0)
  {
    v7 = *(v4 + 80);
    v8 = 8 * v5;
    do
    {
      if ((*(v2 + 32) & 1) == 0)
      {
        this = (*(*v2 + 24))(v2, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  v6 = *(v4 + 76);
  if (v6 && (*(v2 + 32) & 1) == 0)
  {
    v9 = *(v4 + 64);
    v10 = 8 * v6;
    do
    {
      if ((*(v2 + 32) & 1) == 0)
      {
        this = (*(*v2 + 48))(v2, *v9);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  if (*(v2 + 32))
  {
    v11 = *(v2 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    v18 = *(v2 + 1);
    v17 = v11;
    WTF::Vector<WGSL::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v16, &v17, 1uLL);
    *&v12 = 0;
    v13 = *(&v16[0] + 1);
    *a2 = *&v16[0];
    *(a2 + 8) = v13;
    v16[0] = v12;
    v16[1] = v12;
    *(a2 + 16) = v12;
    *(a2 + 32) = 1;
    WGSL::FailedCheck::~FailedCheck(v16, v14);
    this = v17;
    v17 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v15);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return this;
}

uint64_t *WTF::Vector<WGSL::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  if (a3)
  {
    if (a3 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = result;
      v5 = 24 * a3;
      v6 = WTF::fastMalloc((24 * a3));
      result = v4;
      *(v4 + 2) = v5 / 0x18;
      *v4 = v6;
      v7 = a2 + v5;
      v8 = *(v4 + 3);
      do
      {
        v9 = *v4;
        v10 = *a2;
        if (*a2)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        v11 = v9 + 24 * v8;
        *v11 = v10;
        *(v11 + 8) = *(a2 + 8);
        v8 = *(v4 + 3) + 1;
        *(v4 + 3) = v8;
        a2 += 24;
      }

      while (a2 != v7);
    }
  }

  return result;
}

void WGSL::FailedCheck::~FailedCheck(WGSL::FailedCheck *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  v4 = *(this + 2);
  if (v3)
  {
    v5 = 24 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 24);
      v5 -= 24;
    }

    while (v5);
    v4 = *(this + 2);
  }

  if (v4)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(this + 3);
  v8 = *this;
  if (v7)
  {
    v9 = 24 * v7;
    do
    {
      v10 = *v8;
      *v8 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v8 = (v8 + 24);
      v9 -= 24;
    }

    while (v9);
    v8 = *this;
  }

  if (v8)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v8, a2);
  }
}

void WGSL::AttributeValidator::visit(WGSL::AttributeValidator *this, Function *a2)
{
  v4 = *(a2 + 21);
  if (v4)
  {
    v5 = *(a2 + 9);
    for (i = 8 * v4; i; i -= 8)
    {
      v7 = *v5;
      if ((*(**v5 + 16))(*v5) == 11)
      {
        if (!*(a2 + 13))
        {
          v26 = "@must_use can only be applied to functions that return a value";
          v27 = (v7 + 1);
          v28 = this;
          v29 = 63;
          goto LABEL_97;
        }

        if (*(a2 + 120) != 1)
        {
          *(a2 + 120) = 1;
          goto LABEL_4;
        }
      }

      else if ((*(*v7 + 16))(v7) == 13)
      {
        if (*(a2 + 122) != 1)
        {
          *(a2 + 121) = *(v7 + 24) | 0x100;
          goto LABEL_4;
        }
      }

      else
      {
        if ((*(*v7 + 16))(v7) != 14)
        {
          v26 = "invalid attribute for function declaration";
LABEL_96:
          v27 = (v7 + 1);
          v28 = this;
          v29 = 43;
LABEL_97:
          WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v28, v27, v26, v29);
          return;
        }

        v8 = v7[3];
        if (v8)
        {
          LOBYTE(v30[0]) = 0;
          v32 = 0;
          if (*(v8 + 56) == 1)
          {
            v31 = -1;
            v9 = *(v8 + 48);
            if (v9 == 255)
            {
              v32 = 1;
              goto LABEL_109;
            }

            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v33, v30, (v8 + 32));
            v31 = *(v8 + 48);
            v32 = 1;
            switch(v31)
            {
              case 5u:
                v10 = v30[0];
                break;
              case 4u:
                v10 = LODWORD(v30[0]);
                break;
              case 3u:
                v10 = SLODWORD(v30[0]);
                break;
              default:
                goto LABEL_109;
            }

            if (v10 > 0 || (WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v8 + 8), "@workgroup_size argument must be at least 1", 0x2CuLL), (v32 & 1) != 0) && v31 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v33, v30);
            }
          }
        }

        if (*(this + 32))
        {
          return;
        }

        v11 = v7[4];
        if (v11)
        {
          LOBYTE(v30[0]) = 0;
          v32 = 0;
          if (*(v11 + 56) == 1)
          {
            v31 = -1;
            v12 = *(v11 + 48);
            if (v12 == 255)
            {
              v32 = 1;
LABEL_107:
              __break(0xC471u);
              JUMPOUT(0x2256FDDF8);
            }

            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v12, &v33, v30, (v11 + 32));
            v31 = *(v11 + 48);
            v32 = 1;
            switch(v31)
            {
              case 5u:
                v13 = v30[0];
                break;
              case 4u:
                v13 = LODWORD(v30[0]);
                break;
              case 3u:
                v13 = SLODWORD(v30[0]);
                break;
              default:
                goto LABEL_107;
            }

            if (v13 > 0 || (WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v11 + 8), "@workgroup_size argument must be at least 1", 0x2CuLL), (v32 & 1) != 0) && v31 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v33, v30);
            }
          }

          if (*(this + 32))
          {
            return;
          }
        }

        v14 = v7[5];
        if (v14)
        {
          LOBYTE(v30[0]) = 0;
          v32 = 0;
          if (*(v14 + 56) == 1)
          {
            v31 = -1;
            v15 = *(v14 + 48);
            if (v15 == 255)
            {
              v32 = 1;
LABEL_109:
              __break(0xC471u);
              JUMPOUT(0x2256FDDD0);
            }

            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v15, &v33, v30, (v14 + 32));
            v31 = *(v14 + 48);
            v32 = 1;
            switch(v31)
            {
              case 5u:
                v16 = v30[0];
                break;
              case 4u:
                v16 = LODWORD(v30[0]);
                break;
              case 3u:
                v16 = SLODWORD(v30[0]);
                break;
              default:
                goto LABEL_109;
            }

            if (v16 > 0 || (WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v14 + 8), "@workgroup_size argument must be at least 1", 0x2CuLL), (v32 & 1) != 0) && v31 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v33, v30);
            }
          }

          if (*(this + 32))
          {
            return;
          }
        }

        if (*(a2 + 152) != 1)
        {
          v17 = *(v7 + 3);
          *(a2 + 18) = v7[5];
          *(a2 + 8) = v17;
          *(a2 + 152) = 1;
          goto LABEL_4;
        }
      }

      WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v7 + 1), "duplicate attribute", 0x14uLL);
LABEL_4:
      ++v5;
    }
  }

  if (*(a2 + 152) == 1)
  {
    v18 = *(a2 + 121);
    if ((v18 & 0x100) == 0 || v18 != 4)
    {
      v26 = "@workgroup_size must only be applied to compute shader entry point function";
      v27 = (a2 + 8);
      v28 = this;
      v29 = 76;
      goto LABEL_97;
    }
  }

  v19 = *(a2 + 25);
  if (v19)
  {
    v20 = *(a2 + 11);
    for (j = 8 * v19; j; j -= 8)
    {
      if (*(this + 32))
      {
        return;
      }

      v7 = *v20;
      if ((*(**v20 + 16))(*v20) == 3)
      {
        if ((*(a2 + 121) & 0x100) == 0)
        {
          WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v7 + 1), "@builtin is not valid for non-entry point function types", 0x39uLL);
          goto LABEL_66;
        }

        if (*(a2 + 162) == 1)
        {
LABEL_78:
          WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v7 + 1), "duplicate attribute", 0x14uLL);
          goto LABEL_66;
        }

        *(a2 + 161) = *(v7 + 24) | 0x100;
      }

      else if ((*(*v7 + 16))(v7) == 8)
      {
        if (*(a2 + 165) == 1)
        {
          goto LABEL_78;
        }

        v22 = *(v7 + 12);
        *(a2 + 165) = 1;
        *(a2 + 163) = v22;
      }

      else if ((*(*v7 + 16))(v7) == 9)
      {
        if (*(a2 + 160) == 1)
        {
          goto LABEL_78;
        }

        *(a2 + 160) = 1;
      }

      else if ((WGSL::AttributeValidator::parseLocation(this, a2, a2 + 168, v7, *(*(a2 + 13) + 24)) & 1) == 0)
      {
        v26 = "invalid attribute for function return type";
        goto LABEL_96;
      }

LABEL_66:
      ++v20;
    }
  }

  v23 = *(a2 + 13);
  if (!v23)
  {
    goto LABEL_92;
  }

  if (((*(a2 + 163) | (*(a2 + 165) << 16)) & 0x10000) != 0 && (*(a2 + 172) & 1) == 0)
  {
    WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v23 + 8), "@interpolate is only allowed on declarations that have a @location attribute", 0x4DuLL);
    if (*(this + 32))
    {
      return;
    }
  }

  else if (*(this + 32))
  {
    return;
  }

  v24 = (*(a2 + 161) & 0x100) != 0 && *(a2 + 161) == 7;
  v25 = !v24;
  if (*(a2 + 160) != 1 || !v25 || (WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (*(a2 + 13) + 8), "@invariant is only allowed on declarations that have a @builtin(position) attribute", 0x54uLL), (*(this + 32) & 1) == 0))
  {
LABEL_92:
    *(this + 5) = a2;
    WGSL::AST::Visitor::visit(this, a2);
    *(this + 5) = 0;
  }
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral>(uint64_t a1, __int128 *a2, _BYTE *a3, unint64_t a4)
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
    goto LABEL_18;
  }

  if (a4 <= 1)
  {
    v7 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_11;
  }

  WTF::tryFastCompactMalloc((v4 + 20));
  v7 = v13;
  if (!v13)
  {
LABEL_18:
    __break(0xC471u);
    JUMPOUT(0x2256FDF64);
  }

  v9 = v13 + 20;
  *v13 = 2;
  *(v7 + 1) = v4;
  *(v7 + 1) = v7 + 20;
  *(v7 + 4) = 4;
  if (v4 == 1)
  {
    *v9 = *a3;
  }

  else
  {
    memcpy(v9, a3, v4);
  }

LABEL_11:
  v10 = *a2;
  atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  v14 = v10;
  v13 = v7;
  v15 = 1;
  result = std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v13, (a1 + 8));
  if (v15 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v7, v12);
  }

  return result;
}

uint64_t WGSL::AttributeValidator::parseLocation(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  v10 = (*(*a4 + 16))(a4);
  if (v10 != 10)
  {
    return v10 == 10;
  }

  if (a2)
  {
    v11 = *(a2 + 121);
    if ((v11 & 0x100) == 0)
    {
      v16 = "@location is not valid for non-entry point function types";
      v17 = (a4 + 1);
      v18 = a1;
      v19 = 58;
      goto LABEL_24;
    }

    if (v11 == 4)
    {
      v16 = "@location may not be used in the compute shader stage";
      v17 = (a4 + 1);
      v18 = a1;
      v19 = 54;
      goto LABEL_24;
    }
  }

  if (a5)
  {
    v12 = a5;
    while (v12[48] == 10)
    {
      v12 = *(v12 + 1);
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    if (!v12[48] && *v12 < 6u)
    {
      goto LABEL_19;
    }

LABEL_12:
    if (a5[48] != 1)
    {
      goto LABEL_23;
    }

    v13 = *a5;
    if (!*a5)
    {
      goto LABEL_23;
    }

    while (v13[48] == 10)
    {
      v13 = *(v13 + 1);
      if (!v13)
      {
        goto LABEL_23;
      }
    }

    if (v13[48] || *v13 >= 6u)
    {
      goto LABEL_23;
    }

LABEL_19:
    v14 = a4[3];
    if ((*(v14 + 56) & 1) == 0)
    {
      v16 = "@location constant value is missing";
      v17 = (a4 + 1);
      v18 = a1;
      v19 = 36;
      goto LABEL_24;
    }

    v15 = *(v14 + 48);
    switch(v15)
    {
      case 5:
        v14 = *(v14 + 32);
        break;
      case 4:
        LODWORD(v14) = *(v14 + 32);
LABEL_30:
        if (*(a3 + 4) != 1)
        {
          *a3 = v14;
          *(a3 + 4) = 1;
          return v10 == 10;
        }

        v16 = "duplicate attribute";
        v17 = (a4 + 1);
        v18 = a1;
        v19 = 20;
        goto LABEL_24;
      case 3:
        v14 = *(v14 + 32);
        break;
      default:
        result = 167;
        __break(0xC471u);
        return result;
    }

    if (v14 < 0)
    {
      v16 = "@location value must be non-negative";
      v17 = (a4 + 1);
      v18 = a1;
      v19 = 37;
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_23:
  v16 = "@location must only be applied to declarations of numeric scalar or numeric vector type";
  v17 = (a4 + 1);
  v18 = a1;
  v19 = 88;
LABEL_24:
  WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v18, v17, v16, v19);
  return v10 == 10;
}

uint64_t WGSL::AttributeValidator::visit(uint64_t this, WGSL::AST::Parameter *a2)
{
  v3 = this;
  v4 = *(a2 + 21);
  if (v4)
  {
    v5 = *(a2 + 9);
    for (i = 8 * v4; i; i -= 8)
    {
      if (*(v3 + 32))
      {
        return this;
      }

      v7 = *v5;
      v8 = *(v3 + 40);
      this = (*(**v5 + 16))(*v5);
      if (this == 3)
      {
        if (v8 && (*(v8 + 121) & 0x100) == 0)
        {
          this = WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v7 + 8), "@builtin is not valid for non-entry point function types", 0x39uLL);
          goto LABEL_4;
        }

        if (*(a2 + 90) == 1)
        {
LABEL_17:
          this = WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v7 + 8), "duplicate attribute", 0x14uLL);
          goto LABEL_4;
        }

        *(a2 + 89) = *(v7 + 24) | 0x100;
      }

      else
      {
        this = (*(*v7 + 16))(v7);
        if (this == 8)
        {
          if (*(a2 + 93) == 1)
          {
            goto LABEL_17;
          }

          v9 = *(v7 + 24);
          *(a2 + 93) = 1;
          *(a2 + 91) = v9;
        }

        else
        {
          this = (*(*v7 + 16))(v7);
          if (this == 9)
          {
            if (*(a2 + 88) == 1)
            {
              goto LABEL_17;
            }

            *(a2 + 88) = 1;
          }

          else
          {
            this = WGSL::AttributeValidator::parseLocation(v3, *(v3 + 40), a2 + 96, v7, *(*(a2 + 8) + 24));
            if ((this & 1) == 0)
            {

              return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v7 + 8), "invalid attribute for function parameter", 0x29uLL);
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }
  }

  if (((*(a2 + 91) | (*(a2 + 93) << 16)) & 0x10000) != 0 && (*(a2 + 100) & 1) == 0)
  {
    this = WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (a2 + 8), "@interpolate is only allowed on declarations that have a @location attribute", 0x4DuLL);
    if (*(v3 + 32))
    {
      return this;
    }
  }

  else if (*(v3 + 32))
  {
    return this;
  }

  v11 = (*(a2 + 89) & 0x100) == 0 || *(a2 + 89) != 7;
  v12 = *(a2 + 88) != 1 || !v11;
  if (v12 || (this = WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (a2 + 8), "@invariant is only allowed on declarations that have a @builtin(position) attribute", 0x54uLL), (*(v3 + 32) & 1) == 0))
  {
    v13 = *(a2 + 21);
    if (!v13)
    {
      goto LABEL_40;
    }

    v14 = *(a2 + 9);
    v15 = 8 * v13;
    do
    {
      if ((*(v3 + 32) & 1) == 0)
      {
        this = (*(*v3 + 96))(v3, *v14);
      }

      ++v14;
      v15 -= 8;
    }

    while (v15);
    if ((*(v3 + 32) & 1) == 0)
    {
LABEL_40:
      v16 = *(a2 + 8);
      v17 = *(*v3 + 216);

      return v17(v3, v16);
    }
  }

  return this;
}

WTF::StringImpl *WGSL::AttributeValidator::visit(WTF::StringImpl *this, WGSL::AST::Variable *a2)
{
  v3 = this;
  v4 = 0x1Au >> *(a2 + 76);
  if (*(a2 + 76) > 5u)
  {
    LOBYTE(v4) = 1;
  }

  if ((*(a2 + 76) & 0x100) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 25);
  if (v6)
  {
    v7 = *(a2 + 11);
    v8 = &v7[v6];
    while (1)
    {
      v9 = *v7;
      this = (*(**v7 + 16))(*v7);
      if (v9)
      {
        v10 = this == 2;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        if ((v5 & 1) == 0 || (v13 = *(v9 + 24), (*(v13 + 56) & 1) == 0))
        {
          v28 = "@binding attribute must only be applied to resource variables";
          v29 = (v9 + 8);
          v30 = v3;
          v31 = 62;
          return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
        }

        v14 = *(v13 + 48);
        switch(v14)
        {
          case 5:
            v13 = *(v13 + 32);
            break;
          case 4:
            LODWORD(v13) = *(v13 + 32);
            goto LABEL_46;
          case 3:
            v13 = *(v13 + 32);
            break;
          default:
            goto LABEL_89;
        }

        if (v13 < 0)
        {
          v28 = "@binding value must be non-negative";
          v29 = (v9 + 8);
          v30 = v3;
          v31 = 36;
          return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
        }

LABEL_46:
        if (*(a2 + 160) != 1)
        {
          *(a2 + 39) = v13;
          *(a2 + 160) = 1;
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      this = (*(*v9 + 16))(v9);
      if (this == 6)
      {
        if ((v5 & 1) == 0 || (v11 = *(v9 + 24), (*(v11 + 56) & 1) == 0))
        {
          v28 = "@group attribute must only be applied to resource variables";
          v29 = (v9 + 8);
          v30 = v3;
          v31 = 60;
          return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
        }

        v12 = *(v11 + 48);
        switch(v12)
        {
          case 5:
            v11 = *(v11 + 32);
            break;
          case 4:
            LODWORD(v11) = *(v11 + 32);
LABEL_52:
            if (*(a2 + 168) != 1)
            {
              *(a2 + 41) = v11;
              *(a2 + 168) = 1;
              goto LABEL_9;
            }

LABEL_8:
            this = WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v9 + 8), "duplicate attribute", 0x14uLL);
            goto LABEL_9;
          case 3:
            v11 = *(v11 + 32);
            break;
          default:
            goto LABEL_91;
        }

        if (v11 < 0)
        {
          v28 = "@group value must be non-negative";
          v29 = (v9 + 8);
          v30 = v3;
          v31 = 34;
          return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
        }

        goto LABEL_52;
      }

      if ((*(*v9 + 16))(v9) != 7)
      {
        v28 = "invalid attribute for variable declaration";
        v29 = (v9 + 8);
        v30 = v3;
        v31 = 43;
        return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
      }

      if (*(a2 + 128) != 2)
      {
        v28 = "@id attribute must only be applied to override variables";
        v29 = (v9 + 8);
        v30 = v3;
        v31 = 57;
        return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
      }

      v15 = *(a2 + 18);
      if (!v15)
      {
        goto LABEL_91;
      }

      v16 = *(v9 + 24);
      while (v15[48] == 10)
      {
        v15 = *(v15 + 1);
        if (!v15)
        {
          goto LABEL_91;
        }
      }

      if (v15[48] || ((v17 = *v15, v17 >= 6) ? (v18 = v17 == 7) : (v18 = 1), !v18))
      {
LABEL_91:
        __break(0xC471u);
        JUMPOUT(0x2256FE938);
      }

      if ((*(v16 + 56) & 1) == 0)
      {
        __break(0xC471u);
        goto LABEL_88;
      }

      v19 = *(v16 + 48);
      if (v19 == 5)
      {
        break;
      }

      if (v19 != 4)
      {
        if (v19 != 3)
        {
          __break(0xC471u);
          JUMPOUT(0x2256FE998);
        }

        v20 = *(v16 + 32);
LABEL_57:
        if ((v20 & 0x8000000000000000) != 0)
        {
          v28 = "@id value must be non-negative";
          v29 = (v9 + 8);
          v30 = v3;
          v31 = 31;
          return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
        }

        goto LABEL_58;
      }

      v20 = *(v16 + 32);
LABEL_58:
      if (v20 >= 0x10000)
      {
        v28 = "@id value must be between 0 and 65535";
        v29 = (v9 + 8);
        v30 = v3;
        v31 = 38;
        return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
      }

      v21 = *(*(v3 + 48) + 376);
      if (v21)
      {
        v22 = *(v21 - 8);
        v23 = 9 * ((~(v20 << 15) + v20) ^ ((~(v20 << 15) + v20) >> 10));
        v24 = v22 & (((v23 ^ (v23 >> 6)) + ~((v23 ^ (v23 >> 6)) << 11)) ^ (((v23 ^ (v23 >> 6)) + ~((v23 ^ (v23 >> 6)) << 11)) >> 16));
        v25 = *(v21 + 4 * v24);
        if (v25 == v20)
        {
LABEL_75:
          v28 = "@id value must be unique";
          v29 = (v9 + 8);
          v30 = v3;
          v31 = 25;
          return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
        }

        v26 = 1;
        while (v25 != -1)
        {
          v24 = (v24 + v26) & v22;
          v25 = *(v21 + 4 * v24);
          ++v26;
          if (v25 == v20)
          {
            goto LABEL_75;
          }
        }
      }

      if (*(a2 + 176) == 1)
      {
        WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v9 + 8), "duplicate attribute", 0x14uLL);
      }

      else
      {
        *(a2 + 43) = v20;
        *(a2 + 176) = 1;
      }

      v27 = *(v3 + 48);
      v33 = v20;
      this = WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v27 + 376), &v33, &v32);
LABEL_9:
      if (++v7 == v8)
      {
        goto LABEL_69;
      }
    }

    v20 = *(v16 + 32);
    goto LABEL_57;
  }

LABEL_69:
  if (v5)
  {
    if (*(a2 + 168) == 1 && (*(a2 + 160) & 1) != 0)
    {
      if ((*(a2 + 76) & 0x100) == 0)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(0xC471u);
        JUMPOUT(0x2256FE978);
      }

      return WGSL::AttributeValidator::validateAlignment(v3, a2 + 8, *(a2 + 76), *(a2 + 18));
    }

    else
    {
      v28 = "resource variables require @group and @binding attributes";
      v29 = (a2 + 8);
      v30 = v3;
      v31 = 58;
      return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v30, v29, v28, v31);
    }
  }

  return this;
}

uint64_t WGSL::AttributeValidator::validateAlignment(uint64_t result, unint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    return result;
  }

  v4 = a4;
  v5 = result;
  v6 = *(a4 + 48);
  if (v6 == 3)
  {
    v8 = WGSL::Type::alignment(*a4);
    v9 = WGSL::Type::maybeSize(*v4);
    if ((v9 & 0x100000000) != 0)
    {
      v10 = (v8 + v9 - 1) & -v8;
      v11 = *v4;
      v12 = WGSL::Type::alignment(*v4);
      if (a3 != 4)
      {
        v16 = a2;
        if (!(v10 % v12))
        {
LABEL_14:
          result = WGSL::AttributeValidator::validateAlignment(v5, v16, a3, *v4);
          if (*(v5 + 32))
          {
            return result;
          }

          v6 = *(v4 + 48);
          goto LABEL_16;
        }

        v40 = WGSL::Type::alignment(*v4);
LABEL_61:
        WTF::String::number(v40);
        v41 = WGSL::Types::Array::stride(v4);
        WTF::String::number(v41);
        WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(v5, a2, "array must have a stride multiple of ", 38, &v54, " bytes, but has a stride of ", 29, &v52, " bytes", 7);
        v42 = v52;
        v52 = 0;
        if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v42, v18);
        }

        result = v54;
        v54 = 0;
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }

      if (*(v11 + 48) - 3 >= 2)
      {
        v13 = v12;
      }

      else
      {
        v13 = (v12 + 15) & 0xFFFFFFF0;
      }

      if (v10 % v13)
      {
LABEL_57:
        v39 = *v4;
        LODWORD(v40) = WGSL::Type::alignment(*v4);
        if (*(v39 + 48) - 3 <= 1)
        {
          v40 = (v40 + 15) & 0xFFFFFFF0;
        }

        else
        {
          v40 = v40;
        }

        goto LABEL_61;
      }

      v14 = WGSL::Type::alignment(*v4);
      v15 = WGSL::Type::maybeSize(*v4);
      if ((v15 & 0x100000000) != 0)
      {
        v16 = a2;
        if ((-v14 & (v14 + v15 - 1) & 0xF) != 0)
        {
          v17 = WGSL::Types::Array::stride(v4);
          WTF::String::number(v17);
          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(v5, a2, "arrays in the uniform address space must have a stride multiple of 16 bytes, but has a stride of ", 98, &v54, " bytes", 7);
          result = v54;
          v54 = 0;
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        goto LABEL_14;
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_16:
  if (v6 != 4)
  {
    return result;
  }

  v19 = *v4;
  v20 = *(*v4 + 84);
  if (!v20)
  {
    return result;
  }

  if (a3 == 4)
  {
    v21 = 0;
    while (1)
    {
      if (v21 >= *(v19 + 84))
      {
        goto LABEL_66;
      }

      v22 = *(*(v19 + 72) + 8 * v21);
      a2 = *(*(v22 + 104) + 24);
      v4 = (v22 + 8);
      result = WGSL::AttributeValidator::validateAlignment(v5, v22 + 8, 4, a2);
      if (*(v5 + 32))
      {
        return result;
      }

      v24 = (v22 + 112);
      v23 = *(v22 + 112);
      result = WGSL::Type::alignment(a2);
      v25 = *(a2 + 48);
      if ((v25 - 3) >= 2)
      {
        v26 = result;
      }

      else
      {
        v26 = (result + 15) & 0xFFFFFFF0;
      }

      if (v23 % v26)
      {
        goto LABEL_46;
      }

      v27 = v21 + 1;
      if (v25 == 4 && v27 < v20)
      {
        if (v27 >= *(v19 + 84))
        {
          goto LABEL_66;
        }

        v29 = *(*(v19 + 72) + 8 * v21 + 8);
        v30 = *(v29 + 112);
        v31 = *v24;
        v32 = WGSL::Type::maybeSize(a2);
        if ((v32 & 0x100000000) == 0)
        {
          goto LABEL_56;
        }

        v33 = (v30 - v31);
        result = (v32 + 15) & 0xFFFFFFF0;
        if (v33 < result)
        {
          break;
        }
      }

      v21 = v27;
      if (v20 == v27)
      {
        return result;
      }
    }

    v54 = "::";
    v55 = 3;
    v52 = " and ";
    v53 = 6;
    v50 = "::";
    v51 = 3;
    v48 = " must be at least ";
    v49 = 19;
    WTF::String::number(result);
    v46[0] = " bytes, but it is ";
    v46[1] = 19;
    WTF::String::number(v33);
    v44[0] = " bytes";
    v44[1] = 7;
    WGSL::AttributeValidator::error<WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(v5, (v22 + 8), "uniform address space requires that the number of bytes between ", 65, v19 + 24, &v54, v22 + 24, &v52, v19 + 24, &v50, v29 + 24, &v48, &v47, v46, &v45, v44);
    v34 = v45;
    v45 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v18);
    }

    result = v47;
    v47 = 0;
    if (!result)
    {
      return result;
    }

LABEL_54:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }

    return result;
  }

  for (i = 0; v20 != i; ++i)
  {
    if (i >= *(v19 + 84))
    {
LABEL_66:
      __break(0xC471u);
      JUMPOUT(0x2256FEF38);
    }

    v22 = *(*(v19 + 72) + 8 * i);
    a2 = *(*(v22 + 104) + 24);
    v4 = (v22 + 8);
    result = WGSL::AttributeValidator::validateAlignment(v5, v22 + 8, a3, a2);
    if (*(v5 + 32))
    {
      break;
    }

    v36 = *(v22 + 112);
    result = WGSL::Type::alignment(a2);
    if (v36 % result)
    {
      v24 = (v22 + 112);
LABEL_46:
      v54 = "::";
      v55 = 3;
      v52 = " must be a multiple of ";
      v53 = 24;
      v37 = WGSL::Type::alignment(a2);
      if (a3 == 4)
      {
        if (*(a2 + 48) - 3 <= 1)
        {
          v37 = (v37 + 15) & 0xFFFFFFF0;
        }

        else
        {
          v37 = v37;
        }
      }

      WTF::String::number(v37);
      v50 = " bytes, but its offset is ";
      v51 = 27;
      WTF::String::number(*v24);
      v48 = " bytes";
      v49 = 7;
      WGSL::AttributeValidator::error<WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(v5, v4, "offset of struct member ", 25, v19 + 24, &v54, v22 + 24, &v52, v46, &v50, v44, &v48);
      v38 = v44[0];
      v44[0] = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v18);
      }

      result = v46[0];
      v46[0] = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_54;
    }
  }

  return result;
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t *a8, char *a9, uint64_t a10)
{
  v10 = *a5;
  *a5 = 0;
  v11 = *a8;
  *a8 = 0;
  if (a4)
  {
    v12 = a4 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FF240);
  }

  if (a7)
  {
    v13 = a7 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FF260);
  }

  if (a10)
  {
    v14 = a10 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 >> 31)
  {
    __break(0xC471u);
    goto LABEL_62;
  }

  if (v10)
  {
    v17 = *(v10 + 4);
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
    if (v11)
    {
LABEL_15:
      v18 = *(v11 + 4);
      if (((v18 | v14) & 0x80000000) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_19;
    }
  }

  v18 = 0;
  if ((v14 & 0x80000000) != 0)
  {
LABEL_58:
    __break(0xC471u);
    goto LABEL_63;
  }

LABEL_19:
  v19 = __OFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
    goto LABEL_58;
  }

  v19 = __OFADD__(v13, v20);
  v21 = v13 + v20;
  v22 = v19;
  if (v17 < 0)
  {
    goto LABEL_58;
  }

  if (v22)
  {
    goto LABEL_58;
  }

  v19 = __OFADD__(v17, v21);
  v23 = v17 + v21;
  if (v19)
  {
    goto LABEL_58;
  }

  v24 = (v12 + v23);
  if (__OFADD__(v12, v23))
  {
    goto LABEL_58;
  }

  if ((!v10 || (*(v10 + 16) & 4) != 0) && (!v11 || (*(v11 + 16) & 4) != 0))
  {
    if (!v24)
    {
      goto LABEL_41;
    }

    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

    WTF::tryFastCompactMalloc((v24 + 20));
    v32 = a3;
    v28 = v40;
    if (!v40)
    {
      goto LABEL_58;
    }

    v33 = a6;
    v39 = a2;
    v34 = a1;
    v35 = v40 + 20;
    *v40 = 2;
    *(v28 + 1) = v24;
    *(v28 + 1) = v28 + 20;
    *(v28 + 4) = 4;
    if (v12)
    {
      if (v12 == 1)
      {
        *v35 = *v32;
      }

      else
      {
        memcpy(v28 + 20, v32, v12);
        v33 = a6;
      }
    }

    if (v24 >= v12)
    {
      WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v35[v12], v24 - v12, v10, v33, v13, v11, a9, v14);
      a1 = v34;
      a2 = v39;
      goto LABEL_45;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    JUMPOUT(0x2256FF220);
  }

  if (!v24)
  {
LABEL_41:
    v28 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_45;
  }

  if (v24 > 0x7FFFFFEF)
  {
    goto LABEL_58;
  }

  WTF::tryFastCompactMalloc((2 * v24 + 20));
  v27 = a3;
  v28 = v40;
  if (!v40)
  {
    goto LABEL_58;
  }

  v29 = v40 + 20;
  *v40 = 2;
  *(v28 + 1) = v24;
  *(v28 + 1) = v28 + 20;
  *(v28 + 4) = 0;
  WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v29, v24, v27, v12, v10, a6, v13, v11, a9, v14);
LABEL_45:
  v36 = *a2;
  atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  v41 = v36;
  v40 = v28;
  v42 = 1;
  result = std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v40, (a1 + 8));
  if (v42 == 1)
  {
    result = v40;
    v40 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v38);
      }
    }
  }

  if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v28, v38);
  }

  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v11, v38);
  }

  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v10, v38);
    }
  }

  return result;
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4, uint64_t *a5, char *a6, uint64_t a7)
{
  v7 = *a5;
  *a5 = 0;
  if (a4)
  {
    v8 = a4 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FF410);
  }

  if (a7)
  {
    v9 = a7 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    __break(0xC471u);
LABEL_37:
    JUMPOUT(0x2256FF3F0);
  }

  if (v7)
  {
    v12 = *(v7 + 4);
    if (((v12 | v9) & 0x80000000) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0;
    if ((v9 & 0x80000000) != 0)
    {
LABEL_33:
      v21 = 0;
LABEL_34:
      __break(0xC471u);
      goto LABEL_37;
    }
  }

  v13 = __OFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13 || __OFADD__(v8, v14))
  {
    goto LABEL_33;
  }

  v15 = !v7 || (*(v7 + 16) & 4) != 0;
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v8 + v14), v15, a3, v8, v7, a6, v9, &v21);
  v16 = v21;
  if (!v21)
  {
    goto LABEL_34;
  }

  v21 = 0;
  v17 = *a2;
  atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  v23 = v17;
  v22 = v16;
  v24 = 1;
  std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v22, (a1 + 8));
  if (v24 == 1)
  {
    v19 = v22;
    v22 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }
    }
  }

  if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v18);
  }

  result = v21;
  v21 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v18);
  }

  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v7, v18);
    }
  }

  return result;
}

uint64_t WGSL::AttributeValidator::error<WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v17 = *(a5 + 24);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  v56 = v17;
  v18 = *a6;
  v19 = a6[1];
  v20 = *(a7 + 24);
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  v55 = v20;
  v21 = *a8;
  v22 = *(a8 + 8);
  v23 = *a9;
  *a9 = 0;
  v24 = *a10;
  v25 = *(a10 + 8);
  v26 = *a11;
  if (a4)
  {
    v27 = a4 - 1;
  }

  else
  {
    v27 = 0;
  }

  *a11 = 0;
  if (v27 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FF7A4);
  }

  if (v19)
  {
    v28 = v19 - 1;
  }

  else
  {
    v28 = 0;
  }

  if (v28 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FF7C4);
  }

  v29 = v22 - 1;
  if (!v22)
  {
    v29 = 0;
  }

  if (v29 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FF7E4);
  }

  v30 = v25 != 0;
  v31 = v25 - 1;
  if (!v30)
  {
    v31 = 0;
  }

  if (v31 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FF804);
  }

  v32 = *(a12 + 8);
  v30 = v32 != 0;
  v33 = v32 - 1;
  if (!v30)
  {
    v33 = 0;
  }

  if (v33 >> 31)
  {
    __break(0xC471u);
LABEL_88:
    JUMPOUT(0x2256FF784);
  }

  if (v17)
  {
    v34 = *(v17 + 4);
    if (v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v34 = 0;
    if (v20)
    {
LABEL_24:
      v35 = *(v20 + 4);
      if (v23)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  v35 = 0;
  if (v23)
  {
LABEL_25:
    v36 = *(v23 + 4);
    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

LABEL_30:
  v36 = 0;
  if (v26)
  {
LABEL_26:
    v37 = *(v26 + 4);
    if (((v37 | v33) & 0x80000000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_32;
  }

LABEL_31:
  v37 = 0;
  if ((v33 & 0x80000000) != 0)
  {
LABEL_82:
    __break(0xC471u);
    goto LABEL_88;
  }

LABEL_32:
  v38 = __OFADD__(v37, v33);
  v39 = v37 + v33;
  if (v38)
  {
    goto LABEL_82;
  }

  v38 = __OFADD__(v31, v39);
  v40 = v31 + v39;
  v41 = v38;
  if (v36 < 0)
  {
    goto LABEL_82;
  }

  if (v41)
  {
    goto LABEL_82;
  }

  v38 = __OFADD__(v36, v40);
  v42 = v36 + v40;
  if (v38)
  {
    goto LABEL_82;
  }

  v38 = __OFADD__(v29, v42);
  v43 = v29 + v42;
  v44 = v38;
  if (v35 < 0)
  {
    goto LABEL_82;
  }

  if (v44)
  {
    goto LABEL_82;
  }

  v38 = __OFADD__(v35, v43);
  v45 = v35 + v43;
  if (v38)
  {
    goto LABEL_82;
  }

  v38 = __OFADD__(v28, v45);
  v46 = v28 + v45;
  v47 = v38;
  if (v34 < 0)
  {
    goto LABEL_82;
  }

  if (v47)
  {
    goto LABEL_82;
  }

  v38 = __OFADD__(v34, v46);
  v48 = v34 + v46;
  if (v38 || __OFADD__(v27, v48))
  {
    goto LABEL_82;
  }

  v49 = (!v17 || (*(v17 + 16) & 4) != 0) && (!v20 || (*(v20 + 16) & 4) != 0) && (!v23 || (*(v23 + 16) & 4) != 0) && (!v26 || (*(v26 + 16) & 4) != 0);
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v57, v27 + v48, v49, a3, v27, v17, v18, v28, v20, v21, v29, v23, v24, v31, v26, *a12, v33);
  v50 = v57;
  if (!v57)
  {
    goto LABEL_82;
  }

  v51 = *a2;
  atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
  v58 = v51;
  v57 = v50;
  v59 = 1;
  std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v57, (a1 + 8));
  if (v59 == 1)
  {
    v53 = v57;
    v57 = 0;
    if (v53)
    {
      if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v52);
      }
    }
  }

  if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v52);
  }

  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v52);
  }

  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v52);
  }

  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v52);
  }

  result = v56;
  if (v56)
  {
    if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v56, v52);
    }
  }

  return result;
}

uint64_t WGSL::AttributeValidator::error<WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WGSL::AST::Identifier &,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, unsigned __int8 **a8, uint64_t a9, void *a10, uint64_t a11, char **a12, uint64_t *a13, void *a14, uint64_t *a15, uint64_t a16)
{
  v16 = *(a5 + 24);
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  v84 = v16;
  v18 = *a6;
  v17 = a6[1];
  v19 = *(a7 + 24);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  v83 = v19;
  v21 = *a8;
  v20 = a8[1];
  v22 = *(a9 + 24);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  v82 = v22;
  v24 = *a10;
  v23 = a10[1];
  v25 = *(a11 + 24);
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  v81 = v25;
  v27 = *a12;
  v26 = a12[1];
  v28 = *a13;
  *a13 = 0;
  v30 = *a14;
  v29 = a14[1];
  v31 = *a15;
  if (a4)
  {
    v32 = a4 - 1;
  }

  else
  {
    v32 = 0;
  }

  *a15 = 0;
  if (v32 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FFD84);
  }

  if (v17)
  {
    v33 = v17 - 1;
  }

  else
  {
    v33 = 0;
  }

  if (v33 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FFDA4);
  }

  if (v20)
  {
    v34 = (v20 - 1);
  }

  else
  {
    v34 = 0;
  }

  if (v34 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FFDC4);
  }

  if (v23)
  {
    v35 = v23 - 1;
  }

  else
  {
    v35 = 0;
  }

  if (v35 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FFDE4);
  }

  if (v26)
  {
    v36 = (v26 - 1);
  }

  else
  {
    v36 = 0;
  }

  if (v36 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FFE04);
  }

  v78 = v30;
  if (v29)
  {
    v37 = v29 - 1;
  }

  else
  {
    v37 = 0;
  }

  if (v37 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2256FFE24);
  }

  v38 = *(a16 + 8);
  v39 = v38 != 0;
  v40 = v38 - 1;
  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v41 >> 31)
  {
    __break(0xC471u);
LABEL_132:
    JUMPOUT(0x2256FFD64);
  }

  if (v84)
  {
    v42 = *(v84 + 4);
    v79 = v27;
    if (v83)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v42 = 0;
    v79 = v27;
    if (v83)
    {
LABEL_39:
      v43 = *(v83 + 4);
      v80 = v24;
      if (v22)
      {
        goto LABEL_40;
      }

      goto LABEL_47;
    }
  }

  v43 = 0;
  v80 = v24;
  if (v22)
  {
LABEL_40:
    v44 = *(v22 + 4);
    v45 = v18;
    v46 = a3;
    v47 = a2;
    v48 = a1;
    if (v25)
    {
      goto LABEL_41;
    }

    goto LABEL_48;
  }

LABEL_47:
  v44 = 0;
  v45 = v18;
  v46 = a3;
  v47 = a2;
  v48 = a1;
  if (v25)
  {
LABEL_41:
    v49 = *(v25 + 4);
    v50 = v21;
    if (v28)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

LABEL_48:
  v49 = 0;
  v50 = v21;
  if (v28)
  {
LABEL_42:
    v51 = *(v28 + 4);
    if (v31)
    {
      goto LABEL_43;
    }

    goto LABEL_50;
  }

LABEL_49:
  v51 = 0;
  if (v31)
  {
LABEL_43:
    v52 = *(v31 + 4);
    if (((v52 | v41) & 0x80000000) != 0)
    {
      goto LABEL_124;
    }

    goto LABEL_51;
  }

LABEL_50:
  v52 = 0;
  if ((v41 & 0x80000000) != 0)
  {
LABEL_124:
    __break(0xC471u);
    goto LABEL_132;
  }

LABEL_51:
  v53 = __OFADD__(v52, v41);
  v54 = v52 + v41;
  if (v53)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v37, v54);
  v55 = v37 + v54;
  v56 = v53;
  if (v51 < 0)
  {
    goto LABEL_124;
  }

  if (v56)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v51, v55);
  v57 = v51 + v55;
  if (v53)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v36, v57);
  v58 = v36 + v57;
  v59 = v53;
  if (v49 < 0)
  {
    goto LABEL_124;
  }

  if (v59)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v49, v58);
  v60 = v49 + v58;
  if (v53)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v35, v60);
  v61 = v35 + v60;
  v62 = v53;
  if (v44 < 0)
  {
    goto LABEL_124;
  }

  if (v62)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v44, v61);
  v63 = v44 + v61;
  if (v53)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v34, v63);
  v64 = v34 + v63;
  v65 = v53;
  if (v43 < 0)
  {
    goto LABEL_124;
  }

  if (v65)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v43, v64);
  v66 = v43 + v64;
  if (v53)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v33, v66);
  v67 = v33 + v66;
  v68 = v53;
  if (v42 < 0)
  {
    goto LABEL_124;
  }

  if (v68)
  {
    goto LABEL_124;
  }

  v53 = __OFADD__(v42, v67);
  v69 = v42 + v67;
  if (v53 || __OFADD__(v32, v69))
  {
    goto LABEL_124;
  }

  if (!v84 || (*(v84 + 16) & 4) != 0)
  {
    v70 = ((v71 = v46, v72 = v50, !v83) || (*(v83 + 16) & 4) != 0) && (!v22 || (*(v22 + 16) & 4) != 0) && (!v25 || (*(v25 + 16) & 4) != 0) && (!v28 || (*(v28 + 16) & 4) != 0) && (!v31 || (*(v31 + 16) & 4) != 0);
  }

  else
  {
    v70 = 0;
    v71 = v46;
    v72 = v50;
  }

  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v85, (v32 + v69), v70, v71, v32, v84, v45, v33, v83, v72, v34, v22, v80, v35, v25, v79, v36, v28, v78, v37, v31, *a16, v41);
  v73 = v85;
  if (!v85)
  {
    goto LABEL_124;
  }

  v74 = *v47;
  atomic_fetch_add_explicit(v85, 2u, memory_order_relaxed);
  v86 = v74;
  v85 = v73;
  v87 = 1;
  std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v85, (v48 + 8));
  if (v87 == 1)
  {
    v76 = v85;
    v85 = 0;
    if (v76)
    {
      if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v75);
      }
    }
  }

  if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v73, v75);
  }

  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v75);
  }

  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v75);
  }

  if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v81, v75);
  }

  if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v82, v75);
  }

  if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v83, v75);
  }

  result = v84;
  if (v84)
  {
    if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v84, v75);
    }
  }

  return result;
}

unint64_t WGSL::AttributeValidator::visit(unint64_t this, WGSL::AST::Structure *a2)
{
  v2 = a2;
  v3 = this;
  v4 = *(a2 + 17);
  if (v4 && (*(this + 32) & 1) == 0)
  {
    v13 = *(a2 + 7);
    v14 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        this = (*(*v3 + 96))(v3, *v13);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v5 = *(v2 + 21);
  if (!v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v3[56];
    v3[56] = 0;
    *(v2 + 120) = v11;
    v12 = -1;
    goto LABEL_39;
  }

  v6 = *(v2 + 9);
  if (v3[32])
  {
    v7 = v3[56];
    v3[56] = 0;
    v27 = v2;
    *(v2 + 120) = v7;
    goto LABEL_17;
  }

  v15 = 8 * v5;
  do
  {
    if ((v3[32] & 1) == 0)
    {
      this = (*(*v3 + 528))(v3, *v6);
    }

    ++v6;
    v15 -= 8;
  }

  while (v15);
  v5 = *(v2 + 21);
  v6 = *(v2 + 9);
  v16 = v3[56];
  v3[56] = 0;
  *(v2 + 120) = v16;
  if (v5)
  {
    v27 = v2;
LABEL_17:
    v17 = &v6[v5];
    v18 = 0;
    v9 = 0;
    v8 = 0;
    v19 = 0;
    while (1)
    {
      v10 = *v6;
      v22 = *(*(*v6 + 104) + 24);
      if (*(*v6 + 128))
      {
        v23 = *(v10 + 124);
      }

      else
      {
        v23 = WGSL::Type::alignment(*(*(*v6 + 104) + 24));
        *(v10 + 124) = v23;
        *(v10 + 128) = 1;
      }

      this = WGSL::Type::maybeSize(v22);
      if ((this & 0x100000000) == 0)
      {
        break;
      }

      v24 = *(v10 + 132);
      if ((v24 & 0x100000000) == 0)
      {
        *(v10 + 132) = this;
        *(v10 + 136) = 1;
        LODWORD(v24) = this;
      }

      v25 = (v23 + v19 - 1) & -v23;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      *(v10 + 112) = v25;
      if (v8 <= v23)
      {
        v8 = v23;
      }

      v20 = __CFADD__(v25, v24);
      LODWORD(v24) = v25 + v24;
      if (v20)
      {
        v24 = 0xFFFFFFFFLL;
      }

      else
      {
        v24 = v24;
      }

      if (v18)
      {
        if (v25 < v9)
        {
          goto LABEL_45;
        }

        *(v18 + 116) = v25 - v9;
      }

      v20 = __CFADD__(v25, this);
      v21 = v25 + this;
      if (v20)
      {
        v9 = v19;
      }

      else
      {
        v9 = v21;
      }

      ++v6;
      v18 = v10;
      v19 = v24;
      if (v6 == v17)
      {
        v12 = v24 - 1;
        v2 = v27;
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v12 = -1;
LABEL_39:
  v26 = (v12 + v8) & -v8;
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  if (v26 < v9)
  {
LABEL_45:
    __break(0xC471u);
    JUMPOUT(0x2257000E0);
  }

  *(v10 + 116) = v26 - v9;
  *(v2 + 33) = v8;
  *(v2 + 136) = 1;
  *(v2 + 31) = v26;
  *(v2 + 128) = 1;
  return this;
}

void WGSL::AttributeValidator::visit(WGSL::AttributeValidator *this, WGSL::AST::StructureMember *a2)
{
  v4 = *(a2 + 25);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(a2 + 11);
    while (1)
    {
      if (*(this + 32))
      {
        return;
      }

      v7 = *v6;
      if ((*(**v6 + 16))(*v6) == 3)
      {
        if (*(a2 + 141) == 1)
        {
          goto LABEL_48;
        }

        *(a2 + 70) = v7[24] | 0x100;
        goto LABEL_4;
      }

      if ((*(*v7 + 16))(v7) == 8)
      {
        if (*(a2 + 154) == 1)
        {
          goto LABEL_48;
        }

        v8 = *(v7 + 12);
        *(a2 + 154) = 1;
        *(a2 + 76) = v8;
        goto LABEL_4;
      }

      if ((*(*v7 + 16))(v7) == 9)
      {
        if (*(a2 + 120) == 1)
        {
          goto LABEL_48;
        }

        *(a2 + 120) = 1;
        goto LABEL_4;
      }

      if (WGSL::AttributeValidator::parseLocation(this, 0, a2 + 144, v7, *(*(a2 + 13) + 24)))
      {
        goto LABEL_4;
      }

      if ((*(*v7 + 16))(v7) != 12)
      {
        if ((*(*v7 + 16))(v7) != 1)
        {
          v30 = "invalid attribute for structure member";
          v31 = (v7 + 8);
          v32 = this;
          v33 = 39;
LABEL_78:
          WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v32, v31, v30, v33);
          return;
        }

        *(this + 56) = 1;
        v12 = *(v7 + 3);
        LOBYTE(v34[0]) = 0;
        v36 = 0;
        if (*(v12 + 56) == 1)
        {
          v35 = -1;
          v13 = *(v12 + 48);
          if (v13 == 255)
          {
            v36 = 1;
LABEL_89:
            __break(0xC471u);
            JUMPOUT(0x2257006C4);
          }

          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v13, &v37, v34, (v12 + 32));
          v35 = *(v12 + 48);
          v36 = 1;
          switch(v35)
          {
            case 5u:
              v14 = v34[0];
              break;
            case 4u:
              v14 = LODWORD(v34[0]);
              break;
            case 3u:
              v14 = SLODWORD(v34[0]);
              break;
            default:
              goto LABEL_89;
          }

          if (v14 <= 0)
          {
            v19 = (v7 + 8);
            v20 = this;
            v21 = "@align value must be positive";
            v22 = 30;
          }

          else
          {
            if ((v14 & (v14 - 1)) == 0)
            {
              v16 = *(a2 + 13);
              v17 = *(v16 + 24);
              if (v17 && v14 % WGSL::Type::alignment(*(v16 + 24)))
              {
                v23 = WGSL::Type::alignment(v17);
                WGSL::AttributeValidator::error<WTF::ASCIILiteral,long long &,WTF::ASCIILiteral,unsigned int>(this, (v7 + 8), "@align attribute ", 18, v14, " of struct member is not a multiple of the type's alignment ", 61, v23);
                v18 = 0;
              }

              else if (*(a2 + 128) == 1)
              {
                WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v7 + 8), "duplicate attribute", 0x14uLL);
                v18 = 1;
              }

              else
              {
                *(a2 + 31) = v14;
                v18 = 1;
                *(a2 + 128) = 1;
              }

LABEL_45:
              if (v36 == 1 && v35 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v37, v34);
              }

              if (!v18)
              {
                return;
              }

              goto LABEL_4;
            }

            v19 = (v7 + 8);
            v20 = this;
            v21 = "@align value must be a power of two";
            v22 = 36;
          }
        }

        else
        {
          v19 = (v7 + 8);
          v20 = this;
          v21 = "@align constant value does not exist";
          v22 = 37;
        }

        WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v20, v19, v21, v22);
        v18 = 0;
        goto LABEL_45;
      }

      *(this + 56) = 1;
      if ((WGSL::Type::hasCreationFixedFootprint(*(*(a2 + 13) + 24)) & 1) == 0)
      {
        v30 = "@size can only be applied to members that have a type with a size that is fully determined at shader creation time.";
        v31 = (v7 + 8);
        v32 = this;
        v33 = 116;
        goto LABEL_78;
      }

      v9 = *(v7 + 3);
      if ((*(v9 + 56) & 1) == 0)
      {
        v30 = "@size constant value is not found";
        v31 = (v7 + 8);
        v32 = this;
        v33 = 34;
        goto LABEL_78;
      }

      v10 = *(v9 + 48);
      if (v10 == 5)
      {
        break;
      }

      if (v10 != 4)
      {
        if (v10 != 3)
        {
          goto LABEL_89;
        }

        v11 = *(v9 + 32);
LABEL_31:
        if ((v11 & 0x8000000000000000) != 0)
        {
          v30 = "@size value must be non-negative";
          v31 = (v7 + 8);
          v32 = this;
          v33 = 33;
          goto LABEL_78;
        }

        goto LABEL_32;
      }

      v11 = *(v9 + 32);
LABEL_32:
      v15 = WGSL::Type::maybeSize(*(*(a2 + 13) + 24));
      if ((v15 & 0x100000000) == 0)
      {
        __break(1u);
LABEL_85:
        v30 = "@size value must be at least the byte-size of the type of the member";
        v31 = (v7 + 8);
        v32 = this;
        v33 = 69;
        goto LABEL_78;
      }

      if (v11 < v15)
      {
        goto LABEL_85;
      }

      if (*(a2 + 136) == 1)
      {
LABEL_48:
        WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (v7 + 8), "duplicate attribute", 0x14uLL);
        goto LABEL_4;
      }

      *(a2 + 33) = v11;
      *(a2 + 136) = 1;
LABEL_4:
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_55;
      }
    }

    v11 = *(v9 + 32);
    goto LABEL_31;
  }

LABEL_55:
  if (((*(a2 + 76) | (*(a2 + 154) << 16)) & 0x10000) != 0 && (*(a2 + 148) & 1) == 0)
  {
    WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (a2 + 8), "@interpolate is only allowed on declarations that have a @location attribute", 0x4DuLL);
    if (*(this + 32))
    {
      return;
    }
  }

  else if (*(this + 32))
  {
    return;
  }

  v25 = (*(a2 + 70) & 0x100) == 0 || *(a2 + 70) != 7;
  v26 = *(a2 + 120) != 1 || !v25;
  if (v26 || (WGSL::AttributeValidator::error<WTF::ASCIILiteral>(this, (a2 + 8), "@invariant is only allowed on declarations that have a @builtin(position) attribute", 0x54uLL), (*(this + 32) & 1) == 0))
  {
    v27 = *(a2 + 25);
    if (!v27)
    {
      goto LABEL_75;
    }

    v28 = *(a2 + 11);
    v29 = 8 * v27;
    do
    {
      if ((*(this + 32) & 1) == 0)
      {
        (*(*this + 96))(this, *v28);
      }

      ++v28;
      v29 -= 8;
    }

    while (v29);
    if ((*(this + 32) & 1) == 0)
    {
LABEL_75:
      (*(*this + 216))(this, *(a2 + 13));
    }
  }
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral,long long &,WTF::ASCIILiteral,unsigned int>(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4, unint64_t a5, _BYTE *a6, uint64_t a7, unsigned int a8)
{
  v78 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = a4 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225700C34);
  }

  if (a7)
  {
    v9 = a7 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    __break(0xC471u);
    goto LABEL_93;
  }

  v10 = a5;
  if ((a5 & 0x8000000000000000) != 0)
  {
    v17 = -a5;
    v14 = 1;
    do
    {
      ++v14;
      v18 = v17 >= 0xA;
      v17 /= 0xAuLL;
    }

    while (v18);
  }

  else
  {
    v14 = 0;
    v15 = a5;
    do
    {
      ++v14;
      v16 = v15 > 9;
      v15 /= 0xAuLL;
    }

    while (v16);
  }

  v19 = 0;
  v20 = a4 != 0;
  v21 = v14 + a7 + a4 - (a7 != 0) - v20;
  v22 = a8;
  do
  {
    ++v19;
    ++v21;
    v16 = v22 > 9;
    v22 /= 0xAu;
  }

  while (v16);
  if (((v19 | v9) & 0x80000000) != 0)
  {
    goto LABEL_90;
  }

  v23 = __OFADD__(v9, v19);
  v24 = v9 + v19;
  v25 = v23;
  if (v14 < 0)
  {
    goto LABEL_90;
  }

  if (v25)
  {
    goto LABEL_90;
  }

  v23 = __OFADD__(v14, v24);
  v26 = v14 + v24;
  if (v23)
  {
    goto LABEL_90;
  }

  v27 = (v8 + v26);
  if (__OFADD__(v8, v26))
  {
    goto LABEL_90;
  }

  if (!v27)
  {
    v28 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_83;
  }

  if ((v27 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v27 + 20)), (v28 = v75) == 0))
  {
LABEL_90:
    __break(0xC471u);
    goto LABEL_94;
  }

  v71 = a1;
  v29 = v75 + 20;
  *v75 = 2;
  *(v28 + 1) = v27;
  *(v28 + 1) = v28 + 20;
  *(v28 + 4) = 4;
  if (v8)
  {
    if (v8 == 1)
    {
      *v29 = *a3;
    }

    else
    {
      memcpy(v28 + 20, a3, v8);
    }
  }

  v30 = v27 - v8;
  if (v27 < v8)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    JUMPOUT(0x225700C14);
  }

  v31 = &v29[v8];
  if ((v10 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v33 = v77;
    v34 = 25;
    v35 = 1;
    v36 = v10;
    do
    {
      if (v35 == 26)
      {
        goto LABEL_93;
      }

      v37 = v35;
      v38 = v32;
      v39 = v33;
      --v34;
      *(&v75 + v34) = (v36 % 0xA) | 0x30;
      ++v35;
      ++v32;
      --v33;
      v16 = v36 > 9;
      v36 /= 0xAuLL;
    }

    while (v16);
    if (v38 >= v30)
    {
      v40 = v27 - v8;
    }

    else
    {
      v40 = v38;
    }

    if (v40 >= 8)
    {
      v57 = v40 + 1;
      v58 = v57 & 7;
      if ((v57 & 7) == 0)
      {
        v58 = 8;
      }

      v41 = v57 - v58;
      if (v38 >= v20 - a4 + v21)
      {
        v38 = v20 - a4 + v21;
      }

      v59 = ~v38 + v58;
      v60 = &v75;
      v61 = &v29[v8];
      do
      {
        *v61++ = *(v60++ + v34);
        v59 += 8;
      }

      while (v59);
    }

    else
    {
      v41 = 0;
    }

    v62 = v20 - a4 + v21;
    v63 = &v29[v8];
    while (v41 != v62)
    {
      v63[v41] = v39[v41];
      --v37;
      ++v63;
      ++v39;
      --v62;
      if (v41 == v37)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_93;
  }

  v42 = 0;
  v43 = -v10;
  do
  {
    if (v42 == -25)
    {
      goto LABEL_93;
    }

    v77[v42--] = (v43 % 0xA) | 0x30;
    v16 = v43 > 9;
    v43 /= 0xAuLL;
  }

  while (v16);
  if ((v42 + 24) >= 0x19)
  {
    goto LABEL_93;
  }

  v44 = 0;
  v45 = &v75 + v42 + 24;
  v46 = 1 - v42;
  v77[v42] = 45;
  if (-v42 < v30)
  {
    v47 = -v42;
  }

  else
  {
    v47 = v27 - v8;
  }

  if (v47 >= 8)
  {
    v48 = -v42;
    v49 = v47 + 1;
    v50 = (v47 + 1) & 7;
    if (!v50)
    {
      v50 = 8;
    }

    v44 = v49 - v50;
    if (v48 >= v20 - a4 + v21)
    {
      v48 = v20 - a4 + v21;
    }

    v51 = ~v48 + v50;
    v52 = &v29[v8];
    v53 = v45;
    do
    {
      v54 = *v53++;
      *v52++ = v54;
      v51 += 8;
    }

    while (v51);
  }

  v55 = (a4 != 0) - a4 + v21;
  v56 = &v29[v8];
  do
  {
    if (v44 == v55)
    {
      goto LABEL_93;
    }

    v56[v44] = v45[v44];
    --v46;
    ++v56;
    ++v45;
    --v55;
  }

  while (v44 != v46);
LABEL_70:
  if ((v10 & 0x8000000000000000) != 0)
  {
    v65 = -v10;
    v64 = 1;
    do
    {
      ++v64;
      v18 = v65 >= 0xA;
      v65 /= 0xAuLL;
    }

    while (v18);
  }

  else
  {
    v64 = 0;
    do
    {
      ++v64;
      v16 = v10 > 9;
      v10 /= 0xAuLL;
    }

    while (v16);
  }

  v66 = v30 - v64;
  if (v30 < v64)
  {
    goto LABEL_93;
  }

  v67 = &v31[v64];
  if (v9)
  {
    if (v9 == 1)
    {
      *v67 = *a6;
    }

    else
    {
      memcpy(&v31[v64], a6, v9);
    }
  }

  if (v66 < v9)
  {
    goto LABEL_93;
  }

  LODWORD(v75) = a8;
  WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v75, &v67[v9], v66 - v9);
  a1 = v71;
LABEL_83:
  v68 = *a2;
  atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  v76 = v68;
  v75 = v28;
  v77[0] = 1;
  result = std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v75, (a1 + 8));
  if (v77[0] == 1)
  {
    result = v75;
    v75 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v70);
      }
    }
  }

  if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v28, v70);
  }

  return result;
}

WTF::StringImpl *WGSL::AttributeValidator::visit(WTF::StringImpl *this, WGSL::AST::CompoundStatement *a2)
{
  v3 = this;
  v4 = *(a2 + 9);
  if (v4)
  {
    v5 = *(a2 + 3);
    v6 = 8 * v4;
    while (1)
    {
      v7 = *v5;
      this = (*(**v5 + 16))(*v5);
      if (this != 5)
      {
        break;
      }

      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v7 + 8), "invalid attribute for compound statement", 0x29uLL);
  }

  else
  {
LABEL_5:
    v8 = *(a2 + 13);
    if (v8 && (*(v3 + 32) & 1) == 0)
    {
      v9 = *(a2 + 5);
      v10 = 8 * v8;
      do
      {
        if ((*(v3 + 32) & 1) == 0)
        {
          this = (*(*v3 + 360))(v3, *v9);
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  return this;
}

void WGSL::AttributeValidator::validateIO(WGSL::AttributeValidator *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = *(this + 6);
  if ((*(v5 + 352) & 1) == 0)
  {
    goto LABEL_91;
  }

  v3 = this;
  v6 = *(v5 + 332);
  if (!v6)
  {
LABEL_88:
    if ((*(v3 + 32) & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 32) = 0;
      return;
    }

    goto LABEL_92;
  }

  v7 = *(v5 + 320);
  v38 = &v7[3 * v6];
  while (1)
  {
    v8 = *v7;
    v41 = 0;
    v42 = 0;
    v9 = *(v8 + 68);
    if (!v9)
    {
LABEL_39:
      if (*(v8 + 104))
      {
        v18 = v42;
        if (v42)
        {
          v42 = 0;
          WTF::fastFree((v18 - 16), a2);
        }

        v19 = v41;
        if (v41)
        {
          v41 = 0;
          WTF::fastFree((v19 - 16), a2);
        }

        v20 = *(v8 + 104);
        v21 = *(v20 + 24);
        if ((*(v8 + 161) & 0x100) != 0)
        {
          WGSL::AttributeValidator::validateBuiltinIO(v3, (v20 + 8), v21, *(v7 + 8), *(v8 + 161), 1, &v42);
          if (*(v3 + 32) == 1)
          {
            goto LABEL_85;
          }

          goto LABEL_61;
        }

        v22 = *(v8 + 168);
        if ((v22 & 0x100000000) == 0)
        {
          if (!v21 || v21[48] != 4)
          {
            WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v20 + 8), "missing entry point IO attribute on return type", 0x30uLL);
            if (*(v3 + 32) != 1)
            {
LABEL_91:
              __break(1u);
LABEL_92:
              v32 = *(v3 + 1);
              if (v32)
              {
                atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
              }

              v44 = *(v3 + 1);
              v43 = v32;
              WTF::Vector<WGSL::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v39, &v43, 1uLL);
              *&v33 = 0;
              v34 = *(&v39 + 1);
              *a3 = v39;
              *(a3 + 8) = v34;
              v39 = v33;
              v40 = v33;
              *(a3 + 16) = v33;
              *(a3 + 32) = 1;
              WGSL::FailedCheck::~FailedCheck(&v39, v35);
              v37 = v43;
              v43 = 0;
              if (v37)
              {
                if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v37, v36);
                }
              }

              return;
            }

LABEL_75:
            v25 = *(v3 + 1);
            if (v25)
            {
              atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
              v39 = *(v3 + 1);
              v31 = WTF::fastMalloc(0x18);
              atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
            }

            else
            {
              v39 = *(v3 + 1);
              v31 = WTF::fastMalloc(0x18);
            }

            *v31 = v25;
            *(v31 + 8) = v39;
            *a3 = v31;
            *(a3 + 8) = 0x100000001;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
            *(a3 + 32) = 1;
            if (v25)
            {
              goto LABEL_78;
            }

            goto LABEL_80;
          }

          WGSL::AttributeValidator::validateStructIO(v3, *(v7 + 8), *(*v21 + 72), *(*v21 + 84), 1, &v42, &v41);
          if (*(v3 + 32) == 1)
          {
            goto LABEL_85;
          }

          goto LABEL_61;
        }

        WGSL::AttributeValidator::validateLocationIO(v3, (v20 + 8), v21, *(v7 + 8), v22, &v41);
        if (*(v3 + 32) != 1)
        {
LABEL_61:
          if (*(v7 + 8) == 1)
          {
            if (!v42)
            {
              goto LABEL_82;
            }

            v27 = *(v42 - 8);
            LODWORD(v28) = v27 & 0xBDFAF04C;
            v29 = *(v42 + (v27 & 0xBDFAF04C));
            if (v29 != 7)
            {
              v30 = 1;
              while (v29 != 255)
              {
                v28 = (v28 + v30) & v27;
                v29 = *(v42 + v28);
                ++v30;
                if (v29 == 7)
                {
                  goto LABEL_67;
                }
              }

LABEL_82:
              WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v20 + 8), "a vertex shader must include the 'position' builtin in its return type", 0x47uLL);
              if (*(v3 + 32) != 1)
              {
                goto LABEL_91;
              }

              goto LABEL_75;
            }
          }

LABEL_67:
          v23 = 0;
          v24 = v41;
          if (!v41)
          {
            goto LABEL_69;
          }

LABEL_68:
          WTF::fastFree((v24 - 16), a2);
          goto LABEL_69;
        }
      }

      else
      {
        if (*(v7 + 8) != 1)
        {
          v23 = 3;
          v24 = v41;
          if (!v41)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v8 + 8), "a vertex shader must include the 'position' builtin in its return type", 0x47uLL);
      }

LABEL_85:
      WGSL::AttributeValidator::validateIO(void)::$_0::operator()(a3, v3);
      goto LABEL_80;
    }

    v10 = *(v8 + 56);
    v11 = &v10[v9];
    while (1)
    {
      v12 = *v10;
      v13 = *(*(*v10 + 64) + 24);
      v14 = *(*v10 + 89);
      if ((v14 & 0x100) != 0)
      {
        WGSL::AttributeValidator::validateBuiltinIO(v3, (v12 + 8), *(*(*v10 + 64) + 24), *(v7 + 8), v14, 0, &v42);
        if (*(v3 + 32) == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_35;
      }

      v15 = *(v12 + 96);
      if ((v15 & 0x100000000) == 0)
      {
        break;
      }

      if (*(v7 + 8) == 4)
      {
        WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v12 + 8), "@location cannot be used by compute shaders", 0x2CuLL);
        if (*(v3 + 32) == 1)
        {
          goto LABEL_56;
        }
      }

      else if (v13)
      {
        v16 = *(*(*v10 + 64) + 24);
        while (v16[48] == 10)
        {
          v16 = *(v16 + 1);
          if (!v16)
          {
            goto LABEL_23;
          }
        }

        if (!v16[48] && *v16 < 6u)
        {
          goto LABEL_30;
        }

LABEL_23:
        if (v13[48] != 1)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        if (!*v13)
        {
          goto LABEL_33;
        }

        while (v17[48] == 10)
        {
          v17 = *(v17 + 1);
          if (!v17)
          {
            goto LABEL_33;
          }
        }

        if (v17[48] || *v17 >= 6u)
        {
          goto LABEL_33;
        }

LABEL_30:
        v43 = v15;
        WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v41, &v43, &v39);
        if (v40)
        {
          goto LABEL_34;
        }

        WGSL::AttributeValidator::error<WTF::ASCIILiteral,unsigned int &,WTF::ASCIILiteral>(v3, (v12 + 8), "@location(", 11, v15, ") appears multiple times", 25);
        if (*(v3 + 32) == 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
LABEL_33:
        LOBYTE(v39) = 39;
        WGSL::AttributeValidator::error<WTF::ASCIILiteral,WGSL::Type const&,char>(v3, (v12 + 8), "cannot apply @location to declaration of type '", 48, v13, &v39);
LABEL_34:
        if (*(v3 + 32) == 1)
        {
          goto LABEL_56;
        }
      }

LABEL_35:
      if (++v10 == v11)
      {
        goto LABEL_39;
      }
    }

    if (v13 && v13[48] == 4)
    {
      WGSL::AttributeValidator::validateStructIO(v3, *(v7 + 8), *(*v13 + 72), *(*v13 + 84), 0, &v42, &v41);
      if (*(v3 + 32) == 1)
      {
        goto LABEL_56;
      }

      goto LABEL_35;
    }

    WGSL::AttributeValidator::error<WTF::ASCIILiteral>(v3, (v12 + 8), "missing entry point IO attribute on parameter", 0x2EuLL);
    if (*(v3 + 32) != 1)
    {
      goto LABEL_91;
    }

LABEL_56:
    v25 = *(v3 + 1);
    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v39 = *(v3 + 1);
    v26 = WTF::fastMalloc(0x18);
    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      *v26 = v25;
      *(v26 + 8) = v39;
      *a3 = v26;
      *(a3 + 8) = 0x100000001;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
LABEL_78:
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, a2);
      }
    }

    else
    {
      *v26 = 0;
      *(v26 + 8) = v39;
      *a3 = v26;
      *(a3 + 8) = 0x100000001;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
    }

LABEL_80:
    v23 = 1;
    v24 = v41;
    if (v41)
    {
      goto LABEL_68;
    }

LABEL_69:
    if (v42)
    {
      WTF::fastFree((v42 - 16), a2);
    }

    if (v23 != 3 && v23)
    {
      break;
    }

    v7 += 3;
    if (v7 == v38)
    {
      goto LABEL_88;
    }
  }
}

void WGSL::AttributeValidator::validateBuiltinIO(uint64_t a1, __int128 *a2, _BYTE *a3, int a4, int a5, int a6, uint64_t *a7)
{
  if (a5 <= 5)
  {
    if (a5 <= 2)
    {
      if (!a5)
      {
        v24 = *(*(a1 + 48) + 168);
        if (v24 != a3)
        {
          v113 = 39;
          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type const&,char>(a1, a2, "store type of @builtin(", 24, "frag_depth", 11, ") must be '", 12, v24, &v113);
          return;
        }

        if (a4 != 2 || a6 != 1)
        {
          if (a4 == 1)
          {
            v25 = "vertex";
            v26 = 7;
          }

          else if (a4 == 2)
          {
            v25 = "fragment";
            v26 = 9;
          }

          else
          {
            v25 = "compute";
            v26 = 8;
          }

          v80 = "output";
          if (!a6)
          {
            v80 = "input";
          }

          v81 = 6;
          if (a6)
          {
            v81 = 7;
          }

          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(a1, a2, "@builtin(", 10, "frag_depth", 11, ") cannot be used for ", 22, v25, v26, " shader ", 9, v80, v81);
          return;
        }

        goto LABEL_108;
      }

      if (a5 != 1)
      {
        if (a5 == 2)
        {
          if (!a3 || a3[48] != 1 || a3[8] != 3 || *a3 != *(*(a1 + 48) + 160))
          {
            WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(a1, a2, "store type of @builtin(", 24, "global_invocation_id", 21, ") must be '", 12, "vec3<u32>", 10, 39);
            return;
          }

          if (a4 != 4 || a6)
          {
            if (a4 == 1)
            {
              v11 = "vertex";
              v12 = 7;
            }

            else if (a4 == 2)
            {
              v11 = "fragment";
              v12 = 9;
            }

            else
            {
              v11 = "compute";
              v12 = 8;
            }

            v90 = "output";
            if (!a6)
            {
              v90 = "input";
            }

            v91 = 6;
            if (a6)
            {
              v91 = 7;
            }

            WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(a1, a2, "@builtin(", 10, "global_invocation_id", 21, ") cannot be used for ", 22, v11, v12, " shader ", 9, v90, v91);
            return;
          }
        }

        goto LABEL_108;
      }

      v32 = *(*(a1 + 48) + 144);
      if (v32 != a3)
      {
        v112 = 39;
        v101 = v32;
        v103 = &v112;
        v74 = "front_facing";
        goto LABEL_150;
      }

      if (a4 != 2 || a6)
      {
        if (a4 == 1)
        {
          v33 = "vertex";
          v34 = 7;
        }

        else if (a4 == 2)
        {
          v33 = "fragment";
          v34 = 9;
        }

        else
        {
          v33 = "compute";
          v34 = 8;
        }

        v86 = "output";
        if (!a6)
        {
          v86 = "input";
        }

        v87 = 6;
        if (a6)
        {
          v87 = 7;
        }

        v102 = v33;
        v104 = v34;
        v105 = v86;
        v106 = v87;
        v77 = "front_facing";
        goto LABEL_222;
      }

      goto LABEL_108;
    }

    if (a5 != 3)
    {
      if (a5 == 4)
      {
        if (!a3 || a3[48] != 1 || a3[8] != 3 || *a3 != *(*(a1 + 48) + 160))
        {
          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(a1, a2, "store type of @builtin(", 24, "local_invocation_id", 20, ") must be '", 12, "vec3<u32>", 10, 39);
          return;
        }

        if (a4 != 4 || a6)
        {
          if (a4 == 1)
          {
            v37 = "vertex";
            v38 = 7;
          }

          else if (a4 == 2)
          {
            v37 = "fragment";
            v38 = 9;
          }

          else
          {
            v37 = "compute";
            v38 = 8;
          }

          v97 = "output";
          if (!a6)
          {
            v97 = "input";
          }

          v98 = 6;
          if (a6)
          {
            v98 = 7;
          }

          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(a1, a2, "@builtin(", 10, "local_invocation_id", 20, ") cannot be used for ", 22, v37, v38, " shader ", 9, v97, v98);
          return;
        }
      }

      else
      {
        v16 = *(*(a1 + 48) + 160);
        if (v16 != a3)
        {
          v110 = 39;
          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type const&,char>(a1, a2, "store type of @builtin(", 24, "local_invocation_index", 23, ") must be '", 12, v16, &v110);
          return;
        }

        if (a4 != 4 || a6)
        {
          if (a4 == 1)
          {
            v17 = "vertex";
            v18 = 7;
          }

          else if (a4 == 2)
          {
            v17 = "fragment";
            v18 = 9;
          }

          else
          {
            v17 = "compute";
            v18 = 8;
          }

          v78 = "output";
          if (!a6)
          {
            v78 = "input";
          }

          v79 = 6;
          if (a6)
          {
            v79 = 7;
          }

          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(a1, a2, "@builtin(", 10, "local_invocation_index", 23, ") cannot be used for ", 22, v17, v18, " shader ", 9, v78, v79);
          return;
        }
      }

      goto LABEL_108;
    }

    v29 = *(*(a1 + 48) + 160);
    if (v29 != a3)
    {
      v111 = 39;
      WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type const&,char>(a1, a2, "store type of @builtin(", 24, "instance_index", 15, ") must be '", 12, v29, &v111);
      return;
    }

    if (a4 == 1 && !a6)
    {
      goto LABEL_108;
    }

    if (a4 == 1)
    {
      v30 = "vertex";
      v31 = 7;
    }

    else if (a4 == 2)
    {
      v30 = "fragment";
      v31 = 9;
    }

    else
    {
      v30 = "compute";
      v31 = 8;
    }

    v82 = "output";
    if (!a6)
    {
      v82 = "input";
    }

    v83 = 6;
    if (a6)
    {
      v83 = 7;
    }

    v102 = v30;
    v104 = v31;
    v105 = v82;
    v106 = v83;
    v77 = "instance_index";
LABEL_215:
    v94 = 15;
LABEL_223:
    WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(a1, a2, "@builtin(", 10, v77, v94, ") cannot be used for ", 22, v102, v104, " shader ", 9, v105, v106);
    return;
  }

  if (a5 > 8)
  {
    if (a5 > 10)
    {
      if (a5 == 11)
      {
        if (!a3 || a3[48] != 1 || a3[8] != 3 || *a3 != *(*(a1 + 48) + 160))
        {
          WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(a1, a2, "store type of @builtin(", 24, "workgroup_id", 13, ") must be '", 12, "vec3<u32>", 10, 39);
          return;
        }

        if (a4 != 4 || a6)
        {
          if (a4 == 1)
          {
            v19 = "vertex";
            v20 = 7;
          }

          else if (a4 == 2)
          {
            v19 = "fragment";
            v20 = 9;
          }

          else
          {
            v19 = "compute";
            v20 = 8;
          }

          v95 = "output";
          if (!a6)
          {
            v95 = "input";
          }

          v96 = 6;
          if (a6)
          {
            v96 = 7;
          }

          v102 = v19;
          v104 = v20;
          v105 = v95;
          v106 = v96;
          v77 = "workgroup_id";
          goto LABEL_222;
        }
      }

      else if (a5 == 254 || a5 == 255)
      {
        __break(0xC471u);
        JUMPOUT(0x225702270);
      }

      goto LABEL_108;
    }

    if (a5 == 9)
    {
      v21 = *(*(a1 + 48) + 160);
      if (v21 != a3)
      {
        v107 = 39;
        WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type const&,char>(a1, a2, "store type of @builtin(", 24, "sample_mask", 12, ") must be '", 12, v21, &v107);
        return;
      }

      if (a4 != 2)
      {
        if (a4 == 1)
        {
          v22 = "vertex";
          v23 = 7;
        }

        else
        {
          v22 = "compute";
          v23 = 8;
        }

        v88 = "output";
        if (!a6)
        {
          v88 = "input";
        }

        v89 = 6;
        if (a6)
        {
          v89 = 7;
        }

        WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(a1, a2, "@builtin(", 10, "sample_mask", 12, ") cannot be used for ", 22, v22, v23, " shader ", 9, v88, v89);
        return;
      }

      goto LABEL_108;
    }

    v8 = *(*(a1 + 48) + 160);
    if (v8 == a3)
    {
      if (a4 != 1 || a6)
      {
        if (a4 == 1)
        {
          v9 = "vertex";
          v10 = 7;
        }

        else if (a4 == 2)
        {
          v9 = "fragment";
          v10 = 9;
        }

        else
        {
          v9 = "compute";
          v10 = 8;
        }

        v84 = "output";
        if (!a6)
        {
          v84 = "input";
        }

        v85 = 6;
        if (a6)
        {
          v85 = 7;
        }

        v102 = v9;
        v104 = v10;
        v105 = v84;
        v106 = v85;
        v77 = "vertex_index";
LABEL_222:
        v94 = 13;
        goto LABEL_223;
      }

      goto LABEL_108;
    }

    v108 = 39;
    v101 = v8;
    v103 = &v108;
    v74 = "vertex_index";
LABEL_150:
    WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type const&,char>(a1, a2, "store type of @builtin(", 24, v74, 13, ") must be '", 12, v101, v103);
    return;
  }

  if (a5 == 6)
  {
    if (!a3 || a3[48] != 1 || a3[8] != 3 || *a3 != *(*(a1 + 48) + 160))
    {
      WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(a1, a2, "store type of @builtin(", 24, "num_workgroups", 15, ") must be '", 12, "vec3<u32>", 10, 39);
      return;
    }

    if (a4 == 4 && !a6)
    {
      goto LABEL_108;
    }

    if (a4 == 1)
    {
      v27 = "vertex";
      v28 = 7;
    }

    else if (a4 == 2)
    {
      v27 = "fragment";
      v28 = 9;
    }

    else
    {
      v27 = "compute";
      v28 = 8;
    }

    v92 = "output";
    if (!a6)
    {
      v92 = "input";
    }

    v93 = 6;
    if (a6)
    {
      v93 = 7;
    }

    v102 = v27;
    v104 = v28;
    v105 = v92;
    v106 = v93;
    v77 = "num_workgroups";
    goto LABEL_215;
  }

  if (a5 == 7)
  {
    if (!a3 || a3[48] != 1 || a3[8] != 4 || *a3 != *(*(a1 + 48) + 168))
    {
      WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(a1, a2, "store type of @builtin(", 24, "position", 9, ") must be '", 12, "vec4<f32>", 10, 39);
      return;
    }

    if ((a4 != 1 || a6 != 1) && (a4 != 2 || a6))
    {
      if (a4 == 1)
      {
        v35 = "vertex";
        v36 = 7;
      }

      else if (a4 == 2)
      {
        v35 = "fragment";
        v36 = 9;
      }

      else
      {
        v35 = "compute";
        v36 = 8;
      }

      v99 = "output";
      if (!a6)
      {
        v99 = "input";
      }

      v100 = 6;
      if (a6)
      {
        v100 = 7;
      }

      WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(a1, a2, "@builtin(", 10, "position", 9, ") cannot be used for ", 22, v35, v36, " shader ", 9, v99, v100);
      return;
    }

    goto LABEL_108;
  }

  v13 = *(*(a1 + 48) + 160);
  if (v13 != a3)
  {
    v109 = 39;
    v101 = v13;
    v103 = &v109;
    v74 = "sample_index";
    goto LABEL_150;
  }

  if (a4 != 2 || a6)
  {
    if (a4 == 1)
    {
      v14 = "vertex";
      v15 = 7;
    }

    else if (a4 == 2)
    {
      v14 = "fragment";
      v15 = 9;
    }

    else
    {
      v14 = "compute";
      v15 = 8;
    }

    v75 = "output";
    if (!a6)
    {
      v75 = "input";
    }

    v76 = 6;
    if (a6)
    {
      v76 = 7;
    }

    v102 = v14;
    v104 = v15;
    v105 = v75;
    v106 = v76;
    v77 = "sample_index";
    goto LABEL_222;
  }

LABEL_108:
  v39 = *a7;
  if (!*a7)
  {
    v40 = a1;
    v41 = a2;
    v42 = a5;
    v43 = WTF::fastMalloc(0x18);
    a5 = v42;
    a2 = v41;
    v44 = v43;
    a1 = v40;
    *v44 = xmmword_225881CF0;
    *(v44 + 16) = -1;
    v39 = v44 + 16;
    *a7 = v44 + 16;
  }

  v45 = *(v39 - 8);
  v46 = 9 * ((~(a5 << 15) + a5) ^ ((~(a5 << 15) + a5) >> 10));
  v47 = (v46 ^ (v46 >> 6)) + ~((v46 ^ (v46 >> 6)) << 11);
  v48 = v45 & (v47 ^ HIWORD(v47));
  v49 = (v39 + v48);
  v50 = *(v39 + v48);
  if (v50 == 255)
  {
LABEL_118:
    v53 = *(v39 - 16);
    v51 = v49;
  }

  else
  {
    v51 = 0;
    v52 = 1;
    do
    {
      if (a5 == v50)
      {
        v70 = a1;
        v71 = a2;
        v73 = WGSL::toString(a5);

        WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(v70, v71, "@builtin(", 10, v73, v72, ") appears multiple times as pipeline input", 43);
        return;
      }

      if (v50 == 254)
      {
        v51 = v49;
      }

      v48 = (v48 + v52) & v45;
      v49 = (v39 + v48);
      v50 = *(v39 + v48);
      ++v52;
    }

    while (v50 != 255);
    if (!v51)
    {
      goto LABEL_118;
    }

    *v51 = -1;
    v53 = *(v39 - 16) - 1;
    *(v39 - 16) = v53;
  }

  *v51 = a5;
  v54 = *(v39 - 12) + 1;
  *(v39 - 12) = v54;
  v55 = (v54 + v53);
  v56 = *(v39 - 4);
  if (v56 > 0x400)
  {
    if (v56 > 2 * v55)
    {
      return;
    }
  }

  else if (3 * v56 > 4 * v55)
  {
    return;
  }

  if (v56)
  {
    v57 = (v56 << (6 * v54 >= (2 * v56)));
  }

  else
  {
    v57 = 8;
  }

  v58 = WTF::fastMalloc((v57 + 16));
  v60 = v58;
  v61 = v58 + 16;
  if (v57)
  {
    memset((v58 + 16), 255, v57);
  }

  *a7 = v61;
  v62 = (v57 - 1);
  v60[2] = v62;
  v60[3] = v57;
  *v60 = 0;
  v60[1] = v54;
  if (v56 && v61)
  {
    for (i = 0; i != v56; ++i)
    {
      v64 = *(v39 + i);
      if (v64 <= 0xFD)
      {
        v65 = 0;
        v66 = 9 * ((~(v64 << 15) + v64) ^ ((~(v64 << 15) + v64) >> 10));
        v67 = ((v66 ^ (v66 >> 6)) + ~((v66 ^ (v66 >> 6)) << 11)) ^ (((v66 ^ (v66 >> 6)) + ~((v66 ^ (v66 >> 6)) << 11)) >> 16);
        do
        {
          v68 = v67 & v62;
          v69 = *(v61 + (v67 & v62));
          v67 = ++v65 + (v67 & v62);
        }

        while (v69 != 255);
        *(v61 + v68) = v64;
      }
    }
  }

  WTF::fastFree((v39 - 16), v59);
}

uint64_t WGSL::AttributeValidator::validateIO(void)::$_0::operator()(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    v2 = result;
    v3 = *(a2 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    v5 = *(a2 + 16);
    result = WTF::fastMalloc(0x18);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      *result = v3;
      *(result + 8) = v5;
      *v2 = result;
      *(v2 + 8) = 0x100000001;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 1;
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(v3, v4);
      }
    }

    else
    {
      *result = 0;
      *(result + 8) = v5;
      *v2 = result;
      *(v2 + 8) = 0x100000001;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void WGSL::AttributeValidator::validateLocationIO(uint64_t a1, __int128 *a2, uint64_t a3, int a4, unsigned int a5, uint64_t *a6)
{
  if (a4 == 4)
  {

    WGSL::AttributeValidator::error<WTF::ASCIILiteral>(a1, a2, "@location cannot be used by compute shaders", 0x2CuLL);
  }

  else
  {
    if (a3)
    {
      v6 = a3;
      while (v6[48] == 10)
      {
        v6 = *(v6 + 1);
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      if (!v6[48] && *v6 < 6u)
      {
LABEL_16:
        v11 = a5;
        WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a6, &v11, v12);
        if ((v12[16] & 1) == 0)
        {
          WGSL::AttributeValidator::error<WTF::ASCIILiteral,unsigned int &,WTF::ASCIILiteral>(a1, a2, "@location(", 11, a5, ") appears multiple times", 25);
        }

        return;
      }

LABEL_9:
      if (*(a3 + 48) == 1)
      {
        v7 = *a3;
        if (*a3)
        {
          while (v7[48] == 10)
          {
            v7 = *(v7 + 1);
            if (!v7)
            {
              goto LABEL_18;
            }
          }

          if (!v7[48] && *v7 < 6u)
          {
            goto LABEL_16;
          }
        }
      }
    }

LABEL_18:
    v12[0] = 39;
    WGSL::AttributeValidator::error<WTF::ASCIILiteral,WGSL::Type const&,char>(a1, a2, "cannot apply @location to declaration of type '", 48, a3, v12);
  }
}

void WGSL::AttributeValidator::validateStructIO(uint64_t a1, int a2, uint64_t *a3, unsigned int a4, int a5, uint64_t *a6, uint64_t *a7)
{
  if (!a4)
  {
    return;
  }

  v10 = a3;
  v13 = &a3[a4];
  while (1)
  {
    v14 = *v10;
    v15 = *(*(*v10 + 104) + 24);
    v16 = *(*v10 + 140);
    if ((v16 & 0x100) != 0)
    {
      WGSL::AttributeValidator::validateBuiltinIO(a1, (v14 + 8), v15, a2, v16, a5, a6);
      if (*(a1 + 32))
      {
        return;
      }

      goto LABEL_11;
    }

    v17 = *(v14 + 144);
    if ((v17 & 0x100000000) != 0)
    {
      WGSL::AttributeValidator::validateLocationIO(a1, (v14 + 8), v15, a2, v17, a7);
      if (*(a1 + 32))
      {
        return;
      }

      goto LABEL_11;
    }

    if (v15 && v15[48] == 4)
    {
      break;
    }

    WGSL::AttributeValidator::error<WTF::ASCIILiteral>(a1, (v14 + 8), "missing entry point IO attribute", 0x21uLL);
LABEL_11:
    if (++v10 == v13)
    {
      return;
    }
  }

  WGSL::AttributeValidator::error<WTF::ASCIILiteral>(a1, (v14 + 8), "nested structures cannot be used for entry point IO", 0x34uLL);
}

void WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WGSL::Type const&,char>(uint64_t a1, __int128 *a2, int8x16_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, char *a10)
{
  v144 = *MEMORY[0x277D85DE8];
  v139[0] = 0;
  v140 = -1;
  v17 = *(a9 + 48);
  if (v17 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v17, &v141, v139, a9);
    v140 = *(a9 + 48);
  }

  if (a4)
  {
    v18 = a4 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 >> 31)
  {
    __break(0xC471u);
    goto LABEL_201;
  }

  __src = a7;
  if (a6)
  {
    v19 = a6 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22570301CLL);
  }

  if (a8)
  {
    v20 = a8 - 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 >> 31)
  {
    __break(0xC471u);
    goto LABEL_199;
  }

  v135 = *a10;
  WTF::StringPrintStream::StringPrintStream(&v141);
  WGSL::Type::dump(v139, &v141);
  WTF::StringPrintStream::toString(&v138, &v141);
  WTF::StringPrintStream::~StringPrintStream(&v141);
  v23 = v138;
  v137 = a1;
  if (v138)
  {
    v24 = *(v138 + 1);
    if (v24 < 0)
    {
      goto LABEL_25;
    }

    v21 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v25 = 1;
    if (v21)
    {
LABEL_25:
      v29 = 0;
      goto LABEL_26;
    }
  }

  v21 = __OFADD__(v20, v25);
  v26 = v20 + v25;
  if (v21)
  {
    goto LABEL_25;
  }

  v21 = __OFADD__(v19, v26);
  v27 = v19 + v26;
  if (v21)
  {
    goto LABEL_25;
  }

  v28 = (v18 + v27);
  if (__OFADD__(v18, v27))
  {
    goto LABEL_25;
  }

  if (!v138 || (v34 = *(v138 + 4), atomic_fetch_add_explicit(v138, 2u, memory_order_relaxed), (v34 & 4) != 0))
  {
    if (v28)
    {
      if ((v28 & 0x80000000) != 0)
      {
        v29 = 0;
        if (!v23)
        {
          goto LABEL_26;
        }

        goto LABEL_159;
      }

      v133 = v28;
      WTF::tryFastCompactMalloc((v28 + 20));
      v29 = v141;
      if (v141)
      {
        v35 = v141 + 20;
        *v141 = 2;
        *(v29 + 1) = v133;
        *(v29 + 1) = v29 + 20;
        *(v29 + 4) = 4;
        v36 = v133;
        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        }

        if (v18)
        {
          if (v18 == 1)
          {
            *v35 = a3->i8[0];
          }

          else
          {
            memcpy(v29 + 20, a3, v18);
            v35 = v29 + 20;
            v36 = v133;
          }
        }

        v77 = v36 >= v18;
        v78 = v36 - v18;
        if (!v77)
        {
          goto LABEL_199;
        }

        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        }

        v79 = &v35[v18];
        if (v19)
        {
          if (v19 == 1)
          {
            *v79 = *a5;
          }

          else
          {
            v80 = a5;
            v81 = v78;
            memcpy(&v35[v18], v80, v19);
            v78 = v81;
          }
        }

        v82 = v78 - v19;
        if (v78 < v19)
        {
          goto LABEL_199;
        }

        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        }

        v83 = &v79[v19];
        if (v20)
        {
          if (v20 == 1)
          {
            *v83 = *__src;
          }

          else
          {
            memcpy(v83, __src, v20);
          }
        }

        if (v82 < v20)
        {
          goto LABEL_199;
        }

        v84 = &v83[v20];
        if (!v23)
        {
          if (v82 != v20)
          {
            *v84 = v135;
            goto LABEL_26;
          }

          goto LABEL_199;
        }

        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        v22 = *(v23 + 1);
        v85 = *(v23 + 1);
        if ((*(v23 + 16) & 4) != 0)
        {
          if (v85)
          {
            if (v85 == 1)
            {
              *v84 = v22->i8[0];
            }

            else
            {
              memcpy(v84, v22, v85);
            }
          }
        }

        else
        {
          v86 = &v84[v85];
          if (v85 < 0x10)
          {
            v87 = v84;
          }

          else
          {
            v87 = v84;
            do
            {
              v88 = vld2q_s8(v22->i8);
              v22 += 2;
              *v87++ = v88;
            }

            while (v87 != &v84[v85 & 0xFFFFFFF0]);
          }

          if (v87 != v86)
          {
            v89 = v29 + a4 + a8 + a6 + v85;
            v90 = v89 - v87 - (a8 != 0) - (a6 != 0) - (a4 != 0) + 20;
            if (v90 < 4)
            {
              goto LABEL_145;
            }

            if (a4)
            {
              v91 = (v87 + 1);
            }

            else
            {
              v91 = v87;
            }

            if (a6)
            {
              v91 = (v91 + 1);
            }

            if (a8)
            {
              v91 = (v91 + 1);
              v92 = (v87 + 1);
            }

            else
            {
              v92 = v87;
            }

            if (a6)
            {
              v92 = (v92 + 1);
            }

            if (a4)
            {
              v92 = (v92 + 1);
            }

            if (v87 < (&v22[2].u64[1] + 2 * v89 + -2 * v92) && v22 < (v87 + v89 - v91 + 20))
            {
LABEL_145:
              v93 = v87;
              v94 = v22;
              goto LABEL_146;
            }

            if (v90 >= 0x20)
            {
              v97 = v90 & 0xFFFFFFFFFFFFFFE0;
              v102 = v22 + 2;
              v103 = (v87 + 1);
              v104 = v90 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v106 = v102[-2];
                v105 = v102[-1];
                v108 = *v102;
                v107 = v102[1];
                v102 += 4;
                v103[-1] = vuzp1q_s8(v106, v105);
                *v103 = vuzp1q_s8(v108, v107);
                v103 += 2;
                v104 -= 32;
              }

              while (v104);
              if (v90 == v97)
              {
                goto LABEL_149;
              }

              if ((v90 & 0x1C) == 0)
              {
                v94 = (v22 + 2 * v97);
                v93 = (v87 + v97);
                do
                {
LABEL_146:
                  v95 = v94->i8[0];
                  v94 = (v94 + 2);
                  *v93 = v95;
                  v93 = (v93 + 1);
                }

                while (v93 != v86);
                goto LABEL_149;
              }
            }

            else
            {
              v97 = 0;
            }

            v93 = (v87 + (v90 & 0xFFFFFFFFFFFFFFFCLL));
            v94 = (v22 + 2 * (v90 & 0xFFFFFFFFFFFFFFFCLL));
            v109 = (v22 + 2 * v97);
            v110 = (v87 + v97);
            v111 = v97 - (v90 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v112 = *v109++;
              *v110++ = vuzp1_s8(v112, v112).u32[0];
              v111 += 4;
            }

            while (v111);
            if (v90 != (v90 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_146;
            }
          }
        }

LABEL_149:
        v96 = *(v23 + 1);
        if (v82 - v20 <= v96)
        {
          goto LABEL_199;
        }

        v84[v96] = v135;
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v22);
          if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_152;
          }
        }

        else if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
LABEL_152:
          if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            goto LABEL_153;
          }

          goto LABEL_157;
        }

        WTF::StringImpl::destroy(v23, v22);
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          goto LABEL_153;
        }

        goto LABEL_157;
      }
    }

    else
    {
      v29 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_159;
  }

  if (!v28)
  {
    v29 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_159;
  }

  if (v28 > 0x7FFFFFEF)
  {
    v29 = 0;
    goto LABEL_159;
  }

  v37 = v28;
  WTF::tryFastCompactMalloc((2 * v28 + 20));
  v29 = v141;
  if (v141)
  {
    v38 = v141 + 20;
    *v141 = 2;
    *(v29 + 1) = v37;
    *(v29 + 1) = v29 + 20;
    *(v29 + 4) = 0;
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    v39 = v29 + 2 * v18 + 20;
    if (v18 >= 0x40)
    {
      v40 = &v38[2 * (v18 & 0x7FFFFFC0)];
      v41 = 0uLL;
      do
      {
        v145.val[0] = *a3;
        v42 = a3[1];
        v147.val[0] = a3[2];
        v43 = a3[3];
        a3 += 4;
        v44 = v43;
        v147.val[1] = 0uLL;
        v149.val[0] = v42;
        v145.val[1] = 0uLL;
        v45 = v38;
        vst2q_s8(v45, v145);
        v45 += 32;
        v149.val[1] = 0uLL;
        vst2q_s8(v45, v149);
        v46 = v38 + 64;
        vst2q_s8(v46, v147);
        v47 = v38 + 96;
        vst2q_s8(v47, *(&v41 - 1));
        v38 += 128;
      }

      while (v38 != v40);
      v38 = v40;
    }

    if (v38 != v39)
    {
      v48 = (v29 + 2 * a4) - v38;
      v49 = -2;
      if (a4)
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
        goto LABEL_72;
      }

      if (!a4)
      {
        v49 = 0;
      }

      v52 = v48 + v49 + 18;
      if (v38 < &a3->i8[(v52 >> 1) + 1] && a3 < &v38[(v52 & 0xFFFFFFFFFFFFFFFELL) + 2])
      {
LABEL_72:
        v53 = a3;
        v54 = v38;
        goto LABEL_73;
      }

      v98 = (v51 >> 1) + 1;
      if (v51 >= 0x3E)
      {
        v99 = v98 & 0xFFFFFFFFFFFFFFE0;
        v113 = (v38 + 32);
        v114 = &a3[1];
        v115 = v98 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v116 = *v114[-2].i8;
          v117 = vmovl_u8(*v114);
          v118 = vmovl_high_u8(*v114->i8);
          v113[-2] = vmovl_u8(*v116.i8);
          v113[-1] = vmovl_high_u8(v116);
          *v113 = v117;
          v113[1] = v118;
          v113 += 4;
          v114 += 4;
          v115 -= 32;
        }

        while (v115);
        if (v98 == v99)
        {
          goto LABEL_74;
        }

        if ((v98 & 0x18) == 0)
        {
          v54 = &v38[2 * v99];
          v53 = (a3 + v99);
          do
          {
LABEL_73:
            v55 = v53->u8[0];
            v53 = (v53 + 1);
            *v54 = v55;
            v54 += 2;
          }

          while (v54 != v39);
          goto LABEL_74;
        }
      }

      else
      {
        v99 = 0;
      }

      v53 = (a3 + (v98 & 0xFFFFFFFFFFFFFFF8));
      v54 = &v38[2 * (v98 & 0xFFFFFFFFFFFFFFF8)];
      v119 = &v38[2 * v99];
      v120 = &a3->i8[v99];
      v121 = v99 - (v98 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v122 = *v120++;
        *v119++ = vmovl_u8(v122);
        v121 += 8;
      }

      while (v121);
      if (v98 != (v98 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_73;
      }
    }

LABEL_74:
    v56 = v37 - v18;
    if (v37 < v18)
    {
      goto LABEL_199;
    }

    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    v57 = (v39 + 2 * v19);
    if (v19 >= 0x40)
    {
      v58 = v39 + 2 * (v19 & 0x7FFFFFC0);
      v59 = 0uLL;
      do
      {
        v146.val[0] = *a5;
        v60 = *(a5 + 16);
        v148.val[0] = *(a5 + 32);
        v61 = *(a5 + 48);
        a5 += 64;
        v62 = v61;
        v148.val[1] = 0uLL;
        v150.val[0] = v60;
        v146.val[1] = 0uLL;
        v63 = v39;
        vst2q_s8(v63, v146);
        v63 += 32;
        v150.val[1] = 0uLL;
        vst2q_s8(v63, v150);
        v64 = (v39 + 64);
        vst2q_s8(v64, v148);
        v65 = (v39 + 96);
        vst2q_s8(v65, *(&v59 - 1));
        v39 += 128;
      }

      while (v39 != v58);
      v39 = v58;
    }

    if (v39 == v57)
    {
      goto LABEL_96;
    }

    v66 = v29 + 2 * a6 + 2 * a4 - v39;
    v67 = -2;
    if (a4)
    {
      v68 = -2;
    }

    else
    {
      v68 = 0;
    }

    if (a6)
    {
      v69 = -2;
    }

    else
    {
      v69 = 0;
    }

    v70 = &v66[v68 + 18 + v69];
    if (v70 < 0xE)
    {
      goto LABEL_94;
    }

    if (a4)
    {
      v71 = -2;
    }

    else
    {
      v71 = 0;
    }

    if (!a6)
    {
      v67 = 0;
    }

    v72 = &v66[v71 + 18 + v67];
    if (v39 < a5 + (v72 >> 1) + 1 && a5 < (v72 & 0xFFFFFFFFFFFFFFFELL) + v39 + 2)
    {
LABEL_94:
      v73 = a5;
      v74 = v39;
      goto LABEL_95;
    }

    v100 = (v70 >> 1) + 1;
    if (v70 >= 0x3E)
    {
      v101 = v100 & 0xFFFFFFFFFFFFFFE0;
      v123 = (v39 + 32);
      v124 = (a5 + 16);
      v125 = v100 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v126 = *v124[-2].i8;
        v127 = vmovl_u8(*v124);
        v128 = vmovl_high_u8(*v124->i8);
        v123[-2] = vmovl_u8(*v126.i8);
        v123[-1] = vmovl_high_u8(v126);
        *v123 = v127;
        v123[1] = v128;
        v123 += 4;
        v124 += 4;
        v125 -= 32;
      }

      while (v125);
      if (v100 == v101)
      {
        goto LABEL_96;
      }

      if ((v100 & 0x18) == 0)
      {
        v74 = (v39 + 2 * v101);
        v73 = (a5 + v101);
        do
        {
LABEL_95:
          v75 = *v73++;
          *v74 = v75;
          v74 += 2;
        }

        while (v74 != v57);
        goto LABEL_96;
      }
    }

    else
    {
      v101 = 0;
    }

    v73 = (a5 + (v100 & 0xFFFFFFFFFFFFFFF8));
    v74 = (v39 + 2 * (v100 & 0xFFFFFFFFFFFFFFF8));
    v129 = (v39 + 2 * v101);
    v130 = (a5 + v101);
    v131 = v101 - (v100 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v132 = *v130++;
      *v129++ = vmovl_u8(v132);
      v131 += 8;
    }

    while (v131);
    if (v100 != (v100 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_95;
    }

LABEL_96:
    if (v56 >= v19)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      v141 = v23;
      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(v57, v56 - v19, __src, v20, &v141, v135);
      v76 = v141;
      v141 = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v22);
      }

      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
LABEL_153:
        WTF::StringImpl::destroy(v23, v22);
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_159;
        }

LABEL_158:
        WTF::StringImpl::destroy(v23, v22);
        goto LABEL_159;
      }

LABEL_157:
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_159;
      }

      goto LABEL_158;
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(0xC471u);
LABEL_201:
    JUMPOUT(0x225702FFCLL);
  }

LABEL_159:
  if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v22);
  }

LABEL_26:
  v30 = v138;
  v138 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v22);
  }

  if (!v29)
  {
    goto LABEL_200;
  }

  v31 = *a2;
  atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  v142 = v31;
  v141 = v29;
  v143 = 1;
  std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v141, (v137 + 8));
  if (v143 == 1)
  {
    v33 = v141;
    v141 = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v32);
      }
    }
  }

  if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v32);
  }

  if (v140 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v141, v139);
  }
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(uint64_t a1, __int128 *a2, WTF::StringImpl *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a3;
  *&v28 = a4;
  v26[0] = a5;
  v26[1] = a6;
  v25[0] = a7;
  v25[1] = a8;
  v24[0] = a9;
  v24[1] = a10;
  v23[0] = a11;
  v23[1] = a12;
  v22[0] = a13;
  v22[1] = a14;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v27, v26, v25, v24, v23, v22, &v21);
  v17 = v21;
  if (v21)
  {
    v21 = 0;
    v18 = *a2;
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    v28 = v18;
    v27 = v17;
    v29 = 1;
    std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v27, (a1 + 8));
    if (v29 == 1)
    {
      v20 = v27;
      v27 = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }
      }
    }

    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v19);
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6, _BYTE *a7, uint64_t a8, _BYTE *a9, uint64_t a10, char a11)
{
  if (a4)
  {
    v11 = a4 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2257033E0);
  }

  if (a6)
  {
    v12 = a6 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225703400);
  }

  if (a8)
  {
    v13 = a8 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225703420);
  }

  if (a10)
  {
    v14 = a10 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 >> 31)
  {
    __break(0xC471u);
LABEL_61:
    __break(1u);
LABEL_62:
    JUMPOUT(0x2257033C0);
  }

  v15 = v14 + 1;
  if (__OFADD__(v14, 1) || (v16 = __OFADD__(v13, v15), v17 = v13 + v15, v16) || (v16 = __OFADD__(v12, v17), v18 = v12 + v17, v16) || (v19 = (v11 + v18), __OFADD__(v11, v18)))
  {
LABEL_56:
    __break(0xC471u);
    goto LABEL_62;
  }

  if (v19)
  {
    if ((v19 & 0x80000000) == 0)
    {
      WTF::tryFastCompactMalloc((v19 + 20));
      v24 = v39;
      if (v39)
      {
        v37 = a2;
        v25 = a1;
        v26 = v39 + 20;
        *v39 = 2;
        *(v24 + 1) = v19;
        *(v24 + 1) = v24 + 20;
        *(v24 + 4) = 4;
        if (v11)
        {
          if (v11 == 1)
          {
            *v26 = *a3;
          }

          else
          {
            memcpy(v24 + 20, a3, v11);
          }
        }

        v27 = v19 >= v11;
        v28 = v19 - v11;
        if (v27)
        {
          v29 = &v26[v11];
          if (v12)
          {
            if (v12 == 1)
            {
              *v29 = *a5;
            }

            else
            {
              memcpy(v29, a5, v12);
            }
          }

          v27 = v28 >= v12;
          v30 = v28 - v12;
          if (v27)
          {
            v31 = &v29[v12];
            if (v13)
            {
              if (v13 == 1)
              {
                *v31 = *a7;
              }

              else
              {
                memcpy(v31, a7, v13);
              }
            }

            v27 = v30 >= v13;
            v32 = v30 - v13;
            if (v27)
            {
              v33 = &v31[v13];
              if (v14)
              {
                if (v14 == 1)
                {
                  *v33 = *a9;
                }

                else
                {
                  memcpy(v33, a9, v14);
                }
              }

              if (v32 > v14)
              {
                v33[v14] = a11;
                a1 = v25;
                a2 = v37;
                goto LABEL_49;
              }
            }
          }
        }

        goto LABEL_61;
      }
    }

    goto LABEL_56;
  }

  v24 = MEMORY[0x277CD4668];
  atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
LABEL_49:
  v34 = *a2;
  atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  v40 = v34;
  v39 = v24;
  v41 = 1;
  result = std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v39, (a1 + 8));
  if (v41 == 1)
  {
    result = v39;
    v39 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v36);
      }
    }
  }

  if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v24, v36);
  }

  return result;
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(uint64_t a1, __int128 *a2, WTF::StringImpl *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4 - 1;
  if (!a4)
  {
    v8 = 0;
  }

  v19 = a3;
  *&v20 = v8;
  if (v8 >> 31)
  {
    __break(0xC471u);
    goto LABEL_25;
  }

  v9 = a6 - 1;
  if (!a6)
  {
    v9 = 0;
  }

  v23[0] = a5;
  v23[1] = v9;
  if (v9 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22570359CLL);
  }

  v10 = a8 - 1;
  if (!a8)
  {
    v10 = 0;
  }

  v22[0] = a7;
  v22[1] = v10;
  if (v10 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x2257035BCLL);
  }

  WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v19, v23, v22, &v18);
  v13 = v18;
  if (!v18)
  {
    __break(0xC471u);
LABEL_25:
    JUMPOUT(0x22570357CLL);
  }

  v18 = 0;
  v14 = *a2;
  atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  v20 = v14;
  v19 = v13;
  v21 = 1;
  std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v19, (a1 + 8));
  if (v21 == 1)
  {
    v16 = v19;
    v19 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v15);
      }
    }
  }

  if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v15);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

void WGSL::AttributeValidator::error<WTF::ASCIILiteral,WGSL::Type const&,char>(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v29 = -1;
  v11 = *(a5 + 48);
  if (v11 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v11, &v30, v28, a5);
    v29 = *(a5 + 48);
  }

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
    goto LABEL_40;
  }

  v14 = *a6;
  WTF::StringPrintStream::StringPrintStream(&v30);
  WGSL::Type::dump(v28, &v30);
  WTF::StringPrintStream::toString(&v26, &v30);
  WTF::StringPrintStream::~StringPrintStream(&v30);
  v17 = v26;
  if (v26)
  {
    v18 = *(v26 + 1);
    if (v18 < 0)
    {
      v20 = 0;
      v26 = 0;
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
LABEL_25:
        WTF::StringImpl::destroy(v17, v16);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v15 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 1;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  if (__OFADD__(v13, v19))
  {
LABEL_15:
    v20 = 0;
    v26 = 0;
    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (v26)
  {
    v21 = (*(v26 + 4) >> 2) & 1;
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
  }

  else
  {
    v21 = 1;
  }

  v27 = v17;
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>((v13 + v19), v21, a3, v13, &v27, v14, &v30);
  v20 = v30;
  v30 = 0;
  v22 = v27;
  v27 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v16);
  }

  v17 = v26;
  v26 = 0;
  if (v17)
  {
LABEL_24:
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (!v20)
  {
    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x225703838);
  }

  v23 = *a2;
  atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  v31 = v23;
  v30 = v20;
  v32 = 1;
  std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v30, (a1 + 8));
  if (v32 == 1)
  {
    v25 = v30;
    v30 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v24);
      }
    }
  }

  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v24);
  }

  if (v29 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v30, v28);
  }
}

WTF::StringImpl *WGSL::AttributeValidator::error<WTF::ASCIILiteral,unsigned int &,WTF::ASCIILiteral>(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4, unsigned int a5, _BYTE *a6, uint64_t a7)
{
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
    __break(0xC471u);
    JUMPOUT(0x225703A70);
  }

  if (a7)
  {
    v8 = a7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 >> 31;
  if (v8 >> 31)
  {
    __break(0xC471u);
    goto LABEL_40;
  }

  v15 = a5;
  do
  {
    LODWORD(v9) = v9 + 1;
    v16 = v15 > 9;
    v15 /= 0xAu;
  }

  while (v16);
  if (((v9 | v8) & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v17 = __OFADD__(v9, v8);
  v18 = v9 + v8;
  if (v17)
  {
    goto LABEL_37;
  }

  v19 = (v7 + v18);
  if (__OFADD__(v7, v18))
  {
    goto LABEL_37;
  }

  if (!v19)
  {
    v20 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_30;
  }

  if ((v19 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v19 + 20)), (v20 = v29) == 0))
  {
LABEL_37:
    __break(0xC471u);
    goto LABEL_41;
  }

  v21 = v29 + 20;
  *v29 = 2;
  *(v20 + 1) = v19;
  *(v20 + 1) = v20 + 20;
  *(v20 + 4) = 4;
  if (v7)
  {
    if (v7 == 1)
    {
      *v21 = *a3;
    }

    else
    {
      memcpy(v20 + 20, a3, v7);
    }
  }

  v22 = v19 - v7;
  if (v19 < v7)
  {
    goto LABEL_40;
  }

  v23 = &v21[v7];
  LODWORD(v29) = a5;
  WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v29, v23, v22);
  LODWORD(v24) = 0;
  v25 = v29;
  do
  {
    v24 = (v24 + 1);
    v16 = v25 > 9;
    v25 /= 0xAu;
  }

  while (v16);
  if (v22 < v24)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    JUMPOUT(0x225703A50);
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v23[v24] = *a6;
    }

    else
    {
      memcpy(&v23[v24], a6, v8);
    }
  }

LABEL_30:
  v26 = *a2;
  atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  v30 = v26;
  v29 = v20;
  v31 = 1;
  result = std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v29, (a1 + 8));
  if (v31 == 1)
  {
    result = v29;
    v29 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v20, v28);
  }

  return result;
}

void WGSL::AttributeValidator::~AttributeValidator(WGSL::AttributeValidator *this, WTF::StringImpl *a2)
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

uint64_t std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](uint64_t result, WTF::StringImpl **a2)
{
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {
      v2 = *result;
      *result = 0;
      v13 = *(result + 8);
      v3 = *a2;
      *a2 = 0;
      v4 = *result;
      *result = v3;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v5 = result;
        v6 = a2;
        WTF::StringImpl::destroy(v4, a2);
        result = v5;
        a2 = v6;
      }

      *(result + 8) = *(a2 + 1);
      result = *a2;
      *a2 = v2;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = a2;
          result = WTF::StringImpl::destroy(result, a2);
          a2 = v7;
        }
      }

      *(a2 + 1) = v13;
    }
  }

  else if (*(result + 24))
  {
    v8 = *result;
    *result = 0;
    *a2 = v8;
    *(a2 + 1) = *(result + 8);
    *(a2 + 24) = 1;
    if (*(result + 24) == 1)
    {
      v9 = *result;
      *result = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v10 = result;
        WTF::StringImpl::destroy(v9, a2);
        result = v10;
      }

      *(result + 24) = 0;
    }
  }

  else
  {
    v11 = *a2;
    *a2 = 0;
    *result = v11;
    *(result + 8) = *(a2 + 1);
    *(result + 24) = 1;
    if (*(a2 + 24) == 1)
    {
      result = *a2;
      *a2 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v12 = a2;
        result = WTF::StringImpl::destroy(result, a2);
        a2 = v12;
      }

      *(a2 + 24) = 0;
    }
  }

  return result;
}

unint64_t WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  v10 = (result + 2 * a4);
  if (a4 < 0x40)
  {
    v11 = result;
    if (result == v10)
    {
      goto LABEL_12;
    }

LABEL_7:
    v20 = v10 - v11 - 2;
    if (v20 < 0xE || v11 < a3 + (v20 >> 1) + 1 && a3 < (v20 & 0xFFFFFFFFFFFFFFFELL) + v11 + 2)
    {
      v21 = a3;
      v22 = v11;
      goto LABEL_11;
    }

    v40 = (v20 >> 1) + 1;
    if (v20 >= 0x3E)
    {
      v41 = v40 & 0xFFFFFFFFFFFFFFE0;
      v116 = (v11 + 32);
      v117 = (a3 + 16);
      v118 = v40 & 0xFFFFFFFFFFFFFFE0;
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
      if (v40 == v41)
      {
        goto LABEL_12;
      }

      if ((v40 & 0x18) == 0)
      {
        v22 = (v11 + 2 * v41);
        v21 = (a3 + v41);
        goto LABEL_11;
      }
    }

    else
    {
      v41 = 0;
    }

    v21 = (a3 + (v40 & 0xFFFFFFFFFFFFFFF8));
    v22 = (v11 + 2 * (v40 & 0xFFFFFFFFFFFFFFF8));
    v122 = (v11 + 2 * v41);
    v123 = (a3 + v41);
    v124 = v41 - (v40 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v125 = *v123++;
      *v122++ = vmovl_u8(v125);
      v124 += 8;
    }

    while (v124);
    if (v40 == (v40 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_12;
    }

    do
    {
LABEL_11:
      v23 = *v21++;
      *v22++ = v23;
    }

    while (v22 != v10);
    goto LABEL_12;
  }

  v11 = result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
  v12 = 0uLL;
  v13 = result;
  do
  {
    v166.val[0] = *a3;
    v14 = *(a3 + 16);
    v171.val[0] = *(a3 + 32);
    v15 = *(a3 + 48);
    a3 += 64;
    v16 = v15;
    v171.val[1] = 0uLL;
    v176.val[0] = v14;
    v166.val[1] = 0uLL;
    v17 = v13;
    vst2q_s8(v17, v166);
    v17 += 32;
    v176.val[1] = 0uLL;
    vst2q_s8(v17, v176);
    v18 = v13 + 64;
    vst2q_s8(v18, v171);
    v19 = v13 + 96;
    vst2q_s8(v19, *(&v12 - 1));
    v13 += 128;
  }

  while (v13 != v11);
  if (v11 != v10)
  {
    goto LABEL_7;
  }

LABEL_12:
  v24 = a4;
  v25 = a2 - a4;
  if (a2 < a4)
  {
LABEL_143:
    __break(1u);
    return result;
  }

  v26 = (result + 2 * a4);
  if (!a5)
  {
    v29 = 0;
    goto LABEL_40;
  }

  v27 = *(a5 + 8);
  v28 = *(a5 + 4);
  if ((*(a5 + 16) & 4) != 0)
  {
    v30 = &v26[v28];
    if (v28 < 0x40)
    {
      v31 = result + 2 * a4;
      if (v26 == v30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v31 = &v26[v28 & 0xFFFFFFC0];
      v32 = 0uLL;
      v33 = (result + 2 * a4);
      do
      {
        v167.val[0] = *v27;
        v34 = v27[1];
        v172.val[0] = v27[2];
        v35 = v27[3];
        v27 += 4;
        v36 = v35;
        v172.val[1] = 0uLL;
        v177.val[0] = v34;
        v167.val[1] = 0uLL;
        v37 = v33;
        vst2q_s8(v37, v167);
        v37 += 32;
        v177.val[1] = 0uLL;
        vst2q_s8(v37, v177);
        v38 = v33 + 64;
        vst2q_s8(v38, v172);
        v39 = v33 + 96;
        vst2q_s8(v39, *(&v32 - 1));
        v33 += 128;
      }

      while (v33 != v31);
      if (v31 == v30)
      {
        goto LABEL_39;
      }
    }

    v42 = result + 2 * v28 + 2 * a4 - v31 - 2;
    if (v42 < 0xE || (v31 < v27->u64 + (v42 >> 1) + 1 ? (v43 = v27 >= (v42 & 0xFFFFFFFFFFFFFFFELL) + v31 + 2) : (v43 = 1), !v43))
    {
      v46 = v27;
      v47 = v31;
      goto LABEL_36;
    }

    v44 = (v42 >> 1) + 1;
    if (v42 >= 0x3E)
    {
      v45 = v44 & 0xFFFFFFFFFFFFFFE0;
      v146 = (v31 + 32);
      v147 = &v27[1];
      v148 = v44 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v149 = *v147[-2].i8;
        v150 = vmovl_u8(*v147);
        v151 = vmovl_high_u8(*v147->i8);
        v146[-2] = vmovl_u8(*v149.i8);
        v146[-1] = vmovl_high_u8(v149);
        *v146 = v150;
        v146[1] = v151;
        v146 += 4;
        v147 += 4;
        v148 -= 32;
      }

      while (v148);
      if (v44 == v45)
      {
        goto LABEL_39;
      }

      if ((v44 & 0x18) == 0)
      {
        v47 = (v31 + 2 * v45);
        v46 = (v27 + v45);
        goto LABEL_36;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = (v27 + (v44 & 0xFFFFFFFFFFFFFFF8));
    v47 = (v31 + 2 * (v44 & 0xFFFFFFFFFFFFFFF8));
    v152 = (v31 + 2 * v45);
    v153 = &v27->i8[v45];
    v154 = v45 - (v44 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v155 = *v153++;
      *v152++ = vmovl_u8(v155);
      v154 += 8;
    }

    while (v154);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_39;
    }

    do
    {
LABEL_36:
      v48 = v46->u8[0];
      v46 = (v46 + 1);
      *v47++ = v48;
    }

    while (v47 != v30);
    goto LABEL_39;
  }

  if (v28)
  {
    if (v28 == 1)
    {
      *v26 = v27->i16[0];
    }

    else
    {
      v49 = result;
      v50 = a8;
      v51 = a7;
      v52 = a6;
      v53 = a5;
      memcpy((result + 2 * a4), v27, 2 * v28);
      a5 = v53;
      a6 = v52;
      a7 = v51;
      a8 = v50;
      result = v49;
    }
  }

LABEL_39:
  v29 = *(a5 + 4);
  if (v25 < v29)
  {
    goto LABEL_143;
  }

LABEL_40:
  v54 = &v26[v29];
  v55 = &v54[a7];
  if (a7 < 0x40)
  {
    v56 = &v26[v29];
    v65 = v25 - v29;
    if (v54 == v55)
    {
      goto LABEL_56;
    }

LABEL_46:
    v66 = result + 2 * a7 + 2 * v29 + 2 * v24 - v56 - 2;
    if (v66 < 0xE || (v56 < a6 + (v66 >> 1) + 1 ? (v67 = a6 >= (v66 & 0xFFFFFFFFFFFFFFFELL) + v56 + 2) : (v67 = 1), !v67))
    {
      v70 = a6;
      v71 = v56;
      goto LABEL_55;
    }

    v68 = (v66 >> 1) + 1;
    if (v66 >= 0x3E)
    {
      v69 = v68 & 0xFFFFFFFFFFFFFFE0;
      v126 = (v56 + 32);
      v127 = (a6 + 16);
      v128 = v68 & 0xFFFFFFFFFFFFFFE0;
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
      if (v68 == v69)
      {
        goto LABEL_56;
      }

      if ((v68 & 0x18) == 0)
      {
        v71 = (v56 + 2 * v69);
        v70 = (a6 + v69);
        goto LABEL_55;
      }
    }

    else
    {
      v69 = 0;
    }

    v70 = (a6 + (v68 & 0xFFFFFFFFFFFFFFF8));
    v71 = (v56 + 2 * (v68 & 0xFFFFFFFFFFFFFFF8));
    v132 = (v56 + 2 * v69);
    v133 = (a6 + v69);
    v134 = v69 - (v68 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v135 = *v133++;
      *v132++ = vmovl_u8(v135);
      v134 += 8;
    }

    while (v134);
    if (v68 == (v68 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_56;
    }

    do
    {
LABEL_55:
      v72 = *v70++;
      *v71++ = v72;
    }

    while (v71 != v55);
    goto LABEL_56;
  }

  v56 = &v54[a7 & 0x7FFFFFFFFFFFFFC0];
  v57 = 0uLL;
  v58 = &v26[v29];
  do
  {
    v168.val[0] = *a6;
    v59 = *(a6 + 16);
    v173.val[0] = *(a6 + 32);
    v60 = *(a6 + 48);
    a6 += 64;
    v61 = v60;
    v173.val[1] = 0uLL;
    v178.val[0] = v59;
    v168.val[1] = 0uLL;
    v62 = v58;
    vst2q_s8(v62, v168);
    v62 += 32;
    v178.val[1] = 0uLL;
    vst2q_s8(v62, v178);
    v63 = v58 + 64;
    vst2q_s8(v63, v173);
    v64 = v58 + 96;
    vst2q_s8(v64, *(&v57 - 1));
    v58 += 128;
  }

  while (v58 != v56);
  v65 = v25 - v29;
  if (v56 != v55)
  {
    goto LABEL_46;
  }

LABEL_56:
  v73 = a7;
  v74 = v65 - a7;
  if (v65 < a7)
  {
    goto LABEL_143;
  }

  v75 = &v54[a7];
  if (!a8)
  {
    v78 = 0;
    goto LABEL_82;
  }

  v76 = *(a8 + 8);
  v77 = *(a8 + 4);
  if ((*(a8 + 16) & 4) != 0)
  {
    v79 = &v75[2 * v77];
    if (v77 < 0x40)
    {
      v80 = v75;
      if (v75 == v79)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v80 = &v75[2 * (v77 & 0xFFFFFFC0)];
      v81 = 0uLL;
      v82 = v75;
      do
      {
        v169.val[0] = *v76;
        v83 = v76[1];
        v174.val[0] = v76[2];
        v84 = v76[3];
        v76 += 4;
        v85 = v84;
        v174.val[1] = 0uLL;
        v179.val[0] = v83;
        v169.val[1] = 0uLL;
        v86 = v82;
        vst2q_s8(v86, v169);
        v86 += 32;
        v179.val[1] = 0uLL;
        vst2q_s8(v86, v179);
        v87 = v82 + 64;
        vst2q_s8(v87, v174);
        v88 = v82 + 96;
        vst2q_s8(v88, *(&v81 - 1));
        v82 += 128;
      }

      while (v82 != v80);
      if (v80 == v79)
      {
        goto LABEL_81;
      }
    }

    v89 = result + 2 * v29 + 2 * v77 + 2 * v24 + 2 * a7 - v80 - 2;
    if (v89 < 0xE || (v80 < v76->u64 + (v89 >> 1) + 1 ? (v90 = v76 >= (v89 & 0xFFFFFFFFFFFFFFFELL) + v80 + 2) : (v90 = 1), !v90))
    {
      v93 = v76;
      v94 = v80;
      goto LABEL_78;
    }

    v91 = (v89 >> 1) + 1;
    if (v89 >= 0x3E)
    {
      v92 = v91 & 0xFFFFFFFFFFFFFFE0;
      v156 = (v80 + 32);
      v157 = &v76[1];
      v158 = v91 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v159 = *v157[-2].i8;
        v160 = vmovl_u8(*v157);
        v161 = vmovl_high_u8(*v157->i8);
        v156[-2] = vmovl_u8(*v159.i8);
        v156[-1] = vmovl_high_u8(v159);
        *v156 = v160;
        v156[1] = v161;
        v156 += 4;
        v157 += 4;
        v158 -= 32;
      }

      while (v158);
      if (v91 == v92)
      {
        goto LABEL_81;
      }

      if ((v91 & 0x18) == 0)
      {
        v94 = (v80 + 2 * v92);
        v93 = (v76 + v92);
        goto LABEL_78;
      }
    }

    else
    {
      v92 = 0;
    }

    v93 = (v76 + (v91 & 0xFFFFFFFFFFFFFFF8));
    v94 = (v80 + 2 * (v91 & 0xFFFFFFFFFFFFFFF8));
    v162 = (v80 + 2 * v92);
    v163 = &v76->i8[v92];
    v164 = v92 - (v91 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v165 = *v163++;
      *v162++ = vmovl_u8(v165);
      v164 += 8;
    }

    while (v164);
    if (v91 == (v91 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_81;
    }

    do
    {
LABEL_78:
      v95 = v93->u8[0];
      v93 = (v93 + 1);
      *v94 = v95;
      v94 += 2;
    }

    while (v94 != v79);
    goto LABEL_81;
  }

  if (v77)
  {
    if (v77 == 1)
    {
      *v75 = v76->i16[0];
    }

    else
    {
      v96 = result;
      v97 = a8;
      memcpy(v75, v76, 2 * v77);
      a8 = v97;
      result = v96;
    }
  }

LABEL_81:
  v78 = *(a8 + 4);
  if (v74 < v78)
  {
    goto LABEL_143;
  }

LABEL_82:
  v99 = &v75[2 * v78];
  v100 = (v99 + 2 * a10);
  if (a10 >= 0x40)
  {
    v101 = v99 + 2 * (a10 & 0x7FFFFFFFFFFFFFC0);
    v102 = 0uLL;
    do
    {
      v170.val[0] = *a9;
      v103 = *(a9 + 16);
      v175.val[0] = *(a9 + 32);
      v104 = *(a9 + 48);
      a9 += 64;
      v105 = v104;
      v175.val[1] = 0uLL;
      v180.val[0] = v103;
      v170.val[1] = 0uLL;
      v106 = v99;
      vst2q_s8(v106, v170);
      v106 += 32;
      v180.val[1] = 0uLL;
      vst2q_s8(v106, v180);
      v107 = (v99 + 64);
      vst2q_s8(v107, v175);
      v108 = (v99 + 96);
      vst2q_s8(v108, *(&v102 - 1));
      v99 += 128;
    }

    while (v99 != v101);
    v99 = v101;
  }

  if (v99 != v100)
  {
    v109 = result + 2 * a10 + 2 * v29 + 2 * v78 + 2 * v24 + 2 * v73 - v99 - 2;
    if (v109 < 0xE || (v99 < a9 + (v109 >> 1) + 1 ? (v110 = a9 >= (v109 & 0xFFFFFFFFFFFFFFFELL) + v99 + 2) : (v110 = 1), !v110))
    {
      v113 = a9;
      v114 = v99;
      goto LABEL_96;
    }

    v111 = (v109 >> 1) + 1;
    if (v109 >= 0x3E)
    {
      v112 = v111 & 0xFFFFFFFFFFFFFFE0;
      v136 = (v99 + 32);
      v137 = (a9 + 16);
      v138 = v111 & 0xFFFFFFFFFFFFFFE0;
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
      if (v111 == v112)
      {
        return result;
      }

      if ((v111 & 0x18) == 0)
      {
        v114 = (v99 + 2 * v112);
        v113 = (a9 + v112);
        do
        {
LABEL_96:
          v115 = *v113++;
          *v114++ = v115;
        }

        while (v114 != v100);
        return result;
      }
    }

    else
    {
      v112 = 0;
    }

    v113 = (a9 + (v111 & 0xFFFFFFFFFFFFFFF8));
    v114 = (v99 + 2 * (v111 & 0xFFFFFFFFFFFFFFF8));
    v142 = (v99 + 2 * v112);
    v143 = (a9 + v112);
    v144 = v112 - (v111 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v145 = *v143++;
      *v142++ = vmovl_u8(v145);
      v144 += 8;
    }

    while (v144);
    if (v111 != (v111 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_96;
    }
  }

  return result;
}

int8x16_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(int8x16_t *__dst, unint64_t a2, uint64_t a3, _BYTE *__src, size_t __n, uint64_t a6, char *a7, size_t a8)
{
  v12 = __dst;
  if (!a3)
  {
    v18 = 0;
    goto LABEL_26;
  }

  v13 = *(a3 + 8);
  v14 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v15 = (__dst + v14);
    if (v14 < 0x10)
    {
      v16 = __dst;
      if (__dst == v15)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = __dst;
      do
      {
        v17 = vld2q_s8(v13);
        v13 += 32;
        *v16++ = v17;
      }

      while (v16 != &__dst->i8[v14 & 0xFFFFFFF0]);
      if (v16 == v15)
      {
        goto LABEL_25;
      }
    }

    v19 = &__dst->i8[v14];
    v20 = &__dst->i8[v14] - v16;
    if (v20 < 4 || (v16 < &v13[2 * v20] ? (v21 = v13 >= v19) : (v21 = 1), !v21))
    {
      v23 = v16;
      v24 = v13;
      goto LABEL_22;
    }

    if (v20 >= 0x20)
    {
      v22 = v20 & 0xFFFFFFFFFFFFFFE0;
      v47 = (v13 + 32);
      v48 = v16 + 1;
      v49 = v20 & 0xFFFFFFFFFFFFFFE0;
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
      if (v20 == v22)
      {
        goto LABEL_25;
      }

      if ((v20 & 0x1C) == 0)
      {
        v24 = &v13[2 * v22];
        v23 = (v16 + v22);
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = (v16 + (v20 & 0xFFFFFFFFFFFFFFFCLL));
    v24 = &v13[2 * (v20 & 0xFFFFFFFFFFFFFFFCLL)];
    v54 = &v13[2 * v22];
    v55 = (v16->i32 + v22);
    v56 = v22 - (v20 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v57 = *v54++;
      *v55++ = vuzp1_s8(v57, v57).u32[0];
      v56 += 4;
    }

    while (v56);
    if (v20 == (v20 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v25 = *v24;
      v24 += 2;
      v23->i8[0] = v25;
      v23 = (v23 + 1);
    }

    while (v23 != v15);
    goto LABEL_25;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      __dst->i8[0] = *v13;
    }

    else
    {
      v26 = a2;
      v27 = a3;
      v28 = __src;
      __dst = memcpy(__dst, *(a3 + 8), *(a3 + 4));
      a3 = v27;
      a2 = v26;
      __src = v28;
    }
  }

LABEL_25:
  v18 = *(a3 + 4);
  if (a2 < v18)
  {
LABEL_82:
    __break(1u);
    return __dst;
  }

LABEL_26:
  v29 = a2 - v18;
  v30 = &v12->i8[v18];
  if (__n)
  {
    if (__n == 1)
    {
      *v30 = *__src;
    }

    else
    {
      __dst = memcpy(&v12->i8[v18], __src, __n);
    }
  }

  v31 = __n;
  v21 = v29 >= __n;
  v32 = v29 - __n;
  if (!v21)
  {
    goto LABEL_82;
  }

  v33 = &v30[__n];
  if (!a6)
  {
    v39 = 0;
    goto LABEL_57;
  }

  v34 = *(a6 + 8);
  v35 = *(a6 + 4);
  if ((*(a6 + 16) & 4) == 0)
  {
    v36 = &v33[v35];
    if (v35 < 0x10)
    {
      v37 = &v30[v31];
      if (v33 == v36)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v37 = &v30[v31];
      do
      {
        v38 = vld2q_s8(v34);
        v34 += 32;
        *v37++ = v38;
      }

      while (v37 != &v33[v35 & 0xFFFFFFF0]);
      if (v37 == v36)
      {
        goto LABEL_56;
      }
    }

    v40 = &v12->i8[v18 + v35 + v31];
    v41 = v40 - v37;
    if ((v40 - v37) < 4 || (v37 < &v34[2 * v41] ? (v42 = v34 >= v40) : (v42 = 1), !v42))
    {
      v44 = v37;
      v45 = v34;
      goto LABEL_53;
    }

    if (v41 >= 0x20)
    {
      v43 = v41 & 0xFFFFFFFFFFFFFFE0;
      v58 = (v34 + 32);
      v59 = v37 + 1;
      v60 = v41 & 0xFFFFFFFFFFFFFFE0;
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
      if (v41 == v43)
      {
        goto LABEL_56;
      }

      if ((v41 & 0x1C) == 0)
      {
        v45 = &v34[2 * v43];
        v44 = (v37 + v43);
        goto LABEL_53;
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = (v37 + (v41 & 0xFFFFFFFFFFFFFFFCLL));
    v45 = &v34[2 * (v41 & 0xFFFFFFFFFFFFFFFCLL)];
    v65 = &v34[2 * v43];
    v66 = (v37->i32 + v43);
    v67 = v43 - (v41 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v68 = *v65++;
      *v66++ = vuzp1_s8(v68, v68).u32[0];
      v67 += 4;
    }

    while (v67);
    if (v41 == (v41 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_56;
    }

    do
    {
LABEL_53:
      v46 = *v45;
      v45 += 2;
      v44->i8[0] = v46;
      v44 = (v44 + 1);
    }

    while (v44 != v36);
    goto LABEL_56;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      *v33 = *v34;
    }

    else
    {
      __dst = memcpy(&v30[v31], v34, v35);
    }
  }

LABEL_56:
  v39 = *(a6 + 4);
  if (v32 < v39)
  {
    goto LABEL_82;
  }

LABEL_57:
  if (a8)
  {
    if (a8 == 1)
    {
      v33[v39] = *a7;
    }

    else
    {

      return memcpy(&v33[v39], a7, a8);
    }
  }

  return __dst;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, unint64_t a7@<X6>, void *a8@<X8>)
{
  v9 = result;
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

    v20 = result;
    result = WTF::tryFastCompactMalloc((2 * result + 20));
    v16 = v142;
    if (!v142)
    {
      goto LABEL_12;
    }

    v26 = v142 + 20;
    *v142 = 2;
    *(v142 + 4) = v20;
    *(v142 + 8) = v142 + 20;
    *(v142 + 16) = 0;
    v27 = v142 + 20 + 2 * a4;
    if (a4 < 0x40)
    {
      v28 = v142 + 20;
      v31 = a6;
      v32 = a7;
      v33 = a5;
      v34 = a3;
    }

    else
    {
      v28 = v26 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v29 = 0uLL;
      v30 = (v142 + 20);
      v31 = a6;
      v32 = a7;
      v33 = a5;
      v34 = a3;
      do
      {
        v143.val[0] = *v34;
        v35 = *(v34 + 16);
        v146.val[0] = *(v34 + 32);
        v36 = *(v34 + 48);
        v34 += 64;
        v37 = v36;
        v146.val[1] = 0uLL;
        v149.val[0] = v35;
        v143.val[1] = 0uLL;
        v38 = v30;
        vst2q_s8(v38, v143);
        v38 += 32;
        v149.val[1] = 0uLL;
        vst2q_s8(v38, v149);
        v39 = v30 + 64;
        vst2q_s8(v39, v146);
        v40 = v30 + 96;
        vst2q_s8(v40, *(&v29 - 1));
        v30 += 128;
      }

      while (v30 != v28);
    }

    if (v28 != v27)
    {
      v41 = v142 + 2 * a4 - v28 + 18;
      if (v41 < 0xE || (v28 < v34 + (v41 >> 1) + 1 ? (v42 = v34 >= (v41 & 0xFFFFFFFFFFFFFFFELL) + v28 + 2) : (v42 = 1), !v42))
      {
        v45 = v34;
        result = v28;
        goto LABEL_29;
      }

      v43 = (v41 >> 1) + 1;
      if (v41 >= 0x3E)
      {
        v44 = v43 & 0xFFFFFFFFFFFFFFE0;
        v101 = (v28 + 32);
        result = v34 + 16;
        v102 = v43 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v103 = *(result - 16);
          v104 = vmovl_u8(*result);
          v105 = vmovl_high_u8(*result);
          v101[-2] = vmovl_u8(*v103.i8);
          v101[-1] = vmovl_high_u8(v103);
          *v101 = v104;
          v101[1] = v105;
          v101 += 4;
          result += 32;
          v102 -= 32;
        }

        while (v102);
        if (v43 == v44)
        {
          goto LABEL_30;
        }

        if ((v43 & 0x18) == 0)
        {
          result = v28 + 2 * v44;
          v45 = (v34 + v44);
          do
          {
LABEL_29:
            v46 = *v45++;
            *result = v46;
            result += 2;
          }

          while (result != v27);
          goto LABEL_30;
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = (v34 + (v43 & 0xFFFFFFFFFFFFFFF8));
      result = v28 + 2 * (v43 & 0xFFFFFFFFFFFFFFF8);
      v106 = (v28 + 2 * v44);
      v107 = (v34 + v44);
      v108 = v44 - (v43 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v109 = *v107++;
        *v106++ = vmovl_u8(v109);
        v108 += 8;
      }

      while (v108);
      if (v43 != (v43 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    v42 = v9 >= a4;
    v47 = v9 - a4;
    if (!v42)
    {
      goto LABEL_137;
    }

    v48 = (v26 + 2 * a4);
    if (!v33)
    {
      v62 = 0;
      goto LABEL_83;
    }

    v49 = *(v33 + 8);
    v50 = *(v33 + 4);
    if ((*(v33 + 16) & 4) == 0)
    {
      if (v50)
      {
        if (v50 == 1)
        {
          *v48 = v49->i16[0];
        }

        else
        {
          result = memcpy(v48, v49, 2 * v50);
          v33 = a5;
          v32 = a7;
          v31 = a6;
        }
      }

LABEL_82:
      v62 = *(v33 + 4);
      if (v47 < v62)
      {
        goto LABEL_137;
      }

LABEL_83:
      v84 = &v48[v62];
      v85 = (v84 + 2 * v32);
      if (v32 >= 0x40)
      {
        v86 = v84 + 2 * (v32 & 0x7FFFFFFFFFFFFFC0);
        v87 = 0uLL;
        do
        {
          v145.val[0] = *v31;
          v88 = *(v31 + 16);
          v148.val[0] = *(v31 + 32);
          v89 = *(v31 + 48);
          v31 += 64;
          v90 = v89;
          v148.val[1] = 0uLL;
          v151.val[0] = v88;
          v145.val[1] = 0uLL;
          v91 = v84;
          vst2q_s8(v91, v145);
          v91 += 32;
          v151.val[1] = 0uLL;
          vst2q_s8(v91, v151);
          v92 = (v84 + 64);
          vst2q_s8(v92, v148);
          v93 = (v84 + 96);
          vst2q_s8(v93, *(&v87 - 1));
          v84 += 128;
        }

        while (v84 != v86);
        v84 = v86;
      }

      if (v84 == v85)
      {
        goto LABEL_12;
      }

      v94 = v142 + 2 * (v32 + v62 + a4) - v84 + 18;
      if (v94 < 0xE || (v84 < v31 + (v94 >> 1) + 1 ? (v95 = v31 >= (v94 & 0xFFFFFFFFFFFFFFFELL) + v84 + 2) : (v95 = 1), !v95))
      {
        v98 = v31;
        v99 = v84;
        goto LABEL_97;
      }

      v96 = (v94 >> 1) + 1;
      if (v94 >= 0x3E)
      {
        v97 = v96 & 0xFFFFFFFFFFFFFFE0;
        v110 = (v84 + 32);
        v111 = (v31 + 16);
        v112 = v96 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v113 = *v111[-2].i8;
          v114 = vmovl_u8(*v111);
          v115 = vmovl_high_u8(*v111->i8);
          v110[-2] = vmovl_u8(*v113.i8);
          v110[-1] = vmovl_high_u8(v113);
          *v110 = v114;
          v110[1] = v115;
          v110 += 4;
          v111 += 4;
          v112 -= 32;
        }

        while (v112);
        if (v96 == v97)
        {
          goto LABEL_12;
        }

        if ((v96 & 0x18) == 0)
        {
          v99 = (v84 + 2 * v97);
          v98 = (v31 + v97);
          do
          {
LABEL_97:
            v100 = *v98++;
            *v99++ = v100;
          }

          while (v99 != v85);
          goto LABEL_12;
        }
      }

      else
      {
        v97 = 0;
      }

      v98 = (v31 + (v96 & 0xFFFFFFFFFFFFFFF8));
      v99 = (v84 + 2 * (v96 & 0xFFFFFFFFFFFFFFF8));
      v116 = (v84 + 2 * v97);
      v117 = (v31 + v97);
      v118 = v97 - (v96 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v119 = *v117++;
        *v116++ = vmovl_u8(v119);
        v118 += 8;
      }

      while (v118);
      if (v96 == (v96 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_12;
      }

      goto LABEL_97;
    }

    v63 = &v48[v50];
    if (v50 < 0x40)
    {
      v64 = v48;
    }

    else
    {
      v64 = &v48[v50 & 0xFFFFFFC0];
      v65 = 0uLL;
      v66 = v48;
      do
      {
        v144.val[0] = *v49;
        v67 = v49[1];
        v147.val[0] = v49[2];
        v68 = v49[3];
        v49 += 4;
        v69 = v68;
        v147.val[1] = 0uLL;
        v150.val[0] = v67;
        v144.val[1] = 0uLL;
        v70 = v66;
        vst2q_s8(v70, v144);
        v70 += 32;
        v150.val[1] = 0uLL;
        vst2q_s8(v70, v150);
        v71 = v66 + 64;
        vst2q_s8(v71, v147);
        v72 = v66 + 96;
        vst2q_s8(v72, *(&v65 - 1));
        v66 += 128;
      }

      while (v66 != v64);
    }

    if (v64 == v63)
    {
      goto LABEL_82;
    }

    v80 = v142 + 2 * (a4 + v50) - v64 + 18;
    if (v80 < 0xE || v64 < v49->u64 + (v80 >> 1) + 1 && v49 < (v80 & 0xFFFFFFFFFFFFFFFELL) + v64 + 2)
    {
      v81 = v49;
      v82 = v64;
      goto LABEL_73;
    }

    v120 = (v80 >> 1) + 1;
    if (v80 >= 0x3E)
    {
      v121 = v120 & 0xFFFFFFFFFFFFFFE0;
      v133 = (v64 + 32);
      v134 = &v49[1];
      v135 = v120 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v136 = *v134[-2].i8;
        v137 = vmovl_u8(*v134);
        v138 = vmovl_high_u8(*v134->i8);
        v133[-2] = vmovl_u8(*v136.i8);
        v133[-1] = vmovl_high_u8(v136);
        *v133 = v137;
        v133[1] = v138;
        v133 += 4;
        v134 += 4;
        v135 -= 32;
      }

      while (v135);
      if (v120 == v121)
      {
        goto LABEL_82;
      }

      if ((v120 & 0x18) == 0)
      {
        v82 = (v64 + 2 * v121);
        v81 = (v49 + v121);
        goto LABEL_73;
      }
    }

    else
    {
      v121 = 0;
    }

    v81 = (v49 + (v120 & 0xFFFFFFFFFFFFFFF8));
    v82 = (v64 + 2 * (v120 & 0xFFFFFFFFFFFFFFF8));
    v139 = (v64 + 2 * v121);
    result = v49->i64 + v121;
    v140 = v121 - (v120 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v141 = *result;
      result += 8;
      *v139++ = vmovl_u8(v141);
      v140 += 8;
    }

    while (v140);
    if (v120 == (v120 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_82;
    }

    do
    {
LABEL_73:
      v83 = v81->u8[0];
      v81 = (v81 + 1);
      *v82++ = v83;
    }

    while (v82 != v63);
    goto LABEL_82;
  }

  if (!result)
  {
LABEL_11:
    v16 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_12;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    v16 = 0;
    goto LABEL_12;
  }

  v10 = result;
  result = WTF::tryFastCompactMalloc((result + 20));
  v16 = v142;
  if (!v142)
  {
LABEL_12:
    *a8 = v16;
    return result;
  }

  v17 = (v142 + 20);
  *v142 = 2;
  *(v142 + 4) = v10;
  *(v142 + 8) = v142 + 20;
  *(v142 + 16) = 4;
  v18 = a5;
  v19 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v17 = *a3;
    }

    else
    {
      result = memcpy((v142 + 20), a3, a4);
      v19 = a4;
      v18 = a5;
    }
  }

  v51 = v19;
  v52 = v9 - v19;
  if (v9 < v19)
  {
    goto LABEL_137;
  }

  v53 = &v17[v19];
  v54 = a6;
  v55 = a7;
  if (!v18)
  {
    v61 = 0;
    goto LABEL_77;
  }

  v56 = *(v18 + 8);
  v57 = *(v18 + 4);
  if ((*(v18 + 16) & 4) != 0)
  {
    if (v57)
    {
      if (v57 == 1)
      {
        *v53 = *v56;
      }

      else
      {
        result = memcpy(v53, *(v18 + 8), *(v18 + 4));
        v18 = a5;
        v55 = a7;
        v54 = a6;
      }
    }
  }

  else
  {
    v58 = &v53[v57];
    if (v57 < 0x10)
    {
      v59 = v53;
    }

    else
    {
      v59 = v53;
      do
      {
        v60 = vld2q_s8(v56);
        v56 += 32;
        *v59 = v60;
        v59 += 16;
      }

      while (v59 != &v53[v57 & 0xFFFFFFF0]);
    }

    if (v59 != v58)
    {
      v73 = v142 + v57 + v51;
      v74 = v73 - v59 + 20;
      if (v74 < 4 || (v59 < &v56[2 * v73 + 40 + -2 * v59] ? (v75 = v56 >= v73 + 20) : (v75 = 1), !v75))
      {
        v77 = v59;
        v78 = v56;
        goto LABEL_65;
      }

      if (v74 >= 0x20)
      {
        v76 = v74 & 0xFFFFFFFFFFFFFFE0;
        v122 = (v56 + 32);
        v123 = (v59 + 16);
        v124 = v74 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v126 = v122[-2];
          v125 = v122[-1];
          v128 = *v122;
          v127 = v122[1];
          v122 += 4;
          v123[-1] = vuzp1q_s8(v126, v125);
          *v123 = vuzp1q_s8(v128, v127);
          v123 += 2;
          v124 -= 32;
        }

        while (v124);
        if (v74 == v76)
        {
          goto LABEL_76;
        }

        if ((v74 & 0x1C) == 0)
        {
          v78 = &v56[2 * v76];
          v77 = (v59 + v76);
          do
          {
LABEL_65:
            v79 = *v78;
            v78 += 2;
            *v77++ = v79;
          }

          while (v77 != v58);
          goto LABEL_76;
        }
      }

      else
      {
        v76 = 0;
      }

      v77 = (v59 + (v74 & 0xFFFFFFFFFFFFFFFCLL));
      v78 = &v56[2 * (v74 & 0xFFFFFFFFFFFFFFFCLL)];
      v129 = &v56[2 * v76];
      v130 = (v59 + v76);
      v131 = v76 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v132 = *v129++;
        *v130++ = vuzp1_s8(v132, v132).u32[0];
        v131 += 4;
      }

      while (v131);
      if (v74 != (v74 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  v61 = *(v18 + 4);
  if (v52 >= v61)
  {
LABEL_77:
    if (v55)
    {
      if (v55 == 1)
      {
        v53[v61] = *v54;
      }

      else
      {
        result = memcpy(&v53[v61], v54, v55);
      }
    }

    goto LABEL_12;
  }

LABEL_137:
  __break(1u);
  return result;
}

void *WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(void *result, unsigned int a2, int a3, _BYTE *a4, size_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, char *a10, unint64_t a11, uint64_t a12, _BYTE *a13, unint64_t a14, uint64_t a15, char *a16, unint64_t a17)
{
  v17 = a2;
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

    v66 = result;
    result = WTF::tryFastCompactMalloc((2 * a2 + 20));
    v24 = v67;
    if (!v67)
    {
      goto LABEL_34;
    }

    v36 = v67 + 20;
    *v67 = 2;
    *(v67 + 4) = a2;
    *(v67 + 8) = v67 + 20;
    *(v67 + 16) = 0;
    v37 = v67 + 20 + 2 * a5;
    if (a5 < 0x40)
    {
      v38 = v67 + 20;
      v41 = a6;
      v42 = a4;
    }

    else
    {
      v38 = v36 + 2 * (a5 & 0x7FFFFFFFFFFFFFC0);
      v39 = 0uLL;
      v40 = (v67 + 20);
      v41 = a6;
      v42 = a4;
      do
      {
        v68.val[0] = *v42;
        v43 = *(v42 + 16);
        v69.val[0] = *(v42 + 32);
        v44 = *(v42 + 48);
        v42 += 64;
        v45 = v44;
        v69.val[1] = 0uLL;
        v70.val[0] = v43;
        v68.val[1] = 0uLL;
        v46 = v40;
        vst2q_s8(v46, v68);
        v46 += 32;
        v70.val[1] = 0uLL;
        vst2q_s8(v46, v70);
        v47 = v40 + 64;
        vst2q_s8(v47, v69);
        v48 = v40 + 96;
        vst2q_s8(v48, *(&v39 - 1));
        v40 += 128;
      }

      while (v40 != v38);
    }

    if (v38 == v37)
    {
LABEL_29:
      if (v17 < a5)
      {
        goto LABEL_45;
      }

      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v36 + 2 * a5), v17 - a5, v41, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
LABEL_34:
      result = v66;
      goto LABEL_35;
    }

    v49 = v67 + 2 * a5 - v38 + 18;
    if (v49 < 0xE || (v38 < v42 + (v49 >> 1) + 1 ? (v50 = v42 >= (v49 & 0xFFFFFFFFFFFFFFFELL) + v38 + 2) : (v50 = 1), !v50))
    {
      v53 = v42;
      v54 = v38;
      goto LABEL_28;
    }

    v51 = (v49 >> 1) + 1;
    if (v49 >= 0x3E)
    {
      v52 = v51 & 0xFFFFFFFFFFFFFFE0;
      v56 = (v38 + 32);
      v57 = (v42 + 16);
      v58 = v51 & 0xFFFFFFFFFFFFFFE0;
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
      if (v51 == v52)
      {
        goto LABEL_29;
      }

      if ((v51 & 0x18) == 0)
      {
        v54 = (v38 + 2 * v52);
        v53 = (v42 + v52);
        do
        {
LABEL_28:
          v55 = *v53++;
          *v54++ = v55;
        }

        while (v54 != v37);
        goto LABEL_29;
      }
    }

    else
    {
      v52 = 0;
    }

    v53 = (v42 + (v51 & 0xFFFFFFFFFFFFFFF8));
    v54 = (v38 + 2 * (v51 & 0xFFFFFFFFFFFFFFF8));
    v62 = (v38 + 2 * v52);
    v63 = (v42 + v52);
    v64 = v52 - (v51 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v65 = *v63++;
      *v62++ = vmovl_u8(v65);
      v64 += 8;
    }

    while (v64);
    if (v51 == (v51 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
LABEL_11:
    v24 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_35;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_10:
    v24 = 0;
LABEL_35:
    *result = v24;
    return result;
  }

  v66 = result;
  result = WTF::tryFastCompactMalloc((a2 + 20));
  v24 = v67;
  if (!v67)
  {
    goto LABEL_34;
  }

  v25 = (v67 + 20);
  *v67 = 2;
  *(v67 + 4) = a2;
  *(v67 + 8) = v67 + 20;
  *(v67 + 16) = 4;
  v26 = a8;
  v27 = a7;
  v28 = a6;
  v29 = a5;
  if (a5)
  {
    if (a5 == 1)
    {
      *v25 = *a4;
    }

    else
    {
      result = memcpy((v67 + 20), a4, a5);
      v29 = a5;
      v28 = a6;
      v27 = a7;
      v26 = a8;
    }
  }

  if (v17 >= v29)
  {
    WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v25[v29], v17 - v29, v28, v27, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    goto LABEL_34;
  }

LABEL_45:
  __break(1u);
  return result;
}

int8x16_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(int8x16_t *result, unint64_t a2, uint64_t a3, _BYTE *__src, size_t __n, uint64_t a6, char *a7, size_t a8, uint64_t a9, _BYTE *a10, size_t a11, uint64_t a12, char *a13, size_t a14)
{
  v17 = a13;
  v18 = a14;
  v19 = a11;
  v20 = a12;
  if (!a3)
  {
    v27 = 0;
    goto LABEL_26;
  }

  v22 = *(a3 + 8);
  v23 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v24 = (result + v23);
    if (v23 < 0x10)
    {
      v25 = result;
      if (result == v24)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v25 = result;
      do
      {
        v26 = vld2q_s8(v22);
        v22 += 32;
        *v25++ = v26;
      }

      while (v25 != &result->i8[v23 & 0xFFFFFFF0]);
      if (v25 == v24)
      {
        goto LABEL_25;
      }
    }

    v28 = &result->i8[v23] - v25;
    if (v28 < 4 || (v25 < &v22[2 * v28] ? (v29 = v22 >= &result->i8[v23]) : (v29 = 1), !v29))
    {
      v31 = v25;
      v32 = v22;
      goto LABEL_22;
    }

    if (v28 >= 0x20)
    {
      v30 = v28 & 0xFFFFFFFFFFFFFFE0;
      v66 = (v22 + 32);
      v67 = v25 + 1;
      v68 = v28 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v70 = v66[-2];
        v69 = v66[-1];
        v72 = *v66;
        v71 = v66[1];
        v66 += 4;
        v67[-1] = vuzp1q_s8(v70, v69);
        *v67 = vuzp1q_s8(v72, v71);
        v67 += 2;
        v68 -= 32;
      }

      while (v68);
      if (v28 == v30)
      {
        goto LABEL_25;
      }

      if ((v28 & 0x1C) == 0)
      {
        v32 = &v22[2 * v30];
        v31 = (v25 + v30);
        goto LABEL_22;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = (v25 + (v28 & 0xFFFFFFFFFFFFFFFCLL));
    v32 = &v22[2 * (v28 & 0xFFFFFFFFFFFFFFFCLL)];
    v73 = &v22[2 * v30];
    v74 = (v25->i32 + v30);
    v75 = v30 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v76 = *v73++;
      *v74++ = vuzp1_s8(v76, v76).u32[0];
      v75 += 4;
    }

    while (v75);
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v33 = *v32;
      v32 += 2;
      v31->i8[0] = v33;
      v31 = (v31 + 1);
    }

    while (v31 != v24);
    goto LABEL_25;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      result->i8[0] = *v22;
    }

    else
    {
      v34 = result;
      v35 = __n;
      v36 = __src;
      memcpy(result, v22, v23);
      __src = v36;
      __n = v35;
      result = v34;
      v17 = a13;
      v19 = a11;
      v20 = a12;
      v18 = a14;
    }
  }

LABEL_25:
  v27 = *(a3 + 4);
  if (a2 < v27)
  {
LABEL_83:
    __break(1u);
    return result;
  }

LABEL_26:
  v37 = a2 - v27;
  v38 = &result->i8[v27];
  if (__n)
  {
    if (__n == 1)
    {
      *v38 = *__src;
    }

    else
    {
      v88 = result;
      v39 = v18;
      v40 = v20;
      v41 = v19;
      v42 = v17;
      v43 = __n;
      memcpy(&result->i8[v27], __src, __n);
      LODWORD(__n) = v43;
      result = v88;
      v17 = v42;
      v19 = v41;
      v20 = v40;
      v18 = v39;
    }
  }

  v29 = v37 >= __n;
  v44 = v37 - __n;
  if (!v29)
  {
    goto LABEL_83;
  }

  v45 = &v38[__n];
  if (!a6)
  {
    v51 = 0;
    goto LABEL_57;
  }

  v46 = *(a6 + 8);
  v47 = *(a6 + 4);
  if ((*(a6 + 16) & 4) == 0)
  {
    v48 = &v45[v47];
    if (v47 < 0x10)
    {
      v49 = &v38[__n];
      if (v45 == v48)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v49 = &v38[__n];
      do
      {
        v50 = vld2q_s8(v46);
        v46 += 32;
        *v49++ = v50;
      }

      while (v49 != &v45[v47 & 0xFFFFFFF0]);
      if (v49 == v48)
      {
        goto LABEL_56;
      }
    }

    v52 = result->u64 + v27 + v47 + __n;
    v53 = v52 - v49;
    if (v52 - v49 < 4 || (v49 < &v46[2 * v53] ? (v54 = v46 >= v52) : (v54 = 1), !v54))
    {
      v56 = v49;
      v57 = v46;
      goto LABEL_53;
    }

    if (v53 >= 0x20)
    {
      v55 = v53 & 0xFFFFFFFFFFFFFFE0;
      v77 = (v46 + 32);
      v78 = v49 + 1;
      v79 = v53 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v81 = v77[-2];
        v80 = v77[-1];
        v83 = *v77;
        v82 = v77[1];
        v77 += 4;
        v78[-1] = vuzp1q_s8(v81, v80);
        *v78 = vuzp1q_s8(v83, v82);
        v78 += 2;
        v79 -= 32;
      }

      while (v79);
      if (v53 == v55)
      {
        goto LABEL_56;
      }

      if ((v53 & 0x1C) == 0)
      {
        v57 = &v46[2 * v55];
        v56 = (v49 + v55);
        goto LABEL_53;
      }
    }

    else
    {
      v55 = 0;
    }

    v56 = (v49 + (v53 & 0xFFFFFFFFFFFFFFFCLL));
    v57 = &v46[2 * (v53 & 0xFFFFFFFFFFFFFFFCLL)];
    v84 = &v46[2 * v55];
    v85 = (v49->i32 + v55);
    v86 = v55 - (v53 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v87 = *v84++;
      *v85++ = vuzp1_s8(v87, v87).u32[0];
      v86 += 4;
    }

    while (v86);
    if (v53 == (v53 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_56;
    }

    do
    {
LABEL_53:
      v58 = *v57;
      v57 += 2;
      v56->i8[0] = v58;
      v56 = (v56 + 1);
    }

    while (v56 != v48);
    goto LABEL_56;
  }

  if (v47)
  {
    if (v47 == 1)
    {
      *v45 = *v46;
    }

    else
    {
      v59 = &v38[__n];
      v60 = v18;
      v61 = v17;
      result = memcpy(v59, v46, v47);
      v17 = v61;
      v18 = v60;
    }
  }

LABEL_56:
  v51 = *(a6 + 4);
  if (v44 < v51)
  {
    goto LABEL_83;
  }

LABEL_57:
  v62 = v44 - v51;
  v63 = &v45[v51];
  if (a8)
  {
    if (a8 == 1)
    {
      *v63 = *a7;
    }

    else
    {
      v64 = v18;
      v65 = v17;
      result = memcpy(v63, a7, a8);
      v17 = v65;
      v18 = v64;
    }
  }

  if (v62 < a8)
  {
    goto LABEL_83;
  }

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v63[a8], v62 - a8, a9, a10, v19, v20, v17, v18);
}

char *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(char *result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14)
{
  v17 = a13;
  v16 = a14;
  v18 = a12;
  v19 = a9;
  v20 = a10;
  if (!a3)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v21 = *(a3 + 8);
  v22 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v24 = &result[2 * v22];
    if (v22 < 0x40)
    {
      v25 = result;
      if (result == v24)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v25 = &result[2 * (v22 & 0xFFFFFFC0)];
      v26 = 0uLL;
      v27 = result;
      do
      {
        v125.val[0] = *v21;
        v28 = *(v21 + 16);
        v128.val[0] = *(v21 + 32);
        v29 = *(v21 + 48);
        v21 += 64;
        v30 = v29;
        v128.val[1] = 0uLL;
        v131.val[0] = v28;
        v125.val[1] = 0uLL;
        v31 = v27;
        vst2q_s8(v31, v125);
        v31 += 32;
        v131.val[1] = 0uLL;
        vst2q_s8(v31, v131);
        v32 = v27 + 64;
        vst2q_s8(v32, v128);
        v33 = v27 + 96;
        vst2q_s8(v33, *(&v26 - 1));
        v27 += 128;
      }

      while (v27 != v25);
      if (v25 == v24)
      {
        goto LABEL_25;
      }
    }

    v34 = &v24[-v25 - 2];
    if (v34 < 0xE || (v25 < v21 + (v34 >> 1) + 1 ? (v35 = v21 >= (v34 & 0xFFFFFFFFFFFFFFFELL) + v25 + 2) : (v35 = 1), !v35))
    {
      v38 = v21;
      v39 = v25;
      goto LABEL_22;
    }

    v36 = (v34 >> 1) + 1;
    if (v34 >= 0x3E)
    {
      v37 = v36 & 0xFFFFFFFFFFFFFFE0;
      v103 = (v25 + 32);
      v104 = (v21 + 16);
      v105 = v36 & 0xFFFFFFFFFFFFFFE0;
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
      if (v36 == v37)
      {
        goto LABEL_25;
      }

      if ((v36 & 0x18) == 0)
      {
        v39 = (v25 + 2 * v37);
        v38 = (v21 + v37);
        goto LABEL_22;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = (v21 + (v36 & 0xFFFFFFFFFFFFFFF8));
    v39 = (v25 + 2 * (v36 & 0xFFFFFFFFFFFFFFF8));
    v109 = (v25 + 2 * v37);
    v110 = (v21 + v37);
    v111 = v37 - (v36 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v112 = *v110++;
      *v109++ = vmovl_u8(v112);
      v111 += 8;
    }

    while (v111);
    if (v36 == (v36 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v40 = *v38++;
      *v39 = v40;
      v39 += 2;
    }

    while (v39 != v24);
    goto LABEL_25;
  }

  if (v22)
  {
    if (v22 == 1)
    {
      *result = *v21;
    }

    else
    {
      v41 = result;
      v42 = a2;
      v43 = a3;
      v44 = a8;
      v123 = a6;
      v45 = a7;
      v46 = a4;
      memcpy(result, *(a3 + 8), 2 * v22);
      a3 = v43;
      v16 = a14;
      v18 = a12;
      a2 = v42;
      result = v41;
      a4 = v46;
      v19 = a9;
      v20 = a10;
      a7 = v45;
      a8 = v44;
      a6 = v123;
      v17 = a13;
    }
  }

LABEL_25:
  v23 = *(a3 + 4);
  if (a2 < v23)
  {
    goto LABEL_98;
  }

LABEL_26:
  v47 = &result[2 * v23];
  v48 = &v47[2 * a5];
  if (a5 < 0x40)
  {
    v49 = &result[2 * v23];
    v58 = a2 - v23;
    if (v47 == v48)
    {
      goto LABEL_42;
    }

LABEL_32:
    v59 = &result[2 * a5 + 2 * v23 - v49 - 2];
    if (v59 < 0xE || (v49 < a4 + (v59 >> 1) + 1 ? (v60 = a4 >= (v59 & 0xFFFFFFFFFFFFFFFELL) + v49 + 2) : (v60 = 1), !v60))
    {
      v63 = a4;
      v64 = v49;
      goto LABEL_41;
    }

    v61 = (v59 >> 1) + 1;
    if (v59 >= 0x3E)
    {
      v62 = v61 & 0xFFFFFFFFFFFFFFE0;
      v93 = (v49 + 32);
      v94 = (a4 + 16);
      v95 = v61 & 0xFFFFFFFFFFFFFFE0;
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
      if (v61 == v62)
      {
        goto LABEL_42;
      }

      if ((v61 & 0x18) == 0)
      {
        v64 = (v49 + 2 * v62);
        v63 = (a4 + v62);
        goto LABEL_41;
      }
    }

    else
    {
      v62 = 0;
    }

    v63 = (a4 + (v61 & 0xFFFFFFFFFFFFFFF8));
    v64 = (v49 + 2 * (v61 & 0xFFFFFFFFFFFFFFF8));
    v99 = (v49 + 2 * v62);
    v100 = (a4 + v62);
    v101 = v62 - (v61 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v102 = *v100++;
      *v99++ = vmovl_u8(v102);
      v101 += 8;
    }

    while (v101);
    if (v61 == (v61 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v65 = *v63++;
      *v64 = v65;
      v64 += 2;
    }

    while (v64 != v48);
    goto LABEL_42;
  }

  v49 = &v47[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
  v50 = 0uLL;
  v51 = &result[2 * v23];
  do
  {
    v126.val[0] = *a4;
    v52 = *(a4 + 16);
    v129.val[0] = *(a4 + 32);
    v53 = *(a4 + 48);
    a4 += 64;
    v54 = v53;
    v129.val[1] = 0uLL;
    v132.val[0] = v52;
    v126.val[1] = 0uLL;
    v55 = v51;
    vst2q_s8(v55, v126);
    v55 += 32;
    v132.val[1] = 0uLL;
    vst2q_s8(v55, v132);
    v56 = v51 + 64;
    vst2q_s8(v56, v129);
    v57 = v51 + 96;
    vst2q_s8(v57, *(&v50 - 1));
    v51 += 128;
  }

  while (v51 != v49);
  v58 = a2 - v23;
  if (v49 != v48)
  {
    goto LABEL_32;
  }

LABEL_42:
  v66 = a5;
  v67 = v58 - a5;
  if (v58 < a5)
  {
    goto LABEL_98;
  }

  v68 = &v47[2 * a5];
  if (a6)
  {
    v69 = *(a6 + 8);
    v70 = *(a6 + 4);
    if ((*(a6 + 16) & 4) == 0)
    {
      if (v70)
      {
        if (v70 == 1)
        {
          *v68 = v69->i16[0];
        }

        else
        {
          v89 = a8;
          v90 = a7;
          v91 = v20;
          v92 = v19;
          result = memcpy(&v47[2 * v66], v69, 2 * v70);
          v19 = v92;
          v20 = v91;
          a7 = v90;
          a8 = v89;
        }
      }

LABEL_67:
      v71 = *(a6 + 4);
      if (v67 >= v71)
      {
        goto LABEL_68;
      }

LABEL_98:
      __break(1u);
      return result;
    }

    v72 = &v68[2 * v70];
    if (v70 < 0x40)
    {
      v73 = &v47[2 * v66];
      if (v68 == v72)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v73 = &v68[2 * (v70 & 0xFFFFFFC0)];
      v74 = 0uLL;
      v75 = &v47[2 * v66];
      do
      {
        v127.val[0] = *v69;
        v76 = v69[1];
        v130.val[0] = v69[2];
        v77 = v69[3];
        v69 += 4;
        v78 = v77;
        v130.val[1] = 0uLL;
        v133.val[0] = v76;
        v127.val[1] = 0uLL;
        v79 = v75;
        vst2q_s8(v79, v127);
        v79 += 32;
        v133.val[1] = 0uLL;
        vst2q_s8(v79, v133);
        v80 = v75 + 64;
        vst2q_s8(v80, v130);
        v81 = v75 + 96;
        vst2q_s8(v81, *(&v74 - 1));
        v75 += 128;
      }

      while (v75 != v73);
      if (v73 == v72)
      {
        goto LABEL_67;
      }
    }

    v82 = &v47[2 * v70 + 2 * v66 - v73 - 2];
    if (v82 < 0xE || (v73 < v69->u64 + (v82 >> 1) + 1 ? (v83 = v69 >= (v82 & 0xFFFFFFFFFFFFFFFELL) + v73 + 2) : (v83 = 1), !v83))
    {
      v86 = v69;
      v87 = v73;
      goto LABEL_64;
    }

    v84 = (v82 >> 1) + 1;
    if (v82 >= 0x3E)
    {
      v85 = v84 & 0xFFFFFFFFFFFFFFE0;
      v113 = (v73 + 32);
      v114 = &v69[1];
      v115 = v84 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v116 = *v114[-2].i8;
        v117 = vmovl_u8(*v114);
        v118 = vmovl_high_u8(*v114->i8);
        v113[-2] = vmovl_u8(*v116.i8);
        v113[-1] = vmovl_high_u8(v116);
        *v113 = v117;
        v113[1] = v118;
        v113 += 4;
        v114 += 4;
        v115 -= 32;
      }

      while (v115);
      if (v84 == v85)
      {
        goto LABEL_67;
      }

      if ((v84 & 0x18) == 0)
      {
        v87 = (v73 + 2 * v85);
        v86 = (v69 + v85);
        goto LABEL_64;
      }
    }

    else
    {
      v85 = 0;
    }

    v86 = (v69 + (v84 & 0xFFFFFFFFFFFFFFF8));
    v87 = (v73 + 2 * (v84 & 0xFFFFFFFFFFFFFFF8));
    v119 = (v73 + 2 * v85);
    v120 = &v69->i8[v85];
    v121 = v85 - (v84 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v122 = *v120++;
      *v119++ = vmovl_u8(v122);
      v121 += 8;
    }

    while (v121);
    if (v84 == (v84 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_67;
    }

    do
    {
LABEL_64:
      v88 = v86->u8[0];
      v86 = (v86 + 1);
      *v87 = v88;
      v87 += 2;
    }

    while (v87 != v72);
    goto LABEL_67;
  }

  v71 = 0;
LABEL_68:

  return WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v68[2 * v71], v67 - v71, a7, a8, v19, v20, a11, v18, v17, v16);
}

void *WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(void *result, char *a2, int a3, unsigned __int8 *a4, size_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unsigned __int8 *a10, size_t a11, uint64_t a12, _BYTE *a13, size_t a14, uint64_t a15, char *a16, size_t a17, uint64_t a18, _BYTE *a19, size_t a20, uint64_t a21, char *a22, size_t a23)
{
  v23 = a14;
  v24 = a2;
  v25 = a10;
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

    v209 = a11;
    v199 = a21;
    v200 = a22;
    v201 = a18;
    v202 = a12;
    v203 = a23;
    v204 = a15;
    v205 = a16;
    v206 = a17;
    v207 = a20;
    v208 = a19;
    v198 = a13;
    v37 = a2;
    v210 = result;
    WTF::tryFastCompactMalloc((2 * a2 + 20));
    v36 = v211;
    if (!v211)
    {
      goto LABEL_175;
    }

    v33 = v211 + 20;
    *v211 = 2;
    *(v211 + 4) = v37;
    *(v211 + 8) = v211 + 20;
    *(v211 + 16) = 0;
    v34 = a5;
    v45 = v211 + 20 + 2 * a5;
    if (a5 < 0x40)
    {
      v46 = v211 + 20;
      v38 = a8;
      v32 = a7;
      v39 = a6;
      v48 = a4;
      v30 = a9;
    }

    else
    {
      v46 = v33 + 2 * (a5 & 0x7FFFFFFFFFFFFFC0);
      v47 = 0uLL;
      v35 = v211 + 20;
      v38 = a8;
      v32 = a7;
      v39 = a6;
      v48 = a4;
      v30 = a9;
      do
      {
        v212.val[0] = *v48;
        v49 = *(v48 + 1);
        v217.val[0] = *(v48 + 2);
        v50 = *(v48 + 3);
        v48 += 64;
        v51 = v50;
        v217.val[1] = 0uLL;
        v222.val[0] = v49;
        v212.val[1] = 0uLL;
        v52 = v35;
        vst2q_s8(v52, v212);
        v52 += 32;
        v222.val[1] = 0uLL;
        vst2q_s8(v52, v222);
        v53 = (v35 + 64);
        vst2q_s8(v53, v217);
        v54 = (v35 + 96);
        vst2q_s8(v54, *(&v47 - 1));
        v35 += 128;
      }

      while (v35 != v46);
    }

    if (v46 == v45)
    {
      goto LABEL_29;
    }

    v35 = v211 + 2 * v34 - v46;
    v55 = v35 + 18;
    if (v35 + 18 < 0xE || ((v35 = (v55 & 0xFFFFFFFFFFFFFFFELL) + v46 + 2, v46 < &v48[(v55 >> 1) + 1]) ? (v56 = v48 >= v35) : (v56 = 1), !v56))
    {
      v57 = v48;
      v58 = v46;
      goto LABEL_28;
    }

    v35 = (v55 >> 1) + 1;
    if (v55 >= 0x3E)
    {
      v31 = v35 & 0xFFFFFFFFFFFFFFE0;
      v138 = (v46 + 32);
      v139 = (v48 + 16);
      v140 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v141 = *v139[-2].i8;
        v142 = vmovl_u8(*v139);
        v143 = vmovl_high_u8(*v139->i8);
        v138[-2] = vmovl_u8(*v141.i8);
        v138[-1] = vmovl_high_u8(v141);
        *v138 = v142;
        v138[1] = v143;
        v138 += 4;
        v139 += 4;
        v140 -= 32;
      }

      while (v140);
      if (v35 == v31)
      {
        goto LABEL_29;
      }

      if ((v35 & 0x18) == 0)
      {
        v58 = (v46 + 2 * v31);
        v57 = &v48[v31];
        do
        {
LABEL_28:
          v59 = *v57++;
          *v58++ = v59;
        }

        while (v58 != v45);
        goto LABEL_29;
      }
    }

    else
    {
      v31 = 0;
    }

    v57 = &v48[v35 & 0xFFFFFFFFFFFFFFF8];
    v58 = (v46 + 2 * (v35 & 0xFFFFFFFFFFFFFFF8));
    v144 = (v46 + 2 * v31);
    v145 = &v48[v31];
    v31 -= v35 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v146 = *v145++;
      *v144++ = vmovl_u8(v146);
      v31 += 8;
    }

    while (v31);
    if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_28;
    }

LABEL_29:
    v40 = v34;
    v60 = v24 - v34;
    if (v24 >= v34)
    {
      v37 = (v33 + 2 * v34);
      if (!v39)
      {
        v65 = 0;
        goto LABEL_115;
      }

      v31 = *(v39 + 8);
      v61 = *(v39 + 4);
      v33 = *(v39 + 16);
      if ((v33 & 4) != 0)
      {
        v33 = &v37[2 * v61];
        if (v61 < 0x40)
        {
          v34 = v37;
        }

        else
        {
          v34 = &v37[2 * (v61 & 0xFFFFFFC0)];
          v66 = 0uLL;
          v67 = v37;
          do
          {
            v213.val[0] = *v31;
            v68 = *(v31 + 16);
            v218.val[0] = *(v31 + 32);
            v69 = *(v31 + 48);
            v31 += 64;
            v70 = v69;
            v218.val[1] = 0uLL;
            v223.val[0] = v68;
            v213.val[1] = 0uLL;
            v71 = v67;
            vst2q_s8(v71, v213);
            v71 += 32;
            v223.val[1] = 0uLL;
            vst2q_s8(v71, v223);
            v72 = v67 + 64;
            vst2q_s8(v72, v218);
            v73 = v67 + 96;
            vst2q_s8(v73, *(&v66 - 1));
            v67 += 128;
          }

          while (v67 != v34);
        }

        if (v34 != v33)
        {
          v80 = v211 + 2 * (v40 + v61) - v34 + 18;
          if (v80 < 0xE || v34 < v31 + (v80 >> 1) + 1 && v31 < (v80 & 0xFFFFFFFFFFFFFFFELL) + v34 + 2)
          {
            v81 = v31;
            v82 = v34;
            goto LABEL_72;
          }

          v163 = (v80 >> 1) + 1;
          if (v80 >= 0x3E)
          {
            v35 = v163 & 0xFFFFFFFFFFFFFFE0;
            v180 = (v34 + 32);
            v181 = (v31 + 16);
            v182 = v163 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v183 = *v181[-2].i8;
              v184 = vmovl_u8(*v181);
              v185 = vmovl_high_u8(*v181->i8);
              v180[-2] = vmovl_u8(*v183.i8);
              v180[-1] = vmovl_high_u8(v183);
              *v180 = v184;
              v180[1] = v185;
              v180 += 4;
              v181 += 4;
              v182 -= 32;
            }

            while (v182);
            if (v163 == v35)
            {
              goto LABEL_114;
            }

            if ((v163 & 0x18) == 0)
            {
              goto LABEL_241;
            }
          }

          else
          {
            v35 = 0;
          }

          v81 = (v31 + (v163 & 0xFFFFFFFFFFFFFFF8));
          v82 = (v34 + 2 * (v163 & 0xFFFFFFFFFFFFFFF8));
          v34 += 2 * v35;
          v186 = (v31 + v35);
          v35 -= v163 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v187 = *v186++;
            *v34 = vmovl_u8(v187);
            v34 += 16;
            v35 += 8;
          }

          while (v35);
          if (v163 != (v163 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_72;
          }
        }
      }

      else if (v61)
      {
        if (v61 == 1)
        {
          v33 = *v31;
          *v37 = v33;
        }

        else
        {
          v92 = v34;
          memcpy(v37, v31, 2 * v61);
          v40 = v92;
          v39 = a6;
          v32 = a7;
          v38 = a8;
        }
      }

      goto LABEL_114;
    }

    while (1)
    {
      do
      {
LABEL_240:
        __break(1u);
LABEL_241:
        v82 = (v34 + 2 * v35);
        v81 = (v31 + v35);
        do
        {
LABEL_72:
          v83 = *v81++;
          v34 = v83;
          *v82++ = v83;
        }

        while (v82 != v33);
LABEL_114:
        v65 = *(v39 + 4);
      }

      while (v60 < v65);
LABEL_115:
      v39 = &v37[2 * v65];
      v33 = v39 + 2 * v38;
      if (v38 < 0x40)
      {
        v93 = &v37[2 * v65];
      }

      else
      {
        v93 = v39 + 2 * (v38 & 0x7FFFFFFFFFFFFFC0);
        v94 = 0uLL;
        v95 = &v37[2 * v65];
        do
        {
          v214.val[0] = *v32;
          v96 = *(v32 + 16);
          v219.val[0] = *(v32 + 32);
          v97 = *(v32 + 48);
          v32 += 64;
          v98 = v97;
          v219.val[1] = 0uLL;
          v224.val[0] = v96;
          v214.val[1] = 0uLL;
          v99 = v95;
          vst2q_s8(v99, v214);
          v99 += 32;
          v224.val[1] = 0uLL;
          vst2q_s8(v99, v224);
          v100 = v95 + 64;
          vst2q_s8(v100, v219);
          v101 = v95 + 96;
          vst2q_s8(v101, *(&v94 - 1));
          v95 += 128;
        }

        while (v95 != v93);
      }

      v34 = v60 - v65;
      if (v93 == v33)
      {
        goto LABEL_131;
      }

      v102 = v36 + 2 * (v38 + v65 + v40) - v93 + 18;
      if (v102 >= 0xE && (v93 < v32 + (v102 >> 1) + 1 ? (v103 = v32 >= (v102 & 0xFFFFFFFFFFFFFFFELL) + v93 + 2) : (v103 = 1), v103))
      {
        v104 = (v102 >> 1) + 1;
        if (v102 < 0x3E)
        {
          v105 = 0;
LABEL_189:
          v106 = (v32 + (v104 & 0xFFFFFFFFFFFFFFF8));
          v35 = v93 + 2 * (v104 & 0xFFFFFFFFFFFFFFF8);
          v152 = (v93 + 2 * v105);
          v32 += v105;
          v153 = v105 - (v104 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v154 = *v32;
            v32 += 8;
            *v152++ = vmovl_u8(v154);
            v153 += 8;
          }

          while (v153);
          if (v104 == (v104 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }

        v105 = v104 & 0xFFFFFFFFFFFFFFE0;
        v147 = (v93 + 32);
        v35 = v32 + 16;
        v148 = v104 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v149 = *(v35 - 16);
          v150 = vmovl_u8(*v35);
          v151 = vmovl_high_u8(*v35);
          v147[-2] = vmovl_u8(*v149.i8);
          v147[-1] = vmovl_high_u8(v149);
          *v147 = v150;
          v147[1] = v151;
          v147 += 4;
          v35 += 32;
          v148 -= 32;
        }

        while (v148);
        if (v104 == v105)
        {
          goto LABEL_131;
        }

        if ((v104 & 0x18) != 0)
        {
          goto LABEL_189;
        }

        v35 = v93 + 2 * v105;
        v106 = (v32 + v105);
      }

      else
      {
        v106 = v32;
        v35 = v93;
      }

      do
      {
LABEL_130:
        v107 = *v106++;
        v32 = v107;
        *v35 = v107;
        v35 += 2;
      }

      while (v35 != v33);
LABEL_131:
      v60 = v38;
      v108 = v34 - v38;
      if (v34 >= v38)
      {
        v37 = (v39 + 2 * v38);
        if (!v30)
        {
          v34 = 0;
          goto LABEL_157;
        }

        v31 = *(v30 + 8);
        v39 = *(v30 + 4);
        v38 = *(v30 + 16);
        if ((v38 & 4) == 0)
        {
          if (v39)
          {
            if (v39 == 1)
            {
              v38 = *v31;
              *v37 = v38;
            }

            else
            {
              v121 = v40;
              memcpy(v37, v31, 2 * v39);
              v40 = v121;
            }
          }

          goto LABEL_156;
        }

        v38 = &v37[2 * v39];
        if (v39 < 0x40)
        {
          v32 = v37;
        }

        else
        {
          v32 = &v37[2 * (v39 & 0xFFFFFFC0)];
          v109 = 0uLL;
          v33 = v37;
          do
          {
            v215.val[0] = *v31;
            v110 = *(v31 + 16);
            v220.val[0] = *(v31 + 32);
            v111 = *(v31 + 48);
            v31 += 64;
            v112 = v111;
            v220.val[1] = 0uLL;
            v225.val[0] = v110;
            v215.val[1] = 0uLL;
            v113 = v33;
            vst2q_s8(v113, v215);
            v113 += 32;
            v225.val[1] = 0uLL;
            vst2q_s8(v113, v225);
            v114 = (v33 + 64);
            vst2q_s8(v114, v220);
            v115 = (v33 + 96);
            vst2q_s8(v115, *(&v109 - 1));
            v33 += 128;
          }

          while (v33 != v32);
        }

        if (v32 != v38)
        {
          v39 = v36 + 2 * (v65 + v39 + v40 + v60) - v32;
          v116 = v39 + 18;
          if (v39 + 18 < 0xE || ((v39 = (v116 & 0xFFFFFFFFFFFFFFFELL) + v32 + 2, v32 < v31 + (v116 >> 1) + 1) ? (v117 = v31 >= v39) : (v117 = 1), !v117))
          {
            v33 = v31;
            v119 = v32;
            goto LABEL_153;
          }

          v39 = (v116 >> 1) + 1;
          if (v116 >= 0x3E)
          {
            v118 = v39 & 0xFFFFFFFFFFFFFFE0;
            v33 = v32 + 32;
            v188 = (v31 + 16);
            v189 = v39 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v190 = *v188[-2].i8;
              v191 = vmovl_u8(*v188);
              v192 = vmovl_high_u8(*v188->i8);
              *(v33 - 32) = vmovl_u8(*v190.i8);
              *(v33 - 16) = vmovl_high_u8(v190);
              *v33 = v191;
              *(v33 + 16) = v192;
              v33 += 64;
              v188 += 4;
              v189 -= 32;
            }

            while (v189);
            if (v39 == v118)
            {
              goto LABEL_156;
            }

            if ((v39 & 0x18) == 0)
            {
              v119 = (v32 + 2 * v118);
              v33 = v31 + v118;
              do
              {
LABEL_153:
                v120 = *v33++;
                v32 = v120;
                *v119++ = v120;
              }

              while (v119 != v38);
              goto LABEL_156;
            }
          }

          else
          {
            v118 = 0;
          }

          v33 = v31 + (v39 & 0xFFFFFFFFFFFFFFF8);
          v119 = (v32 + 2 * (v39 & 0xFFFFFFFFFFFFFFF8));
          v32 += 2 * v118;
          v193 = (v31 + v118);
          v194 = v118 - (v39 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v195 = *v193++;
            *v32 = vmovl_u8(v195);
            v32 += 16;
            v194 += 8;
          }

          while (v194);
          if (v39 == (v39 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_156;
          }

          goto LABEL_153;
        }

LABEL_156:
        v34 = *(v30 + 4);
        if (v108 >= v34)
        {
LABEL_157:
          v38 = &v37[2 * v34];
          v122 = (v38 + 2 * v209);
          if (v209 < 0x40)
          {
            v33 = &v37[2 * v34];
            v125 = v198;
          }

          else
          {
            v33 = v38 + 2 * (v209 & 0x7FFFFFFFFFFFFFC0);
            v123 = 0uLL;
            v124 = &v37[2 * v34];
            v125 = v198;
            do
            {
              v216.val[0] = *v25;
              v126 = *(v25 + 1);
              v221.val[0] = *(v25 + 2);
              v127 = *(v25 + 3);
              v25 += 64;
              v128 = v127;
              v221.val[1] = 0uLL;
              v226.val[0] = v126;
              v216.val[1] = 0uLL;
              v129 = v124;
              vst2q_s8(v129, v216);
              v129 += 32;
              v226.val[1] = 0uLL;
              vst2q_s8(v129, v226);
              v130 = v124 + 64;
              vst2q_s8(v130, v221);
              v131 = v124 + 96;
              vst2q_s8(v131, *(&v123 - 1));
              v124 += 128;
            }

            while (v124 != v33);
          }

          v39 = v108 - v34;
          if (v33 == v122)
          {
            goto LABEL_173;
          }

          v34 = v36 + 2 * (v209 + v65 + v34 + v40 + v60) - v33;
          v132 = v34 + 18;
          if (v34 + 18 >= 0xE && ((v34 = (v132 & 0xFFFFFFFFFFFFFFFELL) + v33 + 2, v33 < &v25[(v132 >> 1) + 1]) ? (v133 = v25 >= v34) : (v133 = 1), v133))
          {
            v34 = (v132 >> 1) + 1;
            if (v132 < 0x3E)
            {
              v134 = 0;
LABEL_197:
              v35 = v34 & 0xFFFFFFFFFFFFFFF8;
              v135 = &v25[v34 & 0xFFFFFFFFFFFFFFF8];
              v136 = (v33 + 2 * (v34 & 0xFFFFFFFFFFFFFFF8));
              v33 += 2 * v134;
              v160 = &v25[v134];
              v161 = v134 - (v34 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v162 = *v160++;
                *v33 = vmovl_u8(v162);
                v33 += 16;
                v161 += 8;
              }

              while (v161);
              if (v34 == v35)
              {
                goto LABEL_173;
              }

              goto LABEL_172;
            }

            v134 = v34 & 0xFFFFFFFFFFFFFFE0;
            v155 = (v33 + 32);
            v156 = (v25 + 16);
            v35 = v34 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v157 = *v156[-2].i8;
              v158 = vmovl_u8(*v156);
              v159 = vmovl_high_u8(*v156->i8);
              v155[-2] = vmovl_u8(*v157.i8);
              v155[-1] = vmovl_high_u8(v157);
              *v155 = v158;
              v155[1] = v159;
              v155 += 4;
              v156 += 4;
              v35 -= 32;
            }

            while (v35);
            if (v34 == v134)
            {
              goto LABEL_173;
            }

            if ((v34 & 0x18) != 0)
            {
              goto LABEL_197;
            }

            v136 = (v33 + 2 * v134);
            v135 = &v25[v134];
          }

          else
          {
            v135 = v25;
            v136 = v33;
          }

          do
          {
LABEL_172:
            v137 = *v135++;
            v33 = v137;
            *v136++ = v137;
          }

          while (v136 != v122);
LABEL_173:
          v32 = v209;
          v31 = v39 - v209;
          if (v39 >= v209)
          {
            WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v38 + 2 * v209), v31, v202, v125, v23, v204, v205, v206, v201, v208, v207, v199, v200, v203);
            goto LABEL_175;
          }
        }
      }
    }
  }

  if (!a2)
  {
LABEL_11:
    v36 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_176;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_10:
    v36 = 0;
    goto LABEL_176;
  }

  v209 = a11;
  v199 = a21;
  v200 = a22;
  v201 = a18;
  v202 = a12;
  v203 = a23;
  v204 = a15;
  v205 = a16;
  v206 = a17;
  v207 = a20;
  v208 = a19;
  v26 = a2;
  v30 = a7;
  v210 = result;
  WTF::tryFastCompactMalloc((a2 + 20));
  v36 = v211;
  if (!v211)
  {
    goto LABEL_175;
  }

  v198 = a13;
  v37 = (v211 + 20);
  *v211 = 2;
  *(v211 + 4) = v26;
  *(v211 + 8) = v211 + 20;
  v38 = 4;
  *(v211 + 16) = 4;
  v39 = a6;
  v40 = a5;
  v23 = a14;
  if (a5)
  {
    if (a5 == 1)
    {
      v38 = *a4;
      *v37 = v38;
    }

    else
    {
      memcpy((v211 + 20), a4, a5);
      v40 = a5;
      v39 = a6;
    }
  }

  v60 = v40;
  v56 = v24 >= v40;
  v62 = v24 - v40;
  if (!v56)
  {
    goto LABEL_240;
  }

  v37 += v40;
  v40 = a8;
  v31 = v30;
  if (!v39)
  {
    v64 = 0;
    goto LABEL_76;
  }

  v38 = *(v39 + 8);
  v32 = *(v39 + 4);
  v33 = *(v39 + 16);
  if ((v33 & 4) != 0)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        v38 = *v38;
        *v37 = v38;
      }

      else
      {
        memcpy(v37, *(v39 + 8), *(v39 + 4));
        v39 = a6;
        v31 = v30;
        v40 = a8;
      }
    }
  }

  else
  {
    v33 = &v37[v32];
    if (v32 < 0x10)
    {
      v34 = v37;
    }

    else
    {
      v34 = v37;
      do
      {
        v63 = vld2q_s8(v38);
        v38 += 32;
        *v34 = v63;
        v34 += 16;
      }

      while (v34 != &v37[v32 & 0xFFFFFFF0]);
    }

    if (v34 != v33)
    {
      v74 = v211 + v32 + v60;
      v32 = v74 - v34 + 20;
      if (v32 < 4 || (v34 < v38 - 2 * v34 + 2 * v74 + 40 ? (v75 = v38 >= v74 + 20) : (v75 = 1), !v75))
      {
        v77 = v34;
        v78 = v38;
        goto LABEL_64;
      }

      if (v32 >= 0x20)
      {
        v76 = v32 & 0xFFFFFFFFFFFFFFE0;
        v164 = (v38 + 32);
        v165 = (v34 + 16);
        v35 = v32 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v167 = v164[-2];
          v166 = v164[-1];
          v169 = *v164;
          v168 = v164[1];
          v164 += 4;
          v165[-1] = vuzp1q_s8(v167, v166);
          *v165 = vuzp1q_s8(v169, v168);
          v165 += 2;
          v35 -= 32;
        }

        while (v35);
        if (v32 == v76)
        {
          goto LABEL_75;
        }

        if ((v32 & 0x1C) == 0)
        {
          v78 = (v38 + 2 * v76);
          v77 = (v34 + v76);
          do
          {
LABEL_64:
            v79 = *v78;
            v78 += 2;
            v38 = v79;
            *v77++ = v79;
          }

          while (v77 != v33);
          goto LABEL_75;
        }
      }

      else
      {
        v76 = 0;
      }

      v35 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      v77 = (v34 + (v32 & 0xFFFFFFFFFFFFFFFCLL));
      v78 = (v38 + 2 * (v32 & 0xFFFFFFFFFFFFFFFCLL));
      v38 += 2 * v76;
      v34 += v76;
      v170 = v76 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v171 = *v38;
        v38 += 8;
        *v34 = vuzp1_s8(v171, v171).u32[0];
        v34 += 4;
        v170 += 4;
      }

      while (v170);
      if (v32 != v35)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_75:
  v64 = *(v39 + 4);
  if (v62 < v64)
  {
    goto LABEL_240;
  }

LABEL_76:
  v84 = v62 - v64;
  v37 += v64;
  if (v40)
  {
    if (v40 == 1)
    {
      v38 = *v31;
      *v37 = v38;
    }

    else
    {
      memcpy(v37, v31, v40);
      v40 = a8;
    }
  }

  v33 = v40;
  v56 = v84 >= v40;
  v85 = v84 - v40;
  if (!v56)
  {
    goto LABEL_240;
  }

  v37 += v40;
  if (!a9)
  {
    v38 = 0;
    goto LABEL_107;
  }

  v31 = *(a9 + 8);
  v40 = *(a9 + 4);
  if ((*(a9 + 16) & 4) != 0)
  {
    if (v40)
    {
      if (v40 == 1)
      {
        *v37 = *v31;
      }

      else
      {
        memcpy(v37, v31, v40);
      }
    }
  }

  else
  {
    v86 = &v37[v40];
    if (v40 < 0x10)
    {
      v32 = v37;
    }

    else
    {
      v39 = &v37[v40 & 0xFFFFFFF0];
      v32 = v37;
      do
      {
        v87 = vld2q_s8(v31);
        v31 += 32;
        *v32 = v87;
        v32 += 16;
      }

      while (v32 != v39);
    }

    if (v32 != v86)
    {
      v39 = v64 + v211 + v40 + v60 + v33 - v32 + 20;
      if (v39 < 4 || ((v88 = v64 + v211 + v40, v32 < v31 - 2 * v32 + 2 * (v88 + v60 + v33) + 40) ? (v89 = v31 >= v88 + v33 + v60 + 20) : (v89 = 1), !v89))
      {
        v33 = v32;
        v34 = v31;
        goto LABEL_103;
      }

      if (v39 >= 0x20)
      {
        v90 = v39 & 0xFFFFFFFFFFFFFFE0;
        v33 = v31 + 32;
        v34 = v32 + 16;
        v172 = v39 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v174 = *(v33 - 32);
          v173 = *(v33 - 16);
          v176 = *v33;
          v175 = *(v33 + 16);
          v33 += 64;
          *(v34 - 16) = vuzp1q_s8(v174, v173);
          *v34 = vuzp1q_s8(v176, v175);
          v34 += 32;
          v172 -= 32;
        }

        while (v172);
        if (v39 == v90)
        {
          goto LABEL_106;
        }

        if ((v39 & 0x1C) == 0)
        {
          v34 = v31 + 2 * v90;
          v33 = v32 + v90;
          do
          {
LABEL_103:
            v91 = *v34;
            v34 += 2;
            v32 = v91;
            *v33++ = v91;
          }

          while (v33 != v86);
          goto LABEL_106;
        }
      }

      else
      {
        v90 = 0;
      }

      v33 = v32 + (v39 & 0xFFFFFFFFFFFFFFFCLL);
      v34 = v31 + 2 * (v39 & 0xFFFFFFFFFFFFFFFCLL);
      v177 = (v31 + 2 * v90);
      v32 += v90;
      v178 = v90 - (v39 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v179 = *v177++;
        *v32 = vuzp1_s8(v179, v179).u32[0];
        v32 += 4;
        v178 += 4;
      }

      while (v178);
      if (v39 != (v39 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_103;
      }
    }
  }

LABEL_106:
  v38 = *(a9 + 4);
  if (v85 < v38)
  {
    goto LABEL_240;
  }

LABEL_107:
  v60 = v85 - v38;
  v37 += v38;
  if (a11)
  {
    if (a11 == 1)
    {
      *v37 = *a10;
    }

    else
    {
      memcpy(v37, a10, a11);
    }
  }

  v38 = a11;
  v31 = v60 - a11;
  if (v60 < a11)
  {
    goto LABEL_240;
  }

  WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v37[a11], v31, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
LABEL_175:
  result = v210;
LABEL_176:
  *result = v36;
  return result;
}