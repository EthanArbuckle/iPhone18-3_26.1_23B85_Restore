uint64_t *llvm::IRBuilderBase::CreateExtractElement(llvm::IRBuilderBase *this, llvm::Value *a2, const llvm::Twine *a3, const llvm::Twine *a4)
{
  v7 = llvm::ConstantInt::get(**(this + 8) + 2016, 0);

  return llvm::IRBuilderBase::CreateExtractElement(this, a2, v7, a3);
}

uint64_t *UpgradeMaskedStore(uint64_t *a1, unsigned __int8 *a2, llvm::PointerType ***a3, unsigned __int8 *a4, int a5)
{
  v10 = llvm::PointerType::get(*a3, 0);
  v16 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v10, v15);
  if (a5)
  {
    v12 = (63 - __clz(llvm::Type::getPrimitiveSizeInBits(*a3) >> 3));
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (a4[16] <= 0x14u && llvm::Constant::isAllOnesValue(a4))
  {
    return llvm::IRBuilderBase::CreateAlignedStore(a1, a3, Cast, v12 | 0x100u, 0);
  }

LABEL_8:
  X86MaskVec = getX86MaskVec(a1, a4, *(*a3 + 8));
  return llvm::IRBuilderBase::CreateMaskedStore(a1, a3, Cast, v12, X86MaskVec);
}

uint64_t *llvm::IRBuilderBase::CreateInsertElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, const llvm::Twine *a5)
{
  v9 = llvm::ConstantInt::get(**(this + 8) + 2016, 0);

  return llvm::IRBuilderBase::CreateInsertElement(this, a2, a3, v9, a4);
}

uint64_t *EmitX86Select(llvm::IRBuilderBase *a1, unsigned __int8 *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (!a2 || a2[16] > 0x14u || !llvm::Constant::isAllOnesValue(a2))
  {
    X86MaskVec = getX86MaskVec(a1, a2, *(*a3 + 32));
    v11 = 257;
    return llvm::IRBuilderBase::CreateSelect(a1, X86MaskVec, a3, a4, v10, 0);
  }

  return a3;
}

uint64_t *ApplyX86MaskOn1BitsVec(llvm::IntegerType **a1, llvm::Type *a2, unsigned __int8 *a3)
{
  ShuffleVector = a2;
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = *(*a2 + 32);
  if (a3 && (a3[16] > 0x14u || !llvm::Constant::isAllOnesValue(a3)))
  {
    X86MaskVec = getX86MaskVec(a1, a3, v5);
    v22 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateAnd(a1, ShuffleVector, X86MaskVec, v21);
  }

  if (v5 <= 7)
  {
    if (v5)
    {
      v8 = 0;
      v9 = vdupq_n_s64(v5 - 1);
      v10 = xmmword_2750C1830;
      v11 = xmmword_2750C1210;
      v12 = v24;
      v13 = vdupq_n_s64(4uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v9, v11));
        if (vuzp1_s16(v14, *v9.i8).u8[0])
        {
          *(v12 - 2) = v8;
        }

        if (vuzp1_s16(v14, *&v9).i8[2])
        {
          *(v12 - 1) = v8 + 1;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
        {
          *v12 = v8 + 2;
          v12[1] = v8 + 3;
        }

        v8 += 4;
        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v12 += 4;
      }

      while (((v5 + 3) & 0xC) != v8);
    }

    for (i = v5; i != 8; ++i)
    {
      v23[i] = i % v5 + v5;
    }

    NullValue = llvm::Constant::getNullValue(*ShuffleVector, a2);
    v22 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a1, ShuffleVector, NullValue, v23, 8, v21);
  }

  if (v5 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = v5;
  }

  v18 = llvm::IntegerType::get(a1[8], v17);
  v22 = 257;
  result = llvm::IRBuilderBase::CreateCast(a1, 49, ShuffleVector, v18, v21);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *getX86MaskVec(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  llvm::FixedVectorType::get((**(a1 + 64) + 1920), (*(*a2 + 8) >> 8));
  v15 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v6, v14);
  if (a3 <= 4)
  {
    if (a3)
    {
      v8 = a3;
      v9 = vdupq_n_s64(a3 - 1);
      v10 = vmovn_s64(vcgeq_u64(v9, xmmword_2750C1210));
      if (vuzp1_s16(v10, *v9.i8).u8[0])
      {
        v16[0] = 0;
      }

      if (vuzp1_s16(v10, *&v9).i8[2])
      {
        v16[1] = 1;
      }

      v11 = vmovn_s64(vcgeq_u64(v9, xmmword_2750C1830));
      if (vuzp1_s16(v11, v11).i32[1])
      {
        v16[2] = 2;
        v16[3] = 3;
      }
    }

    else
    {
      v8 = 0;
    }

    v14[0] = "extract";
    v15 = 259;
    Cast = llvm::IRBuilderBase::CreateShuffleVector(a1, Cast, Cast, v16, v8, v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t *llvm::IRBuilderBase::CreateFAdd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 84, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(**(this + 9) + 40))(*(this + 9), 14, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(14, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = *(this + 11)) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateFSub(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 97, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(**(this + 9) + 40))(*(this + 9), 16, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(16, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = *(this + 11)) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateFMul(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 90, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(**(this + 9) + 40))(*(this + 9), 18, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(18, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = *(this + 11)) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateFDiv(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 87, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(**(this + 9) + 40))(*(this + 9), 21, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(21, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = *(this + 11)) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateInsertElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  result = (*(**(this + 9) + 104))(*(this + 9));
  if (!result)
  {
    v15 = 257;
    v11 = operator new(0xA0uLL);
    v12 = (v11 + 24);
    v11[29] = v11[29] & 0x38000000 | 3;
    v13 = 96;
    do
    {
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v11 + 3) = v12;
      v11 += 8;
      v13 -= 32;
    }

    while (v13);
    llvm::InsertElementInst::InsertElementInst(v12, a2, a3, a4, v14, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a5);
  }

  return result;
}

uint64_t *upgradeMaskedCompare(uint64_t a1, llvm::CallBase *a2, int a3, int a4)
{
  v7 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  v8 = *v7;
  v9 = *(**v7 + 8);
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      v10 = 33;
      if (a4)
      {
        v11 = 39;
      }

      else
      {
        v11 = 35;
      }

      v12 = a3 == 4;
      goto LABEL_12;
    }

    if (a3 != 6)
    {
      llvm::FixedVectorType::get((**(a1 + 64) + 1920), v9);
      AllOnesValue = llvm::Constant::getAllOnesValue(v25, v26);
      goto LABEL_23;
    }

    v14 = a4 == 0;
    v15 = 34;
    v16 = 38;
LABEL_19:
    if (v14)
    {
      v13 = v15;
    }

    else
    {
      v13 = v16;
    }

    goto LABEL_22;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      llvm::FixedVectorType::get((**(a1 + 64) + 1920), v9);
      AllOnesValue = llvm::Constant::getNullValue(v23, v24);
      goto LABEL_23;
    }

    v14 = a4 == 0;
    v15 = 37;
    v16 = 41;
    goto LABEL_19;
  }

  v10 = 32;
  if (a4)
  {
    v11 = 40;
  }

  else
  {
    v11 = 36;
  }

  v12 = a3 == 0;
LABEL_12:
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

LABEL_22:
  v17 = v7[4];
  v28 = 257;
  AllOnesValue = llvm::IRBuilderBase::CreateICmp(a1, v13, v8, v17, v27);
LABEL_23:
  v19 = AllOnesValue;
  v20 = llvm::CallBase::arg_end(a2);
  v21 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  return ApplyX86MaskOn1BitsVec(a1, v19, *&v21[8 * ((v20 - v21) >> 5) - 8]);
}

uint64_t *upgradeAbs(llvm::IRBuilderBase *a1, uint64_t *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v4 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 56) + 40), 1, &v15, 1);
  v6 = Declaration;
  if (Declaration)
  {
    v7 = *(Declaration + 24);
  }

  else
  {
    v7 = 0;
  }

  v16[0] = v4;
  v16[1] = llvm::ConstantInt::get(**(a1 + 8) + 1920, 0);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1, v7, v6, v16, 2, v13, 0);
  v9 = llvm::CallBase::arg_end(a2);
  v10 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (((v9 - v10) & 0x1FFFFFFFE0) == 0x60)
  {
    v8 = EmitX86Select(a1, v10[8], v8, v10[4]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t *UpgradeX86BinaryIntrinsics(llvm::IRBuilderBase *a1, uint64_t *a2, int a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v5 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v6 = *v5;
  v7 = v5[4];
  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 56) + 40), a3, &v17, 1);
  if (Declaration)
  {
    v9 = *(Declaration + 24);
  }

  else
  {
    v9 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1, v9, Declaration, v18, 2, v15, 0);
  v11 = llvm::CallBase::arg_end(a2);
  v12 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (((v11 - v12) & 0x1FFFFFFFE0) == 0x80)
  {
    v10 = EmitX86Select(a1, v12[12], v10, v12[8]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t *upgradePMULDQ(llvm::IRBuilderBase *a1, llvm::CallBase *a2, int a3)
{
  v6 = *a2;
  v7 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, v7, v6, v21);
  v9 = (a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[4];
  v22 = 257;
  v10 = llvm::IRBuilderBase::CreateCast(a1, 49, v9, v6, v21);
  if (a3)
  {
    v11 = llvm::ConstantInt::get(v6, 0x20);
    v22 = 257;
    Shl = llvm::IRBuilderBase::CreateShl(a1, Cast, v11, v21, 0, 0);
    v22 = 257;
    AShr = llvm::IRBuilderBase::CreateAShr(a1, Shl, v11, v21, 0);
    v22 = 257;
    v14 = llvm::IRBuilderBase::CreateShl(a1, v10, v11, v21, 0, 0);
    v22 = 257;
    v15 = llvm::IRBuilderBase::CreateAShr(a1, v14, v11, v21, 0);
  }

  else
  {
    v16 = llvm::ConstantInt::get(v6, 0xFFFFFFFFLL);
    v22 = 257;
    AShr = llvm::IRBuilderBase::CreateAnd(a1, Cast, v16, v21);
    v22 = 257;
    v15 = llvm::IRBuilderBase::CreateAnd(a1, v10, v16, v21);
  }

  v22 = 257;
  Mul = llvm::IRBuilderBase::CreateMul(a1, AShr, v15, v21, 0, 0);
  v18 = llvm::CallBase::arg_end(a2);
  v19 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  if (((v18 - v19) & 0x1FFFFFFFE0) == 0x80)
  {
    return EmitX86Select(a1, *(v19 + 12), Mul, *(v19 + 8));
  }

  return Mul;
}

uint64_t *llvm::IRBuilderBase::CreateSIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast(this, 116, a2, a3, 0, a4, 0, 0, 0);
  }

  return llvm::IRBuilderBase::CreateCast(this, 44, a2, a3, a4);
}

uint64_t *llvm::IRBuilderBase::CreateUIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast(this, 119, a2, a3, 0, a4, 0, 0, 0);
  }

  return llvm::IRBuilderBase::CreateCast(this, 43, a2, a3, a4);
}

uint64_t *llvm::IRBuilderBase::CreateFPExt(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast(this, 92, a2, a3, 0, a4, 0, 0, 0);
  }

  return llvm::IRBuilderBase::CreateCast(this, 46, a2, a3, a4);
}

uint64_t *UpgradeMaskedLoad(uint64_t *a1, unsigned __int8 *a2, llvm::PointerType ***a3, unsigned __int8 *a4, int a5)
{
  v10 = *a3;
  v11 = llvm::PointerType::get(*a3, 0);
  v17 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v11, v16);
  if (a5)
  {
    v13 = (63 - __clz(llvm::Type::getPrimitiveSizeInBits(*a3) >> 3));
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (a4[16] <= 0x14u && llvm::Constant::isAllOnesValue(a4))
  {
    v17 = 257;
    return llvm::IRBuilderBase::CreateAlignedLoad(a1, v10, Cast, v13 | 0x100u, 0, v16);
  }

LABEL_8:
  X86MaskVec = getX86MaskVec(a1, a4, *(v10 + 8));
  v17 = 257;
  return llvm::IRBuilderBase::CreateMaskedLoad(a1, v10, Cast, v13, X86MaskVec, a3, v16);
}

uint64_t *upgradeX86vpcom(uint64_t a1, llvm::Type *a2, int a3, int a4)
{
  v7 = *a2;
  v8 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  v9 = *v8;
  v10 = *(v8 + 4);
  if (a3 <= 3)
  {
    if (a4)
    {
      v11 = 38;
    }

    else
    {
      v11 = 34;
    }

    if (a4)
    {
      v12 = 39;
    }

    else
    {
      v12 = 35;
    }

    if (a3 != 2)
    {
      v11 = v12;
    }

    v13 = a4 == 0;
    if (a4)
    {
      v14 = 40;
    }

    else
    {
      v14 = 36;
    }

    if (v13)
    {
      v15 = 37;
    }

    else
    {
      v15 = 41;
    }

    if (a3)
    {
      v14 = v15;
    }

    if (a3 <= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }

    goto LABEL_25;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v16 = 32;
    }

    else
    {
      v16 = 33;
    }

LABEL_25:
    v21 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp(a1, v16, v9, v10, v20);
    v21 = 257;
    return llvm::IRBuilderBase::CreateCast(a1, 40, ICmp, v7, v20);
  }

  v19 = *a2;
  if (a3 == 6)
  {

    return llvm::Constant::getNullValue(v19, a2);
  }

  else
  {

    return llvm::Constant::getAllOnesValue(v19, a2);
  }
}

uint64_t *upgradeX86Rotate(llvm::IRBuilderBase *this, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, llvm::Instruction *a6)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v25 = v9;
  v10 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v11 = *v10;
  VectorSplat = v10[4];
  if (*VectorSplat != v9)
  {
    v13 = *(v9 + 32);
    if ((*(v9 + 8) & 0xFE) == 0x12)
    {
      v9 = **(v9 + 16);
    }

    v24 = 257;
    IntCast = llvm::IRBuilderBase::CreateIntCast(this, VectorSplat, v9, 0, v23, a6);
    v24 = 257;
    VectorSplat = llvm::IRBuilderBase::CreateVectorSplat(this, v13, IntCast, v23);
  }

  if (a3)
  {
    v15 = 149;
  }

  else
  {
    v15 = 148;
  }

  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 56) + 40), v15, &v25, 1);
  if (Declaration)
  {
    v17 = *(Declaration + 24);
  }

  else
  {
    v17 = 0;
  }

  v26[0] = v11;
  v26[1] = v11;
  v26[2] = VectorSplat;
  v24 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(this, v17, Declaration, v26, 3, v23, 0);
  v19 = llvm::CallBase::arg_end(a2);
  v20 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (((v19 - v20) & 0x1FFFFFFFE0) == 0x80)
  {
    v18 = EmitX86Select(this, v20[12], v18, v20[8]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t *upgradeX86ConcatShift(llvm::IRBuilderBase *this, uint64_t *a2, int a3, int a4, uint64_t a5, llvm::Instruction *a6)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v34 = *a2;
  v11 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v12 = *v11;
  v13 = v11[4];
  VectorSplat = v11[8];
  if (a3)
  {
    v15 = *v11;
  }

  else
  {
    v15 = v11[4];
  }

  if (a3)
  {
    v16 = v11[4];
  }

  else
  {
    v16 = *v11;
  }

  if (*VectorSplat != v10)
  {
    v17 = *(v10 + 32);
    if ((*(v10 + 8) & 0xFE) == 0x12)
    {
      v10 = **(v10 + 16);
    }

    v33 = 257;
    IntCast = llvm::IRBuilderBase::CreateIntCast(this, VectorSplat, v10, 0, v32, a6);
    v33 = 257;
    VectorSplat = llvm::IRBuilderBase::CreateVectorSplat(this, v17, IntCast, v32);
  }

  if (a3)
  {
    v19 = 149;
  }

  else
  {
    v19 = 148;
  }

  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 56) + 40), v19, &v34, 1);
  if (Declaration)
  {
    v21 = *(Declaration + 24);
  }

  else
  {
    v21 = 0;
  }

  v35[0] = v16;
  v35[1] = v15;
  v35[2] = VectorSplat;
  v33 = 257;
  v22 = llvm::IRBuilderBase::CreateCall(this, v21, Declaration, v35, 3, v32, 0);
  v23 = llvm::CallBase::arg_end(a2);
  v25 = *(a2 + 5) & 0x7FFFFFF;
  v26 = &a2[-4 * v25];
  v27 = (v23 - v26) >> 5;
  if (v27 >= 4)
  {
    v28 = -v25;
    if (v27 == 5)
    {
      v29 = v26[12];
    }

    else if (a4)
    {
      v29 = llvm::ConstantAggregateZero::get(*a2, v24);
      v28 = -(*(a2 + 5) & 0x7FFFFFF);
    }

    else
    {
      v29 = *v26;
    }

    v22 = EmitX86Select(this, a2[4 * v28 + 4 * (v27 - 1)], v22, v29);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t *llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, llvm::PoisonValue **a2, int *a3, llvm::Type *a4, uint64_t a5)
{
  v10 = llvm::PoisonValue::get(*a2, a2);

  return llvm::IRBuilderBase::CreateShuffleVector(a1, a2, v10, a3, a4, a5);
}

uint64_t *llvm::IRBuilderBase::CreatePointerCast(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    v11 = 257;
    PointerCast = llvm::CastInst::CreatePointerCast(a2, a3, v10, 0, a5);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, PointerCast, a4);
  }

  a2 = (*(**(this + 9) + 128))(*(this + 9));
  if (a2)
  {
    v7 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, a2, a4);
}

uint64_t *UpgradeX86ALIGNIntrinsics(llvm::IRBuilderBase *a1, llvm::Type *a2, void *a3, uint64_t a4, llvm::Value *a5, unsigned __int8 *a6, int a7)
{
  v10 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v12 = (a4 + 24);
  if (*(a4 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  v13 = *v12;
  v14 = *a2;
  v15 = *(*a2 + 32);
  v16 = v15 - 1;
  if (!a7)
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  if ((v16 & v13) < 0x20)
  {
    if (v17 >= 0x11)
    {
      v17 -= 16;
      NullValue = llvm::Constant::getNullValue(v14, a2);
      a3 = v10;
      v10 = NullValue;
    }

    if (v15)
    {
      v21 = 0;
      v22 = vdupq_n_s32(v17);
      v23 = vdupq_n_s32(v15 - 16);
      v24 = v37;
      v25.i64[0] = 0x1000000010;
      v25.i64[1] = 0x1000000010;
      v26.i64[0] = 0x400000004;
      v26.i64[1] = 0x400000004;
      do
      {
        v27 = 0;
        v28 = vdupq_n_s32(v21);
        v29 = xmmword_2750C8A80;
        do
        {
          v30 = vaddq_s32(v22, v29);
          v31 = vmovn_s32(vcgtq_u32(v25, v30));
          if (a7)
          {
            v32 = -1;
          }

          else
          {
            v32 = 0;
          }

          *&v24[v27] = vaddq_s32(vaddq_s32(v30, v28), vbicq_s8(v23, vmovl_s16(vorr_s8(v31, vdup_n_s16(v32)))));
          v29 = vaddq_s32(v29, v26);
          v27 += 4;
        }

        while (v27 != 16);
        v21 += 16;
        v24 += 16;
      }

      while (v21 < v15);
    }

    else
    {
      v15 = 0;
    }

    v35 = "palignr";
    v36 = 259;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a1, a3, v10, v37, v15, &v35);
    result = EmitX86Select(a1, a6, ShuffleVector, a5);
    v34 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v18 = *MEMORY[0x277D85DE8];

    return llvm::Constant::getNullValue(v14, a2);
  }

  return result;
}

uint64_t *UpgradeX86PSLLDQIntrinsics(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = (8 * *(*a2 + 32));
  llvm::FixedVectorType::get((**(a1 + 64) + 1944), v7);
  v9 = v8;
  *v26 = "cast";
  v27 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v8, v26);
  NullValue = llvm::Constant::getNullValue(v9, v11);
  if (a3 <= 0xF)
  {
    if (v7)
    {
      v13 = 0;
      v14 = vdupq_n_s32(v7 - a3);
      v15 = vdupq_n_s32(v7);
      v16 = vdupq_n_s32(16 - v7);
      v17 = v26;
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      do
      {
        v19 = 0;
        v20 = vdupq_n_s32(v13);
        v21 = xmmword_2750C8A80;
        do
        {
          v22 = vaddq_s32(v14, v21);
          *&v17[v19] = vaddq_s32(vaddq_s32(v22, v20), vandq_s8(v16, vcgtq_u32(v15, v22)));
          v21 = vaddq_s32(v21, v18);
          v19 += 4;
        }

        while (v19 != 16);
        v13 += 16;
        v17 += 16;
      }

      while (v7 != v13);
    }

    v25[16] = 257;
    NullValue = llvm::IRBuilderBase::CreateShuffleVector(a1, NullValue, Cast, v26, v7, v25);
  }

  *v26 = "cast";
  v27 = 259;
  result = llvm::IRBuilderBase::CreateCast(a1, 49, NullValue, v6, v26);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *UpgradeX86PSRLDQIntrinsics(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = (8 * *(*a2 + 32));
  llvm::FixedVectorType::get((**(a1 + 64) + 1944), v7);
  v9 = v8;
  *v26 = "cast";
  v27 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v8, v26);
  NullValue = llvm::Constant::getNullValue(v9, v11);
  if (a3 <= 0xF)
  {
    if (v7)
    {
      v13 = 0;
      v14 = vdupq_n_s32(a3);
      v15 = vdupq_n_s32(v7 - 16);
      v16 = v26;
      v17.i64[0] = 0xF0000000FLL;
      v17.i64[1] = 0xF0000000FLL;
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      do
      {
        v19 = 0;
        v20 = vdupq_n_s32(v13);
        v21 = xmmword_2750C8A80;
        do
        {
          v22 = vaddq_s32(v21, v14);
          *&v16[v19] = vaddq_s32(vaddq_s32(v22, v20), vandq_s8(v15, vcgtq_u32(v22, v17)));
          v21 = vaddq_s32(v21, v18);
          v19 += 4;
        }

        while (v19 != 16);
        v13 += 16;
        v16 += 16;
      }

      while (v7 != v13);
    }

    v25[16] = 257;
    NullValue = llvm::IRBuilderBase::CreateShuffleVector(a1, Cast, NullValue, v26, v7, v25);
  }

  *v26 = "cast";
  v27 = 259;
  result = llvm::IRBuilderBase::CreateCast(a1, 49, NullValue, v6, v26);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double llvm::VectorType::getInteger(uint64_t a1)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*(a1 + 24));
  if (v2)
  {
  }

  v4 = llvm::IntegerType::get(*a1, PrimitiveSizeInBits);
  v5 = (*(a1 + 32) | ((*(a1 + 8) == 19) << 32));

  return llvm::VectorType::get(v4, v5);
}

uint64_t *UpgradeX86MaskedShift(llvm::IRBuilderBase *a1, uint64_t a2, int a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a2 + 40) + 56) + 40), a3, 0, 0);
  if (Declaration)
  {
    v6 = *(Declaration + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v8 = *v7;
  v9 = v7[4];
  v15[0] = v8;
  v15[1] = v9;
  v14[16] = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1, v6, Declaration, v15, 2, v14, 0);
  v11 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  result = EmitX86Select(a1, *(v11 + 96), v10, *(v11 + 64));
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *upgradeMaskedMove(llvm::IRBuilderBase *a1, uint64_t a2, const llvm::APInt *a3, unint64_t *a4)
{
  v5 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  v6 = *v5;
  v7 = *(v5 + 32);
  v8 = *(v5 + 64);
  v9 = *(v5 + 96);
  v25 = 8;
  v24 = 1;
  v23 = 257;
  v10 = llvm::ConstantInt::get(*v9, &v24, a3, a4);
  v12 = llvm::IRBuilderBase::CreateAnd(a1, v9, v10, v22);
  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x277C69E10](v24, 0x1000C8000313F17);
  }

  v23 = 257;
  NullValue = llvm::Constant::getNullValue(*v12, v11);
  ICmp = llvm::IRBuilderBase::CreateICmp(a1, 33, v12, NullValue, v22);
  v23 = 257;
  v15 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0);
  Element = llvm::IRBuilderBase::CreateExtractElement(a1, v7, v15, v22);
  v23 = 257;
  v17 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0);
  v18 = llvm::IRBuilderBase::CreateExtractElement(a1, v8, v17, v22);
  v23 = 257;
  Select = llvm::IRBuilderBase::CreateSelect(a1, ICmp, Element, v18, v22, 0);
  v23 = 257;
  v20 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0);
  return llvm::IRBuilderBase::CreateInsertElement(a1, v6, Select, v20, v22);
}

uint64_t *UpgradeMaskToInt(uint64_t a1, _DWORD *a2)
{
  v3 = *a2;
  X86MaskVec = getX86MaskVec(a1, *&a2[-8 * (a2[5] & 0x7FFFFFF)], *(*a2 + 32));
  v6 = "vpmovm2";
  v7 = 259;
  return llvm::IRBuilderBase::CreateCast(a1, 40, X86MaskVec, v3, &v6);
}

uint64_t *llvm::IRBuilderBase::CreateFNeg(llvm::IRBuilderBase *this, llvm::Value *a2, const llvm::Twine *a3, llvm::MDNode *a4)
{
  result = (*(**(this + 9) + 48))(*(this + 9), 12, a2, *(this + 24));
  if (!result)
  {
    v13 = 257;
    v9 = llvm::UnaryOperator::Create(12, a2, v12, 0);
    v10 = v9;
    v11 = *(this + 24);
    if (a4 || (a4 = *(this + 11)) != 0)
    {
      llvm::Value::setMetadata(v9, 3, a4);
    }

    *(v10 + 17) |= 2 * v11;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v10, a3);
  }

  return result;
}

uint64_t *EmitX86ScalarSelect(llvm::IRBuilderBase *a1, unsigned __int8 *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (!a2 || a2[16] > 0x14u || !llvm::Constant::isAllOnesValue(a2))
  {
    llvm::FixedVectorType::get((**(a1 + 8) + 1920), (*(*a2 + 8) >> 8));
    v14 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v8, v13);
    v14 = 257;
    v10 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0);
    Element = llvm::IRBuilderBase::CreateExtractElement(a1, Cast, v10, v13);
    v14 = 257;
    return llvm::IRBuilderBase::CreateSelect(a1, Element, a3, a4, v13, 0);
  }

  return a3;
}

uint64_t *UpgradeX86VPERMT2Intrinsics(llvm::IRBuilderBase *a1, uint64_t a2, int a3, char a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*a2);
  if (v9)
  {
  }

  v11 = *(v8 + 2);
  if ((v11 & 0xFE) == 0x12)
  {
    v12 = **(v8 + 2);
    v13 = llvm::Type::getPrimitiveSizeInBits(v12);
    v11 = *(v12 + 2);
  }

  else
  {
    v13 = llvm::Type::getPrimitiveSizeInBits(v8);
  }

  v14 = v11 < 6u && ((0x2Fu >> v11) & 1) != 0 || (v11 & 0xFD) == 4;
  v15 = PrimitiveSizeInBits == 128 && v13 == 32;
  v16 = !v15;
  v17 = !v14;
  if (!v15 || v17)
  {
    if ((v14 | v16) == 1)
    {
      v19 = PrimitiveSizeInBits == 128 && v13 == 64;
      v20 = !v19;
      v21 = !v19 || !v14;
      if (v21 == 1)
      {
        if ((v14 | v20) == 1)
        {
          v22 = PrimitiveSizeInBits == 256 && v13 == 32;
          v23 = !v22;
          v24 = !v22 || !v14;
          if (v24 == 1)
          {
            if ((v14 | v23) == 1)
            {
              v25 = PrimitiveSizeInBits == 256 && v13 == 64;
              v26 = !v25;
              v27 = !v25 || !v14;
              if (v27 == 1)
              {
                if ((v14 | v26) == 1)
                {
                  v28 = PrimitiveSizeInBits == 512 && v13 == 32;
                  v29 = !v28;
                  v30 = !v28 || !v14;
                  if (v30 == 1)
                  {
                    if ((v14 | v29) == 1)
                    {
                      v31 = PrimitiveSizeInBits == 512 && v13 == 64;
                      v32 = !v31;
                      if (!v31)
                      {
                        v17 = 1;
                      }

                      if (v17 == 1)
                      {
                        if ((v14 | v32) == 1)
                        {
                          if (PrimitiveSizeInBits == 128 && v13 == 16)
                          {
                            v18 = 10933;
                          }

                          else if (PrimitiveSizeInBits == 256 && v13 == 16)
                          {
                            v18 = 10934;
                          }

                          else if (PrimitiveSizeInBits == 512 && v13 == 16)
                          {
                            v18 = 10935;
                          }

                          else if (PrimitiveSizeInBits == 128 && v13 == 8)
                          {
                            v18 = 10945;
                          }

                          else if (v13 == 8 && PrimitiveSizeInBits == 256)
                          {
                            v18 = 10946;
                          }

                          else
                          {
                            v18 = 10947;
                          }
                        }

                        else
                        {
                          v18 = 10944;
                        }
                      }

                      else
                      {
                        v18 = 10938;
                      }
                    }

                    else
                    {
                      v18 = 10932;
                    }
                  }

                  else
                  {
                    v18 = 10941;
                  }
                }

                else
                {
                  v18 = 10943;
                }
              }

              else
              {
                v18 = 10937;
              }
            }

            else
            {
              v18 = 10931;
            }
          }

          else
          {
            v18 = 10940;
          }
        }

        else
        {
          v18 = 10942;
        }
      }

      else
      {
        v18 = 10936;
      }
    }

    else
    {
      v18 = 10930;
    }
  }

  else
  {
    v18 = 10939;
  }

  v33 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v34 = *v33;
  v35 = v33[4];
  v47 = *v33;
  v48 = v35;
  v49 = v33[8];
  if ((a4 & 1) == 0)
  {
    v47 = v35;
    v48 = v34;
  }

  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a2 + 40) + 56) + 40), v18, 0, 0);
  if (Declaration)
  {
    v37 = *(Declaration + 24);
  }

  else
  {
    v37 = 0;
  }

  v46 = 257;
  v39 = llvm::IRBuilderBase::CreateCall(a1, v37, Declaration, &v47, 3, v45, 0);
  if (a3)
  {
    Cast = llvm::ConstantAggregateZero::get(v8, v38);
  }

  else
  {
    v41 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32);
    v46 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1, 49, v41, v8, v45);
  }

  result = EmitX86Select(a1, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 96), v39, Cast);
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t upgradeAVX512MaskToSelect(uint64_t a1, unint64_t a2, llvm::IRBuilderBase *a3, uint64_t a4, llvm::Value **a5)
{
  v75[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 0xC)
  {
    v10 = 12;
  }

  else
  {
    v10 = a2;
  }

  v11 = *a4;
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*a4);
  if (v12)
  {
    v11 = *a4;
  }

  v14 = a1 + v10;
  v15 = a2 - v10;
  v16 = *(v11 + 2);
  v17 = v11;
  if ((v16 & 0xFE) == 0x12)
  {
    v17 = **(v11 + 2);
  }

  v18 = llvm::Type::getPrimitiveSizeInBits(v17);
  if (v15 < 5)
  {
    goto LABEL_9;
  }

  if (*v14 == 779641197 && *(v14 + 4) == 112)
  {
    if (PrimitiveSizeInBits == 128 && v18 == 32)
    {
      v22 = 11304;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v18 == 64)
    {
      v22 = 11343;
      goto LABEL_221;
    }

    v38 = v18 == 32 && PrimitiveSizeInBits == 256;
    v39 = 10261;
    goto LABEL_159;
  }

  if (*v14 == 778987885 && *(v14 + 4) == 112)
  {
    if (PrimitiveSizeInBits == 128 && v18 == 32)
    {
      v22 = 11306;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v18 == 64)
    {
      v22 = 11346;
      goto LABEL_221;
    }

    v38 = v18 == 32 && PrimitiveSizeInBits == 256;
    v39 = 10263;
    goto LABEL_159;
  }

  if (v15 < 8)
  {
LABEL_9:
    v19 = 1;
LABEL_10:
    if (v15 == 13)
    {
      if (*v14 == 0x6432647074747663 && *(v14 + 5) == 0x3635322E71643264)
      {
        v22 = 10245;
        goto LABEL_221;
      }

      if (*v14 == 0x6432737074747663 && *(v14 + 5) == 0x3832312E71643273)
      {
        v22 = 11338;
        goto LABEL_221;
      }

      if (*v14 == 0x6432737074747663 && *(v14 + 5) == 0x3635322E71643273)
      {
        v22 = 10246;
        goto LABEL_221;
      }
    }

    else if (v15 == 12)
    {
      if (*v14 == 0x7164326470747663 && *(v14 + 8) == 909455918)
      {
        v22 = 10243;
        goto LABEL_221;
      }

      if (*v14 == 0x7370326470747663 && *(v14 + 8) == 909455918)
      {
        v22 = 10242;
        goto LABEL_221;
      }
    }

    if (v19)
    {
      goto LABEL_59;
    }

    if (*v14 != 0x2E7261766D726570)
    {
      if (*v14 == 0x7762646173706264 && *(v14 + 8) == 46)
      {
        v40 = 10409;
        v41 = PrimitiveSizeInBits == 256;
        v42 = 10411;
        v43 = 10410;
        goto LABEL_215;
      }

LABEL_59:
      if (v15 < 0xF || (*v14 == 0x687369746C756D70 ? (v30 = *(v14 + 7) == 0x2E62712E74666968) : (v30 = 0), !v30))
      {
        if ((v19 & 1) != 0 || (*v14 == 0x7463696C666E6F63 ? (v31 = *(v14 + 8) == 46) : (v31 = 0), !v31))
        {
          if (v15 < 5)
          {
LABEL_74:
            result = 0;
            goto LABEL_227;
          }

          goto LABEL_70;
        }

        v44 = *(v14 + 9);
        if (v44 == 100 && PrimitiveSizeInBits == 128)
        {
          v22 = 10389;
          goto LABEL_221;
        }

        if (v44 == 100 && PrimitiveSizeInBits == 256)
        {
          v22 = 10390;
          goto LABEL_221;
        }

        if (v44 == 100 && PrimitiveSizeInBits == 512)
        {
          v22 = 10391;
          goto LABEL_221;
        }

        if (v44 == 113 && PrimitiveSizeInBits == 128)
        {
          v22 = 10392;
          goto LABEL_221;
        }

        v69 = PrimitiveSizeInBits == 256 && v44 == 113;
        v70 = 10393;
LABEL_242:
        if (v69)
        {
          v22 = v70;
        }

        else
        {
          v22 = v70 + 1;
        }

        goto LABEL_221;
      }

      v40 = 10788;
      v41 = PrimitiveSizeInBits == 256;
      v42 = 10790;
      v43 = 10789;
LABEL_215:
      if (v41)
      {
        v42 = v43;
      }

      if (PrimitiveSizeInBits == 128)
      {
        v22 = v40;
      }

      else
      {
        v22 = v42;
      }

      goto LABEL_221;
    }

LABEL_86:
    if ((v16 & 0xFE) == 0x12)
    {
      v16 = *(**(v11 + 2) + 8);
    }

    v34 = v16 < 6u && ((0x2Fu >> v16) & 1) != 0 || (v16 & 0xFD) == 4;
    v35 = PrimitiveSizeInBits == 256 && v18 == 32;
    v36 = !v35;
    v37 = !v34;
    if (v35 && !v37)
    {
      v22 = 10325;
      goto LABEL_221;
    }

    if ((v34 | v36) != 1)
    {
      v22 = 10324;
      goto LABEL_221;
    }

    v45 = PrimitiveSizeInBits == 256 && v18 == 64;
    v46 = !v45;
    v47 = !v45 || !v34;
    if (v47 != 1)
    {
      v22 = 10771;
      goto LABEL_221;
    }

    if ((v34 | v46) != 1)
    {
      v22 = 10773;
      goto LABEL_221;
    }

    v48 = PrimitiveSizeInBits == 512 && v18 == 32;
    v49 = !v48;
    v50 = !v48 || !v34;
    if (v50 != 1)
    {
      v22 = 10781;
      goto LABEL_221;
    }

    if ((v34 | v49) != 1)
    {
      v22 = 10782;
      goto LABEL_221;
    }

    v51 = PrimitiveSizeInBits == 512 && v18 == 64;
    v52 = !v51;
    if (!v51)
    {
      v37 = 1;
    }

    if (v37 != 1)
    {
      v22 = 10772;
      goto LABEL_221;
    }

    if ((v34 | v52) != 1)
    {
      v22 = 10774;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v18 == 16)
    {
      v22 = 10775;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 256 && v18 == 16)
    {
      v22 = 10776;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 512 && v18 == 16)
    {
      v22 = 10777;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v18 == 8)
    {
      v22 = 10778;
      goto LABEL_221;
    }

    v69 = v18 == 8 && PrimitiveSizeInBits == 256;
    v70 = 10779;
    goto LABEL_242;
  }

  if (*v14 == 0x2E622E6675687370)
  {
    v40 = 11449;
    v41 = PrimitiveSizeInBits == 256;
    v42 = 10792;
    v43 = 10339;
    goto LABEL_215;
  }

  if (v15 >= 0xB && *v14 == 0x2E72682E6C756D70 && *(v14 + 3) == 0x2E77732E72682E6CLL)
  {
    v40 = 11447;
    v41 = PrimitiveSizeInBits == 256;
    v42 = 10785;
    v43 = 10335;
    goto LABEL_215;
  }

  if (*v14 == 0x2E772E686C756D70)
  {
    v40 = 11357;
    v41 = PrimitiveSizeInBits == 256;
    v42 = 10786;
    v43 = 10336;
    goto LABEL_215;
  }

  if (v15 != 8)
  {
    if (*v14 == 0x772E75686C756D70 && *(v14 + 8) == 46)
    {
      v40 = 11358;
      v41 = PrimitiveSizeInBits == 256;
      v42 = 10787;
      v43 = 10337;
      goto LABEL_215;
    }

    if (*v14 == 0x642E776464616D70 && *(v14 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v22 = 11355;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v22 = 10333;
      }

      else
      {
        v22 = 10784;
      }

      goto LABEL_221;
    }

    if (v15 >= 0xB && *v14 == 0x7362756464616D70 && *(v14 + 3) == 0x2E772E7362756464)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v22 = 11445;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v22 = 10332;
      }

      else
      {
        v22 = 10783;
      }

      goto LABEL_221;
    }

    if (*v14 == 0x627773736B636170 && *(v14 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v22 = 11350;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v22 = 10318;
      }

      else
      {
        v22 = 10766;
      }

      goto LABEL_221;
    }

    if (*v14 == 0x776473736B636170 && *(v14 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v22 = 11349;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v22 = 10317;
      }

      else
      {
        v22 = 10765;
      }

      goto LABEL_221;
    }

    if (*v14 == 0x627773756B636170 && *(v14 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v22 = 11351;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v22 = 10320;
      }

      else
      {
        v22 = 10768;
      }

      goto LABEL_221;
    }

    if (*v14 == 0x776473756B636170 && *(v14 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v22 = 11397;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v22 = 10319;
      }

      else
      {
        v22 = 10767;
      }

      goto LABEL_221;
    }

    if (v15 < 0xB || (*v14 == 0x766C696D72657076 ? (v61 = *(v14 + 3) == 0x2E7261766C696D72) : (v61 = 0), !v61))
    {
      v19 = 0;
      goto LABEL_10;
    }

    if (PrimitiveSizeInBits == 128 && v18 == 32)
    {
      v22 = 10276;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v18 == 64)
    {
      v22 = 10274;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 256 && v18 == 32)
    {
      v22 = 10277;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 256 && v18 == 64)
    {
      v22 = 10275;
      goto LABEL_221;
    }

    v38 = v18 == 32 && PrimitiveSizeInBits == 512;
    v39 = 10948;
LABEL_159:
    if (v38)
    {
      v22 = v39 + 1;
    }

    else
    {
      v22 = v39;
    }

    goto LABEL_221;
  }

  if (*v14 == 0x2E7261766D726570)
  {
    goto LABEL_86;
  }

LABEL_70:
  if (*v14 != 1735811440 || *(v14 + 4) != 46)
  {
    goto LABEL_74;
  }

  v53 = *(v14 + 5);
  if (v53 == 98 && PrimitiveSizeInBits == 128)
  {
    v22 = 11353;
  }

  else if (v53 == 98 && PrimitiveSizeInBits == 256)
  {
    v22 = 10321;
  }

  else if (v53 == 98 && PrimitiveSizeInBits == 512)
  {
    v22 = 10769;
  }

  else if (v53 == 119 && PrimitiveSizeInBits == 128)
  {
    v22 = 11354;
  }

  else if (PrimitiveSizeInBits == 256 && v53 == 119)
  {
    v22 = 10322;
  }

  else
  {
    v22 = 10770;
  }

LABEL_221:
  v62 = (a4 - 32 * (*(a4 + 20) & 0x7FFFFFF));
  v63 = llvm::CallBase::arg_end(a4);
  v73 = v75;
  v74 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v73, v62, v63);
  LODWORD(v74) = v74 - 2;
  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a4 + 40) + 56) + 40), v22, 0, 0);
  if (Declaration)
  {
    v65 = *(Declaration + 24);
  }

  else
  {
    v65 = 0;
  }

  v72[16] = 257;
  *a5 = llvm::IRBuilderBase::CreateCall(a3, v65, Declaration, v73, v74, v72, 0);
  v66 = llvm::CallBase::arg_end(a4);
  v67 = a4 - 32 * (*(a4 + 20) & 0x7FFFFFF);
  *a5 = EmitX86Select(a3, *(v67 + 32 * (((v66 - v67) >> 5) - 1)), *a5, *(v67 + 32 * (((v66 - v67) >> 5) - 2)));
  if (v73 != v75)
  {
    free(v73);
  }

  result = 1;
LABEL_227:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::IRBuilderBase::CreateNeg(llvm::IRBuilderBase *this, llvm::Constant **a2, const llvm::Twine *a3)
{
  NullValue = llvm::Constant::getNullValue(*a2, a2);

  return llvm::IRBuilderBase::CreateSub(this, NullValue, a2, a3, 0, 0);
}

uint64_t *llvm::IRBuilderBase::CreateAtomicRMW(uint64_t *a1, __int16 a2, uint64_t a3, llvm::Type **a4, __int16 a5, __int16 a6, char a7)
{
  LOBYTE(v9) = a5;
  if ((a5 & 0x100) == 0)
  {
    v15 = (llvm::DataLayout::getTypeSizeInBits((*(*(a1[6] + 56) + 40) + 256), *a4) + 7) >> 3;
    if (v14)
    {
    }

    v9 = 63 - __clz(v15);
  }

  v16 = operator new(0x80uLL);
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 8) = *a4;
  v17 = (v16 + 64);
  *(v16 + 2) = 0;
  *(v16 + 3) = v16 + 64;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 6) = 0;
  *(v16 + 7) = v16 + 64;
  *(v16 + 9) = 0;
  *(v16 + 10) = 0x200000041;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 30) = 0;
  llvm::AtomicRMWInst::Init((v16 + 64), a2, a3, a4, v9, a6, a7);
  v20 = 257;
  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v17, v19);
}

void llvm::UpgradeIntrinsicCall(llvm::CallBase *,llvm::Function *)::$_0::operator()(uint64_t a1, __n128 a2, uint64_t a3, llvm::Type *a4)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = **(a1 + 8);
  if (*(v4 + 72) == *(v5 + 24))
  {
    v10 = *MEMORY[0x277D85DE8];
    goto LABEL_8;
  }

  v6 = *v4;
  if (*v4)
  {
    v7 = *(*v4 + 8) == 16;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    PointerCast = llvm::ConstantExpr::getPointerCast(**(a1 + 8), **(v4 - 32), a4, a2);
    v9 = *MEMORY[0x277D85DE8];
    v5 = PointerCast;
LABEL_8:

    llvm::GlobalIFunc::setResolver(v4, v5);
    return;
  }

  v12 = (v4 - 32 * (*(v4 + 20) & 0x7FFFFFF));
  v13 = llvm::CallBase::arg_end(**a1);
  v28 = v30;
  v29 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v28, v12, v13);
  v14 = *(a1 + 16);
  v15 = **(a1 + 8);
  if (v15)
  {
    v16 = *(v15 + 24);
  }

  else
  {
    v16 = 0;
  }

  v27 = 257;
  v17 = llvm::IRBuilderBase::CreateCall(v14, v16, v15, v28, v29, v26, 0);
  inserted = llvm::PoisonValue::get(v6, v18);
  for (i = 0; i < *(v6 + 3); ++i)
  {
    v21 = *(a1 + 16);
    v27 = 257;
    v22 = llvm::IRBuilderBase::CreateExtractValue(v21, v17, &i, 1, v26);
    v23 = *(a1 + 16);
    v27 = 257;
    inserted = llvm::IRBuilderBase::CreateInsertValue(v23, inserted, v22, &i, 1, v26);
  }

  llvm::Value::doRAUW(**a1, inserted, 1, v20);
  llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(**a1 + 40) + 40, **a1 + 24);
  if (v28 != v30)
  {
    free(v28);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::MemIntrinsicBase<llvm::MemIntrinsic>::setDestAlignment(uint64_t a1, __int16 a2)
{
  result = llvm::AttributeList::removeAttributeAtIndex((a1 + 64), **a1, 1, 75);
  *(a1 + 64) = result;
  if ((a2 & 0x100) != 0)
  {
    v5 = llvm::Attribute::get(**a1, 75, 1 << a2);
    v6 = 0;
    result = llvm::AttributeList::addParamAttribute((a1 + 64), **a1, &v6, 1, v5);
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t *llvm::MemTransferBase<llvm::MemIntrinsic>::setSourceAlignment(uint64_t a1, __int16 a2)
{
  result = llvm::AttributeList::removeAttributeAtIndex((a1 + 64), **a1, 2, 75);
  *(a1 + 64) = result;
  if ((a2 & 0x100) != 0)
  {
    v5 = llvm::Attribute::get(**a1, 75, 1 << a2);
    v6 = 1;
    result = llvm::AttributeList::addParamAttribute((a1 + 64), **a1, &v6, 1, v5);
    *(a1 + 64) = result;
  }

  return result;
}

llvm::MDNode *llvm::UpgradeTBAANode(llvm *this, llvm::MDNode *a2)
{
  v2 = this;
  v26 = *MEMORY[0x277D85DE8];
  v4 = (this - 16);
  v3 = *(this - 2);
  if ((v3 & 2) != 0)
  {
    v5 = *(this - 4);
  }

  else
  {
    v5 = &v4[-((v3 >> 2) & 0xF)];
  }

  if (!llvm::MDNode::classof(*v5) || ((*v4 & 2) != 0 ? (v7 = *(v2 - 6)) : (v7 = (*v4 >> 6) & 0xF), v7 <= 2))
  {
    v8 = *(v2 + 1);
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 4) != 0)
    {
      v9 = *v9;
    }

    if ((*v4 & 2) != 0)
    {
      if (*(v2 - 6) == 3)
      {
        v10 = *(v2 - 4);
        goto LABEL_16;
      }
    }

    else if ((*v4 & 0x3C0) == 0xC0)
    {
      v10 = &v4[-((*v4 >> 2) & 0xFLL)];
LABEL_16:
      v25 = *v10;
      Impl = llvm::MDTuple::getImpl(v9, &v25, 2uLL, 0, 1);
      v22 = Impl;
      NullValue = llvm::Constant::getNullValue((*v9 + 2016), v11);
      v23 = llvm::ValueAsMetadata::get(NullValue, v13);
      if ((*v4 & 2) != 0)
      {
        v14 = *(v2 - 4);
      }

      else
      {
        v14 = &v4[-((*v4 >> 2) & 0xFLL)];
      }

      v24 = v14[2];
      v17 = v9;
      v18 = 4;
      goto LABEL_21;
    }

    Impl = v2;
    v22 = v2;
    v15 = llvm::Constant::getNullValue((*v9 + 2016), v6);
    v23 = llvm::ValueAsMetadata::get(v15, v16);
    v17 = v9;
    v18 = 3;
LABEL_21:
    v2 = llvm::MDTuple::getImpl(v17, &Impl, v18, 0, 1);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

char *llvm::UpgradeBitCastInst(llvm *this, llvm::Value *a2, llvm::Value *a3, llvm::Type *a4, llvm::Instruction **a5)
{
  if (this != 49)
  {
    return 0;
  }

  v19 = v5;
  v20 = v6;
  *a4 = 0;
  v9 = *a2;
  v10 = *(*a2 + 8);
  v11 = v10;
  if ((v10 & 0xFE) == 0x12)
  {
    v11 = *(*v9[2] + 8);
  }

  if (v11 != 15)
  {
    return 0;
  }

  v12 = *(a3 + 2);
  v13 = v12;
  if ((v12 & 0xFE) == 0x12)
  {
    v13 = *(**(a3 + 2) + 8);
  }

  if (v13 != 15)
  {
    return 0;
  }

  if ((v10 & 0xFE) == 0x12)
  {
    v10 = *(*v9[2] + 8);
  }

  if ((v12 & 0xFE) == 0x12)
  {
    v12 = *(**(a3 + 2) + 8);
  }

  if ((v12 ^ v10) < 0x100)
  {
    return 0;
  }

  v15 = **v9;
  v18 = 257;
  v16 = llvm::CastInst::Create(47, a2, (v15 + 2016), v17, 0);
  *a4 = v16;
  v18 = 257;
  return llvm::CastInst::Create(48, v16, a3, v17, 0);
}

llvm::ConstantExpr *llvm::UpgradeBitCastExpr(llvm *this, uint64_t ***a2, llvm::Constant *a3, llvm::Type *a4)
{
  if (this != 49)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(*a2 + 2);
  v7 = v6;
  if ((v6 & 0xFE) == 0x12)
  {
    v7 = *(*v5[2] + 8);
  }

  if (v7 != 15)
  {
    return 0;
  }

  v8 = *(a3 + 2);
  v9 = v8;
  if ((v8 & 0xFE) == 0x12)
  {
    v9 = *(**(a3 + 2) + 8);
  }

  if (v9 != 15)
  {
    return 0;
  }

  if ((v6 & 0xFE) == 0x12)
  {
    v6 = *(*v5[2] + 8);
  }

  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(**(a3 + 2) + 8);
  }

  if ((v8 ^ v6) < 0x100)
  {
    return 0;
  }

  FoldedCast = getFoldedCast(0x2F, a2, (**v5 + 2016), 0);

  return getFoldedCast(0x30, FoldedCast, a3, 0);
}

uint64_t llvm::UpgradeDebugInfo(llvm *this, llvm::Module *a2)
{
  if (byte_2815AC380)
  {
    return 0;
  }

  DebugMetadataVersionFromModule = llvm::getDebugMetadataVersionFromModule(this, a2);
  if (DebugMetadataVersionFromModule != 700000003)
  {
    v5 = DebugMetadataVersionFromModule;
    if (DebugMetadataVersionFromModule != 3)
    {
      if (llvm::StripDebugInfo(this, v4))
      {
        v12 = 5;
        v9 = 1;
        v13 = 1;
        v11 = &unk_2883F1298;
        v14 = this;
        v15 = v5;
        llvm::LLVMContext::diagnose(*this, &v11);
        return v9;
      }

      return 0;
    }
  }

  v16 = 0;
  v6 = llvm::errs(DebugMetadataVersionFromModule);
  if (llvm::verifyModule(this, v6, &v16, v7))
  {
    llvm::report_fatal_error("Broken module found, compilation aborted!", 1);
  }

  if (v16 != 1)
  {
    return 0;
  }

  v12 = 5;
  v13 = 1;
  v11 = &unk_2883F12C8;
  v14 = this;
  llvm::LLVMContext::diagnose(*this, &v11);
  return llvm::StripDebugInfo(this, v8);
}

void llvm::UpgradeARCRuntime(uint64_t **this, llvm::Module *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v23 = this;
  llvm::UpgradeARCRuntime(llvm::Module &)::$_0::operator()(&v23, "clang.arc.use", 218);
  v30 = "clang.arc.retainAutoreleasedReturnValueMarker";
  LOWORD(v34) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v30);
  if (NamedMetadata)
  {
    v4 = NamedMetadata;
    v5 = ***(NamedMetadata + 48);
    if (v5)
    {
      v6 = *(v5 - 16);
      v7 = (v6 & 2) != 0 ? *(v5 - 32) : (v5 - 16 - 8 * ((v6 >> 2) & 0xF));
      v8 = *v7;
      if (*v7)
      {
        if (!*v8)
        {
          v30 = &v32;
          v31 = 0x400000000;
          v9 = *(v8 + 8);
          v10 = *v9;
          v28[0] = v9 + 3;
          v28[1] = v10;
          llvm::StringRef::split(v28, &v30, "#", 1uLL, -1, 1);
          if (v31 == 2)
          {
            llvm::StringRef::str(v30, &v26);
            v11 = std::string::append(&v26, ";");
            v12 = v11->__r_.__value_.__r.__words[2];
            *&v27.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
            v27.__r_.__value_.__r.__words[2] = v12;
            v11->__r_.__value_.__l.__size_ = 0;
            v11->__r_.__value_.__r.__words[2] = 0;
            v11->__r_.__value_.__r.__words[0] = 0;
            llvm::StringRef::str(v30 + 2, __p);
            if ((v25 & 0x80u) == 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            if ((v25 & 0x80u) == 0)
            {
              v14 = v25;
            }

            else
            {
              v14 = __p[1];
            }

            v15 = std::string::append(&v27, v13, v14);
            v16 = v15->__r_.__value_.__r.__words[2];
            *v28 = *&v15->__r_.__value_.__l.__data_;
            v29 = v16;
            v15->__r_.__value_.__l.__size_ = 0;
            v15->__r_.__value_.__r.__words[2] = 0;
            v15->__r_.__value_.__r.__words[0] = 0;
            if (v25 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v26.__r_.__value_.__l.__data_);
            }

            if (v29 >= 0)
            {
              v17 = v28;
            }

            else
            {
              v17 = v28[0];
            }

            if (v29 >= 0)
            {
              v18 = SHIBYTE(v29);
            }

            else
            {
              v18 = v28[1];
            }

            v19 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**this + 312), v17, v18);
            if (v20)
            {
              *(v19 + 16) = v19;
            }

            v8 = v19 + 8;
            if (SHIBYTE(v29) < 0)
            {
              operator delete(v28[0]);
            }
          }

          llvm::Module::addModuleFlag(this, 1, "clang.arc.retainAutoreleasedReturnValueMarker", 0x2DuLL, v8);
          llvm::Module::eraseNamedMetadata(this, v4);
          if (v30 != &v32)
          {
            free(v30);
          }

          v21 = 0;
          v30 = "objc_autorelease";
          LODWORD(v31) = 212;
          v32 = "objc_autoreleasePoolPop";
          v33 = 213;
          v34 = "objc_autoreleasePoolPush";
          v35 = 214;
          v36 = "objc_autoreleaseReturnValue";
          v37 = 215;
          v38 = "objc_copyWeak";
          v39 = 219;
          v40 = "objc_destroyWeak";
          v41 = 220;
          v42 = "objc_initWeak";
          v43 = 221;
          v44 = "objc_loadWeak";
          v45 = 222;
          v46 = "objc_loadWeakRetained";
          v47 = 223;
          v48 = "objc_moveWeak";
          v49 = 224;
          v50 = "objc_release";
          v51 = 225;
          v52 = "objc_retain";
          v53 = 226;
          v54 = "objc_retainAutorelease";
          v55 = 228;
          v56 = "objc_retainAutoreleaseReturnValue";
          v57 = 229;
          v58 = "objc_retainAutoreleasedReturnValue";
          v59 = 230;
          v60 = "objc_retainBlock";
          v61 = 231;
          v62 = "objc_storeStrong";
          v63 = 233;
          v64 = "objc_storeWeak";
          v65 = 234;
          v66 = "objc_unsafeClaimAutoreleasedReturnValue";
          v67 = 239;
          v68 = "objc_retainedObject";
          v69 = 232;
          v70 = "objc_unretainedObject";
          v71 = 237;
          v72 = "objc_unretainedPointer";
          v73 = 238;
          v74 = "objc_retain_autorelease";
          v75 = 227;
          v76 = "objc_sync_enter";
          v77 = 235;
          v78 = "objc_sync_exit";
          v79 = 236;
          v80 = "objc_arc_annotation_topdown_bbstart";
          v81 = 211;
          v82 = "objc_arc_annotation_topdown_bbend";
          v83 = 210;
          v84 = "objc_arc_annotation_bottomup_bbstart";
          v85 = 209;
          v86 = "objc_arc_annotation_bottomup_bbend";
          v87 = 208;
          do
          {
            llvm::UpgradeARCRuntime(llvm::Module &)::$_0::operator()(&v23, *(&v30 + v21), *(&v30 + v21 + 8));
            v21 += 16;
          }

          while (v21 != 464);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void llvm::UpgradeARCRuntime(llvm::Module &)::$_0::operator()(uint64_t ***a1, char *__s, int a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (__s)
  {
    v7 = strlen(__s);
  }

  else
  {
    v7 = 0;
  }

  v8 = llvm::ValueSymbolTable::lookup(v6[14], __s, v7);
  if (v8)
  {
    v9 = v8;
    if (!*(v8 + 16))
    {
      Declaration = llvm::Intrinsic::getDeclaration(*a1, a3, 0, 0);
      v10 = *(v9 + 8);
      if (!v10)
      {
        goto LABEL_33;
      }

      v11 = &v36;
      v12 = v38;
      do
      {
        v13 = *(v10 + 24);
        v10 = *(v10 + 8);
        if (v13 && *(v13 + 16) == 84)
        {
          v14 = *(v13 - 32);
          if (!v14 || *(v14 + 16) || *(v14 + 24) != *(v13 + 72))
          {
            v14 = 0;
          }

          if (v14 == v9)
          {
            v15 = *(v13 + 40);
            v16 = **v15;
            v17 = v12;
            v37[0] = v12;
            v37[1] = 0x200000000;
            v38[6] = v16;
            v38[7] = &v44;
            v38[8] = v45;
            v38[9] = 0;
            v39 = 0;
            v40 = 512;
            v41 = 7;
            v38[4] = 0;
            v38[5] = 0;
            v42 = 0;
            v43 = 0;
            v44 = &unk_2883F13A8;
            v45[0] = &unk_2883F1498;
            llvm::IRBuilderBase::SetInsertPoint(v37, v15, v13 + 24);
            v18 = *(Declaration + 24);
            v19 = v11;
            v34 = v11;
            v35 = 0x200000000;
            v20 = *(v18 + 16);
            if (*v20 == *v13 || llvm::CastInst::castIsValid(49, *v13, *v20))
            {
              v21 = llvm::CallBase::arg_end(v13) - v13 + 32 * (*(v13 + 20) & 0x7FFFFFF);
              if ((v21 & 0x1FFFFFFFE0) != 0)
              {
                v22 = 0;
                v23 = (v21 >> 5);
                do
                {
                  Cast = *(v13 - 32 * (*(v13 + 20) & 0x7FFFFFF) + 32 * v22);
                  if (v22 >= (*(v18 + 12) - 1))
                  {
                    ++v22;
                  }

                  else
                  {
                    ++v22;
                    if (!llvm::CastInst::castIsValid(49, *Cast, *(*(v18 + 16) + 8 * v22)))
                    {
                      goto LABEL_27;
                    }

                    v25 = *(*(v18 + 16) + 8 * v22);
                    v33 = 257;
                    Cast = llvm::IRBuilderBase::CreateCast(v37, 49, Cast, v25, v32);
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v34, Cast);
                }

                while (v22 != v23);
              }

              v33 = 257;
              v26 = llvm::IRBuilderBase::CreateCall(v37, v18, Declaration, v34, v35, v32, 0);
              *(v26 + 9) = *(v26 + 9) & 0xFFFC | *(v13 + 18) & 3;
              llvm::Value::takeName(v26, v13);
              v27 = *v13;
              v33 = 257;
              v28 = llvm::IRBuilderBase::CreateCast(v37, 49, v26, v27, v32);
              if (*(v13 + 8))
              {
                llvm::Value::doRAUW(v13, v28, 1, v29);
              }

              llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v13 + 40) + 40, v13 + 24);
            }

LABEL_27:
            v11 = v19;
            if (v34 != v19)
            {
              free(v34);
            }

            v12 = v17;
            if (v37[0] != v17)
            {
              free(v37[0]);
            }
          }
        }
      }

      while (v10);
      if (!*(v9 + 8))
      {
LABEL_33:
        llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::erase(*(v9 + 40) + 24, v9 + 56);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::UpgradeModuleFlags(uint64_t **this, llvm::Module *a2)
{
  v191 = *MEMORY[0x277D85DE8];
  v187 = "llvm.module.flags";
  v190 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v187);
  v183 = NamedMetadata;
  if (NamedMetadata)
  {
    v182 = 0;
    v4 = **this;
    v181 = 0;
    v5 = *(*(NamedMetadata + 48) + 8);
    if (!v5)
    {
      goto LABEL_212;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v175 = 0;
    v176 = 0;
    v174 = 0;
    v171 = v4;
    v172 = v4 + 1944;
    v173 = 0;
    v9 = 0x76697463656A624FLL;
    v10 = 0x67616D4920432D65;
    v11 = 0x6576654C20434950;
    v12 = 0x742D68636E617262;
    v13 = 0x6E652D7465677261;
    while (1)
    {
      v14 = *(**(v183 + 48) + 8 * v6);
      v180 = v14;
      v15 = (v14 - 16);
      v16 = *(v14 - 16);
      if ((v16 & 2) != 0)
      {
        if (*(v14 - 24) == 3)
        {
          v17 = *(v14 - 32);
          goto LABEL_9;
        }
      }

      else if ((*(v14 - 16) & 0x3C0) == 0xC0)
      {
        v17 = &v15[-((v16 >> 2) & 0xF)];
LABEL_9:
        v18 = v17[1];
        if (!v18 || *v18)
        {
          goto LABEL_201;
        }

        v178[5] = &v182;
        v179 = v18;
        v178[0] = this;
        v178[1] = &v179;
        v178[2] = &v180;
        v178[3] = &v183;
        v178[4] = &v181;
        v19 = *(v18 + 8);
        v20 = *v19;
        if (*v19 == 9)
        {
          v37 = v19[3];
          v38 = *(v19 + 32);
          if (v37 == v11 && v38 == 108)
          {
            v70 = (*v15 & 2) != 0 ? *(v14 - 32) : &v15[-((*v15 >> 2) & 0xFLL)];
            v80 = *v70;
            if (v80)
            {
              if (*v80 == 1)
              {
                v81 = *(v80 + 128);
                if (*(v81 + 16) == 16)
                {
                  v82 = v13;
                  v83 = v11;
                  v84 = v10;
                  v85 = v9;
                  v86 = v8;
                  LimitedValue = llvm::APInt::getLimitedValue((v81 + 24), 0xFFFFFFFFFFFFFFFFLL);
                  if (LimitedValue == 7 || LimitedValue == 1)
                  {
                    llvm::UpgradeModuleFlags(llvm::Module &)::$_0::operator()(v178, 8u);
                  }

                  v8 = v86;
                  v9 = v85;
                  v10 = v84;
                  v11 = v83;
                  v12 = 0x742D68636E617262;
                  v13 = v82;
                }
              }
            }
          }
        }

        else if (v20 == 28)
        {
          v29 = v19[3];
          v30 = v19[4];
          v31 = v19[5];
          v32 = *(v19 + 12);
          v36 = v29 == v9 && v30 == 0x73616C4320432D65 && v31 == 0x7265706F72502073 && v32 == 1936025972;
          v8 = v36 | v8;
        }

        else if (v20 == 30)
        {
          v21 = v19[3];
          v22 = v19[4];
          v23 = v19[5];
          v24 = *(v19 + 46);
          v28 = v21 == v9 && v22 == v10 && v23 == 0x56206F666E492065 && v24 == 0x6E6F697372655620;
          v7 |= v28;
        }

        v40 = *(v179 + 8);
        if (*v40 == 9)
        {
          v41 = *(v40 + 24);
          v42 = *(v40 + 32);
          if (v41 == v11 + 0x20000 && v42 == 108)
          {
            v68 = *(v180 - 16);
            v69 = (v68 & 2) != 0 ? *(v180 - 32) : (v180 - 16 - 8 * ((v68 >> 2) & 0xF));
            v71 = *v69;
            if (v71)
            {
              if (*v71 == 1)
              {
                v72 = *(v71 + 128);
                if (*(v72 + 16) == 16)
                {
                  v73 = v8;
                  v74 = v9;
                  v75 = v10;
                  v76 = v11;
                  v77 = v12;
                  v78 = v13;
                  v79 = llvm::APInt::getLimitedValue((v72 + 24), 0xFFFFFFFFFFFFFFFFLL);
                  v13 = v78;
                  v12 = v77;
                  v11 = v76;
                  v10 = v75;
                  v9 = v74;
                  v8 = v73;
                  if (v79 == 1)
                  {
                    llvm::UpgradeModuleFlags(llvm::Module &)::$_0::operator()(v178, 7u);
                    v13 = v78;
                    v12 = v77;
                    v11 = v76;
                    v10 = v75;
                    v9 = v74;
                    v8 = v73;
                  }
                }
              }
            }
          }
        }

        v44 = *(v179 + 8);
        if (*v44 == 25)
        {
          if (*(v44 + 24) != v12 || *(v44 + 32) != v13 || *(v44 + 40) != 0x6E656D6563726F66 || *(v44 + 48) != 116)
          {
LABEL_63:
            v48 = *(v44 + 24);
            v49 = *(v44 + 32);
            v50 = *(v44 + 35);
            if (v48 != 0x7465722D6E676973 || v49 != 0x726464612D6E7275 || v50 != 0x737365726464612DLL)
            {
              goto LABEL_106;
            }
          }

          v53 = *(v180 - 16);
          if ((v53 & 2) != 0)
          {
            v54 = *(v180 - 32);
          }

          else
          {
            v54 = (v180 - 16 - 8 * ((v53 >> 2) & 0xF));
          }

          v55 = *v54;
          if (v55)
          {
            if (*v55 == 1)
            {
              v56 = *(v55 + 128);
              if (*(v56 + 16) == 16)
              {
                v57 = v8;
                v58 = v9;
                v59 = v10;
                v60 = v11;
                v61 = llvm::APInt::getLimitedValue((v56 + 24), 0xFFFFFFFFFFFFFFFFLL);
                v13 = 0x6E652D7465677261;
                v12 = 0x742D68636E617262;
                v11 = v60;
                v10 = v59;
                v9 = v58;
                v8 = v57;
                if (v61 == 1)
                {
                  v62 = **this;
                  v187 = 0;
                  v188 = 0;
                  v189[0] = 0;
                  v63 = llvm::ConstantInt::get((v62 + 1992), 8);
                  v187 = llvm::ValueAsMetadata::get(v63, v64);
                  v65 = (v180 - 16);
                  v66 = *(v180 - 16);
                  if ((v66 & 2) != 0)
                  {
                    v67 = *(v180 - 32);
                  }

                  else
                  {
                    v67 = &v65[-((v66 >> 2) & 0xF)];
                  }

                  v188 = v67[1];
                  if ((*v65 & 2) != 0)
                  {
                    v89 = *(v180 - 32);
                  }

                  else
                  {
                    v89 = &v65[-((*v65 >> 2) & 0xFLL)];
                  }

                  v189[0] = v89[2];
                  v90 = v183;
                  v91 = v181;
                  Impl = llvm::MDTuple::getImpl(*this, &v187, 3uLL, 0, 1);
                  llvm::TrackingMDRef::reset((**(v90 + 48) + 8 * v91), Impl);
                  v182 = 1;
                  v8 = v57;
                  v9 = v58;
                  v10 = v59;
                  v11 = v60;
                  v12 = 0x742D68636E617262;
                  v13 = 0x6E652D7465677261;
                }
              }
            }
          }
        }

        else if (*v44 >= 0x13uLL)
        {
          goto LABEL_63;
        }

LABEL_106:
        v93 = *(v179 + 8);
        v94 = *v93;
        if (*v93 != 30)
        {
          goto LABEL_189;
        }

        v95 = v93[3] == v9 && v93[4] == v10;
        v96 = v95 && v93[5] == 0x53206F666E492065;
        if (!v96 || *(v93 + 46) != 0x6E6F697463655320)
        {
          goto LABEL_117;
        }

        v107 = *(v180 - 16);
        v108 = (v107 & 2) != 0 ? *(v180 - 32) : v180 - 16 - 8 * ((v107 >> 2) & 0xF);
        v109 = *(v108 + 16);
        if (!v109 || *v109)
        {
          goto LABEL_117;
        }

        v110 = v12;
        v111 = v11;
        v112 = v10;
        v113 = v9;
        v169 = v8;
        v187 = v189;
        v188 = 0x400000000;
        v114 = *(v109 + 8);
        v115 = *v114;
        v177.__r_.__value_.__r.__words[0] = (v114 + 3);
        v177.__r_.__value_.__l.__size_ = v115;
        llvm::StringRef::split(&v177, &v187, " ", 1uLL, -1, 1);
        if (v188 != 1)
        {
          memset(&v177, 0, sizeof(v177));
          if (v188)
          {
            v116 = v187;
            v117 = 16 * v188;
            do
            {
              llvm::StringRef::str(v116, &__p);
              if (v186 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if (v186 >= 0)
              {
                v119 = HIBYTE(v186);
              }

              else
              {
                v119 = v185;
              }

              std::string::append(&v177, p_p, v119);
              if (SHIBYTE(v186) < 0)
              {
                operator delete(__p);
              }

              v116 += 2;
              v117 -= 16;
            }

            while (v117);
          }

          __p = 0;
          v185 = 0;
          v186 = 0;
          v120 = (v180 - 16);
          v121 = *(v180 - 16);
          if ((v121 & 2) != 0)
          {
            v122 = *(v180 - 32);
          }

          else
          {
            v122 = &v120[-((v121 >> 2) & 0xF)];
          }

          __p = *v122;
          if ((*v120 & 2) != 0)
          {
            v143 = *(v180 - 32);
          }

          else
          {
            v143 = &v120[-((*v120 >> 2) & 0xFLL)];
          }

          v185 = v143[1];
          if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v144 = &v177;
          }

          else
          {
            v144 = v177.__r_.__value_.__r.__words[0];
          }

          if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v177.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v177.__r_.__value_.__l.__size_;
          }

          v146 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**this + 312), v144, size);
          if (v147)
          {
            *(v146 + 16) = v146;
          }

          v186 = v146 + 8;
          v148 = v183;
          v149 = v181;
          v150 = llvm::MDTuple::getImpl(*this, &__p, 3uLL, 0, 1);
          llvm::TrackingMDRef::reset((**(v148 + 48) + 8 * v149), v150);
          v182 = 1;
          if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v177.__r_.__value_.__l.__data_);
          }
        }

        if (v187 != v189)
        {
          free(v187);
        }

        v93 = *(v179 + 8);
        v94 = *v93;
        v8 = v169;
        v9 = v113;
        v10 = v112;
        v11 = v111;
        v12 = v110;
        v13 = 0x6E652D7465677261;
        if (*v93 == 30)
        {
LABEL_117:
          v98 = v93[3];
          v99 = v93[4];
          v100 = v93[5];
          v101 = *(v93 + 46);
          if (v98 == v9 && v99 == 0x6272614720432D65 && v100 == 0x6C6C6F4320656761 && v101 == 0x6E6F697463656C6CLL)
          {
            v105 = *(v180 - 16);
            v106 = (v105 & 2) != 0 ? *(v180 - 32) : v180 - 16 - 8 * ((v105 >> 2) & 0xF);
            v123 = *(v106 + 16);
            if (*v123 == 1)
            {
              v124 = *(v123 + 128);
              if (*v124 != v172)
              {
                v168 = v7;
                v170 = v8;
                v125 = v174;
                UniqueInteger = llvm::Constant::getUniqueInteger(v124);
                if (*(UniqueInteger + 8) >= 0x41u)
                {
                  v127 = *UniqueInteger;
                }

                else
                {
                  v127 = UniqueInteger;
                }

                v128 = *v127;
                v129 = *v127 >= 0x100;
                v130 = BYTE1(*v127);
                if (v129)
                {
                  v125 = v130;
                }

                if (v129)
                {
                  v131 = v128 >> 16;
                }

                else
                {
                  v131 = v175;
                }

                if (v129)
                {
                  v132 = v128 >> 24;
                }

                else
                {
                  v132 = v173;
                }

                v133 = v176;
                if (v129)
                {
                  v133 = 1;
                }

                v187 = 0;
                v188 = 0;
                v189[0] = 0;
                v134 = llvm::ConstantInt::get(v171 + 1992, 1);
                v187 = llvm::ValueAsMetadata::get(v134, v135);
                v136 = *(v180 - 16);
                if ((v136 & 2) != 0)
                {
                  v137 = *(v180 - 32);
                }

                else
                {
                  v137 = v180 - 16 - 8 * ((v136 >> 2) & 0xF);
                }

                v175 = v131;
                v188 = *(v137 + 8);
                v138 = llvm::ConstantInt::get(v172, v128);
                v189[0] = llvm::ValueAsMetadata::get(v138, v139);
                v140 = v183;
                v141 = v181;
                v142 = llvm::MDTuple::getImpl(*this, &v187, 3uLL, 0, 1);
                llvm::TrackingMDRef::reset((**(v140 + 48) + 8 * v141), v142);
                v182 = 1;
                v93 = *(v179 + 8);
                v94 = *v93;
                v173 = v132;
                v174 = v125;
                LODWORD(v176) = v133;
                v7 = v168;
                v8 = v170;
                v9 = 0x76697463656A624FLL;
                v10 = 0x67616D4920432D65;
                v11 = 0x6576654C20434950;
                v12 = 0x742D68636E617262;
                v13 = 0x6E652D7465677261;
                goto LABEL_189;
              }
            }
          }
        }

        else
        {
LABEL_189:
          if (v94 == 19)
          {
            v151 = v93[3];
            v152 = v93[4];
            v153 = *(v93 + 35);
            v156 = v151 == 0x2E68747561727470 && v152 == 0x737265762D696261 && v153 == 0x6E6F69737265762DLL;
            BYTE4(v176) |= v156;
          }
        }

        v6 = v181;
      }

LABEL_201:
      v181 = ++v6;
      if (v6 == v5)
      {
        if (!(v8 & 1 | ((v7 & 1) == 0)))
        {
          llvm::Module::addModuleFlag(this, 4, "Objective-C Class Properties", 0x1CuLL, 0);
          v182 = 1;
        }

        if (v176)
        {
          v157 = 1;
          llvm::Module::addModuleFlag(this, 1, "Swift ABI Version", 0x11uLL, v174);
          v158 = llvm::ConstantInt::get(v172, v173);
          v160 = llvm::ValueAsMetadata::get(v158, v159);
          llvm::Module::addModuleFlag(this, 1, "Swift Major Version", 0x13uLL, v160);
          v161 = llvm::ConstantInt::get(v172, v175);
          v163 = llvm::ValueAsMetadata::get(v161, v162);
          llvm::Module::addModuleFlag(this, 1, "Swift Minor Version", 0x13uLL, v163);
          v182 = 1;
          if ((v176 & 0x100000000) != 0)
          {
LABEL_213:
            v167 = *MEMORY[0x277D85DE8];
            return v157 & 1;
          }
        }

        else if ((v176 & 0x100000000) != 0)
        {
          v157 = v182;
          goto LABEL_213;
        }

LABEL_212:
        inserted = insertMissingPtrAuthABIVersion(this);
        v157 = inserted | v182;
        goto LABEL_213;
      }
    }
  }

  v164 = *MEMORY[0x277D85DE8];

  return insertMissingPtrAuthABIVersion(this);
}

uint64_t insertMissingPtrAuthABIVersion(llvm::Module *a1)
{
  v8 = 260;
  v7 = (a1 + 208);
  llvm::Triple::Triple(__p, &v7);
  ArchName = llvm::Triple::getArchName(__p);
  if (v3 == 6 && (*ArchName == 913142369 ? (v4 = *(ArchName + 4) == 25908) : (v4 = 0), v4))
  {
    llvm::Module::setPtrAuthABIVersion(a1, 0xFFFFFFFFuLL);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

uint64_t *llvm::UpgradeModuleFlags(llvm::Module &)::$_0::operator()(void ***a1, unsigned int a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = llvm::ConstantInt::get(***a1 + 1992, a2);
  v18[0] = llvm::ValueAsMetadata::get(v3, v4);
  v5 = (*a1[1])[1];
  v6 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((***a1 + 312), (v5 + 24), *v5);
  if (v7)
  {
    *(v6 + 16) = v6;
  }

  v18[1] = v6 + 8;
  v8 = *a1[2];
  v11 = *(v8 - 16);
  v9 = v8 - 16;
  v10 = v11;
  if ((v11 & 2) != 0)
  {
    v12 = *(*a1[2] - 4);
  }

  else
  {
    v12 = v9 - 8 * ((v10 >> 2) & 0xF);
  }

  v18[2] = *(v12 + 16);
  v13 = *a1[3];
  v14 = *a1[4];
  Impl = llvm::MDTuple::getImpl(**a1, v18, 3uLL, 0, 1);
  result = llvm::TrackingMDRef::reset((**(v13 + 48) + 8 * v14), Impl);
  *a1[5] = 1;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::UpgradeFunctionAttributes(llvm *this, llvm::Function *a2)
{
  if (*(this + 16))
  {
    if (*(this + 16) == 3 && (*(this + 5) & 0x7FFFFFF) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (*(this + 9) == (this + 72) && (*(this + 35) & 1) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(this + 14);
  if (!v3 || (*(v3 + 19) & 0x40) == 0)
  {
    v4 = *(this + 10);
    v5 = this + 72;
    if (v4 != this + 72)
    {
      do
      {
        v6 = *(v4 + 1);
        if (v4)
        {
          v7 = v4 - 24;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v7 + 6);
        v9 = v7 + 40;
        if (v8 != v7 + 40)
        {
          do
          {
            v13 = *(v8 + 1);
            v14 = (v8 - 24);
            if (v8)
            {
              v15 = v8 - 24;
            }

            else
            {
              v15 = 0;
            }

            v16 = v15[16] - 33;
            v17 = v16 > 0x3E;
            v18 = (1 << v16) & 0x7FF7FFFFFFFFFFBELL;
            if (!v17 && v18 == 0)
            {
              if ((v12 = *(v8 + 5), v11 = (v8 + 40), (v10 = v12) != 0) && (*(v10 + 19) & 0x40) != 0 || llvm::CallBase::hasFnAttrOnCalledFunction(v14, 62))
              {
                if (!llvm::ConstrainedFPIntrinsic::classof(v14))
                {
                  *v11 = llvm::AttributeList::removeAttributeAtIndex(v11, **v14, -1, 62);
                  *v11 = llvm::AttributeList::addAttributeAtIndex(v11, **v14, -1, 19);
                }
              }
            }

            v8 = v13;
          }

          while (v13 != v9);
        }

        v4 = v6;
      }

      while (v6 != v5);
    }
  }

LABEL_29:
  llvm::AttributeFuncs::typeIncompatible(**(*(this + 3) + 16), 3, v25);
  *(this + 14) = llvm::AttributeList::removeAttributesAtIndex(this + 14, **this, 0, v25);
  std::__tree<llvm::SmallString<32u>>::destroy(&v26, v27);
  v20 = llvm::Function::args(this);
  if (v20 != v21)
  {
    v22 = v20;
    v23 = v21;
    do
    {
      llvm::AttributeFuncs::typeIncompatible(*v22, 3, v25);
      v24 = *(v22 + 24);
      v28 = *(v24 + 112);
      *(*(v22 + 24) + 112) = llvm::AttributeList::removeAttributesAtIndex(&v28, **v24, *(v22 + 32) + 1, v25);
      std::__tree<llvm::SmallString<32u>>::destroy(&v26, v27);
      v22 += 40;
    }

    while (v22 != v23);
  }
}

llvm::MDNode *llvm::upgradeInstructionLoopAttachment(llvm *this, llvm::MDNode *a2)
{
  v2 = this;
  v66[8] = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (v3 == 4)
  {
    v4 = this;
  }

  else
  {
    v4 = 0;
  }

  if (v3 != 4)
  {
    goto LABEL_104;
  }

  v6 = (this - 16);
  v5 = *(this - 2);
  if ((v5 & 2) != 0)
  {
    v7 = *(this - 4);
    v8 = *(this - 6);
    if (!*(this - 6))
    {
      goto LABEL_104;
    }
  }

  else
  {
    v7 = &v6[-((v5 >> 2) & 0xF)];
    v8 = (v5 >> 6) & 0xF;
    if (!v8)
    {
      goto LABEL_104;
    }
  }

  v9 = 8 * v8 - 8;
  do
  {
    v10 = *v7;
    if (!*v7)
    {
      goto LABEL_21;
    }

    if (*v10 != 4)
    {
      goto LABEL_20;
    }

    v11 = *(v10 - 16);
    if ((v11 & 2) != 0)
    {
      if (!*(v10 - 24))
      {
        goto LABEL_20;
      }

      v12 = *(v10 - 32);
    }

    else
    {
      if ((v11 & 0x3C0) == 0)
      {
        goto LABEL_20;
      }

      v12 = (v10 - 16 - 8 * ((v11 >> 2) & 0xF));
    }

    v10 = *v12;
    if (!v10)
    {
      goto LABEL_21;
    }

    if (*v10 || (v13 = *(v10 + 8), *v13 < 0x10uLL))
    {
LABEL_20:
      LODWORD(v10) = 0;
LABEL_21:
      if (v10)
      {
        break;
      }

      goto LABEL_22;
    }

    v16 = v13[3];
    v15 = v13[4];
    v17 = v16 == 0x6365762E6D766C6CLL && v15 == 0x2E72657A69726F74;
    LODWORD(v10) = v17;
    if (v10)
    {
      break;
    }

LABEL_22:
    ++v7;
    v14 = v9;
    v9 -= 8;
  }

  while (v14);
  if (!v10)
  {
    goto LABEL_104;
  }

  v61 = v63;
  v62 = 0x800000000;
  if ((v5 & 2) != 0)
  {
    v18 = *(v4 - 6);
  }

  else
  {
    v18 = (v5 >> 6) & 0xF;
  }

  if (v18 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v18, 8);
    v5 = *v6;
  }

  if ((v5 & 2) != 0)
  {
    v19 = *(v4 - 4);
    v20 = *(v4 - 6);
    if (!*(v4 - 6))
    {
      goto LABEL_100;
    }

    goto LABEL_41;
  }

  v19 = &v6[-((v5 >> 2) & 0xF)];
  v20 = (v5 >> 6) & 0xF;
  if (v20)
  {
LABEL_41:
    v21 = &v19[v20];
    v22 = v66;
    do
    {
      Impl = *v19;
      if (*v19 && *Impl == 4)
      {
        v25 = (Impl - 16);
        v24 = *(Impl - 2);
        if ((v24 & 2) != 0)
        {
          if (*(Impl - 6))
          {
            v26 = *(Impl - 4);
LABEL_49:
            v27 = *v26;
            if (*v26)
            {
              if (!*v27)
              {
                v28 = *(v27 + 8);
                if (*v28 >= 0x10uLL)
                {
                  v30 = v28[3];
                  v29 = v28[4];
                  if (v30 == 0x6365762E6D766C6CLL && v29 == 0x2E72657A69726F74)
                  {
                    v64 = v22;
                    v65 = 0x800000000;
                    if ((*v25 & 2) != 0)
                    {
                      v32 = *(Impl - 6);
                    }

                    else
                    {
                      v32 = (*v25 >> 6) & 0xFLL;
                    }

                    if (v32 >= 9)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v22, v32, 8);
                    }

                    v56 = v22;
                    v33 = *(Impl + 1);
                    v34 = v33 & 0xFFFFFFFFFFFFFFF8;
                    if ((v33 & 4) != 0)
                    {
                      v34 = *v34;
                    }

                    v35 = *(v27 + 8);
                    v38 = *v35;
                    v37 = v35 + 3;
                    v36 = v38;
                    if (v38 == 22 && (*v37 == 0x6365762E6D766C6CLL ? (v39 = v37[1] == 0x2E72657A69726F74) : (v39 = 0), v39 ? (v40 = *(v37 + 14) == 0x6C6C6F726E752E72) : (v40 = 0), v40))
                    {
                      v44 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((*v34 + 312), "llvm.loop.interleave.count", 0x1AuLL);
                      if (v46)
                      {
                        *(v44 + 16) = v44;
                      }
                    }

                    else
                    {
                      v41 = 16;
                      if (v36 < 0x10)
                      {
                        v41 = v36;
                      }

                      v57[0] = "llvm.loop.vectorize.";
                      v57[2] = (v37 + v41);
                      v57[3] = (v36 - v41);
                      v58 = 1283;
                      llvm::Twine::str(v57, __p);
                      if (v60 >= 0)
                      {
                        v42 = __p;
                      }

                      else
                      {
                        v42 = __p[0];
                      }

                      if (v60 >= 0)
                      {
                        v43 = v60;
                      }

                      else
                      {
                        v43 = __p[1];
                      }

                      v44 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((*v34 + 312), v42, v43);
                      if (v45)
                      {
                        *(v44 + 16) = v44;
                      }

                      if (v60 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v64, v44 + 8);
                    if ((*v25 & 2) != 0)
                    {
                      v47 = *(Impl - 6);
                    }

                    else
                    {
                      v47 = (*v25 >> 6) & 0xFLL;
                    }

                    if (v47 != 1)
                    {
                      v48 = 1;
                      do
                      {
                        if ((*v25 & 2) != 0)
                        {
                          v49 = *(Impl - 4);
                        }

                        else
                        {
                          v49 = &v25[-((*v25 >> 2) & 0xFLL)];
                        }

                        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v64, v49[v48++]);
                      }

                      while (v47 != v48);
                    }

                    v50 = *(Impl + 1);
                    v51 = (v50 & 0xFFFFFFFFFFFFFFF8);
                    if ((v50 & 4) != 0)
                    {
                      v51 = *v51;
                    }

                    Impl = llvm::MDTuple::getImpl(v51, v64, v65, 0, 1);
                    v22 = v56;
                    if (v64 != v56)
                    {
                      free(v64);
                    }
                  }
                }
              }
            }
          }
        }

        else if ((v24 & 0x3C0) != 0)
        {
          v26 = &v25[-((v24 >> 2) & 0xF)];
          goto LABEL_49;
        }
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v61, Impl);
      ++v19;
    }

    while (v19 != v21);
  }

LABEL_100:
  v52 = *(v4 + 1);
  v53 = (v52 & 0xFFFFFFFFFFFFFFF8);
  if ((v52 & 4) != 0)
  {
    v53 = *v53;
  }

  v2 = llvm::MDTuple::getImpl(v53, v61, v62, 0, 1);
  if (v61 != v63)
  {
    free(v61);
  }

LABEL_104:
  v54 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::UpgradeDataLayoutString(llvm::formatv_object_base *a1@<X0>, unint64_t a2@<X1>, llvm::formatv_object_base *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = a1;
  v34 = a2;
  v39 = 261;
  v35 = a3;
  v36 = a4;
  llvm::Triple::Triple(&v28, &v35);
  v6 = v30;
  if ((v30 - 25) <= 1)
  {
    if (llvm::StringRef::find(&v33, "-G", 2uLL, 0) == -1)
    {
      if (!v34)
      {
        std::string::basic_string[abi:nn200100]<0>(a5, "G1");
        goto LABEL_46;
      }

      if (*v33 != 71)
      {
        v39 = 773;
        v35 = v33;
        v36 = v34;
        v37 = "-G1";
LABEL_12:
        llvm::Twine::str(&v35, a5);
        goto LABEL_46;
      }
    }

    v6 = v30;
  }

  if (v6 == 28)
  {
    v7 = llvm::StringRef::find(&v33, "-n64-", 5uLL, 0);
    if (v7 != -1)
    {
      if (v34 >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v34;
      }

      v27 = 773;
      v24 = v33;
      v25 = v8;
      v26 = "-n32:64-";
      v9 = v7 + 5;
      if (v34 < v7 + 5)
      {
        v9 = v34;
      }

      v35 = &v24;
      v37 = v33 + v9;
      v38 = v34 - v9;
      v39 = 1282;
      goto LABEL_12;
    }

    llvm::StringRef::str(&v33, a5);
  }

  else
  {
    llvm::StringRef::str(&v33, a5);
    if ((v30 - 37) <= 1)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, "-p270:32:32-p271:32:32-p272:64:64");
      if (v23 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if (v23 >= 0)
      {
        v11 = v23;
      }

      else
      {
        v11 = __p[1];
      }

      if (llvm::StringRef::find(&v33, v10, v11, 0) == -1)
      {
        v35 = &v37;
        v36 = 0x400000000;
        operator new();
      }

      if (v31 == 15 && (v32 == 19 || !v32) && getArchPointerBitWidth(v30) != 64)
      {
        v12 = *(a5 + 23);
        v13 = *a5;
        if (v12 >= 0)
        {
          v13 = a5;
        }

        if (v12 < 0)
        {
          v12 = *(a5 + 8);
        }

        v20 = v13;
        v21 = v12;
        v14 = llvm::StringRef::find(&v20, "-f80:32-", 8uLL, 0);
        if (v14 != -1)
        {
          if (v21 >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = v21;
          }

          v27 = 773;
          v24 = v20;
          v25 = v15;
          v26 = "-f80:128-";
          v16 = v14 + 8;
          if (v21 < v14 + 8)
          {
            v16 = v21;
          }

          v35 = &v24;
          v37 = v20 + v16;
          v38 = v21 - v16;
          v39 = 1282;
          llvm::Twine::str(&v35, &v18);
          if (*(a5 + 23) < 0)
          {
            operator delete(*a5);
          }

          *a5 = v18;
          *(a5 + 16) = v19;
        }
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_46:
  if (v29 < 0)
  {
    operator delete(v28);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::UpgradeAttributes(llvm *this, llvm::AttrBuilder *a2)
{
  Attribute = llvm::AttrBuilder::getAttribute(this, "no-frame-pointer-elim", 21);
  if (!Attribute)
  {
    if (!llvm::AttrBuilder::getAttribute(this, "no-frame-pointer-elim-non-leaf", 30))
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v4 = "none";
  if (*(Attribute + 16) == 4)
  {
    v5 = bswap32(*(Attribute + *(Attribute + 12) + 25));
    v6 = v5 >= 0x74727565;
    v7 = v5 > 0x74727565;
    v8 = !v6;
    if (v7 == v8)
    {
      v4 = "all";
    }
  }

  v9 = strlen(v4);
  v10 = llvm::AttrBuilder::removeAttribute(this, "no-frame-pointer-elim", 21);
  if (llvm::AttrBuilder::getAttribute(v10, "no-frame-pointer-elim-non-leaf", 30))
  {
    if (v9 == 3 && *v4 == 27745 && v4[2] == 108)
    {
      v9 = 3;
LABEL_18:
      llvm::AttrBuilder::removeAttribute(this, "no-frame-pointer-elim-non-leaf", 30);
LABEL_19:
      v12 = llvm::Attribute::get(*this, "frame-pointer", 0xDuLL, v4, v9);
      addAttributeImpl<llvm::StringRef>(this + 2, "frame-pointer", 13, v12);
      goto LABEL_20;
    }

LABEL_17:
    v4 = "non-leaf";
    v9 = 8;
    goto LABEL_18;
  }

  if (v9)
  {
    goto LABEL_19;
  }

LABEL_20:
  result = llvm::AttrBuilder::getAttribute(this, "null-pointer-is-valid", 21);
  if (result)
  {
    if (*(result + 4) == 4)
    {
      v14 = *(result + *(result + 3) + 25);
      result = llvm::AttrBuilder::removeAttribute(this, "null-pointer-is-valid", 21);
      if (v14 == 1702195828)
      {
        v15 = llvm::Attribute::get(*this, 39, 0);

        return addAttributeImpl<llvm::Attribute::AttrKind>(this + 2, 39, v15);
      }
    }

    else
    {

      return llvm::AttrBuilder::removeAttribute(this, "null-pointer-is-valid", 21);
    }
  }

  return result;
}

uint64_t llvm::UpgradeOperandBundles(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (1)
    {
      v4 = *(v2 + 23);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 8);
      }

      if (v4 == 22)
      {
        v6 = v5 >= 0 ? v2 : *v2;
        v7 = *v6;
        v8 = v6[1];
        v9 = *(v6 + 14);
        v10 = v7 == 0x72612E676E616C63 && v8 == 0x6863617474612E63;
        v11 = v10 && v9 == 0x6C6C616364656863;
        if (v11 && *(v2 + 32) == *(v2 + 24))
        {
          break;
        }
      }

      v2 += 48;
      if (v2 == v3)
      {
        v2 = a1[1];
        goto LABEL_19;
      }
    }

    if (v2 != v3)
    {
      v13 = v2 + 48;
      if ((v2 + 48) != v3)
      {
        do
        {
          v14 = *(v13 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v13 + 8);
          }

          if (v14 != 22 || (v15 >= 0 ? (v16 = v13) : (v16 = *v13), (v17 = *v16, v18 = v16[1], v19 = *(v16 + 14), v17 == 0x72612E676E616C63) ? (v20 = v18 == 0x6863617474612E63) : (v20 = 0), v20 ? (v21 = v19 == 0x6C6C616364656863) : (v21 = 0), !v21 || *(v13 + 32) != *(v13 + 24)))
          {
            if (*(v2 + 23) < 0)
            {
              operator delete(*v2);
            }

            v22 = *v13;
            *(v2 + 16) = *(v13 + 16);
            *v2 = v22;
            *(v13 + 23) = 0;
            *v13 = 0;
            std::vector<llvm::jitlink::Block *>::__move_assign(v2 + 24, (v13 + 24));
            v2 += 48;
          }

          v13 += 48;
        }

        while (v13 != v3);
        v3 = a1[1];
      }
    }
  }

LABEL_19:

  return std::vector<llvm::OperandBundleDefT<llvm::Value *>>::erase(a1, v2, v3);
}

void rename(uint64_t ***this)
{
  if ((*(this + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(this);
    v5 = *ValueName;
    v3 = ValueName + 2;
    v2 = v5;
  }

  else
  {
    v2 = 0;
    v3 = &str_3_24;
  }

  v7 = 773;
  v6[0] = v3;
  v6[1] = v2;
  v6[2] = ".old";
  llvm::Value::setName(this, v6);
}

uint64_t llvm::StringSwitch<BOOL,BOOL>::Cases(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v11 = llvm::StringSwitch<BOOL,BOOL>::Case(a1, a2, a3);
  v12 = llvm::StringSwitch<BOOL,BOOL>::Case(v11, a4, a5);

  return llvm::StringSwitch<BOOL,BOOL>::Case(v12, a6, a7);
}

uint64_t llvm::StringSwitch<BOOL,BOOL>::StartsWith(uint64_t a1, const void *a2, size_t a3)
{
  if ((*(a1 + 17) & 1) == 0 && *(a1 + 8) >= a3 && (!a3 || !memcmp(*a1, a2, a3)))
  {
    *(a1 + 16) = 257;
  }

  return a1;
}

uint64_t UpgradeX86IntrinsicFunction(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Function **a4)
{
  v4 = a3 - 4;
  if (a3 < 4 || *a2 != 775305336)
  {
    return 0;
  }

  if (ShouldUpgradeX86Intrinsic((a2 + 4), a3 - 4))
  {
    *a4 = 0;
    return 1;
  }

  if (v4 == 6)
  {
    v10 = *(a2 + 4) == 1937007730 && *(a2 + 8) == 28771;
    if (!v10 || *(*(a1 + 24) + 12) == 1)
    {
      return 0;
    }

    if ((*(a1 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(a1);
      v18 = *ValueName;
      v12 = ValueName + 2;
      v11 = v18;
    }

    else
    {
      v11 = 0;
      v12 = &str_3_24;
    }

    v47 = 773;
    v46[0] = v12;
    v46[1] = v11;
    v46[2] = ".old";
    llvm::Value::setName(a1, v46);
    v19 = *(a1 + 40);
    v20 = 11268;
    goto LABEL_166;
  }

  if (v4 < 0xB || (*(a2 + 4) == 0x74702E3134657373 ? (v13 = *(a2 + 7) == 0x74736574702E3134) : (v13 = 0), !v13))
  {
    if (a3 > 25)
    {
      if (a3 > 30)
      {
        if (a3 == 31)
        {
LABEL_50:
          if (!memcmp((a2 + 4), "avx512bf16.cvtneps2bf16.256", v4))
          {
            v21 = a1;
            v22 = 10962;
            goto LABEL_151;
          }

          if (!memcmp((a2 + 4), "avx512bf16.cvtneps2bf16.512", v4))
          {
            v21 = a1;
            v22 = 10963;
LABEL_151:

            return UpgradeX86BF16Intrinsic(v21, v22, a4);
          }

          goto LABEL_91;
        }

        goto LABEL_53;
      }

      if (a3 != 26)
      {
        if (a3 != 27)
        {
LABEL_90:
          if (v4 >= 0xC)
          {
            goto LABEL_91;
          }

          return 0;
        }

        goto LABEL_57;
      }

LABEL_83:
      if (!memcmp((a2 + 4), "avx512.mask.cmp.pd.128", v4))
      {
        v29 = a1;
        v30 = 10464;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.pd.256", v4))
      {
        v29 = a1;
        v30 = 10465;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.pd.512", v4))
      {
        v29 = a1;
        v30 = 10466;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.ps.128", v4))
      {
        v29 = a1;
        v30 = 10467;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.ps.256", v4))
      {
        v29 = a1;
        v30 = 10468;
      }

      else
      {
        if (memcmp((a2 + 4), "avx512.mask.cmp.ps.512", v4))
        {
          goto LABEL_91;
        }

        v29 = a1;
        v30 = 10469;
      }

      return UpgradeX86MaskedFPCompare(v29, v30, a4);
    }

    if (a3 <= 16)
    {
      if (a3 == 14)
      {
        if (!memcmp((a2 + 4), "sse41.dppd", v4))
        {
          v14 = a1;
          v15 = 11393;
        }

        else
        {
          if (memcmp((a2 + 4), "sse41.dpps", v4))
          {
            return 0;
          }

          v14 = a1;
          v15 = 11394;
        }

        goto LABEL_142;
      }

      if (a3 != 16)
      {
        goto LABEL_90;
      }

      goto LABEL_28;
    }

    if (a3 != 17)
    {
      if (a3 != 18)
      {
        goto LABEL_90;
      }

LABEL_37:
      if (memcmp((a2 + 4), "sse41.insertps", v4))
      {
        goto LABEL_91;
      }

      v14 = a1;
      v15 = 11395;
      goto LABEL_142;
    }

LABEL_42:
    if (!memcmp((a2 + 4), "sse41.mpsadbw", v4))
    {
      v14 = a1;
      v15 = 11396;
    }

    else
    {
      if (memcmp((a2 + 4), "avx.dp.ps.256", v4))
      {
        goto LABEL_91;
      }

      v14 = a1;
      v15 = 10247;
    }

    goto LABEL_142;
  }

  if (a3 <= 26)
  {
    v16 = a3 - 15;
    if (a3 > 17)
    {
      if (a3 != 18)
      {
        if (a3 != 26)
        {
          goto LABEL_90;
        }

        goto LABEL_83;
      }

      if (memcmp((a2 + 15), "nzc", v16))
      {
        goto LABEL_37;
      }

      v43 = a1;
      v44 = 11401;
    }

    else
    {
      if (a3 != 16)
      {
        if (a3 != 17)
        {
          goto LABEL_90;
        }

        goto LABEL_42;
      }

      if (!memcmp((a2 + 15), "c", v16))
      {
        v43 = a1;
        v44 = 11400;
      }

      else
      {
        if (memcmp((a2 + 15), "z", 1uLL))
        {
LABEL_28:
          if (memcmp((a2 + 4), "avx2.mpsadbw", v4))
          {
            goto LABEL_91;
          }

          v14 = a1;
          v15 = 10316;
LABEL_142:

          return UpgradeX86IntrinsicsWith8BitMask(v14, v15, a4);
        }

        v43 = a1;
        v44 = 11402;
      }
    }

    return UpgradePTESTIntrinsic(v43, v44, a4);
  }

  if (a3 > 31)
  {
LABEL_53:
    if (a3 == 32)
    {
      if (!memcmp((a2 + 4), "avx512bf16.cvtne2ps2bf16.128", v4))
      {
        v21 = a1;
        v22 = 10959;
        goto LABEL_151;
      }

      if (!memcmp((a2 + 4), "avx512bf16.cvtne2ps2bf16.256", v4))
      {
        v21 = a1;
        v22 = 10960;
        goto LABEL_151;
      }

      if (!memcmp((a2 + 4), "avx512bf16.cvtne2ps2bf16.512", v4))
      {
        v21 = a1;
        v22 = 10961;
        goto LABEL_151;
      }

      goto LABEL_91;
    }

    if (a3 == 36)
    {
      if (!memcmp((a2 + 4), "avx512bf16.mask.cvtneps2bf16.128", v4))
      {
        v21 = a1;
        v22 = 10967;
        goto LABEL_151;
      }

LABEL_91:
      v31 = *(a2 + 4) == 0x637266762E706F78 && *(a2 + 12) == 1936928378;
      if (v31 && *(a1 + 96) == 2)
      {
        rename(a1);
        v19 = *(a1 + 40);
        v20 = 11536;
      }

      else
      {
        v32 = *(a2 + 4) == 0x637266762E706F78 && *(a2 + 12) == 1685270138;
        if (v32 && *(a1 + 96) == 2)
        {
          rename(a1);
          v19 = *(a1 + 40);
          v20 = 11535;
        }

        else
        {
          if (*(a2 + 4) != 0x726570762E706F78 || *(a2 + 12) != 845965677)
          {
            goto LABEL_113;
          }

          v35 = *(*(*(a1 + 24) + 16) + 24);
          v36 = *(v35 + 8);
          if ((v36 & 0xFE) == 0x12)
          {
            v36 = *(**(v35 + 16) + 8);
          }

          v37 = v36 < 4u || v36 == 5;
          v38 = v36 & 0xFD;
          if (v37 || v38 == 4)
          {
            rename(a1);
            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v35);
            if (v40)
            {
            }

            if ((*(v35 + 8) & 0xFE) == 0x12)
            {
              v35 = **(v35 + 16);
            }

            v42 = llvm::Type::getPrimitiveSizeInBits(v35);
            if (v42 == 64 && PrimitiveSizeInBits == 128)
            {
              v20 = 11537;
            }

            else if (v42 == 32 && PrimitiveSizeInBits == 128)
            {
              v20 = 11539;
            }

            else if (PrimitiveSizeInBits == 256 && v42 == 64)
            {
              v20 = 11538;
            }

            else
            {
              v20 = 11540;
            }

            v19 = *(a1 + 40);
          }

          else
          {
LABEL_113:
            if (v4 != 13)
            {
              return 0;
            }

            if (*(a2 + 4) != 0x6F6365722E686573 || *(a2 + 9) != 0x70667265766F6365)
            {
              return 0;
            }

            v19 = *(a1 + 40);
            v20 = 65;
          }
        }
      }

LABEL_166:
      *a4 = llvm::Intrinsic::getDeclaration(v19, v20, 0, 0);
      return 1;
    }

    goto LABEL_90;
  }

  if (a3 != 27)
  {
    if (a3 == 31)
    {
      goto LABEL_50;
    }

    goto LABEL_90;
  }

LABEL_57:
  if (!memcmp((a2 + 4), "avx512bf16.dpbf16ps.128", v4))
  {
    v27 = a1;
    v28 = 10964;
  }

  else if (*(a2 + 4) == 0x6662323135787661 && *(a2 + 12) == 0x31666270642E3631 && *(a2 + 19) == 0x3635322E73703631)
  {
    v27 = a1;
    v28 = 10965;
  }

  else
  {
    if (*(a2 + 4) != 0x6662323135787661 || *(a2 + 12) != 0x31666270642E3631 || *(a2 + 19) != 0x3231352E73703631)
    {
      goto LABEL_91;
    }

    v27 = a1;
    v28 = 10966;
  }

  return UpgradeX86BF16DPIntrinsic(v27, v28, a4);
}

uint64_t llvm::StringSwitch<BOOL,BOOL>::Case(uint64_t a1, const void *a2, uint64_t a3)
{
  if ((*(a1 + 17) & 1) == 0)
  {
    v5 = *(a1 + 8);
    if (v5 == a3 && (!v5 || !memcmp(*a1, a2, v5)))
    {
      *(a1 + 16) = 257;
    }
  }

  return a1;
}

BOOL ShouldUpgradeX86Intrinsic(uint64_t *a1, unint64_t a2)
{
  if (a2 == 12)
  {
    if (*a1 == 0x7972726163646461 && *(a1 + 2) == 842233134)
    {
      return 1;
    }

    if (*a1 == 0x7972726163646461 && *(a1 + 2) == 875984174)
    {
      return 1;
    }
  }

  else if (a2 == 13)
  {
    if (*a1 == 0x7972726163646461 && *(a1 + 5) == 0x3233752E78797272)
    {
      return 1;
    }

    if (*a1 == 0x7972726163646461 && *(a1 + 5) == 0x3436752E78797272)
    {
      return 1;
    }

    if (*a1 == 0x6F72726F62627573 && *(a1 + 5) == 0x3233752E776F7272)
    {
      return 1;
    }

    if (*a1 == 0x6F72726F62627573 && *(a1 + 5) == 0x3436752E776F7272)
    {
      return 1;
    }
  }

  else if (a2 < 0xB)
  {
    if (a2 == 10)
    {
      v9 = *a1 == 0x6261702E32787661 && *(a1 + 4) == 11891;
      result = 1;
      if (v9)
      {
        return result;
      }

      v11 = 0;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v21 = 1;
LABEL_102:
      if (*a1 == 0x747271732E787661 && *(a1 + 4) == 28718)
      {
        return 1;
      }

      if ((v18 & 1) == 0 && *a1 == 0x7271732E32657373 && *(a1 + 3) == 0x702E747271732E32)
      {
        return 1;
      }

      if (*a1 == 0x747271732E657373 && *(a1 + 4) == 28718)
      {
        return 1;
      }

      v36 = 0;
      if (v12)
      {
        goto LABEL_123;
      }

      goto LABEL_116;
    }

    v11 = 0;
    v21 = 1;
    v20 = 1;
    v19 = 1;
    v31 = 1;
    v17 = 1;
    v16 = 1;
    v15 = 1;
    v14 = 1;
    v13 = 1;
    v12 = 1;
    goto LABEL_77;
  }

  if (*a1 == 0x6461702E32657373 && *(a1 + 3) == 0x2E73646461702E32)
  {
    return 1;
  }

  if (*a1 == 0x7573702E32657373 && *(a1 + 3) == 0x2E73627573702E32)
  {
    return 1;
  }

  v17 = a2 < 0xC;
  if (a2 >= 0xC)
  {
    if (*a1 == 0x6461702E32657373 && *(a1 + 2) == 779318628)
    {
      return 1;
    }

    if (*a1 == 0x7573702E32657373 && *(a1 + 2) == 779318626)
    {
      return 1;
    }
  }

  if (*a1 == 0x6461702E32787661 && *(a1 + 3) == 0x2E73646461702E32)
  {
    return 1;
  }

  if (*a1 == 0x7573702E32787661 && *(a1 + 3) == 0x2E73627573702E32)
  {
    return 1;
  }

  if (a2 < 0xC)
  {
    goto LABEL_64;
  }

  if (*a1 == 0x6461702E32787661 && *(a1 + 2) == 779318628)
  {
    return 1;
  }

  if (*a1 == 0x7573702E32787661 && *(a1 + 2) == 779318626)
  {
    return 1;
  }

  if (a2 == 12)
  {
LABEL_64:
    v11 = 0;
    v16 = 1;
    v20 = 1;
    v28 = 1;
    goto LABEL_65;
  }

  if (*a1 == 0x702E323135787661 && *(a1 + 5) == 0x2E73646461702E32)
  {
    return 1;
  }

  if (*a1 == 0x702E323135787661 && *(a1 + 5) == 0x2E73627573702E32)
  {
    return 1;
  }

  v28 = a2 < 0x12;
  if (a2 >= 0x12)
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x646461702E6B7361 && *(a1 + 8) == 11891)
    {
      return 1;
    }

    v202 = *a1 == 0x6D2E323135787661 && a1[1] == 0x627573702E6B7361;
    if (v202 && *(a1 + 8) == 11891)
    {
      return 1;
    }

    if (a2 != 18)
    {
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x646461702E6B7361 && *(a1 + 11) == 0x2E7375646461702ELL)
      {
        return 1;
      }

      v217 = *a1 == 0x6D2E323135787661 && a1[1] == 0x627573702E6B7361;
      if (v217 && *(a1 + 11) == 0x2E7375627573702ELL)
      {
        return 1;
      }

      v20 = 0;
      v11 = 0;
      goto LABEL_769;
    }
  }

  else if (a2 == 16)
  {
    if (*a1 == 0x61702E3365737373 && a1[1] == 0x3832312E622E7362)
    {
      return 1;
    }

    if (*a1 == 0x61702E3365737373 && a1[1] == 0x3832312E772E7362)
    {
      return 1;
    }

    v61 = *a1 == 0x61702E3365737373 && a1[1] == 0x3832312E642E7362;
    v20 = 1;
    v11 = 1;
    result = 1;
    if (v61)
    {
      return result;
    }

    goto LABEL_769;
  }

  v11 = 0;
  v20 = 1;
LABEL_769:
  if (*a1 == 0x6D66762E34616D66 && *(a1 + 5) == 0x732E6464616D6676)
  {
    return 1;
  }

  v16 = 0;
LABEL_65:
  if (*a1 == 0x616D66762E616D66 && *(a1 + 3) == 0x2E6464616D66762ELL)
  {
    return 1;
  }

  if (*a1 == 0x736D66762E616D66 && *(a1 + 3) == 0x2E6275736D66762ELL)
  {
    return 1;
  }

  v15 = a2 < 0xE;
  if (a2 >= 0xE)
  {
    if (*a1 == 0x736D66762E616D66 && *(a1 + 6) == 0x2E6464616275736DLL)
    {
      return 1;
    }

LABEL_264:
    if (*a1 == 0x6D6E66762E616D66 && *(a1 + 2) == 778331233)
    {
      return 1;
    }

    if (*a1 == 0x6D6E66762E616D66 && *(a1 + 2) == 778204531)
    {
      return 1;
    }

    goto LABEL_272;
  }

  if (a2 >= 0xC)
  {
    goto LABEL_264;
  }

LABEL_272:
  if ((v20 & 1) == 0)
  {
    v78 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616D66762E6B7361;
    if (v78 && *(a1 + 11) == 0x2E6464616D66762ELL)
    {
      return 1;
    }
  }

  v21 = a2 < 0x14;
  if (a2 <= 0x13)
  {
    goto LABEL_281;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6D6E66762E6B7361 && *(a1 + 4) == 778331233)
  {
    return 1;
  }

  v92 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D6E66762E6B7361;
  if (v92 && *(a1 + 4) == 778204531)
  {
    return 1;
  }

  v94 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
  if (v94 && *(a1 + 4) == 778331233)
  {
    return 1;
  }

  v96 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E7A6B7361;
  if (v96 && *(a1 + 4) == 778331233)
  {
    return 1;
  }

  v98 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
  if (v98 && *(a1 + 4) == 778204531)
  {
    return 1;
  }

  if (a2 == 20)
  {
LABEL_281:
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v19 = 1;
    if (v28)
    {
      goto LABEL_297;
    }
  }

  else
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6E66762E336B7361 && *(a1 + 13) == 0x2E6275736D6E6676)
    {
      return 1;
    }

    v12 = a2 < 0x16;
    if (a2 < 0x16)
    {
      goto LABEL_369;
    }

    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x616D66762E6B7361 && *(a1 + 14) == 0x2E6275736464616DLL)
    {
      return 1;
    }

    if (a2 == 22)
    {
LABEL_369:
      v14 = 1;
    }

    else
    {
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E7A6B7361 && *(a1 + 15) == 0x2E6275736464616DLL)
      {
        return 1;
      }

      v229 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
      if (v229 && *(a1 + 15) == 0x2E6275736464616DLL)
      {
        return 1;
      }

      v231 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
      if (v231 && *(a1 + 15) == 0x2E6464616275736DLL)
      {
        return 1;
      }

      v14 = 0;
    }

    v13 = 0;
    if (v28)
    {
      v19 = 1;
      if (v16)
      {
        goto LABEL_302;
      }

      goto LABEL_298;
    }
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x667568732E6B7361 && *(a1 + 8) == 26926)
  {
    return 1;
  }

  v82 = *a1 == 0x6D2E323135787661 && a1[1] == 0x667568732E6B7361;
  if (v82 && *(a1 + 8) == 26158)
  {
    return 1;
  }

  v19 = 0;
LABEL_297:
  if (v16)
  {
    goto LABEL_302;
  }

LABEL_298:
  if (*a1 == 0x6B2E323135787661 && *(a1 + 5) == 0x6B63706E756B2E32)
  {
    return 1;
  }

LABEL_302:
  if (*a1 == 0x6261702E32787661 && *(a1 + 4) == 11891)
  {
    return 1;
  }

  if (a2 < 0x11)
  {
    v31 = 0;
LABEL_77:
    LOBYTE(result) = 1;
    goto LABEL_78;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x736261702E6B7361 && *(a1 + 16) == 46)
  {
    return 1;
  }

  v207 = *a1 == 0x622E323135787661 && a1[1] == 0x7473616364616F72;
  if (v207 && *(a1 + 16) == 109)
  {
    return 1;
  }

  v31 = 0;
  v17 = 0;
  v15 = 0;
  LOBYTE(result) = 0;
LABEL_78:
  if (a2 == 12)
  {
    if (*a1 == 0x7271732E32657373 && *(a1 + 2) == 1685270132)
    {
      return 1;
    }
  }

  else if (a2 == 11 && *a1 == 0x747271732E657373 && *(a1 + 3) == 0x73732E747271732ELL)
  {
    return 1;
  }

  if ((v19 & 1) == 0)
  {
    v34 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747271732E6B7361;
    if (v34 && *(a1 + 8) == 28718)
    {
      return 1;
    }
  }

  if ((v31 & 1) == 0)
  {
    v18 = 0;
    goto LABEL_102;
  }

  v36 = 1;
  v18 = 1;
  if (v12)
  {
    goto LABEL_123;
  }

LABEL_116:
  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6F7262702E6B7361 && *(a1 + 14) == 0x7473616364616F72)
  {
    return 1;
  }

LABEL_123:
  if (!v17)
  {
    if (*a1 == 0x6D63702E32657373 && *(a1 + 2) == 779183472)
    {
      return 1;
    }

    if (*a1 == 0x6D63702E32657373 && *(a1 + 2) == 779380592)
    {
      return 1;
    }

    if (*a1 == 0x6D63702E32787661 && *(a1 + 2) == 779183472)
    {
      return 1;
    }

    if (*a1 == 0x6D63702E32787661 && *(a1 + 2) == 779380592)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v42 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D63702E6B7361;
    if (v42 && *(a1 + 11) == 0x2E7165706D63702ELL)
    {
      return 1;
    }

    v44 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D63702E6B7361;
    if (v44 && *(a1 + 11) == 0x2E7467706D63702ELL)
    {
      return 1;
    }
  }

  if (a2 >= 0xF && *a1 == 0x726570762E787661 && *(a1 + 7) == 0x2E38323166326D72)
  {
    return 1;
  }

  if (a2 <= 12)
  {
    switch(a2)
    {
      case 0xAuLL:
        if (*a1 == 0x2E6464612E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        if (*a1 == 0x2E6275732E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        if (*a1 == 0x2E6C756D2E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        if (*a1 == 0x2E7669642E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        goto LABEL_445;
      case 0xBuLL:
        if (*a1 == 0x6464612E32657373 && *(a1 + 3) == 0x64732E6464612E32)
        {
          return 1;
        }

        if (*a1 == 0x6275732E32657373 && *(a1 + 3) == 0x64732E6275732E32)
        {
          return 1;
        }

        if (*a1 == 0x6C756D2E32657373 && *(a1 + 3) == 0x64732E6C756D2E32)
        {
          return 1;
        }

        v86 = *(a1 + 3);
        v87 = *a1 == 0x7669642E32657373;
        v88 = 0x64732E7669642E32;
LABEL_311:
        if (v87 && v86 == v88)
        {
          return 1;
        }

        goto LABEL_445;
      case 0xCuLL:
        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1651734625)
        {
          return 1;
        }

        if (*a1 == 0x616D702E32657373 && *(a1 + 2) == 1999532920)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685289057)
        {
          return 1;
        }

        if (*a1 == 0x616D702E32657373 && *(a1 + 2) == 1647211896)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2004187233)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685420129)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1651732073)
        {
          return 1;
        }

        if (*a1 == 0x696D702E32657373 && *(a1 + 2) == 1999532910)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685286505)
        {
          return 1;
        }

        if (*a1 == 0x696D702E32657373 && *(a1 + 2) == 1647211886)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2004184681)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685417577)
        {
          return 1;
        }

        if (*a1 == 0x6B2E323135787661 && *(a1 + 2) == 1999532655)
        {
          return 1;
        }

        goto LABEL_445;
    }
  }

  else
  {
    if (a2 <= 14)
    {
      if (a2 == 13)
      {
        if (*a1 == 0x6B2E323135787661 && *(a1 + 5) == 0x772E646E616B2E32)
        {
          return 1;
        }

        if (*a1 == 0x6B2E323135787661 && *(a1 + 5) == 0x772E746F6E6B2E32)
        {
          return 1;
        }

        v48 = *(a1 + 5);
        v49 = *a1 == 0x6B2E323135787661;
        v50 = 2020290098;
      }

      else
      {
        if (*a1 == 0x6B2E323135787661 && *(a1 + 6) == 0x772E6E646E616B2ELL)
        {
          return 1;
        }

        v48 = *(a1 + 6);
        v49 = *a1 == 0x6B2E323135787661;
        v50 = 1853385518;
      }

      v111 = v50 | 0x772E726F00000000;
      if (v49 && v48 == v111)
      {
        return 1;
      }

      goto LABEL_445;
    }

    if (a2 == 17)
    {
      if (*a1 == 0x6B2E323135787661 && a1[1] == 0x2E6374736574726FLL && *(a1 + 16) == 119)
      {
        return 1;
      }

      v115 = *a1 == 0x6B2E323135787661 && a1[1] == 0x2E7A74736574726FLL;
      if (v115 && *(a1 + 16) == 119)
      {
        return 1;
      }

      goto LABEL_445;
    }

    if (a2 == 15)
    {
      v86 = *(a1 + 7);
      v87 = *a1 == 0x6570762E32787661;
      v88 = 0x38323169326D7265;
      goto LABEL_311;
    }
  }

  if (v21)
  {
    if (a2 < 9)
    {
      v108 = 1;
LABEL_456:
      v124 = 1;
      goto LABEL_474;
    }
  }

  else if (*a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361 && *(a1 + 4) == 778186342)
  {
    return 1;
  }

LABEL_445:
  if (*a1 == 0x616D702E32787661 && *(a1 + 8) == 120)
  {
    return 1;
  }

  if (*a1 == 0x696D702E32787661 && *(a1 + 8) == 110)
  {
    return 1;
  }

  v124 = a2 < 0x10;
  if (a2 >= 0x10)
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x78616D702E6B7361)
    {
      return 1;
    }

    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6E696D702E6B7361)
    {
      return 1;
    }
  }

  else if (a2 < 0xF)
  {
    v108 = 0;
    goto LABEL_456;
  }

  if (*a1 == 0x7262762E32787661 && *(a1 + 7) == 0x7473616364616F72)
  {
    return 1;
  }

  if (*a1 == 0x7262702E32787661 && *(a1 + 7) == 0x7473616364616F72)
  {
    return 1;
  }

  v108 = 0;
LABEL_474:
  if (!v17 && *a1 == 0x726570762E787661 && *(a1 + 2) == 778856813)
  {
    return 1;
  }

  if ((v36 & 1) == 0 && *a1 == 0x6873702E32657373 && *(a1 + 4) == 26229)
  {
    return 1;
  }

  if (!result)
  {
    v131 = *a1 == 0x702E323135787661 && a1[1] == 0x73616364616F7262;
    if (v131 && *(a1 + 16) == 116)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v133 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    if (v133 && *(a1 + 15) == 0x732E747361636461)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v135 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64766F6D2E6B7361;
    if (v135 && *(a1 + 11) == 0x70756464766F6D2ELL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v209 = *a1 == 0x6D2E323135787661 && a1[1] == 0x73766F6D2E6B7361;
    if (v209 && *(a1 + 4) == 1886741608)
    {
      return 1;
    }

    v211 = *a1 == 0x6D2E323135787661 && a1[1] == 0x73766F6D2E6B7361;
    if (v211 && *(a1 + 4) == 1886741612)
    {
      return 1;
    }

    v213 = *a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361;
    if (v213 && *(a1 + 4) == 778317414)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v137 = *a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361;
    if (v137 && *(a1 + 13) == 0x2E772E6C66756873)
    {
      return 1;
    }

    v139 = *a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361;
    if (v139 && *(a1 + 13) == 0x2E772E6866756873)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v141 = *a1 == 0x6D2E323135787661 && a1[1] == 0x667568732E6B7361;
    if (v141 && *(a1 + 8) == 28718)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v143 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v143 && *(a1 + 13) == 0x702E6C696D726570)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v145 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D7265702E6B7361;
    if (v145 && *(a1 + 4) == 778462254)
    {
      return 1;
    }

    v147 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D7265702E6B7361;
    if (v147 && *(a1 + 4) == 778658862)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v219 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706E75702E6B7361;
    if (v219 && *(a1 + 11) == 0x6C6B63706E75702ELL)
    {
      return 1;
    }

    v221 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706E75702E6B7361;
    if (v221 && *(a1 + 11) == 0x686B63706E75702ELL)
    {
      return 1;
    }

    v223 = *a1 == 0x6D2E323135787661 && a1[1] == 0x63706E752E6B7361;
    if (v223 && *(a1 + 11) == 0x2E6C6B63706E752ELL)
    {
      return 1;
    }

    v225 = *a1 == 0x6D2E323135787661 && a1[1] == 0x63706E752E6B7361;
    if (v225 && *(a1 + 11) == 0x2E686B63706E752ELL)
    {
      return 1;
    }
  }

  if (!result)
  {
    v149 = *a1 == 0x6D2E323135787661 && a1[1] == 0x646E61702E6B7361;
    if (v149 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v151 = *a1 == 0x6D2E323135787661 && a1[1] == 0x646E61702E6B7361;
    if (v151 && *(a1 + 8) == 11886)
    {
      return 1;
    }
  }

  if (!v124 && *a1 == 0x6D2E323135787661 && a1[1] == 0x2E726F702E6B7361)
  {
    return 1;
  }

  if (!result)
  {
    v154 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F78702E6B7361;
    if (v154 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (!v124 && *a1 == 0x6D2E323135787661 && a1[1] == 0x2E646E612E6B7361)
  {
    return 1;
  }

  if (!result)
  {
    v157 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6E646E612E6B7361;
    if (v157 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (a2 >= 0xF && *a1 == 0x6D2E323135787661 && *(a1 + 7) == 0x2E726F2E6B73616DLL)
  {
    return 1;
  }

  if (!v124 && *a1 == 0x6D2E323135787661 && a1[1] == 0x2E726F782E6B7361)
  {
    return 1;
  }

  if (!result)
  {
    v161 = *a1 == 0x6D2E323135787661 && a1[1] == 0x646461702E6B7361;
    if (v161 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v163 = *a1 == 0x6D2E323135787661 && a1[1] == 0x627573702E6B7361;
    if (v163 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v165 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v165 && *(a1 + 8) == 11884)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v167 = *a1 == 0x6D2E323135787661 && a1[1] == 0x647476632E6B7361;
    if (v167 && *(a1 + 13) == 0x2E64703271647476)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v169 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
    if (v169 && *(a1 + 14) == 0x2E64703271647574)
    {
      return 1;
    }

    v171 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
    if (v171 && *(a1 + 14) == 0x2E73703271647574)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v173 = *a1 == 0x6D2E323135787661 && a1[1] == 0x717476632E6B7361;
    if (v173 && *(a1 + 13) == 0x2E64703271717476)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v175 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
    if (v175 && *(a1 + 14) == 0x2E64703271717574)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v177 = *a1 == 0x6D2E323135787661 && a1[1] == 0x647476632E6B7361;
    if (v177 && *(a1 + 13) == 0x2E73703271647476)
    {
      return 1;
    }
  }

  switch(a2)
  {
    case 0x10uLL:
      if (*a1 == 0x632E323135787661 && a1[1] == 0x6473326973757476)
      {
        return 1;
      }

      goto LABEL_984;
    case 0x18uLL:
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x717476632E6B7361 && a1[2] == 0x3635322E73703271)
      {
        return 1;
      }

      v235 = *a1 == 0x6D2E323135787661 && a1[1] == 0x717476632E6B7361;
      if (v235 && a1[2] == 0x3231352E73703271)
      {
        return 1;
      }

      v237 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v237 && a1[2] == 0x3635322E71643264)
      {
        return 1;
      }

      v239 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v239 && a1[2] == 0x3635322E73703264)
      {
        return 1;
      }

      v241 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v241 && a1[2] == 0x3832312E64703273)
      {
        return 1;
      }

      v243 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v243 && a1[2] == 0x3635322E64703273)
      {
        return 1;
      }

      break;
    case 0x19uLL:
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x747663762E6B7361 && a1[2] == 0x32312E7370326870 && *(a1 + 24) == 56)
      {
        return 1;
      }

      v182 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747663762E6B7361;
      v183 = v182 && a1[2] == 0x35322E7370326870;
      if (v183 && *(a1 + 24) == 54)
      {
        return 1;
      }

      v185 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
      v186 = v185 && a1[2] == 0x35322E7370327171;
      if (v186 && *(a1 + 24) == 54)
      {
        return 1;
      }

      v188 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
      v189 = v188 && a1[2] == 0x31352E7370327171;
      if (v189 && *(a1 + 24) == 50)
      {
        return 1;
      }

      v191 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747476632E6B7361;
      v192 = v191 && a1[2] == 0x35322E7164326470;
      if (v192 && *(a1 + 24) == 54)
      {
        return 1;
      }

      v194 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747476632E6B7361;
      v195 = v194 && a1[2] == 0x32312E7164327370;
      if (v195 && *(a1 + 24) == 56)
      {
        return 1;
      }

      v197 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747476632E6B7361;
      v198 = v197 && a1[2] == 0x35322E7164327370;
      if (v198 && *(a1 + 24) == 54)
      {
        return 1;
      }

      break;
    default:
      if (v21)
      {
        goto LABEL_937;
      }

      break;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6D7265702E6B7361 && *(a1 + 4) == 779247990)
  {
    return 1;
  }

LABEL_937:
  if (a2 > 17)
  {
    if (a2 != 18)
    {
      if (a2 == 19)
      {
        v250 = *(a1 + 11);
        v251 = *a1 == 0x702E323135787661 && a1[1] == 0x2E71642E756C756DLL;
        v248 = 0x3231352E71642E75;
        goto LABEL_951;
      }

      goto LABEL_957;
    }

    if (*a1 == 0x702E323135787661 && a1[1] == 0x352E71642E6C756DLL && *(a1 + 8) == 12849)
    {
      return 1;
    }
  }

  else
  {
    if (a2 != 12)
    {
      if (a2 == 13)
      {
        v248 = 0x71642E756C756D70;
        if (*a1 == 0x756D702E32657373 && *(a1 + 5) == 0x71642E756C756D70)
        {
          return 1;
        }

        v250 = *(a1 + 5);
        v251 = *a1 == 0x756D702E32787661;
LABEL_951:
        if (v251 && v250 == v248)
        {
          return 1;
        }

        goto LABEL_984;
      }

LABEL_957:
      if (!v21)
      {
        v253 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
        if (v253 && *(a1 + 4) == 779183150)
        {
          return 1;
        }
      }

      goto LABEL_984;
    }

    if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1902406773)
    {
      return 1;
    }

    if (*a1 == 0x756D702E32787661 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }
  }

LABEL_984:
  if ((v13 & 1) == 0)
  {
    v259 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v259 && *(a1 + 13) == 0x2E71642E756C756DLL)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v261 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v261 && *(a1 + 15) == 0x2E77732E72682E6CLL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v263 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v263 && *(a1 + 4) == 779562600)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v265 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v265 && *(a1 + 13) == 0x2E772E75686C756DLL)
    {
      return 1;
    }

    v267 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616D702E6B7361;
    if (v267 && *(a1 + 13) == 0x2E642E776464616DLL)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v269 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616D702E6B7361;
    if (v269 && *(a1 + 15) == 0x2E772E7362756464)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v336 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v336 && *(a1 + 13) == 0x2E627773736B6361)
    {
      return 1;
    }

    v338 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v338 && *(a1 + 13) == 0x2E776473736B6361)
    {
      return 1;
    }

    v340 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v340 && *(a1 + 13) == 0x2E627773756B6361)
    {
      return 1;
    }

    v342 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v342 && *(a1 + 13) == 0x2E776473756B6361)
    {
      return 1;
    }
  }

  if (!result)
  {
    v344 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v344 && *(a1 + 16) == 98)
    {
      return 1;
    }

    v346 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v346 && *(a1 + 16) == 100)
    {
      return 1;
    }

    v348 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v348 && *(a1 + 16) == 113)
    {
      return 1;
    }

    v350 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v350 && *(a1 + 16) == 119)
    {
      return 1;
    }
  }

  if (!v17 && *a1 == 0x632E323135787661 && *(a1 + 2) == 1882091629)
  {
    return 1;
  }

  if (!result)
  {
    v352 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D63752E6B7361;
    if (v352 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v354 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32627476;
    if (v354 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v356 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32777476;
    if (v356 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v358 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32647476;
    if (v358 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v360 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32717476;
    if (v360 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v272 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v272 && *(a1 + 15) == 0x2E7261766C696D72)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v362 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v362 && *(a1 + 8) == 25646)
    {
      return 1;
    }

    v364 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v364 && *(a1 + 8) == 28974)
    {
      return 1;
    }

    v366 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v366 && *(a1 + 8) == 30510)
    {
      return 1;
    }

    v368 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v368 && *(a1 + 8) == 25646)
    {
      return 1;
    }

    v370 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v370 && *(a1 + 8) == 28974)
    {
      return 1;
    }

    v372 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v372 && *(a1 + 8) == 30510)
    {
      return 1;
    }

    v374 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v374 && *(a1 + 8) == 25646)
    {
      return 1;
    }

    v376 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v376 && *(a1 + 8) == 28974)
    {
      return 1;
    }

    v378 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v378 && *(a1 + 8) == 30510)
    {
      return 1;
    }
  }

  if (!result)
  {
    v380 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v380 && *(a1 + 16) == 105)
    {
      return 1;
    }

    v382 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v382 && *(a1 + 16) == 105)
    {
      return 1;
    }

    v384 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v384 && *(a1 + 16) == 105)
    {
      return 1;
    }

    v386 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v386 && *(a1 + 16) == 118)
    {
      return 1;
    }

    v388 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v388 && *(a1 + 16) == 118)
    {
      return 1;
    }

    v390 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v390 && *(a1 + 16) == 118)
    {
      return 1;
    }
  }

  if (!v17)
  {
    if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2020832879)
    {
      return 1;
    }

    if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2021291631)
    {
      return 1;
    }
  }

  if ((v18 & 1) == 0)
  {
    if (*a1 == 0x6F6D702E32787661 && *(a1 + 3) == 0x7873766F6D702E32)
    {
      return 1;
    }

    if (*a1 == 0x6F6D702E32787661 && *(a1 + 3) == 0x787A766F6D702E32)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v392 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
    if (v392 && *(a1 + 8) == 30835)
    {
      return 1;
    }

    v394 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
    if (v394 && *(a1 + 8) == 30842)
    {
      return 1;
    }

    v396 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6E637A6C2E6B7361;
    if (v396 && *(a1 + 8) == 11892)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v278 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726574702E6B7361;
    if (v278 && *(a1 + 13) == 0x2E676F6C6E726574)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v280 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6574702E7A6B7361;
    if (v280 && *(a1 + 14) == 0x2E676F6C6E726574)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v282 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616D70762E6B7361;
    if (v282 && *(a1 + 4) == 842359908)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v284 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D70762E7A6B7361;
    if (v284 && *(a1 + 13) == 0x32356464616D7076)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v286 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v286 && *(a1 + 15) == 0x2E72617632696D72)
    {
      return 1;
    }

    v288 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v288 && *(a1 + 15) == 0x2E72617632746D72)
    {
      return 1;
    }
  }

  if (a2 >= 0x18)
  {
    v290 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6570762E7A6B7361;
    if (v290 && a1[2] == 0x2E72617632746D72)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v292 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v292 && *(a1 + 13) == 0x2E64737562706470)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v294 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v294 && *(a1 + 14) == 0x2E64737562706470)
    {
      return 1;
    }

    v296 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v296 && *(a1 + 14) == 0x2E73647375627064)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v298 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v298 && *(a1 + 15) == 0x2E73647375627064)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v300 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v300 && *(a1 + 13) == 0x2E64737377706470)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v302 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v302 && *(a1 + 14) == 0x2E64737377706470)
    {
      return 1;
    }

    v304 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v304 && *(a1 + 14) == 0x2E73647373777064)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v306 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v306 && *(a1 + 15) == 0x2E73647373777064)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v308 = *a1 == 0x6D2E323135787661 && a1[1] == 0x737062642E6B7361;
    if (v308 && *(a1 + 13) == 0x2E77626461737062)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v310 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v310 && *(a1 + 11) == 0x2E646C687370762ELL)
    {
      return 1;
    }

    v312 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v312 && *(a1 + 11) == 0x2E6472687370762ELL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v314 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v314 && *(a1 + 4) == 779510892)
    {
      return 1;
    }

    v316 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v316 && *(a1 + 4) == 779510898)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v318 = *a1 == 0x6D2E323135787661 && a1[1] == 0x7370762E7A6B7361;
    if (v318 && *(a1 + 13) == 0x2E76646C68737076)
    {
      return 1;
    }

    v320 = *a1 == 0x6D2E323135787661 && a1[1] == 0x7370762E7A6B7361;
    if (v320 && *(a1 + 13) == 0x2E76647268737076)
    {
      return 1;
    }
  }

  if (!v15)
  {
    if (*a1 == 0x762E323135787661 && *(a1 + 6) == 0x2E646C687370762ELL)
    {
      return 1;
    }

    if (*a1 == 0x762E323135787661 && *(a1 + 6) == 0x2E6472687370762ELL)
    {
      return 1;
    }
  }

  if (!result)
  {
    v398 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6464612E6B7361;
    if (v398 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v400 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6275732E6B7361;
    if (v400 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v402 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6C756D2E6B7361;
    if (v402 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v404 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E7669642E6B7361;
    if (v404 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v406 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E78616D2E6B7361;
    if (v406 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v408 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6E696D2E6B7361;
    if (v408 && *(a1 + 16) == 112)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v324 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6370662E6B7361;
    if (v324 && *(a1 + 13) == 0x702E7373616C6370)
    {
      return 1;
    }
  }

  if (a2 < 0x19)
  {
    goto LABEL_1268;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361 && a1[2] == 0x626D717469626675 && *(a1 + 24) == 46)
  {
    return 1;
  }

  if (a2 >= 0x1B)
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361 && a1[2] == 0x2E74666968736974 && *(a1 + 19) == 0x2E62712E74666968)
    {
      return 1;
    }

    v329 = 0;
    if (v13)
    {
      goto LABEL_1276;
    }
  }

  else
  {
LABEL_1268:
    v329 = 1;
    if (v13)
    {
      goto LABEL_1276;
    }
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x666E6F632E6B7361 && *(a1 + 13) == 0x2E7463696C666E6FLL)
  {
    return 1;
  }

LABEL_1276:
  if (a2 <= 14)
  {
    if (a2 == 12)
    {
      if (*a1 == 0x737476632E657373 && *(a1 + 2) == 1936929385)
      {
        return 1;
      }

      goto LABEL_1660;
    }

    if (a2 == 13)
    {
      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6473326973747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6473327373747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6470327164747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x7370327164747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6470327370747663)
      {
        return 1;
      }

      goto LABEL_1660;
    }

    if (a2 != 14)
    {
      goto LABEL_1660;
    }

    v410 = *(a1 + 6);
    v411 = *a1 == 0x737476632E657373;
    v412 = 0x7373323436697374;
    goto LABEL_1619;
  }

  if (a2 > 17)
  {
    if (a2 == 18)
    {
      if (*a1 == 0x2E7476632E787661 && a1[1] == 0x322E64702E327370 && *(a1 + 8) == 13877)
      {
        return 1;
      }
    }

    else if (a2 == 23)
    {
      v413 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v413 && *(a1 + 15) == 0x3635322E64712E76)
      {
        return 1;
      }

      v415 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v415 && *(a1 + 15) == 0x3231352E64712E76)
      {
        return 1;
      }

      v417 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v417 && *(a1 + 15) == 0x3635322E62772E76)
      {
        return 1;
      }

      v419 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v419 && *(a1 + 15) == 0x3231352E62772E76)
      {
        return 1;
      }
    }

    goto LABEL_1660;
  }

  if (a2 == 15)
  {
    v410 = *(a1 + 7);
    v411 = *a1 == 0x7476632E32657373;
    v412 = 0x6473323436697374;
LABEL_1619:
    if (v411 && v410 == v412)
    {
      return 1;
    }

    goto LABEL_1660;
  }

  if (a2 == 17)
  {
    v332 = *a1 == 0x647476632E787661 && a1[1] == 0x35322E64702E3271;
    if (v332 && *(a1 + 16) == 54)
    {
      return 1;
    }

    v334 = *a1 == 0x647476632E787661 && a1[1] == 0x35322E73702E3271;
    if (v334 && *(a1 + 16) == 54)
    {
      return 1;
    }
  }

LABEL_1660:
  if ((v36 & 1) == 0 && *a1 == 0x7032687074766376 && *(a1 + 4) == 11891)
  {
    return 1;
  }

  if (!v124 && *a1 == 0x736E69762E787661 && a1[1] == 0x2E38323166747265)
  {
    return 1;
  }

  if (v11)
  {
    if (*a1 == 0x6E69762E32787661 && a1[1] == 0x3832316974726573)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v436 = *a1 == 0x6D2E323135787661 && a1[1] == 0x65736E692E6B7361;
    if (v436 && *(a1 + 8) == 29810)
    {
      return 1;
    }
  }

  if (!result)
  {
    v438 = *a1 == 0x747865762E787661 && a1[1] == 0x3832316674636172;
    if (v438 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (a2 == 17)
  {
    v440 = *(a1 + 16);
    v441 = *a1 == 0x7865762E32787661 && a1[1] == 0x3231697463617274;
    v442 = 56;
  }

  else
  {
    if (v21)
    {
      goto LABEL_1705;
    }

    v440 = *(a1 + 4);
    v441 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747865762E6B7361;
    v442 = 1952670066;
  }

  if (v441 && v440 == v442)
  {
    return 1;
  }

LABEL_1705:
  if (!v17 && *a1 == 0x6F6D2E6134657373 && *(a1 + 2) == 779382390)
  {
    return 1;
  }

  if ((v36 & 1) == 0 && *a1 == 0x6E766F6D2E787661 && *(a1 + 4) == 11892)
  {
    return 1;
  }

  if (a2 >= 0xF && *a1 == 0x732E323135787661 && *(a1 + 7) == 0x2E746E65726F7473)
  {
    return 1;
  }

  if (a2 == 13)
  {
    v448 = *(a1 + 5);
    v449 = *a1 == 0x766F6D2E32787661;
LABEL_1730:
    v450 = 0x617164746E766F6DLL;
    goto LABEL_1731;
  }

  if (a2 == 15)
  {
    v448 = *(a1 + 7);
    v449 = *a1 == 0x6D2E323135787661;
    goto LABEL_1730;
  }

  if (a2 != 14)
  {
    goto LABEL_1735;
  }

  if (*a1 == 0x6F6D2E3134657373 && *(a1 + 6) == 0x617164746E766F6DLL)
  {
    return 1;
  }

  v448 = *(a1 + 6);
  v449 = *a1 == 0x6F74732E32657373;
  v450 = 0x71642E6C65726F74;
LABEL_1731:
  if (v449 && v448 == v450)
  {
    return 1;
  }

LABEL_1735:
  if ((v18 & 1) == 0 && *a1 == 0x726F74732E657373 && *(a1 + 3) == 0x2E7565726F74732ELL)
  {
    return 1;
  }

  if (!v17 && *a1 == 0x6F74732E32657373 && *(a1 + 2) == 779445618)
  {
    return 1;
  }

  if ((v18 & 1) == 0 && *a1 == 0x726F74732E787661 && *(a1 + 3) == 0x2E7565726F74732ELL)
  {
    return 1;
  }

  if ((v20 & 1) == 0)
  {
    v455 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v455 && *(a1 + 11) == 0x2E7565726F74732ELL)
    {
      return 1;
    }

    v457 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v457 && *(a1 + 11) == 0x702E65726F74732ELL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v477 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v477 && *(a1 + 4) == 778186341)
    {
      return 1;
    }

    v479 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v479 && *(a1 + 4) == 779562597)
    {
      return 1;
    }

    v481 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v481 && *(a1 + 4) == 778317413)
    {
      return 1;
    }

    v483 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v483 && *(a1 + 4) == 779169381)
    {
      return 1;
    }

    if (a2 == 20)
    {
      v485 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
      if (v485 && *(a1 + 4) == 1936928357)
      {
        return 1;
      }
    }
  }

  if ((v19 & 1) == 0)
  {
    v459 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616F6C2E6B7361;
    if (v459 && *(a1 + 8) == 11893)
    {
      return 1;
    }
  }

  if (!result)
  {
    v461 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616F6C2E6B7361;
    if (v461 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (a2 >= 0x18)
  {
    v463 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v463 && a1[2] == 0x2E64616F6C2E646ELL)
    {
      return 1;
    }
  }

  if ((v329 & 1) == 0)
  {
    v465 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    v466 = v465 && a1[2] == 0x6F74732E73736572;
    if (v466 && *(a1 + 19) == 0x2E65726F74732E73)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v487 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v487 && *(a1 + 4) == 1647207534)
    {
      return 1;
    }

    v489 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v489 && *(a1 + 4) == 1999529070)
    {
      return 1;
    }

    v491 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v491 && *(a1 + 4) == 1680761966)
    {
      return 1;
    }

    v493 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v493 && *(a1 + 4) == 1898865774)
    {
      return 1;
    }

    v495 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v495 && *(a1 + 4) == 1882088558)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v497 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v497 && *(a1 + 14) == 0x622E73736572706DLL)
    {
      return 1;
    }

    v499 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v499 && *(a1 + 14) == 0x772E73736572706DLL)
    {
      return 1;
    }

    v501 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v501 && *(a1 + 14) == 0x642E73736572706DLL)
    {
      return 1;
    }

    v503 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v503 && *(a1 + 14) == 0x712E73736572706DLL)
    {
      return 1;
    }

    v505 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v505 && *(a1 + 14) == 0x702E73736572706DLL)
    {
      return 1;
    }
  }

  if (v11)
  {
    if (*a1 == 0x72632E3234657373 && a1[1] == 0x382E34362E323363)
    {
      return 1;
    }
  }

  if (!v124 && *a1 == 0x6F7262762E787661 && a1[1] == 0x732E747361636461)
  {
    return 1;
  }

  if ((v20 & 1) == 0)
  {
    v470 = *a1 == 0x762E323135787661 && a1[1] == 0x73616364616F7262;
    if (v470 && *(a1 + 11) == 0x732E747361636461)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v472 = *a1 == 0x6D2E323135787661 && a1[1] == 0x696C61702E6B7361;
    if (v472 && *(a1 + 4) == 779251303)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v474 = *a1 == 0x6D2E323135787661 && a1[1] == 0x696C61762E6B7361;
    if (v474 && *(a1 + 11) == 0x2E6E67696C61762ELL)
    {
      return 1;
    }
  }

  if (!v17)
  {
    if (*a1 == 0x6C73702E32657373 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }

    if (*a1 == 0x7273702E32657373 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }

    if (*a1 == 0x6C73702E32787661 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }

    if (*a1 == 0x7273702E32787661 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }
  }

  if (v15)
  {
    if (a2 == 13 && *a1 == 0x62702E3134657373 && *(a1 + 5) == 0x77646E656C62702ELL)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 == 0x702E323135787661 && *(a1 + 6) == 0x71642E6C6C73702ELL)
    {
      return 1;
    }

    if (*a1 == 0x702E323135787661 && *(a1 + 6) == 0x71642E6C7273702ELL)
    {
      return 1;
    }
  }

  if (!v17 && *a1 == 0x6C622E3134657373 && *(a1 + 2) == 1885630053)
  {
    return 1;
  }

  if ((v18 & 1) == 0 && *a1 == 0x6E656C622E787661 && *(a1 + 3) == 0x702E646E656C622ELL)
  {
    return 1;
  }

  if (a2 == 12)
  {
    if (*a1 == 0x6C62702E32787661 && *(a1 + 2) == 2003070565)
    {
      return 1;
    }
  }

  else if ((v16 & 1) == 0 && *a1 == 0x6C62702E32787661 && *(a1 + 5) == 0x2E64646E656C6270)
  {
    return 1;
  }

  if ((v19 & 1) == 0)
  {
    v517 = *a1 == 0x6F7262762E787661 && a1[1] == 0x3166747361636461;
    if (v517 && *(a1 + 8) == 14386)
    {
      return 1;
    }
  }

  if (a2 == 19)
  {
    v519 = *a1 == 0x7262762E32787661 && a1[1] == 0x697473616364616FLL;
    if (v519 && *(a1 + 11) == 0x3832316974736163)
    {
      return 1;
    }
  }

  if ((v329 & 1) == 0)
  {
    v521 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v522 = v521 && a1[2] == 0x3233667473616364;
    if (v522 && *(a1 + 19) == 0x2E34783233667473)
    {
      return 1;
    }

    v524 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v525 = v524 && a1[2] == 0x3436667473616364;
    if (v525 && *(a1 + 19) == 0x2E32783436667473)
    {
      return 1;
    }

    v527 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v528 = v527 && a1[2] == 0x3233667473616364;
    if (v528 && *(a1 + 19) == 0x2E38783233667473)
    {
      return 1;
    }

    v530 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v531 = v530 && a1[2] == 0x3436667473616364;
    if (v531 && *(a1 + 19) == 0x2E34783436667473)
    {
      return 1;
    }

    v533 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v534 = v533 && a1[2] == 0x3233697473616364;
    if (v534 && *(a1 + 19) == 0x2E34783233697473)
    {
      return 1;
    }

    v536 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v537 = v536 && a1[2] == 0x3436697473616364;
    if (v537 && *(a1 + 19) == 0x2E32783436697473)
    {
      return 1;
    }

    v539 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v540 = v539 && a1[2] == 0x3233697473616364;
    if (v540 && *(a1 + 19) == 0x2E38783233697473)
    {
      return 1;
    }

    v542 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v543 = v542 && a1[2] == 0x3436697473616364;
    if (v543 && *(a1 + 19) == 0x2E34783436697473)
    {
      return 1;
    }
  }

  if (a2 == 14)
  {
    if (*a1 == 0x6D6370762E706F78 && *(a1 + 6) == 0x3635322E766F6D63)
    {
      return 1;
    }
  }

  else if (a2 == 10 && *a1 == 0x6D6370762E706F78 && *(a1 + 4) == 30319)
  {
    return 1;
  }

  if ((v19 & 1) == 0)
  {
    v547 = *a1 == 0x6D2E323135787661 && a1[1] == 0x65766F6D2E6B7361;
    if (v547 && *(a1 + 8) == 29486)
    {
      return 1;
    }
  }

  if (a2 >= 0xF && *a1 == 0x632E323135787661 && *(a1 + 7) == 0x326B73616D747663)
  {
    return 1;
  }

  if ((v108 & 1) == 0)
  {
    if (*a1 == 0x6F6370762E706F78 && *(a1 + 8) == 109)
    {
      return 1;
    }

    if (*a1 == 0x6F7270762E706F78 && *(a1 + 8) == 116)
    {
      return 1;
    }
  }

  if ((v18 & 1) == 0)
  {
    if (*a1 == 0x702E323135787661 && *(a1 + 3) == 0x6C6F72702E323135)
    {
      return 1;
    }

    if (*a1 == 0x702E323135787661 && *(a1 + 3) == 0x726F72702E323135)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v554 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F72702E6B7361;
    if (v554 && *(a1 + 8) == 11894)
    {
      return 1;
    }
  }

  if (!result)
  {
    v556 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F72702E6B7361;
    if (v556 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v558 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6F72702E6B7361;
    if (v558 && *(a1 + 8) == 11894)
    {
      return 1;
    }
  }

  if (!result)
  {
    v560 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6F72702E6B7361;
    if (v560 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (v16)
  {
    goto LABEL_2184;
  }

  if (*a1 == 0x702E323135787661 && *(a1 + 5) == 0x6D74736574702E32)
  {
    return 1;
  }

  if (v15)
  {
LABEL_2184:
    if (v124)
    {
      return 0;
    }

    goto LABEL_2196;
  }

  v563 = *a1 == 0x702E323135787661 && *(a1 + 6) == 0x6D6E74736574702ELL;
  result = v563;
  v564 = v563 || v124;
  if ((v564 & 1) == 0)
  {
LABEL_2196:
    v566 = *a1;
    v565 = a1[1];
    return v566 == 0x6D2E323135787661 && v565 == 0x677661702E6B7361;
  }

  return result;
}

BOOL UpgradePTESTIntrinsic(llvm::Function *a1, int a2, llvm::Function **a3)
{
  v6 = *(*(*(a1 + 3) + 16) + 8);
  llvm::FixedVectorType::get((***a1 + 1704), 4);
  v8 = v7;
  if (v6 == v7)
  {
    if ((*(a1 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(a1);
      v12 = *ValueName;
      v10 = ValueName + 2;
      v9 = v12;
    }

    else
    {
      v9 = 0;
      v10 = &str_3_24;
    }

    v15 = 773;
    v14[0] = v10;
    v14[1] = v9;
    v14[2] = ".old";
    llvm::Value::setName(a1, v14);
    *a3 = llvm::Intrinsic::getDeclaration(*(a1 + 5), a2, 0, 0);
  }

  return v6 == v8;
}

BOOL UpgradeX86IntrinsicsWith8BitMask(llvm::Function *this, int a2, llvm::Function **a3)
{
  v3 = *(*(*(*(this + 3) + 16) + 8 * (*(*(this + 3) + 12) - 1)) + 8);
  if (v3 == 8205)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v10 = *ValueName;
      v8 = ValueName + 2;
      v7 = v10;
    }

    else
    {
      v7 = 0;
      v8 = &str_3_24;
    }

    v13 = 773;
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = ".old";
    llvm::Value::setName(this, v12);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v3 == 8205;
}

BOOL UpgradeX86MaskedFPCompare(llvm::Function *this, int a2, llvm::Function **a3)
{
  v3 = *(**(*(this + 3) + 16) + 8) & 0xFE;
  if (v3 != 18)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v10 = *ValueName;
      v8 = ValueName + 2;
      v7 = v10;
    }

    else
    {
      v7 = 0;
      v8 = &str_3_24;
    }

    v13 = 773;
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = ".old";
    llvm::Value::setName(this, v12);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v3 != 18;
}

BOOL UpgradeX86BF16Intrinsic(llvm::Function *this, int a2, llvm::Function **a3)
{
  v6 = **(*(this + 3) + 16);
  if ((*(v6 + 8) & 0xFE) == 0x12)
  {
    v7 = *(**(v6 + 16) + 8);
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 1)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v11 = *ValueName;
      v9 = ValueName + 2;
      v8 = v11;
    }

    else
    {
      v8 = 0;
      v9 = &str_3_24;
    }

    v14 = 773;
    v13[0] = v9;
    v13[1] = v8;
    v13[2] = ".old";
    llvm::Value::setName(this, v13);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v7 != 1;
}

BOOL UpgradeX86BF16DPIntrinsic(llvm::Function *this, int a2, llvm::Function **a3)
{
  v6 = *(*(*(this + 3) + 16) + 16);
  if ((*(v6 + 8) & 0xFE) == 0x12)
  {
    v7 = *(**(v6 + 16) + 8);
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 1)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v11 = *ValueName;
      v9 = ValueName + 2;
      v8 = v11;
    }

    else
    {
      v8 = 0;
      v9 = &str_3_24;
    }

    v14 = 773;
    v13[0] = v9;
    v13[1] = v8;
    v13[2] = ".old";
    llvm::Value::setName(this, v13);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v7 != 1;
}

uint64_t *llvm::IRBuilderBase::CreateAShr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  result = (*(**(this + 9) + 24))(*(this + 9), 27, a2, a3);
  if (!result)
  {
    v13 = 257;
    v11 = llvm::BinaryOperator::Create(27, a2, a3, v12, 0);
    if (a5)
    {
      *(v11 + 17) |= 2u;
    }

    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v11, a4);
  }

  return result;
}

void *std::vector<llvm::Type *>::__assign_with_size[abi:nn200100]<llvm::Type * const*,llvm::Type * const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(v6, v10);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *llvm::IRBuilderBase::CreateInsertValue(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a1 + 72) + 88))(*(a1 + 72));
  if (!result)
  {
    v16 = 257;
    v13 = operator new(0xA0uLL);
    *v13 = 0;
    *(v13 + 8) = 0u;
    *(v13 + 8) = *a2;
    v14 = (v13 + 64);
    *(v13 + 3) = v13 + 64;
    *(v13 + 4) = 0;
    *(v13 + 40) = 0u;
    *(v13 + 7) = v13 + 64;
    *(v13 + 9) = 0;
    *(v13 + 10) = 0x20000005DLL;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0u;
    *(v13 + 30) = 0;
    *(v13 + 16) = v13 + 144;
    *(v13 + 17) = 0x400000000;
    llvm::InsertValueInst::init(v13 + 16, a2, a3, a4, a5, v15);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v14, a6);
  }

  return result;
}

uint64_t std::vector<llvm::OperandBundleDefT<llvm::Value *>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 48;
        std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      std::vector<llvm::jitlink::Block *>::__move_assign(a4 + 24, (v5 + 24));
      a4 += 48;
      v5 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t _GLOBAL__sub_I_AutoUpgrade_cpp()
{
  v0 = llvm::cl::Option::Option(&DisableAutoUpgradeDebugInfo, 0, 0);
  byte_2815AC380 = 0;
  qword_2815AC388 = &unk_2883EAB68;
  unk_2815AC390 = 0;
  DisableAutoUpgradeDebugInfo = &unk_2883EAB00;
  qword_2815AC398 = &unk_2883EA848;
  qword_2815AC3A0 = &unk_2883EAB88;
  qword_2815AC3B8 = &qword_2815AC3A0;
  llvm::cl::Option::setArgStr(v0, "disable-auto-upgrade-debug-info", 0x1FuLL);
  qword_2815AC320 = "Disable autoupgrade of debug info";
  unk_2815AC328 = 33;
  llvm::cl::Option::addArgument(&DisableAutoUpgradeDebugInfo);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &DisableAutoUpgradeDebugInfo, &dword_274E5C000);
}

void llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = a1 - 40;
  *(a1 - 22) &= ~0x8000u;
  if ((*(a2 + 23) & 0x10) != 0)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 104);
      if (v3)
      {
        llvm::ValueSymbolTable::reinsertValue(v3, a2);
      }
    }
  }
}

uint64_t llvm::SymbolTableListTraits<llvm::Instruction>::removeNodeFromList(uint64_t result, llvm::Value *this)
{
  *(this + 5) = 0;
  if ((*(this + 23) & 0x10) != 0)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(v2 + 104);
      if (v3)
      {
        ValueName = llvm::Value::getValueName(this);
        v5 = *ValueName;
        v6 = (ValueName + *(v3 + 20));

        return llvm::StringMapImpl::RemoveKey(v3, v6, v5);
      }
    }
  }

  return result;
}

uint64_t llvm::BasicBlock::BasicBlock(uint64_t a1, void *a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2 + 1632;
  *(a1 + 8) = 0;
  v7 = *(a1 + 20);
  *(a1 + 24) = 0;
  v8 = a1 + 24;
  *(a1 + 16) = 22;
  *(a1 + 20) = v7 & 0xC0000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  if (a4)
  {
    if (a5)
    {
      v9 = (a5 + 24);
    }

    else
    {
      v9 = (a4 + 72);
    }

    llvm::SymbolTableListTraits<llvm::BasicBlock>::addNodeToList(a4 + 72, a1);
    v10 = *v9;
    *(a1 + 24) = *v9;
    *(a1 + 32) = v9;
    *(v10 + 8) = v8;
    *v9 = v8;
  }

  llvm::Value::setName(a1, a3);
  return a1;
}

void llvm::BasicBlock::~BasicBlock(llvm::BasicBlock *this, llvm::Value *i)
{
  if ((*(this + 9) & 0x7FFF) != 0)
  {
    v3 = llvm::ConstantInt::get(***this + 1992, 1);
    v4 = *(this + 1);
    if (v4)
    {
      v5 = v3;
      do
      {
        v6 = *(v4 + 24);
        FoldedCast = getFoldedCast(0x30, v5, *v6, 0);
        llvm::Value::doRAUW(v6, FoldedCast, 1, v8);
        llvm::Constant::destroyConstant(v6, v9, v10, v11);
        v4 = *(this + 1);
      }

      while (v4);
    }
  }

  v12 = (this + 40);
  v13 = *(this + 6);
  if (v13 != (this + 40))
  {
    do
    {
      if (v13)
      {
        v14 = v13 - 24;
      }

      else
      {
        v14 = 0;
      }

      llvm::User::dropAllReferences(v14);
      v13 = *(v13 + 1);
    }

    while (v13 != v12);
    i = *(this + 6);
    if (i != v12)
    {
      do
      {
        i = llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(this + 40, i);
      }

      while (i != v12);
        ;
      }
    }
  }

  llvm::Value::~Value(this, i);
}

void llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  *a2 = a3;
  v6 = a1[2];
  if (v6)
  {
    v7 = *(v6 + 104);
  }

  else
  {
    v7 = 0;
  }

  if (v5 != v7 && *a1 != a1)
  {
    if (v5)
    {
      for (i = a1[1]; i != a1; i = i[1])
      {
        if (i)
        {
          v9 = (i - 3);
        }

        else
        {
          v9 = 0;
        }

        if ((*(v9 + 23) & 0x10) != 0)
        {
          ValueName = llvm::Value::getValueName(v9);
          llvm::StringMapImpl::RemoveKey(v5, (ValueName + *(v5 + 20)), *ValueName);
        }
      }
    }

    if (v7)
    {
      for (j = a1[1]; j != a1; j = j[1])
      {
        if (j)
        {
          v12 = (j - 3);
        }

        else
        {
          v12 = 0;
        }

        if ((*(v12 + 23) & 0x10) != 0)
        {
          llvm::ValueSymbolTable::reinsertValue(v7, v12);
        }
      }
    }
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 - 24);
  if (a2)
  {
    v4 = a2 - 24;
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::BasicBlock>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  llvm::BasicBlock::~BasicBlock(v3, v7);
  MEMORY[0x277C69E40]();
  return v2;
}

void llvm::BasicBlock::moveBefore(llvm::BasicBlock *this, llvm::BasicBlock *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    v3 = (this + 24);
    if (v2 != (a2 + 24) && v3 != v2)
    {
      llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(*(a2 + 7) + 72, a2 + 3, *(this + 7) + 72, v3, v2);
    }
  }
}

uint64_t llvm::BasicBlock::getSinglePredecessor(llvm::BasicBlock *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 24);
    v3 = *(v2 + 16);
    v4 = v2 && v3 >= 0x1C;
    if (v4 && v3 - 29 < 0xB)
    {
      break;
    }

    v1 = *(v1 + 8);
    if (!v1)
    {
      return 0;
    }
  }

  result = *(v2 + 40);
  while (1)
  {
    v1 = *(v1 + 8);
    if (!v1)
    {
      break;
    }

    v7 = *(v1 + 24);
    v8 = *(v7 + 16);
    if (v7)
    {
      v9 = v8 >= 0x1C;
    }

    else
    {
      v9 = 0;
    }

    if (v9 && v8 - 29 < 0xB)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::BasicBlock::getUniquePredecessor(llvm::BasicBlock *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 24);
    v3 = *(v2 + 16);
    v4 = v2 && v3 >= 0x1C;
    if (v4 && v3 - 29 < 0xB)
    {
      break;
    }

    v1 = *(v1 + 8);
    if (!v1)
    {
      return 0;
    }
  }

  v7 = *(v2 + 40);
  while (1)
  {
    v1 = *(v1 + 8);
    if (!v1)
    {
      break;
    }

    v8 = *(v1 + 24);
    v9 = *(v8 + 16);
    if (v8)
    {
      v10 = v9 >= 0x1C;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && v9 - 29 <= 0xA)
    {
      if (*(v8 + 40) != v7)
      {
        return 0;
      }

      while (1)
      {
        v1 = *(v1 + 8);
        if (!v1)
        {
          break;
        }

        v12 = *(v1 + 24);
        v13 = *(v12 + 16);
        if (v12)
        {
          v14 = v13 >= 0x1C;
        }

        else
        {
          v14 = 0;
        }

        if (v14 && v13 - 29 < 0xB)
        {
          result = 0;
          if (*(v12 + 40) != v7)
          {
            return result;
          }
        }
      }

      return v7;
    }
  }

  return v7;
}

uint64_t llvm::BasicBlock::replaceSuccessorsPhiUsesWith(llvm::BasicBlock *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v5 = *(this + 5);
  result = this + 40;
  v4 = v5;
  if (v5 != result)
  {
    v6 = (v4 - 24);
    if (v4)
    {
      v7 = v4 - 24;
    }

    else
    {
      v7 = 0;
    }

    if (*(v7 + 16) - 29 <= 0xA)
    {
      result = llvm::Instruction::getNumSuccessors(v6);
      if (result)
      {
        v10 = result;
        for (i = 0; i != v10; ++i)
        {
          Successor = llvm::Instruction::getSuccessor(v6, i);
          result = llvm::BasicBlock::replacePhiUsesWith(Successor, a2, a3);
        }
      }
    }
  }

  return result;
}

uint64_t llvm::BasicBlock::replacePhiUsesWith(uint64_t this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v3 = this + 40;
  v4 = *(this + 48);
  if (v4 != this + 40)
  {
    do
    {
      this = v4 - 24;
      if (v4)
      {
        v7 = v4 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (!v4)
      {
        break;
      }

      if (*(v7 + 16) != 83)
      {
        break;
      }

      this = llvm::PHINode::replaceIncomingBlockWith(this, a2, a3);
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
  }

  return this;
}

uint64_t llvm::PHINode::replaceIncomingBlockWith(uint64_t this, const llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v3 = *(this + 20);
  v4 = v3 & 0x7FFFFFF;
  if ((v3 & 0x7FFFFFF) != 0)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      v7 = *(this + 20);
      if ((v7 & 0x40000000) != 0)
      {
        v8 = *(this - 8);
      }

      else
      {
        v8 = this - 32 * (v7 & 0x7FFFFFF);
      }

      v9 = *(this + 60);
      if (*(v8 + 32 * v9 + v5) == a2)
      {
        *(v8 + 32 * v9 + v5) = a3;
      }

      v5 += 8;
    }

    while (v6 != v5);
  }

  return this;
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::addNodeToList(uint64_t a1, uint64_t a2)
{
  llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>((a2 + 40), (a2 + 56), a1 - 72);
  if ((*(a2 + 23) & 0x10) != 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {

      llvm::ValueSymbolTable::reinsertValue(v4, a2);
    }
  }
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::removeNodeFromList(uint64_t a1, uint64_t a2)
{
  llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>((a2 + 40), (a2 + 56), 0);
  if ((*(a2 + 23) & 0x10) != 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      ValueName = llvm::Value::getValueName(a2);
      v6 = *ValueName;
      v7 = (ValueName + *(v4 + 20));

      llvm::StringMapImpl::RemoveKey(v4, v7, v6);
    }
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 - 24);
  if (a2)
  {
    v4 = (a2 - 24);
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::Instruction>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  llvm::Value::deleteValue(v3, v7);
  return v2;
}

void anonymous namespace::ErlangGC::~ErlangGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::GCStrategy::~GCStrategy(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::OcamlGC::~OcamlGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::ShadowStackGC::~ShadowStackGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::StatepointGC::~StatepointGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::StatepointGC::isGCManagedPointer(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0xFFFFFF00) == 0x100)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

void anonymous namespace::CoreCLRGC::~CoreCLRGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::CoreCLRGC::isGCManagedPointer(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0xFFFFFF00) == 0x100)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

void _GLOBAL__sub_I_BuiltinGCs_cpp()
{
  _MergedGlobals_43 = "erlang";
  unk_2815AA8D0 = 6;
  qword_2815AA8D8 = "erlang-compatible garbage collector";
  unk_2815AA8E0 = 35;
  qword_2815AA8F8 = &_MergedGlobals_43;
  v0 = llvm::Registry<llvm::GCStrategy>::Tail;
  if (!llvm::Registry<llvm::GCStrategy>::Tail)
  {
    v0 = &llvm::Registry<llvm::GCStrategy>::Head;
  }

  *v0 = &qword_2815AA8F0;
  qword_2815AA900 = "ocaml";
  qword_2815AA908 = 5;
  unk_2815AA910 = "ocaml 3.10-compatible GC";
  qword_2815AA918 = 24;
  qword_2815AA930 = &qword_2815AA900;
  qword_2815AA928 = &qword_2815AA960;
  qword_2815AA8F0 = &qword_2815AA928;
  qword_2815AA938 = "shadow-stack";
  qword_2815AA940 = 12;
  unk_2815AA948 = "Very portable GC for uncooperative code generators";
  qword_2815AA950 = 50;
  qword_2815AA968 = &qword_2815AA938;
  qword_2815AA970 = "statepoint-example";
  qword_2815AA978 = 18;
  unk_2815AA980 = "an example strategy for statepoint";
  qword_2815AA988 = 34;
  qword_2815AA9A0 = &qword_2815AA970;
  qword_2815AA9A8 = "coreclr";
  qword_2815AA960 = &qword_2815AA998;
  qword_2815AA9B0 = 7;
  unk_2815AA9B8 = "CoreCLR-compatible GC";
  qword_2815AA9C0 = 21;
  qword_2815AA9D0 = 0;
  qword_2815AA9D8 = &qword_2815AA9A8;
  qword_2815AA998 = &qword_2815AA9D0;
  llvm::Registry<llvm::GCStrategy>::Tail = &qword_2815AA9D0;
}

llvm::ConstantExpr *llvm::ConstantFoldCastInstruction(llvm *this, uint64_t ***a2, llvm::Constant ****a3, llvm::Type *a4)
{
  v70[16] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (v5 == 12)
  {
    v6 = *MEMORY[0x277D85DE8];

    return llvm::PoisonValue::get(a3, a2);
  }

  if ((v5 - 11) > 1)
  {
    if (llvm::Constant::isNullValue(a2))
    {
      v13 = *(a3 + 8);
      if (v13 != 10 && this != 50 && v13 != 11)
      {
        goto LABEL_8;
      }
    }

    v14 = *(a2 + 16);
    if (v14 == 5)
    {
      v15 = *(a2 + 9);
      if ((v15 - 38) > 0xC)
      {
        if (this != 50 && v15 == 34 && *(a2 + 17) <= 3u && ((*a2)[1] & 0xFE) != 0x12)
        {
          v59 = *(a2 + 5) & 0x7FFFFFF;
          v60 = v59 - 1;
          if (v59 == 1)
          {
            v61 = 1;
LABEL_100:
            v63 = a2[-4 * v61];
            v64 = *MEMORY[0x277D85DE8];

            return llvm::ConstantExpr::getPointerCast(v63, a3, v11, v12);
          }

          v62 = a2 + 4;
          while ((llvm::Constant::isNullValue(v62[-4 * (*(a2 + 5) & 0x7FFFFFF)]) & 1) != 0)
          {
            v62 += 4;
            if (!--v60)
            {
              v61 = *(a2 + 5) & 0x7FFFFFF;
              goto LABEL_100;
            }
          }
        }
      }

      else
      {
        isEliminableCastPair = llvm::CastInst::isEliminableCastPair(v15, this, *a2[-4 * (*(a2 + 5) & 0x7FFFFFF)], *a2, a3, 0, (**a3 + 252), 0);
        if (isEliminableCastPair)
        {
          v18 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
          v19 = *MEMORY[0x277D85DE8];

          return llvm::ConstantExpr::getCast(isEliminableCastPair, v18, a3, 0, v17);
        }
      }

      v14 = *(a2 + 16);
    }

    v20 = v14 == 15 || v14 == 10;
    if (v20 && (a3[1] & 0xFE) == 0x12 && *(a3 + 8) == *(*a2 + 8))
    {
      v21 = a3[3];
      SplatValue = llvm::Constant::getSplatValue(a2, 0);
      if (SplatValue)
      {
        v24 = *(a3 + 8);
        v25 = *(a3 + 8) == 19;
        Cast = llvm::ConstantExpr::getCast(this, SplatValue, v21, 0, v23);
        v28 = *MEMORY[0x277D85DE8];

        return llvm::ConstantVector::getSplat((v24 | (v25 << 32)), Cast, v27);
      }

      v68 = v70;
      v69 = 0x1000000000;
      v48 = *(*a2 + 8);
      if (v48)
      {
        v49 = 0;
        v50 = ***a2;
        do
        {
          v51 = llvm::ConstantInt::get((v50 + 1992), v49);
          Element = llvm::ConstantExpr::getExtractElement(a2, v51, 0, v52, v53);
          v56 = llvm::ConstantExpr::getCast(this, Element, v21, 0, v55);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v68, v56);
          v49 = (v49 + 1);
        }

        while (v48 != v49);
        v57 = v68;
        v58 = v69;
      }

      else
      {
        v58 = 0;
        v57 = v70;
      }

      ConstantBytes = llvm::ConstantVector::get(v57, v58);
      if (v68 != v70)
      {
        free(v68);
      }

LABEL_105:
      v65 = *MEMORY[0x277D85DE8];
      return ConstantBytes;
    }

    if (this > 44)
    {
      if (this > 47)
      {
        if (this == 48)
        {
          if (llvm::Constant::isNullValue(a2))
          {
            v45 = *MEMORY[0x277D85DE8];

            return llvm::ConstantPointerNull::get(a3);
          }
        }

        else if (this == 49)
        {
          v38 = *MEMORY[0x277D85DE8];

          return FoldBitCast(a2, a3);
        }

        goto LABEL_104;
      }

      if ((this - 45) >= 2)
      {
        if (llvm::Constant::isNullValue(a2))
        {
          v44 = *MEMORY[0x277D85DE8];

          return llvm::ConstantInt::get(a3, 0);
        }

        goto LABEL_104;
      }

      if (v14 != 17)
      {
LABEL_104:
        ConstantBytes = 0;
        goto LABEL_105;
      }

      llvm::APFloat::Storage::Storage(&v69, (a2 + 4));
      FltSemantics = llvm::Type::getFltSemantics(a3);
      llvm::APFloat::convert(&v68, FltSemantics, 1, &v66);
      ConstantBytes = llvm::ConstantFP::get(**a2, &v68);
    }

    else
    {
      if (this <= 40)
      {
        if (this == 38)
        {
          v42 = *(*a2 + 2);
          if ((v42 & 0xFE) == 0x12)
          {
            goto LABEL_104;
          }

          v43 = *(a3 + 2);
          if (v14 != 16)
          {
            if (((v43 | v42) & 0x700) == 0)
            {
              ConstantBytes = ExtractConstantBytes(a2, 0, v43 >> 11);
              if (ConstantBytes)
              {
                goto LABEL_105;
              }
            }

            goto LABEL_104;
          }

          v37 = **a2;
          llvm::APInt::trunc((a2 + 3), v43 >> 8, &v68);
        }

        else if (this == 39)
        {
          if (v14 != 16)
          {
            goto LABEL_104;
          }

          v36 = *(a3 + 2) >> 8;
          v37 = **a2;
          llvm::APInt::zext((a2 + 3), v36, &v68);
        }

        else
        {
          if (v14 != 16)
          {
            goto LABEL_104;
          }

          v46 = *(a3 + 2) >> 8;
          v37 = **a2;
          llvm::APInt::sext((a2 + 3), v46, &v68);
        }

        v47 = v37;
        goto LABEL_89;
      }

      if ((this - 41) < 2)
      {
        if (v14 == 17)
        {
          LOBYTE(v66) = 0;
          llvm::APInt::APInt(&v68, *(a3 + 2) >> 8, 0);
          BYTE4(v69) = this == 41;
          if (llvm::APFloat::convertToInteger((a2 + 3), &v68, 0, &v66) == 1)
          {
            v32 = llvm::PoisonValue::get(a3, v29);
LABEL_90:
            ConstantBytes = v32;
            if (v69 >= 0x41 && v68)
            {
              MEMORY[0x277C69E10](v68, 0x1000C8000313F17);
            }

            goto LABEL_105;
          }

          v47 = **a2;
LABEL_89:
          v32 = llvm::ConstantInt::get(v47, &v68, v30, v31);
          goto LABEL_90;
        }

        goto LABEL_104;
      }

      if (v14 != 16)
      {
        goto LABEL_104;
      }

      v39 = llvm::Type::getFltSemantics(a3);
      PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(a3);
      if (v40)
      {
      }

      llvm::APInt::APInt(&v66, PrimitiveSizeInBits, 0);
      llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v69, v39, &v66);
      if (v67 >= 0x41 && v66)
      {
        MEMORY[0x277C69E10](v66, 0x1000C8000313F17);
      }

      llvm::APFloat::convertFromAPInt(&v68, (a2 + 3), this == 44, 1);
      ConstantBytes = llvm::ConstantFP::get(**a2, &v68);
    }

    llvm::APFloat::Storage::~Storage(&v69);
    goto LABEL_105;
  }

  if (this <= 0x2C && ((1 << this) & 0x198000000000) != 0)
  {
LABEL_8:
    v9 = *MEMORY[0x277D85DE8];

    return llvm::Constant::getNullValue(a3, a2);
  }

  v35 = *MEMORY[0x277D85DE8];

  return llvm::UndefValue::get(a3, a2);
}

llvm::Constant *ExtractConstantBytes(llvm::Constant *a1, unsigned int a2, unsigned int a3)
{
  v6 = (8 * a2);
  v7 = (8 * a3);
  v8 = a3 + a2;
  v9 = 8 * (a3 + a2);
  while (1)
  {
    v10 = a1;
    v11 = *(a1 + 16);
    if (v11 != 5)
    {
      if (v11 != 16)
      {
        return 0;
      }

      v34 = *(a1 + 8);
      v57 = v34;
      if (v34 > 0x40)
      {
        operator new[]();
      }

      v35 = *(a1 + 3);
      v56 = v35;
      if (a2)
      {
        if (v34 == v6)
        {
          v56 = 0;
        }

        else
        {
          v56 = v35 >> v6;
        }
      }

      llvm::APInt::trunc(&v56, v7, &v54);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x277C69E10](v56, 0x1000C8000313F17);
      }

      v56 = v54;
      v57 = v55;
      a1 = llvm::ConstantInt::get(**a1, &v56, v46, v47);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x277C69E10]();
      }

      return a1;
    }

    v12 = *(a1 + 9);
    if (v12 != 39)
    {
      break;
    }

    v13 = (a1 - 32 * (*(a1 + 5) & 0x7FFFFFF));
    a1 = *v13;
    v14 = **v13;
    v15 = *(v14 + 2);
    if (v6 >= v15 >> 8)
    {
      v44 = llvm::IntegerType::get(**v10, (8 * a3));

      return llvm::Constant::getNullValue(v44, v45);
    }

    v16 = v15 >> 8;
    if (!a2 && v7 == v16)
    {
      return a1;
    }

    if ((v15 & 0x700) != 0 || v9 > v16)
    {
      if (v9 < v16)
      {
        if (a2)
        {
          v18 = llvm::ConstantInt::get(v14, v6);
          a1 = llvm::ConstantExpr::get(0x1A, a1, v18, 0, 0, v19);
        }

        llvm::IntegerType::get(**v10, v7);

        return getFoldedCast(38, a1, v20);
      }

      return 0;
    }
  }

  a1 = 0;
  if (v12 <= 27)
  {
    if (v12 == 25)
    {
      v36 = (v10 - 4 * (*(v10 + 5) & 0x7FFFFFF))[4];
      if (v36)
      {
        v37 = *(v36 + 16) == 16;
      }

      else
      {
        v37 = 0;
      }

      if (!v37)
      {
        return 0;
      }

      v38 = *(v36 + 32);
      v57 = v38;
      if (v38 > 0x40)
      {
        operator new[]();
      }

      v39 = *(v36 + 24);
      if ((v39 & 7) != 0)
      {
        return 0;
      }

      v40 = v39 >> 3;
      if (v38 == 3)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      if (v41 >= v8)
      {
        v52 = llvm::IntegerType::get(**v10, v7);
        return llvm::Constant::getNullValue(v52, v53);
      }

      else
      {
        if (v41 > a2)
        {
          return 0;
        }

        return ExtractConstantBytes(*(v10 - 4 * (*(v10 + 5) & 0x7FFFFFF)), a2 - v41, a3);
      }
    }

    if (v12 == 26)
    {
      v22 = (v10 - 4 * (*(v10 + 5) & 0x7FFFFFF))[4];
      if (v22)
      {
        v23 = *(v22 + 16) == 16;
      }

      else
      {
        v23 = 0;
      }

      if (!v23)
      {
        return 0;
      }

      v24 = *(*v10 + 8) >> 11;
      v25 = *(v22 + 32);
      v57 = v25;
      if (v25 > 0x40)
      {
        operator new[]();
      }

      v26 = *(v22 + 24);
      if ((v26 & 7) != 0)
      {
        return 0;
      }

      v27 = v26 >> 3;
      if (v25 == 3)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      if (v28 >= v24 - a2)
      {
        v50 = llvm::IntegerType::get(**v10, v7);
        return llvm::Constant::getNullValue(v50, v51);
      }

      else
      {
        if (v28 > v24 - v8)
        {
          return 0;
        }

        return ExtractConstantBytes(*(v10 - 4 * (*(v10 + 5) & 0x7FFFFFF)), v28 + a2, a3);
      }
    }

    return a1;
  }

  if (v12 == 28)
  {
    ConstantBytes = ExtractConstantBytes((v10 - 4 * (*(v10 + 5) & 0x7FFFFFF))[4], a2, a3);
    a1 = ConstantBytes;
    if (!ConstantBytes || (llvm::Constant::isNullValue(ConstantBytes) & 1) != 0)
    {
      return a1;
    }

    v43 = ExtractConstantBytes(*(v10 - 4 * (*(v10 + 5) & 0x7FFFFFF)), a2, a3);
    if (!v43)
    {
      return 0;
    }

    v32 = v43;
    v33 = 28;
  }

  else
  {
    if (v12 != 29)
    {
      return a1;
    }

    v29 = ExtractConstantBytes((v10 - 4 * (*(v10 + 5) & 0x7FFFFFF))[4], a2, a3);
    a1 = v29;
    if (!v29 || v29[16] == 16 && llvm::APInt::isAllOnes((v29 + 24)))
    {
      return a1;
    }

    v30 = ExtractConstantBytes(*(v10 - 4 * (*(v10 + 5) & 0x7FFFFFF)), a2, a3);
    if (!v30)
    {
      return 0;
    }

    v32 = v30;
    v33 = 29;
  }

  return llvm::ConstantExpr::get(v33, v32, a1, 0, 0, v31);
}

llvm::Type **FoldBitCast(uint64_t ***a1, llvm::Type *this)
{
  v44[16] = *MEMORY[0x277D85DE8];
  v41 = a1;
  v3 = *a1;
  if (*a1 == this)
  {
    goto LABEL_54;
  }

  if (v3)
  {
    v5 = *(v3 + 2) == 15;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = (*(this + 2) ^ *(v3 + 2)) > 0xFF || this == 0;
    v7 = !v6 && *(this + 2) == 15;
    if (v7 && v3[3] && *(this + 3) && llvm::Type::isSized(*v3[2], 0))
    {
      v42 = v44;
      v43 = 0x800000000;
      NullValue = llvm::Constant::getNullValue((**this + 1992), this);
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v42, NullValue);
      v9 = *v3[2];
      if (v9)
      {
        while (1)
        {
          if (v9 == **(this + 2))
          {
            goto LABEL_29;
          }

          v10 = *(v9 + 8);
          if (v10 == 17)
          {
            goto LABEL_25;
          }

          if (v10 != 16)
          {
            break;
          }

          if (!*(v9 + 12))
          {
            goto LABEL_28;
          }

          v11 = *(v9 + 16);
LABEL_26:
          v9 = *v11;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v42, NullValue);
          if (!v9)
          {
            goto LABEL_29;
          }
        }

        if ((v10 & 0xFE) != 0x12)
        {
LABEL_28:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v42, NullValue);
          v9 = 0;
          goto LABEL_29;
        }

LABEL_25:
        v11 = (v9 + 24);
        goto LABEL_26;
      }

LABEL_29:
      v12 = **(this + 2);
      if (v9 == v12)
      {
        NullValue = llvm::ConstantExpr::getGetElementPtr(*v3[2], a1, v42, v43, 1, 0, 0);
      }

      if (v42 != v44)
      {
        free(v42);
      }

      if (v9 == v12)
      {
        goto LABEL_69;
      }
    }
  }

  if (!this || (*(this + 2) & 0xFE) != 0x12)
  {
    v13 = *(a1 + 16);
LABEL_41:
    v15 = *(this + 2);
    if (v13 != 16)
    {
      if (v13 == 17)
      {
        NullValue = 0;
        if (v15 == 13 && *(*a1 + 8) != 6)
        {
          v17 = **a1;
          llvm::APFloat::bitcastToAPInt(&v42, (a1 + 3));
          NullValue = llvm::ConstantInt::get(v17, &v42, v18, v19);
          if (v43 >= 0x41)
          {
            if (v42)
            {
              MEMORY[0x277C69E10](v42, 0x1000C8000313F17);
            }
          }
        }

        goto LABEL_69;
      }

      if (v13 != 19)
      {
LABEL_68:
        NullValue = 0;
        goto LABEL_69;
      }

      FoldedCast = llvm::ConstantPointerNull::get(this);
LABEL_57:
      NullValue = FoldedCast;
      goto LABEL_69;
    }

    if (v15 != 13)
    {
      if (v15 < 4 || v15 == 5 || (NullValue = 0, (v15 & 0xFFFFFFFD) == 4) && v15 != 6)
      {
        v21 = *this;
        FltSemantics = llvm::Type::getFltSemantics(this);
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v43, FltSemantics, a1 + 3);
        NullValue = llvm::ConstantFP::get(v21, &v42);
        llvm::APFloat::Storage::~Storage(&v43);
      }

      goto LABEL_69;
    }

LABEL_54:
    NullValue = a1;
    goto LABEL_69;
  }

  v13 = *(a1 + 16);
  if (!*a1 || ((*a1)[1] & 0xFE) != 0x12)
  {
    if ((v13 & 0xFE) == 0x10)
    {
      NullValue = llvm::ConstantVector::get(&v41, 1);
      if (*NullValue == this)
      {
        goto LABEL_69;
      }

      FoldedCast = getFoldedCast(49, NullValue, v16);
      goto LABEL_57;
    }

    goto LABEL_41;
  }

  if (v13 == 13)
  {
    goto LABEL_39;
  }

  if (llvm::Constant::isAllOnesValue(a1))
  {
    FoldedCast = llvm::Constant::getAllOnesValue(this, v20);
    goto LABEL_57;
  }

  if (llvm::Constant::isNullValue(a1))
  {
LABEL_39:
    FoldedCast = llvm::Constant::getNullValue(this, this);
    goto LABEL_57;
  }

  if (*(this + 8) == 19)
  {
    goto LABEL_68;
  }

  v23 = *(this + 8);
  if (v23 != *(*a1 + 8))
  {
    goto LABEL_68;
  }

  v24 = *(this + 3);
  SplatValue = llvm::Constant::getSplatValue(a1, 0);
  if (SplatValue)
  {
    v28 = SplatValue;
    v29 = (*(this + 8) | ((*(this + 8) == 19) << 32));
    if (*SplatValue != v24)
    {
      v28 = getFoldedCast(49, SplatValue, v27);
    }

    FoldedCast = llvm::ConstantVector::getSplat(v29, v28, v26);
    goto LABEL_57;
  }

  v42 = v44;
  v43 = 0x1000000000;
  if (v23)
  {
    v32 = 0;
    v33 = ***a1;
    do
    {
      v34 = llvm::ConstantInt::get((v33 + 1992), v32);
      Element = llvm::ConstantExpr::getExtractElement(a1, v34, 0, v35, v36);
      if (*Element != v24)
      {
        Element = getFoldedCast(49, Element, v38);
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v42, Element);
      v32 = (v32 + 1);
    }

    while (v23 != v32);
    v39 = v42;
    v40 = v43;
  }

  else
  {
    v40 = 0;
    v39 = v44;
  }

  NullValue = llvm::ConstantVector::get(v39, v40);
  if (v42 != v44)
  {
    free(v42);
  }

LABEL_69:
  v30 = *MEMORY[0x277D85DE8];
  return NullValue;
}

llvm::Type *llvm::ConstantFoldSelectInstruction(llvm *this, llvm::PoisonValue **a2, llvm::PoisonValue **a3, llvm::Constant *a4)
{
  v33[16] = *MEMORY[0x277D85DE8];
  if (llvm::Constant::isNullValue(this))
  {
    goto LABEL_2;
  }

  if (llvm::Constant::isAllOnesValue(this))
  {
LABEL_4:
    v7 = a2;
    goto LABEL_35;
  }

  v9 = *(this + 16);
  if (!this || v9 != 10)
  {
LABEL_29:
    if (v9 == 12)
    {
      v7 = llvm::PoisonValue::get(*a2, v8);
      goto LABEL_35;
    }

    if ((v9 - 11) <= 1)
    {
      if (*(a2 + 16) - 11 >= 2)
      {
        v7 = a3;
      }

      else
      {
        v7 = a2;
      }

      goto LABEL_35;
    }

    if (a2 == a3)
    {
      goto LABEL_4;
    }

    v29 = *(a2 + 16);
    if (v29 != 12)
    {
      v30 = *(a3 + 16);
      if (v30 == 12)
      {
        goto LABEL_4;
      }

      if ((v29 - 11) > 1)
      {
        goto LABEL_42;
      }

      if ((llvm::ConstantFoldSelectInstruction(llvm::Constant *,llvm::Constant *,llvm::Constant *)::$_0::operator()(a3) & 1) == 0)
      {
        v30 = *(a3 + 16);
LABEL_42:
        if ((v30 - 11) > 1)
        {
          v7 = 0;
        }

        else if (llvm::ConstantFoldSelectInstruction(llvm::Constant *,llvm::Constant *,llvm::Constant *)::$_0::operator()(a2))
        {
          v7 = a2;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_35;
      }
    }

LABEL_2:
    v7 = a3;
    goto LABEL_35;
  }

  v10 = *this;
  v31 = v33;
  v32 = 0x1000000000;
  v11 = *(v10 + 8);
  if (!v11)
  {
    v24 = 0;
    v25 = v33;
LABEL_23:
    v7 = llvm::ConstantVector::get(v25, v24);
    v26 = 1;
    v25 = v31;
    goto LABEL_25;
  }

  v7 = 0;
  v12 = **v10;
  v13 = this;
  do
  {
    v14 = llvm::ConstantInt::get((v12 + 1992), v7);
    Element = llvm::ConstantExpr::getExtractElement(a2, v14, 0, v15, v16);
    v18 = llvm::ConstantInt::get((v12 + 1992), v7);
    v21 = llvm::ConstantExpr::getExtractElement(a3, v18, 0, v19, v20);
    v22 = *(v13 - 4 * (*(this + 5) & 0x7FFFFFF));
    v23 = v22[16];
    if (v23 == 12)
    {
      Element = llvm::PoisonValue::get(*Element, v8);
    }

    else if (Element != v21)
    {
      if ((v23 - 11) > 1)
      {
        if (v23 != 16)
        {
          break;
        }

        if (llvm::Constant::isNullValue(v22))
        {
          Element = v21;
        }
      }

      else if (*(Element + 16) - 11 >= 2)
      {
        Element = v21;
      }
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v31, Element);
    v7 = (v7 + 1);
    v13 = (v13 + 32);
  }

  while (v11 != v7);
  v24 = v32;
  v25 = v31;
  if (v32 == *(v10 + 8))
  {
    goto LABEL_23;
  }

  v26 = 0;
LABEL_25:
  if (v25 != v33)
  {
    free(v25);
  }

  if ((v26 & 1) == 0)
  {
    v9 = *(this + 16);
    goto LABEL_29;
  }

LABEL_35:
  v27 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t llvm::ConstantFoldSelectInstruction(llvm::Constant *,llvm::Constant *,llvm::Constant *)::$_0::operator()(unsigned __int8 *a1)
{
  v2 = a1[16];
  if (v2 < 0x14 && ((0xB1029u >> v2) & 1) != 0)
  {
    v3 = 0xB0009u >> v2;
  }

  else
  {
    LOBYTE(v3) = (*(*a1 + 8) & 0xFE) == 0x12 && (llvm::Constant::containsPoisonElement(a1) & 1) == 0 && !llvm::Constant::containsConstantExpression(a1);
  }

  return v3 & 1;
}

llvm::ConstantExpr *llvm::ConstantFoldExtractElementInstruction(llvm *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Type *a4, __n128 a5)
{
  v45[8] = *MEMORY[0x277D85DE8];
  v5 = *this;
  v6 = *(this + 16);
  if (v6 == 12 || (v8 = *(a2 + 16), (v8 - 11) <= 1))
  {
LABEL_3:
    v9 = *(v5 + 24);
    v10 = *MEMORY[0x277D85DE8];

    return llvm::PoisonValue::get(v9, a2);
  }

  if ((v6 - 11) > 1)
  {
    if (v8 == 16)
    {
      if (*(v5 + 8) == 18 && v5 != 0)
      {
        v16 = *(v5 + 32);
        v17 = (a2 + 24);
        v18 = *(a2 + 8);
        if (v18 >= 0x41)
        {
          if (v18 - llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) > 0x40)
          {
            goto LABEL_3;
          }

          v17 = *v17;
        }

        if (*v17 >= v16)
        {
          goto LABEL_3;
        }
      }

      if (v6 == 5)
      {
        v19 = *(this + 9);
        if (v19 == 62)
        {
          v27 = (this - 4 * (*(this + 5) & 0x7FFFFFF))[8];
          if (v27)
          {
            v28 = *(v27 + 16) == 16;
          }

          else
          {
            v28 = 0;
          }

          if (v28)
          {
            if (*(v27 + 32) > 0x40u)
            {
              operator new[]();
            }

            v34 = *(v27 + 24);
            LODWORD(v44) = *(v27 + 32);
            v43 = v34;
            BYTE4(v44) = 1;
            if (*(a2 + 8) > 0x40u)
            {
              operator new[]();
            }

            v35 = *(a2 + 3);
            v41 = *(a2 + 8);
            v40 = v35;
            v42 = 1;
            v36 = llvm::APSInt::compareValues(&v43, &v40, a3);
            v38 = v36;
            if (v41 >= 0x41 && v40)
            {
              MEMORY[0x277C69E10](v40, 0x1000C8000313F17);
            }

            if (v44 >= 0x41 && v43)
            {
              MEMORY[0x277C69E10](v43, 0x1000C8000313F17);
            }

            v39 = this - 32 * (*(this + 5) & 0x7FFFFFF);
            if (!v38)
            {
              v26 = *(v39 + 4);
              goto LABEL_44;
            }

            Element = llvm::ConstantExpr::getExtractElement(*v39, a2, 0, v37);
            goto LABEL_37;
          }
        }

        else if (v19 == 34)
        {
          v43 = v45;
          a5.n128_u64[0] = 0x800000000;
          v44 = 0x800000000;
          v20 = *(this + 5);
          v21 = v20 & 0x7FFFFFF;
          if ((v20 & 0x7FFFFFFu) >= 9)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v21, 8);
            LODWORD(v21) = *(this + 5) & 0x7FFFFFF;
          }

          if (v21)
          {
            v22 = v21;
            v23 = this;
            while (1)
            {
              v24 = *(v23 - 4 * (*(this + 5) & 0x7FFFFFF));
              if ((*(*v24 + 8) & 0xFE) == 0x12)
              {
                v24 = llvm::ConstantExpr::getExtractElement(*(v23 - 4 * (*(this + 5) & 0x7FFFFFF)), a2, 0, a4);
                if (!v24)
                {
                  break;
                }
              }

              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v43, v24);
              v23 = (v23 + 32);
              if (!--v22)
              {
                goto LABEL_29;
              }
            }

            v26 = 0;
          }

          else
          {
LABEL_29:
            v25 = 24;
            if (*(this + 16) == 62)
            {
              v25 = 64;
            }

            v26 = llvm::ConstantExpr::getWithOperands(this, v43, v44, *(v5 + 24), 0, *(this + v25), a5);
          }

          if (v43 != v45)
          {
            free(v43);
          }

          goto LABEL_44;
        }
      }

      Element = llvm::Constant::getAggregateElement(this, a2);
      if (Element)
      {
LABEL_37:
        v26 = Element;
LABEL_44:
        v33 = *MEMORY[0x277D85DE8];
        return v26;
      }

      v30 = (a2 + 24);
      v31 = *(v5 + 32);
      v32 = *(a2 + 8);
      if (v32 >= 0x41)
      {
        if (v32 - llvm::APInt::countLeadingZerosSlowCase(v30) > 0x40)
        {
          goto LABEL_43;
        }

        v30 = *v30;
      }

      if (*v30 < v31)
      {
        Element = llvm::Constant::getSplatValue(this, 0);
        if (Element)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_43:
    v26 = 0;
    goto LABEL_44;
  }

  v12 = *(v5 + 24);
  v13 = *MEMORY[0x277D85DE8];

  return llvm::UndefValue::get(v12, a2);
}

llvm::ConstantExpr *llvm::ConstantFoldInsertElementInstruction(llvm *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v4 = this;
  v27[16] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  if ((v5 - 11) > 1)
  {
    if (*(this + 16) == 13)
    {
      if (llvm::Constant::isNullValue(a2))
      {
LABEL_12:
        v12 = *MEMORY[0x277D85DE8];
        return v4;
      }

      v5 = *(a3 + 16);
    }

    if (v5 != 16 || (v11 = *v4, *(*v4 + 8) == 19))
    {
      v4 = 0;
      goto LABEL_12;
    }

    v13 = *(v11 + 8);
    v14 = (a3 + 24);
    v15 = *(a3 + 8);
    v16 = (a3 + 24);
    if (v15 >= 0x41)
    {
      if (v15 - llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) > 0x40)
      {
        goto LABEL_27;
      }

      v16 = *v14;
    }

    if (*v16 < v13)
    {
      v25 = v27;
      v26 = 0x1000000000;
      if (v13 >= 0x11)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v13, 8);
        v11 = *v4;
        v15 = *(a3 + 8);
      }

      if (v15 >= 0x41)
      {
        v14 = *v14;
      }

      v17 = 0;
      v18 = **v11;
      v19 = *v14;
      do
      {
        Element = a2;
        if (v19 != v17)
        {
          v21 = llvm::ConstantInt::get(v18 + 1992, v17);
          Element = llvm::ConstantExpr::getExtractElement(v4, v21, 0, v22, v23);
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v25, Element);
        ++v17;
      }

      while (v13 != v17);
      v4 = llvm::ConstantVector::get(v25, v26);
      if (v25 != v27)
      {
        free(v25);
      }

      goto LABEL_12;
    }

LABEL_27:
    v24 = *MEMORY[0x277D85DE8];
    v6 = v11;
    goto LABEL_3;
  }

  v6 = *this;
  v7 = *MEMORY[0x277D85DE8];
LABEL_3:

  return llvm::PoisonValue::get(v6, a2);
}

uint64_t llvm::ConstantFoldShuffleVectorInstruction(llvm::ConstantExpr *a1, llvm::ConstantExpr *a2, int *a3, _BOOL8 a4)
{
  LODWORD(v4) = a4;
  v39[32] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 24);
  if (a4)
  {
    v8 = a3;
    v11 = 4 * a4;
    v12 = 4 * a4;
    v13 = a3;
    while (*v13 == -1)
    {
      ++v13;
      v12 -= 4;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v18 = a3;
    while (!*v18)
    {
      ++v18;
      v11 -= 4;
      if (!v11)
      {
        v19 = llvm::ConstantInt::get((**v5 + 1992), 0, 0, a4);
        Element = llvm::ConstantExpr::getExtractElement(a1, v19, 0, v20);
        if (llvm::Constant::isNullValue(Element))
        {
          llvm::VectorType::get(v7, (v4 | ((v6 == 19) << 32)));
          v24 = *MEMORY[0x277D85DE8];

          return llvm::ConstantAggregateZero::get(v22, v23);
        }

        if (v6 != 19)
        {
          v35 = *MEMORY[0x277D85DE8];

          return llvm::ConstantVector::getSplat(v4, Element);
        }

        v6 = *(v5 + 8);
        break;
      }
    }

    if (v6 == 19)
    {
      v25 = 0;
    }

    else
    {
      v26 = *(v5 + 32);
      v37 = v39;
      v38 = 0x2000000000;
      v4 = v4;
      if (v4)
      {
        do
        {
          v28 = *v8++;
          v27 = v28;
          if (v28 == -1 || v27 >= 2 * v26)
          {
            v32 = llvm::UndefValue::get(v7, v27);
          }

          else
          {
            if (v27 >= v26)
            {
              v29 = llvm::ConstantInt::get((***a2 + 1992), (v27 - v26), 0, a4);
              v31 = a2;
            }

            else
            {
              v29 = llvm::ConstantInt::get((***a1 + 1992), v27, 0, a4);
              v31 = a1;
            }

            v32 = llvm::ConstantExpr::getExtractElement(v31, v29, 0, v30);
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v37, v32);
          --v4;
        }

        while (v4);
        v33 = v37;
        v34 = v38;
      }

      else
      {
        v34 = 0;
        v33 = v39;
      }

      v25 = llvm::ConstantVector::get(v33, v34);
      if (v37 != v39)
      {
        free(v37);
      }
    }

    v36 = *MEMORY[0x277D85DE8];
    return v25;
  }

  else
  {
LABEL_5:
    llvm::VectorType::get(*(*a1 + 24), (a4 | ((v6 == 19) << 32)));
    v16 = *MEMORY[0x277D85DE8];

    return llvm::UndefValue::get(v14, v15);
  }
}