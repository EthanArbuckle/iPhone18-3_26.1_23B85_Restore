void anonymous namespace::BitcodeReader::materializeMetadata(_anonymous_namespace_::BitcodeReader *this@<X0>, const llvm::Twine *a2@<X8>)
{
  v4 = *(this + 199);
  v5 = *(this + 200);
  while (v4 != v5)
  {
    llvm::SimpleBitstreamCursor::JumpToBit(this + 32, *v4, a2);
    if (*a2)
    {
      return;
    }

    llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(*(this + 97), 1, a2);
    if (*a2)
    {
      return;
    }

    ++v4;
  }

  v6 = *(this + 54);
  v15[0] = "llvm.linker.options";
  v16 = 259;
  if (!llvm::Module::getNamedMetadata(v6, v15))
  {
    ModuleFlag = llvm::Module::getModuleFlag(*(this + 54), "Linker Options", 0xEuLL);
    if (ModuleFlag)
    {
      v8 = ModuleFlag;
      inserted = llvm::Module::getOrInsertNamedMetadata(*(this + 54), "llvm.linker.options", 0x13uLL);
      v10 = *(v8 - 16);
      if ((v10 & 2) == 0)
      {
        v11 = (v8 - 16 - 8 * ((v10 >> 2) & 0xF));
        v12 = (v10 >> 6) & 0xF;
        if (!v12)
        {
          goto LABEL_7;
        }

LABEL_14:
        v13 = 8 * v12;
        do
        {
          v14 = *v11++;
          v15[0] = v14;
          llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(*(inserted + 48), v15);
          v13 -= 8;
        }

        while (v13);
        goto LABEL_7;
      }

      v11 = *(v8 - 32);
      v12 = *(v8 - 24);
      if (*(v8 - 24))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_7:
  *(this + 200) = *(this + 199);
  *a2 = 0;
}

uint64_t anonymous namespace::BitcodeReader::getIdentifiedStructTypes@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 1872);
  v4 = *(this + 1880);
  if (v4 != v3)
  {
    std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](a2, (v4 - v3) >> 3);
  }

  return this;
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::BitcodeReader(llvm::BitstreamCursor,llvm::StringRef,llvm::StringRef,llvm::LLVMContext &)::$_0,std::allocator<anonymous namespace::BitcodeReader::BitcodeReader(llvm::BitstreamCursor,llvm::StringRef,llvm::StringRef,llvm::LLVMContext &)::$_0>,llvm::Expected<llvm::Value *> ()(unsigned int,llvm::BasicBlock *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFBD8;
  a2[1] = v2;
  return result;
}

void anonymous namespace::BitcodeReader::materializeValue(_anonymous_namespace_::BitcodeReader *this, void *a2, llvm::BasicBlock *a3, llvm::BasicBlock *a4)
{
  v4 = a3;
  v6 = this;
  v152 = *MEMORY[0x277D85DE8];
  v132 = a3;
  v7 = a2[89];
  if (((a2[90] - v7) >> 5) > a3)
  {
    v8 = *(v7 + 32 * a3 + 16);
    if (v8)
    {
      if (*(v8 + 16) != 255)
      {
        *(this + 8) &= ~1u;
        *this = v8;
        goto LABEL_187;
      }
    }
  }

  v146 = 1;
  LODWORD(v147) = -1;
  v149 = -1;
  v150 = -1;
  v151 = -1;
  v9 = v145;
  v143 = v145;
  v144 = 0xC00000000;
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v143, a3);
  v10 = v144;
  if (v144)
  {
    v119 = (a4 + 40);
    do
    {
      while (1)
      {
        v11 = v143 + 4 * v10;
        v12 = *(v11 - 1);
        if ((llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(&v146, *(v11 - 1), &v133) & 1) == 0)
        {
          break;
        }

LABEL_12:
        LODWORD(v144) = --v10;
        if (!v10)
        {
          goto LABEL_178;
        }
      }

      v18 = a2[89];
      if (v12 >= ((a2[90] - v18) >> 5) || (v19 = *(v18 + 32 * v12 + 16)) == 0)
      {
        v133 = "Invalid value ID";
        v136 = 259;
      }

      if (*(v19 + 16) != 255)
      {
        LODWORD(v140) = v12;
        v141 = v19;
        llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(&v133, &v146, &v140, &v141);
        v10 = v144;
        goto LABEL_12;
      }

      v140 = v142;
      v141 = 0x600000000;
      v20 = *(v19 + 7);
      if (v20)
      {
        v21 = 4 * v20;
        do
        {
          v22 = *(v19 + v21 + 44);
          v133 = 0;
          v23 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(&v146, v22, &v133);
          v24 = v133;
          v25 = (v147 + 16 * v148);
          if (v146)
          {
            v25 = &v152;
          }

          if (v23)
          {
            v26 = v133 == v25;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v143, v22);
          }

          else
          {
            if (!v23)
            {
              v24 = v25;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v140, v24[1]);
          }

          v21 -= 4;
        }

        while (v21);
        v27 = v141;
        v28 = v140;
        if (v141 != *(v19 + 7))
        {
          v45 = 2;
          goto LABEL_95;
        }

        if (v141)
        {
          v29 = v140 + 8 * v141 - 8;
          if (v29 > v140)
          {
            v30 = v140 + 8;
            do
            {
              v31 = *(v30 - 1);
              *(v30 - 1) = *v29;
              *v29 = v31;
              v29 -= 8;
              v32 = v30 >= v29;
              v30 += 8;
            }

            while (!v32);
            v28 = v140;
          }
        }

        v137 = v139;
        v138 = 0x600000000;
        if (v27)
        {
          v33 = 8 * v27;
          do
          {
            v13 = *v28;
            if (*v28)
            {
              v34 = *(*v28 + 16) > 0x14u;
            }

            else
            {
              v34 = 1;
            }

            if (!v34)
            {
              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v137, v13);
            }

            ++v28;
            v33 -= 8;
          }

          while (v33);
        }
      }

      else
      {
        v137 = v139;
        v138 = 0x600000000;
      }

      v35 = *(v19 + 24);
      if (v35 <= 0xF9)
      {
        if (byte_2815AA2A0)
        {
          goto LABEL_51;
        }

        if (v35 - 13 > 0x11)
        {
          switch(v35)
          {
            case 0xCu:
              goto LABEL_51;
            case 0x39u:
              goto LABEL_51;
            case 0x22u:
              v50 = v19[5];
              v51 = *(v50 + 8);
              if (v51 == 19)
              {
                goto LABEL_51;
              }

              if (v51 == 21)
              {
                v17.n128_f64[0] = getTargetTypeInfo(v50);
                if (*(v52 + 8) == 19)
                {
                  goto LABEL_51;
                }
              }

              break;
          }
        }

        else if (((1 << v35) & 0x1FD4000) != 0)
        {
          goto LABEL_51;
        }
      }

      v36 = v138;
      if (v138 == v141)
      {
        v37 = *(v19 + 24);
        if ((v37 - 38) > 0xC)
        {
          if ((v37 - 13) > 0x11)
          {
            if (*(v19 + 24) > 0xF9u)
            {
              if (*(v19 + 24) > 0xFCu)
              {
                if (v37 == 253)
                {
                  Element = llvm::ConstantVector::get(v137, v138);
                }

                else if (v37 == 254)
                {
                  Element = llvm::ConstantArray::get(*v19, v137, v138);
                }

                else
                {
                  Element = llvm::ConstantStruct::get(*v19, v137, v138);
                }
              }

              else
              {
                if (v37 == 250)
                {
                  if (*(*v137 + 16))
                  {
                    v84 = 0;
                  }

                  else
                  {
                    v84 = *v137;
                  }

                  __src = v84;
                  if (!v84)
                  {
                    v133 = "blockaddress operand must be a function";
                    v136 = 259;
                  }

                  v85 = v9;
                  v86 = *(v19 + 8);
                  if (!v86)
                  {
                    v133 = "Invalid ID";
                    v136 = 259;
                  }

                  if (*(v84 + 9) == (v84 + 72))
                  {
                    v105 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::FindAndConstruct((a2 + 202), &__src);
                    v107 = v105 + 1;
                    v106 = v105[1];
                    v108 = v105[2];
                    if (v106 == v108)
                    {
                      v109 = v105;
                      std::deque<llvm::jitlink::Block *>::push_back(a2 + 205, &__src);
                      v106 = v109[1];
                      v108 = v109[2];
                    }

                    v110 = (v86 + 1);
                    if (v110 > (v108 - v106) >> 3)
                    {
                      std::vector<llvm::BasicBlock *>::resize(v107, v110);
                      v106 = *v107;
                    }

                    v88 = *(v106 + 8 * v86);
                    if (!v88)
                    {
                      v111 = a2[53];
                      v136 = 257;
                      llvm::BasicBlock::Create();
                    }
                  }

                  else
                  {
                    v87 = *(v84 + 10);
                    do
                    {
                      if (v87 == (v84 + 72))
                      {
                        v133 = "Invalid ID";
                        v136 = 259;
                      }

                      v87 = v87[1];
                      --v86;
                    }

                    while (v86);
                    if (v87)
                    {
                      v88 = (v87 - 3);
                    }

                    else
                    {
                      v88 = 0;
                    }
                  }

                  ShuffleVector = llvm::BlockAddress::get(v84, v88, v36);
                  v9 = v85;
                  goto LABEL_67;
                }

                if (v37 == 251)
                {
                  v67 = *v137;
                  if (!*v137 || v67[16] >= 4u)
                  {
                    v133 = "dso_local operand must be GlobalValue";
                    v136 = 259;
                  }

                  Element = llvm::DSOLocalEquivalent::get(v67, v13);
                }

                else
                {
                  v89 = *v137;
                  if (!*v137 || v89[16] >= 4u)
                  {
                    v133 = "no_cfi operand must be GlobalValue";
                    v136 = 259;
                  }

                  Element = llvm::NoCFIValue::get(v89, v13);
                }
              }
            }

            else if (*(v19 + 24) > 0x3Cu)
            {
              if (v37 == 61)
              {
                Element = llvm::ConstantExpr::getExtractElement(*v137, *(v137 + 1), 0, v14, v17);
              }

              else
              {
                if (v37 != 62)
                {
                  v133 = v135;
                  v134 = 0x1000000000;
                  llvm::ShuffleVectorInst::getShuffleMask(*(v137 + 2), &v133);
                  ShuffleVector = llvm::ConstantExpr::getShuffleVector(*v137, *(v137 + 1), v133, v134, 0);
                  if (v133 != v135)
                  {
                    free(v133);
                  }

                  goto LABEL_67;
                }

                Element = llvm::ConstantExpr::getInsertElement(*v137, *(v137 + 1), *(v137 + 2), 0, v15);
              }
            }

            else if ((v37 - 53) >= 2)
            {
              LODWORD(v82) = *(v19 + 8);
              v83 = v82 != -1;
              if (v82 == -1)
              {
                v82 = 0;
              }

              else
              {
                v82 = v82;
              }

              Element = llvm::ConstantExpr::getGetElementPtr(v19[5], *v137, (v137 + 8), v138 - 1, *(v19 + 25) != 0, v82 | (v83 << 32), 0);
            }

            else
            {
              Element = llvm::ConstantExpr::getCompare(*(v19 + 25), *v137, *(v137 + 1), 0);
            }
          }

          else
          {
            Element = llvm::ConstantExpr::get(v37, *v137, *(v137 + 1), *(v19 + 25), 0, v16);
          }

LABEL_66:
          ShuffleVector = Element;
        }

        else
        {
          ShuffleVector = llvm::UpgradeBitCastExpr(v37, *v137, *v19, v14);
          if (!ShuffleVector)
          {
            Element = llvm::ConstantExpr::getCast(*(v19 + 24), *v137, *v19, 0, v39);
            goto LABEL_66;
          }
        }

LABEL_67:
        llvm::ValueHandleBase::operator=((a2[89] + 32 * v12), ShuffleVector);
        LODWORD(__src) = v12;
        v125 = ShuffleVector;
        llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(&v133, &v146, &__src, &v125);
        LODWORD(v144) = v144 - 1;
        v45 = 2;
        goto LABEL_92;
      }

LABEL_51:
      if (!a4)
      {
        OpcodeName = llvm::Instruction::getOpcodeName(*(v19 + 24));
        if (*OpcodeName)
        {
          v133 = "Value referenced by initializer is an unsupported constant expression of type ";
          v135[0] = OpcodeName;
          v47 = 3;
        }

        else
        {
          v133 = "Value referenced by initializer is an unsupported constant expression of type ";
          v47 = 1;
        }

        LOBYTE(v136) = 3;
        HIBYTE(v136) = v47;
      }

      v120 = v9;
      v121 = v6;
      v41 = *(v19 + 24);
      if ((v41 - 38) > 0xC)
      {
        if (v41 == 12)
        {
          v48 = *v140;
          v133 = "constexpr";
          v136 = 259;
          v44 = llvm::UnaryOperator::Create(12, v48, &v133, a4);
        }

        else
        {
          if ((v41 - 13) <= 0x11)
          {
            v53 = *v140;
            v54 = *(v140 + 1);
            v133 = "constexpr";
            v136 = 259;
            v55 = llvm::BinaryOperator::Create(v41, v53, v54, &v133, a4);
            v49 = v55;
            v56 = v55[16];
            HIDWORD(v58) = v56 - 41;
            LODWORD(v58) = v56 - 41;
            v57 = v58 >> 1;
            v34 = v57 > 6;
            v59 = (1 << v57) & 0x47;
            if (!v34 && v59 != 0)
            {
              v61 = *(v19 + 25);
              if ((v61 & 2) != 0)
              {
                v55[17] |= 4u;
                v61 = *(v19 + 25);
              }

              if (v61)
              {
                v55[17] |= 2u;
              }
            }

            v34 = v56 > 0x37;
            v62 = (1 << v56) & 0xC1800000000000;
            v63 = v34 || v62 == 0;
            if (v63 || (*(v19 + 25) & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_89:
            *(v49 + 17) |= 2u;
            goto LABEL_63;
          }

          if (*(v19 + 24) > 0x3Du)
          {
            if (*(v19 + 24) > 0xFDu)
            {
              v75 = llvm::PoisonValue::get(*v19, v13);
              v76 = v75;
              if (v141)
              {
                v77 = 0;
                v115 = v140;
                v78 = 8 * v141;
                do
                {
                  v117 = v115[v77];
                  LODWORD(__src) = v77;
                  v133 = "constexpr.ins";
                  v136 = 259;
                  v79 = operator new(0xA0uLL);
                  *(v79 + 21) = *(v79 + 21) & 0x38000000 | 2;
                  *(v79 + 1) = 0;
                  *(v79 + 2) = 0;
                  *v79 = 0;
                  *(v79 + 5) = 0;
                  *(v79 + 6) = 0;
                  *(v79 + 4) = 0;
                  *(v79 + 8) = *v76;
                  v49 = v79 + 64;
                  *(v79 + 21) = 2;
                  *(v79 + 3) = v79 + 64;
                  *(v79 + 7) = v79 + 64;
                  *(v79 + 9) = 0;
                  v79[80] = 93;
                  v79[81] = 0;
                  *(v79 + 41) = 0;
                  *(v79 + 30) = 0;
                  *(v79 + 104) = 0u;
                  *(v79 + 88) = 0u;
                  v80 = v79 + 88;
                  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v119, (v79 + 64));
                  v81 = *v119;
                  v49[4] = v119;
                  *v80 = v81;
                  *(v81 + 8) = v80;
                  *v119 = v80;
                  v49[8] = v49 + 10;
                  v49[9] = 0x400000000;
                  llvm::InsertValueInst::init(v49, v76, v117, &__src, 1, &v133);
                  ++v77;
                  v76 = v49;
                  v78 -= 8;
                }

                while (v78);
              }

              else
              {
                v49 = v75;
              }

              goto LABEL_63;
            }

            if (v41 != 62)
            {
              if (v41 == 63)
              {
                v68 = operator new(0xA8uLL);
                v49 = v68 + 64;
                *(v68 + 21) = *(v68 + 21) & 0x38000000 | 2;
                *v68 = 0;
                *(v68 + 1) = 0;
                *(v68 + 2) = 0;
                *(v68 + 3) = v68 + 64;
                *(v68 + 4) = 0;
                *(v68 + 5) = 0;
                *(v68 + 6) = 0;
                *(v68 + 7) = v68 + 64;
                v69 = *v140;
                v70 = *(v140 + 1);
                v71 = *(v140 + 2);
                v133 = "constexpr";
                v136 = 259;
                llvm::ShuffleVectorInst::ShuffleVectorInst((v68 + 64), v69, v70, v71, &v133, a4);
              }

              else
              {
                *v118 = ***v19;
                v95 = llvm::PoisonValue::get(*v19, v13);
                v96 = v95;
                if (v141)
                {
                  v97 = 0;
                  v98 = v140;
                  v116 = (v140 + 8 * v141);
                  do
                  {
                    v99 = llvm::ConstantInt::get((*v118 + 1992), v97);
                    v100 = *v98;
                    v133 = "constexpr.ins";
                    v136 = 259;
                    v101 = operator new(0xA0uLL);
                    v49 = v101 + 96;
                    *(v101 + 29) = *(v101 + 29) & 0x38000000 | 3;
                    v102 = 96;
                    do
                    {
                      *v101 = 0;
                      *(v101 + 1) = 0;
                      *(v101 + 2) = 0;
                      *(v101 + 3) = v49;
                      v101 += 32;
                      v102 -= 32;
                    }

                    while (v102);
                    llvm::InsertElementInst::InsertElementInst(v49, v96, v100, v99, &v133, a4);
                    v97 = (v97 + 1);
                    ++v98;
                    v96 = v49;
                  }

                  while (v98 != v116);
                }

                else
                {
                  v49 = v95;
                }
              }

              goto LABEL_63;
            }

            v92 = *v140;
            v93 = *(v140 + 1);
            v94 = *(v140 + 2);
            v133 = "constexpr";
            v136 = 259;
            v44 = llvm::InsertElementInst::Create(v92, v93, v94, &v133, a4, v16);
          }

          else if (*(v19 + 24) > 0x38u)
          {
            if (v41 == 57)
            {
              v72 = *v140;
              v73 = *(v140 + 1);
              v74 = *(v140 + 2);
              v133 = "constexpr";
              v136 = 259;
              v44 = llvm::SelectInst::Create(v72, v73, v74, &v133, a4, v16);
            }

            else
            {
              v103 = *v140;
              v104 = *(v140 + 1);
              v133 = "constexpr";
              v136 = 259;
              v44 = llvm::ExtractElementInst::Create(v103, v104, &v133, a4, v15);
            }
          }

          else
          {
            if ((v41 - 53) >= 2)
            {
              v90 = v19[5];
              v91 = *v140;
              v133 = "constexpr";
              v136 = 259;
              v49 = llvm::GetElementPtrInst::Create(v90, v91, (v140 + 8), v141 - 1, &v133, a4);
              if (!*(v19 + 25))
              {
                goto LABEL_63;
              }

              goto LABEL_89;
            }

            v64 = *(v19 + 25);
            v65 = *v140;
            v66 = *(v140 + 1);
            v133 = "constexpr";
            v136 = 259;
            v44 = llvm::CmpInst::Create(v41, v64, v65, v66, &v133, a4);
          }
        }
      }

      else
      {
        v42 = *v140;
        v43 = *v19;
        v133 = "constexpr";
        v136 = 259;
        v44 = llvm::CastInst::Create(v41, v42, v43, &v133, a4);
      }

      v49 = v44;
LABEL_63:
      LODWORD(__src) = v12;
      v125 = v49;
      llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(&v133, &v146, &__src, &v125);
      v45 = 0;
      LODWORD(v144) = v144 - 1;
      v9 = v120;
      v6 = v121;
LABEL_92:
      if (v137 != v139)
      {
        free(v137);
      }

      v28 = v140;
LABEL_95:
      if (v28 != v142)
      {
        free(v28);
      }

      if ((v45 | 2) != 2)
      {
        goto LABEL_183;
      }

      v10 = v144;
    }

    while (v144);
  }

LABEL_178:
  v133 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(&v146, v4, &v133))
  {
    v112 = *(v133 + 1);
  }

  else
  {
    inserted = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::InsertIntoBucketImpl<unsigned int>(&v146, &v132, v133);
    v112 = 0;
    *inserted = v4;
    *(inserted + 1) = 0;
  }

  *(v6 + 8) &= ~1u;
  *v6 = v112;
LABEL_183:
  if (v143 != v9)
  {
    free(v143);
  }

  if ((v146 & 1) == 0)
  {
    MEMORY[0x277C69E30](v147, 8);
  }

LABEL_187:
  v114 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::BitcodeReaderBase::error(_anonymous_namespace_::BitcodeReaderBase *this, const llvm::Twine *a2, llvm::formatv_object_base **a3)
{
  llvm::Twine::str(a3, &v24);
  v5 = *(a2 + 415);
  if (v5 < 0)
  {
    v5 = *(a2 + 50);
  }

  if (v5)
  {
    std::operator+<char>();
    v6 = std::string::append(&v21, "' Reader: 'LLVM ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    llvm::AppleInternalGetFullBitcodeVersionString(v19);
    if ((v20 & 0x80u) == 0)
    {
      v8 = v19;
    }

    else
    {
      v8 = v19[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v9 = v20;
    }

    else
    {
      v9 = v19[1];
    }

    v10 = std::string::append(&v22, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v23, "')");
    v13 = v12->__r_.__value_.__r.__words[2];
    *__p = *&v12->__r_.__value_.__l.__data_;
    v17 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v17 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if (v17 >= 0)
    {
      v15 = HIBYTE(v17);
    }

    else
    {
      v15 = __p[1];
    }

    v4 = std::string::append(&v24, v14, v15);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v18 = 260;
  __p[0] = &v24;
  llvm::BitcodeErrorCategory(v4);
  operator new();
}

void std::vector<llvm::BasicBlock *>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v10);
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

llvm::InsertElementInst *llvm::InsertElementInst::Create(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::BasicBlock *a6)
{
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

  return llvm::InsertElementInst::InsertElementInst(v12, this, a2, a3, a4, a5);
}

void *llvm::GetElementPtrInst::Create(llvm::GetElementPtrInst *TypeAtIndex, uint64_t *a2, llvm::Value *a3, uint64_t a4, const llvm::Twine *a5, uint64_t a6)
{
  v12 = a4 + 1;
  v13 = llvm::User::operator new(0x50, a4 + 1);
  llvm::GetElementPtrInst::getGEPReturnType(TypeAtIndex, a2, a3, a4);
  *v13 = v14;
  v13[1] = 0;
  v15 = *(v13 + 5) & 0xC0000000 | v12 & 0x7FFFFFF;
  *(v13 + 4) = 62;
  *(v13 + 5) = v15;
  *(v13 + 5) = 0u;
  *(v13 + 14) = 0;
  *(v13 + 3) = 0u;
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a6 + 40, v13);
  v17 = *(a6 + 40);
  v13[4] = a6 + 40;
  v13[3] = v17;
  *(v17 + 8) = v13 + 3;
  *(a6 + 40) = v13 + 3;
  v13[8] = TypeAtIndex;
  if (a4)
  {
    v18 = (a3 + 8);
    v19 = 8 * a4 - 8;
    do
    {
      if (!v19)
      {
        break;
      }

      v20 = *v18++;
      TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v20, v16);
      v19 -= 8;
    }

    while (TypeAtIndex);
  }

  v13[9] = TypeAtIndex;
  llvm::GetElementPtrInst::init(v13, a2, a3, a4, a5);
  return v13;
}

llvm::Value *llvm::SelectInst::Create(llvm::SelectInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::BasicBlock *a6)
{
  v11 = operator new(0xA0uLL);
  v12 = (v11 + 96);
  *(v11 + 29) = *(v11 + 29) & 0x38000000 | 3;
  v13 = 96;
  v14 = v11;
  do
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = v12;
    v14 += 4;
    v13 -= 32;
  }

  while (v13);
  *(v11 + 120) = 0u;
  v15 = v11 + 120;
  *(v11 + 12) = *a2;
  *(v11 + 13) = 0;
  v16 = *(v11 + 29) & 0xC0000000 | 3;
  *(v11 + 28) = 85;
  *(v11 + 29) = v16;
  *(v11 + 136) = 0u;
  *(v11 + 38) = 0;
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a5 + 40, v12);
  v17 = *(a5 + 5);
  *v15 = v17;
  v15[1] = a5 + 40;
  *(v17 + 8) = v15;
  *(a5 + 5) = v15;
  llvm::SelectInst::init(v12, this, a2, a3);
  llvm::Value::setName(v12, a4);
  return v12;
}

llvm::ExtractElementInst *llvm::ExtractElementInst::Create(llvm::ExtractElementInst *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::BasicBlock *a5)
{
  v9 = operator new(0x80uLL);
  v9[21] = v9[21] & 0x38000000 | 2;
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = v9 + 16;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = v9 + 16;
  v10 = (v9 + 16);

  return llvm::ExtractElementInst::ExtractElementInst(v10, this, a2, a3, a4);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & (37 * a2);
  v7 = (v3 + 16 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 16 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v16 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(a2, *a3, &v16);
  v9 = v16;
  if (result)
  {
    v10 = a2 + 8;
    if (*a2)
    {
      v11 = 4;
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
    }

    v14 = 0;
    v15 = v10 + 16 * v11;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::InsertIntoBucketImpl<unsigned int>(a2, a3, v16);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v12 = a2 + 8;
    if (*a2)
    {
      v13 = 4;
    }

    else
    {
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
    }

    v15 = v12 + 16 * v13;
    v14 = 1;
  }

  *a1 = v9;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::InsertIntoBucketImpl<unsigned int>(_DWORD *a1, int *a2, _DWORD *a3)
{
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(a1, *a2, &v8);
  a3 = v8;
LABEL_6:
  *a1 += 2;
  if (*a3 != -1)
  {
    --a1[1];
  }

  return a3;
}

uint64_t llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = operator new(16 * a2, 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::moveFromOldBuckets(a1, v6, v6 + 16 * v7);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = *(a1 + v8 + 8);
    if (v10 <= 0xFFFFFFFD)
    {
      *v9 = v10;
      *(v9 + 1) = *(a1 + v8 + 16);
      v9 += 16;
    }

    v8 += 16;
  }

  while (v8 != 64);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(16 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 72;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = *(result + 8);
    v9 = v8 + 16 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 32);
  do
  {
    v14 = vdupq_n_s64(v10);
    v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2750C1210)));
    if (vuzp1_s16(v15, *v12.i8).u8[0])
    {
      *(v13 - 8) = -1;
    }

    if (vuzp1_s16(v15, *&v12).i8[2])
    {
      *(v13 - 4) = -1;
    }

    if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2750C1830)))).i32[1])
    {
      *v13 = -1;
      v13[4] = -1;
    }

    v10 += 4;
    v13 += 16;
  }

  while (((v11 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v10);
LABEL_17:
  while (a2 != a3)
  {
    v16 = *a2;
    if (*a2 <= 0xFFFFFFFD)
    {
      v18 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(v5, v16, &v18);
      v17 = v18;
      *v18 = *a2;
      *(v17 + 1) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 16;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::grow(a1, v7);
    v8 = 0;
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t std::__function::__value_func<llvm::Expected<llvm::Value *> ()(unsigned int,llvm::BasicBlock *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__base_destruct_at_end[abi:nn200100](uint64_t a1, llvm::ValueHandleBase *a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = *(v4 - 2);
    v4 = (v4 - 32);
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v4);
    }
  }

  *(a1 + 8) = a2;
}

void std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::BitstreamBlockInfo::BlockInfo>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::BitstreamBlockInfo::BlockInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 24);
      std::vector<std::pair<unsigned int,std::string>>::__destroy_vector::operator()[abi:nn200100](&v4);
      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 48));
      }

      v4 = (v3 - 72);
      std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v4);
      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void std::vector<std::pair<unsigned int,std::string>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned int,std::string>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<unsigned int,std::string>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void anonymous namespace::BitcodeReader::parseFunctionBody(void ***this, llvm::Function *a2, uint64_t ***a3)
{
  v818[12] = *MEMORY[0x277D85DE8];
  v784 = a3;
  llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 12, this);
  if (*this)
  {
    goto LABEL_1140;
  }

  v6 = *(a2 + 97);
  if (*(v6 + 24) >= 2u)
  {
    v808 = "Invalid function metadata: incoming forward references";
    v810[8] = 259;
  }

  *(a2 + 212) = 0;
  v7 = (a2 + 712);
  v764 = *(a2 + 90) - *(a2 + 89);
  v765 = *(v6 + 8);
  v8 = *(llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>,llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::FindAndConstruct(a2 + 592, &v784) + 8);
  v9 = llvm::Function::args(a3);
  if (v9 != v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = 1;
    do
    {
      llvm::BitcodeReaderValueList::push_back(a2 + 89, v11, ContainedTypeID);
      v11 = (v11 + 40);
      ++v13;
    }

    while (v11 != v12);
  }

  v15 = *(a2 + 90);
  v16 = *(a2 + 89);
  v783 = 0;
  v782 = 0;
  v811 = 1;
  v812 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v814 = v812;
  v17 = v818;
  v813 = v812;
  v815 = v812;
  v816 = v818;
  v18 = v810;
  v817 = 0x400000000;
  v780[2] = a2;
  v781 = 0;
  v780[0] = &v783;
  v780[1] = &v782;
  v766 = (a2 + 1488);
  v777 = 0;
  v778 = 0;
  v779 = 0;
  v808 = v810;
  *v767 = (v15 - v16) >> 5;
  *v809 = 0x4000000000;
  while (2)
  {
    llvm::BitstreamCursor::advance(a2 + 32, 0, &v806);
    if (v807)
    {
      v20 = v806;
      v806 = 0;
      *this = v20;
LABEL_10:
      v21 = 1;
      goto LABEL_11;
    }

    v19 = HIDWORD(v806);
    switch(v806)
    {
      case 2:
        if (SHIDWORD(v806) <= 14)
        {
          if (HIDWORD(v806) == 11)
          {
            if (!*this)
            {
              *v767 = (*(a2 + 90) - *(a2 + 89)) >> 5;
              v21 = 4;
              goto LABEL_11;
            }

            goto LABEL_10;
          }

          if (HIDWORD(v806) == 14)
          {
            goto LABEL_40;
          }
        }

        else
        {
          switch(HIDWORD(v806))
          {
            case 0xF:
              llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(*(a2 + 97), 0, this);
              goto LABEL_40;
            case 0x10:
              v30 = *(a2 + 212);
              llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataAttachment(*(a2 + 97), v784, *(a2 + 105), this);
              goto LABEL_40;
            case 0x12:
              goto LABEL_40;
          }
        }

        llvm::BitstreamCursor::SkipBlock((a2 + 32), this);
LABEL_40:
        if (*this)
        {
          v21 = 1;
        }

        else
        {
          v21 = 4;
        }

        goto LABEL_11;
      case 1:
        v21 = 7;
        goto LABEL_11;
      case 0:
        v796 = "Malformed block";
        v800 = 259;
    }

    v809[0] = 0;
    VirtualTypeID = -1;
    llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(v806), &v808, 0, &v804);
    if (v805)
    {
      v24 = v804;
      v804 = 0;
      *this = v24;
      v21 = 1;
      goto LABEL_796;
    }

    v25 = v804;
    switch(v804)
    {
      case 1:
        if (!v809[0] || !*v808)
        {
          goto LABEL_352;
        }

        v748 = v18;
        std::vector<llvm::BasicBlock *>::resize(v766, *v808);
        v199 = v784;
        v200 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::find(a2 + 1616, v784);
        if (*(a2 + 202) + 32 * *(a2 + 408) == v200)
        {
          if (*(a2 + 186) != *(a2 + 187))
          {
            v435 = *(a2 + 53);
            v800 = 257;
            operator new();
          }
        }

        else
        {
          v201 = v200;
          v202 = *(v200 + 16) - *(v200 + 8);
          v203 = *(a2 + 187) - *(a2 + 186);
          if (v202 >> 3 > (v203 >> 3))
          {
            v796 = "Invalid ID";
            v800 = 259;
          }

          v760 = v7;
          *v728 = v17;
          if ((v203 & 0x7FFFFFFF8) != 0)
          {
            v479 = 0;
            v480 = (v202 >> 3);
            v481 = (v203 >> 3);
            v482 = (v199 + 9);
            do
            {
              if (v479 >= v480 || (v483 = v201[1], (v484 = *(v483 + 8 * v479)) == 0))
              {
                v487 = *(a2 + 53);
                v800 = 257;
                llvm::BasicBlock::Create();
              }

              llvm::SymbolTableListTraits<llvm::BasicBlock>::addNodeToList((v199 + 9), *(v483 + 8 * v479));
              v485 = *v482;
              *(v484 + 24) = *v482;
              *(v484 + 32) = v482;
              v486 = v484 + 24;
              *(v485 + 8) = v486;
              *v482 = v486;
              (*v766)[v479] = *(v201[1] + 8 * v479);
              ++v479;
            }

            while (v481 != v479);
          }

          llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::erase(a2 + 202, v201);
          v17 = *v728;
          v7 = v760;
        }

        v783 = **v766;
        v21 = 4;
        v18 = v748;
        goto LABEL_796;
      case 2:
        v204 = v18;
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_361;
        }

        v205 = v789;
        if (v809[0] == v789)
        {
          goto LABEL_361;
        }

        v206 = __p.n128_u64[0];
        v207 = v785;
        v208 = *(a2 + 1712) ? v767[0] - *(v808 + v789) : *(v808 + v789);
        if (!FnValueByID || (v210 = (v205 + 2), v809[0] < v210) || (v211 = FnValueByID, DecodedBinaryOpcode = getDecodedBinaryOpcode(*(v808 + (v205 + 1)), *v206), DecodedBinaryOpcode == -1))
        {
LABEL_361:
          v796 = "Invalid record";
          v800 = 259;
        }

        v213 = DecodedBinaryOpcode;
        v800 = 257;
        v214 = llvm::BinaryOperator::Create(DecodedBinaryOpcode, v206, v211, &v796, 0);
        VirtualTypeID = v207;
        v215 = v214;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v214);
        if (v809[0] <= v210)
        {
          goto LABEL_989;
        }

        HIDWORD(v217) = v213 - 13;
        LODWORD(v217) = v213 - 13;
        v216 = v217 >> 1;
        if (v216 <= 6 && ((1 << v216) & 0x47) != 0)
        {
          v18 = v204;
          v218 = v808;
          v219 = *(v808 + v210);
          v117 = v215;
          if ((v219 & 2) != 0)
          {
            *(v215 + 17) |= 4u;
            v219 = v218[v210];
          }

          if (v219)
          {
            *(v215 + 17) |= 2u;
          }

          v21 = 9;
          goto LABEL_790;
        }

        if (v213 <= 0x1B && ((1 << v213) & 0xC180000) != 0)
        {
          if ((*(v808 + v210) & 1) == 0)
          {
LABEL_989:
            v21 = 9;
            v18 = v204;
            v117 = v215;
            goto LABEL_790;
          }

          v635 = *(v215 + 17) | 2;
        }

        else
        {
          if (!llvm::FPMathOperator::classof(v215))
          {
            goto LABEL_989;
          }

          v666 = *(v808 + v210) & 0x7E | (*(v808 + v210) >> 7) & 1 | -(*(v808 + v210) & 1);
          if (!v666)
          {
            goto LABEL_989;
          }

          v635 = *(v215 + 17) | (2 * v666);
        }

        *(v215 + 17) = v635;
        v21 = 9;
        v18 = v204;
        v117 = v215;
        goto LABEL_790;
      case 3:
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v769[0] = 0;
        {
          goto LABEL_788;
        }

        v236 = v785;
        if (v809[0] != v785 + 2)
        {
          goto LABEL_788;
        }

        v237 = v18;
        v238 = *(v808 + v785);
        VirtualTypeID = v238;
        DecodedCastOpcode = getDecodedCastOpcode(*(v808 + (v236 + 1)));
        v242 = DecodedCastOpcode == -1 || TypeByID == 0;
        if (!v242)
        {
          v456 = DecodedCastOpcode;
          *v727 = v17;
          v789 = 0;
          v457 = __p.n128_u64[0];
          v458 = llvm::UpgradeBitCastInst(DecodedCastOpcode, __p.n128_u64[0], TypeByID, &v789, v241);
          if (v458)
          {
            v459 = v458;
            v460 = v789;
            if (v789)
            {
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v789);
              v461 = v783;
              v462 = v783 + 40;
              llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v783 + 40, v460);
              v463 = *(v461 + 5);
              *(v460 + 3) = v463;
              *(v460 + 4) = v462;
              v464 = v460 + 24;
              *(v463 + 8) = v464;
              *(v461 + 5) = v464;
            }

            v18 = v237;
            v117 = v459;
          }

          else
          {
            if (!llvm::CastInst::castIsValid(v456, *v457, TypeByID))
            {
              v796 = "Invalid cast";
              v800 = 259;
            }

            v800 = 257;
            v117 = llvm::CastInst::Create(v456, v457, TypeByID, &v796, 0);
            v18 = v237;
          }

          v17 = *v727;
LABEL_209:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
          v21 = 9;
          goto LABEL_790;
        }

LABEL_304:
        v243 = "Invalid record";
        goto LABEL_305;
      case 4:
      case 30:
      case 43:
        v26 = v18;
        v769[0] = 0;
        if (v804 == 43)
        {
          v27 = *v808 != 0;
          v769[0] = 2;
          v28 = *(v808 + 2);
        }

        else
        {
          v29 = 0;
          v27 = v804 == 30;
          v28 = -1;
        }

        v789 = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          v796 = "Invalid record";
          v800 = 259;
        }

        if (v29)
        {
          v55 = v789;
          v56 = *v789;
          if ((*(*v789 + 8) & 0xFE) == 0x12)
          {
            v56 = **(v56 + 16);
          }

          v57 = &v798;
          v58 = *(v56 + 24);
          if (v58 && v58 != v29)
          {
            v796 = "Explicit gep type does not match pointee type of pointer operand";
            v800 = 259;
          }
        }

        else
        {
          v55 = v789;
          if ((*(*v789 + 8) & 0xFE) == 0x12)
          {
          }

          v57 = &v798;
        }

        v796 = &v798;
        v797 = 0x1000000000;
        if (v809[0] == v769[0])
        {
          v736 = v27;
          *v724 = v17;
          v286 = 0;
        }

        else
        {
          do
          {
            v785 = 0;
            v772[0] = 0;
            {
              __p.n128_u64[0] = "Invalid record";
              v795 = 259;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, v785);
          }

          while (v809[0] != v769[0]);
          v736 = v27;
          *v724 = v17;
          v57 = v796;
          v286 = v797;
        }

        v795 = 257;
        v287 = llvm::GetElementPtrInst::Create(v29, v55, v57, v286, &__p, 0);
        v288 = v287;
        VirtualTypeID = v28;
        v289 = *(v287 + 5);
        v18 = v26;
        v290 = v287;
        if ((v289 & 0x7FFFFFF) != 1)
        {
          v291 = 24;
          if (*(v287 + 16) == 62)
          {
            v291 = 64;
          }

          if ((v289 & 0x40000000) != 0)
          {
            v292 = *(v287 - 1);
          }

          else
          {
            v292 = v287 - 32 * (v289 & 0x7FFFFFF);
          }

          v401 = *(v287 + v291);
          v402 = (v292 + 32);
          std::next[abi:nn200100]<llvm::generic_gep_type_iterator<llvm::Use const*>,0>((v292 + 32), v401 | 4, 1);
          __p.n128_u64[0] = v402;
          __p.n128_u64[1] = v403;
          v404 = v288[5];
          if ((v404 & 0x40000000) != 0)
          {
            v406 = *(v288 - 1);
            v405 = v404 & 0x7FFFFFF;
          }

          else
          {
            v405 = v404 & 0x7FFFFFF;
            v406 = &v288[-8 * v405];
          }

          if (v405 != 2)
          {
            v407 = v406 + 16;
            v408 = 32 * v405 - 64;
            do
            {
              if ((__p.n128_u8[8] & 4) != 0)
              {
                v411 = 0;
              }

              else
              {
                SplatValue = *v407;
                if ((*(**v407 + 8) & 0xFE) == 0x12)
                {
                  SplatValue = llvm::Constant::getSplatValue(SplatValue, 0);
                }

                v410 = SplatValue + 6;
                if (SplatValue[8] >= 0x41u)
                {
                  v410 = *v410;
                }

                v411 = *v410;
              }

              llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(&__p);
              v407 += 8;
              v408 -= 32;
            }

            while (v408);
          }

          v288 = v290;
        }

        v412 = *v288;
        if ((*(*v288 + 8) & 0xFE) == 0x12)
        {
          v412 = **(v412 + 16);
        }

        if ((*(*v290 + 8) & 0xFE) == 0x12)
        {
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v290);
        if (v736)
        {
          *(v290 + 17) |= 2u;
        }

        v21 = 9;
        v117 = v290;
        v17 = *v724;
        v558 = v796;
        v413 = &v798;
        goto LABEL_901;
      case 5:
        v160 = v17;
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        v161 = **(a2 + 53);
        {
          goto LABEL_360;
        }

        v162 = v789;
        if (v809[0] == v789)
        {
          goto LABEL_360;
        }

        v163 = __p.n128_u64[0];
        v164 = v785;
        v165 = *(a2 + 1712) ? v767[0] - *(v808 + v789) : *(v808 + v789);
        {
LABEL_360:
          v796 = "Invalid record";
          v800 = 259;
        }

        v172 = v171;
        v173 = v164;
        v800 = 257;
        v174 = operator new(0xA0uLL);
        v117 = (v174 + 24);
        v174[29] = v174[29] & 0x38000000 | 3;
        v175 = 96;
        do
        {
          *v174 = 0;
          *(v174 + 1) = 0;
          *(v174 + 2) = 0;
          *(v174 + 3) = v117;
          v174 += 8;
          v175 -= 32;
        }

        while (v175);
        llvm::SelectInst::SelectInst(v117, v172, v163, v167, &v796, 0);
        VirtualTypeID = v173;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
        v21 = 9;
        v17 = v160;
        goto LABEL_790;
      case 6:
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v789 = 0;
        v769[0] = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        if ((*(*__p.n128_u64[0] + 8) & 0xFE) == 0x12)
        {
          v800 = 257;
          v117 = llvm::ExtractElementInst::Create(__p.n128_u64[0], v789, &v796, v244, v245);
LABEL_358:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
LABEL_359:
          v21 = 9;
          goto LABEL_790;
        }

        v327 = "Invalid type for value";
        goto LABEL_434;
      case 7:
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v789 = 0;
        v769[0] = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v184 = __p.n128_u64[0];
        if ((*(*__p.n128_u64[0] + 8) & 0xFE) == 0x12)
        {
          v185 = v18;
          v186 = *(*__p.n128_u64[0] + 24);
          v187 = v769[0];
          v189 = v785;
          {
            v796 = "Invalid record";
            v800 = 259;
          }

          v800 = 257;
          v117 = llvm::InsertElementInst::Create(v184, v192, v789, &v796, v193, v194);
          VirtualTypeID = v187;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
          v21 = 9;
          v18 = v185;
          goto LABEL_790;
        }

        v102 = "Invalid type for value";
        goto LABEL_789;
      case 8:
        v62 = v18;
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v789 = 0;
        v769[0] = 0;
        {
          goto LABEL_304;
        }

        v220 = v785;
        if (v809[0] == v785)
        {
          goto LABEL_304;
        }

        v221 = __p.n128_u64[0];
        v222 = v769[0];
        v223 = *(a2 + 1712) ? v767[0] - *(v808 + v785) : *(v808 + v785);
        if (!v224)
        {
          goto LABEL_304;
        }

        v225 = v224;
        LODWORD(v785) = v220 + 1;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_304;
        }

        if ((*(*v221 + 8) & 0xFE) != 0x12 || (*(*v225 + 8) & 0xFE) != 0x12)
        {
          v243 = "Invalid type for value";
LABEL_305:
          v796 = v243;
          v800 = 259;
        }

        v226 = v17;
        v227 = operator new(0xA8uLL);
        v227[21] = v227[21] & 0x38000000 | 2;
        *v227 = 0;
        *(v227 + 1) = 0;
        *(v227 + 2) = 0;
        *(v227 + 3) = v227 + 16;
        *(v227 + 4) = 0;
        *(v227 + 5) = 0;
        *(v227 + 6) = 0;
        *(v227 + 7) = v227 + 16;
        v800 = 257;
        v228 = v225;
        v117 = (v227 + 16);
        llvm::ShuffleVectorInst::ShuffleVectorInst((v227 + 16), v221, v228, v789, &v796, 0);
        v229 = *(v227 + 8);
        v17 = v226;
        goto LABEL_785;
      case 9:
      case 28:
        v39 = v18;
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_741;
        }

        v40 = v789;
        if (v809[0] == v789)
        {
          goto LABEL_741;
        }

        v41 = __p.n128_u64[0];
        v42 = *(a2 + 1712) ? v767[0] - *(v808 + v789) : *(v808 + v789);
        if (!v43)
        {
          goto LABEL_741;
        }

        v44 = v40 + 1;
        if (v809[0] > (v40 + 1))
        {
          v45 = v43;
          v46 = *v41;
          v47 = *(*v41 + 2);
          LOBYTE(v48) = v47;
          if ((v47 & 0xFE) == 0x12)
          {
            v48 = *(**(v46 + 2) + 8);
          }

          v49 = *(v808 + v44);
          if ((v48 < 4u || v48 == 5 || (v48 & 0xFD) == 4) && v809[0] > (v40 + 2))
          {
            LODWORD(v789) = v40 + 2;
            v50 = *(v808 + (v40 + 2)) & 0x7E | (*(v808 + (v40 + 2)) >> 7) & 1 | -(*(v808 + (v40 + 2)) & 1);
            v44 = v40 + 2;
          }

          else
          {
            v50 = 0;
          }

          if (v809[0] == v44 + 1)
          {
            if ((v47 & 0xFE) == 0x12)
            {
              v47 = *(**(v46 + 2) + 8);
            }

            if (v47 < 4u || v47 == 5 || (v47 & 0xFD) == 4)
            {
              v497 = operator new(0x80uLL);
              v497[21] = v497[21] & 0x38000000 | 2;
              v498 = (v497 + 16);
              *v497 = 0;
              *(v497 + 1) = 0;
              *(v497 + 2) = 0;
              *(v497 + 3) = v497 + 16;
              *(v497 + 4) = 0;
              *(v497 + 5) = 0;
              *(v497 + 6) = 0;
              *(v497 + 7) = v497 + 16;
              v800 = 257;
              llvm::FCmpInst::FCmpInst(v497 + 32, v49, v41, v45, &v796);
            }

            else
            {
              v607 = operator new(0x80uLL);
              v607[21] = v607[21] & 0x38000000 | 2;
              v498 = (v607 + 16);
              *v607 = 0;
              *(v607 + 1) = 0;
              *(v607 + 2) = 0;
              *(v607 + 3) = v607 + 16;
              *(v607 + 4) = 0;
              *(v607 + 5) = 0;
              *(v607 + 6) = 0;
              *(v607 + 7) = v607 + 16;
              v800 = 257;
              llvm::ICmpInst::ICmpInst(v607 + 32, v49, v41, v45, &v796);
            }

            v499 = *v498;
            v18 = v39;
            v117 = v498;
            if ((*(*v498 + 8) & 0xFE) == 0x12)
            {
              v499 = **(v499 + 16);
            }

            if ((*(*v41 + 2) & 0xFE) == 0x12)
            {
            }

            if (v50)
            {
              v498[17] |= 2 * v50;
            }

            goto LABEL_209;
          }

          goto LABEL_741;
        }

        v427 = "Invalid record: operand number exceeded available operands";
        goto LABEL_633;
      case 10:
        if (!v809[0])
        {
          v117 = llvm::ReturnInst::Create(*(a2 + 53), 0);
LABEL_409:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
          goto LABEL_791;
        }

        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_433;
        }

        v117 = llvm::ReturnInst::Create(*(a2 + 53), __p.n128_i64[0]);
        goto LABEL_358;
      case 11:
        if ((v809[0] | 2) != 3)
        {
          goto LABEL_352;
        }

        v258 = *v808;
        v259 = *(a2 + 186);
        v260 = (*(a2 + 187) - v259) >> 3;
        if (v260 <= v258)
        {
          goto LABEL_397;
        }

        v261 = *(v259 + 8 * v258);
        if (!v261)
        {
          goto LABEL_397;
        }

        if (v809[0] == 1)
        {
          v153 = llvm::BranchInst::Create(*(v259 + 8 * v258), v19, v23);
LABEL_693:
          v117 = v153;
        }

        else
        {
          v490 = v18;
          v491 = *(v808 + 2);
          if (v260 <= v491)
          {
            v492 = 0;
          }

          else
          {
            v492 = *(v259 + 8 * v491);
          }

          v519 = **(a2 + 53);
          {
LABEL_761:
            v796 = "Invalid record";
            v800 = 259;
          }

          v117 = llvm::BranchInst::Create(v261, v492, v522, v523, v524);
          v18 = v490;
        }

        goto LABEL_409;
      case 12:
        v246 = *v808;
        if (*v808 >> 16 != 1205)
        {
          if (v809[0] < 3u || (v809[0] & 1) == 0)
          {
LABEL_397:
            v796 = "Invalid record";
            v800 = 259;
          }

          v749 = v18;
          v310 = v17;
          if (v809[0] == 1)
          {
            v311 = 0;
          }

          else
          {
            if (*(a2 + 1712))
            {
              v465 = v767[0] - *(v808 + 2);
            }

            else
            {
              v465 = *(v808 + 2);
            }
          }

          v466 = *(v808 + 4);
          v467 = *(a2 + 186);
          if (v466 >= (*(a2 + 187) - v467) >> 3 || !v309 || !v311 || (v468 = *(v467 + 8 * v466)) == 0)
          {
            v796 = "Invalid record";
            v800 = 259;
          }

          v469 = v809[0] + 0x1FFFFFFFDLL;
          v470 = operator new(0x48uLL);
          v470[7] = v470[7] & 0x38000000 | 0x40000000;
          *v470 = 0;
          v471 = v311;
          v117 = (v470 + 2);
          llvm::SwitchInst::SwitchInst((v470 + 2), v471, v468, v469 >> 1, 0);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
          if ((v469 >> 1))
          {
            v472 = (v469 >> 1);
            v473 = 4;
            v17 = v310;
            do
            {
              if (v474)
              {
                if (*(v474 + 16) == 16)
                {
                  v475 = v474;
                }

                else
                {
                  v475 = 0;
                }
              }

              else
              {
                v475 = 0;
              }

              v476 = *(v808 + 2 * v473);
              v477 = *(a2 + 186);
              if (v476 >= (*(a2 + 187) - v477) >> 3 || !v475 || (v478 = *(v477 + 8 * v476)) == 0)
              {
                llvm::Instruction::~Instruction(v117, v475);
                llvm::User::operator delete(v567);
                v796 = "Invalid record";
                v800 = 259;
              }

              llvm::SwitchInst::addCase(v117, v475, v478);
              v473 += 2;
              --v472;
            }

            while (v472);
            v18 = v749;
          }

          else
          {
            v17 = v310;
            v18 = v749;
          }

          goto LABEL_791;
        }

        v247 = *(v808 + 2);
        v249 = *(v248 + 2);
        if (v809[0] == 2)
        {
          v250 = v18;
          v251 = 0;
        }

        else
        {
          v250 = v18;
          if (*(a2 + 1712))
          {
            v342 = v767[0] - *(v808 + 4);
          }

          else
          {
            v342 = *(v808 + 4);
          }
        }

        v343 = *(v808 + 6);
        v344 = *(a2 + 186);
        if (v343 < (*(a2 + 187) - v344) >> 3)
        {
          if (v251)
          {
            v345 = *(v344 + 8 * v343);
            if (v345)
            {
              v737 = v249;
              v346 = *(v808 + 8);
              v347 = operator new(0x48uLL);
              v117 = (v347 + 2);
              v347[7] = v347[7] & 0x38000000 | 0x40000000;
              *v347 = 0;
              llvm::SwitchInst::SwitchInst((v347 + 2), v251, v345, v346, 0);
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
              v717 = v346;
              if (!v346)
              {
                v18 = v250;
                goto LABEL_791;
              }

              v750 = v250;
              v758 = v7;
              *v726 = v17;
              v348 = 0;
              v349 = v737 >> 8;
              v350 = 5;
LABEL_466:
              v738 = v348;
              v796 = &v798;
              v797 = 0x100000000;
              v351 = v350 + 1;
              v352 = v808;
              v353 = *(v808 + v350);
              if (!v353)
              {
                goto LABEL_498;
              }

              v354 = 0;
LABEL_468:
              v355 = v117;
              v356 = v351 + 1;
              v357 = *(v808 + v351);
              LODWORD(v117) = 1;
              __p.n128_u32[2] = 1;
              __p.n128_u64[0] = 0;
              if (v349 >= 0x41)
              {
                v117 = *(v808 + v356);
                v356 = v351 + 2;
              }

              llvm::readWideAPInt(v808 + v356, v117, v349, &v789);
              if (__p.n128_u32[2] >= 0x41 && __p.n128_u64[0])
              {
                MEMORY[0x277C69E10](__p.n128_u64[0], 0x1000C8000313F17);
              }

              __p.n128_u64[0] = v789;
              __p.n128_u32[2] = v790;
              v351 = v356 + v117;
              if (v357)
              {
                v360 = llvm::ConstantInt::get(*(a2 + 53), &__p, v358, v359);
                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, v360);
                v117 = v355;
                goto LABEL_493;
              }

              v117 = v355;
              if (v349 < 0x41)
              {
                LODWORD(v361) = 1;
              }

              else
              {
                v361 = *(v808 + v351++);
              }

              llvm::readWideAPInt(v808 + v351, v361, v349, &v789);
              while (1)
              {
                if (__p.n128_u32[2] > 0x40)
                {
                  v364 = v789;
                  v365 = ((__p.n128_u32[2] + 63) >> 3) & 0x3FFFFFF8;
                  while (v365)
                  {
                    v366 = *(__p.n128_u64[0] - 8 + v365);
                    v367 = *(v789 + v365 - 8);
                    v365 -= 8;
                    if (v366 != v367)
                    {
                      if (v366 > v367)
                      {
                        goto LABEL_487;
                      }

                      break;
                    }
                  }
                }

                else
                {
                  v364 = v789;
                  if (__p.n128_u64[0] > v789)
                  {
LABEL_487:
                    if (v790 >= 0x41 && v364 != 0)
                    {
                      MEMORY[0x277C69E10]();
                    }

                    v351 += v361;
LABEL_493:
                    if (__p.n128_u32[2] >= 0x41 && __p.n128_u64[0])
                    {
                      MEMORY[0x277C69E10](__p.n128_u64[0], 0x1000C8000313F17);
                    }

                    if (++v354 == v353)
                    {
                      v352 = v808;
LABEL_498:
                      v370 = v352[2 * v351];
                      v371 = *(a2 + 186);
                      if (v370 >= (*(a2 + 187) - v371) >> 3)
                      {
                        v372 = 0;
                      }

                      else
                      {
                        v372 = *(v371 + 8 * v370);
                      }

                      v373 = v796;
                      if (v797)
                      {
                        v374 = 8 * v797;
                        do
                        {
                          v375 = *v373++;
                          llvm::SwitchInst::addCase(v117, v375, v372);
                          v374 -= 8;
                        }

                        while (v374);
                        v373 = v796;
                      }

                      v18 = v750;
                      if (v373 != &v798)
                      {
                        free(v373);
                      }

                      v350 = v351 + 1;
                      v348 = v738 + 1;
                      if (v738 + 1 == v717)
                      {
                        v17 = *v726;
                        v7 = v758;
                        goto LABEL_791;
                      }

                      goto LABEL_466;
                    }

                    goto LABEL_468;
                  }
                }

                v368 = llvm::ConstantInt::get(*(a2 + 53), &__p, v362, v363);
                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, v368);
                llvm::APInt::operator++(&__p);
              }
            }
          }
        }

        goto LABEL_761;
      case 13:
        if (v809[0] <= 3u)
        {
          goto LABEL_352;
        }

        v252 = (*v808 - 1);
        v253 = *(a2 + 180);
        if (v252 >= (*(a2 + 181) - v253) >> 3)
        {
          v254 = 0;
        }

        else
        {
          v254 = *(v253 + 8 * v252);
        }

        v376 = *(v808 + 4);
        v377 = *(a2 + 186);
        v378 = (*(a2 + 187) - v377) >> 3;
        if (v378 <= v376)
        {
          v379 = 0;
        }

        else
        {
          v379 = *(v377 + 8 * v376);
        }

        v380 = *(v808 + 1);
        LODWORD(v768.__r_.__value_.__l.__data_) = 4;
        v381 = *(v808 + 6);
        if (v378 <= v381)
        {
          v739 = 0;
        }

        else
        {
          v739 = *(v377 + 8 * v381);
        }

        v759 = v7;
        v382 = v17;
        if ((v380 & 0x2000) != 0)
        {
          LODWORD(v768.__r_.__value_.__l.__data_) = 5;
          v384 = *(v808 + 8);
          if (!v385 || (v383 = v385, *(v385 + 8) != 14))
          {
            v386 = "Explicit invoke type is not a function type";
            goto LABEL_867;
          }
        }

        else
        {
          v383 = 0;
          v384 = -1;
        }

        v785 = 0;
        v772[0] = 0;
        {
          v386 = "Invalid record";
          goto LABEL_867;
        }

        v422 = v785;
        v423 = *v785;
        if (*v785 && *(v423 + 8) == 15)
        {
          if (v383)
          {
            v424 = *(v423 + 24);
            if (v424 && v424 != v383)
            {
              v386 = "Explicit invoke type does not match pointee type of callee operand";
              goto LABEL_867;
            }

LABEL_840:
            v730 = v379;
            v554 = v809[0];
            v555 = (*(v383 + 12) - 1);
            data = v768.__r_.__value_.__l.__data_;
            if (v809[0] < (v555 + LODWORD(v768.__r_.__value_.__l.__data_)))
            {
              v796 = "Insufficient operands to call";
              v800 = 259;
            }

            v718 = v254;
            v796 = &v798;
            v797 = 0x1000000000;
            __p.n128_u64[0] = v794;
            __p.n128_u64[1] = 0x1000000000;
            v753 = v18;
            v711 = v422;
            if (v555)
            {
              v574 = 1;
              while (1)
              {
                if (data == v809[0])
                {
                  v576 = 0;
                }

                else
                {
                  v577 = *(a2 + 1712) ? v767[0] - *(v808 + data) : *(v808 + data);
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, v576);
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v575);
                if (!*(v796 + v797 - 1))
                {
                  break;
                }

                ++data;
                ++v574;
                if (!--v555)
                {
                  v554 = v809[0];
                  goto LABEL_886;
                }
              }

              LODWORD(v768.__r_.__value_.__l.__data_) = data;
LABEL_970:
              v789 = "Invalid record";
              v792 = 259;
            }

LABEL_886:
            LODWORD(v768.__r_.__value_.__l.__data_) = data;
            if (*(v383 + 8) < 0x100u)
            {
              if (v554 != data)
              {
                goto LABEL_970;
              }
            }

            else if (v554 != data)
            {
              do
              {
                *v769 = 0;
                v773 = 0;
                {
                  goto LABEL_970;
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, *v769);
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v773);
              }

              while (v809[0] != LODWORD(v768.__r_.__value_.__l.__data_));
            }

            v605 = v777;
            if (v777 == v778)
            {
              v606 = v777;
            }

            else
            {
              llvm::UpgradeOperandBundles(&v777);
              v606 = v777;
              v605 = v778;
            }

            v792 = 257;
            v624 = llvm::InvokeInst::Create(v383, v711, v730, v739, v796, v797, v606, 0xAAAAAAAAAAAAAAABLL * ((v605 - v606) >> 4), &v789, 0);
            v625 = v777;
            for (i = v778; i != v625; std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](&v777, i))
            {
              i -= 48;
            }

            v778 = v625;
            llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v624);
            v627 = 4 * (v380 & 0x3FF);
            v117 = v624;
            *(v624 + 9) = *(v624 + 9) & 0xF003 | v627;
            *(v624 + 8) = v718;
            if (*this)
            {
              llvm::Value::deleteValue(v624, v19);
              v21 = 1;
            }

            else
            {
              v21 = 9;
            }

            v17 = v382;
            v18 = v753;
            v7 = v759;
            v628 = __p.n128_u64[0];
            if (__p.n128_u64[0] == v794)
            {
LABEL_775:
              v558 = v796;
              v413 = &v798;
              goto LABEL_901;
            }

LABEL_1110:
            free(v628);
            goto LABEL_775;
          }

          v552 = v785;
          if (v553)
          {
            v422 = v552;
            v383 = v553;
            if (*(v553 + 8) == 14)
            {
              goto LABEL_840;
            }
          }

          v386 = "Callee is not of pointer to function type";
        }

        else
        {
          v386 = "Callee is not a pointer";
        }

LABEL_867:
        v796 = v386;
        v800 = 259;
      case 15:
        v117 = operator new(0x40uLL);
        *(v117 + 20) &= 0x38000000u;
        *v117 = **(a2 + 53) + 1608;
        *(v117 + 8) = 0;
        *(v117 + 16) = 35;
        *(v117 + 33) = 0u;
        *(v117 + 44) = 0u;
        *(v117 + 17) = 0u;
        goto LABEL_409;
      case 16:
        if (v809[0])
        {
          v755 = v7;
          v723 = *v808;
          if (!v118)
          {
            v796 = "Invalid phi record";
            v800 = 259;
          }

          v119 = v118;
          v120 = v809[0] - 1;
          v800 = 257;
          v121 = operator new(0x48uLL);
          v122 = (v121 + 8);
          *(v121 + 7) = *(v121 + 7) & 0x38000000 | 0x40000000;
          *v121 = 0;
          v715 = v120 >> 1;
          llvm::PHINode::PHINode((v121 + 8), v119, v120 >> 1, &v796, 0);
          if ((v809[0] & 1) == 0 && !llvm::FPMathOperator::classof(v122))
          {
            llvm::Value::deleteValue(v122, v123);
            v796 = "Invalid phi record";
            v800 = 259;
          }

          v709 = v121;
          v735 = (v121 + 8);
          v747 = v18;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v122);
          v796 = 1;
          v797 = -4096;
          v799 = -4096;
          v801 = -4096;
          v802 = -4096;
          if (v120 >= 2)
          {
            v124 = 1;
            v125 = 1;
            v126 = v120 >> 1;
            do
            {
              v127 = *(v808 + 2 * v124 + 2);
              v128 = *(a2 + 186);
              if (v127 >= (*(a2 + 187) - v128) >> 3 || (v129 = *(v128 + 8 * v127)) == 0)
              {
                llvm::Value::deleteValue(v735, v19);
                __p.n128_u64[0] = "Invalid phi BB";
                v795 = 259;
              }

              v130 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::find(&v796, *(v128 + 8 * v127));
              v131 = (v797 + 16 * v798);
              if (v796)
              {
                v131 = &v803;
              }

              if (v131 == v130)
              {
                __p.n128_u64[0] = v129;
                __p.n128_u64[1] = v783;
                v132 = llvm::MapVector<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *,llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,llvm::SmallVector<std::pair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *>,4u>>::lookup(&v811, &__p);
                if (!v132)
                {
                  v134 = *(a2 + 53);
                  __p.n128_u64[0] = "phi.constexpr";
                  v795 = 259;
                  llvm::BasicBlock::Create();
                }

                if (*(a2 + 1712) == 1)
                {
                }

                else
                {
                  if (v124 == v809[0])
                  {
                    goto LABEL_872;
                  }
                }

                v136 = ValueSigned;
                if (!ValueSigned)
                {
LABEL_872:
                  llvm::Value::deleteValue(v735, v133);
                  llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::erase(MEMORY[0x38] + 72, 24);
                  __p.n128_u64[0] = "Invalid phi record";
                  v795 = 259;
                }

                llvm::PHINode::addIncoming(v735, ValueSigned, v129);
                v789 = v129;
                v790 = v136;
                llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::try_emplace<llvm::Value *>(&__p, &v796, &v789, &v790);
                v126 = v715;
              }

              else
              {
                llvm::PHINode::addIncoming(v735, v130[1], v129);
              }

              v242 = v126 == v125++;
              v124 += 2;
            }

            while (!v242);
          }

          VirtualTypeID = v723;
          if (v809[0])
          {
            v21 = 9;
            v18 = v747;
            v7 = v755;
            v117 = v735;
          }

          else
          {
            v137 = *(v808 + 2 * v809[0] - 2);
            v138 = v137 & 0x7E | (v137 >> 7) & 1 | -(v137 & 1);
            v18 = v747;
            v7 = v755;
            v117 = v735;
            if (v138)
            {
              v709[25] |= 2 * v138;
            }

            v21 = 9;
          }

          if ((v796 & 1) == 0)
          {
            MEMORY[0x277C69E30](v797, 8);
          }

          goto LABEL_790;
        }

        v284 = "Invalid phi record";
        goto LABEL_353;
      case 19:
        if ((v809[0] & 0xFFFFFFFE) != 4)
        {
          goto LABEL_352;
        }

        v176 = *(v808 + 3);
        LODWORD(v789) = *v808;
        {
          v178 = v177;
          v96 = v18;
          v179 = *(v808 + 2);
          LOWORD(v785) = 0;
          if (!*this)
          {
            if (v178 && v181)
            {
              v182 = *(a2 + 54);
              if (v809[0] == 5)
              {
                v183 = *(v808 + 8);
              }

              else
              {
                v183 = *(v182 + 260);
              }

              v796 = &v800;
              v797 = &v800;
              v798 = 4;
              LODWORD(v799) = 0;
              if (BYTE1(v785) == 1)
              {
                v763 = v7;
                *v729 = v17;
                Alignment = v785;
              }

              else
              {
                if ((llvm::Type::isSized(v178, &v796) & 1) == 0)
                {
                  __p.n128_u64[0] = "alloca of unsized type";
                  v795 = 259;
                }

                v763 = v7;
                *v729 = v17;
                Alignment = llvm::DataLayout::getAlignment((v182 + 256), v178, 0);
                LOWORD(v785) = Alignment | 0x100;
              }

              v543 = operator new(0x68uLL);
              *(v543 + 13) = *(v543 + 13) & 0x38000000 | 1;
              *v543 = 0;
              *(v543 + 1) = 0;
              *(v543 + 2) = 0;
              *(v543 + 3) = v543 + 32;
              v795 = 257;
              v544 = v183;
              v117 = (v543 + 32);
              llvm::AllocaInst::AllocaInst((v543 + 32), v178, v544, v181, Alignment, &__p, 0);
              *(v543 + 25) = v176 & 0x80 | (((v176 >> 5) & 1) << 6) | *(v543 + 25) & 0xFF3F;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, (v543 + 32));
              v21 = 9;
              v17 = *v729;
              v7 = v763;
              v558 = v797;
              v18 = v96;
              if (v797 != v796)
              {
                goto LABEL_894;
              }

              goto LABEL_790;
            }

            goto LABEL_741;
          }

          goto LABEL_743;
        }

        v102 = "Missing element type for old-style alloca";
        goto LABEL_789;
      case 20:
        LODWORD(v785) = 0;
        v789 = 0;
        v769[0] = 0;
        {
          goto LABEL_788;
        }

        v262 = v785;
        v263 = v785 + 3;
        if (v809[0] != v785 + 2 && v809[0] != v263)
        {
          goto LABEL_788;
        }

        v264 = v789;
        if (*(*v789 + 8) != 15)
        {
          goto LABEL_435;
        }

        v96 = v18;
        if (v809[0] == v263)
        {
          v265 = v785 + 1;
          LODWORD(v785) = v785 + 1;
          v266 = *(v808 + v262);
          VirtualTypeID = v266;
LABEL_748:
          if (!*this)
          {
            LOWORD(v768.__r_.__value_.__l.__data_) = 0;
            if (!*this)
            {
              v796 = &v800;
              v797 = &v800;
              v798 = 4;
              LODWORD(v799) = 0;
              if (v768.__r_.__value_.__s.__data_[1] == 1)
              {
                v512 = v768.__r_.__value_.__s.__data_[0];
              }

              else
              {
                if ((llvm::Type::isSized(v267, &v796) & 1) == 0)
                {
                  __p.n128_u64[0] = "load of unsized type";
                  v795 = 259;
                }

                v512 = llvm::DataLayout::getAlignment((*(a2 + 54) + 256), v267, 1);
                LOWORD(v768.__r_.__value_.__l.__data_) = v512 | 0x100;
              }

              v603 = operator new(0x60uLL);
              v604 = (v603 + 8);
              v603[13] = v603[13] & 0x38000000 | 1;
              *v603 = 0;
              *(v603 + 1) = 0;
              *(v603 + 2) = 0;
              *(v603 + 3) = v603 + 8;
              v795 = 257;
              llvm::LoadInst::LoadInst((v603 + 8), v267, v264, &__p, *(v808 + v265 + 1) != 0, v512, 0);
              v117 = v604;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v604);
              v21 = 9;
              if (v797 != v796)
              {
                free(v797);
              }

              goto LABEL_744;
            }
          }

          goto LABEL_743;
        }

        if (v511)
        {
          v267 = v511;
          v265 = v262;
          goto LABEL_748;
        }

        v427 = "Missing element type for old-style load";
        goto LABEL_633;
      case 23:
        if (v809[0] <= 2u)
        {
          goto LABEL_352;
        }

        v156 = v18;
        v157 = *v808;
        if (v809[0] == 1)
        {
          v159 = 0;
        }

        else
        {
          if (*(a2 + 1712))
          {
            v328 = v767[0] - *(v808 + 2);
          }

          else
          {
            v328 = *(v808 + 2);
          }
        }

        VirtualTypeID = *(v808 + 4);
        if (!v158 || !v159 || (v330 = v329) == 0)
        {
          v796 = "Invalid record";
          v800 = 259;
        }

        v331 = operator new(0x60uLL);
        v331[13] = v331[13] & 0x38000000 | 1;
        *v331 = 0;
        *(v331 + 1) = 0;
        *(v331 + 2) = 0;
        *(v331 + 3) = v331 + 8;
        v800 = 257;
        v332 = v330;
        v117 = (v331 + 8);
        llvm::UnaryInstruction::UnaryInstruction((v331 + 8), v332, 60, v159, 0);
        llvm::Value::setName(v117, &v796);
        v18 = v156;
        goto LABEL_409;
      case 24:
      case 44:
        v769[0] = 0;
        v789 = 0;
        v785 = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        v772[0] = 0;
        {
          goto LABEL_788;
        }

        if (v25 == 44)
        {
          {
            v38 = v769[0];
            goto LABEL_428;
          }

LABEL_788:
          v102 = "Invalid record";
LABEL_789:
          v796 = v102;
          v800 = 259;
        }

        v772[0] = v293;
        v295 = v769[0];
        if (v809[0] == v769[0])
        {
          v789 = 0;
        }

        else
        {
          if (*(a2 + 1712))
          {
            v322 = v767[0] - *(v808 + v769[0]);
          }

          else
          {
            v322 = *(v808 + v769[0]);
          }

          if (v789)
          {
            v38 = v295 + 1;
            v769[0] = v295 + 1;
LABEL_428:
            if (v809[0] == v38 + 2)
            {
              v323 = v18;
              v324 = v789;
              v325 = v785;
              if (!*this)
              {
                LOWORD(v773) = 0;
                if (!*this)
                {
                  v796 = &v800;
                  v797 = &v800;
                  v798 = 4;
                  LODWORD(v799) = 0;
                  if ((v773 & 0x100) != 0)
                  {
                    v326 = v773;
                  }

                  else
                  {
                    if ((llvm::Type::isSized(*v324, &v796) & 1) == 0)
                    {
                      __p.n128_u64[0] = "store of unsized type";
                      v795 = 259;
                    }

                    v326 = llvm::DataLayout::getAlignment((*(a2 + 54) + 256), *v324, 1);
                    LOWORD(v773) = v326 | 0x100;
                  }

                  v586 = operator new(0x80uLL);
                  v586[21] = v586[21] & 0x38000000 | 2;
                  *v586 = 0;
                  *(v586 + 1) = 0;
                  *(v586 + 2) = 0;
                  *(v586 + 3) = v586 + 16;
                  *(v586 + 4) = 0;
                  *(v586 + 5) = 0;
                  *(v586 + 6) = 0;
                  *(v586 + 7) = v586 + 16;
                  v587 = v326;
                  v117 = (v586 + 16);
                  llvm::StoreInst::StoreInst((v586 + 16), v324, v325, *(v808 + v38 + 1) != 0, v587, 0, 1, 0);
                  llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
                  v21 = 9;
                  v558 = v797;
                  v18 = v323;
                  if (v797 != v796)
                  {
                    goto LABEL_894;
                  }

                  goto LABEL_790;
                }
              }

LABEL_631:
              v117 = 0;
              v21 = 1;
              v18 = v323;
              goto LABEL_790;
            }

            goto LABEL_788;
          }
        }

LABEL_433:
        v327 = "Invalid record";
        goto LABEL_434;
      case 26:
        LODWORD(v785) = 0;
        v789 = 0;
        v769[0] = 0;
        {
          goto LABEL_788;
        }

        v255 = v809[0];
        v256 = v785;
        if (v785 != v809[0])
        {
          v387 = v789;
          v388 = *v789;
          __p.n128_u64[0] = v794;
          __p.n128_u64[1] = 0x400000000;
          VirtualTypeID = v769[0];
          while (1)
          {
            if ((*(v388 + 2) & 0xFE) != 0x10)
            {
              LODWORD(v785) = v256;
              v796 = "EXTRACTVAL: Invalid type";
              v800 = 259;
            }

            v389 = v18;
            v390 = *(v808 + v256);
            if (HIDWORD(v390))
            {
              LODWORD(v785) = v256;
              v505 = "Invalid value";
              goto LABEL_847;
            }

            if (*(v388 + 2) == 16)
            {
              if (v390 >= *(v388 + 3))
              {
                LODWORD(v785) = v256;
                v505 = "EXTRACTVAL: Invalid struct index";
LABEL_847:
                v796 = v505;
                v800 = 259;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v808 + v256));
              v388 = *(*(v388 + 2) + 8 * v390);
              v391 = VirtualTypeID;
              v392 = a2;
              v393 = v390;
            }

            else
            {
              if (v390 >= *(v388 + 4))
              {
                LODWORD(v785) = v256;
                v505 = "EXTRACTVAL: Invalid array index";
                goto LABEL_847;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v808 + v256));
              v388 = **(v388 + 2);
              v391 = VirtualTypeID;
              v392 = a2;
              v393 = 0;
            }

            ++v256;
            v18 = v389;
            if (v255 == v256)
            {
              LODWORD(v785) = v255;
              v800 = 257;
              v117 = llvm::ExtractValueInst::Create(v387, __p.n128_u64[0], __p.n128_u32[2], &v796);
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
              v21 = 9;
              v558 = __p.n128_u64[0];
              v559 = __p.n128_u64[0] == v794;
              goto LABEL_848;
            }
          }
        }

        v257 = "EXTRACTVAL: Invalid instruction with 0 indices";
        goto LABEL_420;
      case 27:
        v769[0] = 0;
        v789 = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v785 = 0;
        v772[0] = 0;
        {
          goto LABEL_788;
        }

        v100 = v809[0];
        v101 = v769[0];
        if (v769[0] == v809[0])
        {
          v102 = "INSERTVAL: Invalid instruction with 0 indices";
          goto LABEL_789;
        }

        __p.n128_u64[0] = v794;
        __p.n128_u64[1] = 0x400000000;
        v450 = v789;
        v451 = *v789;
        do
        {
          if ((*(v451 + 2) & 0xFE) != 0x10)
          {
            v769[0] = v101;
            v455 = "INSERTVAL: Invalid type";
LABEL_843:
            v796 = v455;
            v800 = 259;
          }

          v452 = v18;
          v453 = *(v808 + v101);
          if (HIDWORD(v453))
          {
            v769[0] = v101;
            v557 = "Invalid value";
            goto LABEL_899;
          }

          if (*(v451 + 2) == 16)
          {
            if (v453 < *(v451 + 3))
            {
              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v808 + v101));
              v454 = (*(v451 + 2) + 8 * v453);
              goto LABEL_642;
            }

            v769[0] = v101;
            v557 = "INSERTVAL: Invalid struct index";
LABEL_899:
            v796 = v557;
            v800 = 259;
          }

          if (v453 >= *(v451 + 4))
          {
            v769[0] = v101;
            v557 = "INSERTVAL: Invalid array index";
            goto LABEL_899;
          }

          llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v808 + v101));
          v454 = *(v451 + 2);
LABEL_642:
          v451 = *v454;
          ++v101;
          v18 = v452;
        }

        while (v100 != v101);
        v769[0] = v100;
        if (v451 != *v785)
        {
          v455 = "Inserted value type doesn't match aggregate type";
          goto LABEL_843;
        }

        v800 = 257;
        v117 = llvm::InsertValueInst::Create(v450, v785, __p.n128_u64[0], __p.n128_u32[2], &v796);
        VirtualTypeID = v768.__r_.__value_.__l.__data_;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
        v21 = 9;
LABEL_900:
        v558 = __p.n128_u64[0];
        v413 = v794;
LABEL_901:
        if (v558 != v413)
        {
LABEL_894:
          free(v558);
        }

LABEL_790:
        if (v21 == 9)
        {
LABEL_791:
          v531 = v783;
          if (!v783)
          {
            llvm::Value::deleteValue(v117, v19);
            v518 = "Invalid instruction with no BB";
LABEL_795:
            v796 = v518;
            v800 = 259;
          }

          if (v777 != v778)
          {
            llvm::Value::deleteValue(v117, v19);
            v518 = "Operand bundles found with no consumer";
            goto LABEL_795;
          }

          llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v783 + 40, v117);
          v534 = *(v531 + 5);
          *(v117 + 24) = v534;
          *(v117 + 32) = v531 + 40;
          *(v534 + 8) = v117 + 24;
          *(v531 + 5) = v117 + 24;
          if (*(v117 + 16) - 29 <= 0xA)
          {
            ++v782;
            v535 = *(a2 + 186);
            if (v782 >= ((*(a2 + 187) - v535) >> 3))
            {
              v536 = 0;
            }

            else
            {
              v536 = *(v535 + 8 * v782);
            }

            v783 = v536;
          }

          if (*(*v117 + 8) == 7)
          {
            v21 = 0;
          }

          else
          {
            llvm::BitcodeReaderValueList::assignValue(v7, v117, v767[0], VirtualTypeID, this, v533);
            v21 = *this != 0;
            ++v767[0];
          }
        }

LABEL_796:
        if (v805)
        {
          v532 = v804;
          v804 = 0;
          if (v532)
          {
            (*(*v532 + 1))(v532);
          }
        }

LABEL_11:
        if (v807)
        {
          v22 = v806;
          v806 = 0;
          if (v22)
          {
            (*(*v22 + 1))(v22);
          }
        }

        if (!v21 || v21 == 4)
        {
          continue;
        }

        if (v21 == 7)
        {
          if (v777 != v778)
          {
            v678 = "Operand bundles found with no consumer";
            goto LABEL_1131;
          }

          v680 = *(a2 + 90);
          v681 = *(v680 - 16);
          if (v681 && *(v681 + 16) == 21 && !*(v681 + 24))
          {
            v694 = (v680 - *v7) >> 5;
            for (j = v764 >> 5; v694 != j; LODWORD(j) = j + 1)
            {
              v696 = *(*v7 + 32 * j + 16);
              if (v696 && *(v696 + 16) == 21 && !*(v696 + 24))
              {
                v697 = j;
                v698 = llvm::PoisonValue::get(*v696, v19);
                llvm::Value::doRAUW(v696, v698, 1, v699);
                llvm::Value::~Value(v696, v700);
                MEMORY[0x277C69E40]();
                LODWORD(j) = v697;
              }
            }

            v796 = "Never resolved value found in function";
            v800 = 259;
          }

          if (*(*(a2 + 97) + 24) >= 2u)
          {
            v678 = "Invalid function metadata: outgoing forward refs";
LABEL_1131:
            v796 = v678;
            v800 = 259;
          }

          v682 = v18;
          if (v817)
          {
            v683 = v816;
            v684 = v816 + 24 * v817;
            do
            {
              v686 = *v683;
              v685 = *(v683 + 1);
              v687 = *(v683 + 2);
              v688 = operator new(0x60uLL);
              v688[13] = v688[13] & 0x38000000 | 1;
              *v688 = 0;
              *(v688 + 1) = 0;
              *(v688 + 2) = 0;
              *(v688 + 3) = v688 + 8;
              llvm::BranchInst::BranchInst((v688 + 8), v685, v687);
              v689 = *(v686 + 5);
              if (v689 == (v686 + 40))
              {
                v692 = 0;
              }

              else
              {
                v690 = (v689 - 3);
                if (v689)
                {
                  v691 = v689 - 3;
                }

                else
                {
                  v691 = 0;
                }

                if (*(v691 + 16) - 29 >= 0xB)
                {
                  v692 = 0;
                }

                else
                {
                  v692 = v690;
                }
              }

              llvm::Instruction::replaceSuccessorWith(v692, v685, v687);
              llvm::BasicBlock::replacePhiUsesWith(v685, v686, v687);
              llvm::BasicBlock::moveBefore(v687, v685);
              v683 += 24;
            }

            while (v683 != v684);
          }

          std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::resize(v7, (v764 >> 5));
          llvm::SmallVectorImpl<llvm::TrackingMDRef>::resizeImpl<false>(*(a2 + 97), v765);
          v693 = *(a2 + 186);
          *v766 = 0;
          *(a2 + 187) = 0;
          *(a2 + 188) = 0;
          if (v693)
          {
            operator delete(v693);
          }

          *this = 0;
          v18 = v682;
        }

        if (v808 != v18)
        {
          free(v808);
        }

        v808 = &v777;
        std::vector<llvm::OperandBundleDefT<llvm::Value *>>::__destroy_vector::operator()[abi:nn200100](&v808);
        if (v781)
        {
          llvm::MetadataTracking::untrack(&v781, v781);
        }

        if (v816 != v17)
        {
          free(v816);
        }

        if ((v811 & 1) == 0)
        {
          MEMORY[0x277C69E30](v812.i64[0], 8);
        }

LABEL_1140:
        v679 = *MEMORY[0x277D85DE8];
        return;
      case 29:
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v789 = 0;
        v769[0] = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v268 = v785;
        if (v809[0] == v785)
        {
          goto LABEL_788;
        }

        v269 = __p.n128_u64[0];
        v270 = v769[0];
        v271 = *(a2 + 1712) ? v767[0] - *(v808 + v785) : *(v808 + v785);
        if (!v272)
        {
          goto LABEL_788;
        }

        v273 = v272;
        LODWORD(v785) = v268 + 1;
        {
          goto LABEL_788;
        }

        v274 = v7;
        v275 = v789;
        v276 = *v789;
        if (*v789 && (*(v276 + 2) & 0xFE) == 0x12)
        {
          v276 = *(v276 + 3);
        }

        if (v276 != (**(a2 + 53) + 1920))
        {
          v796 = "Invalid type for value";
          v800 = 259;
        }

        v560 = v270;
        *v731 = v17;
        v800 = 257;
        v561 = operator new(0xA0uLL);
        v562 = v561;
        v117 = (v561 + 24);
        v561[29] = v561[29] & 0x38000000 | 3;
        v563 = 96;
        v564 = v561;
        do
        {
          *v564 = 0;
          v564[1] = 0;
          v564[2] = 0;
          v564[3] = v117;
          v564 += 4;
          v563 -= 32;
        }

        while (v563);
        llvm::SelectInst::SelectInst((v561 + 24), v275, v269, v273, &v796, 0);
        VirtualTypeID = v560;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
        v565 = v785;
        if (v809[0] > v785 && llvm::FPMathOperator::classof(v117))
        {
          v566 = *(v808 + v565) & 0x7E | (*(v808 + v565) >> 7) & 1 | -(*(v808 + v565) & 1);
          if (v566)
          {
            *(v562 + 113) |= 2 * v566;
          }
        }

        v21 = 9;
        v17 = *v731;
        v7 = v274;
        goto LABEL_790;
      case 31:
        if (v809[0] <= 1u)
        {
          goto LABEL_352;
        }

        v233 = v18;
        v234 = *v808;
        {
          v796 = "Invalid record";
          v800 = 259;
        }

        v337 = (v809[0] - 2);
        v338 = operator new(0x48uLL);
        v117 = (v338 + 2);
        v338[7] = v338[7] & 0x38000000 | 0x40000000;
        *v338 = 0;
        llvm::IndirectBrInst::IndirectBrInst((v338 + 2), v336, v337, 0);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
        if (!v337)
        {
          v18 = v233;
          goto LABEL_791;
        }

        v339 = 2;
        v18 = v233;
        while (1)
        {
          v340 = *(v808 + 2 * v339);
          v341 = *(a2 + 186);
          if (v340 >= (*(a2 + 187) - v341) >> 3)
          {
            break;
          }

          v19 = *(v341 + 8 * v340);
          if (!v19)
          {
            break;
          }

          llvm::IndirectBrInst::addDestination(v117, v19);
          ++v339;
          if (!--v337)
          {
            goto LABEL_791;
          }
        }

        llvm::Instruction::~Instruction(v117, v19);
        llvm::User::operator delete(v517);
        goto LABEL_758;
      case 33:
        if (!v230)
        {
          goto LABEL_352;
        }

        v231 = v230;
        v775 = v781;
        if (v781)
        {
          llvm::MetadataTracking::track(&v775, v781, 2);
        }

        llvm::TrackingMDRef::operator=((v231 + 48), &v775);
        v19 = v775;
        if (!v775)
        {
          goto LABEL_293;
        }

        v232 = &v775;
        goto LABEL_292;
      case 34:
        if (v809[0] <= 2u)
        {
          goto LABEL_352;
        }

        v277 = (*v808 - 1);
        v278 = *(a2 + 180);
        v756 = v7;
        if (v277 >= (*(a2 + 181) - v278) >> 3)
        {
          v279 = 0;
        }

        else
        {
          v279 = *(v278 + 8 * v277);
        }

        v394 = 2;
        LODWORD(v768.__r_.__value_.__l.__data_) = 2;
        v395 = *(v808 + 1);
        if ((v395 & 0x20000) != 0)
        {
          v394 = 3;
          LODWORD(v768.__r_.__value_.__l.__data_) = 3;
          v396 = *(v808 + 4) & 0x7E | (*(v808 + 4) >> 7) & 1 | -(*(v808 + 4) & 1);
          if (!v396)
          {
            v796 = "Fast math flags indicator set for call with no FMF";
            v800 = 259;
          }
        }

        else
        {
          v396 = 0;
        }

        if ((v395 & 0x8000) != 0)
        {
          LODWORD(v768.__r_.__value_.__l.__data_) = v394 + 1;
          v398 = *(v808 + v394);
          if (!v399 || (v397 = v399, *(v399 + 8) != 14))
          {
            v400 = "Explicit call type is not a function type";
            goto LABEL_896;
          }
        }

        else
        {
          v397 = 0;
          LODWORD(v398) = -1;
        }

        v785 = 0;
        v772[0] = 0;
        {
          v400 = "Invalid record";
          goto LABEL_896;
        }

        v441 = *v785;
        if (*v785 && *(v441 + 8) == 15)
        {
          v740 = v785;
          if (v397)
          {
            v442 = *(v441 + 24);
            if (v442 && v442 != v397)
            {
              v400 = "Explicit call type does not match pointee type of callee operand";
              goto LABEL_896;
            }

            goto LABEL_864;
          }

          if (v570)
          {
            v397 = v570;
            if (*(v570 + 8) == 14)
            {
LABEL_864:
              *v733 = v17;
              v571 = v809[0];
              v572 = (*(v397 + 12) - 1);
              v573 = v768.__r_.__value_.__l.__data_;
              if (v809[0] < (v572 + LODWORD(v768.__r_.__value_.__l.__data_)))
              {
                v796 = "Insufficient operands to call";
                v800 = 259;
              }

              v712 = v396;
              v719 = v279;
              v754 = v18;
              v796 = &v798;
              v797 = 0x1000000000;
              __p.n128_u64[0] = v794;
              __p.n128_u64[1] = 0x1000000000;
              if (!v572)
              {
LABEL_918:
                LODWORD(v768.__r_.__value_.__l.__data_) = v573;
                if (*(v397 + 8) < 0x100u)
                {
                  if (v571 != v573)
                  {
                    goto LABEL_993;
                  }
                }

                else if (v571 != v573)
                {
                  while (1)
                  {
                    *v769 = 0;
                    v773 = 0;
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, *v769);
                    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v773);
                    if (v809[0] == LODWORD(v768.__r_.__value_.__l.__data_))
                    {
                      goto LABEL_984;
                    }
                  }

LABEL_993:
                  v789 = "Invalid record";
                  v792 = 259;
                }

LABEL_984:
                v613 = v777;
                if (v777 == v778)
                {
                  v614 = v777;
                }

                else
                {
                  llvm::UpgradeOperandBundles(&v777);
                  v614 = v777;
                  v613 = v778;
                }

                v792 = 257;
                v743 = llvm::CallInst::Create(v397, v740, v796, v797, v614, 0xAAAAAAAAAAAAAAABLL * ((v613 - v614) >> 4), &v789, 0);
                v632 = v777;
                for (k = v778; k != v632; std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](&v777, k))
                {
                  k -= 48;
                }

                v778 = v632;
                llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v743);
                v634 = v395 & 1;
                if ((v395 & 0x4000) != 0)
                {
                  v634 = 2;
                }

                if ((v395 & 0x10000) != 0)
                {
                  v634 = 3;
                }

                *(v743 + 9) = v634 & 0xF003 | (4 * ((v395 >> 1) & 0x3FF)) | *(v743 + 9) & 0xF000;
                *(v743 + 8) = v719;
                if (*this)
                {
                  llvm::Value::deleteValue(v743, v19);
                  v21 = 1;
                }

                else
                {
                  if (v712)
                  {
                    if (!llvm::FPMathOperator::classof(v743))
                    {
                      v789 = "Fast-math-flags specified for call without floating-point scalar or vector return type";
                      v792 = 259;
                    }

                    v743[17] |= 2 * v712;
                  }

                  v21 = 9;
                }

                if (__p.n128_u64[0] != v794)
                {
                  free(__p.n128_u64[0]);
                }

                if (v796 != &v798)
                {
                  free(v796);
                }

                v17 = *v733;
                v117 = v743;
                v18 = v754;
                v7 = v756;
                goto LABEL_790;
              }

              v579 = 1;
              while (1)
              {
                v581 = *(*(v397 + 16) + 8 * v579);
                if (*(v581 + 8) == 8)
                {
                  break;
                }

                if (v573 == v809[0])
                {
                  goto LABEL_910;
                }

                if (*(a2 + 1712))
                {
                  v585 = v767[0] - *(v808 + v573);
                }

                else
                {
                  v585 = *(v808 + v573);
                }

LABEL_915:
                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, v584);
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v580);
                if (!*(v796 + v797 - 1))
                {
                  LODWORD(v768.__r_.__value_.__l.__data_) = v573;
                  goto LABEL_993;
                }

                ++v573;
                ++v579;
                if (!--v572)
                {
                  v571 = v809[0];
                  goto LABEL_918;
                }
              }

              v582 = *(v808 + 2 * v573);
              v583 = *(a2 + 186);
              if (v582 < (*(a2 + 187) - v583) >> 3)
              {
                v584 = *(v583 + 8 * v582);
                goto LABEL_915;
              }

LABEL_910:
              v584 = 0;
              goto LABEL_915;
            }
          }

          v400 = "Callee is not of pointer to function type";
        }

        else
        {
          v400 = "Callee is not a pointer type";
        }

LABEL_896:
        v796 = v400;
        v800 = 259;
      case 35:
        if (!v103 || v809[0] <= 3u)
        {
          goto LABEL_352;
        }

        v104 = v103;
        v746 = v18;
        v105 = v809[0] == 5 && *(v808 + 4) != 0;
        v428 = v17;
        v429 = *v808;
        v430 = *(v808 + 2);
        v431 = *(v808 + 4);
        v432 = *(v808 + 6);
        if (v431)
        {
          MetadataFwdRefOrLoad = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(*(a2 + 97), v431 - 1);
          if (!MetadataFwdRefOrLoad || (v434 = MetadataFwdRefOrLoad, (llvm::MDNode::classof(MetadataFwdRefOrLoad) & 1) == 0))
          {
            v796 = "Invalid record";
            v800 = 259;
          }
        }

        else
        {
          v434 = 0;
        }

        v761 = v7;
        if (v432)
        {
          v488 = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(*(a2 + 97), v432 - 1);
          if (!v488 || (v489 = v488, (llvm::MDNode::classof(v488) & 1) == 0))
          {
            v796 = "Invalid record";
            v800 = 259;
          }
        }

        else
        {
          v489 = 0;
        }

        v502 = *(v434 + 8);
        v503 = (v502 & 0xFFFFFFFFFFFFFFF8);
        if ((v502 & 4) != 0)
        {
          v503 = *v503;
        }

        Impl = llvm::DILocation::getImpl(v503, v429, v430, v434, v489, v105, 0, 1);
        v796 = Impl;
        if (Impl)
        {
          llvm::MetadataTracking::track(&v796, Impl, 2);
        }

        llvm::TrackingMDRef::operator=(&v781, &v796);
        v17 = v428;
        v18 = v746;
        v7 = v761;
        if (v796)
        {
          llvm::MetadataTracking::untrack(&v796, v796);
        }

        v774 = v781;
        if (v781)
        {
          llvm::MetadataTracking::track(&v774, v781, 2);
        }

        llvm::TrackingMDRef::operator=((v104 + 48), &v774);
        v19 = v774;
        if (!v774)
        {
          goto LABEL_293;
        }

        v232 = &v774;
LABEL_292:
        llvm::MetadataTracking::untrack(v232, v19);
LABEL_293:
        v21 = 4;
        goto LABEL_796;
      case 36:
        if (v809[0] != 2)
        {
          goto LABEL_352;
        }

        v139 = v808;
        DecodedOrdering = getDecodedOrdering(*v808);
        if (DecodedOrdering <= 2)
        {
          goto LABEL_758;
        }

        v141 = DecodedOrdering;
        v142 = v139[1];
        v143 = v142;
        if ((v142 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v142)
          {
            v143 = 1;
          }

          else
          {
            v143 = *(*(a2 + 225) + v142);
          }
        }

        v117 = operator new(0x40uLL);
        *(v117 + 20) &= 0x38000000u;
        *v117 = **(a2 + 53) + 1608;
        *(v117 + 8) = 0;
        *(v117 + 16) = 63;
        *(v117 + 17) = 0u;
        *(v117 + 33) = 0u;
        *(v117 + 44) = 0u;
        *(v117 + 18) = v141;
        *(v117 + 60) = v143;
        goto LABEL_409;
      case 37:
        v106 = v809[0];
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_788;
        }

        v107 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
          goto LABEL_377;
        }

        v96 = v18;
        v110 = v789;
        if (v809[0] == v789)
        {
          goto LABEL_741;
        }

        v111 = *(a2 + 1712) ? v767[0] - *(v808 + v789) : *(v808 + v789);
        if (!v112)
        {
          goto LABEL_741;
        }

        *v722 = v17;
        if (v809[0] == v110 + 1)
        {
          goto LABEL_164;
        }

        v113 = v112;
        v114 = *(a2 + 1712) ? v767[0] - *(v808 + (v110 + 1)) : *(v808 + (v110 + 1));
        if (!v115)
        {
          goto LABEL_164;
        }

        LODWORD(v789) = v110 + 2;
        if (v106 < v110 + 5)
        {
          goto LABEL_164;
        }

        if (v106 > v110 + 7)
        {
          goto LABEL_164;
        }

        v705 = v115;
        v116 = v808;
        v707 = getDecodedOrdering(*(v808 + (v110 + 3)));
        if (v707 <= 1)
        {
          goto LABEL_164;
        }

        v608 = v116[v110 + 4];
        v713 = v608;
        if ((v608 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v608)
          {
            v713 = 1;
          }

          else
          {
            v713 = *(*(a2 + 225) + v608);
          }
        }

        if (*this)
        {
          v117 = 0;
          v21 = 1;
        }

        else
        {
          if (v106 > 6)
          {
            v702 = getDecodedOrdering(*(v808 + (v110 + 5)));
            if (v702 <= 1)
            {
LABEL_164:
              v796 = "Invalid record";
              v800 = 259;
            }
          }

          else
          {
            v702 = dword_2750C80D0[v707 - 2];
          }

          TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits((*(a2 + 54) + 256), *v113);
          if (v639)
          {
          }

          v641 = __clz((TypeSizeInBits + 7) >> 3);
          v642 = operator new(0xA0uLL);
          v643 = (v642 + 24);
          v642[29] = v642[29] & 0x38000000 | 3;
          v644 = 96;
          v720 = v642;
          do
          {
            *v642 = 0;
            *(v642 + 1) = 0;
            *(v642 + 2) = 0;
            *(v642 + 3) = v643;
            v642 += 8;
            v644 -= 32;
          }

          while (v644);
          v645 = 63 - v641;
          v646 = v643;
          llvm::AtomicCmpXchgInst::AtomicCmpXchgInst(v643, v107, v113, v705, v645, v707, v702, v713, 0);
          v647 = v808;
          v648 = *(v720 + 57) & 0xFFFE;
          if (*(v808 + (v110 + 2)))
          {
            ++v648;
          }

          *(v720 + 57) = v648;
          if (v106 > 7)
          {
            *(v720 + 57) = v648 & 0xFFFD | (2 * (v647[v110 + 6] != 0));
            v668 = *(v720 + 12);
            v796 = __PAIR64__(v667, v108);
          }

          else
          {
            v649 = v783;
            v650 = v783 + 40;
            llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v783 + 40, v646);
            v651 = *(v649 + 5);
            *(v720 + 15) = v651;
            *(v720 + 16) = v650;
            *(v651 + 8) = v720 + 30;
            *(v649 + 5) = v720 + 30;
            v769[0] = 0;
            v800 = 257;
            v646 = llvm::ExtractValueInst::Create(v646, v769, 1, &v796);
          }

          VirtualTypeID = v108;
          v117 = v646;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v646);
          v21 = 9;
        }

        v17 = *v722;
        goto LABEL_744;
      case 38:
      case 59:
        v31 = v809[0];
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v769[0] = 0;
        {
          goto LABEL_419;
        }

        v32 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
          goto LABEL_419;
        }

        v789 = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = -1;
        if (v25 == 38)
        {
          LODWORD(v768.__r_.__value_.__l.__data_) = v33;
          v35 = v785;
          if (v809[0] == v785)
          {
            v789 = 0;
            goto LABEL_619;
          }

          if (*(a2 + 1712))
          {
            v443 = v767[0] - *(v808 + v785);
          }

          else
          {
            v443 = *(v808 + v785);
          }

          if (!v789)
          {
LABEL_619:
            v796 = "Invalid record";
            v800 = 259;
          }

          v751 = v18;
          v444 = v17;
          v445 = v35 + 1;
          LODWORD(v785) = v35 + 1;
        }

        else
        {
          {
LABEL_419:
            v257 = "Invalid record";
LABEL_420:
            v796 = v257;
            v800 = 259;
          }

          v751 = v18;
          v444 = v17;
          v445 = v785;
        }

        v446 = v445 + 4;
        v447 = v445 + 5;
        if (v31 != v445 + 4 && v31 != v447)
        {
          v796 = "Invalid record";
          v800 = 259;
        }

        v762 = v7;
        v493 = v808;
        DecodedRMWOperation = getDecodedRMWOperation(*(v808 + v445));
        if (DecodedRMWOperation >= 0x11 || (v495 = DecodedRMWOperation, v741 = v493[v445 + 1], v496 = getDecodedOrdering(v493[v445 + 2]), v496 <= 1))
        {
          v796 = "Invalid record";
          v800 = 259;
        }

        v568 = v493[v445 + 3];
        v569 = v568;
        v732 = v496;
        if ((v568 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v568)
          {
            v569 = 1;
          }

          else
          {
            v569 = *(*(a2 + 225) + v568);
          }
        }

        LOWORD(v796) = 0;
        if (v31 == v447)
        {
          if (*this)
          {
            v117 = 0;
            v21 = 1;
LABEL_958:
            v17 = v444;
            v18 = v751;
            v7 = v762;
            goto LABEL_790;
          }

          v596 = v789;
          if (BYTE1(v796))
          {
            v599 = v796;
LABEL_955:
            v600 = operator new(0x80uLL);
            v600[21] = v600[21] & 0x38000000 | 2;
            *v600 = 0;
            *(v600 + 1) = 0;
            *(v600 + 2) = 0;
            *(v600 + 3) = v600 + 16;
            *(v600 + 4) = 0;
            *(v600 + 5) = 0;
            *(v600 + 6) = 0;
            *(v600 + 7) = v600 + 16;
            v601 = v32;
            v117 = (v600 + 16);
            llvm::AtomicRMWInst::AtomicRMWInst((v600 + 16), v495, v601, v596, v599, v732, v569, 0);
            VirtualTypeID = v768.__r_.__value_.__l.__data_;
            v602 = *(v600 + 41) & 0xFFFE;
            if (v741)
            {
              ++v602;
            }

            *(v600 + 41) = v602;
            llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
            v21 = 9;
            goto LABEL_958;
          }
        }

        else
        {
          v596 = v789;
        }

        v598 = llvm::DataLayout::getTypeSizeInBits((*(a2 + 54) + 256), *v596);
        if (v597)
        {
        }

        v599 = 63 - __clz((v598 + 7) >> 3);
        goto LABEL_955;
      case 39:
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_788;
        }

        v117 = llvm::ResumeInst::Create(__p.n128_u64[0], v154, v155);
        goto LABEL_209;
      case 40:
      case 47:
        if (v804 == 47)
        {
          if (v809[0] <= 2u)
          {
            goto LABEL_788;
          }
        }

        else if (v809[0] <= 3u)
        {
          goto LABEL_788;
        }

        LODWORD(v789) = 1;
        VirtualTypeID = *v808;
        if (v59)
        {
          v61 = v59;
          if (v25 == 40)
          {
            __p.n128_u64[0] = 0;
            LODWORD(v785) = 0;
            {
              goto LABEL_788;
            }

            v62 = v18;
            v63 = v784;
            if ((*(v784 + 9) & 8) != 0)
            {
              v500 = *(v784 + 5);
              if ((v500 & 0x40000000) != 0)
              {
                v501 = *(v784 - 1);
              }

              else
              {
                v501 = &v784[-4 * (v500 & 0x7FFFFFF)];
              }

              if (*v501 != __p.n128_u64[0])
              {
                v796 = "Personality function mismatch";
                v800 = 259;
              }
            }

            else
            {
              v64 = __p.n128_u64[0] != 0;
              llvm::Function::setHungoffOperand<0>(v784, __p.n128_i64[0]);
              *(v63 + 9) = *(v63 + 9) & 0xFFF7 | (8 * v64);
            }

            v317 = v789;
          }

          else
          {
            v62 = v18;
            v317 = 1;
          }

          v525 = *(v808 + v317);
          LODWORD(v789) = v317 + 2;
          v526 = *(v808 + v317 + 1);
          v800 = 257;
          v527 = llvm::LandingPadInst::Create(v61, v526, &v796, 0, v60);
          v117 = v527;
          v528 = *(v527 + 9) & 0xFFFE;
          if (v525)
          {
            ++v528;
          }

          *(v527 + 9) = v528;
          if (!v526)
          {
LABEL_785:
            llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
            v21 = 9;
            v18 = v62;
            goto LABEL_790;
          }

          while (1)
          {
            LODWORD(v789) = v789 + 1;
            __p.n128_u64[0] = 0;
            LODWORD(v785) = 0;
            {
              break;
            }

            llvm::LandingPadInst::addClause(v117, __p.n128_u64[0]);
            LODWORD(v526) = v526 - 1;
            if (!v526)
            {
              goto LABEL_785;
            }
          }

          if (v117)
          {
            llvm::Instruction::~Instruction(v117, v529);
            llvm::User::operator delete(v530);
          }

          goto LABEL_788;
        }

        goto LABEL_788;
      case 41:
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_788;
        }

        v93 = v789;
        v94 = v789 + 5;
        if (v809[0] != v789 + 4 && v809[0] != v94)
        {
          goto LABEL_788;
        }

        v95 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
LABEL_435:
          v327 = "Load operand is not a pointer type";
LABEL_434:
          v796 = v327;
          v800 = 259;
        }

        v96 = v18;
        if (v809[0] == v94)
        {
          v97 = v789 + 1;
          LODWORD(v789) = v789 + 1;
          v98 = *(v808 + v93);
          VirtualTypeID = v98;
LABEL_738:
          if (!*this)
          {
            v507 = v808;
            v508 = getDecodedOrdering(*(v808 + v97 + 2));
            v509 = v508;
            if (v508 <= 6 && ((1 << v508) & 0x61) != 0 || (v593 = v507[v97]) == 0)
            {
LABEL_741:
              v510 = "Invalid record";
              goto LABEL_742;
            }

            v594 = v507[v97 + 3];
            v595 = v594;
            if ((v594 & 0xFFFFFFFE) != 0)
            {
              if (*(a2 + 226) <= v594)
              {
                v595 = 1;
              }

              else
              {
                v595 = *(*(a2 + 225) + v594);
              }
            }

            LOWORD(v769[0]) = 0;
            if (!*this)
            {
              if ((v769[0] & 0x100) == 0)
              {
                v510 = "Alignment missing from atomic load";
LABEL_742:
                v796 = v510;
                v800 = 259;
              }

              v636 = operator new(0x60uLL);
              v636[13] = v636[13] & 0x38000000 | 1;
              *v636 = 0;
              *(v636 + 1) = 0;
              *(v636 + 2) = 0;
              *(v636 + 3) = v636 + 8;
              v800 = 257;
              v637 = v595;
              v638 = (v636 + 8);
              llvm::LoadInst::LoadInst((v636 + 8), v99, v95, &v796, *(v808 + v97 + 1) != 0, v769[0], v509, v637, 0);
              v117 = v638;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v638);
              v21 = 9;
LABEL_744:
              v18 = v96;
              goto LABEL_790;
            }
          }

LABEL_743:
          v117 = 0;
          v21 = 1;
          goto LABEL_744;
        }

        if (v506)
        {
          v99 = v506;
          v97 = v93;
          goto LABEL_738;
        }

        v427 = "Missing element type for old style atomic load";
        goto LABEL_633;
      case 42:
      case 45:
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v789 = 0;
        v769[0] = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v36 = v789;
        if (*(*v789 + 8) != 15)
        {
          goto LABEL_788;
        }

        if (v25 == 45)
        {
          {
            goto LABEL_788;
          }

          v37 = v785;
LABEL_629:
          if (v809[0] != v37 + 4)
          {
            goto LABEL_788;
          }

          v323 = v18;
          v449 = __p.n128_u64[0];
          if (*this)
          {
            goto LABEL_631;
          }

          v537 = v808;
          v538 = getDecodedOrdering(*(v808 + (v37 + 2)));
          if (v538 == 6)
          {
            goto LABEL_979;
          }

          v539 = v538;
          if ((v538 & 3) == 0)
          {
            goto LABEL_979;
          }

          v540 = v537[v37 + 3];
          v541 = v540;
          if ((v540 & 0xFFFFFFFE) != 0)
          {
            if (*(a2 + 226) <= v540)
            {
              v742 = 1;
LABEL_975:
              v609 = v537[v37];
              if (v609)
              {
                LOWORD(v772[0]) = 0;
                if (*this)
                {
                  v117 = 0;
                  v21 = 1;
                  goto LABEL_982;
                }

                if ((v772[0] & 0x100) != 0)
                {
                  v610 = operator new(0x80uLL);
                  v610[21] = v610[21] & 0x38000000 | 2;
                  *v610 = 0;
                  *(v610 + 1) = 0;
                  *(v610 + 2) = 0;
                  *(v610 + 3) = v610 + 16;
                  *(v610 + 4) = 0;
                  *(v610 + 5) = 0;
                  *(v610 + 6) = 0;
                  *(v610 + 7) = v610 + 16;
                  v611 = v539;
                  v117 = (v610 + 16);
                  llvm::StoreInst::StoreInst((v610 + 16), v449, v36, *(v808 + (v37 + 1)) != 0, v772[0], v611, v742, 0);
                  llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
                  v21 = 9;
LABEL_982:
                  v18 = v323;
                  goto LABEL_790;
                }

                v612 = "Alignment missing from atomic store";
LABEL_980:
                v796 = v612;
                v800 = 259;
              }

LABEL_979:
              v612 = "Invalid record";
              goto LABEL_980;
            }

            v541 = *(*(a2 + 225) + v540);
          }

          v742 = v541;
          goto LABEL_975;
        }

        v318 = v18;
        LODWORD(v768.__r_.__value_.__l.__data_) = v319;
        v321 = v785;
        if (v809[0] == v785)
        {
          __p.n128_u64[0] = 0;
        }

        else
        {
          if (*(a2 + 1712))
          {
            v448 = v767[0] - *(v808 + v785);
          }

          else
          {
            v448 = *(v808 + v785);
          }

          if (__p.n128_u64[0])
          {
            v37 = v321 + 1;
            LODWORD(v785) = v321 + 1;
            v18 = v318;
            goto LABEL_629;
          }
        }

        v427 = "Invalid record";
LABEL_633:
        v796 = v427;
        v800 = 259;
      case 46:
        v65 = v809[0];
        LODWORD(v785) = 0;
        __p.n128_u64[0] = 0;
        v769[0] = 0;
        {
          goto LABEL_788;
        }

        v66 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
LABEL_377:
          v102 = "Cmpxchg operand is not a pointer type";
          goto LABEL_789;
        }

        v789 = 0;
        LODWORD(v768.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v67 = v785;
        {
          v796 = "Invalid record";
          v800 = 259;
        }

        v745 = v18;
        LODWORD(v785) = v67 + 1;
        if (v65 < v67 + 4 || v65 > v67 + 7)
        {
          v578 = "Invalid record";
          goto LABEL_1026;
        }

        v714 = v68;
        v72 = v808;
        v706 = *(v808 + (v67 + 1));
        v708 = v71;
        v73 = getDecodedOrdering(*(v808 + (v67 + 2)));
        if (v73 <= 1)
        {
          v578 = "Invalid cmpxchg success ordering";
          goto LABEL_1026;
        }

        v704 = v73;
        v74 = v72[v67 + 3];
        v721 = v74;
        if ((v74 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v74)
          {
            v721 = 1;
          }

          else
          {
            v721 = *(*(a2 + 225) + v74);
          }
        }

        if (*this)
        {
          goto LABEL_1027;
        }

        v629 = v808;
        v630 = getDecodedOrdering(*(v808 + (v67 + 4)));
        v631 = v630;
        if (v630 <= 6 && ((1 << v630) & 0x63) != 0)
        {
          v578 = "Invalid cmpxchg failure ordering";
LABEL_1026:
          v796 = v578;
          v800 = 259;
        }

        v703 = v629[v67 + 5];
        LOWORD(v772[0]) = 0;
        if (v65 != v67 + 7)
        {
          goto LABEL_1122;
        }

        if (*this)
        {
LABEL_1027:
          v117 = 0;
          v21 = 1;
        }

        else
        {
          if ((v772[0] & 0x100) != 0)
          {
            v669 = v772[0];
          }

          else
          {
LABEL_1122:
            v671 = llvm::DataLayout::getTypeSizeInBits((*(a2 + 54) + 256), *v69);
            if (v670)
            {
            }

            v669 = 63 - __clz((v671 + 7) >> 3);
          }

          v701 = v669;
          v672 = operator new(0xA0uLL);
          v673 = v672 + 96;
          *(v672 + 29) = *(v672 + 29) & 0x38000000 | 3;
          v674 = 96;
          v744 = v672;
          v675 = v672;
          do
          {
            *v675 = 0;
            *(v675 + 1) = 0;
            *(v675 + 2) = 0;
            *(v675 + 3) = v673;
            v675 = (v675 + 32);
            v674 -= 32;
          }

          while (v674);
          llvm::AtomicCmpXchgInst::AtomicCmpXchgInst(v672 + 96, v66, v69, v708, v701, v704, v631, v721, 0);
          *(v744 + 57) = (v706 != 0) | (2 * (v703 != 0)) | *(v744 + 57) & 0xFFFC;
          v677 = *(v744 + 12);
          v796 = __PAIR64__(v676, v714);
          v117 = v673;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v673);
          v21 = 9;
        }

        v18 = v745;
        goto LABEL_790;
      case 48:
        if (v809[0] - 1 >= 2)
        {
          goto LABEL_352;
        }

        v75 = **(a2 + 53);
        if (!v809[0])
        {
          goto LABEL_758;
        }

        v77 = *(a2 + 1712) ? v767[0] - *v808 : *v808;
        if (!v78)
        {
          goto LABEL_758;
        }

        if (v809[0] == 2)
        {
          v81 = *(v808 + 2);
          v82 = *(a2 + 186);
          if (v81 >= (*(a2 + 187) - v82) >> 3 || (v83 = *(v82 + 8 * v81)) == 0)
          {
LABEL_758:
            v518 = "Invalid record";
            goto LABEL_795;
          }
        }

        else
        {
          v83 = 0;
        }

        v153 = llvm::CleanupReturnInst::Create(v78, v83, v79, v80);
        goto LABEL_693;
      case 49:
        if (v809[0] != 2)
        {
          goto LABEL_352;
        }

        v144 = **(a2 + 53);
        if (!v809[0])
        {
          goto LABEL_758;
        }

        v146 = *(a2 + 1712) ? v767[0] - *v808 : *v808;
        if (!v147)
        {
          goto LABEL_758;
        }

        v150 = *(v808 + 2);
        v151 = *(a2 + 186);
        if (v150 >= (*(a2 + 187) - v151) >> 3)
        {
          goto LABEL_758;
        }

        v152 = *(v151 + 8 * v150);
        if (!v152)
        {
          goto LABEL_758;
        }

        v153 = llvm::CatchReturnInst::Create(v147, v152, v148, v149);
        goto LABEL_693;
      case 50:
      case 51:
        if (v809[0] <= 1u)
        {
          goto LABEL_352;
        }

        v51 = **(a2 + 53);
        if (v809[0])
        {
          if (*(a2 + 1712))
          {
            v53 = v767[0] - *v808;
          }

          else
          {
            v53 = *v808;
          }
        }

        else
        {
          v54 = 0;
        }

        v312 = 2;
        LODWORD(v785) = 2;
        v313 = *(v808 + 2);
        __p.n128_u64[0] = v794;
        __p.n128_u64[1] = 0x200000000;
        if (!v313)
        {
          goto LABEL_403;
        }

        do
        {
          v789 = 0;
          v769[0] = 0;
          {
            goto LABEL_406;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, v789);
          --v313;
        }

        while (v313);
        v312 = v785;
LABEL_403:
        if (v809[0] == v312)
        {
          v800 = 257;
          if (v25 == 51)
          {
            v314 = llvm::CleanupPadInst::Create(v54, __p.n128_u64[0], __p.n128_u32[2], &v796);
          }

          else
          {
            v314 = llvm::CatchPadInst::Create(v54, __p.n128_u64[0], __p.n128_u32[2], &v796);
          }

          v117 = v314;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
          v21 = 9;
          goto LABEL_900;
        }

LABEL_406:
        v796 = "Invalid record";
        v800 = 259;
      case 52:
        if (v809[0] <= 1u)
        {
          goto LABEL_352;
        }

        v84 = **(a2 + 53);
        if (v809[0])
        {
          v86 = v18;
          if (*(a2 + 1712))
          {
            v87 = v767[0] - *v808;
          }

          else
          {
            v87 = *v808;
          }
        }

        else
        {
          v86 = v18;
          v88 = 0;
        }

        v414 = *(v808 + 2);
        __p.n128_u64[0] = v794;
        __p.n128_u64[1] = 0x200000000;
        if (v414)
        {
          v415 = 2;
          do
          {
            v416 = *(v808 + 2 * v415);
            v417 = *(a2 + 186);
            if (v416 >= (*(a2 + 187) - v417) >> 3 || (v418 = *(v417 + 8 * v416)) == 0)
            {
              v796 = "Invalid record";
              v800 = 259;
            }

            ++v415;
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, v418);
          }

          while (v415 - v414 != 2);
        }

        else
        {
          v415 = 2;
        }

        if (v809[0] == v415 + 1)
        {
          v419 = *(v808 + 2 * v415);
          v420 = *(a2 + 186);
          if (v419 >= (*(a2 + 187) - v420) >> 3)
          {
            goto LABEL_606;
          }

          v421 = *(v420 + 8 * v419);
          if (!v421)
          {
            goto LABEL_606;
          }

          ++v415;
        }

        else
        {
          v421 = 0;
        }

        if (v809[0] == v415)
        {
          v800 = 257;
          v436 = operator new(0x48uLL);
          v436[7] = v436[7] & 0x38000000 | 0x40000000;
          *v436 = 0;
          v437 = v421;
          v117 = (v436 + 2);
          llvm::CatchSwitchInst::CatchSwitchInst((v436 + 2), v88, v437, v414, &v796, 0);
          if (__p.n128_u32[2])
          {
            v438 = __p.n128_u64[0];
            v439 = 8 * __p.n128_u32[2];
            do
            {
              v440 = *v438++;
              llvm::CatchSwitchInst::addHandler(v117, v440);
              v439 -= 8;
            }

            while (v439);
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
          v21 = 9;
          v18 = v86;
          v558 = __p.n128_u64[0];
          v559 = __p.n128_u64[0] == v794;
LABEL_848:
          if (!v559)
          {
            goto LABEL_894;
          }

          goto LABEL_790;
        }

LABEL_606:
        v796 = "Invalid record";
        v800 = 259;
      case 55:
        if (!v809[0])
        {
          goto LABEL_352;
        }

        v91 = v808;
        v92 = *(a2 + 222);
        if (*v808 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 223) - v92) >> 3))
        {
          goto LABEL_352;
        }

        __p = 0uLL;
        v794[0] = 0;
        LODWORD(v785) = 1;
        if (v809[0] != 1)
        {
          do
          {
            v789 = 0;
            v769[0] = 0;
            {
              v796 = "Invalid record";
              v800 = 259;
            }

            std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, &v789);
          }

          while (v809[0] != v785);
          v91 = v808;
          v92 = *(a2 + 222);
        }

        std::vector<llvm::OperandBundleDefT<llvm::Value *>>::emplace_back<std::string &,std::vector<llvm::Value *>>(&v777, v92 + 24 * *v91, &__p);
        v21 = 4;
        if (__p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }

        goto LABEL_796;
      case 56:
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_788;
        }

        v195 = (v789 + 1);
        if (v809[0] < v195)
        {
          goto LABEL_788;
        }

        v196 = __p.n128_u64[0];
        DecodedUnaryOpcode = getDecodedUnaryOpcode(*(v808 + v789), *__p.n128_u64[0]);
        if (DecodedUnaryOpcode == -1)
        {
          goto LABEL_433;
        }

        v800 = 257;
        v117 = llvm::UnaryOperator::Create(DecodedUnaryOpcode, v196, &v796, 0);
        VirtualTypeID = v785;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v117);
        if (v809[0] > v195 && llvm::FPMathOperator::classof(v117))
        {
          v198 = *(v808 + v195) & 0x7E | (*(v808 + v195) >> 7) & 1 | -(*(v808 + v195) & 1);
          if (v198)
          {
            *(v117 + 17) |= 2 * v198;
          }
        }

        goto LABEL_359;
      case 57:
        v89 = (*v808 - 1);
        v90 = *(a2 + 180);
        if (v89 >= (*(a2 + 181) - v90) >> 3)
        {
          v734 = 0;
        }

        else
        {
          v734 = *(v90 + 8 * v89);
        }

        v296 = *(v808 + 4);
        v297 = *(a2 + 186);
        v757 = v7;
        if (v296 >= (*(a2 + 187) - v297) >> 3)
        {
          v716 = 0;
        }

        else
        {
          v716 = *(v297 + 8 * v296);
        }

        v298 = *(v808 + 1);
        v299 = *(v808 + 6);
        v796 = &v798;
        v797 = 0x1000000000;
        for (m = 4; v299; --v299)
        {
          v301 = *(v808 + 2 * m);
          v302 = *(a2 + 186);
          if (v301 >= (*(a2 + 187) - v302) >> 3)
          {
            v303 = 0;
          }

          else
          {
            v303 = *(v302 + 8 * v301);
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v796, v303);
          ++m;
        }

        *v725 = v17;
        v773 = m;
        if ((v298 & 0x8000) != 0)
        {
          v773 = m + 1;
          v305 = *(v808 + m);
          if (!v306 || (v304 = v306, *(v306 + 8) != 14))
          {
            v308 = "Explicit call type is not a function type";
            goto LABEL_774;
          }
        }

        else
        {
          v304 = 0;
          LODWORD(v305) = -1;
        }

        *v772 = 0;
        v771 = 0;
        {
          v308 = "Invalid record";
          goto LABEL_774;
        }

        v315 = *v772;
        if (**v772)
        {
          v316 = *(**v772 + 8) == 15;
        }

        else
        {
          v316 = 0;
        }

        if (!v316)
        {
          v308 = "Callee is not a pointer type";
          goto LABEL_774;
        }

        if (v304)
        {
          v425 = *(**v772 + 24);
          if (v425)
          {
            v426 = v425 == v304;
          }

          else
          {
            v426 = 1;
          }

          if (!v426)
          {
            v308 = "Explicit call type does not match pointee type of callee operand";
            goto LABEL_774;
          }
        }

        else
        {
          if (!v513 || (v304 = v513, *(v513 + 8) != 14))
          {
            v308 = "Callee is not of pointer to function type";
LABEL_774:
            __p.n128_u64[0] = v308;
            v795 = 259;
          }
        }

        v514 = v809[0];
        v515 = (*(v304 + 12) - 1);
        v516 = v773;
        if (v809[0] < (v515 + v773))
        {
          __p.n128_u64[0] = "Insufficient operands to call";
          v795 = 259;
        }

        v752 = v18;
        __p.n128_u64[0] = v794;
        __p.n128_u64[1] = 0x1000000000;
        v789 = v791;
        v790 = 0x1000000000;
        if (v515)
        {
          v545 = 1;
          while (1)
          {
            v547 = *(*(v304 + 16) + 8 * v545);
            if (*(v547 + 8) == 8)
            {
              v548 = *(v808 + 2 * v516);
              v549 = *(a2 + 186);
              if (v548 >= (*(a2 + 187) - v549) >> 3)
              {
                break;
              }

              v550 = *(v549 + 8 * v548);
            }

            else
            {
              if (v516 == v809[0])
              {
                break;
              }

              v551 = *(a2 + 1712) ? v767[0] - *(v808 + v516) : *(v808 + v516);
            }

            if (!v550)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, v550);
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v789, v546);
            ++v516;
            ++v545;
            if (!--v515)
            {
              v514 = v809[0];
              goto LABEL_833;
            }
          }

          v773 = v516;
LABEL_941:
          v785 = "Invalid record";
          v788 = 259;
        }

LABEL_833:
        v710 = v315;
        v773 = v516;
        if (*(v304 + 8) < 0x100u)
        {
          if (v514 != v516)
          {
            goto LABEL_941;
          }
        }

        else if (v514 != v516)
        {
          do
          {
            *v769 = 0;
            LODWORD(v768.__r_.__value_.__l.__data_) = 0;
            {
              goto LABEL_941;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, *v769);
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v789, v768.__r_.__value_.__l.__data_);
          }

          while (v809[0] != v773);
        }

        if (v777 != v778)
        {
          llvm::UpgradeOperandBundles(&v777);
        }

        v588 = v315;
        if (*(v315 + 16) == 24)
        {
          v589 = *(v315 + 71);
          if (v589 >= 0)
          {
            v590 = (v315 + 48);
          }

          else
          {
            v590 = *(v315 + 48);
          }

          if (v589 >= 0)
          {
            v591 = *(v315 + 71);
          }

          else
          {
            v591 = *(v315 + 56);
          }

          llvm::InlineAsm::ParseConstraints(v590, v591, v769);
          for (n = *v769; n != v770; n += 20)
          {
            if (*n == 3)
            {
              goto LABEL_1101;
            }
          }

          v615 = __p.n128_u32[2] - v797;
          v616 = __p.n128_u64[0];
          if (__p.n128_u32[2] > __p.n128_u32[2] - v797)
          {
            v617 = 0;
            do
            {
              v618 = *(__p.n128_u64[0] + 8 * v615 + 8 * v617);
              if (v618)
              {
                v619 = *(v618 + 16) == 4;
              }

              else
              {
                v619 = 0;
              }

              if (!v619 || v617 > v797 || *(v618 - 64) != v784 || *(v618 - 32) != *(v796 + v617))
              {
                v785 = "callbr argument does not match indirect dest";
                v788 = 259;
              }

              ++v617;
            }

            while (__p.n128_u32[2] - v615 != v617);
          }

          __p.n128_u32[2] -= v797;
          LODWORD(v790) = v615;
          v785 = v787;
          v786 = 0x600000000;
          if (v615)
          {
            v620 = 8 * v615;
            do
            {
              v621 = *v616++;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v785, *v621);
              v620 -= 8;
            }

            while (v620);
            v622 = v785;
            v623 = v786;
          }

          else
          {
            v623 = 0;
            v622 = v787;
          }

          v304 = llvm::FunctionType::get(**(v304 + 16), v622, v623, (*(v304 + 8) > 0xFFu));
          if (*(v710 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v768, *(v710 + 48), *(v710 + 56));
          }

          else
          {
            v768 = *(v710 + 48);
          }

          v652 = v770;
          if (*v769 != v770)
          {
            v653 = 0;
            v654 = 0;
            v655 = *v769 + 80;
            do
            {
              v656 = *(v655 - 80);
              if (!v656 || v656 == 1 && *(v655 - 67) == 1)
              {
                if (v653 >= v615)
                {
                  std::string::insert(&v768, v654, "!");
                }

                ++v653;
              }

              v657 = std::string::find(&v768, 44, v654);
              v654 = v657 + 1;
              if (v657 == -1)
              {
                break;
              }

              v242 = v655 == v652;
              v655 += 80;
            }

            while (!v242);
          }

          v658 = *(v710 + 47);
          if (v658 >= 0)
          {
            v659 = v710 + 24;
          }

          else
          {
            v659 = *(v710 + 24);
          }

          if (v658 >= 0)
          {
            v660 = *(v710 + 47);
          }

          else
          {
            v660 = *(v710 + 32);
          }

          if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v661 = &v768;
          }

          else
          {
            v661 = v768.__r_.__value_.__r.__words[0];
          }

          if ((v768.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v768.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v768.__r_.__value_.__l.__size_;
          }

          v710 = llvm::InlineAsm::get(v304, v659, v660, v661, size, *(v710 + 80), *(v710 + 81), *(v710 + 84), *(v710 + 88));
          *v772 = v710;
          if (SHIBYTE(v768.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v768.__r_.__value_.__l.__data_);
          }

          if (v785 != v787)
          {
            free(v785);
          }

LABEL_1101:
          v785 = v769;
          std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](&v785);
          v588 = v710;
        }

        v788 = 257;
        v663 = llvm::CallBrInst::Create(v304, v588, v716, v796, v797, __p.n128_u64[0], __p.n128_u32[2], v307, v777, 0xAAAAAAAAAAAAAAABLL * ((v778 - v777) >> 4), &v785, 0);
        v664 = v777;
        for (ii = v778; ii != v664; std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](&v777, ii))
        {
          ii -= 48;
        }

        v778 = v664;
        v117 = v663;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v663);
        *(v663 + 9) = *(v663 + 9) & 0xF003 | (2 * v298) & 0xFFC;
        *(v663 + 8) = v734;
        if (*this)
        {
          llvm::Value::deleteValue(v663, v19);
          v21 = 1;
        }

        else
        {
          v21 = 9;
        }

        v17 = *v725;
        v18 = v752;
        v7 = v757;
        if (v789 != v791)
        {
          free(v789);
        }

        v628 = __p.n128_u64[0];
        if (__p.n128_u64[0] == v794)
        {
          goto LABEL_775;
        }

        goto LABEL_1110;
      case 58:
        LODWORD(v789) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v785) = 0;
        {
          goto LABEL_788;
        }

        if (v809[0] != v789)
        {
          goto LABEL_433;
        }

        v285 = operator new(0x60uLL);
        v117 = (v285 + 8);
        v285[13] = v285[13] & 0x38000000 | 1;
        *v285 = 0;
        *(v285 + 1) = 0;
        *(v285 + 2) = 0;
        *(v285 + 3) = v285 + 8;
        v800 = 257;
        llvm::FreezeInst::FreezeInst((v285 + 8), __p.n128_u64[0], &v796, 0);
        VirtualTypeID = v785;
        goto LABEL_358;
      case 60:
        if (!v809[0])
        {
LABEL_352:
          v284 = "Invalid record";
LABEL_353:
          v796 = v284;
          v800 = 259;
LABEL_354:
        }

        v280 = v18;
        v281 = v808;
        v282 = 8 * v809[0];
        while (1)
        {
          v283 = *(*v7 + 32 * *v281 + 16);
          if (*(v283 + 16))
          {
            v283 = 0;
          }

          __p.n128_u64[0] = v283;
          if (!v283)
          {
            goto LABEL_761;
          }

          std::vector<llvm::orc::NonOwningSymbolStringPtr>::push_back[abi:nn200100](a2 + 1688, &__p);
          v281 += 2;
          v21 = 4;
          v282 -= 8;
          if (!v282)
          {
            v18 = v280;
            goto LABEL_796;
          }
        }

      default:
        v796 = "Invalid value";
        v800 = 259;
        goto LABEL_354;
    }
  }
}

uint64_t anonymous namespace::BitcodeReader::rememberAndSkipFunctionBody(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  v4 = *(a2 + 1520);
  if (*(a2 + 1512) == v4)
  {
    v7[0] = "Insufficient function protos";
    v8 = 259;
  }

  v7[0] = *(v4 - 8);
  *(a2 + 1520) = v4 - 8;
  v5 = 8 * *(a2 + 48) - *(a2 + 64);
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, v7)[1] = v5;
  return llvm::BitstreamCursor::SkipBlock((a2 + 32), this);
}

uint64_t anonymous namespace::BitcodeReader::getContainedTypeID(_anonymous_namespace_::BitcodeReader *this, int a2, unsigned int a3)
{
  v7 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*(this + 68), *(this + 140), a2, &v7))
  {
    v5 = v7 == *(this + 68) + 32 * *(this + 140);
  }

  else
  {
    v5 = 1;
  }

  if (v5 || *(v7 + 16) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(v7 + 8) + 4 * a3);
  }
}

llvm::ValueHandleBase **llvm::BitcodeReaderValueList::push_back(llvm::ValueHandleBase **this, llvm::Value *a2, int a3)
{
  v5 = this;
  v7 = this[1];
  v6 = this[2];
  if (v7 >= v6)
  {
    v9 = (v7 - *this) >> 5;
    if ((v9 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v6 - *this;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v18[4] = this;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>>(this, v12);
    }

    v13 = 32 * v9;
    *v13 = 6;
    *(v13 + 8) = 0;
    *(v13 + 16) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      llvm::ValueHandleBase::AddToUseList(v13);
    }

    *(v13 + 24) = a3;
    v8 = v13 + 32;
    v14 = v5[1];
    v15 = v13 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v5[1] = (v13 + 32);
    v17 = v5[2];
    v5[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    this = std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::~__split_buffer(v18);
  }

  else
  {
    *v7 = 6;
    *(v7 + 1) = 0;
    *(v7 + 2) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      this = llvm::ValueHandleBase::AddToUseList(v7);
    }

    *(v7 + 6) = a3;
    v8 = v7 + 32;
  }

  v5[1] = v8;
  return this;
}

void anonymous namespace::BitcodeReader::parseConstants(void ***this, uint64_t a2)
{
  v169[64] = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 11, this);
  if (*this)
  {
    goto LABEL_367;
  }

  v4 = v169;
  __src = v169;
  v168 = 0x4000000000;
  v5 = **(a2 + 424) + 1992;
  v6 = (*(a2 + 720) - *(a2 + 712)) >> 5;
  PtrElementTypeByID = 0;
  do
  {
    llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &v165);
    if (v166)
    {
      v7 = v165;
      v165 = 0;
      *this = v7;
LABEL_10:
      v8 = 1;
      goto LABEL_11;
    }

    switch(v165)
    {
      case 2:
        goto LABEL_8;
      case 1:
        if (v6 == ((*(a2 + 720) - *(a2 + 712)) >> 5))
        {
          *this = 0;
          goto LABEL_10;
        }

        v159 = "Invalid constant reference";
LABEL_9:
        v162 = 259;
      case 0:
LABEL_8:
        v159 = "Malformed block";
        goto LABEL_9;
    }

    LODWORD(v168) = 0;
    v10 = **(a2 + 424);
    llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(v165), &__src, 0, &v163);
    if ((v164 & 1) == 0)
    {
      LODWORD(v13) = v163;
      switch(v163)
      {
        case 1:
          if (!v168)
          {
            v14 = "Invalid settype record";
            goto LABEL_269;
          }

          v68 = *__src;
          v69 = *(a2 + 520);
          if (*__src >= ((*(a2 + 528) - v69) >> 3) || (v70 = *(v69 + 8 * v68)) == 0)
          {
            v114 = "Invalid settype record";
            goto LABEL_229;
          }

          if (v70 == v10 + 1608)
          {
            v114 = "Invalid constant type";
LABEL_229:
            v159 = v114;
            v162 = 259;
          }

          v71 = *(v69 + 8 * v68);
          v8 = 2;
          VirtualTypeID = v68;
          v5 = v71;
          goto LABEL_290;
        case 2:
          v75 = *(v5 + 8);
          if (v75 <= 0xE && ((1 << v75) & 0x4180) != 0 || v75 == 21 && (getTargetTypeInfo(v5), (v11 & 1) == 0))
          {
            v14 = "Invalid type for a constant null value";
            goto LABEL_269;
          }

          v155 = v5;
          NullValue = llvm::Constant::getNullValue(v5, v11);
          goto LABEL_286;
        case 4:
          if (*(v5 + 8) != 13 || !v168)
          {
            v14 = "Invalid integer const record";
            goto LABEL_269;
          }

          v55 = *__src;
          if (*__src)
          {
            if (v55 == 1)
            {
              v56 = 0x8000000000000000;
            }

            else
            {
              v56 = -(v55 >> 1);
            }
          }

          else
          {
            v56 = v55 >> 1;
          }

          v155 = v5;
          NullValue = llvm::ConstantInt::get(v5, v56);
          goto LABEL_286;
        case 5:
          if (*(v5 + 8) != 13 || !v168)
          {
            v14 = "Invalid wide integer const record";
            goto LABEL_269;
          }

          v155 = v5;
          llvm::readWideAPInt(__src, v168, *(v5 + 8) >> 8, &v159);
          String = llvm::ConstantInt::get(*(a2 + 424), &v159, v76, v77);
          if (v160 >= 0x41 && v159)
          {
            MEMORY[0x277C69E10](v159, 0x1000C8000313F17);
          }

          goto LABEL_287;
        case 6:
          if (!v168)
          {
            v14 = "Invalid float const record";
            goto LABEL_269;
          }

          v78 = *(v5 + 8);
          v155 = v5;
          if (v78 <= 2)
          {
            if (*(v5 + 8))
            {
              if (v78 == 1)
              {
                v122 = *(a2 + 424);
                v145 = *__src;
                LODWORD(__s.__r_.__value_.__r.__words[1]) = 16;
                __s.__r_.__value_.__r.__words[0] = v145;
                llvm::detail::IEEEFloat::initFromBFloatAPInt(&v160, &__s);
              }

              else
              {
                if (v78 != 2)
                {
                  goto LABEL_147;
                }

                v122 = *(a2 + 424);
                v123 = *__src;
                LODWORD(__s.__r_.__value_.__r.__words[1]) = 32;
                __s.__r_.__value_.__r.__words[0] = v123;
                llvm::detail::IEEEFloat::initFromFloatAPInt(&v160, &__s);
              }
            }

            else
            {
              v122 = *(a2 + 424);
              v142 = *__src;
              LODWORD(__s.__r_.__value_.__r.__words[1]) = 16;
              __s.__r_.__value_.__r.__words[0] = v142;
              llvm::detail::IEEEFloat::initFromHalfAPInt(&v160, &__s);
            }
          }

          else
          {
            if (*(v5 + 8) > 4u)
            {
              if (v78 == 5)
              {
                v144 = *(a2 + 424);
                LODWORD(__s.__r_.__value_.__r.__words[1]) = 128;
                llvm::APInt::initFromArray(&__s, __src);
                llvm::detail::IEEEFloat::initFromQuadrupleAPInt(&v160, &__s);
              }

              if (v78 == 6)
              {
                v127 = *(a2 + 424);
                LODWORD(__s.__r_.__value_.__r.__words[1]) = 128;
                llvm::APInt::initFromArray(&__s, __src);
                llvm::detail::DoubleAPFloat::DoubleAPFloat(&v160, &llvm::semPPCDoubleDouble);
              }

              goto LABEL_147;
            }

            if (v78 != 3)
            {
              if (v78 == 4)
              {
                __s.__r_.__value_.__r.__words[0] = *(__src + 4) | (*__src << 16);
                __s.__r_.__value_.__l.__size_ = *(__src + 3);
                v79 = *(a2 + 424);
                LODWORD(v156.__r_.__value_.__r.__words[1]) = 80;
                llvm::APInt::initFromArray(&v156, &__s);
                llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(&v160, &v156);
              }

LABEL_147:
              v80 = v5;
              goto LABEL_148;
            }

            v122 = *(a2 + 424);
            v143 = *__src;
            LODWORD(__s.__r_.__value_.__r.__words[1]) = 64;
            __s.__r_.__value_.__r.__words[0] = v143;
            llvm::detail::IEEEFloat::initFromDoubleAPInt(&v160, &__s);
          }

          String = llvm::ConstantFP::get(v122, &v159);
          llvm::APFloat::Storage::~Storage(&v160);
          goto LABEL_287;
        case 7:
          if (!v168)
          {
            v14 = "Invalid aggregate record";
            goto LABEL_269;
          }

          v57 = 0;
          v159 = &v160 + 8;
          *&v160 = 0x1000000000;
          v58 = 8 * v168;
          do
          {
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v159, *(__src + v57));
            v57 += 8;
          }

          while (v58 != v57);
          v60 = *(v5 + 8);
          v155 = v5;
          if (v60 == 16)
          {
            v61 = 255;
            goto LABEL_265;
          }

          if (v60 == 17)
          {
            v61 = 254;
LABEL_265:
            LOWORD(__s.__r_.__value_.__l.__data_) = v61;
            HIDWORD(__s.__r_.__value_.__r.__words[0]) = 0;
            __s.__r_.__value_.__l.__size_ = 0;
            goto LABEL_266;
          }

          if ((v60 & 0xFE) == 0x12)
          {
            v61 = 253;
            goto LABEL_265;
          }

          v125 = llvm::UndefValue::get(v5, v59);
          goto LABEL_266;
        case 8:
        case 9:
          if (!v168)
          {
            v14 = "Invalid string record";
            goto LABEL_269;
          }

          v155 = v5;
          v159 = &v161;
          v160 = xmmword_2750C3D00;
          llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v159, __src, __src + 8 * v168);
          String = llvm::ConstantDataArray::getString(*(a2 + 424), v159, v160, v13 == 9);
          v17 = v159;
          if (v159 == &v161)
          {
            goto LABEL_287;
          }

          goto LABEL_338;
        case 10:
          v63 = v168;
          if (v168 <= 2)
          {
            v14 = "Invalid binary op constexpr record";
            goto LABEL_269;
          }

          v104 = __src;
          DecodedBinaryOpcode = getDecodedBinaryOpcode(*__src, v5);
          v155 = v5;
          if (DecodedBinaryOpcode < 0)
          {
            goto LABEL_147;
          }

          if (v63 != 3 && ((v129 = 3, (DecodedBinaryOpcode & 0x7FFFFFFD) == 0xD) || (DecodedBinaryOpcode & 0x7FFFFFF7) == 0x11 || (v129 = 1, (DecodedBinaryOpcode - 19) < 2) || (DecodedBinaryOpcode & 0x7FFFFFFE) == 0x1A))
          {
            v106 = v129 & v104[24];
          }

          else
          {
            v106 = 0;
          }

          LOBYTE(v159) = DecodedBinaryOpcode;
          BYTE1(v159) = v106;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          __s.__r_.__value_.__l.__data_ = vmovn_s64(*(v104 + 8));
          v94 = a2 + 616;
          goto LABEL_284;
        case 11:
          if (v168 <= 2)
          {
            v14 = "Invalid cast constexpr record";
            goto LABEL_269;
          }

          v155 = v5;
          v101 = __src;
          DecodedCastOpcode = getDecodedCastOpcode(*__src);
          if (DecodedCastOpcode < 0)
          {
            v80 = v5;
LABEL_148:
            NullValue = llvm::UndefValue::get(v80, v11);
            goto LABEL_286;
          }

          v103 = DecodedCastOpcode;
          {
            LOWORD(v159) = v103;
            HIDWORD(v159) = 0;
            *&v160 = 0;
            LODWORD(__s.__r_.__value_.__l.__data_) = *(__src + 2);
            v94 = a2 + 616;
            v99 = v155;
LABEL_202:
            v100 = 1;
LABEL_285:
LABEL_286:
            String = NullValue;
LABEL_287:
            llvm::BitcodeReaderValueList::assignValue((a2 + 712), String, v6, VirtualTypeID, this, v16);
            v8 = *this != 0;
            if (!*this)
            {
              LODWORD(v6) = v6 + 1;
            }

            v5 = v155;
            goto LABEL_290;
          }

          v120 = "Invalid cast constexpr record";
          goto LABEL_318;
        case 12:
        case 20:
        case 24:
          if (v168 <= 1)
          {
            v14 = "Constant GEP record must have at least two elements";
            goto LABEL_269;
          }

          v155 = v5;
          if (v163 != 24 && (v168 & 1) == 0)
          {
            v18 = 0;
            TypeByID = 0;
LABEL_193:
            LOBYTE(v13) = v13 == 20;
            LODWORD(v95) = -1;
            v96 = __src;
            goto LABEL_233;
          }

          if (v13 != 24)
          {
            v18 = 1;
            goto LABEL_193;
          }

          v96 = __src;
          v13 = *(__src + 1);
          v95 = v13 >> 1;
          v18 = 2;
LABEL_233:
          v159 = &v160 + 8;
          *&v160 = 0x1000000000;
          if (v168 == v18)
          {
            goto LABEL_234;
          }

          v151 = v95;
          v116 = v96[v18];
          do
          {
            {
              v115 = "Invalid getelementptr constexpr record";
              goto LABEL_326;
            }

            v117 = v18 + 1;
            v18 += 2;
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v159, *(__src + v117));
          }

          while (v18 != v168);
          if (!v160)
          {
LABEL_234:
            v115 = "Invalid gep with no operands";
            goto LABEL_326;
          }

          if ((*(v118 + 8) & 0xFE) == 0x12)
          {
            if (v118)
            {
              v119 = *(v118 + 8);
              goto LABEL_320;
            }

            goto LABEL_325;
          }

          v119 = *(v118 + 8);
LABEL_320:
          if (v119 != 15)
          {
LABEL_325:
            v115 = "GEP base operand must be pointer or vector of pointer";
LABEL_326:
            __s.__r_.__value_.__r.__words[0] = v115;
            v158 = 259;
          }

          if (TypeByID)
          {
            v139 = *(v118 + 24);
            if (v139)
            {
              v140 = v151;
              if (v139 != TypeByID)
              {
                v115 = "Explicit gep operator type does not match pointee type of pointer operand";
                goto LABEL_326;
              }
            }

            else
            {
              v140 = v151;
            }
          }

          else
          {
            v140 = v151;
            if (!TypeByID)
            {
              __s.__r_.__value_.__r.__words[0] = "Missing element type for old-style constant GEP";
              v158 = 259;
            }
          }

          __s.__r_.__value_.__s.__data_[0] = 34;
          __s.__r_.__value_.__s.__data_[1] = v13 & 1;
          HIDWORD(__s.__r_.__value_.__r.__words[0]) = v140;
          __s.__r_.__value_.__l.__size_ = TypeByID;
          if (v159 != &v160 + 8)
          {
            free(v159);
          }

          goto LABEL_287;
        case 13:
          if (v168 <= 2)
          {
            v14 = "Invalid select constexpr record";
            goto LABEL_269;
          }

          v81 = 57;
LABEL_217:
          LOWORD(v159) = v81;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          __s.__r_.__value_.__l.__data_ = vmovn_s64(*__src);
          v54 = *(__src + 2);
LABEL_218:
          LODWORD(__s.__r_.__value_.__r.__words[1]) = v54;
          goto LABEL_219;
        case 14:
          if (v168 <= 2)
          {
            goto LABEL_189;
          }

          if (!v64 || (*(v64 + 8) & 0xFE) != 0x12)
          {
            goto LABEL_189;
          }

          v65 = __src;
          v66 = (__src + 16);
          if (v168 != 4)
          {
            goto LABEL_117;
          }

          {
LABEL_189:
            v14 = "Invalid extractelement constexpr record";
            goto LABEL_269;
          }

          v65 = __src;
          v66 = (__src + 24);
LABEL_117:
          v67 = *v66;
          LOWORD(v159) = 61;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          LODWORD(__s.__r_.__value_.__l.__data_) = v65[1];
          HIDWORD(__s.__r_.__value_.__r.__words[0]) = v67;
          goto LABEL_261;
        case 15:
          if (v168 < 3 || (*(v5 + 8) & 0xFE) != 0x12 || !v5)
          {
            goto LABEL_198;
          }

          v72 = __src;
          v73 = (__src + 16);
          if (v168 != 4)
          {
            goto LABEL_129;
          }

          {
LABEL_198:
            v14 = "Invalid insertelement constexpr record";
            goto LABEL_269;
          }

          v72 = __src;
          v73 = (__src + 24);
LABEL_129:
          v74 = *v73;
          LOWORD(v159) = 62;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          __s.__r_.__value_.__l.__data_ = vmovn_s64(*v72);
          LODWORD(__s.__r_.__value_.__r.__words[1]) = v74;
LABEL_219:
          v94 = a2 + 616;
          v155 = v5;
          v99 = v5;
          v100 = 3;
          goto LABEL_285;
        case 16:
          if (v168 < 3 || (*(v5 + 8) & 0xFE) != 0x12 || !v5)
          {
            goto LABEL_153;
          }

          v81 = 63;
          goto LABEL_217;
        case 17:
          if (v168 <= 3)
          {
            v14 = "Invalid cmp constexpt record";
            goto LABEL_269;
          }

          if (!v107)
          {
            v14 = "Invalid cmp constexpr record";
LABEL_269:
            v159 = v14;
            v162 = 259;
          }

          v108 = *(v107 + 8);
          if ((v108 & 0xFE) == 0x12)
          {
            v108 = *(**(v107 + 16) + 8);
          }

          if (v108 < 6u && ((0x2Fu >> v108) & 1) != 0)
          {
            v109 = 54;
          }

          else if ((v108 & 0xFD) == 4)
          {
            v109 = 54;
          }

          else
          {
            v109 = 53;
          }

          v124 = *(__src + 3);
          LOBYTE(v159) = v109;
          BYTE1(v159) = v124;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          __s.__r_.__value_.__l.__data_ = vmovn_s64(*(__src + 8));
LABEL_261:
          v94 = a2 + 616;
          v155 = v5;
LABEL_284:
          v99 = v5;
          v100 = 2;
          goto LABEL_285;
        case 18:
          if (v168 <= 1)
          {
            goto LABEL_188;
          }

          v155 = v5;
          memset(&v156, 0, sizeof(v156));
          memset(&__s, 0, sizeof(__s));
          v83 = *(__src + 1);
          v84 = (v83 + 2);
          if (v84 >= v168)
          {
            goto LABEL_222;
          }

          v85 = *(__src + v84);
          if (v168 < v83 + v85 + 3)
          {
            goto LABEL_222;
          }

          v86 = v4;
          v150 = *__src;
          if (v83)
          {
            v87 = v83;
            v88 = 2;
            do
            {
              std::string::push_back(&__s, *(__src + v88++));
              --v87;
            }

            while (v87);
          }

          if (v85)
          {
            v85 = v85;
            v89 = v83 + 3;
            do
            {
              std::string::push_back(&v156, *(__src + v89++));
              --v85;
            }

            while (v85);
          }

          llvm::UpgradeInlineAsmString(&__s);
          v4 = v86;
          if (!PtrElementTypeByID)
          {
            goto LABEL_316;
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_s = &__s;
          }

          else
          {
            p_s = __s.__r_.__value_.__r.__words[0];
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __s.__r_.__value_.__l.__size_;
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v92 = &v156;
          }

          else
          {
            v92 = v156.__r_.__value_.__r.__words[0];
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v93 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v93 = v156.__r_.__value_.__l.__size_;
          }

          v51 = llvm::InlineAsm::get(PtrElementTypeByID, p_s, size, v92, v93, v150 & 1, v150 > 1, 0, 0);
          goto LABEL_315;
        case 19:
          v52 = *(v5 + 8);
          if (!v53 || v168 < 4 || (v52 & 0xFE) != 0x12 || (*(v53 + 8) & 0xFE) != 0x12)
          {
LABEL_153:
            v14 = "Invalid shufflevector constexpr record";
            goto LABEL_269;
          }

          LOWORD(v159) = 63;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          __s.__r_.__value_.__l.__data_ = vmovn_s64(*(__src + 8));
          v54 = *(__src + 3);
          goto LABEL_218;
        case 21:
          {
            v14 = "Invalid blockaddress record";
            goto LABEL_269;
          }

          LOWORD(v159) = 250;
          *&v160 = 0;
          v82 = *(__src + 1);
          HIDWORD(v159) = *(__src + 2);
          goto LABEL_186;
        case 22:
          if (!v168)
          {
            v14 = "Invalid data record";
            goto LABEL_269;
          }

          v20 = v5;
          v21 = *(v5 + 24);
          v22 = *(v21 + 8);
          v23 = v22 >> 8;
          v24 = v22 == 13 && v23 == 8;
          v155 = v20;
          if (v24)
          {
            v159 = &v161;
            v160 = xmmword_2750C3D00;
            llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v159, __src, __src + 8 * v168);
            v121 = *(a2 + 424);
            if ((*(v20 + 8) & 0xFE) == 0x12)
            {
              FP = llvm::ConstantDataVector::get(v121, v159, v160);
            }

            else
            {
              FP = llvm::ConstantDataArray::get<unsigned char>(v121, v159, v160);
            }

            goto LABEL_336;
          }

          if (v22 == 13 && v23 == 16)
          {
            v159 = &v161;
            v160 = xmmword_2750C3D00;
            llvm::SmallVectorImpl<unsigned short>::append<unsigned long long *,void>(&v159, __src, __src + 8 * v168);
            v25 = *(a2 + 424);
            if ((*(v20 + 8) & 0xFE) == 0x12)
            {
              FP = llvm::ConstantDataVector::get(v25, v159, v160);
            }

            else
            {
              FP = llvm::ConstantDataArray::get<unsigned short>(v25, v159, v160);
            }

LABEL_336:
            String = FP;
            v17 = v159;
            v126 = &v161;
LABEL_337:
            if (v17 != v126)
            {
LABEL_338:
              free(v17);
            }

            goto LABEL_287;
          }

          if (v22 == 13 && v23 == 32)
          {
            v159 = &v160 + 8;
            *&v160 = 0x1000000000;
            llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v159, __src, __src + 8 * v168);
            v128 = *(a2 + 424);
            if ((*(v20 + 8) & 0xFE) == 0x12)
            {
              v125 = llvm::ConstantDataVector::get(v128, v159, v160);
            }

            else
            {
              v125 = llvm::ConstantDataArray::get<unsigned int>(v128, v159, v160);
            }
          }

          else if (v22 == 13 && v23 == 64)
          {
            v159 = &v160 + 8;
            *&v160 = 0x1000000000;
            llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v159, __src, __src + 8 * v168);
            v141 = *(a2 + 424);
            if ((*(v20 + 8) & 0xFE) == 0x12)
            {
              v125 = llvm::ConstantDataVector::get(v141, v159, v160);
            }

            else
            {
              v125 = llvm::ConstantDataArray::get<unsigned long long>(v141, v159, v160);
            }
          }

          else
          {
            if (v22 <= 1u)
            {
              v159 = &v161;
              v160 = xmmword_2750C3D00;
              llvm::SmallVectorImpl<unsigned short>::append<unsigned long long *,void>(&v159, __src, __src + 8 * v168);
              if ((*(v20 + 8) & 0xFE) == 0x12)
              {
                FP = llvm::ConstantDataVector::getFP(v21, v159, v160);
              }

              else
              {
                FP = llvm::ConstantDataArray::getFP(v21, v159, v160);
              }

              goto LABEL_336;
            }

            if (v22 == 2)
            {
              v159 = &v160 + 8;
              *&v160 = 0x1000000000;
              llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v159, __src, __src + 8 * v168);
              if ((*(v20 + 8) & 0xFE) == 0x12)
              {
                v125 = llvm::ConstantDataVector::getFP(v21, v159, v160);
              }

              else
              {
                v125 = llvm::ConstantDataArray::getFP(v21, v159, v160);
              }
            }

            else
            {
              if (v22 != 3)
              {
                v120 = "Invalid type for value";
LABEL_318:
                v159 = v120;
                v162 = 259;
              }

              v159 = &v160 + 8;
              *&v160 = 0x1000000000;
              llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v159, __src, __src + 8 * v168);
              if ((*(v20 + 8) & 0xFE) == 0x12)
              {
                v125 = llvm::ConstantDataVector::getFP(v21, v159, v160);
              }

              else
              {
                v125 = llvm::ConstantDataArray::getFP(v21, v159, v160);
              }
            }
          }

LABEL_266:
          String = v125;
          v17 = v159;
          v126 = &v160 + 8;
          goto LABEL_337;
        case 23:
          if (v168 <= 1)
          {
            goto LABEL_188;
          }

          v155 = v5;
          memset(&v156, 0, sizeof(v156));
          memset(&__s, 0, sizeof(__s));
          v40 = *(__src + 1);
          v41 = (v40 + 2);
          if (v41 >= v168)
          {
            goto LABEL_222;
          }

          v42 = *(__src + v41);
          if (v168 < v40 + v42 + 3)
          {
            goto LABEL_222;
          }

          v149 = v4;
          v43 = *__src;
          if (v40)
          {
            v44 = v40;
            v45 = 2;
            do
            {
              std::string::push_back(&__s, *(__src + v45++));
              --v44;
            }

            while (v44);
          }

          if (v42)
          {
            v42 = v42;
            v46 = v40 + 3;
            do
            {
              std::string::push_back(&v156, *(__src + v46++));
              --v42;
            }

            while (v42);
          }

          llvm::UpgradeInlineAsmString(&__s);
          v4 = v149;
          if (!PtrElementTypeByID)
          {
            goto LABEL_316;
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__s;
          }

          else
          {
            v47 = __s.__r_.__value_.__r.__words[0];
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v48 = __s.__r_.__value_.__l.__size_;
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v156;
          }

          else
          {
            v49 = v156.__r_.__value_.__r.__words[0];
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = v156.__r_.__value_.__l.__size_;
          }

          v51 = llvm::InlineAsm::get(PtrElementTypeByID, v47, v48, v49, v50, v43 & 1, (v43 & 2) != 0, v43 >> 2, 0);
          goto LABEL_315;
        case 25:
          if (v168 <= 1)
          {
            v14 = "Invalid unary op constexpr record";
            goto LABEL_269;
          }

          v97 = __src;
          DecodedUnaryOpcode = getDecodedUnaryOpcode(*__src, v5);
          v155 = v5;
          if (DecodedUnaryOpcode < 0)
          {
            goto LABEL_147;
          }

          LOWORD(v159) = DecodedUnaryOpcode;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          LODWORD(__s.__r_.__value_.__l.__data_) = v97[1];
          v94 = a2 + 616;
          goto LABEL_201;
        case 26:
          v155 = v5;
          NullValue = llvm::PoisonValue::get(v5, v11);
          goto LABEL_286;
        case 27:
          {
            v14 = "Invalid dso_local record";
            goto LABEL_269;
          }

          v27 = 251;
          goto LABEL_185;
        case 28:
          if (v168 <= 1)
          {
            goto LABEL_188;
          }

          v155 = v5;
          memset(&v156, 0, sizeof(v156));
          memset(&__s, 0, sizeof(__s));
          v110 = *(__src + 1);
          v111 = (v110 + 2);
          if (v111 >= v168)
          {
            goto LABEL_222;
          }

          v112 = *(__src + v111);
          if (v168 < v110 + v112 + 3)
          {
            goto LABEL_222;
          }

          v152 = v4;
          v131 = *__src;
          if (v110)
          {
            v132 = v110;
            v133 = 2;
            do
            {
              std::string::push_back(&__s, *(__src + v133++));
              --v132;
            }

            while (v132);
          }

          if (v112)
          {
            v112 = v112;
            v134 = v110 + 3;
            do
            {
              std::string::push_back(&v156, *(__src + v134++));
              --v112;
            }

            while (v112);
          }

          llvm::UpgradeInlineAsmString(&__s);
          v4 = v152;
          if (!PtrElementTypeByID)
          {
LABEL_316:
            v113 = "Missing element type for old-style inlineasm";
LABEL_223:
            v159 = v113;
            v162 = 259;
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v135 = &__s;
          }

          else
          {
            v135 = __s.__r_.__value_.__r.__words[0];
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v136 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v136 = __s.__r_.__value_.__l.__size_;
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v137 = &v156;
          }

          else
          {
            v137 = v156.__r_.__value_.__r.__words[0];
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v138 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v138 = v156.__r_.__value_.__l.__size_;
          }

          v51 = llvm::InlineAsm::get(PtrElementTypeByID, v135, v136, v137, v138, v131 & 1, (v131 & 2) != 0, (v131 >> 2) & 1, (v131 & 8) != 0);
LABEL_315:
          String = v51;
          goto LABEL_224;
        case 29:
          {
            v14 = "Invalid no_cfi record";
            goto LABEL_269;
          }

          v27 = 252;
LABEL_185:
          LOWORD(v159) = v27;
          HIDWORD(v159) = 0;
          *&v160 = 0;
          v82 = *(__src + 1);
LABEL_186:
          LODWORD(__s.__r_.__value_.__l.__data_) = v82;
          v94 = a2 + 616;
          v155 = v5;
LABEL_201:
          v99 = v5;
          goto LABEL_202;
        case 30:
          if (v168 <= 2)
          {
LABEL_188:
            v14 = "Invalid inlineasm record";
            goto LABEL_269;
          }

          v155 = v5;
          if (!v28 || (v29 = v28, *(v28 + 8) != 14))
          {
            v120 = "Invalid inlineasm record";
            goto LABEL_318;
          }

          memset(&__s, 0, sizeof(__s));
          memset(&v156, 0, sizeof(v156));
          v30 = *(__src + 2);
          v31 = (v30 + 3);
          if (v31 >= v168 || (v32 = *(__src + v31), v168 < v30 + v32 + 4))
          {
LABEL_222:
            v113 = "Invalid inlineasm record";
            goto LABEL_223;
          }

          v147 = *(__src + 1);
          v148 = v4;
          if (v30)
          {
            v33 = v30;
            v34 = 3;
            do
            {
              std::string::push_back(&__s, *(__src + v34++));
              --v33;
            }

            while (v33);
          }

          if (v32)
          {
            v32 = v32;
            v35 = v30 + 4;
            do
            {
              std::string::push_back(&v156, *(__src + v35++));
              --v32;
            }

            while (v32);
          }

          llvm::UpgradeInlineAsmString(&__s);
          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &__s;
          }

          else
          {
            v36 = __s.__r_.__value_.__r.__words[0];
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v37 = __s.__r_.__value_.__l.__size_;
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v156;
          }

          else
          {
            v38 = v156.__r_.__value_.__r.__words[0];
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v156.__r_.__value_.__l.__size_;
          }

          String = llvm::InlineAsm::get(v29, v36, v37, v38, v39, v147 & 1, (v147 & 2) != 0, (v147 >> 2) & 1, (v147 & 8) != 0);
          v4 = v148;
LABEL_224:
          if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v156.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          goto LABEL_287;
        default:
          v155 = v5;
          goto LABEL_147;
      }
    }

    v12 = v163;
    v163 = 0;
    *this = v12;
    v8 = 1;
LABEL_290:
    if (v164)
    {
      v130 = v163;
      v163 = 0;
      if (v130)
      {
        (*(*v130 + 1))(v130);
      }
    }

LABEL_11:
    if (v166)
    {
      v9 = v165;
      v165 = 0;
      if (v9)
      {
        (*(*v9 + 1))(v9);
      }
    }
  }

  while ((v8 | 2) == 2);
  if (__src != v4)
  {
    free(__src);
  }

LABEL_367:
  v146 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::BitcodeReader::parseValueSymbolTable(void ***this, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    llvm::SimpleBitstreamCursor::JumpToBit(a2 + 32, 32 * a3, &v48);
    v8 = v48;
    if (v48)
    {
LABEL_5:
      *this = v8;
      goto LABEL_64;
    }

    v9 = llvm::BitstreamCursor::advance(a2 + 32, 0, &v41);
    if (v42)
    {
      v8 = v41;
      goto LABEL_5;
    }

    if (v41 != 0xE00000002)
    {
      v48 = "Expected value symbol table subblock";
      v50[8] = 259;
      llvm::BitcodeErrorCategory(v9);
      operator new();
    }

    v10 = 8 * v6 - v7;
    if (*(a2 + 392) == 1)
    {
      v14 = *(a2 + 68);
      llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 14, this);
      if (!*this)
      {
        v48 = v50;
        v49 = 0x4000000000;
        llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &__p);
        if (v46)
        {
LABEL_14:
          *this = __p;
        }

        else
        {
          v27 = (v14 + 8);
          while (1)
          {
            switch(__p)
            {
              case 2:
LABEL_84:
                v41 = "Malformed block";
                v44 = 259;
              case 1:
                *this = 0;
                goto LABEL_91;
              case 0:
                goto LABEL_84;
            }

            LODWORD(v49) = 0;
            llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(__p), &v48, 0, &v36);
            if (v37)
            {
              break;
            }

            if (v36 == 3)
            {
              v28 = *(a2 + 712);
              if (((*(a2 + 720) - v28) >> 5) <= *v48 || !*(v28 + 32 * *v48 + 16))
              {
                v41 = "Invalid value reference in symbol table";
                v44 = 259;
              }

              v41 = *(v28 + 32 * *v48 + 16);
              v29 = 32 * *(v48 + 1) - 32;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, &v41)[1] = v29 + v27;
              if (v29 > *(a2 + 448))
              {
                *(a2 + 448) = v29;
              }

              if (v37)
              {
                v30 = v36;
                v36 = 0;
                if (v30)
                {
                  (*(*v30 + 8))(v30);
                }
              }
            }

            if (v46)
            {
              v31 = __p;
              __p = 0;
              if (v31)
              {
                (*(*v31 + 8))(v31);
              }
            }

            llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &__p);
            if (v46)
            {
              goto LABEL_14;
            }
          }

          *this = v36;
          if (v46)
          {
            v32 = __p;
            __p = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }
        }

LABEL_91:
        if (v48 != v50)
        {
          free(v48);
        }

        if (!*this)
        {
          llvm::SimpleBitstreamCursor::JumpToBit(a2 + 32, v10, this);
        }
      }

      goto LABEL_64;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 68);
  llvm::BitstreamCursor::EnterSubBlock((a2 + 32), 0, 14, this);
  if (!*this)
  {
    v48 = v50;
    v49 = 0x4000000000;
    v12 = (*(a2 + 432) + 208);
    v44 = 260;
    v41 = v12;
    llvm::Triple::Triple(&__p, &v41);
    v41 = &v43;
    v42 = xmmword_2750C1290;
    llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &v39);
    if (v40)
    {
LABEL_9:
      v13 = v39;
      v39 = 0;
      *this = v13;
    }

    else
    {
      v15 = (v11 + 8);
      while (1)
      {
        if (v39 == 2)
        {
LABEL_45:
          v36 = "Malformed block";
          v38 = 259;
        }

        if (v39 == 1)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_45;
        }

        LODWORD(v49) = 0;
        llvm::BitstreamCursor::readRecord((a2 + 32), SHIDWORD(v39), &v48, 0, &v34);
        if (v35)
        {
          v23 = v34;
          v34 = 0;
LABEL_50:
          *this = v23;
LABEL_52:
          if (v35)
          {
            v24 = v34;
            v34 = 0;
            if (v24)
            {
              (*(*v24 + 8))(v24);
            }
          }

          goto LABEL_55;
        }

        switch(v34)
        {
          case 3:
            if (v37)
            {
              v23 = v36;
              goto LABEL_50;
            }

            *this = 0;
            if (v36)
            {
              if (!*(v36 + 16))
              {
                v33 = v36;
                v20 = 32 * *(v48 + 1) - 32;
                llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, &v33)[1] = v20 + v15;
                if (v20 > *(a2 + 448))
                {
                  *(a2 + 448) = v20;
                }
              }
            }

            break;
          case 2:
            if (!v49 || (llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v41, v48 + 8, v48 + 8 * v49), v17 = *v48, v18 = *(a2 + 1488), v17 >= (*(a2 + 1496) - v18) >> 3) || (v19 = *(v18 + 8 * v17)) == 0)
            {
              v36 = "Invalid bbentry record";
              v38 = 259;
            }

            v38 = 261;
            v36 = v41;
            v37 = v42;
            llvm::Value::setName(v19, &v36);
            *&v42 = 0;
            break;
          case 1:
            if (v37)
            {
              v16 = v36;
              *this = v36;
              if (v16)
              {
                goto LABEL_52;
              }
            }

            else
            {
              *this = 0;
            }

            break;
        }

        if (v35)
        {
          v21 = v34;
          v34 = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }
        }

        if (v40)
        {
          v22 = v39;
          v39 = 0;
          if (v22)
          {
            (*(*v22 + 1))(v22);
          }
        }

        llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 32), 0, &v39);
        if (v40)
        {
          goto LABEL_9;
        }
      }

      if (!a3 || (llvm::SimpleBitstreamCursor::JumpToBit(a2 + 32, v10, this), !*this))
      {
        *this = 0;
      }
    }

LABEL_55:
    if (v40)
    {
      v25 = v39;
      v39 = 0;
      if (v25)
      {
        (*(*v25 + 1))(v25);
      }
    }

    if (v41 != &v43)
    {
      free(v41);
    }

    if (v47 < 0)
    {
      operator delete(__p);
    }

    if (v48 != v50)
    {
      free(v48);
    }
  }

LABEL_64:
  v26 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::BitcodeReader::parseUseLists(void ***this, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock((a2 + 4), 0, 18, this);
  if (*this)
  {
    goto LABEL_6;
  }

  v45 = v47;
  v46 = 0x4000000000;
  llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 4), 0, &v43);
  if ((v44 & 1) == 0)
  {
    while (1)
    {
      switch(v43)
      {
        case 2:
LABEL_75:
          v38[0] = "Malformed block";
          v40 = 259;
        case 1:
          *this = 0;
          goto LABEL_4;
        case 0:
          goto LABEL_75;
      }

      LODWORD(v46) = 0;
      llvm::BitstreamCursor::readRecord((a2 + 4), SHIDWORD(v43), &v45, 0, &v41);
      if (v42)
      {
        *this = v41;
        if (v44)
        {
          v37 = v43;
          v43 = 0;
          if (v37)
          {
            (*(*v37 + 1))(v37);
          }
        }

        goto LABEL_4;
      }

      if (v41 == 1)
      {
        break;
      }

      if (v41 == 2)
      {
        if (v46 <= 2)
        {
          goto LABEL_78;
        }

        v5 = *(v45 + 2 * v46 - 2);
        v6 = v46 - 1;
        LODWORD(v46) = v46 - 1;
        v7 = (a2[186] + 8 * v5);
        goto LABEL_17;
      }

LABEL_70:
      if (v44)
      {
        v36 = v43;
        v43 = 0;
        if (v36)
        {
          (*(*v36 + 1))(v36);
        }
      }

      llvm::BitstreamCursor::advanceSkippingSubblocks((a2 + 4), 0, &v43);
      if (v44)
      {
        goto LABEL_3;
      }
    }

    if (v46 <= 2)
    {
LABEL_78:
      v38[0] = "Invalid record";
      v40 = 259;
    }

    v8 = *(v45 + 2 * v46 - 2);
    v6 = v46 - 1;
    LODWORD(v46) = v46 - 1;
    v7 = (a2[89] + 32 * v8 + 16);
LABEL_17:
    v9 = *v7;
    v38[0] = 1;
    for (i = 1; i != 33; i += 2)
    {
      v38[i] = -4096;
    }

    v13 = *(v9 + 8);
    v12 = (v9 + 8);
    v11 = v13;
    if (v13)
    {
      v14 = 0;
      while (1)
      {
        v15 = v14++;
        v6 = v46;
        if (v46 < v14)
        {
          goto LABEL_36;
        }

        v16 = *(v45 + v15);
        v48 = 0;
        v17 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(v38, v11, &v48);
        v18 = v48;
        if ((v17 & 1) == 0)
        {
          break;
        }

LABEL_31:
        *(v18 + 8) = v16;
        v11 = *(v11 + 8);
        if (!v11)
        {
          v6 = v46;
          v14 = v15 + 1;
          goto LABEL_36;
        }
      }

      v19 = LODWORD(v38[0]) >> 1;
      if (v38[0])
      {
        v20 = 16;
      }

      else
      {
        v20 = v39;
      }

      if (4 * v19 + 4 >= 3 * v20)
      {
        v20 *= 2;
      }

      else if (v20 + ~v19 - HIDWORD(v38[0]) > v20 >> 3)
      {
LABEL_28:
        LODWORD(v38[0]) += 2;
        if (*v18 != -4096)
        {
          --HIDWORD(v38[0]);
        }

        *v18 = v11;
        *(v18 + 8) = 0;
        goto LABEL_31;
      }

      llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::grow(v38, v20);
      v48 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(v38, v11, &v48);
      v18 = v48;
      goto LABEL_28;
    }

    v14 = 0;
LABEL_36:
    v21 = v38[0];
    v22 = v6 >= v14 && v6 == LODWORD(v38[0]) >> 1;
    if (!v22 || (v23 = *v12) == 0 || (v24 = *(v23 + 8)) == 0)
    {
LABEL_65:
      if ((v21 & 1) == 0)
      {
        MEMORY[0x277C69E30](v38[1], 8);
      }

      if (v42)
      {
        v35 = v41;
        v41 = 0;
        if (v35)
        {
          (*(*v35 + 1))(v35);
        }
      }

      goto LABEL_70;
    }

    v64 = 0;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    *(v23 + 8) = 0;
    v48 = v23;
    v25 = *(v24 + 8);
    if (v25)
    {
      v26 = 1;
      do
      {
        v27 = v24;
        v24 = v25;
        v28 = v26;
        *(v27 + 8) = 0;
        if (v26)
        {
          v29 = 0;
          while (1)
          {
            v30 = *(&v48 + v29);
            if (!v30)
            {
              break;
            }

            *(&v48 + v29++) = 0;
            if (v28 == v29)
            {
              LODWORD(v29) = v28;
              break;
            }
          }
        }

        else
        {
          LODWORD(v29) = 0;
        }

        if (v29 == v28)
        {
          v26 = v28 + 1;
        }

        else
        {
          v26 = v28;
        }

        *(&v48 + v29) = v27;
        v25 = *(v24 + 8);
      }

      while (v25);
      *v12 = v24;
      if (!v26)
      {
        do
        {
LABEL_63:
          v34 = *(v24 + 8);
          v33 = (v24 + 8);
          v33[1] = v12;
          v12 = v33;
          v24 = v34;
        }

        while (v34);
LABEL_64:
        v21 = v38[0];
        goto LABEL_65;
      }
    }

    else
    {
      *v12 = v24;
      v26 = 1;
    }

    v31 = v26;
    v32 = &v48;
    do
    {
      if (*v32)
      {
        *v12 = v24;
      }

      ++v32;
      --v31;
    }

    while (v31);
    if (!v24)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_3:
  *this = v43;
LABEL_4:
  if (v45 != v47)
  {
    free(v45);
  }

LABEL_6:
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::find(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v4 = *a1;
  if (v3)
  {
    return v6;
  }

  else
  {
    return *a1 + 32 * *(a1 + 16);
  }
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;
    operator delete(v4);
  }

  *a2 = -8192;
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t anonymous namespace::BitcodeReader::parseFunctionBody(llvm::Function *)::$_1::operator()(uint64_t **a1)
{
  v1 = **a1;
  if (!v1 || (v2 = *(v1 + 40), v2 == v1 + 40))
  {
    v5 = *a1[1];
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1[2][186] + 8 * (v5 - 1));
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 40);
    if (v7 == v6 + 40)
    {
      return 0;
    }

    v3 = v7 - 24;
    v4 = v7 == 0;
  }

  else
  {
    v3 = v2 - 24;
    v4 = v2 == 0;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

BOOL anonymous namespace::BitcodeReader::getValueTypePair(_BYTE *a1, uint64_t *a2, _DWORD *a3, unsigned int a4, llvm::MCAsmLexer **a5, unsigned int *a6, llvm::BasicBlock *a7)
{
  v7 = *a3;
  if (*(a2 + 2) == v7)
  {
    return 1;
  }

  v13 = v7 + 1;
  v14 = *a2;
  v15 = *(*a2 + 8 * v7);
  *a3 = v7 + 1;
  if (a1[1712])
  {
    v16 = a4 - v15;
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= a4)
  {
    if (*(a2 + 2) == v13)
    {
      return 1;
    }

    *a3 = v7 + 2;
    v19 = *(v14 + 8 * v13);
    *a6 = v19;
  }

  else
  {
    v17 = *(*(a1 + 89) + 32 * v16 + 24);
    *a6 = v17;
    FnValueByID = llvm::BitcodeReaderValueList::getValueFwdRef((a1 + 712), v16, 0, v17, a7);
  }

  *a5 = FnValueByID;
  return FnValueByID == 0;
}

uint64_t getDecodedUnaryOpcode(int a1, uint64_t a2)
{
  LOBYTE(v2) = *(a2 + 8);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v2 = *(**(a2 + 16) + 8);
  }

  v3 = v2 < 4u || v2 == 5;
  v4 = v2 & 0xFD;
  if (v3 || v4 == 4)
  {
    if (a1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    if ((*(a2 + 8) & 0xFE) == 0x12)
    {
      v8 = *(**(a2 + 16) + 8);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t getDecodedBinaryOpcode(int a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 8) & 0xFE;
  LOBYTE(v4) = *(a2 + 8);
  if (v3 == 18)
  {
    v4 = *(**(a2 + 16) + 8);
  }

  if (v4 >= 6u)
  {
    if ((v4 & 0xFD) == 4)
    {
      v5 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 1;
    if (v4 & 5) == 4 || ((0x2Fu >> v4))
    {
      goto LABEL_13;
    }
  }

  if (v3 == 18)
  {
    v2 = *(**(a2 + 16) + 8);
  }

  if (v2 != 13)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
LABEL_13:
  switch(a1)
  {
    case 0:
      v6 = v5 == 0;
      v7 = 13;
      goto LABEL_26;
    case 1:
      v6 = v5 == 0;
      v7 = 15;
      goto LABEL_26;
    case 2:
      v6 = v5 == 0;
      v7 = 17;
      goto LABEL_26;
    case 3:
      v9 = v5 == 0;
      v10 = 19;
      goto LABEL_31;
    case 4:
      v6 = v5 == 0;
      v7 = 20;
      goto LABEL_26;
    case 5:
      v9 = v5 == 0;
      v10 = 22;
      goto LABEL_31;
    case 6:
      v6 = v5 == 0;
      v7 = 23;
LABEL_26:
      if (v6)
      {
        return v7;
      }

      else
      {
        return v7 + 1;
      }

    case 7:
      v9 = v5 == 0;
      v10 = 25;
      goto LABEL_31;
    case 8:
      v9 = v5 == 0;
      v10 = 26;
      goto LABEL_31;
    case 9:
      v9 = v5 == 0;
      v10 = 27;
      goto LABEL_31;
    case 10:
      v9 = v5 == 0;
      v10 = 28;
      goto LABEL_31;
    case 11:
      v9 = v5 == 0;
      v10 = 29;
      goto LABEL_31;
    case 12:
      v9 = v5 == 0;
      v10 = 30;
LABEL_31:
      if (v9)
      {
        result = v10;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      break;
    default:
      return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t anonymous namespace::BitcodeReader::getTypeByID(_anonymous_namespace_::BitcodeReader *this, unsigned int a2)
{
  v2 = a2;
  v3 = *(this + 65);
  if (a2 >= ((*(this + 66) - v3) >> 3))
  {
    return 0;
  }

  v4 = *(v3 + 8 * a2);
  if (!v4)
  {
    v6 = *(this + 53);
    v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*v6 + 2072, 32, 3);
    *v4 = v6;
    *(v4 + 8) = 16;
    *(v4 + 20) = 0;
    *(v4 + 12) = 0;
    *(v4 + 28) = 0;
    v8 = v4;
    std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](this + 1872, &v8);
    *(*(this + 65) + 8 * v2) = v4;
  }

  return v4;
}

uint64_t getDecodedCastOpcode(unsigned int a1)
{
  if (a1 >= 0xD)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 + 38;
  }
}

uint64_t anonymous namespace::BitcodeReader::getVirtualTypeID(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *a3;
  }

  else
  {
    v8 = -1;
  }

  v28 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*(a1 + 568), *(a1 + 584), a2, v8, &v28))
  {
    v9 = v28 == *(a1 + 568) + 24 * *(a1 + 584);
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return *(v28 + 16);
  }

  v10 = *(a1 + 528);
  v11 = *(a1 + 520);
  v14 = (v10 - v11) >> 3;
  v27 = v14;
  v12 = *(a1 + 536);
  if (v10 >= v12)
  {
    if ((v14 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v15 = v12 - v11;
    v16 = v15 >> 2;
    if (v15 >> 2 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1 + 520, v17);
    }

    *(8 * v14) = a2;
    v13 = 8 * v14 + 8;
    v18 = *(a1 + 520);
    v19 = *(a1 + 528) - v18;
    v20 = (8 * v14 - v19);
    memcpy(v20, v18, v19);
    v21 = *(a1 + 520);
    *(a1 + 520) = v20;
    *(a1 + 528) = v13;
    *(a1 + 536) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v10 = a2;
    v13 = (v10 + 1);
  }

  *(a1 + 528) = v13;
  if (a4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::FindAndConstruct(a1 + 544, &v27);
    llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>((v22 + 8), a3, &a3[4 * a4]);
  }

  v28 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*(a1 + 568), *(a1 + 584), a2, v8, &v28) & 1) == 0)
  {
    v23 = *(a1 + 576);
    v24 = *(a1 + 584);
    if (4 * v23 + 4 >= 3 * v24)
    {
      v24 *= 2;
    }

    else if (v24 + ~v23 - *(a1 + 580) > v24 >> 3)
    {
      goto LABEL_26;
    }

    llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::grow(a1 + 568, v24);
    v28 = 0;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*(a1 + 568), *(a1 + 584), a2, v8, &v28);
LABEL_26:
    v25 = v28;
    ++*(a1 + 576);
    if (*v25 != -4096 || *(v25 + 8) != -1)
    {
      --*(a1 + 580);
    }

    *v25 = a2;
    *(v25 + 8) = v8;
    *(v25 + 16) = v14;
  }

  return v14;
}

llvm::Value *llvm::ExtractValueInst::Create(uint64_t *a1, unsigned int *a2, uint64_t a3, const llvm::Twine *a4)
{
  v8 = operator new(0x80uLL);
  v9 = (v8 + 8);
  v8[13] = v8[13] & 0x38000000 | 1;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v8 + 8;
  IndexedType = llvm::ExtractValueInst::getIndexedType(*a1, a2, a3);
  llvm::UnaryInstruction::UnaryInstruction((v8 + 8), IndexedType, 64, a1, 0);
  *(v8 + 12) = v8 + 28;
  v8 += 24;
  *(v8 + 1) = 0x400000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(v8, a2, &a2[a3]);
  llvm::Value::setName(v9, a4);
  return v9;
}

char *llvm::InsertValueInst::Create(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, const llvm::Twine *a5)
{
  v10 = operator new(0xA0uLL);
  *v10 = 0;
  *(v10 + 8) = 0u;
  *(v10 + 8) = *a1;
  v11 = v10 + 64;
  *(v10 + 3) = v10 + 64;
  *(v10 + 4) = 0;
  *(v10 + 40) = 0u;
  *(v10 + 7) = v10 + 64;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0x20000005DLL;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 30) = 0;
  *(v10 + 16) = v10 + 144;
  *(v10 + 17) = 0x400000000;
  llvm::InsertValueInst::init(v10 + 16, a1, a2, a3, a4, a5);
  return v11;
}

llvm::ExtractElementInst *llvm::ExtractElementInst::Create(llvm::ExtractElementInst *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v8 = operator new(0x80uLL);
  v8[21] = v8[21] & 0x38000000 | 2;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v8 + 16;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 7) = v8 + 16;
  v9 = (v8 + 16);

  return llvm::ExtractElementInst::ExtractElementInst(v9, this, a2, a3, 0);
}

llvm::InsertElementInst *llvm::InsertElementInst::Create(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v10 = operator new(0xA0uLL);
  v11 = (v10 + 24);
  v10[29] = v10[29] & 0x38000000 | 3;
  v12 = 96;
  do
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = v11;
    v10 += 8;
    v12 -= 32;
  }

  while (v12);

  return llvm::InsertElementInst::InsertElementInst(v11, this, a2, a3, a4, 0);
}

uint64_t llvm::ReturnInst::Create(void *a1, uint64_t a2)
{
  v4 = llvm::User::operator new(0x40, a2 != 0);

  return llvm::ReturnInst::ReturnInst(v4, a1, a2, 0);
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v4 = operator new(0x60uLL);
  v4[13] = v4[13] & 0x38000000 | 1;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = v4 + 8;
  v5 = (v4 + 8);

  return llvm::BranchInst::BranchInst(v5, this, 0);
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v8 = operator new(0xA0uLL);
  v9 = (v8 + 24);
  v8[29] = v8[29] & 0x38000000 | 3;
  v10 = 96;
  do
  {
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = v9;
    v8 += 8;
    v10 -= 32;
  }

  while (v10);

  return llvm::BranchInst::BranchInst(v9, this, a2, a3, 0);
}

void *llvm::CleanupReturnInst::Create(llvm::CleanupReturnInst *this, llvm::Value *a2, llvm::BasicBlock *a3, llvm::Instruction *a4)
{
  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = llvm::User::operator new(0x40, v6);
  *v7 = ***this + 1608;
  v7[1] = 0;
  *(v7 + 16) = 36;
  *(v7 + 17) = 0;
  *(v7 + 9) = 0;
  *(v7 + 5) = *(v7 + 5) & 0xC0000000 | v6;
  *(v7 + 14) = 0;
  *(v7 + 5) = 0u;
  *(v7 + 3) = 0u;
  llvm::CleanupReturnInst::init(v7, this, a2);
  return v7;
}

char *llvm::CatchReturnInst::Create(llvm::CatchReturnInst *this, llvm::Value *a2, llvm::BasicBlock *a3, llvm::Instruction *a4)
{
  v6 = operator new(0x80uLL);
  *(v6 + 21) = *(v6 + 21) & 0x38000000 | 2;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  *(v6 + 4) = 0;
  *(v6 + 8) = ***a2 + 1608;
  v7 = v6 + 64;
  *(v6 + 21) = 2;
  *(v6 + 3) = v6 + 64;
  *(v6 + 7) = v6 + 64;
  *(v6 + 9) = 0;
  v6[80] = 37;
  v6[81] = 0;
  *(v6 + 41) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 30) = 0;
  llvm::CatchReturnInst::init((v6 + 64), this, a2);
  return v7;
}

void *llvm::CleanupPadInst::Create(void *a1, uint64_t *a2, uint64_t a3, const llvm::Twine *a4)
{
  v8 = a3 + 1;
  v9 = llvm::User::operator new(0x40, a3 + 1);
  *v9 = *a1;
  v9[1] = 0;
  v10 = *(v9 + 5) & 0xC0000000 | v8 & 0x7FFFFFF;
  *(v9 + 4) = 79;
  *(v9 + 5) = v10;
  *(v9 + 14) = 0;
  *(v9 + 5) = 0u;
  *(v9 + 3) = 0u;
  llvm::FuncletPadInst::init(v9, a1, a2, a3, a4);
  return v9;
}

void *llvm::CatchPadInst::Create(void *a1, uint64_t *a2, uint64_t a3, const llvm::Twine *a4)
{
  v8 = a3 + 1;
  v9 = llvm::User::operator new(0x40, a3 + 1);
  *v9 = *a1;
  v9[1] = 0;
  v10 = *(v9 + 5) & 0xC0000000 | v8 & 0x7FFFFFF;
  *(v9 + 4) = 80;
  *(v9 + 5) = v10;
  *(v9 + 14) = 0;
  *(v9 + 5) = 0u;
  *(v9 + 3) = 0u;
  llvm::FuncletPadInst::init(v9, a1, a2, a3, a4);
  return v9;
}

llvm::MCAsmLexer *anonymous namespace::BitcodeReader::getFnValueByID(llvm::MetadataLoader::MetadataLoaderImpl **this, unsigned int a2, llvm::Type *a3, unsigned int a4, llvm::BasicBlock *a5)
{
  if (a3 && *(a3 + 8) == 9)
  {
    v6 = *a3;
    MetadataFwdRefOrLoad = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(this[97], a2);

    return llvm::MetadataAsValue::get(v6, MetadataFwdRefOrLoad);
  }

  else
  {
    v9 = (this + 89);

    return llvm::BitcodeReaderValueList::getValueFwdRef(v9, a2, a3, a4, a5);
  }
}

char *llvm::InvokeInst::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, const llvm::Twine *a9, uint64_t *a10)
{
  v16 = 0;
  if (a8)
  {
    v17 = 48 * a8;
    v18 = (a7 + 32);
    do
    {
      v16 += (*v18 - *(v18 - 1)) >> 3;
      v18 += 6;
      v17 -= 48;
    }

    while (v17);
  }

  v19 = a6 + v16 + 3;
  v20 = llvm::User::operator new(0x50, v19, 16 * a8);
  v21 = llvm::Instruction::Instruction(v20, **(a1 + 16), 5, &v20[-32 * v19], v19, a10);
  *(v21 + 64) = 0;
  llvm::InvokeInst::init(v21, a1, a2, a3, a4, a5, a6, v22, a7, a8, a9);
  return v20;
}

void anonymous namespace::BitcodeReader::propagateAttributeTypes(_anonymous_namespace_::BitcodeReaderBase *a1, uint64_t **a2, llvm::CallBase *this, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = *(this + 8);
  v43 = v7;
  v42 = 0;
  if (((llvm::CallBase::arg_end(this) - (this - 32 * (*(this + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0)
  {
    do
    {
      v8 = 0;
      v44 = 0x4A00000046;
      LODWORD(v45) = 72;
      v9 = v7;
      do
      {
        if (v9)
        {
          v10 = v42;
          if (v42 + 2 < *(v9 + 2))
          {
            v11 = v9[v42 + 7];
            if (v11)
            {
              v12 = *(&v44 + v8);
              if ((*(v11 + v12 / 8 + 12) >> (v12 & 7)))
              {
                EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(v11, *(&v44 + v8));
                if ((v14 & 1) == 0 || !EnumAttribute || !*(EnumAttribute + 16))
                {
                  if (!PtrElementTypeByID)
                  {
                    v34 = "Missing element type for typed attribute upgrade";
                    goto LABEL_43;
                  }

                  v16 = llvm::Attribute::get(a2[53], v12, PtrElementTypeByID);
                  v7 = llvm::AttributeList::addParamAttribute(&v43, a2[53], &v42, 1, v16);
                  v43 = v7;
                  v9 = v7;
                }
              }
            }
          }
        }

        v8 += 4;
      }

      while (v8 != 12);
      v17 = ++v42;
    }

    while (v17 != ((llvm::CallBase::arg_end(this) - (this - 32 * (*(this + 5) & 0x7FFFFFF))) >> 5));
  }

  v18 = *(this - 4);
  v19 = *(v18 + 16);
  if (v19 == 24)
  {
    v42 = 0;
    v22 = *(v18 + 48);
    v20 = v18 + 48;
    v21 = v22;
    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = v21;
    }

    v25 = *(v20 + 8);
    if (v23 >= 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = v25;
    }

    llvm::InlineAsm::ParseConstraints(v24, v26, &v44);
    v27 = v44;
    v28 = v45;
    if (v44 != v45)
    {
      v29 = 0;
      do
      {
        if (*v27 == 1)
        {
          if (*(v27 + 13) == 1)
          {
            goto LABEL_28;
          }
        }

        else if (!*v27)
        {
          if (*(v27 + 13))
          {
LABEL_28:
            if (!llvm::AttributeList::getParamElementType(&v43, v29))
            {
              if (!v30)
              {
                v40[0] = "Missing element type for inline asm upgrade";
                v41 = 259;
              }

              v31 = a2[53];
              v32 = llvm::Attribute::get(v31, 71, v30);
              v7 = llvm::AttributeList::addParamAttribute(&v43, v31, &v42, 1, v32);
              v43 = v7;
              v29 = v42;
            }
          }

          v42 = ++v29;
        }

        v27 += 80;
      }

      while (v27 != v28);
    }

    v40[0] = &v44;
    std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](v40);
    v18 = *(this - 4);
    if (!v18)
    {
      goto LABEL_61;
    }

    v19 = *(v18 + 16);
  }

  if (!v19 && *(v18 + 24) == *(this + 9))
  {
    v33 = *(v18 + 36);
    if (v33 > 954)
    {
      if (v33 <= 2604)
      {
        if (v33 != 955 && v33 != 2599)
        {
          goto LABEL_61;
        }
      }

      else if (v33 != 2605 && v33 != 3007 && v33 != 3005)
      {
        goto LABEL_61;
      }
    }

    else if (v33 > 479)
    {
      if (v33 != 480 && v33 != 953)
      {
        goto LABEL_61;
      }
    }

    else if ((v33 - 245) >= 2 && v33 != 477)
    {
      goto LABEL_61;
    }

    v35 = 1;
    if (v33 <= 3004 && v33 != 953)
    {
      v35 = v33 == 955;
    }

    LODWORD(v44) = v35;
    if (!llvm::AttributeList::getParamElementType(&v43, v35))
    {
      if (!v36)
      {
        v34 = "Missing element type for elementtype upgrade";
LABEL_43:
        v40[0] = v34;
        v41 = 259;
      }

      v37 = llvm::Attribute::get(a2[53], 71, v36);
      v7 = llvm::AttributeList::addParamAttribute(&v43, a2[53], &v44, 1, v37);
    }
  }

LABEL_61:
  *(this + 8) = v7;
  *a1 = 0;
  v38 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::ResumeInst::Create(llvm::ResumeInst *this, llvm::Value *a2, llvm::Instruction *a3)
{
  v4 = operator new(0x60uLL);
  v4[13] = v4[13] & 0x38000000 | 1;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = v4 + 8;
  v5 = (v4 + 8);

  return llvm::ResumeInst::ResumeInst(v5, this, 0);
}

char *llvm::CallBrInst::Create(uint64_t a1, uint64_t a2, llvm::BasicBlock *a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const llvm::Twine *a11, uint64_t *a12)
{
  v16 = 0;
  if (a10)
  {
    v17 = 48 * a10;
    v18 = (a9 + 32);
    do
    {
      v16 += (*v18 - *(v18 - 1)) >> 3;
      v18 += 6;
      v17 -= 48;
    }

    while (v17);
  }

  v19 = a5 + a7 + v16 + 2;
  v20 = llvm::User::operator new(0x58, v19, 16 * a10);
  v21 = llvm::Instruction::Instruction(v20, **(a1 + 16), 11, &v20[-32 * v19], v19, a12);
  *(v21 + 64) = 0;
  llvm::CallBrInst::init(v21, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11);
  return v20;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::find(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 4;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (!v3)
    {
      v4 = 0;
      return (v2 + 16 * v4);
    }
  }

  v6 = v3 - 1;
  LODWORD(v7) = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = (v2 + 16 * v7);
  v8 = *v5;
  if (*v5 == a2)
  {
    return v5;
  }

  v10 = 1;
  while (v8 != -4096)
  {
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return (v2 + 16 * v7);
    }
  }

  if (*a1)
  {
    return (a1 + 72);
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  return (v2 + 16 * v4);
}

uint64_t llvm::MapVector<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *,llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,llvm::SmallVector<std::pair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *>,4u>>::lookup(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(a1, a2, &v6))
  {
    v3 = v6;
    if ((*a1 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = a1 + 104;
    goto LABEL_9;
  }

  if (*a1)
  {
    v3 = a1 + 104;
    goto LABEL_6;
  }

  v3 = *(a1 + 8) + 24 * *(a1 + 16);
LABEL_8:
  v4 = *(a1 + 8) + 24 * *(a1 + 16);
LABEL_9:
  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 104) + 24 * *(v3 + 16) + 16);
  }
}

llvm::MCAsmLexer *anonymous namespace::BitcodeReader::getValueSigned(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, llvm::Type *a6, unsigned int a7, llvm::BasicBlock *a8)
{
  if (a3 == a4)
  {
    return 0;
  }

  v9 = *(a2 + 8 * a4);
  LODWORD(v10) = 0;
  if (v9 != 1)
  {
    v10 = -(v9 >> 1);
  }

  if (v9)
  {
    LODWORD(v11) = v10;
  }

  else
  {
    v11 = v9 >> 1;
  }

  if (*(a1 + 1712))
  {
    v12 = a5 - v11;
  }

  else
  {
    v12 = v11;
  }
}

__n128 llvm::MapVector<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *,llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,llvm::SmallVector<std::pair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *>,4u>>::insert(uint64_t a1, __n128 *a2)
{
  v2 = a2;
  v13 = *a2;
  v14 = 0;
  v15 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(a1, &v13, &v15))
  {
    return result;
  }

  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 4) > v6 >> 3)
  {
    goto LABEL_7;
  }

  llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::grow(a1, v6);
  v15 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(a1, &v13, &v15);
LABEL_7:
  v7 = v15;
  *a1 += 2;
  if (*v7 != -4096 || *(v7 + 8) != -4096)
  {
    --*(a1 + 4);
  }

  *v7 = v13;
  *(v7 + 16) = v14;
  v8 = a1 + 104;
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  if (v10 >= *(a1 + 116))
  {
    if (v9 <= v2 && v9 + 24 * v10 > v2)
    {
      v12 = v2 - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (a1 + 120), v10 + 1, 24);
      v9 = *(a1 + 104);
      v2 = &v12[v9];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (a1 + 120), v10 + 1, 24);
      v9 = *(a1 + 104);
    }
  }

  v11 = (v9 + 24 * *(a1 + 112));
  result = *v2;
  v11[1].n128_u64[0] = v2[1].n128_u64[0];
  *v11 = result;
  LODWORD(v11) = *(a1 + 112);
  *(a1 + 112) = v11 + 1;
  *(v7 + 16) = v11;
  return result;
}

_anonymous_namespace_::BitcodeReaderBase *anonymous namespace::BitcodeReader::parseAlignmentValue(_anonymous_namespace_::BitcodeReaderBase *result, uint64_t a2, unint64_t a3, _WORD *a4)
{
  if (a3 >= 0x22)
  {
    v9 = v4;
    v10 = v5;
    v7 = "Invalid alignment value";
    v8 = 259;
  }

  if (a3)
  {
    v6 = (a3 - 1) | 0x100;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  *result = 0;
  return result;
}

_anonymous_namespace_::BitcodeReaderBase *anonymous namespace::BitcodeReader::typeCheckLoadStoreInst(_anonymous_namespace_::BitcodeReaderBase *this, llvm::Type *a2, llvm::Type *a3, uint64_t a4)
{
  if (*(a4 + 8) != 15)
  {
    v10 = "Load/Store operand is not a pointer type";
LABEL_13:
    v11 = v10;
    v12 = 259;
  }

  v4 = *(a4 + 24);
  if (v4)
  {
    v5 = v4 == a3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v10 = "Explicit load/store type does not match pointee type of pointer operand";
    goto LABEL_13;
  }

  v6 = *(a3 + 8);
  v7 = v6 > 0xE;
  v8 = (1 << v6) & 0x5B80;
  if (!v7 && v8 != 0)
  {
    v10 = "Cannot load/store from pointer";
    goto LABEL_13;
  }

  *this = 0;
  return this;
}

uint64_t getDecodedOrdering(unsigned int a1)
{
  if (a1 > 5)
  {
    return 7;
  }

  else
  {
    return dword_2750C80E8[a1];
  }
}

uint64_t getDecodedRMWOperation(uint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  else
  {
    return result;
  }
}

void std::vector<llvm::OperandBundleDefT<llvm::Value *>>::emplace_back<std::string &,std::vector<llvm::Value *>>(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4);
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>>(a1, v11);
    }

    v12 = 48 * v8;
    std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::construct[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *>,std::string &,std::vector<llvm::Value *>>(v12, a2, a3);
    v7 = v12 + 48;
    v13 = a1[1];
    v14 = v12 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>,llvm::OperandBundleDefT<llvm::Value *>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v12 + 48;
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::~__split_buffer(v17);
  }

  else
  {
    std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::construct[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *>,std::string &,std::vector<llvm::Value *>>(a1[1], a2, a3);
    v7 = v6 + 48;
  }

  a1[1] = v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>,llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  *(result + 8) = 0;
  return result;
}

char *llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(uint64_t a1, int a2)
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
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = (37 * a3) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -1)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -2;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}