void *llvm::ConstantFoldInsertValueInstruction(llvm::Constant *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v22[32] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = *a1;
    v8 = *(v7 + 8);
    if (v7)
    {
      v9 = v8 == 16;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *(v7 + 12);
    }

    else
    {
      v10 = *(v7 + 32);
    }

    v20 = v22;
    v21 = 0x2000000000;
    if (v10)
    {
      v11 = 0;
      v12 = a4 - 1;
      while (1)
      {
        AggregateElement = llvm::Constant::getAggregateElement(a1, v11);
        if (!AggregateElement)
        {
          break;
        }

        inserted = AggregateElement;
        if (v11 == *a3)
        {
          inserted = llvm::ConstantFoldInsertValueInstruction(AggregateElement, a2, a3 + 1, v12);
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v20, inserted);
        v11 = (v11 + 1);
        if (v10 == v11)
        {
          v7 = *a1;
          v8 = *(*a1 + 8);
          v15 = v20;
          v16 = v21;
          goto LABEL_16;
        }
      }

      a2 = 0;
    }

    else
    {
      v16 = 0;
      v15 = v22;
LABEL_16:
      if (v8 == 16)
      {
        v17 = llvm::ConstantStruct::get(v7, v15, v16);
      }

      else
      {
        v17 = llvm::ConstantArray::get(v7, v15, v16);
      }

      a2 = v17;
    }

    if (v20 != v22)
    {
      free(v20);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return a2;
}

llvm::ConstantExpr *llvm::ConstantFoldUnaryInstruction(llvm *this, unsigned __int8 *a2, llvm::Constant *a3)
{
  v3 = a2;
  v37 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(*a2 + 8);
  if ((*(*a2 + 8) & 0xFE) != 0x12 || v6 == 19)
  {
    v9 = a2[16];
    v8 = this == 12;
    if (this == 12 && (v9 - 11) < 2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = this == 12;
    v9 = a2[16];
  }

  if (v9 == 17)
  {
    if (v8)
    {
      v10 = *v5;
      llvm::APFloat::Storage::Storage(&v35, (a2 + 32));
      llvm::APFloat::changeSign(v34);
      if (v35 == &llvm::semPPCDoubleDouble)
      {
        v32 = &llvm::semPPCDoubleDouble;
        v33[0] = v36;
        v35 = &llvm::semBogus;
        v36 = 0;
      }

      else
      {
        v32 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v32, &v35);
      }

      v3 = llvm::ConstantFP::get(v10, &v31);
      llvm::APFloat::Storage::~Storage(&v32);
      llvm::APFloat::Storage::~Storage(&v35);
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (v6 != 18)
  {
LABEL_18:
    v3 = 0;
LABEL_31:
    v30 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v11 = **v5;
  SplatValue = llvm::Constant::getSplatValue(a2, 0);
  if (!SplatValue || (v14 = llvm::ConstantFoldUnaryInstruction(this, SplatValue, v13)) == 0)
  {
    v31 = v33;
    v32 = 0x1000000000;
    v20 = *(v5 + 8);
    if (v20)
    {
      v21 = 0;
      while (1)
      {
        v22 = llvm::ConstantInt::get((v11 + 1992), v21);
        Element = llvm::ConstantExpr::getExtractElement(v3, v22, 0, v23, v24);
        v27 = llvm::ConstantFoldUnaryInstruction(this, Element, v26);
        if (!v27)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v31, v27);
        v21 = (v21 + 1);
        if (v20 == v21)
        {
          v28 = v31;
          v29 = v32;
          goto LABEL_27;
        }
      }

      v3 = 0;
    }

    else
    {
      v29 = 0;
      v28 = v33;
LABEL_27:
      v3 = llvm::ConstantVector::get(v28, v29);
    }

    if (v31 != v33)
    {
      free(v31);
    }

    goto LABEL_31;
  }

  v16 = *MEMORY[0x277D85DE8];
  v17 = v14;
  v18 = (*(v5 + 8) | ((*(v5 + 8) == 19) << 32));

  return llvm::ConstantVector::getSplat(v18, v17, v15);
}

llvm::Constant *llvm::ConstantFoldBinaryInstruction(llvm *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v121[16] = *MEMORY[0x277D85DE8];
  BinOpIdentity = llvm::ConstantExpr::getBinOpIdentity(this, *a2, 0, 0);
  if (BinOpIdentity)
  {
    if (BinOpIdentity == a2)
    {
      goto LABEL_132;
    }

    if (BinOpIdentity == a3)
    {
      goto LABEL_226;
    }
  }

  v12 = *(a2 + 16);
  if (v12 == 12 || (v13 = *(a3 + 16), v13 == 12))
  {
    v14 = *a2;
LABEL_7:
    v15 = *MEMORY[0x277D85DE8];

    return llvm::PoisonValue::get(v14, v8);
  }

  v17 = *a2;
  if ((*(*a2 + 8) & 0xFE) != 0x12 || *(*a2 + 8) == 19)
  {
    v19 = v12 - 11;
    v20 = v13 - 11;
    if ((v12 - 11) < 2u || (v13 - 11) <= 1u)
    {
      switch(this)
      {
        case 13:
        case 15:
          goto LABEL_127;
        case 14:
        case 18:
        case 21:
        case 24:
          goto LABEL_20;
        case 16:
          if (llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_neg_zero_fp,llvm::ConstantFP>::match<llvm::Constant>(a2) && *(a3 + 16) - 11 < 2)
          {
            goto LABEL_132;
          }

LABEL_20:
          if (*(a2 + 16) - 11 <= 1 && *(a3 + 16) - 11 < 2)
          {
            goto LABEL_226;
          }

          v22 = *a2;
          v23 = *MEMORY[0x277D85DE8];

          return llvm::ConstantFP::getNaN(v22, 0, 0);
        case 17:
          if ((v20 | v19) < 2u)
          {
            goto LABEL_226;
          }

          v118 = 0;
          __src = &v118;
          LOBYTE(v120) = 0;
          if ((llvm::PatternMatch::apint_match::match<llvm::Constant>(&__src, a2) & 1) == 0)
          {
            v116 = &v118;
            v117 = 0;
            if ((llvm::PatternMatch::apint_match::match<llvm::Constant>(&v116, a3) & 1) == 0)
            {
              goto LABEL_125;
            }
          }

          v54 = v118;
          if (*(v118 + 8) >= 0x41u)
          {
            v54 = *v118;
          }

          if ((*v54 & 1) == 0)
          {
            goto LABEL_125;
          }

          NullValue = llvm::UndefValue::get(*a2, v8);
          goto LABEL_278;
        case 19:
        case 20:
          if (llvm::PatternMatch::undef_match::check(a3, v8) || llvm::PatternMatch::is_zero::match<llvm::Constant>(&__src + 1, a3))
          {
            goto LABEL_91;
          }

          if (llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_one,llvm::ConstantInt>::match<llvm::Constant>(&__src, a3))
          {
            goto LABEL_226;
          }

          goto LABEL_125;
        case 22:
        case 23:
          if (!llvm::PatternMatch::undef_match::check(a3, v8) && !llvm::PatternMatch::is_zero::match<llvm::Constant>(&__src + 1, a3))
          {
            goto LABEL_125;
          }

LABEL_91:
          v39 = *a3;
          goto LABEL_277;
        case 25:
        case 26:
        case 27:
          if ((v13 - 11) <= 1u)
          {
            goto LABEL_81;
          }

          if (llvm::PatternMatch::is_zero::match<llvm::Constant>(&__src, a3))
          {
            goto LABEL_226;
          }

LABEL_125:
          NullValue = llvm::Constant::getNullValue(*a2, v8);
          goto LABEL_278;
        case 28:
          v52 = a2;
          if ((v20 | v19) < 2u)
          {
            goto LABEL_227;
          }

          goto LABEL_77;
        case 29:
          v52 = a2;
          if ((v20 | v19) < 2u)
          {
            goto LABEL_227;
          }

          v53 = *MEMORY[0x277D85DE8];

          return llvm::Constant::getAllOnesValue(v17, v8);
        case 30:
          if ((v20 | v19) <= 1u)
          {
            goto LABEL_77;
          }

LABEL_127:
          v56 = *MEMORY[0x277D85DE8];

          return llvm::UndefValue::get(v17, v8);
        default:
          break;
      }
    }
  }

  if (v13 != 16)
  {
    if (v12 != 16 || this > 0x1E || ((1 << this) & 0x70066000) == 0)
    {
      goto LABEL_158;
    }

    v26 = *MEMORY[0x277D85DE8];
    v27 = this;
    v28 = a3;
    v29 = a2;
    goto LABEL_37;
  }

  if (this <= 21)
  {
    if (this > 18)
    {
      if ((this - 19) >= 2)
      {
        goto LABEL_158;
      }

      v24 = *(a3 + 8);
      if (v24 > 0x40)
      {
        v35 = llvm::APInt::countLeadingZerosSlowCase((a3 + 24));
        if (v35 != v24 - 1)
        {
LABEL_80:
          if (v35 == v24)
          {
            goto LABEL_81;
          }

LABEL_158:
          v47 = *(a2 + 16);
LABEL_159:
          if (v47 != 17)
          {
            if (v47 == 16)
            {
              if (*(a3 + 16) == 16)
              {
                v64 = (a3 + 24);
                switch(this)
                {
                  case 13:
                    v65 = **a2;
                    v115 = *(a2 + 8);
                    if (v115 > 0x40)
                    {
                      operator new[]();
                    }

                    v114 = *(a2 + 3);
                    llvm::APInt::operator+=(&v114, v64);
                    LODWORD(v120) = v115;
                    __src = v114;
                    v115 = 0;
                    v52 = llvm::ConstantInt::get(v65, &__src, v108, v109);
                    if (v120 >= 0x41 && __src)
                    {
                      MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
                    }

                    if (v115 < 0x41 || !v114)
                    {
                      goto LABEL_227;
                    }

                    goto LABEL_285;
                  case 15:
                    v98 = **a2;
                    v113 = *(a2 + 8);
                    if (v113 > 0x40)
                    {
                      operator new[]();
                    }

                    v112 = *(a2 + 3);
                    llvm::APInt::operator-=(&v112, v64);
                    LODWORD(v120) = v113;
                    __src = v112;
                    v113 = 0;
                    v52 = llvm::ConstantInt::get(v98, &__src, v110, v111);
                    if (v120 >= 0x41 && __src)
                    {
                      MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
                    }

                    if (v113 >= 0x41 && v112)
                    {
                      goto LABEL_285;
                    }

                    goto LABEL_227;
                  case 17:
                    v95 = **a2;
                    llvm::APInt::operator*(a2 + 24, v64, &__src);
                    goto LABEL_283;
                  case 19:
                    v95 = **a2;
                    llvm::APInt::udiv((a2 + 24), v64, &__src);
                    goto LABEL_283;
                  case 20:
                    if (llvm::APInt::isAllOnes((a3 + 24)) && llvm::APInt::isMinSignedValue((a2 + 24)))
                    {
                      goto LABEL_276;
                    }

                    v95 = **a2;
                    llvm::APInt::sdiv((a2 + 24), v64, &__src);
                    goto LABEL_283;
                  case 22:
                    v95 = **a2;
                    llvm::APInt::urem((a2 + 24), v64, &__src);
                    goto LABEL_283;
                  case 23:
                    if (llvm::APInt::isAllOnes((a3 + 24)) && llvm::APInt::isMinSignedValue((a2 + 24)))
                    {
                      goto LABEL_276;
                    }

                    v95 = **a2;
                    llvm::APInt::srem((a2 + 24), v64, &__src);
                    goto LABEL_283;
                  case 25:
                    v99 = *(a2 + 8);
                    v100 = *(a3 + 8);
                    v101 = v64;
                    if (v100 < 0x41)
                    {
                      goto LABEL_264;
                    }

                    if (v100 - llvm::APInt::countLeadingZerosSlowCase(v64) >= 0x41)
                    {
                      goto LABEL_276;
                    }

                    v101 = *v64;
LABEL_264:
                    v39 = *a2;
                    if (*v101 >= v99)
                    {
                      goto LABEL_277;
                    }

                    v95 = *v39;
                    llvm::APInt::shl((a2 + 24), v64, &__src);
                    goto LABEL_283;
                  case 26:
                    v105 = *(a2 + 8);
                    v106 = *(a3 + 8);
                    v107 = v64;
                    if (v106 < 0x41)
                    {
                      goto LABEL_274;
                    }

                    if (v106 - llvm::APInt::countLeadingZerosSlowCase(v64) >= 0x41)
                    {
                      goto LABEL_276;
                    }

                    v107 = *v64;
LABEL_274:
                    v39 = *a2;
                    if (*v107 >= v105)
                    {
                      goto LABEL_277;
                    }

                    v95 = *v39;
                    llvm::APInt::lshr((a2 + 24), v64, &__src);
                    goto LABEL_283;
                  case 27:
                    v102 = *(a2 + 8);
                    v103 = *(a3 + 8);
                    v104 = v64;
                    if (v103 < 0x41)
                    {
                      goto LABEL_269;
                    }

                    if (v103 - llvm::APInt::countLeadingZerosSlowCase(v64) >= 0x41)
                    {
LABEL_276:
                      v39 = *a2;
                      goto LABEL_277;
                    }

                    v104 = *v64;
LABEL_269:
                    v39 = *a2;
                    if (*v104 >= v102)
                    {
                      goto LABEL_277;
                    }

                    v95 = *v39;
                    llvm::APInt::ashr((a2 + 24), v64, &__src);
LABEL_283:
                    v52 = llvm::ConstantInt::get(v95, &__src, v9, v10);
                    if (v120 >= 0x41 && __src)
                    {
LABEL_285:
                      MEMORY[0x277C69E10]();
                    }

                    break;
                  case 28:
                    v95 = **a2;
                    v96 = *(a2 + 8);
                    if (v96 > 0x40)
                    {
                      operator new[]();
                    }

                    v97 = (*v64 & *(a2 + 3));
                    goto LABEL_282;
                  case 29:
                    v95 = **a2;
                    v96 = *(a2 + 8);
                    if (v96 > 0x40)
                    {
                      operator new[]();
                    }

                    v97 = (*v64 | *(a2 + 3));
                    goto LABEL_282;
                  case 30:
                    v95 = **a2;
                    v96 = *(a2 + 8);
                    if (v96 > 0x40)
                    {
                      operator new[]();
                    }

                    v97 = (*v64 ^ *(a2 + 3));
LABEL_282:
                    LODWORD(v120) = v96;
                    __src = v97;
                    goto LABEL_283;
                  default:
                    goto LABEL_207;
                }

                goto LABEL_227;
              }

              if (this <= 0x1B && ((1 << this) & 0xED80000) != 0)
              {
                v69 = *(a2 + 8);
                if (v69 > 0x40)
                {
                  if (llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v69)
                  {
                    goto LABEL_226;
                  }
                }

                else if (!*(a2 + 3))
                {
                  goto LABEL_226;
                }
              }
            }

            else
            {
              v66 = *a2;
              if (*a2 && (*(v66 + 2) & 0xFE) == 0x12)
              {
                SplatValue = llvm::Constant::getSplatValue(a3, 0);
                if (SplatValue)
                {
                  v68 = SplatValue;
                  if (this <= 0x17 && ((1 << this) & 0xD80000) != 0 && llvm::Constant::isNullValue(SplatValue))
                  {
                    v39 = v66;
LABEL_277:
                    NullValue = llvm::PoisonValue::get(v39, v8);
                    goto LABEL_278;
                  }

                  v70 = llvm::Constant::getSplatValue(a2, 0);
                  if (v70)
                  {
                    if (((1 << this) & 0x1FD4000) != 0)
                    {
                      v71 = llvm::ConstantFoldBinaryInstruction(this, v70, v68, v10);
                    }

                    else
                    {
                      v71 = llvm::ConstantExpr::get(this, v70, v68, 0, 0, v11);
                    }

                    if (v71)
                    {
                      NullValue = llvm::ConstantVector::getSplat(*(v66 + 8) | ((*(v66 + 8) == 19) << 32), v71);
                      goto LABEL_278;
                    }

                    goto LABEL_238;
                  }
                }

                if (*(v66 + 8) == 18)
                {
                  __src = v121;
                  v120 = 0x1000000000;
                  v72 = *(v66 + 8);
                  if (v72)
                  {
                    v73 = 0;
                    v74 = **v66;
                    v75 = 1 << this;
                    while (1)
                    {
                      v76 = llvm::ConstantInt::get((v74 + 1992), v73, 0, v10);
                      Element = llvm::ConstantExpr::getExtractElement(a2, v76, 0, v77);
                      v80 = llvm::ConstantExpr::getExtractElement(a3, v76, 0, v79);
                      v83 = v80;
                      if ((v75 & 0x7E02A000) != 0)
                      {
                        v84 = llvm::ConstantExpr::get(this, Element, v80, 0, 0, v82);
                      }

                      else
                      {
                        if ((v75 & 0x1254000) == 0 && llvm::Constant::isNullValue(v80))
                        {
                          v52 = llvm::PoisonValue::get(v66, v85);
                          goto LABEL_242;
                        }

                        v84 = llvm::ConstantFoldBinaryInstruction(this, Element, v83, v81);
                      }

                      if (!v84)
                      {
                        v52 = 0;
                        goto LABEL_242;
                      }

                      llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v84);
                      v73 = (v73 + 1);
                      if (v72 == v73)
                      {
                        v86 = __src;
                        v87 = v120;
                        goto LABEL_240;
                      }
                    }
                  }

                  v87 = 0;
                  v86 = v121;
LABEL_240:
                  v52 = llvm::ConstantVector::get(v86, v87);
LABEL_242:
                  if (__src != v121)
                  {
                    free(__src);
                  }

                  goto LABEL_227;
                }
              }
            }

LABEL_207:
            if (*(a2 + 16) == 5)
            {
              if (this <= 0x1E && ((1 << this) & 0x70022000) != 0 && *(a2 + 9) == this)
              {
                v88 = llvm::ConstantExpr::get(this, (a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[4], a3, 0, 0, v11);
                v89 = v88;
                if (*(v88 + 16) != 5 || *(v88 + 18) != this)
                {
                  v90 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
                  v91 = this;
LABEL_234:
                  NullValue = llvm::ConstantExpr::get(v91, v90, v89, 0, 0, v11);
                  goto LABEL_278;
                }
              }
            }

            else if (*(a3 + 16) == 5 && this <= 0x1E && ((1 << this) & 0x70066000) != 0)
            {
              NullValue = llvm::ConstantFoldBinaryInstruction(this, a3, a2, v10);
LABEL_278:
              v52 = NullValue;
              goto LABEL_227;
            }

            if (*(*a2 + 8) == 269)
            {
              if (this <= 18)
              {
                if (this == 13 || this == 15)
                {
                  v91 = 30;
                }

                else
                {
                  v52 = 0;
                  if (this != 17)
                  {
                    goto LABEL_227;
                  }

                  v91 = 28;
                }

                LODWORD(v90) = a2;
                v89 = a3;
                goto LABEL_234;
              }

              if (this <= 0x1B)
              {
                if (((1 << this) & 0xE000000) == 0)
                {
                  v52 = a2;
                  if (((1 << this) & 0x180000) == 0)
                  {
                    v52 = 0;
                    if (((1 << this) & 0xC00000) != 0)
                    {
                      v92 = **a2;
                      v93 = *v92;
                      v52 = *(*v92 + 1600);
                      if (!v52)
                      {
                        v52 = llvm::ConstantInt::get(v93 + 1920, 0);
                        *(v93 + 1600) = v52;
                      }
                    }
                  }

                  goto LABEL_227;
                }

                goto LABEL_226;
              }
            }

LABEL_238:
            v52 = 0;
            goto LABEL_227;
          }

          if (*(a3 + 16) != 17)
          {
            goto LABEL_207;
          }

          llvm::APFloat::Storage::Storage(&v120, (a2 + 32));
          if (this <= 17)
          {
            if (this == 14)
            {
              llvm::APFloat::add(&__src, a3 + 24, 1);
              goto LABEL_205;
            }

            if (this == 16)
            {
              llvm::APFloat::subtract(&__src, a3 + 24, 1);
              goto LABEL_205;
            }
          }

          else
          {
            switch(this)
            {
              case 0x12:
                llvm::APFloat::multiply(&__src, a3 + 24, 1);
                goto LABEL_205;
              case 0x15:
                llvm::APFloat::divide(&__src, a3 + 24, 1);
                goto LABEL_205;
              case 0x18:
                llvm::APFloat::mod(&__src, (a3 + 24));
LABEL_205:
                v52 = llvm::ConstantFP::get(**a2, &__src);
                llvm::APFloat::Storage::~Storage(&v120);
                goto LABEL_227;
            }
          }

          llvm::APFloat::Storage::~Storage(&v120);
          goto LABEL_207;
        }

        goto LABEL_226;
      }

      v31 = *(a3 + 3);
      if (!v31)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (this == 13 || this == 15)
      {
        v33 = *(a3 + 8);
        if (v33 > 0x40)
        {
          if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) != v33)
          {
            goto LABEL_158;
          }
        }

        else if (*(a3 + 3))
        {
          goto LABEL_158;
        }

        goto LABEL_226;
      }

      if (this != 17)
      {
        goto LABEL_158;
      }

      v30 = *(a3 + 8);
      if (v30 > 0x40)
      {
        v40 = llvm::APInt::countLeadingZerosSlowCase((a3 + 24));
        if (v40 != v30)
        {
          if (v40 != v30 - 1)
          {
            goto LABEL_158;
          }

          goto LABEL_226;
        }

LABEL_132:
        v52 = a3;
LABEL_227:
        v94 = *MEMORY[0x277D85DE8];
        return v52;
      }

      v31 = *(a3 + 3);
      if (!v31)
      {
        goto LABEL_132;
      }
    }

    if (v31 != 1)
    {
      goto LABEL_158;
    }

    goto LABEL_226;
  }

  if (this <= 27)
  {
    if ((this - 22) < 2)
    {
      v24 = *(a3 + 8);
      if (v24 <= 0x40)
      {
        v25 = *(a3 + 3);
        if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_158;
          }

          goto LABEL_76;
        }

LABEL_81:
        v14 = *a3;
        goto LABEL_7;
      }

      v35 = llvm::APInt::countLeadingZerosSlowCase((a3 + 24));
      if (v35 == v24 - 1)
      {
LABEL_76:
        v17 = *a3;
LABEL_77:
        v37 = *MEMORY[0x277D85DE8];

        return llvm::Constant::getNullValue(v17, v8);
      }

      goto LABEL_80;
    }

    if (this != 27 || v12 != 5 || *(a2 + 9) != 39)
    {
      goto LABEL_158;
    }

    v34 = *MEMORY[0x277D85DE8];
    v27 = 26;
    v28 = a2;
    v29 = a3;
LABEL_37:

    return llvm::ConstantExpr::get(v27, v28, v29, 0, 0, v11);
  }

  if (this == 28)
  {
    v38 = *(a3 + 8);
    if (v38 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) == v38)
      {
        goto LABEL_132;
      }
    }

    else if (!*(a3 + 3))
    {
      goto LABEL_132;
    }

    if (llvm::APInt::isAllOnes((a3 + 24)))
    {
      goto LABEL_226;
    }

    v47 = *(a2 + 16);
    if (v47 != 5)
    {
      goto LABEL_159;
    }

    v48 = *(a2 + 9);
    if (v48 == 39)
    {
      v49 = (*(*a3 + 8) >> 8);
      PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(**(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      if (v50)
      {
      }

      llvm::APInt::getLowBitsSet(v49, PrimitiveSizeInBits, &__src);
      if (v120 > 0x40)
      {
        operator new[]();
      }

      if ((__src & ~*(a3 + 3)) == 0)
      {
        goto LABEL_226;
      }

      v48 = *(a2 + 9);
    }

    if (v48 != 47)
    {
      goto LABEL_158;
    }

    v57 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
    v58 = *(v57 + 16);
    if (v58 > 3)
    {
      goto LABEL_158;
    }

    v59 = v57[5];
    if (v59)
    {
      PointerAlignment = llvm::Value::getPointerAlignment(*(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF)), (v59 + 256));
      if (!*(v57 + 16) && (*(v59 + 276) & 0x100) == 0)
      {
        PointerAlignment = 2;
        goto LABEL_146;
      }
    }

    else
    {
      if (v58 != 3)
      {
        goto LABEL_158;
      }

      v61 = (*(v57 + 8) >> 17) & 0x3F;
      if (!v61)
      {
        goto LABEL_158;
      }

      PointerAlignment = v61 - 1;
    }

    if (!PointerAlignment)
    {
      goto LABEL_158;
    }

LABEL_146:
    if (*(*a3 + 8) >> 8 >= PointerAlignment)
    {
      v62 = PointerAlignment;
    }

    else
    {
      v62 = *(*a3 + 8) >> 8;
    }

    llvm::APInt::getLowBitsSet((*(*a3 + 8) >> 8), v62, &__src);
    if (*(a3 + 8) > 0x40u)
    {
      operator new[]();
    }

    if ((*(a3 + 3) & ~__src) != 0)
    {
      v63 = 0;
      v52 = a2;
    }

    else
    {
      v52 = llvm::Constant::getNullValue(*a3, v8);
      v63 = 1;
    }

    if (v120 >= 0x41 && __src)
    {
      MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
    }

    if (v63)
    {
      goto LABEL_227;
    }

    goto LABEL_158;
  }

  if (this == 29)
  {
    v36 = *(a3 + 8);
    if (v36 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) == v36)
      {
        goto LABEL_226;
      }
    }

    else if (!*(a3 + 3))
    {
      goto LABEL_226;
    }

    if (!llvm::APInt::isAllOnes((a3 + 24)))
    {
      goto LABEL_158;
    }

    goto LABEL_132;
  }

  if (this != 30)
  {
    goto LABEL_158;
  }

  v32 = *(a3 + 8);
  if (v32 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) != v32)
    {
      goto LABEL_99;
    }

LABEL_226:
    v52 = a2;
    goto LABEL_227;
  }

  if (!*(a3 + 3))
  {
    goto LABEL_226;
  }

LABEL_99:
  if (v12 != 5 || *(a2 + 9) - 53 > 1)
  {
    goto LABEL_158;
  }

  InversePredicate = llvm::CmpInst::getInversePredicate(*(a2 + 12));
  v43 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  v44 = *v43;
  v45 = v43[4];
  v46 = *MEMORY[0x277D85DE8];

  return llvm::ConstantExpr::getCompare(InversePredicate, v44, v45, 0, v42);
}

void *llvm::ConstantFoldCompareInstruction(unsigned int a1, llvm::Type *a2, uint64_t a3, BOOL a4)
{
  v5 = a2;
  v94[4] = *MEMORY[0x277D85DE8];
  v7 = (***a2 + 1920);
  if (*a2)
  {
    v8 = (*(*a2 + 8) & 0xFE) == 18;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    llvm::VectorType::get(v7, (*(*a2 + 32) | (((~*(*a2 + 8) & 0x13) == 0) << 32)));
    v7 = v9;
  }

  if (a1 == 15)
  {
LABEL_41:
    v25 = *MEMORY[0x277D85DE8];

    return llvm::Constant::getAllOnesValue(v7, a2);
  }

  if (!a1)
  {
LABEL_9:
    v10 = *MEMORY[0x277D85DE8];

    return llvm::Constant::getNullValue(v7, a2);
  }

  v12 = *(v5 + 16);
  if (v12 == 12 || (v13 = *(a3 + 16), v13 == 12))
  {
    v14 = *MEMORY[0x277D85DE8];

    return llvm::PoisonValue::get(v7, a2);
  }

  if ((v12 - 11) >= 2 && (v13 - 11) > 1)
  {
    v15 = constantFoldCompareGlobalToNull(a1, v5, a3);
    if (v15 || (v15 = constantFoldCompareGlobalToNull(a1, a3, v5)) != 0)
    {
      v16 = v15;
LABEL_22:
      v17 = *MEMORY[0x277D85DE8];
      return v16;
    }

    if (llvm::Constant::isNullValue(a3))
    {
      if (a1 == 36)
      {
        goto LABEL_9;
      }

      if (a1 == 35)
      {
        goto LABEL_41;
      }
    }

    v26 = *v5;
    if (*(*v5 + 8) == 269)
    {
      if (a1 == 33)
      {
        v44 = *MEMORY[0x277D85DE8];
        v30 = v5;
        goto LABEL_78;
      }

      if (a1 == 32)
      {
        if (*(a3 + 16) == 16)
        {
          Not = llvm::ConstantExpr::getNot(a3, a2);
          v28 = *MEMORY[0x277D85DE8];
          v29 = Not;
          v30 = v5;
LABEL_79:

          return llvm::ConstantExpr::get(0x1E, v30, v29, 0, 0, v24);
        }

        v45 = llvm::ConstantExpr::getNot(v5, a2);
        v46 = *MEMORY[0x277D85DE8];
        v30 = v45;
LABEL_78:
        v29 = a3;
        goto LABEL_79;
      }
    }

    v31 = *(v5 + 16);
    if (v31 == 17)
    {
      if (*(a3 + 16) == 17)
      {
        v32 = llvm::FCmpInst::compare((v5 + 24), (a3 + 24), a1);
        goto LABEL_55;
      }
    }

    else if (v31 == 16 && *(a3 + 16) == 16)
    {
      v32 = llvm::ICmpInst::compare(v5 + 6, (a3 + 24), a1);
LABEL_55:
      v33 = *MEMORY[0x277D85DE8];
      v20 = v32;
      goto LABEL_35;
    }

    if ((*(*v5 + 8) & 0xFE) == 0x12)
    {
      SplatValue = llvm::Constant::getSplatValue(v5, 0);
      if (SplatValue)
      {
        v36 = SplatValue;
        v37 = llvm::Constant::getSplatValue(a3, 0);
        if (v37)
        {
          v39 = *(v26 + 8);
          v40 = *(v26 + 8) == 19;
          Compare = llvm::ConstantExpr::getCompare(a1, v36, v37, 0, v38);
          v42 = *MEMORY[0x277D85DE8];

          return llvm::ConstantVector::getSplat(v39 | (v40 << 32), Compare);
        }
      }

      if (*(v26 + 8) != 19)
      {
        v92 = v94;
        v93 = 0x400000000;
        v53 = *(v26 + 8);
        if (v53)
        {
          v54 = 0;
          v55 = ***v5;
          do
          {
            v56 = llvm::ConstantInt::get((v55 + 1992), v54, 0, v35);
            Element = llvm::ConstantExpr::getExtractElement(v5, v56, 0, v57);
            v60 = llvm::ConstantInt::get((v55 + 1992), v54, 0, v59);
            v62 = llvm::ConstantExpr::getExtractElement(a3, v60, 0, v61);
            v64 = llvm::ConstantExpr::getCompare(a1, Element, v62, 0, v63);
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v92, v64);
            v54 = (v54 + 1);
          }

          while (v53 != v54);
          v65 = v92;
          v66 = v93;
        }

        else
        {
          v66 = 0;
          v65 = v94;
        }

        v16 = llvm::ConstantVector::get(v65, v66);
        if (v92 != v94)
        {
          free(v92);
        }

        goto LABEL_22;
      }

LABEL_76:
      v16 = 0;
      goto LABEL_22;
    }

    if ((*(*v5 + 8) < 4u || *(*v5 + 8) == 5 || (*(*v5 + 8) & 0xFD) == 4) && (v31 == 5 || *(a3 + 16) == 5))
    {
      v43 = evaluateFCmpRelation(v5, a3);
      v16 = 0;
      if (v43 > 3)
      {
        if (v43 <= 0x10)
        {
          if (((1 << v43) & 0x1FD80) != 0)
          {
            goto LABEL_22;
          }

          if (v43 == 6)
          {
            if ((a1 & 0xFFFFFFF7) != 1)
            {
              if ((a1 & 0xFFFFFFF7) != 6)
              {
                goto LABEL_76;
              }

              goto LABEL_133;
            }

LABEL_156:
            v20 = 0;
            goto LABEL_34;
          }

          if (v43 == 9)
          {
            if (a1 == 6)
            {
              goto LABEL_156;
            }

            if (a1 != 9)
            {
              goto LABEL_76;
            }

LABEL_133:
            v20 = 1;
            goto LABEL_34;
          }
        }

        if (v43 != 4)
        {
          if ((a1 & 0xFFFFFFF7) == 2)
          {
            goto LABEL_156;
          }

          if ((a1 & 0xFFFFFFF7) != 4)
          {
            goto LABEL_76;
          }

          goto LABEL_133;
        }

        v70 = a1 - 4;
        if (a1 - 4 >= 0xB)
        {
          goto LABEL_156;
        }

        v71 = &unk_2750C8B08;
LABEL_140:
        v20 = v71[v70];
        goto LABEL_34;
      }

      if (v43 > 1)
      {
        if (v43 != 2)
        {
          if ((a1 & 0xFFFFFFF7) != 2)
          {
            if ((a1 & 0xFFFFFFF7) != 4)
            {
              goto LABEL_76;
            }

            goto LABEL_156;
          }

          goto LABEL_133;
        }

        v70 = a1 - 2;
        if (a1 - 2 >= 0xD)
        {
          goto LABEL_156;
        }

        v71 = &unk_2750C8B60;
        goto LABEL_140;
      }

      if (!v43)
      {
        goto LABEL_22;
      }

      HIDWORD(v68) = a1 - 1;
      LODWORD(v68) = a1 - 1;
      v67 = v68 >> 1;
      if (v67 < 7 && ((0x75u >> v67) & 1) != 0)
      {
        goto LABEL_133;
      }

      v19 = a1 == 3;
LABEL_30:
      v20 = v19;
      goto LABEL_34;
    }

    v47 = a1 - 38;
    v48 = evaluateICmpRelation(v5, a3, a1 - 38 < 4, v22, v23);
    if (v48 <= 36)
    {
      if (v48 <= 33)
      {
        if (v48 == 32)
        {
          v20 = 0;
          if (a1 > 0x29 || ((1 << a1) & 0x2A90000AA00) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_133;
        }

        v69 = a1 != 32;
        if (a1 == 33)
        {
          goto LABEL_133;
        }
      }

      else
      {
        if (v48 == 34)
        {
          v70 = a1 - 32;
          if (a1 - 32 < 6)
          {
            v71 = &unk_2750C8C48;
            goto LABEL_140;
          }

          goto LABEL_143;
        }

        if (v48 != 35)
        {
          v70 = a1 - 32;
          if (a1 - 32 < 6)
          {
            v71 = &unk_2750C8BC8;
            goto LABEL_140;
          }

          goto LABEL_143;
        }

        v69 = a1 != 36;
        if ((a1 & 0xFFFFFFFE) == 0x22)
        {
          goto LABEL_133;
        }
      }
    }

    else if (v48 > 39)
    {
      if (v48 == 40)
      {
        v51 = a1 - 32;
        if (a1 - 32 < 0xA && ((0x3C3u >> v51) & 1) != 0)
        {
          v52 = &unk_2750C8BF8;
          goto LABEL_137;
        }

LABEL_143:
        v72 = *(a3 + 16);
        if (v72 == 5 && *(a3 + 18) == 49)
        {
          v73 = *(a3 - 32 * (*(a3 + 20) & 0x7FFFFFF));
          v74 = *v73;
          v75 = *(*v73 + 8);
          if (((*(*a3 + 8) & 0xFE) == 18) == ((v75 & 0xFE) == 18))
          {
            if ((v75 & 0xFE) == 0x12)
            {
              v75 = *(*v74[2] + 8);
            }

            if (v75 >= 4u && v75 != 5 && (v75 & 0xFD) != 4)
            {
              if (*v5 != v74)
              {
                LOWORD(v5) = getFoldedCast(49, v5, v50);
              }

              v91 = *MEMORY[0x277D85DE8];
              v87 = a1;
              v88 = v5;
              v89 = v73;
              goto LABEL_168;
            }
          }
        }

        if (*(v5 + 16) != 5)
        {
LABEL_164:
          if (v72 == 5)
          {
LABEL_167:
            LOWORD(v87) = llvm::CmpInst::getSwappedPredicate(a1);
            v86 = *MEMORY[0x277D85DE8];
            v87 = v87;
            v88 = a3;
            v89 = v5;
LABEL_168:

            return llvm::ConstantExpr::getICmp(v87, v88, v89, 0, v49);
          }

LABEL_165:
          if (!llvm::Constant::isNullValue(v5) || (llvm::Constant::isNullValue(a3) & 1) != 0)
          {
            goto LABEL_76;
          }

          goto LABEL_167;
        }

        v76 = *(v5 + 9);
        if (v76 == 39)
        {
          if (v47 < 4)
          {
LABEL_162:
            if (*(v5 + 16) == 5)
            {
              goto LABEL_165;
            }

            v72 = *(a3 + 16);
            goto LABEL_164;
          }
        }

        else
        {
          if (v76 != 40)
          {
            goto LABEL_165;
          }

          if (v47 >= 4)
          {
            goto LABEL_162;
          }
        }

        v77 = (v5 - 32 * (*(v5 + 5) & 0x7FFFFFF));
        v78 = *v77;
        v79 = **v77;
        FoldedCast = getFoldedCast(38, v5, v50);
        if (FoldedCast == v78)
        {
          v82 = FoldedCast;
          v83 = *v78;
          v84 = getFoldedCast(38, a3, v81);
          if (llvm::ConstantExpr::getCast(*(v5 + 9), v84, *a3, 0, v85) == a3)
          {
            v90 = *MEMORY[0x277D85DE8];
            v87 = a1;
            v88 = v82;
            v89 = v84;
            goto LABEL_168;
          }
        }

        goto LABEL_162;
      }

      if (v48 != 41)
      {
        goto LABEL_143;
      }

      v69 = a1 != 38;
      if ((a1 & 0xFFFFFFFE) == 0x28)
      {
        goto LABEL_133;
      }
    }

    else if (v48 == 37)
    {
      v69 = a1 != 34;
      if ((a1 & 0xFFFFFFFE) == 0x24)
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v48 == 38)
      {
        v51 = a1 - 32;
        if (a1 - 32 < 0xA && ((0x3C3u >> v51) & 1) != 0)
        {
          v52 = &unk_2750C8C78;
LABEL_137:
          v20 = v52[v51];
          goto LABEL_34;
        }

        goto LABEL_143;
      }

      v69 = a1 != 40;
      if ((a1 & 0xFFFFFFFE) == 0x26)
      {
        goto LABEL_133;
      }
    }

    if (!v69)
    {
      goto LABEL_156;
    }

    goto LABEL_143;
  }

  if ((a1 & 0xFFFFFFFE) != 0x20)
  {
    if (a1 - 32 > 9)
    {
      v20 = a1 - 8 < 7;
LABEL_34:
      v21 = *MEMORY[0x277D85DE8];
LABEL_35:

      return llvm::ConstantInt::get(v7, v20, 0, a4);
    }

    if (v5 != a3)
    {
      v19 = ((a1 - 35) & 0xFFFFFFF9) == 0;
      goto LABEL_30;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return llvm::UndefValue::get(v7, a2);
}

uint64_t constantFoldCompareGlobalToNull(int a1, llvm::Constant *a2, unsigned __int8 *a3)
{
  result = 0;
  if (!a3 || a3[16] > 3u)
  {
    return result;
  }

  if (!llvm::Constant::isNullValue(a2) || a3[16] == 1 || (llvm::GlobalValue::hasExternalWeakLinkage(a3) & 1) != 0 || *(*a3 + 8) > 0xFFu)
  {
    return 0;
  }

  if (a1 != 33)
  {
    if (a1 == 32)
    {
      v7 = ***a2;
      result = *(v7 + 1600);
      if (!result)
      {
        v8 = 0;
        v9 = (v7 + 1600);
LABEL_15:
        result = llvm::ConstantInt::get(v7 + 1920, v8);
        *v9 = result;
        return result;
      }

      return result;
    }

    return 0;
  }

  v7 = ***a2;
  result = *(v7 + 1592);
  if (!result)
  {
    v9 = (v7 + 1592);
    v8 = 1;
    goto LABEL_15;
  }

  return result;
}

uint64_t evaluateFCmpRelation(llvm::Constant *a1, llvm::Constant *a2)
{
  if (a1 == a2)
  {
    return 9;
  }

  if (*(a1 + 16) == 5)
  {
    return 16;
  }

  if (*(a2 + 16) == 5)
  {
    result = evaluateFCmpRelation(a2, a1);
    if (result != 16)
    {

      return llvm::CmpInst::getSwappedPredicate(result);
    }

    return result;
  }

  FCmp = llvm::ConstantExpr::getFCmp(1, a1, a2, 0);
  if (FCmp && *(FCmp + 16) == 16)
  {
    v6 = *(FCmp + 8);
    if (v6 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((FCmp + 3)) != v6)
      {
        return 1;
      }
    }

    else if (FCmp[3])
    {
      return 1;
    }
  }

  v7 = llvm::ConstantExpr::getFCmp(4, a1, a2, 0);
  if (v7 && *(v7 + 16) == 16)
  {
    v8 = *(v7 + 8);
    if (v8 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v7 + 3)) != v8)
      {
        return 4;
      }
    }

    else if (v7[3])
    {
      return 4;
    }
  }

  v9 = llvm::ConstantExpr::getFCmp(2, a1, a2, 0);
  if (!v9 || *(v9 + 16) != 16)
  {
    return 16;
  }

  v10 = *(v9 + 8);
  if (v10 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v9 + 3)) == v10)
    {
      return 16;
    }
  }

  else if (!v9[3])
  {
    return 16;
  }

  return 2;
}

uint64_t evaluateICmpRelation(llvm::Constant *a1, llvm::Constant *a2, char a3, uint64_t a4, BOOL a5)
{
  if (a1 == a2)
  {
    return 32;
  }

  NullValue = a2;
  v7 = a1;
  while (1)
  {
    v8 = *(v7 + 16);
    if (v8 >= 6)
    {
      if (*(NullValue + 16) < 6u)
      {
        goto LABEL_43;
      }

      ICmp = llvm::ConstantExpr::getICmp(0x20, v7, NullValue, 0, a5);
      if (!ICmp || *(ICmp + 16) != 16)
      {
LABEL_66:
        if (a3)
        {
          v19 = 40;
        }

        else
        {
          v19 = 36;
        }

        v27 = llvm::ConstantExpr::getICmp(v19, v7, NullValue, 0, v17);
        if (v27 && *(v27 + 16) == 16)
        {
          v29 = *(v27 + 32);
          if (v29 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase((v27 + 24)) == v29)
            {
              goto LABEL_79;
            }
          }

          else if (!*(v27 + 24))
          {
            goto LABEL_79;
          }

          return v19;
        }

LABEL_79:
        if (a3)
        {
          v19 = 38;
        }

        else
        {
          v19 = 34;
        }

        v30 = llvm::ConstantExpr::getICmp(v19, v7, NullValue, 0, v28);
        if (!v30 || *(v30 + 16) != 16)
        {
          return 42;
        }

        v31 = *(v30 + 32);
        if (v31 > 0x40)
        {
          if (llvm::APInt::countLeadingZerosSlowCase((v30 + 24)) == v31)
          {
            return 42;
          }
        }

        else if (!*(v30 + 24))
        {
          return 42;
        }

        return v19;
      }

      v18 = *(ICmp + 32);
      if (v18 <= 0x40)
      {
        if (*(ICmp + 24))
        {
          return 32;
        }

        goto LABEL_66;
      }

      if (llvm::APInt::countLeadingZerosSlowCase((ICmp + 24)) == v18)
      {
        goto LABEL_66;
      }

      return 32;
    }

    if (v8 <= 3)
    {
      v20 = *(NullValue + 16);
      if (v20 != 5)
      {
        if (v20 <= 3)
        {
          v15 = v7;
LABEL_61:
          v26 = NullValue;
          goto LABEL_62;
        }

        if (v20 != 4)
        {
          if ((llvm::GlobalValue::hasExternalWeakLinkage(v7) & 1) == 0 && *(v7 + 16) != 1 && *(*v7 + 8) < 0x100u)
          {
            return 34;
          }

          return 42;
        }

        return 33;
      }

LABEL_43:
      v22 = evaluateICmpRelation(NullValue, v7, a3 & 1);
      if (v22 == 42)
      {
        return 42;
      }

      return llvm::CmpInst::getSwappedPredicate(v22);
    }

    if (v8 == 4)
    {
      v21 = *(NullValue + 16);
      if (v21 == 4)
      {
        if (*(NullValue - 8) == *(v7 - 8))
        {
          return 42;
        }
      }

      else if (v21 == 5)
      {
        goto LABEL_43;
      }

      return 33;
    }

    v9 = *(v7 + 9);
    if (v9 > 0x31)
    {
      return 42;
    }

    v10 = *(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF));
    if (((1 << v9) & 0x198000000000) != 0)
    {
      goto LABEL_8;
    }

    if (v9 != 49)
    {
      break;
    }

    v14 = v10[16] > 3u || v10 == 0;
    if (!v14 && NullValue && *(NullValue + 16) <= 3u)
    {
      v15 = *(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF));
      goto LABEL_61;
    }

LABEL_8:
    v11 = *(*v10 + 8);
    if ((v11 & 0xFE) == 0x12)
    {
      v11 = *(**(*v10 + 16) + 8);
    }

    if (v11 < 6u && ((0x2Fu >> v11) & 1) != 0 || (v11 & 0xFD) == 4 || !llvm::Constant::isNullValue(NullValue) || (*(*v7 + 8) & 0xFD) != 0xD)
    {
      return 42;
    }

    v13 = *(v7 + 9);
    if (v13 == 40)
    {
      a3 = 1;
    }

    else
    {
      a3 &= v13 != 39;
    }

    NullValue = llvm::Constant::getNullValue(*v10, v12);
    v7 = v10;
    if (v10 == NullValue)
    {
      return 32;
    }
  }

  if (v9 != 34)
  {
    return 42;
  }

  v24 = *(NullValue + 16);
  if (v24 == 19)
  {
    v25 = v10[16] > 3u || v10 == 0;
    if (!v25 && (llvm::GlobalValue::hasExternalWeakLinkage(*(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF))) & 1) == 0 && (*(v7 + 17) & 2) != 0)
    {
      return 34;
    }

    return 42;
  }

  if (v24 <= 3)
  {
    if (v10[16] >= 4u)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF));
    }

    if (v32)
    {
      v33 = v32 == NullValue;
    }

    else
    {
      v33 = 1;
    }

    if (v33 || !llvm::GEPOperator::hasAllZeroIndices(v7))
    {
      return 42;
    }

    v15 = v32;
    goto LABEL_61;
  }

  if (v24 <= 0x1B)
  {
    if (v24 != 5 || *(NullValue + 9) != 34)
    {
      return 42;
    }
  }

  else if (v24 != 62)
  {
    return 42;
  }

  v34 = *(NullValue + 5);
  if ((v34 & 0x40000000) != 0)
  {
    v35 = *(NullValue - 1);
  }

  else
  {
    v35 = NullValue - 32 * (v34 & 0x7FFFFFF);
  }

  if (v10[16] > 3u)
  {
    return 42;
  }

  v36 = *v35;
  if (*(*v35 + 16) > 3u || v10 == v36 || !llvm::GEPOperator::hasAllZeroIndices(v7) || !llvm::GEPOperator::hasAllZeroIndices(NullValue))
  {
    return 42;
  }

  v15 = v10;
  v26 = v36;
LABEL_62:

  return areGlobalsPotentiallyEqual(v15, v26);
}

uint64_t llvm::ConstantFoldGetElementPtr(llvm::GetElementPtrInst *a1, uint64_t *a2, unsigned int a3, unint64_t a4, llvm::Value *a5, uint64_t a6)
{
  v6 = a2;
  v178[16] = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    goto LABEL_172;
  }

  v8 = a5;
  TypeAtIndex = a1;
  llvm::GetElementPtrInst::getGEPReturnType(a1, a2, a5, a6);
  v14 = v12;
  v15 = v6[16];
  if (v15 == 12)
  {
    goto LABEL_3;
  }

  if ((v15 - 11) <= 1)
  {
    if (!a3)
    {
      v18 = *MEMORY[0x277D85DE8];

      return llvm::UndefValue::get(v12, v13);
    }

LABEL_3:
    v16 = *MEMORY[0x277D85DE8];

    return llvm::PoisonValue::get(v12, v13);
  }

  v19 = *v6;
  if ((*(*v6 + 8) & 0xFE) == 0x12)
  {
    v19 = **(v19 + 16);
    v20 = *(v19 + 8);
  }

  else
  {
    v20 = *(*v6 + 8);
  }

  v171 = a3;
  v21 = v20 == 15 && *(v19 + 24) == 0;
  v172 = a6;
  if ((a6 == 1 || v21) && (a4 & 0x100000000) == 0)
  {
    v114 = 8 * a6;
    v115 = v8;
    do
    {
      v116 = *v115;
      if ((llvm::Constant::isNullValue(*v115) & 1) == 0 && *(v116 + 16) - 11 > 1)
      {
        goto LABEL_20;
      }

      ++v115;
      v114 -= 8;
    }

    while (v114);
    if ((*(v14 + 2) & 0xFE) == 0x12 && (*(*v6 + 8) & 0xFE) != 0x12)
    {
      v124 = *MEMORY[0x277D85DE8];
      v125 = *(v14 + 8) | (((~*(v14 + 2) & 0x13) == 0) << 32);

      return llvm::ConstantVector::getSplat(v125, v6);
    }

LABEL_172:
    ElementPtr = v6;
    goto LABEL_173;
  }

LABEL_20:
  v23 = v172;
  if (llvm::Constant::isNullValue(v6))
  {
    v24 = 8 * v172;
    v25 = 8 * v172;
    v26 = v8;
    while (*(*v26 + 16) - 11 < 2 || llvm::Constant::isNullValue(*v26))
    {
      ++v26;
      v25 -= 8;
      if (!v25)
      {
        v27 = *v6;
        if ((*(*v6 + 8) & 0xFE) == 0x12)
        {
          v27 = **(v27 + 16);
        }

        v28 = v8 + 1;
        v29 = v24 - 8;
        do
        {
          if (!v29)
          {
            break;
          }

          v30 = *v28++;
          TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v30, v22);
          v29 -= 8;
        }

        while (TypeAtIndex);
        v31 = llvm::PointerType::get(TypeAtIndex, (*(v27 + 8) >> 8));
        v32 = llvm::PointerType::get(TypeAtIndex, (*(v27 + 8) >> 8));
        if (*v6)
        {
          v34 = (*(*v6 + 8) & 0xFE) == 18;
        }

        else
        {
          v34 = 0;
        }

        if (v34)
        {
          llvm::VectorType::get(v31, (*(*v6 + 32) | (((~*(*v6 + 8) & 0x13) == 0) << 32)));
        }

        while (1)
        {
          v35 = **v8;
          if (v35 && (*(v35 + 8) & 0xFE) == 18)
          {
            break;
          }

          ++v8;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_178;
          }
        }

        llvm::VectorType::get(v31, (*(v35 + 32) | (((~*(v35 + 8) & 0x13) == 0) << 32)));
LABEL_178:
        v118 = *MEMORY[0x277D85DE8];

        return llvm::Constant::getNullValue(v32, v33);
      }
    }
  }

  if (v6 && v6[16] == 5)
  {
    if (*(v6 + 9) == 34 && *(v6 + 4) == TypeAtIndex)
    {
      SExtOrBitCast = *v8;
      if (llvm::Constant::isNullValue(*v8))
      {
        v176 = v178;
        v177 = 0x1000000000;
        v120 = *(v6 + 5);
        v121 = v172 + (v120 & 0x7FFFFFFu) - 1;
        if (v121 >= 0x11)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v121, 8);
          v120 = *(v6 + 5);
        }

        if ((v120 & 0x40000000) != 0)
        {
          v123 = *(v6 - 1);
          v122 = v120 & 0x7FFFFFF;
        }

        else
        {
          v122 = v120 & 0x7FFFFFF;
          v123 = &v6[-32 * v122];
        }

        llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v176, v123 + 32, &v123[32 * v122]);
        llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v176, v8 + 8, &v8[v172]);
        v132 = 24;
        if (v6[16] == 62)
        {
          v132 = 64;
        }

        v133 = *&v6[v132];
        v134 = *(v6 + 5);
        if ((v134 & 0x40000000) != 0)
        {
          v135 = *(v6 - 1);
        }

        else
        {
          v135 = &v6[-32 * (v134 & 0x7FFFFFF)];
        }

        v141 = *v135;
        v142 = v6[17];
        v143 = v171 & ((v142 & 2) >> 1);
        if ((v142 & 0xFC) != 0)
        {
          v144 = (v142 >> 2) - 1;
        }

        else
        {
          v144 = 0;
        }

        ElementPtr = llvm::ConstantExpr::getGetElementPtr(v133, v141, v176, v177, v143, v144 | ((v6[17] > 3u) << 32), 0);
        if (v176 != v178)
        {
          free(v176);
        }

        if (ElementPtr)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v126 = 24;
        if (v6[16] == 62)
        {
          v126 = 64;
        }

        v127 = *&v6[v126];
        v128 = *(v6 + 5);
        if ((v128 & 0x40000000) != 0)
        {
          v130 = *(v6 - 1);
          v131 = v130 + 32;
          v176 = v130 + 32;
          v177 = v127 | 4;
          v129 = v128 & 0x7FFFFFF;
        }

        else
        {
          v129 = v128 & 0x7FFFFFF;
          v130 = &v6[-32 * v129];
          v131 = v130 + 32;
          v176 = v130 + 32;
          v177 = v127 | 4;
        }

        v136 = &v130[32 * v129];
        if (v131 != v136)
        {
          do
          {
            v137 = v177;
            llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(&v176);
          }

          while (v176 != v136);
          if ((v137 & 4) != 0 && SExtOrBitCast && *(SExtOrBitCast + 16) == 16)
          {
            v138 = *(v6 + 5);
            v139 = (v138 & 0x7FFFFFFu) - 1;
            v140 = (v138 & 0x40000000) != 0 ? *(v6 - 1) : &v6[-32 * (v138 & 0x7FFFFFF)];
            v145 = *&v140[32 * (v138 & 0x7FFFFFF) - 32];
            v146 = *v145;
            if ((*(*v145 + 2) & 0xFE) != 0x12)
            {
              v176 = v178;
              v177 = 0x1000000000;
              if (v172 + v139 >= 0x11)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v172 + v139, 8);
                v138 = *(v6 + 5);
              }

              if ((v138 & 0x40000000) != 0)
              {
                v148 = *(v6 - 1);
                v147 = v138 & 0x7FFFFFF;
              }

              else
              {
                v147 = v138 & 0x7FFFFFF;
                v148 = &v6[-32 * v147];
              }

              v149 = TypeAtIndex;
              llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v176, v148 + 32, &v148[32 * v147 - 32]);
              if (v146 != *SExtOrBitCast)
              {
                if (*(v146 + 2) >> 8 <= *(*SExtOrBitCast + 8) >> 8)
                {
                  v151 = *(*SExtOrBitCast + 8) >> 8;
                }

                else
                {
                  v151 = *(v146 + 2) >> 8;
                }

                if (v151 <= 0x40)
                {
                  v152 = 64;
                }

                else
                {
                  v152 = v151;
                }

                v153 = llvm::IntegerType::get(*v146, v152);
                SExtOrBitCast = llvm::ConstantExpr::getSExtOrBitCast(SExtOrBitCast, v153, v154);
                v145 = llvm::ConstantExpr::getSExtOrBitCast(v145, v153, v155);
              }

              v156 = llvm::ConstantExpr::get(0xD, SExtOrBitCast, v145, 0, 0, v150);
              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v176, v156);
              llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v176, v8 + 8, &v8[v172]);
              v157 = 0;
              v158 = v6[17];
              if (v158 <= 3)
              {
                v159 = 0;
              }

              else
              {
                v159 = (v6[17] >> 2) - 1;
              }

              v160 = *(v6 + 5);
              TypeAtIndex = v149;
              if (v158 >= 4)
              {
                v157 = ((v160 & 0x7FFFFFF) - 2 != ((v6[17] >> 2) - 1)) << 32;
              }

              v161 = 24;
              if (v6[16] == 62)
              {
                v161 = 64;
              }

              if ((v160 & 0x40000000) != 0)
              {
                v162 = *(v6 - 1);
              }

              else
              {
                v162 = &v6[-32 * (v160 & 0x7FFFFFF)];
              }

              ElementPtr = llvm::ConstantExpr::getGetElementPtr(*&v6[v161], *v162, v176, v177, v171 & (v158 >> 1), v157 | v159, 0);
              if (v176 != v178)
              {
                free(v176);
              }

              v23 = v172;
              if (ElementPtr)
              {
                goto LABEL_173;
              }
            }
          }
        }
      }
    }

    if (v23 != 1 && *(v6 + 9) - 38 <= 0xC && llvm::Constant::isNullValue(*v8))
    {
      v37 = *&v6[-32 * (*(v6 + 5) & 0x7FFFFFF)];
      v38 = *v37;
      if (*(*v37 + 8) != 15)
      {
        v38 = 0;
      }

      v39 = *v6;
      if (*(*v6 + 8) != 15)
      {
        v39 = 0;
      }

      v40 = !v38 || v39 == 0;
      if (!v40 && *(v38 + 24) && *(v39 + 24))
      {
        if (*(**(v38 + 16) + 8) == 17)
        {
          v41 = **(v38 + 16);
        }

        else
        {
          v41 = 0;
        }

        v42 = **(v39 + 16);
        if (*(v42 + 8) != 17)
        {
          v42 = 0;
        }

        v43 = !v41 || v42 == 0;
        if (!v43 && *(v41 + 24) == *(v42 + 24) && (*(v39 + 8) ^ *(v38 + 8)) <= 0xFF)
        {
          v44 = *MEMORY[0x277D85DE8];

          return llvm::ConstantExpr::getGetElementPtr(v41, v37, v8, v23, v171, a4, 0);
        }
      }
    }
  }

  v177 = 0x800000000;
  v45 = *v6;
  v175[0] = v8;
  v175[1] = TypeAtIndex | 4;
  v176 = v178;
  v46 = *(*v8 + 16) - 17 < 0xFFFFFFFE;
  if (v23 == 1)
  {
    goto LABEL_159;
  }

  v47 = (a4 + 1);
  v48 = a4;
  v49 = 1;
  v167 = v48;
  v173 = HIDWORD(v48);
  v174 = v47;
  v50 = 1;
  v168 = TypeAtIndex;
  IndexedType = TypeAtIndex;
  v52 = *(*v8 + 16) - 17 < 0xFFFFFFFE;
  do
  {
    v53 = v45;
    v45 = IndexedType;
    v54 = v8[v49];
    v55 = *(v54 + 16);
    if ((v55 - 15) > 1)
    {
LABEL_80:
      v52 = 1;
      goto LABEL_81;
    }

    if (*(v8[v49 - 1] + 16) - 17 >= 0xFFFFFFFE && (v173 & (v49 == v174)) == 0)
    {
      v56 = *(IndexedType + 8);
      if (v56 != 16)
      {
        if ((v56 & 0xFE) == 0x12)
        {
          goto LABEL_80;
        }

        if (v55 == 16)
        {
          v164 = v49 - 1;
          if (isIndexInRangeOfArrayType(*(IndexedType + 32), v54))
          {
            goto LABEL_81;
          }

          v58 = (v54 + 24);
          v59 = *(v54 + 8);
          v60 = v59 - 1;
          if (v59 >= 0x41)
          {
            v58 = (*v58 + 8 * (v60 >> 6));
          }

          if ((*v58 >> v60))
          {
            goto LABEL_80;
          }
        }

        else
        {
          v169 = v6;
          v61 = *(*v54 + 8);
          v165 = v52;
          v62 = *(*v54 + 32);
          if (!v62)
          {
            v6 = v169;
            v23 = v172;
            goto LABEL_81;
          }

          v164 = v49 - 1;
          v63 = 0;
          v64 = 1;
          do
          {
            ElementAsConstant = llvm::ConstantDataSequential::getElementAsConstant(v54, v63);
            v66 = isIndexInRangeOfArrayType(*(v45 + 32), ElementAsConstant);
            v67 = (ElementAsConstant + 24);
            v68 = *(ElementAsConstant + 32);
            v69 = v68 - 1;
            if (v68 >= 0x41)
            {
              v67 = (*v67 + 8 * (v69 >> 6));
            }

            if ((*v67 >> v69))
            {
              v52 = 1;
              v6 = v169;
              v23 = v172;
              goto LABEL_81;
            }

            v64 &= v66;
            ++v63;
          }

          while (v62 != v63);
          v70 = v64 | v165;
          v52 = v165;
          v6 = v169;
          v23 = v172;
          if (v70)
          {
            goto LABEL_81;
          }

          v52 = 0;
        }

        if (*(v53 + 8) == 16)
        {
          goto LABEL_80;
        }

        v71 = *(v45 + 32);
        if (!v71)
        {
          goto LABEL_80;
        }

        llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(&v176, v23);
        FoldedCast = *(v176 + v164);
        if (!FoldedCast)
        {
          FoldedCast = v8[v164];
        }

        Splat = v8[v49];
        v76 = *(*Splat + 8) & 0xFE;
        v77 = v76 == 18;
        v78 = *(*FoldedCast + 8) & 0xFE;
        if (v78 == 18)
        {
          v77 = 1;
        }

        v170 = v77;
        if (v76 != 18 && v78 == 18)
        {
          Splat = llvm::ConstantDataVector::getSplat(*(*FoldedCast + 32), Splat, v72);
        }

        else if (v78 != 18 && v76 == 18)
        {
          FoldedCast = llvm::ConstantDataVector::getSplat(*(*Splat + 32), FoldedCast, v72);
        }

        v81 = *Splat;
        if ((*(*Splat + 8) & 0xFE) == 0x12)
        {
          v81 = **(v81 + 2);
        }

        v84 = llvm::ConstantInt::get(v81, v71, 0, v73);
        if (v170)
        {
          if (v78 == 18)
          {
            v85 = FoldedCast;
          }

          else
          {
            v85 = Splat;
          }

          v84 = llvm::ConstantDataVector::getSplat(*(*v85 + 32), v84, v82);
        }

        v163 = v78;
        v86 = llvm::ConstantFoldBinaryInstruction(0x17, Splat, v84, v83);
        *(v176 + v49) = v86;
        v88 = llvm::ConstantFoldBinaryInstruction(0x14, Splat, v84, v87);
        v89 = *FoldedCast;
        v166 = v52;
        if ((*(*FoldedCast + 8) & 0xFE) == 0x12)
        {
          v89 = **(v89 + 2);
        }

        PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v89);
        v91 = *v88;
        v92 = *v88;
        if ((*(*v88 + 8) & 0xFE) == 0x12)
        {
          v92 = **(v91 + 2);
        }

        v93 = llvm::Type::getPrimitiveSizeInBits(v92);
        if (PrimitiveSizeInBits <= v93)
        {
          v94 = v93;
        }

        else
        {
          v94 = PrimitiveSizeInBits;
        }

        if (v94 <= 0x40)
        {
          v95 = 64;
        }

        else
        {
          v95 = v94;
        }

        v96 = llvm::IntegerType::get(*v91, v95);
        if (v170)
        {
          if (v163 == 18)
          {
            v99 = FoldedCast;
          }

          else
          {
            v99 = Splat;
          }

          v98.n128_f64[0] = llvm::FixedVectorType::get(v96, *(*v99 + 32));
        }

        v23 = v172;
        v52 = v166;
        v100 = *(*FoldedCast + 8);
        if ((v100 & 0xFE) == 0x12)
        {
          v100 = *(**(*FoldedCast + 16) + 8);
        }

        if (v100 != 13 || v100 >> 8 != v95)
        {
          FoldedCast = getFoldedCast(40, FoldedCast, v98);
        }

        v101 = v88;
        v102 = *(*v88 + 8);
        if ((v102 & 0xFE) == 0x12)
        {
          v102 = *(**(*v88 + 16) + 8);
        }

        v103 = v102;
        v104 = v102 >> 8;
        if (v103 != 13 || v104 != v95)
        {
          v101 = getFoldedCast(40, v88, v98);
        }

        v106 = llvm::ConstantExpr::get(0xD, FoldedCast, v101, 0, 0, v97);
        *(v176 + v164) = v106;
      }
    }

LABEL_81:
    v57 = llvm::generic_gep_type_iterator<llvm::Value const* const*>::operator++(v175);
    IndexedType = llvm::generic_gep_type_iterator<llvm::Use const*>::getIndexedType(v57);
    ++v50;
    ++v49;
  }

  while (v50 != v23);
  v46 = v52;
  v107 = v177;
  a4 = v167;
  TypeAtIndex = v168;
  if (v177)
  {
    v108 = v171;
    if (v23)
    {
      v109 = 0;
      do
      {
        if (!*(v176 + v109 * 8))
        {
          *(v176 + v109 * 8) = v8[v109];
        }

        ++v109;
      }

      while (v23 != v109);
    }

    v110 = v176;
    v111 = v168;
    v112 = v6;
LABEL_158:
    ElementPtr = llvm::ConstantExpr::getGetElementPtr(v111, v112, v110, v107, v108, a4, 0);
    goto LABEL_175;
  }

LABEL_159:
  ElementPtr = 0;
  if (!v46 && (v171 & 1) == 0)
  {
    if (v6[16] == 3 && (llvm::GlobalValue::hasExternalWeakLinkage(v6) & 1) == 0 && *(v6 + 3) == TypeAtIndex && isInBoundsIndices<llvm::Value *>(v8, v23))
    {
      v111 = TypeAtIndex;
      v112 = v6;
      v110 = v8;
      v107 = v23;
      v108 = 1;
      goto LABEL_158;
    }

    ElementPtr = 0;
  }

LABEL_175:
  if (v176 != v178)
  {
    free(v176);
  }

LABEL_173:
  v117 = *MEMORY[0x277D85DE8];
  return ElementPtr;
}

BOOL isIndexInRangeOfArrayType(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 - llvm::APInt::getNumSignBits((a2 + 24)) + 1 > 0x40)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (v5 > 0x40)
  {
    v6 = **(a2 + 24);
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = (*(a2 + 24) << -v5) >> -v5;
  if ((v6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

LABEL_4:
  if (v6)
  {
    v7 = v6 >= a1;
  }

  else
  {
    v7 = 0;
  }

  return !v7;
}

uint64_t isInBoundsIndices<llvm::Value *>(llvm::Constant **a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  if (llvm::Constant::isNullValue(*a1))
  {
    return 1;
  }

  v5 = *a1;
  if (*a1 && *(v5 + 16) == 16)
  {
    v6 = *(v5 + 8);
    if (v6 <= 0x40)
    {
      v7 = *(v5 + 3);
      goto LABEL_9;
    }

    v9 = llvm::APInt::countLeadingZerosSlowCase((v5 + 24));
    v10 = v6 - 1;
  }

  else
  {
    result = llvm::ConstantDataVector::isSplat(*a1);
    if (!result)
    {
      return result;
    }

    result = llvm::ConstantDataSequential::getElementAsConstant(v5, 0);
    if (!result)
    {
      return result;
    }

    if (*(result + 16) != 16)
    {
      return 0;
    }

    v8 = *(result + 32);
    if (v8 <= 0x40)
    {
      v7 = *(result + 24);
LABEL_9:
      if (v7 != 1)
      {
        return 0;
      }

      goto LABEL_18;
    }

    v9 = llvm::APInt::countLeadingZerosSlowCase((result + 24));
    v10 = v8 - 1;
  }

  if (v9 != v10)
  {
    return 0;
  }

LABEL_18:
  if (v2 == 1)
  {
    return 1;
  }

  v11 = v2 - 2;
  v12 = a1 + 1;
  do
  {
    v13 = *v12++;
    result = llvm::Constant::isNullValue(v13);
    v15 = v11-- != 0;
  }

  while (result && v15);
  return result;
}

uint64_t llvm::APSInt::compareValues(llvm::APSInt *this, const llvm::APSInt *a2, const llvm::APSInt *a3)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v5 != v6 || *(this + 12) != *(a2 + 12))
  {
    if (v5 <= v6)
    {
      if (v6 <= v5)
      {
        if (*(this + 12))
        {
          if (*(a2 + 12))
          {
            goto LABEL_26;
          }

          v12 = (*a2 + 8 * ((v6 - 1) >> 6));
          if (v6 < 0x41)
          {
            v12 = a2;
          }

          if (((*v12 >> (v6 - 1)) & 1) == 0)
          {
            goto LABEL_26;
          }

          return 1;
        }

        else
        {
          v13 = v5 - 1;
          if (v5 >= 0x41)
          {
            v14 = (*this + 8 * ((v5 - 1) >> 6));
          }

          else
          {
            v14 = this;
          }

          if (((*v14 >> v13) & 1) == 0)
          {
            goto LABEL_26;
          }

          return 0xFFFFFFFFLL;
        }
      }

      llvm::APSInt::extend(&v15, this, v6);
      v10 = &v15;
      v9 = a2;
    }

    else
    {
      llvm::APSInt::extend(&v15, a2, v5);
      v9 = &v15;
      v10 = this;
    }

    v11 = llvm::APSInt::compareValues(v10, v9, v8);
    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x277C69E10](v15, 0x1000C8000313F17);
    }

    return v11;
  }

  if (!*(this + 12))
  {

    return llvm::APInt::compareSigned(this, a2);
  }

LABEL_26:

  return llvm::APInt::compare(this, a2);
}

llvm::APInt *llvm::APSInt::extend(llvm::APSInt *this, llvm::APInt *a2, unsigned int a3)
{
  if (*(a2 + 12) == 1)
  {
    v5 = v10;
    result = llvm::APInt::zext(a2, a3, v10);
  }

  else
  {
    v5 = v9;
    result = llvm::APInt::sext(a2, a3, v9);
  }

  v7 = *(a2 + 12);
  v8 = *v5;
  *(this + 2) = *(v5 + 2);
  *this = v8;
  *(this + 12) = v7;
  return result;
}

uint64_t areGlobalsPotentiallyEqual(const llvm::GlobalValue *a1, const llvm::GlobalValue *a2)
{
  if (*(a1 + 16) == 1)
  {
    return 42;
  }

  if (*(a2 + 16) == 1)
  {
    return 42;
  }

  if (llvm::GlobalValue::isInterposable(a1))
  {
    return 42;
  }

  if ((*(a1 + 8) & 0xC0) == 0x80)
  {
    return 42;
  }

  if (*(a1 + 16) == 3)
  {
    v5 = *(a1 + 3);
    if (!llvm::Type::isSized(v5, 0) || (llvm::Type::isEmptyTy(v5, v6) & 1) != 0)
    {
      return 42;
    }
  }

  if (llvm::GlobalValue::isInterposable(a2))
  {
    return 42;
  }

  if ((*(a2 + 8) & 0xC0) == 0x80)
  {
    return 42;
  }

  if (*(a2 + 16) == 3)
  {
    v7 = *(a2 + 3);
    if (!llvm::Type::isSized(v7, 0) || llvm::Type::isEmptyTy(v7, v8))
    {
      return 42;
    }
  }

  return 33;
}

uint64_t llvm::GEPOperator::hasAllZeroIndices(llvm::GEPOperator *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x40000000) != 0)
  {
    v3 = *(this - 1);
    v2 = v1 & 0x7FFFFFF;
  }

  else
  {
    v2 = v1 & 0x7FFFFFF;
    v3 = this - 32 * v2;
  }

  if (v2 == 1)
  {
    return 1;
  }

  v5 = v3 + 32;
  v6 = 32 * v2 - 32;
  while (1)
  {
    v7 = *v5;
    if (!*v5 || *(*v5 + 16) != 16)
    {
      break;
    }

    v9 = *(v7 + 32);
    if (v9 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v7 + 24)) != v9)
      {
        return 0;
      }
    }

    else if (*(v7 + 24))
    {
      return 0;
    }

    v5 += 32;
    v6 -= 32;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_neg_zero_fp,llvm::ConstantFP>::match<llvm::Constant>(uint64_t SplatValue)
{
  v1 = SplatValue;
  if (!SplatValue || *(SplatValue + 16) != 17)
  {
    v3 = *SplatValue;
    if (*SplatValue)
    {
      v4 = (*(*SplatValue + 8) & 0xFE) == 18;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      goto LABEL_29;
    }

    SplatValue = llvm::Constant::getSplatValue(SplatValue, 0);
    if (!SplatValue || *(SplatValue + 16) != 17)
    {
      if (*(v3 + 8) == 18)
      {
        v5 = *(v3 + 32);
        if (v5)
        {
          v6 = 0;
          LOBYTE(v7) = 0;
          while (1)
          {
            AggregateElement = llvm::Constant::getAggregateElement(v1, v6);
            if (!AggregateElement)
            {
              break;
            }

            v9 = *(AggregateElement + 16);
            if ((v9 - 11) >= 2)
            {
              if (v9 != 17)
              {
                goto LABEL_29;
              }

              v10 = *(AggregateElement + 32) == &llvm::semPPCDoubleDouble ? *(*(AggregateElement + 40) + 28) : *(AggregateElement + 52);
              if ((v10 & 7) != 3 || (v10 & 8) == 0)
              {
                goto LABEL_29;
              }

              LOBYTE(v7) = 1;
            }

            v6 = (v6 + 1);
            if (v5 == v6)
            {
              return v7 & 1;
            }
          }
        }
      }

      goto LABEL_29;
    }
  }

  if (*(SplatValue + 32) == &llvm::semPPCDoubleDouble)
  {
    v2 = *(*(SplatValue + 40) + 28);
  }

  else
  {
    v2 = *(SplatValue + 52);
  }

  if ((v2 & 7) != 3)
  {
LABEL_29:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v7 = (v2 >> 3) & 1;
  return v7 & 1;
}

llvm::ConstantRange *llvm::ConstantRange::ConstantRange(llvm::ConstantRange *this, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  llvm::APInt::APInt(this, a2, v4);
  v5 = *(this + 2);
  *(this + 6) = v5;
  if (v5 > 0x40)
  {
    operator new[]();
  }

  *(this + 2) = *this;
  return this;
}

BOOL llvm::ConstantRange::isEmptySet(const void **this)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    if (memcmp(*this, this[2], ((v2 + 63) >> 3) & 0x3FFFFFF8))
    {
      return 0;
    }

    return llvm::APInt::countLeadingZerosSlowCase(this) == v2;
  }

  else
  {
    return (this[2] | *this) == 0;
  }
}

BOOL llvm::ConstantRange::isFullSet(const void **this)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    if (!memcmp(*this, this[2], ((v2 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*this != this[2])
  {
    return 0;
  }

LABEL_3:

  return llvm::APInt::isAllOnes(this);
}

uint64_t llvm::ConstantRange::intersectWith@<X0>(const void **a1@<X0>, const void **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  while (1)
  {
    v7 = a2;
    a2 = a1;
    result = llvm::ConstantRange::isEmptySet(a1);
    if ((result & 1) != 0 || (result = llvm::ConstantRange::isFullSet(v7), result))
    {
      v15 = *(a2 + 2);
      *(a4 + 8) = v15;
      if (v15 > 0x40)
      {
        operator new[]();
      }

      *a4 = *a2;
      v17 = *(a2 + 6);
      *(a4 + 24) = v17;
      if (v17 > 0x40)
      {
        operator new[]();
      }

      v18 = a2[2];
LABEL_22:
      *(a4 + 16) = v18;
      return result;
    }

    result = llvm::ConstantRange::isEmptySet(v7);
    if ((result & 1) != 0 || (result = llvm::ConstantRange::isFullSet(a2), result))
    {
      v16 = *(v7 + 2);
      *(a4 + 8) = v16;
      if (v16 > 0x40)
      {
        operator new[]();
      }

      *a4 = *v7;
      v19 = *(v7 + 6);
      *(a4 + 24) = v19;
      if (v19 > 0x40)
      {
        operator new[]();
      }

      v18 = v7[2];
      goto LABEL_22;
    }

    v9 = llvm::APInt::compare(a2, (a2 + 2));
    v10 = llvm::APInt::compare(v7, (v7 + 2));
    v11 = v10;
    if (v9 > 0)
    {
      break;
    }

    a1 = v7;
    if (v11 <= 0)
    {
      if ((llvm::APInt::compare(a2, v7) & 0x80000000) == 0)
      {
        result = llvm::APInt::compare((a2 + 2), (v7 + 2));
        if ((result & 0x80000000) != 0)
        {
          v26 = *(a2 + 2);
          *(a4 + 8) = v26;
          if (v26 > 0x40)
          {
            operator new[]();
          }

          *a4 = *a2;
          v30 = *(a2 + 6);
          *(a4 + 24) = v30;
          if (v30 > 0x40)
          {
            operator new[]();
          }

          v18 = a2[2];
          goto LABEL_22;
        }

        result = llvm::APInt::compare(a2, (v7 + 2));
        v12 = *(a2 + 2);
        if ((result & 0x80000000) == 0)
        {
LABEL_10:
          v13 = a4;
          v14 = v12;
LABEL_55:

          return llvm::ConstantRange::ConstantRange(v13, v14, 0);
        }

        if (v12 > 0x40)
        {
          operator new[]();
        }

        v27 = *a2;
        v36 = *(v7 + 6);
        if (v36 > 0x40)
        {
          operator new[]();
        }

        v37 = v7[2];
        *(a4 + 8) = v12;
        *a4 = v27;
        *(a4 + 24) = v36;
LABEL_98:
        *(a4 + 16) = v37;
        return result;
      }

      if (llvm::APInt::compare((a2 + 2), v7) <= 0)
      {
        v14 = *(a2 + 2);
        v13 = a4;
        goto LABEL_55;
      }

      result = llvm::APInt::compare((a2 + 2), (v7 + 2));
      if ((result & 0x80000000) != 0)
      {
        v32 = *(v7 + 2);
        if (v32 > 0x40)
        {
          operator new[]();
        }

        v33 = *v7;
        v40 = *(a2 + 6);
        if (v40 > 0x40)
        {
          operator new[]();
        }

        v39 = a2[2];
        *(a4 + 8) = v32;
        *a4 = v33;
        *(a4 + 24) = v40;
        goto LABEL_88;
      }

      v23 = *(v7 + 2);
      *(a4 + 8) = v23;
      if (v23 > 0x40)
      {
        operator new[]();
      }

      *a4 = *v7;
      v35 = *(v7 + 6);
      *(a4 + 24) = v35;
      if (v35 <= 0x40)
      {
LABEL_74:
        v18 = v7[2];
        goto LABEL_22;
      }

LABEL_78:
      operator new[]();
    }
  }

  if (v10 <= 0)
  {
    if ((llvm::APInt::compare(v7, (a2 + 2)) & 0x80000000) == 0)
    {
      result = llvm::APInt::compare(v7, a2);
      if ((result & 0x80000000) == 0)
      {
        v22 = *(v7 + 2);
        *(a4 + 8) = v22;
        if (v22 > 0x40)
        {
          operator new[]();
        }

        *a4 = *v7;
        v34 = *(v7 + 6);
        *(a4 + 24) = v34;
        if (v34 <= 0x40)
        {
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      result = llvm::APInt::compare((v7 + 2), a2);
      v12 = *(a2 + 2);
      if (result <= 0)
      {
        goto LABEL_10;
      }

      if (v12 > 0x40)
      {
        operator new[]();
      }

      v31 = *a2;
      v41 = *(v7 + 6);
      if (v41 > 0x40)
      {
        operator new[]();
      }

      v37 = v7[2];
      *(a4 + 8) = v12;
      *a4 = v31;
LABEL_97:
      *(a4 + 24) = v41;
      goto LABEL_98;
    }

    if ((llvm::APInt::compare((v7 + 2), (a2 + 2)) & 0x80000000) == 0)
    {
      result = llvm::APInt::compare((v7 + 2), a2);
      if (result <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_47;
    }

LABEL_50:
    v20 = a4;
    v21 = v7;
LABEL_51:

    return llvm::ConstantRange::ConstantRange(v20, v21);
  }

  if ((llvm::APInt::compare((v7 + 2), (a2 + 2)) & 0x80000000) != 0)
  {
    if ((llvm::APInt::compare(v7, (a2 + 2)) & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    result = llvm::APInt::compare(v7, a2);
    if ((result & 0x80000000) != 0)
    {
      v24 = *(a2 + 2);
      if (v24 > 0x40)
      {
        operator new[]();
      }

      v25 = *a2;
      v41 = *(v7 + 6);
      if (v41 > 0x40)
      {
        operator new[]();
      }

      v37 = v7[2];
      *(a4 + 8) = v24;
      *a4 = v25;
      goto LABEL_97;
    }

    goto LABEL_50;
  }

  if (llvm::APInt::compare((v7 + 2), a2) > 0)
  {
LABEL_47:

    return getPreferredRange(a4, a2, v7, a3);
  }

  result = llvm::APInt::compare(v7, a2);
  if ((result & 0x80000000) != 0)
  {
    v20 = a4;
    v21 = a2;
    goto LABEL_51;
  }

LABEL_58:
  v28 = *(v7 + 2);
  if (v28 > 0x40)
  {
    operator new[]();
  }

  v29 = *v7;
  v38 = *(a2 + 6);
  if (v38 > 0x40)
  {
    operator new[]();
  }

  v39 = a2[2];
  *(a4 + 8) = v28;
  *a4 = v29;
  *(a4 + 24) = v38;
LABEL_88:
  *(a4 + 16) = v39;
  return result;
}

uint64_t llvm::ConstantRange::isWrappedSet(llvm::ConstantRange *this)
{
  if (llvm::APInt::compare(this, (this + 16)) < 1)
  {
    return 0;
  }

  v2 = *(this + 6);
  if (v2 > 0x40)
  {
    v3 = llvm::APInt::countLeadingZerosSlowCase((this + 16)) == v2;
  }

  else
  {
    v3 = *(this + 2) == 0;
  }

  v5 = v3;
  return v5 ^ 1u;
}

BOOL llvm::ConstantRange::isSizeStrictlySmallerThan(const void **this, const void **a2)
{
  if (llvm::ConstantRange::isFullSet(this))
  {
    return 0;
  }

  if (llvm::ConstantRange::isFullSet(a2))
  {
    return 1;
  }

  v15 = *(this + 6);
  if (v15 > 0x40)
  {
    operator new[]();
  }

  v14 = this[2];
  llvm::APInt::operator-=(&v14, this);
  v5 = v15;
  v6 = v14;
  v15 = 0;
  v13 = *(a2 + 6);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  v12 = a2[2];
  llvm::APInt::operator-=(&v12, a2);
  v7 = v13;
  v13 = 0;
  if (v5 > 0x40)
  {
    v8 = ((v5 + 63) >> 3) & 0x3FFFFFF8;
    while (v8)
    {
      v9 = *&v6[v8 - 8];
      v10 = *&v12[v8 - 8];
      v8 -= 8;
      if (v9 != v10)
      {
        v4 = v9 <= v10;
        goto LABEL_18;
      }
    }

    v4 = 0;
  }

  else
  {
    v4 = v6 < v12;
  }

LABEL_18:
  if (v7 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x277C69E10](v12, 0x1000C8000313F17);
      if (v13 >= 0x41)
      {
        if (v12)
        {
          MEMORY[0x277C69E10](v12, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v5 >= 0x41 && v6)
  {
    MEMORY[0x277C69E10](v6, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x277C69E10](v14, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t getPreferredRange(uint64_t a1, llvm::ConstantRange *this, llvm::ConstantRange *a3, int a4)
{
  if (a4 == 2)
  {
    if (!llvm::ConstantRange::isSignWrappedSet(this))
    {
      result = llvm::ConstantRange::isSignWrappedSet(a3);
      if (result)
      {
        goto LABEL_13;
      }
    }

    if (llvm::ConstantRange::isSignWrappedSet(this))
    {
      result = llvm::ConstantRange::isSignWrappedSet(a3);
      if ((result & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else if (a4 == 1)
  {
    isWrappedSet = llvm::ConstantRange::isWrappedSet(this);
    result = llvm::ConstantRange::isWrappedSet(a3);
    if (isWrappedSet)
    {
      if ((result & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (result)
    {
      goto LABEL_13;
    }
  }

  result = llvm::ConstantRange::isSizeStrictlySmallerThan(this, a3);
  if (!result)
  {
LABEL_15:
    v10 = *(a3 + 2);
    *(a1 + 8) = v10;
    if (v10 > 0x40)
    {
      operator new[]();
    }

    *a1 = *a3;
    v13 = *(a3 + 6);
    *(a1 + 24) = v13;
    if (v13 > 0x40)
    {
      operator new[]();
    }

    v12 = *(a3 + 2);
    goto LABEL_24;
  }

LABEL_13:
  v9 = *(this + 2);
  *(a1 + 8) = v9;
  if (v9 > 0x40)
  {
    operator new[]();
  }

  *a1 = *this;
  v11 = *(this + 6);
  *(a1 + 24) = v11;
  if (v11 > 0x40)
  {
    operator new[]();
  }

  v12 = *(this + 2);
LABEL_24:
  *(a1 + 16) = v12;
  return result;
}

uint64_t llvm::Constant::getSplatValue(llvm::Constant *this, llvm::Type *a2)
{
  v3 = 0;
  v4 = *(this + 16);
  if (v4 <= 0xC)
  {
    if (v4 != 5)
    {
      if (v4 == 10)
      {
        v5 = *(this + 5) & 0x7FFFFFF;
        v6 = *(this - 4 * v5);
        if (v5 < 2)
        {
          return *(this - 4 * v5);
        }

        else
        {
          v7 = -32 * v5;
          do
          {
            v3 = *(this + v7 + 32);
            v8 = v3 == v6 || a2 == 0;
            if (v8)
            {
              v8 = v3 == v6;
              v3 = v6;
              if (!v8)
              {
                return 0;
              }
            }

            else if (*(v3 + 16) - 11 >= 2)
            {
              if (*(v6 + 16) - 11 >= 2)
              {
                return 0;
              }
            }

            else
            {
              v3 = v6;
            }

            v7 += 32;
            v6 = v3;
          }

          while (v7 != -32);
        }
      }

      return v3;
    }

    if (*(this + 9) != 63)
    {
      return 0;
    }

    v11 = (this - 32 * (*(this + 5) & 0x7FFFFFF));
    if (*(v11[4] + 16) - 11 > 1)
    {
      return 0;
    }

    v12 = *v11;
    if (!v12 || *(v12 + 16) != 5)
    {
      return 0;
    }

    if (*(v12 + 18) != 62)
    {
      return 0;
    }

    v14 = (v12 - 32 * (*(v12 + 20) & 0x7FFFFFF));
    if (*(*v14 + 16) - 11 > 1)
    {
      return 0;
    }

    v15 = v14[8];
    if (!v15 || *(v15 + 16) != 16)
    {
      return 0;
    }

    v17 = *(this + 3);
    v18 = *(this + 8);
    v3 = v14[4];
    v19 = (v15 + 24);
    v20 = *(v15 + 32);
    if (v20 >= 0x41)
    {
      if (v20 - llvm::APInt::countLeadingZerosSlowCase((v15 + 24)) > 0x40)
      {
        return 0;
      }

      v19 = *v19;
    }

    if (!*v19)
    {
      if (v18)
      {
        v21 = 4 * v18;
        while (!*v17)
        {
          ++v17;
          v21 -= 4;
          if (!v21)
          {
            return v3;
          }
        }

        return 0;
      }

      return v3;
    }

    return 0;
  }

  if (v4 == 15)
  {
    if (!llvm::ConstantDataVector::isSplat(this))
    {
      return 0;
    }

    return llvm::ConstantDataSequential::getElementAsConstant(this, 0);
  }

  else
  {
    if (v4 != 13)
    {
      return v3;
    }

    v9 = *(*this + 24);

    return llvm::Constant::getNullValue(v9, a2);
  }
}

uint64_t llvm::Constant::isNullValue(llvm::Constant *this)
{
  v1 = *(this + 16);
  if (this && v1 == 16)
  {
    v2 = *(this + 8);
    if (v2 > 0x40)
    {
      v3 = llvm::APInt::countLeadingZerosSlowCase((this + 24)) == v2;
    }

    else
    {
      v3 = *(this + 3) == 0;
    }

    LOBYTE(v6) = v3;
    return v6 & 1;
  }

  if (!this || v1 != 17)
  {
    v5 = v1 > 0x14;
    v6 = 0x1C2000u >> v1;
    if (v5)
    {
      LOBYTE(v6) = 0;
    }

    return v6 & 1;
  }

  return llvm::ConstantFP::isExactlyValue(this, 0.0);
}

uint64_t llvm::Constant::isZeroValue(llvm::Constant *this)
{
  if (this && *(this + 16) == 17)
  {
    if (*(this + 4) == &llvm::semPPCDoubleDouble)
    {
      v2 = *(this + 5);
    }

    else
    {
      v2 = this + 24;
    }

    return (v2[28] & 7) == 3;
  }

  if ((*(*this + 8) & 0xFE) == 0x12)
  {
    SplatValue = llvm::Constant::getSplatValue(this, 0);
    if (SplatValue)
    {
      if (*(SplatValue + 16) == 17)
      {
        if (*(SplatValue + 32) == &llvm::semPPCDoubleDouble)
        {
          v2 = *(SplatValue + 40);
        }

        else
        {
          v2 = (SplatValue + 24);
        }

        return (v2[28] & 7) == 3;
      }
    }
  }

  return llvm::Constant::isNullValue(this);
}

BOOL llvm::Constant::isAllOnesValue(llvm::Constant *this)
{
  while (1)
  {
    v1 = *(this + 16);
    if (this)
    {
      if (v1 == 16)
      {
        break;
      }
    }

    if (this && v1 == 17)
    {
      llvm::APFloat::bitcastToAPInt(&v5, (this + 24));
      isAllOnes = llvm::APInt::isAllOnes(&v5);
      if (v6 >= 0x41 && v5)
      {
        MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
      }

      return isAllOnes;
    }

    if ((*(*this + 8) & 0xFE) == 0x12)
    {
      this = llvm::Constant::getSplatValue(this, 0);
      if (this)
      {
        continue;
      }
    }

    return 0;
  }

  v3 = (this + 24);

  return llvm::APInt::isAllOnes(v3);
}

uint64_t llvm::Constant::getAggregateElement(llvm::Constant *this, llvm::Type *a2)
{
  v2 = *(this + 16);
  if (this && (v2 - 11) >= 0xFDu)
  {
    v3 = *(this + 5) & 0x7FFFFFF;
    if (v3 > a2)
    {
      return *(this + 4 * a2 + -4 * v3);
    }

    return 0;
  }

  v5 = *this;
  v6 = *(*this + 8);
  if (this && v2 == 13)
  {
    if (v5 && v6 == 17)
    {
      v7 = *(v5 + 32);
    }

    else if (v5 && (v6 & 0xFE) == 0x12)
    {
      LODWORD(v7) = *(v5 + 32);
    }

    else
    {
      LODWORD(v7) = *(v5 + 12);
    }

    if (v7 > a2)
    {
      if (v6 == 17 || (v6 & 0xFE) == 18)
      {
        v11 = (v5 + 24);
      }

      else
      {
        v11 = (*(v5 + 16) + 8 * a2);
      }

      return llvm::Constant::getNullValue(*v11, a2);
    }

    return 0;
  }

  if (v6 == 19)
  {
    return 0;
  }

  if (v2 == 12)
  {
    if (v6 == 17 || (v6 & 0xFE) == 0x12)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      v8 = *(v5 + 12);
    }

    if (v8 <= a2)
    {
      return 0;
    }

    if (v6 == 17 || (v6 & 0xFE) == 18)
    {
      v13 = (v5 + 24);
    }

    else
    {
      v13 = (*(v5 + 16) + 8 * a2);
    }

    return llvm::PoisonValue::get(*v13, a2);
  }

  else
  {
    if ((v2 - 11) > 1u)
    {
      if ((v2 & 0xFE) == 0xE && *(v5 + 32) > a2)
      {
        return llvm::ConstantDataSequential::getElementAsConstant(this, a2);
      }

      return 0;
    }

    if (v6 == 17 || (v6 & 0xFE) == 0x12)
    {
      v9 = *(v5 + 32);
    }

    else
    {
      v9 = *(v5 + 12);
    }

    if (v9 <= a2)
    {
      return 0;
    }

    if (v6 == 17 || (v6 & 0xFE) == 0x12)
    {
      v14 = (v5 + 24);
    }

    else
    {
      v14 = (*(v5 + 16) + 8 * a2);
    }

    return llvm::UndefValue::get(*v14, a2);
  }
}

void *llvm::ConstantExpr::getICmp(llvm::ConstantExpr *this, llvm::Type *a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v4 = a4;
  v7 = this;
  v19[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldCompareInstruction(this, a2, a3, a4);
  if (!result && (v4 & 1) == 0)
  {
    v19[0] = a2;
    v19[1] = a3;
    v10 = ***a2;
    v11 = (v10 + 1920);
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      llvm::VectorType::get((v10 + 1920), (*(*a2 + 32) | (((~*(*a2 + 8) & 0x13) == 0) << 32)));
      v11 = v12;
      v10 = ***a2;
    }

    LOWORD(v14) = 53;
    WORD1(v14) = v7;
    *(&v14 + 1) = v19;
    v15 = 2;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    result = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v10 + 1544, v11, &v14, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t containsUndefinedElement(llvm::Constant *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = (*(*a1 + 8) & 0xFE) == 18;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  if ((a2(a3, a1) & 1) == 0)
  {
    if (*(a1 + 16) == 13)
    {
      return 0;
    }

    if (*(*a1 + 8) == 19)
    {
      return 0;
    }

    v9 = *(v3 + 32);
    if (!v9)
    {
      return 0;
    }

    v10 = 0;
    while (1)
    {
      AggregateElement = llvm::Constant::getAggregateElement(a1, v10);
      if (AggregateElement)
      {
        if (a2(a3, AggregateElement))
        {
          break;
        }
      }

      result = 0;
      v10 = (v10 + 1);
      if (v9 == v10)
      {
        return result;
      }
    }
  }

  return 1;
}

BOOL llvm::Constant::containsConstantExpression(llvm::Constant *this)
{
  if (*this)
  {
    v1 = *(*this + 8) == 18;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(*this + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = v2 - 1;
  do
  {
    v6 = *(llvm::Constant::getAggregateElement(this, v4) + 16);
    result = v6 == 5;
    v8 = v6 == 5 || v5 == v4;
    v4 = (v4 + 1);
  }

  while (!v8);
  return result;
}

uint64_t llvm::Constant::getNullValue(llvm::Constant *this, llvm::Type *a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  if (v2 > 0xC)
  {
    if (*(this + 8) <= 0xFu)
    {
      if (v2 == 13)
      {
        v9 = *MEMORY[0x277D85DE8];

        return llvm::ConstantInt::get(this, 0);
      }

      else
      {
        v10 = *MEMORY[0x277D85DE8];

        return llvm::ConstantPointerNull::get(this);
      }
    }

    else if (v2 - 16 >= 4)
    {
      v11 = *MEMORY[0x277D85DE8];

      return llvm::ConstantTargetNone::get(this);
    }

    else
    {
      v8 = *MEMORY[0x277D85DE8];

      return llvm::ConstantAggregateZero::get(this, a2);
    }
  }

  else if (v2 >= 7)
  {
    v12 = *this;
    v13 = *MEMORY[0x277D85DE8];

    return llvm::ConstantTokenNone::get(v12);
  }

  else
  {
    v3 = *this;
    FltSemantics = llvm::Type::getFltSemantics(this);
    llvm::APFloat::Storage::Storage<>(v15, FltSemantics);
    llvm::APFloat::makeZero(v14, 0);
    v5 = llvm::ConstantFP::get(v3, v14);
    llvm::APFloat::Storage::~Storage(v15);
    v6 = *MEMORY[0x277D85DE8];
    return v5;
  }
}

uint64_t llvm::ConstantInt::get(llvm::ConstantInt *this, llvm::Type *a2)
{
  v2 = this;
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    this = **(this + 2);
  }

  result = llvm::ConstantInt::get(this, a2);
  v5 = result;
  if ((*(v2 + 2) & 0xFE) == 0x12)
  {
    v6 = (*(v2 + 8) | (((~*(v2 + 2) & 0x13) == 0) << 32));

    return llvm::ConstantVector::getSplat(v6, v5, v4);
  }

  return result;
}

uint64_t llvm::ConstantFP::get(uint64_t *a1, uint64_t a2)
{
  v5 = (llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::FindAndConstruct((*a1 + 240), a2) + 32);
  result = *v5;
  if (!*v5)
  {
    v8 = *(a2 + 8);
    v7 = (a2 + 8);
    v6 = v8;
    if (v8 == &llvm::semIEEEhalf)
    {
      v10 = *a1 + 1656;
    }

    else if (v6 == &llvm::semBFloat)
    {
      v10 = *a1 + 1680;
    }

    else if (v6 == &llvm::semIEEEsingle)
    {
      v10 = *a1 + 1704;
    }

    else if (v6 == &llvm::semIEEEdouble)
    {
      v10 = *a1 + 1728;
    }

    else if (v6 == &llvm::semX87DoubleExtended)
    {
      v10 = *a1 + 1800;
    }

    else
    {
      v9 = *a1;
      if (v6 == &llvm::semIEEEquad)
      {
        v10 = *a1 + 1824;
      }

      else
      {
        v10 = *a1 + 1848;
      }
    }

    v11 = operator new(0x38uLL);
    *v11 = v10;
    v11[1] = 0;
    v11[2] = 17;
    llvm::APFloat::Storage::Storage((v11 + 4), v7);
    std::unique_ptr<llvm::ConstantFP>::reset[abi:nn200100](v5, v11);
    return *v5;
  }

  return result;
}

uint64_t llvm::ConstantPointerNull::get(uint64_t a1)
{
  v4 = a1;
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**a1 + 1352), &v4) + 1;
  result = *v2;
  if (!*v2)
  {
    v3 = operator new(0x18uLL);
    *v3 = v4;
    v3[1] = 0;
    v3[2] = 19;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v2, v3);
    return *v2;
  }

  return result;
}

uint64_t llvm::ConstantAggregateZero::get(llvm::ConstantAggregateZero *this, llvm::Type *a2)
{
  v5 = this;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**this + 1256), &v5) + 1;
  result = *v3;
  if (!*v3)
  {
    v4 = operator new(0x18uLL);
    *v4 = v5;
    v4[1] = 0;
    v4[2] = 13;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v3, v4);
    return *v3;
  }

  return result;
}

uint64_t llvm::ConstantTokenNone::get(uint64_t *a1)
{
  v2 = *a1;
  result = *(*a1 + 2064);
  if (!result)
  {
    v4 = v2 + 2064;
    v5 = operator new(0x18uLL);
    *v5 = *a1 + 1776;
    v5[1] = 0;
    v5[2] = 20;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v4, v5);
    return *v4;
  }

  return result;
}

uint64_t llvm::ConstantTargetNone::get(uint64_t a1)
{
  v4 = a1;
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**a1 + 1376), &v4) + 1;
  result = *v2;
  if (!*v2)
  {
    v3 = operator new(0x18uLL);
    *v3 = v4;
    v3[1] = 0;
    v3[2] = 18;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v2, v3);
    return *v2;
  }

  return result;
}

uint64_t llvm::ConstantInt::get(llvm::IntegerType *a1, llvm::APInt *this, uint64_t a3, unint64_t *a4)
{
  v6 = *a1;
  v7 = *(this + 2);
  if (v7 > 0x40)
  {
    v10 = llvm::APInt::countLeadingZerosSlowCase(this);
    if (v10 != v7)
    {
      if (v10 == v7 - 1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }

LABEL_6:
    v16 = v7;
    v8 = v6 + 21;
    v9 = &v16;
    goto LABEL_7;
  }

  if (!*this)
  {
    goto LABEL_6;
  }

  if (*this == 1)
  {
LABEL_4:
    v15 = v7;
    v8 = v6 + 24;
    v9 = &v15;
LABEL_7:
    v11 = (llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(v8, v9) + 2);
    goto LABEL_10;
  }

LABEL_9:
  v11 = (llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(v6 + 27, this, a3, a4) + 16);
LABEL_10:
  result = *v11;
  if (!*v11)
  {
    v13 = llvm::IntegerType::get(a1, *(this + 2));
    v14 = operator new(0x28uLL);
    v14[5] &= 0x38000000u;
    llvm::ConstantInt::ConstantInt(v14, v13, this);
    std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](v11, v14);
    return *v11;
  }

  return result;
}

uint64_t llvm::ConstantVector::getSplat(llvm::Type *a1, uint64_t a2, llvm::Constant *a3)
{
  v4 = a1;
  v29[32] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x100000000) == 0)
  {
    if ((*(a2 + 16) & 0xFE) == 0x10)
    {
      v5 = *(*a2 + 8);
      if (v5 < 4u || v5 == 13 && ((HIDWORD(v7) = (v5 >> 8) - 8, LODWORD(v7) = HIDWORD(v7), v6 = v7 >> 3, v8 = v6 > 7, v9 = (1 << v6) & 0x8B, !v8) ? (v10 = v9 == 0) : (v10 = 1), !v10))
      {
        v11 = *MEMORY[0x277D85DE8];

        return llvm::ConstantDataVector::getSplat(a1, a2, a3);
      }
    }

    v27 = v29;
    v28 = 0x2000000000;
    llvm::SmallVectorImpl<llvm::Constant *>::assign(&v27, a1, a2);
    ShuffleVector = llvm::ConstantVector::get(v27, v28);
    v18 = v27;
    if (v27 == v29)
    {
LABEL_18:
      v19 = *MEMORY[0x277D85DE8];
      return ShuffleVector;
    }

LABEL_17:
    free(v18);
    goto LABEL_18;
  }

  llvm::VectorType::get(*a2, a1);
  v14 = v13;
  if (llvm::Constant::isNullValue(a2))
  {
    v16 = *MEMORY[0x277D85DE8];

    return llvm::ConstantAggregateZero::get(v14, v15);
  }

  else
  {
    if (*(a2 + 16) - 11 > 1)
    {
      v21 = **v14;
      v22 = llvm::PoisonValue::get(v14, v15);
      v24 = llvm::ConstantInt::get((v21 + 2016), 0, 0, v23);
      InsertElement = llvm::ConstantExpr::getInsertElement(v22, a2, v24, 0, v25);
      v27 = v29;
      v28 = 0x800000000;
      llvm::SmallVectorImpl<int>::assign(&v27, v4, 0);
      ShuffleVector = llvm::ConstantExpr::getShuffleVector(InsertElement, v22, v27, v28, 0);
      v18 = v27;
      if (v27 == v29)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v20 = *MEMORY[0x277D85DE8];

    return llvm::UndefValue::get(v14, v15);
  }
}

uint64_t llvm::Constant::getAllOnesValue(llvm::Constant *this, llvm::Type *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  v4 = v3;
  if (this && v3 == 13)
  {
    v5 = *this;
    llvm::APInt::APInt(&v19, v3 >> 8, -1);
    v8 = llvm::ConstantInt::get(v5, &v19, v6, v7);
    if (v20[0] >= 0x41)
    {
      if (v19)
      {
        MEMORY[0x277C69E10](v19, 0x1000C8000313F17);
      }
    }

    goto LABEL_15;
  }

  v9 = v3 < 4u || v3 == 5;
  v10 = v3 & 0xFD;
  if (v9 || v10 == 4)
  {
    FltSemantics = llvm::Type::getFltSemantics(this);
    llvm::APFloat::getAllOnesValue(FltSemantics, &v19);
    v8 = llvm::ConstantFP::get(*this, &v19);
    llvm::APFloat::Storage::~Storage(v20);
LABEL_15:
    v13 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v15 = *(this + 8);
  v16 = v4 == 19;
  AllOnesValue = llvm::Constant::getAllOnesValue(*(this + 3), a2);
  v18 = *MEMORY[0x277D85DE8];

  return llvm::ConstantVector::getSplat(v15 | (v16 << 32), AllOnesValue);
}

uint64_t llvm::ConstantDataSequential::getElementAsConstant(llvm::ConstantDataSequential *this, unsigned int a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = *(*this + 24);
  if ((*(v2 + 8) & 0xFC) != 0)
  {
    ElementAsInteger = llvm::ConstantDataSequential::getElementAsInteger(this, a2);
    v5 = *MEMORY[0x277D85DE8];

    return llvm::ConstantInt::get(v2, ElementAsInteger, 0, v4);
  }

  else
  {
    v7 = **this;
    llvm::ConstantDataSequential::getElementAsAPFloat(this, a2, v10);
    v8 = llvm::ConstantFP::get(v7, v10);
    llvm::APFloat::Storage::~Storage(v11);
    v9 = *MEMORY[0x277D85DE8];
    return v8;
  }
}

uint64_t llvm::Constant::getAggregateElement(llvm::Constant *this, llvm::Constant *a2)
{
  if (!a2 || *(a2 + 16) != 16)
  {
    return 0;
  }

  v3 = (a2 + 24);
  v4 = *(a2 + 8);
  if (v4 >= 0x41)
  {
    if (v4 - llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) > 0x40)
    {
      return 0;
    }

    v3 = *v3;
  }

  v6 = *v3;

  return llvm::Constant::getAggregateElement(this, v6);
}

void llvm::Constant::destroyConstant(int32x2_t ****this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  switch(*(this + 16))
  {
    case 5:
      llvm::ConstantUniqueMap<llvm::ConstantExpr>::remove(***this + 193, this, a3, a4);
      goto LABEL_18;
    case 6:
      v17[0] = *(this - 4);
      llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(***v17[0] + 1496, v17);
      goto LABEL_18;
    case 7:
      v17[0] = *(this - 4);
      llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(***v17[0] + 1520, v17);
      goto LABEL_18;
    case 8:
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(***this + 160, this, a3, a4);
      goto LABEL_18;
    case 9:
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(***this + 163, this, a3, a4);
      goto LABEL_18;
    case 0xA:
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(***this + 166, this, a3, a4);
      goto LABEL_18;
    case 0xB:
      llvm::UndefValue::destroyConstantImpl(this);
    case 0xC:
      v10 = ***this;
      v17[0] = *this;
      llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(&v10[178], v17);
      goto LABEL_18;
    case 0xD:
      v8 = ***this;
      v16 = *this;
      v17[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v8[157], &v16, v17))
      {
        v9 = v17[0];
        std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v17[0] + 8, 0);
        *v9 = -8192;
        v8[158] = vadd_s32(v8[158], 0x1FFFFFFFFLL);
      }

      goto LABEL_18;
    case 0xE:
    case 0xF:
      llvm::ConstantDataSequential::destroyConstantImpl(this);
      goto LABEL_18;
    case 0x10:
    case 0x11:
      __break(1u);
      return;
    case 0x12:
      v13 = ***this;
      v16 = *this;
      v17[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v13[172], &v16, v17))
      {
        v14 = v17[0];
        std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v17[0] + 8, 0);
        *v14 = -8192;
        v13[173] = vadd_s32(v13[173], 0x1FFFFFFFFLL);
      }

      goto LABEL_18;
    case 0x13:
      v6 = ***this;
      v16 = *this;
      v17[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v6[169], &v16, v17))
      {
        v7 = v17[0];
        std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v17[0] + 8, 0);
        *v7 = -8192;
        v6[170] = vadd_s32(v6[170], 0x1FFFFFFFFLL);
      }

      goto LABEL_18;
    default:
      v11 = ****(this - 8);
      v12 = *(this - 4);
      v17[0] = *(this - 8);
      v17[1] = v12;
      llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::erase(v11 + 1472, v17);
      *(*(this - 4) + 9) = *(*(this - 4) + 9) & 0x8000 | (*(*(this - 4) + 9) - 1) & 0x7FFF;
LABEL_18:
      while (1)
      {
        v15 = this[1];
        if (!v15)
        {
          break;
        }

        llvm::Constant::destroyConstant(v15[3]);
      }

      llvm::deleteConstant(this, v5);
      return;
  }
}

void llvm::UndefValue::destroyConstantImpl(uint64_t ***this)
{
  if (*(this + 16) == 11)
  {
    v1 = ***this;
    v3 = *this;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(v1 + 1400, &v3);
    __break(1u);
  }

  v2 = ***this;
  v3 = *this;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(v2 + 1424, &v3);
  __break(1u);
}

void llvm::ConstantDataSequential::destroyConstantImpl(llvm::ConstantDataSequential *this)
{
  v2 = ***this;
  RawDataValues = llvm::ConstantDataSequential::getRawDataValues(this);
  Key = llvm::StringMapImpl::FindKey((v2 + 1448), RawDataValues, v4);
  v6 = *(v2 + 1448);
  if (Key == -1)
  {
    v7 = *(v2 + 1456);
  }

  else
  {
    v7 = Key;
  }

  v8 = *(v6 + 8 * v7);
  v10 = *(v8 + 8);
  v9 = (v8 + 8);
  if (!*(v10 + 32))
  {
    llvm::StringMapImpl::RemoveKey(***this + 1448, (*(v6 + 8 * v7) + *(***this + 1468)), **(v6 + 8 * v7));
    std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v9, 0);

    JUMPOUT(0x277C69E30);
  }

  do
  {
    v11 = v9;
    v12 = *v9;
    v9 = (*v9 + 32);
  }

  while (v12 != this);
  v13 = *v9;
  *v9 = 0;

  std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v11, v13);
}

void llvm::deleteConstant(llvm::Value **this, llvm::Constant *a2)
{
  switch(*(this + 16))
  {
    case 5:
      v4 = *(this + 9);
      if ((v4 - 38) <= 0xC || (v4 - 13) <= 0x11 || v4 != 63)
      {
        goto LABEL_2;
      }

      llvm::ShuffleVectorConstantExpr::~ShuffleVectorConstantExpr(this);
      goto LABEL_3;
    case 0xE:
    case 0xF:
      std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](this + 4, 0);
      goto LABEL_2;
    case 0x10:
      if (*(this + 8) >= 0x41u)
      {
        v3 = this[3];
        if (v3)
        {
          MEMORY[0x277C69E10](v3, 0x1000C8000313F17);
        }
      }

      goto LABEL_2;
    case 0x11:
      llvm::APFloat::Storage::~Storage((this + 4));
      goto LABEL_2;
    case 0x12:
      __break(1u);
      return;
    default:
LABEL_2:
      llvm::Value::~Value(this);
LABEL_3:

      llvm::User::operator delete(this);
      return;
  }
}

BOOL llvm::Constant::isConstantUsed(llvm::Constant *this)
{
  do
  {
    this = *(this + 1);
    if (!this)
    {
      break;
    }

    v2 = *(this + 3);
    v3 = v2 && v2[16] - 21 >= 0xFFFFFFEF;
  }

  while (v3 && !llvm::Constant::isConstantUsed(v2));
  return this != 0;
}

uint64_t llvm::Constant::removeDeadConstantUsers(uint64_t this)
{
  v1 = (this + 8);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 24);
      if (this)
      {
        v4 = *(this + 16) >= 0x15u;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        v5 = (v2 + 8);
      }

      else
      {
        this = constantIsDead(this, 1);
        v5 = (v3 + 8);
        if (!v3)
        {
          v5 = v1;
        }

        if (this)
        {
          v2 = v3;
        }

        else
        {
          v5 = (v2 + 8);
        }
      }

      v3 = v2;
      v2 = *v5;
    }

    while (*v5);
  }

  return this;
}

uint64_t constantIsDead(const llvm::Constant *a1, const llvm::Constant *a2)
{
  if (*(a1 + 16) < 4u)
  {
    return 0;
  }

  v3 = a2;
  v5 = a1 + 8;
  v6 = *(a1 + 1);
  if (v6)
  {
    while (1)
    {
      v7 = *(v6 + 24);
      if (!v7 || v7[16] > 0x14u)
      {
        return 0;
      }

      result = constantIsDead(v7, v3);
      if (!result)
      {
        return result;
      }

      v9 = (v6 + 8);
      if (v3)
      {
        v9 = v5;
      }

      v6 = *v9;
      if (!*v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (v3)
    {
      llvm::ReplaceableMetadataImpl::SalvageDebugInfo(a1, a2);
      llvm::Constant::destroyConstant(a1, v10, v11, v12);
    }

    return 1;
  }
}

void *llvm::ConstantVector::get(uint64_t ****a1, llvm::Type *a2)
{
  result = llvm::ConstantVector::getImpl(a1, a2);
  if (!result)
  {
    llvm::FixedVectorType::get(**a1, a2);
    v6 = v5;
    v7 = **v5 + 1328;

    return llvm::ConstantUniqueMap<llvm::ConstantVector>::getOrCreate(v7, v6, a1, a2);
  }

  return result;
}

llvm::Value *llvm::UndefValue::get(llvm::UndefValue *this, llvm::Type *a2)
{
  v5 = this;
  v3 = (llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**this + 1400), &v5) + 1);
  result = *v3;
  if (!*v3)
  {
    v4 = operator new(0x18uLL);
    *v4 = v5;
    *(v4 + 1) = 0;
    *(v4 + 2) = 11;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v3, v4);
    return *v3;
  }

  return result;
}

uint64_t llvm::ConstantInt::ConstantInt(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = 0;
  v3 = *(result + 20) & 0xC0000000;
  *(result + 16) = 16;
  *(result + 20) = v3;
  v4 = *(a3 + 8);
  *(result + 32) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *(result + 24) = *a3;
  return result;
}

uint64_t llvm::ConstantInt::get(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  llvm::APInt::APInt(&v7, *(a1 + 8) >> 8, a2);
  v5 = llvm::ConstantInt::get(v2, &v7, v3, v4);
  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x277C69E10](v7, 0x1000C8000313F17);
  }

  return v5;
}

void std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(v2 + 32) >= 0x41u)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        MEMORY[0x277C69E10](v3, 0x1000C8000313F17);
      }
    }

    llvm::Value::~Value(v2);

    llvm::User::operator delete(v4);
  }
}

uint64_t llvm::ConstantInt::get(llvm::IntegerType **this, llvm::Type *a2, const llvm::APInt *a3, unint64_t *a4)
{
  result = llvm::ConstantInt::get(*this, a2, a3, a4);
  v7 = result;
  if ((this[1] & 0xFE) == 0x12)
  {
    v8 = (*(this + 8) | (((~*(this + 2) & 0x13) == 0) << 32));

    return llvm::ConstantVector::getSplat(v8, v7, v6);
  }

  return result;
}

uint64_t llvm::ConstantFP::get(llvm::ConstantFP *this, llvm::Type *a2, double a3)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = *this;
  llvm::APFloat::APFloat(v11, a3);
  v5 = this;
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    v5 = **(this + 2);
  }

  FltSemantics = llvm::Type::getFltSemantics(v5);
  llvm::APFloat::convert(v11, FltSemantics, 1, &v10);
  Splat = llvm::ConstantFP::get(v4, v11);
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    Splat = llvm::ConstantVector::getSplat(*(this + 8) | (((~*(this + 2) & 0x13) == 0) << 32), Splat);
  }

  llvm::APFloat::Storage::~Storage(v12);
  v8 = *MEMORY[0x277D85DE8];
  return Splat;
}

uint64_t llvm::ConstantFP::getNaN(llvm::ConstantFP *this, llvm::Type *a2, uint64_t a3)
{
  v4 = a2;
  v5 = this;
  v11[3] = *MEMORY[0x277D85DE8];
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    this = **(this + 2);
  }

  FltSemantics = llvm::Type::getFltSemantics(this);
  llvm::APFloat::getNaN(FltSemantics, v4, a3, v10);
  Splat = llvm::ConstantFP::get(*v5, v10);
  if ((*(v5 + 2) & 0xFE) == 0x12)
  {
    Splat = llvm::ConstantVector::getSplat(*(v5 + 8) | (((~*(v5 + 2) & 0x13) == 0) << 32), Splat);
  }

  llvm::APFloat::Storage::~Storage(v11);
  v8 = *MEMORY[0x277D85DE8];
  return Splat;
}

uint64_t llvm::ConstantFP::getZero(llvm::ConstantFP *this, llvm::Type *a2)
{
  v2 = a2;
  v3 = this;
  v9[3] = *MEMORY[0x277D85DE8];
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    this = **(this + 2);
  }

  FltSemantics = llvm::Type::getFltSemantics(this);
  llvm::APFloat::Storage::Storage<>(v9, FltSemantics);
  llvm::APFloat::makeZero(v8, v2);
  Splat = llvm::ConstantFP::get(*v3, v8);
  if ((*(v3 + 2) & 0xFE) == 0x12)
  {
    Splat = llvm::ConstantVector::getSplat(*(v3 + 8) | (((~*(v3 + 2) & 0x13) == 0) << 32), Splat);
  }

  llvm::APFloat::Storage::~Storage(v9);
  v6 = *MEMORY[0x277D85DE8];
  return Splat;
}

void std::unique_ptr<llvm::ConstantFP>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    llvm::APFloat::Storage::~Storage((v2 + 32));
    llvm::Value::~Value(v2);

    llvm::User::operator delete(v3);
  }
}

uint64_t llvm::PoisonValue::get(llvm::PoisonValue *this, llvm::Type *a2)
{
  v5 = this;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**this + 1424), &v5) + 1;
  result = *v3;
  if (!*v3)
  {
    v4 = operator new(0x18uLL);
    *v4 = v5;
    v4[1] = 0;
    v4[2] = 12;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v3, v4);
    return *v3;
  }

  return result;
}

void *llvm::ConstantArray::get(llvm::PoisonValue *a1, llvm::Type *a2, unint64_t *a3)
{
  result = llvm::ConstantArray::getImpl(a1, a2, a3);
  if (!result)
  {
    v7 = **a1 + 1280;

    return llvm::ConstantUniqueMap<llvm::ConstantArray>::getOrCreate(v7, a1, a2, a3);
  }

  return result;
}

uint64_t llvm::ConstantArray::getImpl(llvm::PoisonValue *this, llvm::Type *a2, uint64_t a3)
{
  v75[15] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
    v7 = *(*a2 + 16);
    if (v7 == 12)
    {
      v8 = 8 * a3;
      for (i = a2; *i == v6; i = (i + 8))
      {
        v8 -= 8;
        if (!v8)
        {
          v10 = *MEMORY[0x277D85DE8];

          return llvm::PoisonValue::get(this, a2);
        }
      }
    }

    if ((v7 - 11) <= 1)
    {
      v12 = 8 * a3;
      for (j = a2; *j == v6; j = (j + 8))
      {
        v12 -= 8;
        if (!v12)
        {
          v14 = *MEMORY[0x277D85DE8];

          return llvm::UndefValue::get(this, a2);
        }
      }
    }

    if (llvm::Constant::isNullValue(*a2))
    {
      v15 = 8 * a3;
      v16 = a2;
      while (*v16 == v6)
      {
        v16 = (v16 + 8);
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_20;
        }
      }
    }

    v18 = *(*v6 + 8);
    v19 = v18;
    if (v18 >= 4u)
    {
      if (v18 != 13)
      {
        goto LABEL_57;
      }

      HIDWORD(v21) = (v18 >> 8) - 8;
      LODWORD(v21) = HIDWORD(v21);
      v20 = v21 >> 3;
      v22 = v20 > 7;
      v23 = (1 << v20) & 0x8B;
      if (v22 || v23 == 0)
      {
        goto LABEL_57;
      }
    }

    v25 = v6[16];
    if (v25 != 17)
    {
      if (v25 == 16)
      {
        v26 = v18 >> 8;
        if (v19 == 13 && v26 == 8)
        {
          v38 = 0;
          v30 = v75;
          v73 = v75;
          *v74 = xmmword_2750C3D00;
          v39 = 8 * a3;
          while (1)
          {
            v40 = *(a2 + v38);
            if (!v40 || *(v40 + 16) != 16)
            {
              break;
            }

            v42 = (v40 + 24);
            if (*(v40 + 32) >= 0x41u)
            {
              v42 = *v42;
            }

            llvm::SmallVectorTemplateBase<char,true>::push_back(&v73, *v42);
            v38 += 8;
            if (v39 == v38)
            {
              Impl = llvm::ConstantDataArray::get<unsigned char>(***a2, v73, v74[0]);
              goto LABEL_101;
            }
          }
        }

        else
        {
          if (v19 != 13 || v26 != 16)
          {
            if (v19 == 13 && v26 == 32)
            {
              v29 = 0;
              v30 = &v74[1];
              v73 = &v74[1];
              v74[0] = 0x1000000000;
              v31 = 8 * a3;
              while (1)
              {
                v32 = *(a2 + v29);
                if (!v32 || *(v32 + 16) != 16)
                {
                  goto LABEL_114;
                }

                v34 = (v32 + 24);
                if (*(v32 + 32) >= 0x41u)
                {
                  v34 = *v34;
                }

                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v73, *v34);
                v29 += 8;
                if (v31 == v29)
                {
                  Impl = llvm::ConstantDataArray::get<unsigned int>(***a2, v73, LODWORD(v74[0]));
                  goto LABEL_101;
                }
              }
            }

            v37 = 0;
            if (v19 == 13 && v26 == 64)
            {
              v65 = 0;
              v30 = &v74[1];
              v73 = &v74[1];
              v74[0] = 0x1000000000;
              v66 = 8 * a3;
              while (1)
              {
                v67 = *(a2 + v65);
                if (!v67 || *(v67 + 16) != 16)
                {
                  goto LABEL_114;
                }

                v69 = (v67 + 24);
                if (*(v67 + 32) >= 0x41u)
                {
                  v69 = *v69;
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v73, *v69);
                v65 += 8;
                if (v66 == v65)
                {
                  Impl = llvm::ConstantDataArray::get<unsigned long long>(***a2, v73, LODWORD(v74[0]));
                  goto LABEL_101;
                }
              }
            }

LABEL_117:
            v70 = *MEMORY[0x277D85DE8];
            return v37;
          }

          v53 = 0;
          v30 = v75;
          v73 = v75;
          *v74 = xmmword_2750C3D00;
          v54 = 8 * a3;
          while (1)
          {
            v55 = *(a2 + v53);
            if (!v55 || *(v55 + 16) != 16)
            {
              break;
            }

            v57 = (v55 + 24);
            if (*(v55 + 32) >= 0x41u)
            {
              v57 = *v57;
            }

            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v73, *v57);
            v53 += 8;
            if (v54 == v53)
            {
              Impl = llvm::ConstantDataArray::get<unsigned short>(***a2, v73, v74[0]);
              goto LABEL_101;
            }
          }
        }

LABEL_114:
        v37 = 0;
LABEL_115:
        if (v73 != v30)
        {
          free(v73);
        }

        goto LABEL_117;
      }

      goto LABEL_57;
    }

    if (v18 < 2u)
    {
      v43 = 0;
      v30 = v75;
      v73 = v75;
      *v74 = xmmword_2750C3D00;
      v44 = 8 * a3;
      while (1)
      {
        v45 = *(a2 + v43);
        if (!v45 || *(v45 + 16) != 17)
        {
          goto LABEL_114;
        }

        llvm::APFloat::bitcastToAPInt(&v71, (v45 + 24));
        LimitedValue = llvm::APInt::getLimitedValue(&v71, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v73, LimitedValue);
        if (v72 >= 0x41 && v71)
        {
          MEMORY[0x277C69E10](v71, 0x1000C8000313F17);
        }

        v43 += 8;
        if (v44 == v43)
        {
          v48 = v73;
          v49 = v74[0];
          llvm::ArrayType::get(**a2, v74[0]);
          v51 = v50;
          v52 = (2 * v49);
LABEL_100:
          Impl = llvm::ConstantDataSequential::getImpl(v48, v52, v51);
LABEL_101:
          v37 = Impl;
          goto LABEL_115;
        }
      }
    }

    if (v18 == 2)
    {
      v58 = 0;
      v30 = &v74[1];
      v73 = &v74[1];
      v74[0] = 0x1000000000;
      v59 = 8 * a3;
      while (1)
      {
        v60 = *(a2 + v58);
        if (!v60 || *(v60 + 16) != 17)
        {
          goto LABEL_114;
        }

        llvm::APFloat::bitcastToAPInt(&v71, (v60 + 24));
        v62 = llvm::APInt::getLimitedValue(&v71, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v73, v62);
        if (v72 >= 0x41 && v71)
        {
          MEMORY[0x277C69E10](v71, 0x1000C8000313F17);
        }

        v58 += 8;
        if (v59 == v58)
        {
          v48 = v73;
          v63 = LODWORD(v74[0]);
          llvm::ArrayType::get(**a2, LODWORD(v74[0]));
          v51 = v64;
          v52 = (4 * v63);
          goto LABEL_100;
        }
      }
    }

    if (v18 != 3)
    {
LABEL_57:
      v37 = 0;
      goto LABEL_117;
    }

    v36 = *MEMORY[0x277D85DE8];

    return getFPSequenceIfElementsMatch<llvm::ConstantDataArray,unsigned long long>(a2, a3);
  }

  else
  {
LABEL_20:
    v17 = *MEMORY[0x277D85DE8];

    return llvm::ConstantAggregateZero::get(this, a2);
  }
}

void *llvm::ConstantUniqueMap<llvm::ConstantArray>::getOrCreate(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  LODWORD(v9) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v12, a2, a3, a4);
  v10 = v12;
  v11 = v13;
  v14 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, &v9, &v14) || v14 == (*a1 + 8 * *(a1 + 16)))
  {
    return llvm::ConstantUniqueMap<llvm::ConstantArray>::create(a1, a2, a3, a4, &v9);
  }

  else
  {
    return *v14;
  }
}

llvm::Value *llvm::ConstantStruct::get(llvm::ConstantAggregateZero *this, llvm::Type *a2, unint64_t *a3)
{
  if (!a3)
  {
LABEL_9:

    return llvm::ConstantAggregateZero::get(this, a2);
  }

  v6 = *(*a2 + 16);
  isNullValue = llvm::Constant::isNullValue(*a2);
  v8 = (v6 - 11) < 2;
  if ((v6 - 11) >= 2 && isNullValue == 0)
  {
    goto LABEL_20;
  }

  v10 = isNullValue;
  v11 = v6 == 12;
  v12 = 8 * a3;
  v13 = a2;
  do
  {
    v14 = *v13++;
    v10 &= llvm::Constant::isNullValue(v14);
    v15 = v14[16];
    v16 = v15 == 12;
    v11 &= v16;
    v8 &= v16 ^ ((v15 - 11) < 2);
    v12 -= 8;
  }

  while (v12);
  if (v10)
  {
    goto LABEL_9;
  }

  if (v11)
  {

    return llvm::PoisonValue::get(this, a2);
  }

  if (!v8)
  {
LABEL_20:
    v18 = **this + 1304;

    return llvm::ConstantUniqueMap<llvm::ConstantStruct>::getOrCreate(v18, this, a2, a3);
  }

  else
  {

    return llvm::UndefValue::get(this, a2);
  }
}

void *llvm::ConstantUniqueMap<llvm::ConstantStruct>::getOrCreate(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  LODWORD(v9) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v12, a2, a3, a4);
  v10 = v12;
  v11 = v13;
  v14 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, &v9, &v14) || v14 == (*a1 + 8 * *(a1 + 16)))
  {
    return llvm::ConstantUniqueMap<llvm::ConstantStruct>::create(a1, a2, a3, a4, &v9);
  }

  else
  {
    return *v14;
  }
}

uint64_t llvm::ConstantVector::getImpl(uint64_t ****a1, llvm::Type *a2)
{
  v2 = a2;
  v78[15] = *MEMORY[0x277D85DE8];
  llvm::FixedVectorType::get(**a1, a2);
  v5 = v4;
  v6 = *a1;
  isNullValue = llvm::Constant::isNullValue(*a1);
  v9 = *(v6 + 16);
  if ((v9 - 11) < 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = isNullValue;
  }

  if (v2 == 1 || !v10)
  {
LABEL_9:
    if (isNullValue)
    {
      v12 = *MEMORY[0x277D85DE8];

      return llvm::ConstantAggregateZero::get(v5, v8);
    }

    if (v9 == 12)
    {
      v14 = *MEMORY[0x277D85DE8];

      return llvm::PoisonValue::get(v5, v8);
    }

    if ((v9 - 11) <= 1)
    {
      v15 = *MEMORY[0x277D85DE8];

      return llvm::UndefValue::get(v5, v8);
    }
  }

  else
  {
    v11 = 1;
    while (a1[v11] == v6)
    {
      if (v2 == ++v11)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(*v6 + 2);
  if (v16 >= 4u)
  {
    if (v16 != 13)
    {
      goto LABEL_56;
    }

    HIDWORD(v18) = (v16 >> 8) - 8;
    LODWORD(v18) = HIDWORD(v18);
    v17 = v18 >> 3;
    v19 = v17 > 7;
    v20 = (1 << v17) & 0x8B;
    if (v19 || v20 == 0)
    {
      goto LABEL_56;
    }
  }

  if (v9 != 17)
  {
    if (v9 == 16)
    {
      v22 = v16 >> 8;
      if (v16 != 13 || v22 != 8)
      {
        if (v16 == 13 && v22 == 16)
        {
          v25 = v78;
          v76 = v78;
          *v77 = xmmword_2750C3D00;
          if (v2)
          {
            v47 = 8 * v2;
            v48 = a1;
            while (1)
            {
              v49 = *v48;
              if (!*v48 || *(*v48 + 16) != 16)
              {
                goto LABEL_120;
              }

              v51 = (v49 + 3);
              if (*(v49 + 8) >= 0x41u)
              {
                v51 = *v51;
              }

              llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v76, *v51);
              ++v48;
              v47 -= 8;
              if (!v47)
              {
                v52 = v76;
                v53 = v77[0];
                goto LABEL_122;
              }
            }
          }

          v53 = 0;
          v52 = v78;
LABEL_122:
          Impl = llvm::ConstantDataVector::get(***a1, v52, v53);
          goto LABEL_127;
        }

        if (v16 == 13 && v22 == 32)
        {
          v25 = &v77[1];
          v76 = &v77[1];
          v77[0] = 0x1000000000;
          if (v2)
          {
            v26 = 8 * v2;
            v27 = a1;
            while (1)
            {
              v28 = *v27;
              if (!*v27 || *(*v27 + 16) != 16)
              {
                break;
              }

              v30 = (v28 + 3);
              if (*(v28 + 8) >= 0x41u)
              {
                v30 = *v30;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v76, *v30);
              ++v27;
              v26 -= 8;
              if (!v26)
              {
                v31 = v76;
                v32 = LODWORD(v77[0]);
                goto LABEL_132;
              }
            }

LABEL_120:
            v34 = 0;
            goto LABEL_128;
          }

          v32 = 0;
          v31 = &v77[1];
LABEL_132:
          Impl = llvm::ConstantDataVector::get(***a1, v31, v32);
          goto LABEL_127;
        }

        v34 = 0;
        if (v16 == 13 && v22 == 64)
        {
          v25 = &v77[1];
          v76 = &v77[1];
          v77[0] = 0x1000000000;
          if (v2)
          {
            v64 = 8 * v2;
            v65 = a1;
            while (1)
            {
              v66 = *v65;
              if (!*v65 || *(*v65 + 16) != 16)
              {
                goto LABEL_120;
              }

              v68 = (v66 + 3);
              if (*(v66 + 8) >= 0x41u)
              {
                v68 = *v68;
              }

              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v76, *v68);
              ++v65;
              v64 -= 8;
              if (!v64)
              {
                v69 = v76;
                v70 = LODWORD(v77[0]);
                goto LABEL_134;
              }
            }
          }

          v70 = 0;
          v69 = &v77[1];
LABEL_134:
          Impl = llvm::ConstantDataVector::get(***a1, v69, v70);
LABEL_127:
          v34 = Impl;
LABEL_128:
          if (v76 != v25)
          {
            free(v76);
          }
        }

LABEL_130:
        v73 = *MEMORY[0x277D85DE8];
        return v34;
      }

      v25 = v78;
      v76 = v78;
      *v77 = xmmword_2750C3D00;
      if (v2)
      {
        v35 = 8 * v2;
        v36 = a1;
        while (1)
        {
          v37 = *v36;
          if (!*v36 || *(*v36 + 16) != 16)
          {
            goto LABEL_120;
          }

          v39 = (v37 + 3);
          if (*(v37 + 8) >= 0x41u)
          {
            v39 = *v39;
          }

          llvm::SmallVectorTemplateBase<char,true>::push_back(&v76, *v39);
          ++v36;
          v35 -= 8;
          if (!v35)
          {
            v40 = v76;
            v2 = v77[0];
            goto LABEL_104;
          }
        }
      }

      v40 = v78;
LABEL_104:
      llvm::FixedVectorType::get((****a1 + 1944), v2);
      v60 = v59;
      v61 = v40;
      v62 = v2;
LABEL_126:
      Impl = llvm::ConstantDataSequential::getImpl(v61, v62, v60);
      goto LABEL_127;
    }

LABEL_56:
    v34 = 0;
    goto LABEL_130;
  }

  if (v16 < 2u)
  {
    v25 = v78;
    v76 = v78;
    *v77 = xmmword_2750C3D00;
    if (v2)
    {
      v41 = 8 * v2;
      v42 = a1;
      while (*v42 && *(*v42 + 16) == 17)
      {
        llvm::APFloat::bitcastToAPInt(&v74, (*v42 + 3));
        LimitedValue = llvm::APInt::getLimitedValue(&v74, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v76, LimitedValue);
        if (v75 >= 0x41 && v74)
        {
          MEMORY[0x277C69E10](v74, 0x1000C8000313F17);
        }

        ++v42;
        v41 -= 8;
        if (!v41)
        {
          v45 = v76;
          v46 = v77[0];
          goto LABEL_106;
        }
      }

      goto LABEL_120;
    }

    v46 = 0;
    v45 = v78;
LABEL_106:
    llvm::FixedVectorType::get(**a1, v46);
    v60 = v63;
    v62 = (2 * v46);
LABEL_125:
    v61 = v45;
    goto LABEL_126;
  }

  if (v16 == 2)
  {
    v25 = &v77[1];
    v76 = &v77[1];
    v77[0] = 0x1000000000;
    if (v2)
    {
      v54 = 8 * v2;
      v55 = a1;
      while (*v55 && *(*v55 + 16) == 17)
      {
        llvm::APFloat::bitcastToAPInt(&v74, (*v55 + 3));
        v57 = llvm::APInt::getLimitedValue(&v74, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v76, v57);
        if (v75 >= 0x41 && v74)
        {
          MEMORY[0x277C69E10](v74, 0x1000C8000313F17);
        }

        ++v55;
        v54 -= 8;
        if (!v54)
        {
          v45 = v76;
          v58 = LODWORD(v77[0]);
          goto LABEL_124;
        }
      }

      goto LABEL_120;
    }

    v58 = 0;
    v45 = &v77[1];
LABEL_124:
    llvm::FixedVectorType::get(**a1, v58);
    v60 = v72;
    v62 = (4 * v58);
    goto LABEL_125;
  }

  if (v16 != 3)
  {
    goto LABEL_56;
  }

  v33 = *MEMORY[0x277D85DE8];

  return getFPSequenceIfElementsMatch<llvm::ConstantDataVector,unsigned long long>(a1, v2);
}

void *llvm::ConstantUniqueMap<llvm::ConstantVector>::getOrCreate(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  LODWORD(v9) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v12, a2, a3, a4);
  v10 = v12;
  v11 = v13;
  v14 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, &v9, &v14) || v14 == (*a1 + 8 * *(a1 + 16)))
  {
    return llvm::ConstantUniqueMap<llvm::ConstantVector>::create(a1, a2, a3, a4, &v9);
  }

  else
  {
    return *v14;
  }
}

uint64_t llvm::ConstantDataVector::getSplat(llvm::Type *__len, void **a2, llvm::Constant *a3)
{
  v51[15] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (a2 && v5 == 16)
  {
    v6 = *a2;
    v7 = *(*a2 + 2);
    v8 = *(*a2 + 2) >> 8;
    if (v7 == 13 && v8 == 8)
    {
      v23 = (a2 + 3);
      if (*(a2 + 8) >= 0x41u)
      {
        v23 = *v23;
      }

      v24 = *v23;
      __b = v51;
      v50[1] = 16;
      if (__len < 0x11)
      {
        if (__len)
        {
          memset(v51, v24, __len);
        }

        v25 = v51;
      }

      else
      {
        v50[0] = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&__b, v51, __len, 1);
        memset(__b, v24, __len);
        v6 = *a2;
        v25 = __b;
      }

      v50[0] = __len;
      llvm::FixedVectorType::get((**v6 + 1944), __len);
      Impl = llvm::ConstantDataSequential::getImpl(v25, __len, v37);
      v39 = __b;
      if (__b == v51)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v10 = (a2 + 3);
    if (v7 != 13 || v8 != 16)
    {
      if (v7 == 13 && v8 == 32)
      {
        if (*(a2 + 8) >= 0x41u)
        {
          v10 = *v10;
        }

        v12 = *v10;
        v13 = &v50[1];
        __b = &v50[1];
        v50[0] = 0x1000000000;
        llvm::SmallVectorImpl<int>::assign(&__b, __len, v12);
        v14 = **a2;
        v15 = __b;
        v16 = LODWORD(v50[0]);
        v17 = (*v14 + 1992);
LABEL_55:
        llvm::FixedVectorType::get(v17, v16);
        v35 = v45;
        v36 = (4 * v16);
LABEL_56:
        Impl = llvm::ConstantDataSequential::getImpl(v15, v36, v35);
        v39 = __b;
        if (__b == v13)
        {
LABEL_58:
          v46 = *MEMORY[0x277D85DE8];
          return Impl;
        }

LABEL_57:
        free(v39);
        goto LABEL_58;
      }

      if (*(a2 + 8) >= 0x41u)
      {
        v10 = *v10;
      }

      v40 = *v10;
      v13 = &v50[1];
      __b = &v50[1];
      v50[0] = 0x1000000000;
      llvm::SmallVectorImpl<unsigned long long>::assign(&__b, __len, v40);
      v41 = **a2;
      v15 = __b;
      v29 = LODWORD(v50[0]);
      v28 = (*v41 + 2016);
LABEL_50:
      llvm::FixedVectorType::get(v28, v29);
      v35 = v42;
      v36 = (8 * v29);
      goto LABEL_56;
    }

    if (*(a2 + 8) >= 0x41u)
    {
      v10 = *v10;
    }

    v32 = *v10;
    v13 = v51;
    __b = v51;
    *v50 = xmmword_2750C3D00;
    llvm::SmallVectorImpl<unsigned short>::assign(&__b, __len, v32);
    v33 = **a2;
    v15 = __b;
    v22 = v50[0];
    v21 = (*v33 + 1968);
LABEL_41:
    llvm::FixedVectorType::get(v21, v22);
    v35 = v34;
    v36 = (2 * v22);
    goto LABEL_56;
  }

  if (a2 && v5 == 17)
  {
    v18 = *(*a2 + 8);
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v43 = __len;
        llvm::APFloat::bitcastToAPInt(&v47, (a2 + 3));
        LimitedValue = llvm::APInt::getLimitedValue(&v47, 0xFFFFFFFFFFFFFFFFLL);
        v13 = &v50[1];
        __b = &v50[1];
        v50[0] = 0x1000000000;
        llvm::SmallVectorImpl<int>::assign(&__b, v43, LimitedValue);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x277C69E10](v47, 0x1000C8000313F17);
        }

        v17 = *a2;
        v15 = __b;
        v16 = LODWORD(v50[0]);
        goto LABEL_55;
      }

      if (v18 == 3)
      {
        v26 = __len;
        llvm::APFloat::bitcastToAPInt(&v47, (a2 + 3));
        v27 = llvm::APInt::getLimitedValue(&v47, 0xFFFFFFFFFFFFFFFFLL);
        v13 = &v50[1];
        __b = &v50[1];
        v50[0] = 0x1000000000;
        llvm::SmallVectorImpl<unsigned long long>::assign(&__b, v26, v27);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x277C69E10](v47, 0x1000C8000313F17);
        }

        v28 = *a2;
        v15 = __b;
        v29 = LODWORD(v50[0]);
        goto LABEL_50;
      }
    }

    else if (!*(*a2 + 8) || v18 == 1)
    {
      v19 = __len;
      llvm::APFloat::bitcastToAPInt(&v47, (a2 + 3));
      v20 = llvm::APInt::getLimitedValue(&v47, 0xFFFFFFFFFFFFFFFFLL);
      v13 = v51;
      __b = v51;
      *v50 = xmmword_2750C3D00;
      llvm::SmallVectorImpl<unsigned short>::assign(&__b, v19, v20);
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x277C69E10](v47, 0x1000C8000313F17);
      }

      v21 = *a2;
      v15 = __b;
      v22 = v50[0];
      goto LABEL_41;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return llvm::ConstantVector::getSplat();
}

void *llvm::ConstantExpr::getInsertElement(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Constant *a4, llvm::Type *a5)
{
  v19[3] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldInsertElementInstruction(this, a2, a3, a4);
  if (!result)
  {
    v11 = *this;
    if (*this == a4)
    {
      result = 0;
    }

    else
    {
      v19[0] = this;
      v19[1] = a2;
      v19[2] = a3;
      v12 = **v11;
      LODWORD(v14) = 62;
      *(&v14 + 1) = v19;
      v15 = 3;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      result = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v12 + 1544, v11, &v14, v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::ConstantExpr::getShuffleVector(llvm::ConstantExpr *a1, llvm::ConstantExpr *a2, int *a3, _BOOL8 a4, llvm::Type *a5)
{
  v20[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldShuffleVectorInstruction(a1, a2, a3, a4);
  if (!result)
  {
    llvm::VectorType::get(*(*a1 + 24), (a4 | ((*(*a1 + 8) == 19) << 32)));
    if (v11 == a5)
    {
      result = 0;
    }

    else
    {
      v20[0] = a1;
      v20[1] = a2;
      v13 = **v11;
      LODWORD(v15) = 63;
      *(&v15 + 1) = v20;
      v16 = 2;
      v17 = a3;
      v18 = a4;
      v19 = 0;
      result = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v13 + 1544, v11, &v15, v12);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](llvm::Value **a1, llvm::Value *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    llvm::Value::~Value(v3, a2);

    llvm::User::operator delete(v4);
  }
}

llvm::ConstantExpr *llvm::ConstantExpr::getWithOperands(llvm::ConstantExpr *result, llvm::ConstantExpr **a2, uint64_t a3, llvm::Type *a4, llvm::Type *a5, llvm::Type *a6, __n128 a7)
{
  if (*result == a4)
  {
    if (!a3)
    {
      return result;
    }

    v9 = -32 * (*(result + 5) & 0x7FFFFFF);
    v10 = 8 * a3;
    v11 = a2;
    while (*v11 == *(result + v9))
    {
      ++v11;
      v9 += 32;
      v10 -= 8;
      if (!v10)
      {
        return result;
      }
    }
  }

  if (a5)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(result + 9);
  if (v8 > 0x34)
  {
    if (*(result + 9) > 0x3Du)
    {
      if (v8 == 62)
      {
        return llvm::ConstantExpr::getInsertElement(*a2, a2[1], a2[2], v7, a5);
      }

      if (v8 == 63)
      {
        return llvm::ConstantExpr::getShuffleVector(*a2, a2[1], *(result + 3), *(result + 8), v7);
      }
    }

    else
    {
      if (v8 - 53 < 2)
      {
        return llvm::ConstantExpr::getCompare(*(result + 12), *a2, a2[1], (v7 != 0));
      }

      if (v8 == 61)
      {
        return llvm::ConstantExpr::getExtractElement(*a2, a2[1], v7, a4);
      }
    }

    return llvm::ConstantExpr::get(*(result + 9), *a2, a2[1], (*(result + 17) >> 1), v7, a6);
  }

  if (v8 - 38 < 0xD)
  {
    return llvm::ConstantExpr::getCast(*(result + 9), *a2, a4, a5, a7);
  }

  if (v8 != 34)
  {
    return llvm::ConstantExpr::get(*(result + 9), *a2, a2[1], (*(result + 17) >> 1), v7, a6);
  }

  if (!a6)
  {
    v12 = 24;
    if (*(result + 16) == 62)
    {
      v12 = 64;
    }

    a6 = *(result + v12);
  }

  v14 = (a2 + 1);
  v13 = *a2;
  v15 = *(result + 17);
  v16 = v15 > 3;
  v17 = (v15 >> 1) & 1;
  if (v15 >= 4)
  {
    v18 = (*(result + 17) >> 2) - 1;
  }

  else
  {
    v18 = 0;
  }

  return llvm::ConstantExpr::getGetElementPtr(a6, v13, v14, a3 - 1, v17, v18 | (v16 << 32), v7);
}

llvm::ConstantExpr *llvm::ConstantExpr::getCast(llvm::ConstantExpr *this, llvm::ConstantExpr *a2, llvm::Constant ***a3, llvm::Type *a4, __n128 a5)
{
  switch(this)
  {
    case '\'':
      v5 = 39;
      return getFoldedCast(v5, a2, a5);
    case '(':
      v5 = 40;
      return getFoldedCast(v5, a2, a5);
    case ')':
      v5 = 41;
      return getFoldedCast(v5, a2, a5);
    case '*':
      v5 = 42;
      return getFoldedCast(v5, a2, a5);
    case '+':
      v5 = 43;
      return getFoldedCast(v5, a2, a5);
    case ',':
      v5 = 44;
      return getFoldedCast(v5, a2, a5);
    case '-':
      v5 = 45;
      return getFoldedCast(v5, a2, a5);
    case '.':
      v5 = 46;
      return getFoldedCast(v5, a2, a5);
    case '/':
      v5 = 47;
      return getFoldedCast(v5, a2, a5);
    case '0':
      v5 = 48;
      return getFoldedCast(v5, a2, a5);
    case '1':
      if (*a2 == a3)
      {
        return a2;
      }

      v5 = 49;
      return getFoldedCast(v5, a2, a5);
    case '2':
      return llvm::ConstantExpr::getAddrSpaceCast(a2, a3, a4, a5);
    default:
      v5 = 38;
      return getFoldedCast(v5, a2, a5);
  }
}

void *llvm::ConstantExpr::getExtractElement(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Type *a4, __n128 a5)
{
  v19[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldExtractElementInstruction(this, a2, a3, a4, a5);
  if (!result)
  {
    v10 = *this;
    v11 = *(*this + 24);
    if (v11 == a3)
    {
      result = 0;
    }

    else
    {
      v19[0] = this;
      v19[1] = a2;
      v12 = **v10;
      LODWORD(v14) = 61;
      *(&v14 + 1) = v19;
      v15 = 2;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      result = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v12 + 1544, v11, &v14, v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::ConstantExpr::getCompare(llvm::ConstantExpr *this, uint64_t ***a2, llvm::Constant *a3, llvm::Constant *a4)
{
  if (this > 0xF)
  {
    return llvm::ConstantExpr::getICmp(this, a2, a3, a4);
  }

  else
  {
    return llvm::ConstantExpr::getFCmp(this, a2, a3, a4);
  }
}

void *llvm::ConstantExpr::get(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Constant *a4, uint64_t a5, llvm::Type *a6)
{
  v7 = a4;
  v10 = this;
  v21[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldBinaryInstruction(this, a2, a3, a4);
  if (!result)
  {
    v13 = *a2;
    if (*a2 == a5)
    {
      result = 0;
    }

    else
    {
      v21[0] = a2;
      v21[1] = a3;
      v14 = **v13;
      LOBYTE(v16) = v10;
      BYTE1(v16) = v7;
      WORD1(v16) = 0;
      *(&v16 + 1) = v21;
      v17 = 2;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      result = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v14 + 1544, v13, &v16, v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

int32x2_t llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(int32x2_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = *a1;
  v6 = a1[2].i32[0];
  if (!v6)
  {
    v13 = 0;
LABEL_8:
    v9 = (*&v5 + 8 * v13);
    goto LABEL_9;
  }

  LODWORD(v8) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(a2, a2, a3, a4) & (v6 - 1);
  v9 = (*&v5 + 8 * v8);
  v10 = *v9;
  if (*v9 != a2)
  {
    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v6 - 1);
      v10 = *(*&v5 + 8 * v8);
      if (v10 == a2)
      {
        v9 = (*&v5 + 8 * v8);
        goto LABEL_9;
      }
    }

    v5 = *a1;
    v13 = a1[2].u32[0];
    goto LABEL_8;
  }

LABEL_9:
  *v9 = -8192;
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t llvm::Constant::getUniqueInteger(llvm::Constant *this)
{
  v1 = *(this + 16);
  if (!this || v1 != 16)
  {
    if (v1 == 5)
    {
      this = llvm::Constant::getSplatValue(this, 0);
    }

    else
    {
      this = llvm::Constant::getAggregateElement(this, 0);
    }
  }

  return this + 24;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(uint64_t a1, void *a2)
{
  v5 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v5))
  {
    v4 = v5;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v5 + 1, 0);
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

llvm::BlockAddress *llvm::BlockAddress::get(llvm::BlockAddress *this, llvm::Function *a2, llvm::BasicBlock *a3)
{
  v5 = ***this;
  v9[0] = this;
  v9[1] = a2;
  v6 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::FindAndConstruct((v5 + 1472), v9);
  result = v6[2];
  if (!result)
  {
    v8 = operator new(0x58uLL);
    v8[21] = v8[21] & 0x38000000 | 2;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = v8 + 16;
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *(v8 + 7) = v8 + 16;
    result = llvm::BlockAddress::BlockAddress((v8 + 16), this, a2);
    v6[2] = result;
  }

  return result;
}

llvm::BlockAddress *llvm::BlockAddress::BlockAddress(llvm::BlockAddress *this, llvm::Function *a2, llvm::BasicBlock *a3)
{
  *this = llvm::PointerType::get((***a2 + 1944), (*(*a2 + 8) >> 8));
  *(this + 1) = 0;
  v6 = *(this + 5) & 0xC0000000 | 2;
  *(this + 4) = 4;
  *(this + 5) = v6;
  if (*(this - 8))
  {
    v7 = *(this - 7);
    **(this - 6) = v7;
    if (v7)
    {
      *(v7 + 16) = *(this - 6);
    }
  }

  *(this - 8) = a2;
  v10 = *(a2 + 1);
  v9 = (a2 + 8);
  v8 = v10;
  *(this - 7) = v10;
  if (v10)
  {
    *(v8 + 16) = this - 56;
  }

  *(this - 6) = v9;
  *v9 = this - 64;
  v11 = (this - 32);
  if (*(this - 4))
  {
    v12 = *(this - 3);
    **(this - 2) = v12;
    if (v12)
    {
      *(v12 + 16) = *(this - 2);
    }
  }

  *v11 = a3;
  if (a3)
  {
    v13 = (a3 + 8);
    v14 = *(a3 + 1);
    *(this - 3) = v14;
    if (v14)
    {
      *(v14 + 16) = this - 24;
    }

    *(this - 2) = v13;
    *v13 = v11;
  }

  *(a3 + 9) = *(a3 + 9) & 0x8000 | (*(a3 + 9) + 1) & 0x7FFF;
  return this;
}

uint64_t llvm::BlockAddress::lookup(llvm::BlockAddress *this, const llvm::BasicBlock *a2)
{
  if ((*(this + 9) & 0x7FFF) == 0)
  {
    return 0;
  }

  v8[1] = v2;
  v8[2] = v3;
  v4 = ****(this + 7);
  v7[0] = *(this + 7);
  v7[1] = this;
  v8[0] = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>((v4 + 1472), v7, v8);
  result = 0;
  if (v5)
  {
    return *(v8[0] + 16);
  }

  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::erase(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(a1, a2, &v5))
  {
    v4 = v5;
    *v5 = -8192;
    v4[1] = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t llvm::BlockAddress::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, llvm::Value *a3)
{
  v3 = a3;
  v6 = (this - 8);
  v5 = *(this - 8);
  v7 = (this - 4);
  if (v5 == a2)
  {
    v8 = *v7;
    v5 = llvm::Value::stripPointerCasts(a3);
    v3 = v8;
  }

  v9 = ***this;
  v24 = v5;
  v25 = v3;
  v10 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::FindAndConstruct((v9 + 1472), &v24);
  v11 = v10[2];
  if (!v11)
  {
    v12 = v10;
    v13 = *(this - 4);
    *(v13 + 9) = *(v13 + 9) & 0x8000 | (*(v13 + 9) - 1) & 0x7FFF;
    v14 = ***this;
    v24 = *(this - 8);
    v25 = v13;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::erase(v14 + 1472, &v24);
    v12[2] = this;
    if (*(this - 8))
    {
      v15 = *(this - 7);
      **(this - 6) = v15;
      if (v15)
      {
        v15[2] = *(this - 6);
      }
    }

    *v6 = v5;
    if (v5)
    {
      v18 = *(v5 + 1);
      v17 = (v5 + 8);
      v16 = v18;
      *(this - 7) = v18;
      if (v18)
      {
        v16[2] = (this - 7);
      }

      *(this - 6) = v17;
      *v17 = v6;
    }

    if (*v7)
    {
      v19 = *(this - 3);
      **(this - 2) = v19;
      if (v19)
      {
        v19[2] = *(this - 2);
      }
    }

    *(this - 4) = v3;
    v22 = *(v3 + 1);
    v21 = (v3 + 8);
    v20 = v22;
    *(this - 3) = v22;
    if (v22)
    {
      v20[2] = (this - 3);
    }

    *(this - 2) = v21;
    *v21 = v7;
    *(*(this - 4) + 9) = *(*(this - 4) + 9) & 0x8000 | (*(*(this - 4) + 9) + 1) & 0x7FFF;
  }

  return v11;
}

uint64_t llvm::DSOLocalEquivalent::get(llvm::DSOLocalEquivalent *this, llvm::GlobalValue *a2)
{
  v5 = this;
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 1496), &v5);
  result = v2[1];
  if (!result)
  {
    v4 = operator new(0x38uLL);
    v4[13] = v4[13] & 0x38000000 | 1;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = v4 + 8;
    result = llvm::DSOLocalEquivalent::DSOLocalEquivalent((v4 + 8), v5);
    v2[1] = result;
  }

  return result;
}

uint64_t llvm::DSOLocalEquivalent::DSOLocalEquivalent(uint64_t this, llvm::GlobalValue *a2)
{
  *this = *a2;
  *(this + 8) = 0;
  v2 = *(this + 20) & 0xC0000000 | 1;
  *(this + 16) = 6;
  *(this + 20) = v2;
  if (*(this - 32))
  {
    v3 = *(this - 24);
    **(this - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(this - 16);
    }
  }

  *(this - 32) = a2;
  v6 = *(a2 + 1);
  v4 = (a2 + 8);
  v5 = v6;
  *(this - 24) = v6;
  if (v6)
  {
    *(v5 + 16) = this - 24;
  }

  *(this - 16) = v4;
  *v4 = this - 32;
  return this;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(uint64_t a1, void *a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v4))
  {
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

llvm::ConstantExpr *llvm::DSOLocalEquivalent::handleOperandChangeImpl(llvm::Constant *****this, llvm::Value *a2, llvm::Value *a3)
{
  v3 = a3;
  if (*(a3 + 16) >= 4u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v18 = v5;
  if (v5)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct(***this + 187, &v18)[1];
    if (v6)
    {
      if (*v6 != *this)
      {
        return getFoldedCast(0x31, v6, *this, 0);
      }

      return v6;
    }
  }

  if (llvm::Constant::isNullValue(v3))
  {
    return v3;
  }

  v7 = llvm::Value::stripPointerCastsAndAliases(v3);
  v8 = ***this;
  v17 = v7;
  v18 = 0;
  v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v8 + 187, &v17, &v18);
  v10 = v18;
  if (v9)
  {
    v3 = *(v18 + 1);
    if (v3)
    {
      if (*v3 != *this)
      {
        return getFoldedCast(0x31, *(v18 + 1), *this, 0);
      }

      return v3;
    }
  }

  else
  {
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::InsertIntoBucketImpl<llvm::GlobalValue const*>((v8 + 187), &v17, &v17, v18);
    *v10 = v17;
    v10[1] = 0;
  }

  v11 = ***this;
  v12 = (this - 4);
  v18 = *(this - 4);
  llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase((v11 + 187), &v18);
  v10[1] = this;
  if (*(this - 4))
  {
    v13 = *(this - 3);
    **(this - 2) = v13;
    if (v13)
    {
      *(v13 + 16) = *(this - 2);
    }
  }

  *v12 = v7;
  if (v7)
  {
    v14 = (v7 + 8);
    v15 = *(v7 + 1);
    *(this - 3) = v15;
    if (v15)
    {
      *(v15 + 16) = this - 3;
    }

    *(this - 2) = v14;
    *v14 = v12;
  }

  v3 = 0;
  if (*v7 != *this)
  {
    *this = *v7;
  }

  return v3;
}

uint64_t llvm::NoCFIValue::get(llvm::NoCFIValue *this, llvm::GlobalValue *a2)
{
  v5 = this;
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 1520), &v5);
  result = v2[1];
  if (!result)
  {
    v4 = operator new(0x38uLL);
    v4[13] = v4[13] & 0x38000000 | 1;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = v4 + 8;
    result = llvm::NoCFIValue::NoCFIValue((v4 + 8), v5);
    v2[1] = result;
  }

  return result;
}

uint64_t llvm::NoCFIValue::NoCFIValue(uint64_t this, llvm::GlobalValue *a2)
{
  *this = *a2;
  *(this + 8) = 0;
  v2 = *(this + 20) & 0xC0000000 | 1;
  *(this + 16) = 7;
  *(this + 20) = v2;
  if (*(this - 32))
  {
    v3 = *(this - 24);
    **(this - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(this - 16);
    }
  }

  *(this - 32) = a2;
  v6 = *(a2 + 1);
  v4 = (a2 + 8);
  v5 = v6;
  *(this - 24) = v6;
  if (v6)
  {
    *(v5 + 16) = this - 24;
  }

  *(this - 16) = v4;
  *v4 = this - 32;
  return this;
}

llvm::ConstantExpr *llvm::NoCFIValue::handleOperandChangeImpl(llvm::Constant *****this, llvm::Value *a2, llvm::Value *a3)
{
  v4 = llvm::Value::stripPointerCasts(a3);
  if (*(v4 + 16) >= 4u)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v19 = v5;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct(***this + 190, &v19);
  v7 = v6[1];
  v8 = *this;
  if (v7)
  {
    if (*v7 != v8)
    {
      return getFoldedCast(0x31, v7, v8, 0);
    }
  }

  else
  {
    v9 = v6;
    v10 = **v8;
    v11 = this - 4;
    v18 = *(this - 4);
    llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase((v10 + 190), &v18);
    v9[1] = this;
    v12 = v19;
    if (*(this - 4))
    {
      v13 = *(this - 3);
      **(this - 2) = v13;
      if (v13)
      {
        *(v13 + 16) = *(this - 2);
      }
    }

    *v11 = v12;
    if (v12)
    {
      v16 = v12[1];
      v14 = v12 + 1;
      v15 = v16;
      *(this - 3) = v16;
      if (v16)
      {
        v15[2] = (this - 3);
      }

      *(this - 2) = v14;
      *v14 = v11;
    }

    v7 = 0;
    if (*v19 != *this)
    {
      *this = *v19;
    }
  }

  return v7;
}

uint64_t llvm::ConstantExpr::getAddrSpaceCast(llvm::ConstantExpr *this, llvm::Constant ***a2, llvm::Type *a3, __n128 a4)
{
  FoldedCast = this;
  v6 = *this;
  if ((*(*this + 8) & 0xFE) == 0x12)
  {
    v6 = **(v6 + 16);
  }

  v7 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v7 = *a2[2];
  }

  if (*(v6 + 24) != *(v7 + 3))
  {
    v8 = llvm::PointerType::getWithSamePointeeType(v7, (*(v6 + 8) >> 8));
    v9 = v8;
    if ((a2[1] & 0xFE) == 0x12)
    {
      a4.n128_f64[0] = llvm::FixedVectorType::get(v8, *(a2 + 8));
      v9 = v10;
    }

    if (*FoldedCast != v9)
    {
      FoldedCast = getFoldedCast(49, FoldedCast, a4);
    }
  }

  return getFoldedCast(50, FoldedCast, a4);
}

llvm::ConstantExpr *llvm::ConstantExpr::getZExtOrBitCast(uint64_t ***this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if (((*this)[1] & 0xFE) == 0x12)
  {
    v6 = *v5[2];
  }

  else
  {
    v6 = *this;
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  if (PrimitiveSizeInBits == llvm::Type::getPrimitiveSizeInBits(v8))
  {
    if (v5 == a2)
    {
      return this;
    }

    v9 = 49;
  }

  else
  {
    v9 = 39;
  }

  return getFoldedCast(v9, this, a2, 0);
}

llvm::ConstantExpr *llvm::ConstantExpr::getSExtOrBitCast(llvm::Type **this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if ((*(*this + 2) & 0xFE) == 0x12)
  {
    v6 = **(v5 + 2);
  }

  else
  {
    v6 = *this;
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  if (PrimitiveSizeInBits == llvm::Type::getPrimitiveSizeInBits(v8))
  {
    if (v5 == a2)
    {
      return this;
    }

    v10 = 49;
  }

  else
  {
    v10 = 40;
  }

  return getFoldedCast(v10, this, v9);
}

llvm::ConstantExpr *llvm::ConstantExpr::getTruncOrBitCast(uint64_t ***this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if (((*this)[1] & 0xFE) == 0x12)
  {
    v6 = *v5[2];
  }

  else
  {
    v6 = *this;
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  if (PrimitiveSizeInBits == llvm::Type::getPrimitiveSizeInBits(v8))
  {
    if (v5 == a2)
    {
      return this;
    }

    v9 = 49;
  }

  else
  {
    v9 = 38;
  }

  return getFoldedCast(v9, this, a2, 0);
}

llvm::ConstantExpr *llvm::ConstantExpr::getPointerCast(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Type *a3, __n128 a4)
{
  v5 = this;
  v6 = *(a2 + 2);
  v7 = v6;
  if ((v6 & 0xFE) == 0x12)
  {
    v7 = *(**(a2 + 2) + 8);
  }

  if (v7 == 13)
  {
    v8 = 47;
    return getFoldedCast(v8, v5, a4);
  }

  v9 = *this;
  v10 = *(*this + 8);
  if ((v10 & 0xFE) == 0x12)
  {
    v10 = *(**(v9 + 2) + 8);
  }

  if ((v6 & 0xFE) == 0x12)
  {
    v6 = *(**(a2 + 2) + 8);
  }

  if (v6 == 15 && (v6 ^ v10) >= 0x100)
  {
    return llvm::ConstantExpr::getAddrSpaceCast(this, a2, 0, a4);
  }

  if (v9 != a2)
  {
    v8 = 49;
    return getFoldedCast(v8, v5, a4);
  }

  return this;
}

llvm::ConstantExpr *llvm::ConstantExpr::getPointerBitCastOrAddrSpaceCast(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Type *a3, __n128 a4)
{
  v4 = *this;
  v5 = *(*this + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v4 + 2) + 8);
  }

  v6 = *(a2 + 2);
  if ((v6 & 0xFE) == 0x12)
  {
    v6 = *(**(a2 + 2) + 8);
  }

  if ((v6 ^ v5) >= 0x100)
  {
    return llvm::ConstantExpr::getAddrSpaceCast(this, a2, 0, a4);
  }

  if (v4 != a2)
  {
    return getFoldedCast(0x31, this, a2, 0);
  }

  return this;
}

llvm::ConstantExpr *llvm::ConstantExpr::getIntegerCast(llvm::ConstantExpr *this, llvm::Type ***a2, llvm::Type *a3)
{
  v3 = a3;
  v6 = *this;
  if ((*(v6 + 8) & 0xFE) == 0x12)
  {
    v6 = **(v6 + 16);
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  v9 = llvm::Type::getPrimitiveSizeInBits(v8);
  if (v3)
  {
    v11 = 40;
  }

  else
  {
    v11 = 39;
  }

  if (PrimitiveSizeInBits > v9)
  {
    v11 = 38;
  }

  if (PrimitiveSizeInBits == v9)
  {
    v12 = 49;
  }

  else
  {
    v12 = v11;
  }

  return llvm::ConstantExpr::getCast(v12, this, a2, 0, v10);
}

llvm::ConstantExpr *llvm::ConstantExpr::getFPCast(llvm::ConstantExpr *this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if ((*(v5 + 8) & 0xFE) == 0x12)
  {
    v5 = **(v5 + 16);
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v5);
  v7 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v7 = *a2[2];
  }

  v8 = llvm::Type::getPrimitiveSizeInBits(v7);
  if (PrimitiveSizeInBits == v8)
  {
    return this;
  }

  if (PrimitiveSizeInBits > v8)
  {
    v11 = 45;
  }

  else
  {
    v11 = 46;
  }

  return llvm::ConstantExpr::getCast(v11, this, a2, 0, v9);
}

llvm::ConstantExpr *getFoldedCast(llvm *a1, uint64_t ***a2, llvm::Constant ****a3, llvm::Type *a4)
{
  v4 = a4;
  v6 = a1;
  v15 = a2;
  result = llvm::ConstantFoldCastInstruction(a1, a2, a3, a4);
  if (!result && (v4 & 1) == 0)
  {
    v9 = **a3;
    LODWORD(v10) = v6;
    *(&v10 + 1) = &v15;
    v11 = 1;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate((v9 + 193), a3, &v10, v8);
  }

  return result;
}

void *llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(uint64_t a1, llvm::Type *a2, _OWORD *a3, unint64_t *a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  *v18 = a2;
  v7 = a3[1];
  *&v18[8] = *a3;
  *&v18[24] = v7;
  *&v18[40] = a3[2];
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(v18, a2, a3, a4);
  v14 = *v18;
  v15 = *&v18[16];
  v16 = *&v18[32];
  v17 = *&v18[48];
  *&v12[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, &HashValue, v12) || *&v12[0] == *a1 + 8 * *(a1 + 16))
  {
    v9 = a3[1];
    v12[0] = *a3;
    v12[1] = v9;
    v12[2] = a3[2];
    v8 = llvm::ConstantExprKeyType::create(v12, a2);
    v20[0] = v8;
    llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::insert_as<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, v20, &HashValue, v19);
  }

  else
  {
    v8 = **&v12[0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void *llvm::ConstantExpr::getFCmp(llvm::ConstantExpr *this, uint64_t ***a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v4 = a4;
  v7 = this;
  v19[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldCompareInstruction();
  if (!result && (v4 & 1) == 0)
  {
    v19[0] = a2;
    v19[1] = a3;
    v10 = ***a2;
    v11 = (v10 + 1920);
    if (((*a2)[1] & 0xFE) == 0x12)
    {
      llvm::VectorType::get((v10 + 1920), (*(*a2 + 8) | (((~*(*a2 + 2) & 0x13) == 0) << 32)));
      v11 = v12;
      v10 = ***a2;
    }

    LOWORD(v14) = 54;
    WORD1(v14) = v7;
    *(&v14 + 1) = v19;
    v15 = 2;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    result = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v10 + 1544, v11, &v14, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::ConstantExpr::getGetElementPtr(llvm::GetElementPtrInst *a1, uint64_t *a2, llvm::Value *a3, uint64_t a4, char a5, unint64_t a6, llvm::Type *a7)
{
  v11 = a3;
  v55 = *MEMORY[0x277D85DE8];
  v52 = a2;
  v14 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v14 = **(v14 + 16);
  }

  ElementPtr = llvm::ConstantFoldGetElementPtr(a1, a2, a5, a6, a3, a4);
  if (!ElementPtr)
  {
    TypeAtIndex = a1;
    if (a4)
    {
      v20 = v11 + 1;
      v21 = 8 * a4 - 8;
      TypeAtIndex = a1;
      do
      {
        if (!v21)
        {
          break;
        }

        v22 = *v20++;
        TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v22, v15);
        v21 -= 8;
      }

      while (TypeAtIndex);
    }

    v23 = (*(v14 + 8) >> 8);
    if (*(v14 + 24))
    {
      v24 = llvm::PointerType::get(TypeAtIndex, v23);
    }

    else
    {
      v24 = llvm::PointerType::get(*v14, v23);
    }

    v25 = v24;
    v26 = *a2;
    if (*a2 && (v27 = *(v26 + 8), (v27 & 0xFE) == 0x12))
    {
      v28 = *(v26 + 32);
      v29 = (~v27 & 0x13) == 0;
    }

    else
    {
      v29 = 0;
      if (!a4)
      {
        goto LABEL_26;
      }

      v28 = 0;
      v30 = 8 * a4;
      v31 = v11;
      do
      {
        v32 = **v31;
        if (v32)
        {
          v33 = (*(v32 + 8) & 0xFE) == 18;
        }

        else
        {
          v33 = 0;
        }

        if (v33)
        {
          v28 = *(v32 + 32);
          v29 = (~*(v32 + 8) & 0x13) == 0;
        }

        ++v31;
        v30 -= 8;
      }

      while (v30);
    }

    if (v28)
    {
      v43 = v28;
      llvm::VectorType::get(v24, (v28 | (v29 << 32)));
      v25 = v34;
      v35 = 0;
LABEL_27:
      if (v25 == a7)
      {
        ElementPtr = 0;
        goto LABEL_4;
      }

      __p = 0;
      v50 = 0;
      v51 = 0;
      v36 = a4 + 1;
      if (a4 != -1)
      {
        if (!(v36 >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v36);
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, &v52);
      v53 = v11;
      v54 = a1 | 4;
      v37 = v11 - 1;
      while (1)
      {
        v38 = *v11;
        *&v44 = *v11;
        if ((v54 & 4) != 0)
        {
          break;
        }

        if ((*(*v38 + 8) & 0xFE) == 0x12)
        {
          SplatValue = llvm::Constant::getSplatValue(v38, 0);
LABEL_38:
          *&v44 = SplatValue;
        }

LABEL_39:
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, &v44);
        llvm::generic_gep_type_iterator<llvm::Value const* const*>::operator++(&v53);
        v11 = v53;
        if (v53 == v37)
        {
          if ((BYTE4(a6) & (a6 < 0x3F)) != 0)
          {
            v41 = 2 * a6 + 2;
          }

          else
          {
            v41 = 0;
          }

          v42 = ***a2;
          LOBYTE(v44) = 34;
          BYTE1(v44) = v41 | a5;
          WORD1(v44) = 0;
          *(&v44 + 1) = __p;
          v45 = (v50 - __p) >> 3;
          v46 = 0;
          v47 = 0;
          v48 = a1;
          ElementPtr = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v42 + 1544, v25, &v44, v40);
          if (__p)
          {
            v50 = __p;
            operator delete(__p);
          }

          goto LABEL_4;
        }
      }

      if ((v35 & 1) != 0 || (*(*v38 + 8) & 0xFE) == 0x12)
      {
        goto LABEL_39;
      }

      SplatValue = llvm::ConstantVector::getSplat(v43 | (v29 << 32), v38);
      goto LABEL_38;
    }

LABEL_26:
    v43 = 0;
    v35 = 1;
    goto LABEL_27;
  }

LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return ElementPtr;
}

void *llvm::ConstantExpr::getNot(llvm::Constant **this, llvm::Constant *a2)
{
  AllOnesValue = llvm::Constant::getAllOnesValue(*this, a2);

  return llvm::ConstantExpr::get(0x1E, this, AllOnesValue, 0, 0, v4);
}

uint64_t llvm::ConstantExpr::getBinOpIdentity(llvm::ConstantExpr *this, llvm::ConstantFP *a2, llvm::Type *a3, _BOOL4 a4)
{
  if (this <= 17)
  {
    if (this != 13)
    {
      if (this == 14)
      {
        return llvm::ConstantFP::getZero(a2, !a4);
      }

      if (this == 17)
      {
        return llvm::ConstantInt::get(a2, 1, 0, a4);
      }

      goto LABEL_11;
    }

    return llvm::Constant::getNullValue(a2, a2);
  }

  if ((this - 29) < 2)
  {
    return llvm::Constant::getNullValue(a2, a2);
  }

  if (this == 18)
  {
    return llvm::ConstantFP::get(a2, a2, 1.0);
  }

  if (this == 28)
  {
    return llvm::Constant::getAllOnesValue(a2, a2);
  }

LABEL_11:
  if (a3 && this <= 0x1B)
  {
    if (((1 << this) & 0xE018000) != 0)
    {
      return llvm::Constant::getNullValue(a2, a2);
    }

    if (((1 << this) & 0x180000) != 0)
    {
      return llvm::ConstantInt::get(a2, 1, 0, a4);
    }

    if (this == 21)
    {
      return llvm::ConstantFP::get(a2, a2, 1.0);
    }
  }

  return 0;
}

int32x2_t llvm::ConstantUniqueMap<llvm::ConstantExpr>::remove(int32x2_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *a1;
  v6 = a1[2].i32[0];
  if (!v6)
  {
    v13 = 0;
LABEL_8:
    v9 = (*&v5 + 8 * v13);
    goto LABEL_9;
  }

  LODWORD(v8) = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(a2, a2, a3, a4) & (v6 - 1);
  v9 = (*&v5 + 8 * v8);
  v10 = *v9;
  if (*v9 != a2)
  {
    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v6 - 1);
      v10 = *(*&v5 + 8 * v8);
      if (v10 == a2)
      {
        v9 = (*&v5 + 8 * v8);
        goto LABEL_9;
      }
    }

    v5 = *a1;
    v13 = a1[2].u32[0];
    goto LABEL_8;
  }

LABEL_9:
  *v9 = -8192;
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t llvm::ConstantDataSequential::getRawDataValues(llvm::ConstantDataSequential *this)
{
  v1 = *(this + 3);
  v2 = *(*this + 8);
  v3 = *(*this + 32);
  llvm::Type::getPrimitiveSizeInBits(*(*this + 24));
  if (v4)
  {
  }

  return v1;
}

uint64_t llvm::ConstantDataSequential::getImpl(uint64_t *a1, llvm::Type *a2, llvm::ConstantAggregateZero *a3)
{
  v4 = a2;
  if (a2)
  {
    a2 = a1;
    v5 = 0;
    while (!*(a1 + v5))
    {
      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v7 = **a3;
    v13 = 0;
    v8 = *llvm::StringMap<std::unique_ptr<llvm::ConstantDataSequential>,llvm::MallocAllocator>::try_emplace<std::unique_ptr<llvm::ConstantDataSequential>>((v7 + 1448), a1, v4, &v13);
    std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](&v13, 0);
    v10 = (v8 + 1);
    v9 = v8[1];
    if (v9)
    {
      while (1)
      {
        result = v9;
        if (*v9 == a3)
        {
          break;
        }

        v9 = v9[4];
        if (!v9)
        {
          v10 = (result + 32);
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v11 = v8 + 2;
      if (*(a3 + 8) == 17)
      {
        v12 = operator new(0x28uLL);
        *v12 = a3;
        v12[1] = 0;
        v12[2] = 14;
        v12[3] = v11;
        v12[4] = 0;
      }

      else
      {
        v12 = operator new(0x30uLL);
        *v12 = a3;
        v12[1] = 0;
        v12[2] = 15;
        v12[3] = v11;
        v12[4] = 0;
        *(v12 + 40) &= ~1u;
      }

      std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v10, v12);
      return *v10;
    }
  }

  else
  {
LABEL_5:

    return llvm::ConstantAggregateZero::get(a3, a2);
  }

  return result;
}

void std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](llvm::Value **a1, llvm::Value *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v2 + 32, 0);
    llvm::Value::~Value(v2);

    llvm::User::operator delete(v3);
  }
}

uint64_t llvm::ConstantDataArray::getFP(uint64_t **a1, uint64_t *a2, llvm::Type *a3)
{
  llvm::ArrayType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (2 * a3), v5);
}

{
  llvm::ArrayType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (4 * a3), v5);
}

{
  llvm::ArrayType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (8 * a3), v5);
}

uint64_t llvm::ConstantDataArray::getString(uint64_t a1, char *a2, llvm::Type *a3, char a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v15 = v17;
    v16 = xmmword_2750C1860;
    llvm::SmallVectorImpl<unsigned char>::append<char const*,void>(&v15, a2, a3 + a2);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v15, 0);
    v7 = v15;
    v8 = v16;
    llvm::ArrayType::get((*a1 + 1944), v16);
    Impl = llvm::ConstantDataSequential::getImpl(v7, v8, v9);
    if (v15 != v17)
    {
      free(v15);
    }

    v11 = *MEMORY[0x277D85DE8];
    return Impl;
  }

  else
  {
    llvm::ArrayType::get((*a1 + 1944), a3);
    v14 = *MEMORY[0x277D85DE8];

    return llvm::ConstantDataSequential::getImpl(a2, a3, v13);
  }
}

void *llvm::SmallVectorImpl<unsigned char>::append<char const*,void>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = v7 + a3 - a2;
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = v5[1];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
    v7 = v5[1];
  }

  v5[1] = v7 + v6;
  return result;
}

uint64_t llvm::ConstantDataVector::get(uint64_t a1, uint64_t *a2, llvm::Type *a3)
{
  llvm::FixedVectorType::get((*a1 + 1944), a3);

  return llvm::ConstantDataSequential::getImpl(a2, a3, v5);
}

{
  llvm::FixedVectorType::get((*a1 + 1968), a3);

  return llvm::ConstantDataSequential::getImpl(a2, (2 * a3), v5);
}

{
  llvm::FixedVectorType::get((*a1 + 1992), a3);

  return llvm::ConstantDataSequential::getImpl(a2, (4 * a3), v5);
}

{
  llvm::FixedVectorType::get((*a1 + 2016), a3);

  return llvm::ConstantDataSequential::getImpl(a2, (8 * a3), v5);
}

uint64_t llvm::ConstantDataVector::getFP(uint64_t **a1, uint64_t *a2, llvm::Type *a3)
{
  llvm::FixedVectorType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (2 * a3), v5);
}

{
  llvm::FixedVectorType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (4 * a3), v5);
}

{
  llvm::FixedVectorType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (8 * a3), v5);
}

uint64_t llvm::ConstantDataSequential::getElementAsInteger(llvm::ConstantDataSequential *this, unsigned int a2)
{
  v3 = *(this + 3);
  v4 = a2;
  v5 = *(*this + 24);
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v5);
  if (v6)
  {
    v5 = *(*this + 24);
  }

  v8 = (PrimitiveSizeInBits >> 3) * v4;
  v9 = __clz(__rbit32(*(v5 + 2) >> 8));
  if (v9 > 4)
  {
    if (v9 == 5)
    {
      return *(v3 + v8);
    }

    else
    {
      return *(v3 + v8);
    }
  }

  else if (v9 == 3)
  {
    return *(v3 + v8);
  }

  else
  {
    return *(v3 + v8);
  }
}

void llvm::ConstantDataSequential::getElementAsAPFloat(llvm::ConstantDataSequential *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(this + 3);
  v6 = a2;
  v7 = *(*this + 24);
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v7);
  if (v8)
  {
    v7 = *(*this + 24);
  }

  v10 = (PrimitiveSizeInBits >> 3) * v6;
  v11 = v7[8];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v13 = *(v5 + v10);
      v16 = 32;
      v15 = v13;
      llvm::detail::IEEEFloat::initFromFloatAPInt((a3 + 8), &v15);
    }

    else
    {
      v14 = *(v5 + v10);
      v16 = 64;
      v15 = v14;
      llvm::detail::IEEEFloat::initFromDoubleAPInt((a3 + 8), &v15);
    }
  }

  else
  {
    v12 = *(v5 + v10);
    v16 = 16;
    v15 = v12;
    if (v11)
    {
      llvm::detail::IEEEFloat::initFromBFloatAPInt((a3 + 8), &v15);
    }

    else
    {
      llvm::detail::IEEEFloat::initFromHalfAPInt((a3 + 8), &v15);
    }
  }
}

BOOL llvm::ConstantDataVector::isSplatData(llvm::ConstantDataVector *this)
{
  RawDataValues = llvm::ConstantDataSequential::getRawDataValues(this);
  v3 = *this;
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*(*this + 24));
  if (v4)
  {
    v3 = *this;
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 32);
  if (v7 == 1)
  {
    return 1;
  }

  v9 = PrimitiveSizeInBits >> 3;
  v10 = (PrimitiveSizeInBits >> 3);
  v11 = v7 - 2;
  v12 = v9;
  do
  {
    v13 = memcmp(RawDataValues, &RawDataValues[v12], v10);
    result = v13 == 0;
    v15 = v11-- != 0;
    if (v13)
    {
      break;
    }

    v12 += v9;
  }

  while (v15);
  return result;
}

uint64_t llvm::ConstantDataVector::isSplat(llvm::ConstantDataVector *this)
{
  v1 = *(this + 40);
  if ((v1 & 1) == 0)
  {
    *(this + 40) = v1 | 1;
    if (llvm::ConstantDataVector::isSplatData(this))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    v1 = *(this + 40) & 0xFD | v3;
    *(this + 40) = v1;
  }

  return (v1 >> 1) & 1;
}

void llvm::Constant::handleOperandChange(uint64_t ***this, llvm::Value *a2, llvm::Value *a3, __n128 a4)
{
  v5 = *(this + 16);
  if (v5 <= 6)
  {
    if (v5 == 4)
    {
      v6 = llvm::BlockAddress::handleOperandChangeImpl(this, a2, a3);
    }

    else if (v5 == 5)
    {
      v6 = llvm::ConstantExpr::handleOperandChangeImpl(this, a2, a3, a4);
    }

    else
    {
      v6 = llvm::DSOLocalEquivalent::handleOperandChangeImpl(this, a2, a3);
    }
  }

  else if (*(this + 16) > 8u)
  {
    if (v5 == 9)
    {
      v6 = llvm::ConstantStruct::handleOperandChangeImpl(this, a2, a3);
    }

    else
    {
      v6 = llvm::ConstantVector::handleOperandChangeImpl(this, a2, a3);
    }
  }

  else if (v5 == 7)
  {
    v6 = llvm::NoCFIValue::handleOperandChangeImpl(this, a2, a3);
  }

  else
  {
    v6 = llvm::ConstantArray::handleOperandChangeImpl(this, a2, a3);
  }

  if (v6)
  {
    llvm::Value::doRAUW(this, v6);

    llvm::Constant::destroyConstant(this, v7, v8, v9);
  }
}

uint64_t llvm::ConstantExpr::handleOperandChangeImpl(int32x2_t ****this, int32x2_t ***a2, llvm::Value *a3, __n128 a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v19 = v21;
  a4.n128_u64[0] = 0x800000000;
  v20 = 0x800000000;
  v7 = *(this + 5);
  v8 = v7 & 0x7FFFFFF;
  if ((v7 & 0x7FFFFFF) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = this;
    do
    {
      if (v12[-4 * (*(this + 5) & 0x7FFFFFF)] == a2)
      {
        v11 = v9;
        ++v10;
        v13 = a3;
      }

      else
      {
        v13 = v12[-4 * (*(this + 5) & 0x7FFFFFF)];
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v19, v13);
      ++v9;
      v12 += 4;
    }

    while (v8 != v9);
    v14 = v19;
    v15 = v20;
  }

  else
  {
    v15 = 0;
    v11 = 0;
    v10 = 0;
    v14 = v21;
  }

  v16 = llvm::ConstantExpr::getWithOperands(this, v14, v15, *this, 1, 0, a4);
  if (!v16)
  {
    v16 = llvm::ConstantUniqueMap<llvm::ConstantExpr>::replaceOperandsInPlace(***this + 193, v19, v20, this, a2, a3, v10, v11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t llvm::ConstantArray::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, uint64_t ***a3)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v46 = v48;
  v47 = 0x800000000;
  v6 = *(this + 5);
  if ((v6 & 0x7FFFFFFu) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v6 & 0x7FFFFFF, 8);
    v6 = *(this + 5);
  }

  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(this - 1);
    v7 = v6 & 0x7FFFFFF;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v7 = v6 & 0x7FFFFFF;
  v8 = &this[-4 * v7];
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 32 * v7;
  v13 = 1;
  do
  {
    v15 = *v8;
    v8 += 4;
    v14 = v15;
    if (v15 == a2)
    {
      v11 = v9;
      ++v10;
      v16 = a3;
    }

    else
    {
      v16 = v14;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v46, v16);
    v13 &= v16 == a3;
    ++v9;
    v12 -= 32;
  }

  while (v12);
  if (v13)
  {
LABEL_14:
    if (llvm::Constant::isNullValue(a3))
    {
      v18 = llvm::ConstantAggregateZero::get(*this, v17);
    }

    else
    {
      if (*(a3 + 16) - 11 > 1)
      {
        goto LABEL_19;
      }

      v18 = llvm::UndefValue::get(*this, v17);
    }

    Impl = v18;
    goto LABEL_45;
  }

LABEL_19:
  Impl = llvm::ConstantArray::getImpl(*this, v46, v47);
  if (!Impl)
  {
    v23 = ***this;
    *&v43 = *this;
    *(&v43 + 1) = v46;
    v44 = v47;
    LODWORD(v40) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v43, v20, v21, v22);
    v41 = v43;
    v42 = v44;
    v45[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>((v23 + 1280), &v40, v45))
    {
      v26 = v45[0] == (*(v23 + 1280) + 8 * *(v23 + 1296));
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove((v23 + 1280), this, v24, v25);
      v27 = *(this + 5) & 0x7FFFFFF;
      if (v10 == 1)
      {
        v28 = &(&this[4 * v11])[-4 * v27];
        if (*v28)
        {
          v29 = v28[1];
          *v28[2] = v29;
          if (v29)
          {
            v29[2] = v28[2];
          }
        }

        *v28 = a3;
        if (a3)
        {
          v32 = a3[1];
          v31 = (a3 + 1);
          v30 = v32;
          v28[1] = v32;
          if (v32)
          {
            v30[2] = (v28 + 1);
          }

          v28[2] = v31;
          *v31 = v28;
        }
      }

      else if (v27)
      {
        v33 = (a3 + 1);
        v27 = v27;
        v34 = this;
        do
        {
          v35 = v34 - 32 * (*(this + 5) & 0x7FFFFFF);
          if (*v35 == a2)
          {
            if (a2)
            {
              v36 = *(v35 + 1);
              **(v35 + 2) = v36;
              if (v36)
              {
                *(v36 + 16) = *(v35 + 2);
              }
            }

            *v35 = a3;
            if (a3)
            {
              v37 = *v33;
              *(v35 + 1) = *v33;
              if (v37)
              {
                *(v37 + 16) = v35 + 8;
              }

              *(v35 + 2) = v33;
              *v33 = v35;
            }
          }

          v34 = (v34 + 32);
          --v27;
        }

        while (v27);
      }

      v49[0] = this;
      llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(v23 + 1280, v49, &v40, v45);
      Impl = 0;
    }

    else
    {
      Impl = *v45[0];
    }
  }

LABEL_45:
  if (v46 != v48)
  {
    free(v46);
  }

  v38 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t llvm::ConstantStruct::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, uint64_t ***a3)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v6 = *(this + 5);
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(this - 1);
    LODWORD(v7) = v6 & 0x7FFFFFF;
  }

  else
  {
    v7 = v6 & 0x7FFFFFF;
    v8 = &this[-4 * v7];
  }

  v45 = v47;
  v46 = 0x800000000;
  if (v7 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v7, 8);
    LODWORD(v7) = *(this + 5) & 0x7FFFFFF;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 32 * v7;
  v13 = 1;
  do
  {
    v15 = *v8;
    v8 += 4;
    v14 = v15;
    if (v15 == a2)
    {
      ++v11;
      v10 = v9;
      v16 = a3;
    }

    else
    {
      v16 = v14;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v45, v16);
    v13 &= v16 == a3;
    ++v9;
    v12 -= 32;
  }

  while (v12);
  if (v13)
  {
LABEL_15:
    if (llvm::Constant::isNullValue(a3))
    {
      v20 = llvm::ConstantAggregateZero::get(*this, v17);
    }

    else
    {
      if (*(a3 + 16) - 11 > 1)
      {
        goto LABEL_20;
      }

      v20 = llvm::UndefValue::get(*this, v17);
    }

    v21 = v20;
    goto LABEL_45;
  }

LABEL_20:
  v22 = ***this;
  *&v42 = *this;
  *(&v42 + 1) = v45;
  v43 = v46;
  LODWORD(v39) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v42, v17, v18, v19);
  v40 = v42;
  v41 = v43;
  v44[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>((v22 + 1304), &v39, v44))
  {
    v25 = v44[0] == (*(v22 + 1304) + 8 * *(v22 + 1320));
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    llvm::ConstantUniqueMap<llvm::ConstantArray>::remove((v22 + 1304), this, v23, v24);
    v26 = *(this + 5) & 0x7FFFFFF;
    if (v11 == 1)
    {
      v27 = &(&this[4 * v10])[-4 * v26];
      if (*v27)
      {
        v28 = v27[1];
        *v27[2] = v28;
        if (v28)
        {
          v28[2] = v27[2];
        }
      }

      *v27 = a3;
      if (a3)
      {
        v31 = a3[1];
        v30 = (a3 + 1);
        v29 = v31;
        v27[1] = v31;
        if (v31)
        {
          v29[2] = (v27 + 1);
        }

        v27[2] = v30;
        *v30 = v27;
      }
    }

    else if (v26)
    {
      v32 = (a3 + 1);
      v26 = v26;
      v33 = this;
      do
      {
        v34 = v33 - 32 * (*(this + 5) & 0x7FFFFFF);
        if (*v34 == a2)
        {
          if (a2)
          {
            v35 = *(v34 + 1);
            **(v34 + 2) = v35;
            if (v35)
            {
              *(v35 + 16) = *(v34 + 2);
            }
          }

          *v34 = a3;
          if (a3)
          {
            v36 = *v32;
            *(v34 + 1) = *v32;
            if (v36)
            {
              *(v36 + 16) = v34 + 8;
            }

            *(v34 + 2) = v32;
            *v32 = v34;
          }
        }

        v33 = (v33 + 32);
        --v26;
      }

      while (v26);
    }

    v48[0] = this;
    llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(v22 + 1304, v48, &v39, v44);
    v21 = 0;
  }

  else
  {
    v21 = *v44[0];
  }

LABEL_45:
  if (v45 != v47)
  {
    free(v45);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t llvm::ConstantVector::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, uint64_t ***a3)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v43 = v45;
  v44 = 0x800000000;
  v6 = *(this + 5);
  v7 = v6 & 0x7FFFFFF;
  if ((v6 & 0x7FFFFFFu) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v7, 8);
    LODWORD(v7) = *(this + 5) & 0x7FFFFFF;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = this;
    v12 = v7;
    do
    {
      v13 = *(v11 - 4 * (*(this + 5) & 0x7FFFFFF));
      if (v13 == a2)
      {
        v10 = v8;
      }

      else
      {
        v10 = v10;
      }

      if (v13 == a2)
      {
        ++v9;
        v14 = a3;
      }

      else
      {
        v14 = *(v11 - 4 * (*(this + 5) & 0x7FFFFFF));
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v43, v14);
      ++v8;
      v11 = (v11 + 32);
    }

    while (v12 != v8);
    v15 = v9 == 1;
  }

  else
  {
    v10 = 0;
    v15 = 0;
  }

  Impl = llvm::ConstantVector::getImpl(v43, v44);
  if (!Impl)
  {
    v20 = ***this;
    *&v40 = *this;
    *(&v40 + 1) = v43;
    v41 = v44;
    LODWORD(v37) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v40, v16, v17, v18);
    v38 = v40;
    v39 = v41;
    v42[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>((v20 + 1328), &v37, v42))
    {
      v23 = v42[0] == (*(v20 + 1328) + 8 * *(v20 + 1344));
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove((v20 + 1328), this, v21, v22);
      v24 = *(this + 5) & 0x7FFFFFF;
      if (v15)
      {
        v25 = &(&this[4 * v10])[-4 * v24];
        if (*v25)
        {
          v26 = v25[1];
          *v25[2] = v26;
          if (v26)
          {
            v26[2] = v25[2];
          }
        }

        *v25 = a3;
        if (a3)
        {
          v29 = a3[1];
          v28 = (a3 + 1);
          v27 = v29;
          v25[1] = v29;
          if (v29)
          {
            v27[2] = (v25 + 1);
          }

          v25[2] = v28;
          *v28 = v25;
        }
      }

      else if (v24)
      {
        v30 = (a3 + 1);
        v24 = v24;
        v31 = this;
        do
        {
          v32 = v31 - 32 * (*(this + 5) & 0x7FFFFFF);
          if (*v32 == a2)
          {
            if (a2)
            {
              v33 = *(v32 + 1);
              **(v32 + 2) = v33;
              if (v33)
              {
                *(v33 + 16) = *(v32 + 2);
              }
            }

            *v32 = a3;
            if (a3)
            {
              v34 = *v30;
              *(v32 + 1) = *v30;
              if (v34)
              {
                *(v34 + 16) = v32 + 8;
              }

              *(v32 + 2) = v30;
              *v30 = v32;
            }
          }

          v31 = (v31 + 32);
          --v24;
        }

        while (v24);
      }

      v46[0] = this;
      llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(v20 + 1328, v46, &v37, v42);
      Impl = 0;
    }

    else
    {
      Impl = *v42[0];
    }
  }

  if (v43 != v45)
  {
    free(v43);
  }

  v35 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t llvm::ConstantUniqueMap<llvm::ConstantExpr>::replaceOperandsInPlace(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v47[2] = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = *(a4 + 18);
  v16 = *(a4 + 18);
  v17 = *(a4 + 17) >> 1;
  if ((v15 - 53) > 1)
  {
    if (v15 == 34)
    {
      v18 = 0;
      v19 = 0;
      v21 = 0;
      v20 = *(a4 + 24);
    }

    else if (v15 == 63)
    {
      v21 = 0;
      v20 = 0;
      v19 = *(a4 + 24);
      v18 = *(a4 + 32);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v21 = 0;
      v20 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *(a4 + 24);
  }

  *&v42 = *a4;
  BYTE8(v42) = v16;
  BYTE9(v42) = v17;
  WORD5(v42) = v21;
  *&v43 = a2;
  *(&v43 + 1) = a3;
  *&v44 = v19;
  *(&v44 + 1) = v18;
  v45 = v20;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(&v42, a2, a3, a4);
  v38 = v42;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v46[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, &HashValue, v46) || v46[0] == *a1 + 8 * a1[2].u32[0])
  {
    llvm::ConstantUniqueMap<llvm::ConstantExpr>::remove(a1, a4, v22, v23);
    v25 = *(a4 + 20) & 0x7FFFFFF;
    if (a7 == 1)
    {
      v26 = a4 - 32 * v25 + 32 * a8;
      if (*v26)
      {
        v27 = *(v26 + 8);
        **(v26 + 16) = v27;
        if (v27)
        {
          *(v27 + 16) = *(v26 + 16);
        }
      }

      *v26 = a6;
      if (a6)
      {
        v30 = *(a6 + 8);
        v29 = (a6 + 8);
        v28 = v30;
        *(v26 + 8) = v30;
        if (v30)
        {
          *(v28 + 16) = v26 + 8;
        }

        *(v26 + 16) = v29;
        *v29 = v26;
      }
    }

    else if (v25)
    {
      v31 = (a6 + 8);
      v25 = v25;
      v32 = a4;
      do
      {
        v33 = v32 - 32 * (*(a4 + 20) & 0x7FFFFFF);
        if (*v33 == a5)
        {
          if (a5)
          {
            v34 = *(v33 + 8);
            **(v33 + 16) = v34;
            if (v34)
            {
              *(v34 + 16) = *(v33 + 16);
            }
          }

          *v33 = a6;
          if (a6)
          {
            v35 = *v31;
            *(v33 + 8) = *v31;
            if (v35)
            {
              *(v35 + 16) = v33 + 8;
            }

            *(v33 + 16) = v31;
            *v31 = v33;
          }
        }

        v32 += 32;
        --v25;
      }

      while (v25);
    }

    v47[0] = a4;
    llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::insert_as<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, v47, &HashValue, v46);
    result = 0;
  }

  else
  {
    result = *v46[0];
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::ShuffleVectorConstantExpr::~ShuffleVectorConstantExpr(llvm::ShuffleVectorConstantExpr *this)
{
  v2 = *(this + 3);
  if (v2 != this + 40)
  {
    free(v2);
  }

  llvm::Value::~Value(this);
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = 0;
  }

  return inserted;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          v16[4] = -1;
        }

        v11 += 4;
        v16 += 16;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = (v4 + 8);
      do
      {
        if (*(v20 - 2) <= 0xFFFFFFFD)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, v20 - 2, &v32);
          v21 = v32;
          *v32 = *(v20 - 2);
          v22 = *v20;
          *v20 = 0;
          *(v21 + 1) = v22;
          ++*(a1 + 8);
          std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](v20, 0);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 3) + 4;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vdupq_n_s64(v24);
      v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1210)));
      if (vuzp1_s16(v31, *v28.i8).u8[0])
      {
        *(v29 - 8) = -1;
      }

      if (vuzp1_s16(v31, *&v28).i8[2])
      {
        *(v29 - 4) = -1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1830)))).i32[1])
      {
        *v29 = -1;
        v29[4] = -1;
      }

      v24 += 4;
      v29 += 16;
    }

    while (v27 != v24);
  }

  return result;
}

llvm::APInt *llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(uint64_t *a1, llvm::hashing::detail::hash_state **a2, uint64_t a3, unint64_t *a4)
{
  v9 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(a1, a2, &v9, a4);
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<llvm::APInt>(a1, a2, a2, v9);
    llvm::APInt::operator=(v7, a2);
    *(v7 + 2) = 0;
  }

  return v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(uint64_t *a1, llvm::hashing::detail::hash_state **this, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v22 = 0;
    v21 = -1;
    v20 = 0;
    v19 = -2;
    v8 = llvm::hash_value(this, this, a3, a4);
    v18 = 0;
    v9 = v5 - 1;
    v10 = *(this + 2);
    v11 = *this;
    for (i = 1; ; ++i)
    {
      v13 = v8 & v9;
      v14 = v7 + 24 * (v8 & v9);
      if (v10 == *(v14 + 8))
      {
        if (v10 > 0x40)
        {
          if (!memcmp(v11, *v14, ((v10 + 63) >> 3) & 0x3FFFFFF8))
          {
LABEL_12:
            result = 1;
            goto LABEL_13;
          }
        }

        else if (*v14 == v11)
        {
          goto LABEL_12;
        }
      }

      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v7 + 24 * v13, &v21))
      {
        break;
      }

      isEqual = llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v7 + 24 * v13, &v19);
      v16 = v18;
      if (isEqual && v18 == 0)
      {
        v16 = v7 + 24 * v13;
      }

      v18 = v16;
      v8 = v13 + i;
    }

    result = 0;
    if (v18)
    {
      v14 = v18;
    }

LABEL_13:
    *a3 = v14;
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

BOOL llvm::DenseMapInfo<llvm::APInt,void>::isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    return memcmp(*a1, *a2, ((v2 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  return *a1 == *a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<llvm::APInt>(uint64_t a1, uint64_t a2, llvm::hashing::detail::hash_state **a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_8;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_8:
    llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::grow(a1, v7);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(a1, a3, &v10, v9);
    a4 = v10;
  }

  ++*(a1 + 8);
  if (*(a4 + 8) || *a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 24 * v11;
      v13 = result + 8;
      do
      {
        *v13 = 0;
        *(v13 - 1) = -1;
        v13 += 6;
        v12 -= 24;
      }

      while (v12);
    }

    if (v3)
    {
      v14 = (v4 + 16);
      v15 = 24 * v3;
      do
      {
        v16 = v14 - 2;
        if (*(v14 - 2) || *v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v22 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(a1, v14 - 2, &v22, v10);
          v17 = v22;
          llvm::APInt::operator=(v22, v14 - 2);
          v18 = *v14;
          *v14 = 0;
          v17[2] = v18;
          ++*(a1 + 8);
          std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](v14, 0);
          if (*(v14 - 2) >= 0x41u)
          {
            if (*v16)
            {
              MEMORY[0x277C69E10](*v16, 0x1000C8000313F17);
            }
          }
        }

        v14 += 3;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 24 * v19;
    v21 = result + 8;
    do
    {
      *v21 = 0;
      *(v21 - 1) = -1;
      v21 += 6;
      v20 -= 24;
    }

    while (v20);
  }

  return result;
}

llvm::APFloat *llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::InsertIntoBucketImpl<llvm::APFloat>(a1, a2, a2, v7);
    llvm::APFloat::Storage::operator=((v5 + 8), (a2 + 8));
    *(v5 + 4) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(uint64_t *a1, llvm *a2, llvm::APFloat **a3)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = 1;
    llvm::detail::IEEEFloat::IEEEFloat(v23, &llvm::semBogus, 1);
    llvm::detail::IEEEFloat::IEEEFloat(v21, &llvm::semBogus, 2);
    v11 = v4 - 1;
    v12 = v11 & llvm::hash_value(a2, v8, v9, v10);
    v13 = (v6 + 40 * v12);
    if ((llvm::APFloat::bitwiseIsEqual(a2, v13) & 1) == 0)
    {
      v19 = 0;
      v18 = 1;
      while (!llvm::APFloat::bitwiseIsEqual(v13, v22))
      {
        IsEqual = llvm::APFloat::bitwiseIsEqual(v13, v20);
        v17 = v19;
        if ((IsEqual & (v19 == 0)) != 0)
        {
          v17 = v13;
        }

        v19 = v17;
        v12 = (v12 + v18) & v11;
        v13 = (v6 + 40 * v12);
        v7 = 1;
        ++v18;
        if (llvm::APFloat::bitwiseIsEqual(a2, v13))
        {
          goto LABEL_3;
        }
      }

      v7 = 0;
      if (v19)
      {
        v13 = v19;
      }
    }

LABEL_3:
    *a3 = v13;
    llvm::APFloat::Storage::~Storage(v21);
    llvm::APFloat::Storage::~Storage(v23);
  }

  else
  {
    v7 = 0;
    *a3 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

llvm::APFloat *llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::InsertIntoBucketImpl<llvm::APFloat>(uint64_t a1, uint64_t a2, llvm *a3, llvm::APFloat *a4)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::grow(a1, v7);
  v11 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(a1, a3, &v11);
  a4 = v11;
LABEL_3:
  ++*(a1 + 8);
  llvm::detail::IEEEFloat::IEEEFloat(v12, &llvm::semBogus, 1);
  if ((llvm::APFloat::bitwiseIsEqual(a4, &v11) & 1) == 0)
  {
    --*(a1 + 12);
  }

  llvm::APFloat::Storage::~Storage(v12);
  v9 = *MEMORY[0x277D85DE8];
  return a4;
}

void llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::grow(uint64_t a1, int a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = operator new(40 * v8, 8uLL);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::initEmpty(a1);
    llvm::detail::IEEEFloat::IEEEFloat(v19, &llvm::semBogus, 1);
    llvm::detail::IEEEFloat::IEEEFloat(v17, &llvm::semBogus, 2);
    if (v3)
    {
      v9 = 40 * v3;
      v10 = (v4 + 32);
      do
      {
        if ((llvm::APFloat::bitwiseIsEqual((v10 - 4), v18) & 1) == 0 && (llvm::APFloat::bitwiseIsEqual((v10 - 4), v16) & 1) == 0)
        {
          v15 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(a1, (v10 - 4), &v15);
          v11 = v15;
          llvm::APFloat::Storage::operator=((v15 + 8), (v10 - 3));
          v12 = *v10;
          *v10 = 0;
          *(v11 + 4) = v12;
          ++*(a1 + 8);
          std::unique_ptr<llvm::ConstantFP>::reset[abi:nn200100](v10, 0);
        }

        llvm::APFloat::Storage::~Storage((v10 - 3));
        v10 += 5;
        v9 -= 40;
      }

      while (v9);
    }

    llvm::APFloat::Storage::~Storage(v17);
    llvm::APFloat::Storage::~Storage(v19);
    v13 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  v14 = *MEMORY[0x277D85DE8];

  llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::initEmpty(a1);
}