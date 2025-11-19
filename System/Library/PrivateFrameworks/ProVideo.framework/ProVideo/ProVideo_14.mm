void sub_25FAEEBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, PCString a20, char a21, uint64_t a22, PCString a23)
{
  PCString::~PCString(&a20);
  OZLockingGroup::WriteSentry::~WriteSentry(&a21);
  _Unwind_Resume(a1);
}

void TXTextLayout::updateTextStateInParagraph(TXTextLayout *this, unsigned int a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v28, v4);
  v5 = *(this + 2378);
  v6 = *(v5 + 8 * (a2 - 1));
  v7 = *(v5 + 8 * a2);
  v8 = v6[259] + v6[258];
  v9 = v8 + *(v7 + 1036);
  *(v7 + 1032) = v8;
  if (v8 < v9)
  {
    v10 = (*(this + 7353) + 16 * v8);
    v11 = -1;
    v12 = v8;
    do
    {
      v13 = *v10;
      v10 += 2;
      *(v13 + 388) = v12;
      v14 = *(v13 + 736);
      if (v14 < v11)
      {
        v11 = v14;
      }

      ++v12;
    }

    while (v9 > v12);
    v15 = v6[216] + v6[214] - v11;
    v16 = 16 * v8;
    do
    {
      v17 = *(this + 7353);
      v18 = *(v17 + v16);
      v27 = *(v18 + 736) + v15;
      *(v18 + 736) = v27;
      ComposedCharacter = TXTextLayout::getComposedCharacter(this, v15 + *(v18 + 80));
      v20 = *(v17 + v16);
      PCString::set((v20 + 72), ComposedCharacter);
      v21 = *(ComposedCharacter + 1);
      v22 = *(ComposedCharacter + 3);
      *(v20 + 112) = *(ComposedCharacter + 10);
      *(v20 + 80) = v21;
      *(v20 + 96) = v22;
      v29 = &v27;
      v23 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 8032, &v27);
      v24 = *(v17 + v16);
      v25 = *(v17 + v16 + 8);
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      v26 = v23[4];
      *(v23 + 3) = v24;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v16 += 16;
      ++v8;
    }

    while (v9 > v8);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v28);
}

void sub_25FAEEE34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::clearInvalidTextObjects(TXTextLayout *this)
{
  v1 = this + 57344;
  v2 = *(this + 7353);
  v3 = *(this + 7354);
  if (v2 != v3)
  {
    do
    {
      if ((*(*v2 + 744) & 1) == 0)
      {
        v10 = *(*v2 + 736);
        std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__erase_unique<unsigned int>(this + 8032, &v10);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 185);
    v3 = *(v1 + 186);
  }

  while (1)
  {
    if (v2 == v3)
    {
      v2 = v3;
      return std::vector<std::shared_ptr<TXTextObject>>::erase((v1 + 1480), v2, v3);
    }

    if (*(*v2 + 744) != 1)
    {
      break;
    }

    ++v2;
  }

  if (v2 != v3)
  {
    v6 = v2 + 1;
    if (v2 + 1 != v3)
    {
      do
      {
        v7 = *v6;
        if (*(*v6 + 744) == 1)
        {
          v8 = *(v6 + 1);
          *v6 = 0;
          *(v6 + 1) = 0;
          v9 = *(v2 + 1);
          *v2 = v7;
          *(v2 + 1) = v8;
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          ++v2;
        }

        ++v6;
      }

      while (v6 != v3);
      v3 = *(v1 + 186);
    }
  }

  return std::vector<std::shared_ptr<TXTextObject>>::erase((v1 + 1480), v2, v3);
}

uint64_t std::vector<std::shared_ptr<TXTextObject>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

char *TXTextLayout::getDirectionalRun(TXTextLayout *this, int a2)
{
  v2 = this + 64376;
  v3 = *(this + 8047);
  if (v3)
  {
    v4 = this + 64376;
    do
    {
      if (*(v3 + 8) >= a2)
      {
        v4 = v3;
      }

      v3 = *&v3[8 * (*(v3 + 8) < a2)];
    }

    while (v3);
    if (v4 != v2 && *(v4 + 8) <= a2)
    {
      return v4 + 40;
    }
  }

  v5 = *(this + 8046);
  if (v5 != v2)
  {
    while (1)
    {
      v6 = *(v5 + 5);
      if (v6 <= a2 && *(v5 + 6) + v6 > a2)
      {
        break;
      }

      v8 = *(v5 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v5 + 2);
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v2)
      {
        v5 = this + 64376;
        break;
      }
    }
  }

  if (v5 == v2)
  {
    return 0;
  }

  else
  {
    return v5 + 40;
  }
}

uint64_t TXTextLayout::getComposedCharacterCount(TXTextLayout *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::ReadSentry::ReadSentry(v5, v2);
  v3 = *(this + 16078);
  OZLockingGroup::ReadSentry::~ReadSentry(v5);
  return v3;
}

uint64_t TXTextLayout::getComposedCharacterCountIgnoringSpaces(TXTextLayout *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::ReadSentry::ReadSentry(v5, v2);
  v3 = *(this + 16080);
  OZLockingGroup::ReadSentry::~ReadSentry(v5);
  return v3;
}

void TXTextLayout::invalidateTextObjectsInRange(Li3DEngineScene *a1, int *a2)
{
  v3 = a1 + 57344;
  v4 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v12, v4);
  v5 = *a2;
  v6 = (a2[1] + v5);
  v7 = *(v3 + 185);
  if (v6 >= (*(v3 + 186) - v7) >> 4)
  {
    v6 = (*(v3 + 186) - v7) >> 4;
  }

  if (v5 < v6)
  {
    v8 = (v7 + 16 * v5);
    v9 = v5 - v6;
    do
    {
      v10 = *v8;
      v8 += 2;
      *(v10 + 744) = 0;
    }

    while (!__CFADD__(v9++, 1));
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v12);
}

void TXTextLayout::computeExtraLineSpacingForDiacritics(TXTextLayout *this, const CMTime *a2)
{
  v4 = 0.0;
  OZChannel::getValueAsDouble((this + 61464), a2, 0.0);
  v6 = *(this + 2378);
  v7 = *(this + 2379);
  v8 = 0.0;
  if (v6 != v7)
  {
    v9 = v5;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *v6;
      if (*(*v6 + 864))
      {
        break;
      }

LABEL_25:
      if (++v6 == v7)
      {
        goto LABEL_26;
      }
    }

    v14 = *(v13 + 876);
    v24 = *a2;
    OZChannel::getValueAsDouble((v13 + 680), &v24, 0.0);
    if (v11)
    {
      v16 = *(v11 + 896) != *(v11 + 888);
      if (v14)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

    v16 = 0;
    if (!v14)
    {
LABEL_23:
      v22 = v8;
LABEL_24:
      v12 = *(v13 + 876);
      v8 = v22;
      v11 = v13;
      goto LABEL_25;
    }

LABEL_6:
    v17 = 0;
    v18 = v9 * v15;
    v19 = -1;
    while (1)
    {
      if (!v11 && !v17)
      {
        goto LABEL_19;
      }

      v20 = *(v13 + 888);
      if (*(v13 + 896) == v20)
      {
        goto LABEL_19;
      }

      v21 = v17 == 0 && v16 ? *(v11 + 888) + ((v12 - 1) << 6) : v20 + (v19 << 6);
      v22 = fabs(*(v21 + 40)) + *(v20 + v17 + 40) + *(v20 + v17 + 56) - (v18 + *(v20 + v17) + fabs(*(v21 + 8)));
      if (v22 <= v8)
      {
        break;
      }

      v4 = 0.0;
      v10 = 1;
LABEL_20:
      ++v19;
      v17 += 64;
      v8 = v22;
      if (v14 << 6 == v17)
      {
        goto LABEL_24;
      }
    }

    if (v22 < 0.0)
    {
      v23 = -v22;
      if ((v10 & (v4 <= v23)) == 0)
      {
        v4 = v23;
      }

      v10 = 1;
    }

LABEL_19:
    v22 = v8;
    goto LABEL_20;
  }

LABEL_26:
  OZChannel::getValueAsDouble((this + 63568), MEMORY[0x277CC08F0], 0.0);
}

uint64_t TXTextLayout::doMotionLayout(TXTextLayout *this, const OZRenderState *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v140, v4);
  var0 = a2->var0;
  v5 = TXTextLayout::timeGlyphPropertiesMap(this);
  TXTimeGlyphPropertiesMap::preSelectGlyphMap(v5, &var0);
  v137 = 0.0;
  v138 = 0.0;
  v135 = 0.0;
  v136 = 0.0;
  OZChannel::getValueAsDouble((this + 22136), &var0, 0.0);
  v105 = v6;
  ScrollPositionInPixels = 0.0;
  if (TXTextLayout::getEnableScroll(this))
  {
    ScrollPositionInPixels = TXTextLayout::getScrollPositionInPixels(this);
  }

  v7 = 0.0;
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = ScrollPositionInPixels + 0.0;
  }

  v121 = (this + 58824);
  v9 = *(this + 14928);
  if (v9 == 1)
  {
    OZChannel::getValueAsDouble((this + 59560), MEMORY[0x277CC08F0], 0.0);
    v10 = v12;
  }

  else
  {
    v10 = 0.0;
    if (v9 == 2)
    {
      OZChannel::getValueAsDouble((this + 59560), MEMORY[0x277CC08F0], 0.0);
      v7 = v11;
    }
  }

  EnableScroll = TXTextLayout::getEnableScroll(this);
  v14 = 0.0;
  if (EnableScroll)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v7;
  }

  v104 = v15;
  if (!EnableScroll)
  {
    v14 = v10;
  }

  v115 = v14;
  v107 = *(this + 2378);
  v108 = *(this + 2379);
  v16 = *(*v107 + 960);
  ValueAsInt = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  v122 = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  v18 = (*(*this + 304))(this);
  v130 = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
  v19 = *(this + 26);
  v20 = v19[2];
  v21 = v19[3];
  v23 = v19[4];
  v22 = v19[5];
  v27 = v20 == 792898163 && v21 == 1337411563 && v23 == -1926054385 && v22 == 1588990368;
  NumLinesInParagraphBounds = TXTextLayout::getNumLinesInParagraphBounds(this);
  v28 = OZChannel::getValueAsInt((this + 61800), MEMORY[0x277CC08F0], 0.0);
  if (v28)
  {
    v29 = NumLinesInParagraphBounds > 0 && v27;
    v113 = v29;
  }

  else
  {
    v113 = 0;
  }

  isExtraLineSpacingForDiacriticsEnabled = TXTextLayout::isExtraLineSpacingForDiacriticsEnabled(v28);
  if (TXTextLayout::dynamicLineSpacingForDiacriticsEnabled(this))
  {
    TXTextLayout::computeExtraLineSpacingForDiacritics(this, &var0);
    (*(*this + 1128))(this);
  }

  v133 = 0.0;
  v134 = 0.0;
  (*(*this + 1016))(this, &v134, &v133, a2);
  v131 = v8;
  v30 = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  v31 = v30;
  v32 = 0;
  LODWORD(v123) = 0;
  v33 = ValueAsInt == 3;
  v34 = v122 == 4;
  if (v122 == 4)
  {
    v33 = 1;
  }

  if (v16 != 1)
  {
    v34 = 0;
  }

  v106 = v34;
  v125 = v33;
  v119 = v33 | v18;
  v116 = 0.0;
  v35 = 0.0;
  v112 = 0.0;
  v37 = v107;
  v36 = v108;
  v38 = 0.0;
  v103 = v30;
  do
  {
    --v36;
    if (v106)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    v40 = *v39;
    v132 = var0;
    OZChannel::getValueAsDouble((v40 + 680), &v132, 0.0);
    v42 = v41;
    v43 = *(this + 7703);
    v44 = (*(*this + 712))(this, &var0);
    if (*(v40 + 876) < 2u)
    {
      v46 = *(v40 + 856);
    }

    else
    {
      v45 = *(v40 + 912);
      if (v45)
      {
        v46 = *v45;
      }

      else
      {
        v46 = 0;
      }
    }

    if (v123)
    {
      v47 = *(v40 + 888);
      if (v130)
      {
        v48 = v47[3];
      }

      else
      {
        v48 = *v47 - v38;
      }

      v49 = v131 - (v104 + v115 + v116 + v48);
      if (v113 && !(v123 % NumLinesInParagraphBounds))
      {
        v49 = 0.0;
      }

      v131 = v49;
    }

    v50 = *(this + 8050);
    Alignment = TXParagraphStyle::getAlignment(v40);
    TXTextLayout::getAlignmentOffsetForParagraph(this, v40, &v138, &v137, Alignment, v31, v134, v133);
    if (TXParagraphStyle::getAlignment(v40) != 1)
    {
      TXTextLayout::getAlignmentOffsetForParagraph(this, v40, &v136, &v135, 1, v31, v134, v133);
    }

    v112 = v35 + v112;
    if (v122 == 4)
    {
      if (v130)
      {
        v137 = v137 - v112;
      }

      else
      {
        v138 = v112 + v138;
      }
    }

    v116 = (v105 + v42) * v43 * v44 + v50;
    v52 = *(v40 + 1036);
    if (!v52)
    {
      v38 = *(*(v40 + 888) + 8);
      v35 = *(v40 + 920);
      goto LABEL_135;
    }

    v109 = v36;
    v110 = v37;
    v53 = 0;
    v54 = 0;
    v55 = 16 * v32;
    v56 = 0.0;
    v57 = 1;
    HIDWORD(v58) = 0;
    v124 = 0.0;
    v126 = 0.0;
    v127 = 0.0;
    v128 = 0.0;
    do
    {
      v59 = *v121;
      v60 = *(*v121 + v55);
      LODWORD(v58) = *(v60 + 736);
      v61 = *&v58;
      v62 = *(v60 + 264);
      if ((v57 & 1) == 0)
      {
        if (*(v53 + 24) == *(v62 + 24))
        {
          v64 = v54;
          goto LABEL_76;
        }

LABEL_69:
        v63 = *(v62 + 8);
        v64 = *(v62 + 16);
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_71;
      }

      if (v62)
      {
        goto LABEL_69;
      }

      v63 = 0;
      v64 = 0;
LABEL_71:
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }

      v56 = 0.0;
      if (!v125)
      {
        v132 = var0;
        OZChannel::getValueAsDouble((v63 + 2560), &v132, v61);
        v56 = v65;
      }

      OZChannel::getValueAsDouble((v63 + 3592), &var0, 0.0);
      v128 = v66;
      OZChannel::getValueAsDouble((v63 + 3744), &var0, 0.0);
      v127 = v67;
      OZChannel::getValueAsDouble((v63 + 4192), &var0, 0.0);
      v126 = v68;
      v53 = v62;
LABEL_76:
      v132 = var0;
      OZChannel::getValueAsDouble((this + 28136), &v132, v61);
      v129 = v56;
      v70 = v56 + v69;
      if (v130)
      {
        v71 = v138;
        LayoutRealPos = TXTextObject::getLayoutRealPos(*(v59 + v55));
        v73 = 0.0 - v70 + v71;
        v74 = v137;
        v75 = LayoutRealPos + v137;
        v76 = v71;
      }

      else
      {
        v77 = TXTextObject::getLayoutRealPos(*(v59 + v55));
        v74 = v137;
        v71 = v138;
        v76 = v77 + v138;
        v75 = v70 + v137;
        v73 = v76;
      }

      if (v125)
      {
        v78 = v73;
      }

      else
      {
        v78 = v128 + v73;
      }

      if (v125)
      {
        v79 = v75;
      }

      else
      {
        v79 = v127 + v75;
      }

      if (v119)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = v126 + 0.0;
      }

      v81 = *(v40 + 876);
      v82 = v131;
      if (v81 >= 2 && v61 >= v46)
      {
        v124 = v124 + 1.0;
        if (v124 >= (v81 - 1))
        {
          v46 = -1;
        }

        else
        {
          v83 = *(v40 + 912);
          if (v83)
          {
            v46 = *(v83 + 4 * v124);
          }

          else
          {
            v46 = 0;
          }
        }

        v123 = (v123 + 1);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(this + 26) + 8), xmmword_260347A80)))))
        {
          v84 = *(v40 + 888);
          v117 = *(v84 + ((v124 + -1.0) << 6) + 8);
          v118 = *(v84 + (v124 << 6));
          if (isExtraLineSpacingForDiacriticsEnabled)
          {
            v85 = *(*(v59 + v55) + 264);
            if (v85)
            {
              v86 = *(v85 + 8);
              v87 = *(v85 + 16);
              if (v87)
              {
                atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v86 = 0;
              v87 = 0;
            }

            v132 = var0;
            Size = TXTextStyle::getSize(v86, &v132, 0.0);
            if (v87)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v87);
            }

            CapHeight = TXTextObject::getCapHeight(*(v59 + v55), Size);
            v92 = OZChannel::getValueAsInt((this + 63112), MEMORY[0x277CC08F0], 0.0);
            v93 = 0.0;
            if (v92 && *(*(v40 + 888) + (v123 << 6) + 40) + *(*(v40 + 888) + (v123 << 6) + 56) - CapHeight > 5.0)
            {
              OZChannel::getValueAsDouble((this + 63264), &var0, 0.0);
            }

            v89 = v131 - v93;
          }

          else
          {
            v89 = v131;
          }

          v88 = v115 + v116 + v118 + 0.0 - v117;
        }

        else
        {
          (*(*this + 1200))(this);
          v89 = v131;
        }

        v82 = v89 - v88;
      }

      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(this + 26) + 8), xmmword_260347A80)))) & 1) == 0 && !*(*(v59 + v55) + 388))
      {
        v94 = *(this + 15951);
        v82 = v82 - (*(*this + 1200))(this) * v94;
      }

      v131 = v82;
      if (v122 == 4)
      {
        if (v130)
        {
          v95 = ScrollPositionInPixels + v79;
          v76 = v82;
LABEL_119:
          v82 = v79;
          goto LABEL_125;
        }

        v78 = ScrollPositionInPixels + v78;
        goto LABEL_121;
      }

      v96 = v82;
      v82 = v82 - ScrollPositionInPixels;
      if (v130)
      {
        v78 = v78 + v96;
        v76 = v82;
        v95 = v79;
        goto LABEL_119;
      }

      if (v113 && !(v123 % NumLinesInParagraphBounds))
      {
        v131 = 0.0;
LABEL_121:
        v95 = v79;
        goto LABEL_125;
      }

      v95 = v79 + v131;
LABEL_125:
      TXTextObject::setPosition(*(v59 + v55), &var0, v78, v95, v80);
      v97 = *(v59 + v55);
      *(v97 + 168) = v78;
      *(v97 + 176) = v95;
      *(v97 + 184) = v80;
      *(v97 + 192) = v76;
      *(v97 + 200) = v82;
      *(v97 + 208) = 0u;
      *(v97 + 224) = 0u;
      v98 = TXParagraphStyle::getAlignment(v40);
      v99 = *(v59 + v55);
      if (v98 == 1)
      {
        *(v99 + 240) = 0;
        *(v99 + 248) = 0;
      }

      else
      {
        v58 = v71 - v136;
        v100 = v74 - v135;
        *(v99 + 240) = v71 - v136;
        *(v99 + 248) = v100;
      }

      v56 = v129;
      v57 = 0;
      v55 += 16;
      ++v32;
      v54 = v64;
      --v52;
    }

    while (v52);
    v38 = *(*(v40 + 888) + (v124 << 6) + 8);
    v35 = *(v40 + 920);
    v36 = v109;
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    v31 = v103;
    v37 = v110;
LABEL_135:
    if (++v37 == v108)
    {
      break;
    }

    LODWORD(v123) = v123 + 1;
  }

  while (v36 != v107);
  v101 = TXTextLayout::timeGlyphPropertiesMap(this);
  TXTimeGlyphPropertiesMap::clearPreSelectedGlyphMap(v101);
  OZLockingGroup::WriteSentry::~WriteSentry(v140);
  return 0;
}

uint64_t TXTextLayout::getNumLinesInParagraphBounds(TXTextLayout *this)
{
  v1 = this + 0x4000;
  if (*(this + 19332) == 1)
  {
    return *(this + 4834);
  }

  v4 = *(this + 2419);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  var8 = v6[3].var8;
  var9 = v6[3].var9;
  if (var9)
  {
    atomic_fetch_add_explicit(&var9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!var8)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if (!v9)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (var9)
  {
    atomic_fetch_add_explicit(&var9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = var9;
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](var9);
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  v11 = v9[5];
  v12 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble(v6 + 13, MEMORY[0x277CC08F0], 0.0);
  v14 = v13;
  v15 = (*(*v11 + 40))(v11);
  LODWORD(v14) = (*(*v11 + 48))(v11, v14);
  v16 = **(this + 2378);
  v27 = *v12;
  OZChannel::getValueAsDouble((v16 + 680), &v27, 0.0);
  v18 = v17;
  OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
  v20 = v19;
  OZChannel::getValueAsDouble((this + 24728), MEMORY[0x277CC08F0], 0.0);
  v22 = v15 + *&v14;
  v23 = v22 + v18;
  if (v22 + v18 <= 0.0)
  {
    v2 = 0xFFFFFFFFLL;
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v24 = vabdd_f64(v20, v21);
  v25 = 0;
  while (v22 < v24)
  {
    v22 = v23 + v22;
    ++v25;
  }

  if (v25 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v25;
  }

  v1[2948] = 1;
  *(v1 + 738) = v2;
  if (v10)
  {
LABEL_24:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_25:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_25FAF01BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PCVector3<double>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PCVector3<double>>::__emplace_back_slow_path<PCVector3<double> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t TXTextLayout::doLayoutForEmptyString(TXTextLayout *this)
{
  *(this + 4831) = 1;
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 2)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 54280), MEMORY[0x277CC08F0], 0.0);
    v3 = 53528;
    if (!ValueAsInt)
    {
      v3 = 52640;
    }

    if (((*(*(this + v3) + 552))(this + v3, 0) & 1) == 0)
    {
      v12 = 0;
      v13 = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v14 = _Q0;
      TXTextLayout::initializePaths(this, &v12);
    }
  }

  (*(*this + 824))(this, 1, 0.0);
  TXTextLayout::updateStringTokenizer(this);
  v9 = *(this + 2378);
  if (*(this + 2379) == v9)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *v9;
  if (*v9)
  {
    TXParagraphStyle::clearDirectionalRuns(*v9);
    v12 = 0;
    v13 = 0;
    LOBYTE(v14) = 1;
    TXParagraphStyle::pushDirectionalRun(v10, &v12);
  }

  return TXTextLayout::clearInvalidTextObjects(this);
}

int *TXTextLayout::getTextHashForState@<X0>(void *lpsrc@<X1>, uint64_t a2@<X0>, CMTime *a3@<X2>, int a4@<W4>, int8x8_t *a5@<X8>)
{
  if (!v32)
  {
    __cxa_bad_cast();
  }

  if (a4)
  {
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 19600), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 19752), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 20312), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 20720), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 22136), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 59560), lpsrc, &v34);
    v34 = *a3;
    OZChannelFolder::calcHashForState((a2 + 23688), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 24272), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 24424), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 24576), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 24728), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 24880), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 59128), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 59888), lpsrc, &v34);
    v34 = *a3;
    OZChannel::calcHashForState((a2 + 60360), lpsrc, &v34);
    v34 = *a3;
    OZChannelFolder::calcHashForState((a2 + 20976), lpsrc, &v34);
  }

  OZChannel::getValueAsInt((a2 + 20464), MEMORY[0x277CC08F0], 0.0);
  for (i = *(a2 + 19352); i != a2 + 19344; i = *(i + 8))
  {
    v10 = *(i + 16) + 1304;
    v34 = *a3;
    (*(*v10 + 448))(v10, lpsrc, &v34);
    v11 = *(i + 16);
    v34 = *a3;
    (*(*(v11 + 536) + 448))(v11 + 536, lpsrc, &v34);
    v12 = *(i + 16);
    v34 = *a3;
    (*(*(v12 + 1696) + 448))(v12 + 1696, lpsrc, &v34);
    v13 = *(i + 16);
    v34 = *a3;
    (*(*(v13 + 1976) + 448))(v13 + 1976, lpsrc, &v34);
    v14 = *(i + 16);
    v34 = *a3;
    (*(*(v14 + 2256) + 448))(v14 + 2256, lpsrc, &v34);
    v15 = *(i + 16);
    v34 = *a3;
    (*(*(v15 + 49416) + 448))(v15 + 49416, lpsrc, &v34);
    v16 = *(i + 16);
    v34 = *a3;
    (*(*(v16 + 2408) + 448))(v16 + 2408, lpsrc, &v34);
    v17 = *(i + 16);
    v34 = *a3;
    (*(*(v17 + 2560) + 448))(v17 + 2560, lpsrc, &v34);
    v18 = *(i + 16);
    v34 = *a3;
    (*(*(v18 + 5352) + 448))(v18 + 5352, lpsrc, &v34);
    v19 = *(i + 16);
    v34 = *a3;
    (*(*(v19 + 5504) + 448))(v19 + 5504, lpsrc, &v34);
    v20 = *(i + 16);
    v34 = *a3;
    (*(*(v20 + 2864) + 448))(v20 + 2864, lpsrc, &v34);
    v21 = *(i + 16);
    v34 = *a3;
    (*(*(v21 + 3456) + 448))(v21 + 3456, lpsrc, &v34);
    v22 = *(i + 16);
    v34 = *a3;
    (*(*(v22 + 4344) + 448))(v22 + 4344, lpsrc, &v34);
  }

  v23 = *(a2 + 19024);
  v24 = *(a2 + 19032);
  while (v23 != v24)
  {
    v25 = *v23++;
    LineSpacingChannel = TXParagraphStyle::getLineSpacingChannel(v25);
    v34 = *a3;
    (*(*LineSpacingChannel + 448))(LineSpacingChannel, lpsrc, &v34);
  }

  Hash = PCHashWriteStream::getHash(v32);
  *a5 = *Hash;
  a5[1] = Hash[1];
  v28 = *(a2 + 1208);
  if (v28 == a2 + 1200)
  {
LABEL_14:
    (*(*lpsrc + 40))(lpsrc);
  }

  else
  {
    while (1)
    {
      v29 = *(v28 + 16);
      if (v29)
      {
        {
          break;
        }
      }

      v28 = *(v28 + 8);
      if (v28 == a2 + 1200)
      {
        goto LABEL_14;
      }
    }

    (*(*lpsrc + 40))(lpsrc);
    v34 = *a3;
    (*(*(a2 + 27984) + 448))(a2 + 27984, lpsrc, &v34);
    (*(*lpsrc + 112))(lpsrc, &v34);
  }

  TXChannelString::getString((a2 + 19048), &v34);
  (*(*lpsrc + 104))(lpsrc, &v34);
  PCString::~PCString(&v34);
  OZChannel::getValueAsDouble((a2 + 61464), MEMORY[0x277CC08F0], 0.0);
  (*(*lpsrc + 88))(lpsrc);
  v30 = PCHashWriteStream::getHash(v32);
  return PCHash128::operator+=(a5, v30);
}

uint64_t TXTextLayout::doLayoutForParagraphs(TXTextLayout *this, double a2, CMTime *a3)
{
  TXTextLayout::clearInvalidTextObjects(this);
  v6 = *(this + 2378);
  v7 = *(this + 2379);
  if (v6 != v7)
  {
    LOBYTE(v8) = 0;
    v9 = 0;
    while (1)
    {
      if (*(*v6 + 872) == 1)
      {
        TXTextLayout::doLineLayout(this, v9, a2, a3);
      }

      else
      {
        if ((v8 & 1) == 0)
        {
          v8 = 0;
          goto LABEL_9;
        }

        TXTextLayout::updateTextStateInParagraph(this, v9);
      }

      v8 = 1;
LABEL_9:
      ++v9;
      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = 0;
LABEL_12:
  TXTextLayout::applyTypeOnToTextObjects(this, a3);
  return v8;
}

uint64_t TXTextLayout::shrinkToLeftRightMargins(TXTextLayout *this, CMTime *a2)
{
  v4 = *(this + 2378);
  v5 = *(this + 2379);
  if (v4 == v5)
  {
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *v4;
      v11 = *(*v4 + 876);
      if (v11)
      {
        v12 = (*(v10 + 888) + 8);
        do
        {
          v13 = *(v12 - 1) - *v12;
          v6 = v6 + v13;
          if (v13 > v7)
          {
            v7 = *(v12 - 1) - *v12;
          }

          v12 += 8;
          --v11;
        }

        while (v11);
      }

      v14 = *(v10 + 920);
      v9 = v9 + v14;
      if (v14 > v8)
      {
        v8 = *(v10 + 920);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v15 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
  v17 = v16;
  OZChannel::getValueAsDouble((this + 24272), v15, 0.0);
  v19 = v17 - v18;
  ValueAsInt = OZChannel::getValueAsInt((this + 20464), v15, 0.0);
  v21 = OZChannel::getValueAsInt((this + 20720), v15, 0.0);
  if (v21)
  {
    v22 = v7;
  }

  else
  {
    v22 = v9;
  }

  if (v21)
  {
    v23 = v6;
  }

  else
  {
    v23 = v8;
  }

  if (ValueAsInt != 4)
  {
    v22 = v23;
  }

  v24 = v19 / v22;
  if (v19 / v22 >= 1.0)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(this + 3851) = _Q0;
    v31 = *(this + 2378);
    v32 = *(this + 2379);
    while (v31 != v32)
    {
      v33 = *v31;
      if (TXParagraphStyle::getAlignment(*v31))
      {
        TXParagraphStyle::dirty(v33, 1);
      }

      ++v31;
    }

    v34 = this;
    v35 = v19;
  }

  else
  {
    if (OZChannel::getValueAsInt((this + 61208), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      *(this + 7702) = v24;
      v25 = 61624;
    }

    else
    {
      v36 = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
      v25 = 61624;
      if (!v36)
      {
        v25 = 61616;
      }
    }

    *(this + v25) = v24;
    TXTextLayout::setAllParagraphsDirty(this);
    v35 = v19 + 1.0;
    v34 = this;
  }

  return TXTextLayout::doLayoutForParagraphs(v34, v35, a2);
}

uint64_t TXTextLayout::shrinkToTopBottomMargins(TXTextLayout *this, double a2, CMTime *a3)
{
  v38 = *a3;
  v6 = 0.0;
  OZChannel::getValueAsDouble((this + 22136), &v38, 0.0);
  v8 = *(this + 2378);
  v9 = *(this + 2379);
  if (v8 == v9)
  {
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v10 = v7;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = *v8;
      v37 = v38;
      OZChannel::getValueAsDouble((v14 + 680), &v37, 0.0);
      v16 = v15;
      (*(*this + 712))(this, &v38);
      v18 = *(v14 + 876);
      if (v18)
      {
        v19 = (v10 + v16) * v17;
        v20 = (*(v14 + 888) + 8);
        do
        {
          v21 = v19 + *(v20 - 1) - *v20;
          v11 = v11 + v21;
          if (v21 > v12)
          {
            v12 = v19 + *(v20 - 1) - *v20;
          }

          v20 += 8;
          --v18;
        }

        while (v18);
      }

      v22 = *(v14 + 920);
      v13 = v13 + v22;
      if (v22 > v6)
      {
        v6 = *(v14 + 920);
      }

      ++v8;
    }

    while (v8 != v9);
    v9 = *(this + 2379);
  }

  v23 = *(v9 - 1);
  v37 = v38;
  OZChannel::getValueAsDouble((v23 + 680), &v37, 0.0);
  v25 = v24;
  v26 = (*(*this + 712))(this, &v38);
  v27 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
  v29 = v28;
  OZChannel::getValueAsDouble((this + 24728), v27, 0.0);
  v31 = v29 - v30;
  if (OZChannel::getValueAsInt((this + 20720), v27, 0.0))
  {
    v32 = 61616;
  }

  else
  {
    v32 = 61624;
  }

  if (OZChannel::getValueAsInt((this + 20464), v27, 0.0) == 4)
  {
    result = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
    if (result)
    {
      v34 = v13;
    }

    else
    {
      v34 = v12;
    }
  }

  else
  {
    v35 = v11 - v25 * v26;
    result = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
    if (result)
    {
      v34 = v6;
    }

    else
    {
      v34 = v35;
    }
  }

  v36 = v31 / v34;
  *(this + v32) = v36;
  if (v36 >= 1.0)
  {
    *(this + v32) = 0x3FF0000000000000;
  }

  else
  {
    TXTextLayout::setAllParagraphsDirty(this);
    return TXTextLayout::doLayoutForParagraphs(this, a2, a3);
  }

  return result;
}

void TXTextLayout::performLayoutWithPath(TXTextLayout *this, CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v59, v4);
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 2)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 54280), MEMORY[0x277CC08F0], 0.0);
    v6 = 53528;
    if (!ValueAsInt)
    {
      v6 = 52640;
    }

    if (((*(*(this + v6) + 552))(this + v6, 0) & 1) == 0)
    {
      OZRenderState::OZRenderState(&v58);
      v7 = *&a2->value;
      v58.var0.var3 = a2->epoch;
      v55 = 0.0;
      v56 = 0.0;
      __asm { FMOV            V0.2D, #-1.0 }

      v57 = _Q0;
      *&v58.var0.var0 = v7;
      TXTextLayout::getTypographicBounds(this, &v55, &v58, 1, 0);
      TXTextLayout::initializePaths(this, &v55);
    }

    *&v58.var0.var0 = *&a2->value;
    v58.var0.var3 = a2->epoch;
    PathLength = TXTextLayout::getPathLength(this, &v58);
    v14 = OZChannel::getValueAsInt((this + 58144), MEMORY[0x277CC08F0], 0.0) ? TXTextLayout::isLoopPath(this) : 0;
    OZChannel::getValueAsDouble((this + 57840), a2, 0.0);
    v16 = v15;
    v17 = (*(*this + 304))(this);
    v18 = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
    v19 = *(this + 7354) - *(this + 7353);
    memset(&v58, 0, 24);
    if ((v19 & 0xFFFFFFFF0) != 0)
    {
      v20 = v18;
      v21 = 0;
      v22 = PathLength * v16;
      v46 = fabs(PathLength);
      v23 = (v19 >> 4);
      v24 = vdup_n_s32(v18 == 0);
      v25.i64[0] = v24.u32[0];
      v25.i64[1] = v24.u32[1];
      v47 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v25, 0x3FuLL)), xmmword_260342700, xmmword_2603426F0);
      do
      {
        v26 = *(this + 7353);
        TXTextObject::getPosition(*(v26 + v21), a2, &v55);
        v27 = v55;
        v28 = v56;
        v52 = 0.0;
        v53 = 0.0;
        v54 = 0.0;
        v50 = 0.0;
        v51 = 0.0;
        v49 = 0.0;
        *&v58.var0.var0 = v47;
        v58.var0.var3 = 0;
        v29 = OZChannel::getValueAsInt((this + 58448), MEMORY[0x277CC08F0], 0.0);
        if (v14)
        {
          v30 = PathLength - (v22 + v27);
        }

        else
        {
          v30 = v22 + v27;
        }

        if (v14)
        {
          v31 = PathLength - (v22 + 0.0 - v28);
        }

        else
        {
          v31 = v22 + 0.0 - v28;
        }

        if (OZChannelBase::isEnabled((this + 57992), 0, 1) && OZChannel::getValueAsInt((this + 57992), MEMORY[0x277CC08F0], 0.0) && v46 >= 0.0000001)
        {
          if (!v20)
          {
            if (v30 <= 0.0 || v30 >= PathLength)
            {
              v30 = PathLength * (v30 / PathLength - floor(v30 / PathLength));
            }

LABEL_29:
            AdvanceWidth = TXTextObject::getAdvanceWidth(*(v26 + v21), a2);
            v48 = *a2;
            TXTextLayout::getPathPosition(this, &v48, v14, &v52, &v51, &v50, &v49, v29 != 0, v30, AdvanceWidth, &v58);
            v38 = v52;
            v39 = __sincos_stret(v49);
            v36 = v38 - v28 * v39.__sinval;
            v35 = v53 + v28 * v39.__cosval;
            goto LABEL_30;
          }

          if (v31 <= 0.0 || v31 >= PathLength)
          {
            v31 = PathLength * (v31 / PathLength - floor(v31 / PathLength));
          }
        }

        else if (!v20)
        {
          goto LABEL_29;
        }

        v32 = TXTextObject::getAdvanceWidth(*(v26 + v21), a2);
        v48 = *a2;
        TXTextLayout::getPathPosition(this, &v48, v14, &v52, &v51, &v50, &v49, v29 != 0, v31, v32, &v58);
        v33 = v53;
        v34 = __sincos_stret(v49);
        v35 = v33 + v27 * v34.__sinval;
        v36 = v52 + v27 * v34.__cosval;
LABEL_30:
        if (v17)
        {
          v40 = 0.0;
        }

        else
        {
          v40 = v54;
        }

        v41 = TXTextLayout::alignToPath(this);
        v43 = v50;
        v42 = v51;
        v44 = v49;
        if (!v41)
        {
          v42 = 0.0;
          v43 = 0.0;
          v44 = 0.0;
        }

        TXTextObject::setPathRotation(*(v26 + v21), a2, v42, v43, v44);
        TXTextObject::setPosition(*(v26 + v21), a2, v36, v35, v40);
        v45 = *(v26 + v21);
        v45[21] = v36;
        v45[22] = v35;
        v45[23] = v40;
        v21 += 16;
        --v23;
      }

      while (v23);
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v59);
}

double TXTextLayout::getPathLength(TXTextLayout *this, CMTime *a2)
{
  v4 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 54280), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt <= 1)
  {
    if (ValueAsInt)
    {
      if (ValueAsInt != 1)
      {
        return v4;
      }

      v18 = 53392;
    }

    else
    {
      v18 = 52504;
    }

    v29 = MEMORY[0x277CC08F0];

    return OZChannelPosition3D::getLength((this + v18), v29);
  }

  else
  {
    if (ValueAsInt != 2)
    {
      if (ValueAsInt == 3)
      {
        OZChannel::getValueAsDouble((this + 55368), a2, 0.0);
        v25 = fabs(v24);
        OZChannel::getValueAsDouble((this + 55520), a2, 0.0);
        v27 = fabs(v26);
        if (v25 >= 0.001)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0.001;
        }

        if (v27 < 0.001)
        {
          v27 = 0.001;
        }

        return v28 + v28 + v27 + v27;
      }

      else if (ValueAsInt == 4)
      {
        OZChannel::getValueAsDouble((this + 56512), a2, 0.0);
        v7 = v6;
        OZChannel::getValueAsDouble((this + 56664), a2, 0.0);
        v9 = v8;
        OZChannel::getValueAsDouble((this + 57080), a2, 0.0);
        v11 = v10;
        OZChannel::getValueAsDouble((this + 57232), a2, 0.0);
        v13 = v12;
        OZChannel::getValueAsDouble((this + 57384), a2, 0.0);
        v15 = v14;
        OZChannel::getValueAsDouble((this + 57536), a2, 0.0);

        return PCEvaluator::findLengthOfSineWave(this + 14650, v11, v13, v15, v16, v7, v9, 400);
      }

      return v4;
    }

    OZChannel::getValueAsDouble((this + 54928), a2, 0.0);
    v20 = fabs(v19);
    OZChannel::getValueAsDouble((this + 55080), a2, 0.0);
    v22 = fabs(v21);
    if (v20 >= 0.001)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0.001;
    }

    if (v22 < 0.001)
    {
      v22 = 0.001;
    }

    return PCEvaluator::findLengthOfEllipse((this + 58600), v23, v22, 0.0, 0.0);
  }
}

uint64_t TXTextLayout::isLoopPath(TXTextLayout *this)
{
  result = OZChannel::getValueAsInt((this + 54280), MEMORY[0x277CC08F0], 0.0);
  if (result)
  {
    return OZChannel::getValueAsInt((this + 54280), MEMORY[0x277CC08F0], 0.0) != 4;
  }

  return result;
}

uint64_t TXTextLayout::getPathPosition(uint64_t a1, const CMTime *a2, int a3, double *a4, void *a5, void *a6, double *a7, int a8, double a9, double a10, int a11)
{
  v139 = 0.0;
  v140[0] = 0.0;
  v137 = 0.0;
  v138 = 0.0;
  v21 = a10 * 0.5;
  v22 = 0.0;
  if (TXTextLayout::alignToPath(a1))
  {
    v23 = a10 * 0.5;
  }

  else
  {
    v23 = 0.0;
  }

  v114 = v23;
  if (!OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannelPosition3D::getPositionOnPath((a1 + 52504), a2, v21 + a9, v140, &v139, &v138, 0, 0, 0, &v137);
    v114 = a10 * 0.5;
LABEL_11:
    v25 = 0.0;
    goto LABEL_12;
  }

  if (OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0) == 1)
  {
    if (TXTextLayout::alignToPath(a1))
    {
      v24 = 0.0;
    }

    else
    {
      v24 = a10 * 0.5;
    }

    v114 = v24;
    OZChannelPosition3D::getPositionOnPath((a1 + 53392), a2, v24 + a9, v140, &v139, &v138, 0, 0, 0, &v137);
    goto LABEL_11;
  }

  v30 = 0.0;
  if (OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0) == 2)
  {
    OZChannel::getValueAsDouble((a1 + 54928), a2, 0.0);
    v32 = fabs(v31);
    OZChannel::getValueAsDouble((a1 + 55080), a2, 0.0);
    v34 = fabs(v33);
    if (v32 < 0.001)
    {
      v32 = 0.001;
    }

    if (v34 >= 0.001)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.001;
    }

    v36 = sqrt((v32 * v32 + v35 * v35) * 0.5) * 6.28318531;
    if (fabs(v36) >= 0.0000001)
    {
      v37 = -v114;
      if (!a3)
      {
        v37 = v114;
      }

      v30 = (v37 + a9) / v36;
    }

    v38 = v30 > 1.0 || v30 < 0.0;
    v39 = v30 - floor(v30);
    v120.value = 0;
    v115[0].value = 0;
    if (v38)
    {
      v30 = v39;
    }

    v135 = 0.0;
    v136 = 0.0;
    PCEvaluator::findPointOnEllipse((a1 + 58600), v30, v32, v35, 0.0, 0.0, v140, &v139, 0);
    PCEvaluator::findPointOnEllipse((a1 + 58600), v30 + -0.01, v32, v35, 0.0, 0.0, &v120.value, &v136, 0);
    PCEvaluator::findPointOnEllipse((a1 + 58600), v30 + 0.01, v32, v35, 0.0, 0.0, &v115[0].value, &v135, 0);
    v140[0] = v32 + v140[0];
    v40 = sqrt((*&v115[0].value - *&v120.value) * (*&v115[0].value - *&v120.value) + (v135 - v136) * (v135 - v136));
    v25 = -(v135 - v136) / v40;
    v22 = (*&v115[0].value - *&v120.value) / v40;
    OZChannel::getValueAsDouble((a1 + 54928), a2, 0.0);
    if (v41 < 0.0)
    {
      v140[0] = -v140[0];
      v25 = -v25;
    }

    OZChannel::getValueAsDouble((a1 + 55080), a2, 0.0);
    v43 = v42 < 0.0;
    if (v42 >= 0.0)
    {
      v44 = v139;
    }

    else
    {
      v44 = -v139;
    }

    if (v43)
    {
      v22 = -v22;
    }

    v45 = -v25;
    v46 = -v22;
    if (a3)
    {
      v45 = v25;
    }

    else
    {
      v46 = v22;
    }

    v139 = v44 - v114 * v45;
    v140[0] = v140[0] - v114 * v46;
    goto LABEL_12;
  }

  if (OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0) == 3)
  {
    v112 = a8;
    v51 = a6;
    OZChannel::getValueAsDouble((a1 + 55368), a2, 0.0);
    v53 = fabs(v52);
    OZChannel::getValueAsDouble((a1 + 55520), a2, 0.0);
    v55 = fabs(v54);
    v56 = v53 + v53;
    v57 = v53 + v53 + v55 + v55;
    OZChannel::getValueAsDouble((a1 + 55520), a2, 0.0);
    v59 = v58 < 0.0;
    OZChannel::getValueAsDouble((a1 + 55368), a2, 0.0);
    v61 = v60 >= 0.0;
    v62 = TXTextLayout::alignToPath(a1);
    v63 = -a10;
    if (!a3)
    {
      v63 = a10;
    }

    if (!v62)
    {
      v63 = 0.0;
    }

    if (fabs(v57) < 0.0000001)
    {
      a9 = 0.0;
    }

    if (a9 < 0.0 || a9 > v57)
    {
      a9 = v57 * (a9 / v57 - floor(a9 / v57));
    }

    v65 = v59 ^ v61;
    v66 = -v114;
    if (!a3)
    {
      v66 = v114;
    }

    v67 = v66 + a9;
    v68 = v55 * 0.5;
    if (v67 <= v55 * 0.5)
    {
      v140[0] = 0.0;
      v139 = a9;
      v25 = -1.0;
      v53 = 0.0;
      a6 = v51;
      a8 = v112;
      if ((v65 & 1) == 0)
      {
        v68 = v63 + a9;
        goto LABEL_94;
      }

      v68 = a9;
LABEL_95:
      v22 = 0.0;
      goto LABEL_96;
    }

    a6 = v51;
    a8 = v112;
    if (v67 <= v53 + v68)
    {
      v53 = a9 - v68;
      v139 = v55 * 0.5;
      v140[0] = a9 - v68;
      v25 = 0.0;
      v22 = 1.0;
      if (v65)
      {
LABEL_96:
        OZChannel::getValueAsDouble((a1 + 55368), a2, 0.0);
        if (v103 < 0.0)
        {
          v140[0] = -v53;
          v25 = -v25;
        }

        OZChannel::getValueAsDouble((a1 + 55520), a2, 0.0);
        if (v104 < 0.0)
        {
          v139 = -v68;
          v22 = -v22;
        }

        goto LABEL_12;
      }

      v53 = v63 + v53;
    }

    else
    {
      v69 = v55 * 3.0 * 0.5;
      if (v67 <= v53 + v69)
      {
        v68 = v68 - (a9 - v53 - v68);
        v139 = v68;
        v140[0] = v53;
        v25 = 1.0;
        v22 = 0.0;
        if ((v65 & 1) == 0)
        {
          v68 = v68 - v63;
          v139 = v68;
        }

        goto LABEL_96;
      }

      if (v67 > v56 + v69)
      {
        v140[0] = 0.0;
        v68 = a9 - (v56 + v69) - v68;
        v139 = v68;
        v25 = -1.0;
        v53 = 0.0;
        if ((v65 & 1) == 0)
        {
          v68 = v63 + v68;
LABEL_94:
          v139 = v68;
          goto LABEL_95;
        }

        goto LABEL_95;
      }

      v53 = v53 + v69 - (a9 - v53);
      v68 = v55 * -0.5;
      v139 = v55 * -0.5;
      v140[0] = v53;
      v25 = 0.0;
      v22 = -1.0;
      if (v65)
      {
        goto LABEL_96;
      }

      v53 = v53 - v63;
    }

    v140[0] = v53;
    goto LABEL_96;
  }

  if (OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0) != 4)
  {
    OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0);
    goto LABEL_11;
  }

  OZChannel::getValueAsDouble((a1 + 55808), a2, 0.0);
  v72 = v71;
  OZChannel::getValueAsDouble((a1 + 55960), a2, 0.0);
  v74 = v73;
  OZChannel::getValueAsDouble((a1 + 56512), a2, 0.0);
  v76 = v75;
  OZChannel::getValueAsDouble((a1 + 56664), a2, 0.0);
  v108 = v74;
  v109 = v72;
  v77 = v76 - v72;
  v79 = v78 - v74;
  OZChannel::getValueAsDouble((a1 + 57080), a2, 0.0);
  v81 = v80;
  OZChannel::getValueAsDouble((a1 + 57232), a2, 0.0);
  v111 = v82;
  OZChannel::getValueAsDouble((a1 + 57384), a2, 0.0);
  v84 = v83;
  OZChannel::getValueAsDouble((a1 + 57536), a2, 0.0);
  v86 = v85;
  v87 = sqrt(v77 * v77 + v79 * v79);
  v107 = v81;
  v88 = v81;
  v89 = v84;
  v113 = v86;
  v90 = (v114 + a9) / PCEvaluator::findLengthOfSineWave((a1 + 58600), v88, v111, v84, v86, v77, v79, 400);
  v91 = v90 < 0.0;
  if (v90 > 1.0)
  {
    v91 = 1;
  }

  v92 = floor(v90);
  if (v91)
  {
    v93 = v90 - v92;
  }

  else
  {
    v93 = v90;
  }

  v94 = 0.0;
  v110 = 0.0;
  if (v91)
  {
    v94 = v92;
  }

  v106 = v94;
  v120.value = 0;
  v115[0].value = 0;
  v95 = 0.0;
  if (v87 > 0.0)
  {
    v110 = -v79 / v87;
    v95 = v77 / v87;
  }

  v105 = v95;
  v135 = 0.0;
  v136 = 0.0;
  v133 = 0.0;
  v134 = 0.0;
  v96 = v93;
  PCEvaluator::findPointOnSineWave((a1 + 58600), v93, v107, v111, v89, v113, v77, v79, 400, &v120.value, &v115[0].value);
  PCEvaluator::findPointOnSineWave((a1 + 58600), v96 + -0.0025, v107, v111, v89, v113, v77, v79, 400, &v136, &v134);
  PCEvaluator::findPointOnSineWave((a1 + 58600), v96 + 0.0025, v107, v111, v89, v113, v77, v79, 400, &v135, &v133);
  v97 = v72 + v77 * v135 + v110 * v133 - (v72 + v77 * v136 + v110 * v134);
  v98 = v108 + v79 * v135 + v105 * v133 - (v108 + v79 * v136 + v105 * v134);
  v99 = -v98;
  v100 = sqrt(v98 * v98 + v97 * v97);
  v25 = v99 / v100;
  v22 = v97 / v100;
  v101 = -(v99 / v100);
  v102 = -v22;
  if (a3)
  {
    v101 = v25;
  }

  else
  {
    v102 = v22;
  }

  v139 = v105 * *&v115[0].value + v108 + v79 * (v106 + *&v120.value) - v114 * v101;
  v140[0] = v110 * *&v115[0].value + v109 + v77 * (v106 + *&v120.value) - v114 * v102;
LABEL_12:
  result = OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0);
  if (result != 5)
  {
    v27 = v139;
    v28 = v138;
    *a4 = v140[0];
    a4[1] = v27;
    a4[2] = v28;
    if (OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0))
    {
      v29 = 0;
      if (OZChannel::getValueAsInt((a1 + 54280), MEMORY[0x277CC08F0], 0.0) == 1)
      {
        OZFigTimeForChannelSeconds(&v120, v137, 0x40000);
        OZChannelPosition3D::getOrientations((a1 + 53392), &v120, a5, a6, a7, 0, a8, a11, v21 + a9, a3);
      }

      else
      {
        v49 = -v25;
        if (a3)
        {
          v22 = -v22;
          v29 = 0x8000000000000000;
          v50 = v25;
        }

        else
        {
          v50 = -v25;
          v49 = v25;
        }

        *&v120.value = v22;
        *&v120.timescale = v49;
        v122 = v50;
        v123 = v22;
        v126 = v29;
        v127 = v29;
        v130 = 0;
        v131 = 0;
        v120.epoch = 0;
        v121 = 0;
        v124 = 0;
        v125 = 0;
        v128 = 0x3FF0000000000000;
        v129 = 0;
        v132 = xmmword_260342700;
        memset(v115, 0, sizeof(v115));
        v116 = 4;
        v117 = 0u;
        v118 = 0u;
        v119 = 0;
        PCMatrix44Tmpl<double>::getTransformation(&v120.value, v115);
        v70 = *(&v117 + 1);
        *a5 = v117;
        *a6 = v70;
        *a7 = v118;
      }

      result = OZChannel::getValueAsInt((a1 + 20720), MEMORY[0x277CC08F0], 0.0);
      if (result)
      {
        *a7 = *a7 + 1.57079633;
      }
    }

    else
    {
      result = TXTextLayout::alignToPath(a1);
      if (result)
      {
        memset(&v120, 0, sizeof(v120));
        OZFigTimeForChannelSeconds(v115, v137, 0x40000);
        OZChannelPosition3D::getOrientations((a1 + 52504), v115, a5, a6, a7, &v120, a8, a11, v114 + a9, a3);
        result = OZChannel::getValueAsInt((a1 + 20720), MEMORY[0x277CC08F0], 0.0);
        if (result)
        {
          *a7 = *a7 + 1.57079633;
        }

        v47.f64[0] = v140[0];
        v48 = v138 - v114 * *&v120.epoch;
        v47.f64[1] = v139;
        *a4 = vsubq_f64(v47, vmulq_n_f64(*&v120.value, v114));
        a4[2] = v48;
      }
    }
  }

  return result;
}

uint64_t *TXTextLayout::applyTypeOnToTextObjects(TXTextLayout *this, CMTime *a2)
{
  result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  if (result != 3)
  {
    result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
    if (result != 4)
    {
      v5 = *(this + 7353);
      v6 = *(this + 7354);
      while (v5 != v6)
      {
        v7 = *(*v5 + 96);
        v12 = *a2;
        v8 = TXTextLayout::computeTypeOnFactor(this, v7, &v12);
        v9 = *v5;
        v5 += 2;
        v10 = *(v9 + 96);
        v11 = TXTextLayout::timeGlyphPropertiesMap(this);
        result = TXTimeGlyphPropertiesMap::setTypeOn(v11, v8, v10, a2);
      }
    }
  }

  return result;
}

double TXTextLayout::computeTypeOnFactor(TXTextLayout *this, unsigned int a2, CMTime *a3)
{
  ComposedCharacterCount = TXTextLayout::getComposedCharacterCount(this);
  v7 = 0.0;
  OZChannel::getValueAsDouble((this + 23816), a3, 0.0);
  v8 = ComposedCharacterCount;
  v10 = v9 * ComposedCharacterCount;
  OZChannel::getValueAsDouble((this + 23968), a3, 0.0);
  v12 = v11;
  ValueAsInt = OZChannel::getValueAsInt((this + 24120), a3, 0.0);
  v14 = a2;
  if (floor(v10 + 0.0000001) <= a2)
  {
    v15 = ceil(v10);
    if (v15 <= v14)
    {
      v16 = v12 * v8;
      v17 = floor(v12 * v8 + 0.0000001);
      v7 = 1.0;
      if (v17 <= v14)
      {
        v18 = ceil(v16);
        v19 = v16 - v17;
        if (!ValueAsInt)
        {
          v19 = 1.0;
        }

        if (v18 > v14)
        {
          return v19;
        }

        else
        {
          return 0.0;
        }
      }
    }

    else if (ValueAsInt)
    {
      return v15 - v10;
    }

    else
    {
      return 0.0;
    }
  }

  return v7;
}

PCString *TXTextLayout::hitCheckWithTransform(uint64_t a1, float32x2_t *a2, OZRenderState *a3, const LiCamera *a4, float64x2_t *a5, unsigned int a6, int a7, double *a8)
{
  v109 = *MEMORY[0x277D85DE8];
  if (a6 & 4) != 0 && ((*(*(a1 + 200) + 680))())
  {
    return 0;
  }

  if ((a6 & 2) != 0)
  {
    v94 = *&a3->var0.var0;
    *&v95 = a3->var0.var3;
    if (!(*(*(a1 + 216) + 104))(a1 + 216, &v94, 1, 1, 1))
    {
      return 0;
    }
  }

  PCWorkingColorVector::PCWorkingColorVector(v101);
  TXTextLayout::doLayout(a1, a3, v101);
  if ((a6 & 8) != 0)
  {
    v14 = HIBYTE(a6);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = a1 + 200;
  if (((*(*(a1 + 200) + 680))(a1 + 200) & a7) == 1)
  {
    v96 = xmmword_2603429E0;
    v95 = xmmword_2603429E0;
    v94 = xmmword_2603429E0;
    (*(*a1 + 440))(a1, &v94, a3);
    v99 = vcvtq_f64_f32(*a2);
    v100 = 0;
    (*(*v15 + 1384))(v92, a1 + 200, &v99, a4, a3, 0);
    if (!PCRayIntersectsBox(v92, &v94, a5))
    {
      return 0;
    }

    return v15;
  }

  v16 = (*(*v15 + 272))(a1 + 200);
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v16, a4, &v99);
  v17 = (*(*v15 + 272))(a1 + 200);
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v17, a4, &v94);
  v58 = a4;
  for (i = 0; i != 16; i += 4)
  {
    v19 = &v99.f64[i];
    v20 = *(&v94 + i * 8 + 16);
    *v19 = *(&v94 + i * 8);
    v19[1] = v20;
  }

  v21 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v98, v21);
  OZRenderParams::OZRenderParams(&v94);
  OZRenderParams::setState(&v94, a3);
  v97 = 0;
  OZRenderParams::OZRenderParams(v92, &v94);
  v93 = 1;
  v91 = 0x3FF0000000000000;
  v88 = 0x3FF0000000000000;
  v85 = 0x3FF0000000000000;
  v82 = 0x3FF0000000000000;
  v83 = 0u;
  v84 = 0u;
  v86 = 0u;
  v87 = 0u;
  v89 = 0u;
  v90 = 0u;
  if (!a8)
  {
    (*(*v15 + 1256))(a1 + 200, &v82, a3);
  }

  v102[0] = *&a3->var0.var0;
  *&v102[1] = a3->var0.var3;
  OZChannel::getValueAsDouble((a1 + 59888), v102, 0.0);
  v23 = v22;
  v102[0] = *&a3->var0.var0;
  *&v102[1] = a3->var0.var3;
  OZChannel::getValueAsDouble((a1 + 60360), v102, 0.0);
  v25 = v24;
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v64 = OZHostApplicationDelegateHandler::wantsToIgnoreTextBoundsOfTransparentObjects(HostApplicationDelegate);
  v59 = a1 + 200;
  v60 = a1;
  v27 = *(a1 + 58824);
  v61 = a5;
  v62 = *(a1 + 58832);
  if (v27 != v62)
  {
    v28 = 0;
    while (1)
    {
      v29 = 0;
      memset(v81, 0, sizeof(v81));
      v80 = 0u;
      memset(v79, 0, sizeof(v79));
      do
      {
        v30 = *v27;
        v31 = *(*v27 + 33);
        if (v31)
        {
          v32 = *(v31 + 8);
          v33 = *(v31 + 16);
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            v30 = *v27;
          }
        }

        else
        {
          v33 = 0;
          v32 = 0;
        }

        v102[0] = *&a3->var0.var0;
        *&v102[1] = a3->var0.var3;
        if (!TXTextObject::isAttributeEnabled(v30, v29, v102) || v64 && (FaceOpacity = TXTextObject::getFaceOpacity(*v27, a3), !a3->var25) && fabs(FaceOpacity) < 0.0000001)
        {
          v35 = 6;
          if (!v33)
          {
            goto LABEL_30;
          }

LABEL_29:
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          goto LABEL_30;
        }

        if (a8)
        {
          v108 = 0x3FF0000000000000;
          v105 = 0x3FF0000000000000;
          *(&v102[2] + 1) = 0x3FF0000000000000;
          *&v102[0] = 0x3FF0000000000000;
          memset(v102 + 8, 0, 32);
          v103 = 0u;
          v104 = 0u;
          v106 = 0u;
          v107 = 0u;
          TXTextObject::getTransformMatrix(*v27, v102, v92, 1, 0, 0, 1, v25, v23);
          PCMatrix44Tmpl<double>::leftMult(v102, a8);
          v78 = 0uLL;
          v77 = 0uLL;
          v76 = 0uLL;
          v75 = 0uLL;
          TXTextObject::getFourCornerPointsInObjectSpaceForAttribute(*v27, a3, &v78, &v77, &v76, &v75, v29, 1, 0.0, 0.0, 0.0, 0.0, 1u, 0);
          v74 = 0;
          OZChannelBase::setRangeName(*v27, a3);
          *&v73.value = v75;
          v73.epoch = v74;
          v71 = v76;
          v72 = v74;
          v69 = v78;
          v70 = v74;
          v67 = v77;
          v68 = v74;
          PCMatrix44Tmpl<double>::transform<double>(v102, &v73.value, &v73.value);
          PCMatrix44Tmpl<double>::transform<double>(v102, v71.f64, v71.f64);
          PCMatrix44Tmpl<double>::transform<double>(v102, v69.f64, v69.f64);
          PCMatrix44Tmpl<double>::transform<double>(v102, v67.f64, v67.f64);
          *(v81 + 8) = v73;
          v80 = v71;
          *&v81[0] = v72;
          *(&v79[1] + 8) = v67;
          *(&v79[2] + 1) = v68;
          *&v79[1] = v70;
          v79[0] = v69;
        }

        else
        {
          TXTextObject::getTransformedImageCornersWithFourCornerPinning(*v27, &v94, v79, v29, v25, v23, 1, 0, &v82);
        }

        v65 = v32;
        v36 = a3;
        v37 = v28;
        v38 = 0;
        v104 = 0u;
        v103 = 0u;
        v39 = -1;
        v40 = v79;
        memset(v102, 0, sizeof(v102));
        do
        {
          memset(&v73, 0, sizeof(v73));
          PCMatrix44Tmpl<double>::transform<double>(v99.f64, v40, &v73.value);
          if (v39 < 2)
          {
            v41 = 1;
          }

          else
          {
            v41 = -1;
          }

          if (v38 <= 1)
          {
            v42 = -v14;
          }

          else
          {
            v42 = v14;
          }

          v43.f64[1] = v42;
          v43.f64[0] = v14 * v41;
          v102[v38++] = vaddq_f64(v43, *&v73.value);
          ++v39;
          v40 += 3;
        }

        while (v38 != 4);
        v104 = v102[0];
        v44 = v37;
        a3 = v36;
        if (v29 == 3 && OZChannel::getValueAsInt((v65 + 19528), MEMORY[0x277CC08F0], 0.0))
        {
          v45 = *v27;
          v73 = *v36;
          DropShadowDistance = TXTextObject::getDropShadowDistance(v45, &v73);
          v47 = *v27;
          v73 = *v36;
          DropShadowAngle = TXTextObject::getDropShadowAngle(v47, &v73);
          v49 = __sincos_stret(DropShadowAngle);
          v50 = 5;
          v51 = v102 + 1;
          do
          {
            v52 = DropShadowDistance * v49.__sinval + *v51;
            *(v51 - 1) = DropShadowDistance * v49.__cosval + *(v51 - 1);
            *v51 = v52;
            v51 += 2;
            --v50;
          }

          while (v50);
        }

        *&v73.value = vcvtq_f64_f32(*a2);
        v53 = pointInPolygon(&v73.value, v102, 5);
        v28 = v53 | v44;
        if (v53)
        {
          v35 = 4;
        }

        else
        {
          v35 = 0;
        }

        if (v33)
        {
          goto LABEL_29;
        }

LABEL_30:
        if (v35 != 6 && v35)
        {
          break;
        }

        ++v29;
      }

      while (v29 != 4);
      v27 += 2;
      if (v27 == v62)
      {
        goto LABEL_57;
      }
    }
  }

  LOBYTE(v28) = 0;
LABEL_57:
  v15 = v59;
  v54 = (*(*v59 + 272))(v59);
  if ((OZChannelBase::isObjectRef(v54) != 1) | v28 & 1 || (StringPtr = TXChannelString::getStringPtr(&v60[2381]), PCString::size(StringPtr)) && !TXTextLayout::isAllWhitespace(v60) || (v102[2] = xmmword_2603429E0, v102[1] = xmmword_2603429E0, v102[0] = xmmword_2603429E0, TXTextLayout::getLocalVolumeForHitCheck(v60, v102, a3), *&v73.value = vcvtq_f64_f32(*a2), v73.epoch = 0, (*(*v59 + 1384))(v79, v59, &v73, v58, a3, 0), !PCRayIntersectsBox(v79, v102, v61)))
  {
    OZRenderParams::~OZRenderParams(v92);
    OZRenderParams::~OZRenderParams(&v94);
    OZLockingGroup::WriteSentry::~WriteSentry(v98);
    if (v28)
    {
      v56 = v60;
    }

    else
    {
      v56 = 0;
    }

    if (v56)
    {
      return v56 + 25;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OZRenderParams::~OZRenderParams(v92);
    OZRenderParams::~OZRenderParams(&v94);
    OZLockingGroup::WriteSentry::~WriteSentry(v98);
  }

  return v15;
}

void sub_25FAF331C(_Unwind_Exception *a1)
{
  OZRenderParams::~OZRenderParams(&STACK[0x200]);
  OZRenderParams::~OZRenderParams(&STACK[0x790]);
  OZLockingGroup::WriteSentry::~WriteSentry(&STACK[0xD28]);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::didAddToScene(TXTextLayout *this, OZScene *a2)
{
  OZTransformNode::didAddToScene((this + 200), a2);
  result = OZDocument::addCPPObserver(*(a2 + 198), this + 18976, 1001);
  for (i = *(this + 2419); i != (this + 19344); i = *(i + 8))
  {
    v6 = *(i + 16);
    if (v6)
    {
      v7 = (v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    OZScene::registerObject(a2, v7);
    OZScene::addNodeDependency(a2, *(*(i + 16) + 96), *(this + 70));
    result = OZStyle::registerAllMaterials(*(i + 16));
  }

  return result;
}

OZLockingElement *TXTextLayout::willRemoveFromScene(OZLockingElement *this, OZScene *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = (this + 19344);
    for (i = *(this + 2419); i != v4; i = *(i + 8))
    {
      OZStyle::unregisterAllMaterials(*(i + 16));
      v6 = *(i + 16);
      if (v6)
      {
        v7 = (v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      OZScene::unregisterObject(a2, v7);
      OZScene::removeAllDependencies(a2, *(*(i + 16) + 96));
    }

    OZLockingElement::willRemoveFromScene(v3, a2);
    v8 = *(a2 + 198);

    return OZDocument::removeCPPObserver(v8);
  }

  return this;
}

void TXTextLayout::setName(TXTextLayout *this, PCString *a2, int a3)
{
  if (PCString::size(a2) < 0x1F)
  {
    OZObjectManipulator::setName((this + 216), a2, a3);
  }

  else
  {
    PCString::substrTo(a2, 30, &v6.var0);
    OZObjectManipulator::setName((this + 216), &v6, a3);
    PCString::~PCString(&v6);
  }

  *(this + 52362) = 1;
}

__n128 TXTextLayout::getNaturalDuration@<Q0>(TXTextLayout *this@<X0>, __n128 *a2@<X8>)
{
  v3 = this + 200;
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v4 = ((*(*v3 + 272))(v3) + 336);

    result.n128_u64[0] = OZSceneSettings::getFrameDuration(v4, a2).n128_u64[0];
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    a2[1].n128_u64[0] = *(v6 + 16);
  }

  return result;
}

void TXTextLayout::dirty(TXTextLayout *this)
{
  (*(*this + 552))(this, 0);
  *(this + 3852) = 0u;
  OZValueCache<OZBoundsCacheItem>::flush(this + 63888);
  OZValueCache<OZBoundsCacheItem>::flush(this + 64032);
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v7, v2);
  v3 = TXTextLayout::timeGlyphPropertiesMap(this);
  TXTimeGlyphPropertiesMap::flush(v3);
  v4 = (this + 64184);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 64232, *(this + 8030));
  *(this + 8029) = this + 64240;
  *(this + 8030) = 0;
  v5 = *(this + 8027);
  *(this + 8031) = 0;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 64208, v5);
  *(this + 8027) = 0;
  *(this + 8028) = 0;
  *(this + 8026) = this + 64216;
  if (TXTextLayout::scaleEmojiToCapHeight(v6) && *v4)
  {
    CFRelease(*v4);
    *v4 = 0;
    *(this + 4012) = xmmword_2603426F0;
  }

  *(this + 19332) = 0;
  *(this + 64324) = 1;
  OZLockingGroup::WriteSentry::~WriteSentry(v7);
}

void sub_25FAF37C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void OZValueCache<OZBoundsCacheItem>::flush(uint64_t a1)
{
  PCSharedMutex::lock((a1 + 40));
  std::__list_imp<OZBoundsCacheItem>::clear((a1 + 8));
  PCSharedMutex::unlock((a1 + 40));
}

void non-virtual thunk toTXTextLayout::dirty(TXTextLayout *this)
{
  TXTextLayout::dirty((this - 200));
}

{
  TXTextLayout::dirty((this - 216));
}

double TXTextLayout::dirtyTextAndObjects(TXTextLayout *this, int a2)
{
  OZElement::dirty((this + 200));
  *(this + 19392) = 1;
  if (a2)
  {
    v5 = this + 58824;
    v6 = *(this + 7353);
    v7 = *(v5 + 1);
    while (v6 != v7)
    {
      v8 = *v6;
      v6 += 2;
      *&result = TXTextObject::dirty(v8).n128_u64[0];
    }
  }

  return result;
}

uint64_t TXTextLayout::doEval(TXTextLayout *this, OZChannelBase *a2, const CMTime *a3)
{
  OZChannel::getValueAsDouble((this + 1552), a3, 0.0);
  OZChannel::getValueAsDouble((this + 1704), a3, 0.0);
  OZChannel::getValueAsDouble((this + 2152), a3, 0.0);
  return 1;
}

void TXTextLayout::transform(Li3DEngineScene *a1, double *a2, const OZRenderState *a3)
{
  v6 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v22, v6);
  v21 = 0x3FF0000000000000;
  v18 = 0x3FF0000000000000;
  v15 = 0x3FF0000000000000;
  v12 = 0x3FF0000000000000;
  v13 = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (OZChannelBase::isObjectRef(a1) && (v7 = *(a1 + 7353), v8 = *(a1 + 7354) - v7, (v8 & 0xFFFFFFFF0) != 0))
  {
    if (*(a1 + 2408) >= (v8 >> 4))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 2408);
    }

    v10 = (v7 + 16 * v9);
    if (*v10)
    {
      OZRenderParams::OZRenderParams(v11);
      OZRenderParams::setState(v11, a3);
      TXTextObject::getTransformMatrix(*v10, &v12, v11, 1, 1, 0, 1, 0.0, 0.0);
      OZRenderParams::~OZRenderParams(v11);
    }
  }

  else
  {
    (*(*(a1 + 25) + 1256))(a1 + 25, &v12, a3);
  }

  PCMatrix44Tmpl<double>::transform<double>(&v12, a2, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(v22);
}

void TXTextLayout::createSnapSetForCamera(void *a1, const LiCamera *a2, uint64_t a3, OZRenderState *a4, int a5, int a6)
{
  v58 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v59 = _Q0;
  OZRenderState::OZRenderState(&v57, a4);
  v57.var4 = 1;
  TXTextLayout::getSelectionBounds(a1, &v58, &v57);
  v56 = 1.0;
  v53 = 0x3FF0000000000000;
  v50 = 1.0;
  v47 = 1.0;
  v48 = 0u;
  v49 = 0u;
  v51 = 0u;
  v52 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = a1[25];
  a1 += 25;
  (*(v17 + 1256))(a1, &v47, a4);
  v18 = (*(*a1 + 272))(a1);
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v18, a2, v46);
  PCMatrix44Tmpl<double>::leftMult(&v47, v46);
  *&v19.f64[0] = v48;
  *&v20.f64[0] = v49;
  v21.f64[0] = v47;
  v21.f64[1] = *(&v49 + 1);
  v22 = vmulq_n_f64(v21, v58.f64[0]);
  v19.f64[1] = v50;
  v23 = vmulq_n_f64(v19, v58.f64[1] + v59.f64[1]);
  v20.f64[1] = *(&v51 + 1);
  v24 = vdivq_f64(vaddq_f64(v20, vaddq_f64(v22, v23)), vdupq_lane_s64(COERCE__INT64(v56 + v58.f64[0] * *(&v54 + 1) + (v58.f64[1] + v59.f64[1]) * *&v55), 0));
  v25.f64[0] = v23.f64[0];
  v25.f64[1] = (v58.f64[0] + v59.f64[0]) * *(&v49 + 1);
  v23.f64[0] = (v58.f64[0] + v59.f64[0]) * v47;
  v26 = vdivq_f64(vaddq_f64(v20, vaddq_f64(v25, v23)), vdupq_lane_s64(COERCE__INT64(v56 + (v58.f64[0] + v59.f64[0]) * *(&v54 + 1) + (v58.f64[1] + v59.f64[1]) * *&v55), 0));
  v27 = vmulq_n_f64(v19, v58.f64[1]);
  v28.f64[0] = (v58.f64[0] + v59.f64[0]) * v47 + v27.f64[0];
  v29 = vdivq_f64(vaddq_f64(v20, vaddq_f64(v22, v27)), vdupq_lane_s64(COERCE__INT64(v56 + v58.f64[0] * *(&v54 + 1) + v58.f64[1] * *&v55), 0));
  v28.f64[1] = v25.f64[1] + v27.f64[1];
  v30 = vdivq_f64(vaddq_f64(v20, v28), vdupq_lane_s64(COERCE__INT64(v56 + (v58.f64[0] + v59.f64[0]) * *(&v54 + 1) + v58.f64[1] * *&v55), 0));
  v31 = vbslq_s8(vcgtq_f64(v29, v30), v30, v29);
  v32 = vbslq_s8(vcgtq_f64(v26, v31), v31, v26);
  v33 = vbslq_s8(vcgtq_f64(v24, v32), v32, v24);
  v34 = vbslq_s8(vcgtq_f64(v30, v29), v30, v29);
  v35 = vbslq_s8(vcgtq_f64(v34, v26), v34, v26);
  v36 = vbslq_s8(vcgtq_f64(v35, v24), v35, v24);
  v37 = vcgtq_f64(v33, v36);
  v38 = vbslq_s8(v37, v33, v36);
  v39 = vbslq_s8(v37, v36, v33);
  v40 = vsubq_f64(v38, v39);
  v58 = v39;
  v59 = v40;
  if (a5)
  {
    v41 = vaddq_f64(v39, v40);
    OZSnap::OZSnap(v45, 258, 0.5 * vaddq_f64(v39, v41).f64[0], v39.f64[1], v41.f64[1]);
    std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v45);
    OZSnap::OZSnap(v45, 514, (v58.f64[1] + v58.f64[1] + v59.f64[1]) * 0.5, v58.f64[0], v58.f64[0] + v59.f64[0]);
    std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v45);
  }

  if (a6)
  {
    if (v59.f64[0] > 3.0)
    {
      v42 = v59.f64[0] + v58.f64[0] - (v58.f64[0] + 1.0) + -2.0;
      v58.f64[0] = v58.f64[0] + 1.0;
      v59.f64[0] = v42;
    }

    v43 = v59.f64[1];
    v44 = v58.f64[1];
    if (v59.f64[1] > 3.0)
    {
      v43 = v59.f64[1] + v58.f64[1] - (v58.f64[1] + 1.0) + -2.0;
      v58.f64[1] = v58.f64[1] + 1.0;
      v59.f64[1] = v43;
      v44 = v44 + 1.0;
    }

    OZSnap::OZSnap(v45, 257, v58.f64[0], v44, v44 + v43);
    std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v45);
    OZSnap::OZSnap(v45, 260, v58.f64[0] + v59.f64[0], v58.f64[1], v58.f64[1] + v59.f64[1]);
    std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v45);
    OZSnap::OZSnap(v45, 513, v58.f64[1], v58.f64[0], v58.f64[0] + v59.f64[0]);
    std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v45);
    OZSnap::OZSnap(v45, 516, v58.f64[1] + v59.f64[1], v58.f64[0], v58.f64[0] + v59.f64[0]);
    std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v45);
  }
}

unint64_t TXTextLayout::isGlowEnabled(TXTextLayout *this, const CMTime *a2)
{
  isEnabled = 1;
  if ((OZChannelBase::isEnabled((this + 38664), 0, 1) & 1) == 0)
  {
    v4 = this + 19344;
    v5 = *(this + 2419);
    if (v5 == v4)
    {
      return 0;
    }

    else
    {
      do
      {
        isEnabled = OZChannelBase::isEnabled((*(v5 + 16) + 31080), 0, 1);
        if (isEnabled)
        {
          break;
        }

        v5 = *(v5 + 8);
      }

      while (v5 != v4);
    }
  }

  return isEnabled;
}

unint64_t TXTextLayout::isTextDropShadowEnabled(TXTextLayout *this)
{
  isEnabled = 1;
  if ((OZChannelBase::isEnabled((this + 45048), 0, 1) & 1) == 0)
  {
    v3 = this + 19344;
    v4 = *(this + 2419);
    if (v4 == v3)
    {
      return 0;
    }

    else
    {
      do
      {
        isEnabled = OZChannelBase::isEnabled((*(v4 + 16) + 13848), 0, 1);
        if (isEnabled)
        {
          break;
        }

        v4 = *(v4 + 8);
      }

      while (v4 != v3);
    }
  }

  return isEnabled;
}

double TXTextLayout::calcStaticHash(uint64_t a1, const void *a2)
{
  (*(*(a1 + 200) + 528))();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v12 = *PCHashWriteStream::getHash(v4)->i8;
  (*(*v5 + 40))(v5);
  v6 = *(a1 + 208);
  v11 = xmmword_260347A90;
  if ((OZFactory::isKindOfClass(v6, &v11) & 1) == 0)
  {
    TXChannelString::getString((a1 + 19048), &v11);
    v7 = PCString::size(&v11);
    PCString::~PCString(&v11);
    if (v7)
    {
      TXChannelString::getString((a1 + 19048), &v11);
      (*(*a2 + 104))(a2, &v11);
      PCString::~PCString(&v11);
    }
  }

  (*(*a2 + 88))(a2, *(a1 + 19432));
  v8 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((a1 + 24272), MEMORY[0x277CC08F0], 0.0);
  (*(*a2 + 88))(a2);
  OZChannel::getValueAsDouble((a1 + 24424), v8, 0.0);
  (*(*a2 + 88))(a2);
  OZChannel::getValueAsDouble((a1 + 24576), v8, 0.0);
  (*(*a2 + 88))(a2);
  OZChannel::getValueAsDouble((a1 + 24728), v8, 0.0);
  (*(*a2 + 88))(a2);
  OZChannel::getValueAsDouble((a1 + 61464), v8, 0.0);
  (*(*a2 + 88))(a2);
  if (*(a1 + 19352) != a1 + 19344)
  {
    OZObjectManipulator::getStaticHash();
  }

  Hash = PCHashWriteStream::getHash(v5);
  PCHash128::operator+=(&v12, Hash);
  *&result = PCHashWriteStream::setHash(v5, &v12).n128_u64[0];
  return result;
}

double non-virtual thunk toTXTextLayout::calcStaticHash(uint64_t a1, const void *a2)
{
  return TXTextLayout::calcStaticHash(a1 - 200, a2);
}

{
  return TXTextLayout::calcStaticHash(a1 - 216, a2);
}

void TXTextLayout::calcStaticHash(PCString *a1, const void *a2)
{
  OZTransformNode::calcStaticHash(&a1[25]);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v14 = *PCHashWriteStream::getHash(v4)->i8;
  (*(*v5 + 40))(v5);
  v6 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v13, v6);
  TXChannelString::getString(a1 + 2381, &v12);
  v7 = PCString::size(&v12);
  PCString::~PCString(&v12);
  if (v7)
  {
    TXChannelString::getString(a1 + 2381, &v12);
    (*(*a2 + 104))(a2, &v12);
    PCString::~PCString(&v12);
  }

  if (a1[2419].var0 != &a1[2418])
  {
    OZObjectManipulator::getStaticHash();
  }

  var0 = a1[2378].var0;
  v9 = a1[2379].var0;
  while (var0 != v9)
  {
    StaticHash = TXParagraphStyle::getStaticHash(*var0, a2);
    PCHash128::operator+=(&v14, StaticHash);
    ++var0;
  }

  Hash = PCHashWriteStream::getHash(v5);
  PCHash128::operator+=(&v14, Hash);
  PCHashWriteStream::setHash(v5, &v14);
  OZLockingGroup::WriteSentry::~WriteSentry(v13);
}

void sub_25FAF44E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  PCString::~PCString(&a9);
  OZLockingGroup::WriteSentry::~WriteSentry(&a10);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::colorConversionCache(TXTextLayout *this)
{
  if (!*(this + 7621))
  {
    operator new();
  }

  return *(this + 7621);
}

void TXTextLayout::cacheColorConversion(int a1, PCColor *this, uint64_t a3, int a4, int a5)
{
  LODWORD(v9[1]) = a4;
  LODWORD(v9[2]) = a5;
  v9[3] = *(a3 + 24);
  v10 = *(a3 + 28);
  CGColorSpace = PCColor::getCGColorSpace(this);
  PCColor::getRGB(this, &v7, &v8, v9, CGColorSpace);
  std::allocate_shared[abi:ne200100]<PCWorkingColor,std::allocator<PCWorkingColor>,PCWorkingColor const&,0>();
}

void sub_25FAF4688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::workingColorFromColor(TXTextLayout *a1, PCColor *this, uint64_t a3, int a4, int a5)
{
  LODWORD(v15[1]) = a4;
  LODWORD(v15[2]) = a5;
  v15[3] = *(a3 + 24);
  v16 = *(a3 + 28);
  CGColorSpace = PCColor::getCGColorSpace(this);
  PCColor::getRGB(this, &v13, &v14, v15, CGColorSpace);
  v8 = *TXTextLayout::colorConversionCache(a1);
  v17 = 0;
  PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::findValue(v8, &v13, &v17, &v11);
  v9 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v9;
}

double TXTextLayout::calcHashForState(PCString *a1, const void *a2)
{
  (a1[25].var0[16].length)();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v9 = *PCHashWriteStream::getHash(v4)->i8;
  (*(*a2 + 40))(a2);
  TXChannelString::getString(a1 + 2381, v8);
  (*(*a2 + 104))(a2, v8);
  PCString::~PCString(v8);
  if (a1[2419].var0 != &a1[2418])
  {
    OZObjectManipulator::getHashForState();
  }

  Hash = PCHashWriteStream::getHash(v5);
  PCHash128::operator+=(&v9, Hash);
  *&result = PCHashWriteStream::setHash(v5, &v9).n128_u64[0];
  return result;
}

double non-virtual thunk toTXTextLayout::calcHashForState(uint64_t a1, const void *a2)
{
  return TXTextLayout::calcHashForState((a1 - 200), a2);
}

{
  return TXTextLayout::calcHashForState((a1 - 216), a2);
}

void TXTextLayout::calcHashForState(uint64_t a1, void *lpsrc, CMTime *a3, uint64_t a4, int a5)
{
  if (!v10)
  {
    __cxa_bad_cast();
  }

  v11 = v10;
  v39 = *a3;
  v12 = (*(*(a1 + 216) + 104))(a1 + 216, &v39, 1, 1, 1);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 48))(lpsrc, v12);
  (*(*lpsrc + 24))(lpsrc);
  v13 = *(a1 + 1224);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 56))(lpsrc, v13);
  (*(*lpsrc + 24))(lpsrc);
  v39 = *a3;
  OZChannelObjectRootBase::calcHashForStateSelfOnly((a1 + 256), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 520), lpsrc, &v39);
  v14 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v36, v14);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 19448), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 19600), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 19752), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 22136), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 20720), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 20976), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 22288), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 22544), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 22800), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 23688), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 24880), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 52376), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 58880), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 59280), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 59560), lpsrc, &v39);
  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 59760), lpsrc, &v39);
  v39 = *a3;
  OZChannel::calcHashForState((a1 + 61648), lpsrc, &v39);
  v15 = *(a1 + 19224);
  if (v15 != (a1 + 19232))
  {
    do
    {
      v16 = v15[5];
      (*(*lpsrc + 64))(lpsrc, *(v15 + 4));
      (*(*lpsrc + 88))(lpsrc, v16);
      v17 = *(v15 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v15 + 2);
          v19 = *v18 == v15;
          v15 = v18;
        }

        while (!v19);
      }

      v15 = v18;
    }

    while (v18 != (a1 + 19232));
  }

  v39 = *a3;
  OZChannelFolder::calcHashForState((a1 + 1032), lpsrc, &v39);
  OZLockingGroup::WriteSentry::~WriteSentry(v36);
  v38 = *PCHashWriteStream::getHash(v11)->i8;
  if (a5)
  {
    for (i = *(a1 + 1184); i != a1 + 1176; i = *(i + 8))
    {
      v21 = *(i + 16);
      v39 = *a3;
      if ((*(*v21 + 280))(v21, &v39, 0, 1, 1))
      {
        OZObjectManipulator::getHashForState();
      }
    }
  }

  if ((*(*a1 + 496))(a1))
  {
    for (j = *(a1 + 1208); j != a1 + 1200; j = *(j + 8))
    {
      if ((*(*(*(j + 16) + 16) + 24))(*(j + 16) + 16, 0, 1))
      {
        OZObjectManipulator::getHashForState();
      }
    }
  }

  *&v39.timescale = 0;
  v39.epoch = 0;
  v39.value = &v39.timescale;
  v23 = *(a1 + 1168);
  if (v23)
  {
    OZScene::getImmediatelyReferencedNodes(v23, *(a1 + 280), &v39);
    value = v39.value;
    if (v39.value != &v39.timescale)
    {
      do
      {
        v25 = *(a1 + 1168);
        if (v25)
        {
          Node = OZScene::getNode(v25, *(value + 28));
          v27 = Node;
          if (Node)
          {
            if (Node[120] != a1 + 200 || (epoch = a3->epoch, *&v36[0].var0 = *&a3->value, ((*(Node[2] + 104))() & 1) != 0))
            {
              if (!OZObjectManipulator::isInObjectList((v27 + 2), a4))
              {
                OZObjectManipulator::getHashForState();
              }
            }
          }
        }

        v28 = *(value + 8);
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = v28->value;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = *(value + 16);
            v19 = v29->value == value;
            value = v29;
          }

          while (!v19);
        }

        value = v29;
      }

      while (v29 != &v39.timescale);
    }
  }

  v30 = PCHashWriteStream::setHash(v11, &v38);
  (*(*lpsrc + 40))(lpsrc, v30);
  v31 = *(a1 + 208);
  *&v36[0].var0 = xmmword_260347A90;
  if (OZFactory::isKindOfClass(v31, v36))
  {
    v32 = Li3DEngineScene::sceneManager(a1);
    OZLockingGroup::WriteSentry::WriteSentry(v36, v32);
    TXChannelString::getString((a1 + 19048), &v35);
    (*(*lpsrc + 104))(lpsrc, &v35);
    PCString::~PCString(&v35);
    OZLockingGroup::WriteSentry::~WriteSentry(v36);
  }

  else
  {
    TXChannelString::getString((a1 + 19048), v36);
    (*(*lpsrc + 104))(lpsrc, v36);
    PCString::~PCString(v36);
  }

  (*(*lpsrc + 88))(lpsrc, *(a1 + 19432));
  OZChannel::getValueAsDouble((a1 + 24272), MEMORY[0x277CC08F0], 0.0);
  (*(*lpsrc + 88))(lpsrc);
  OZChannel::getValueAsDouble((a1 + 24424), MEMORY[0x277CC08F0], 0.0);
  (*(*lpsrc + 88))(lpsrc);
  OZChannel::getValueAsDouble((a1 + 24576), MEMORY[0x277CC08F0], 0.0);
  (*(*lpsrc + 88))(lpsrc);
  OZChannel::getValueAsDouble((a1 + 24728), MEMORY[0x277CC08F0], 0.0);
  (*(*lpsrc + 88))(lpsrc);
  OZChannel::getValueAsDouble((a1 + 61464), MEMORY[0x277CC08F0], 0.0);
  (*(*lpsrc + 88))(lpsrc);
  Hash = PCHashWriteStream::getHash(v11);
  PCHash128::operator+=(&v38, Hash);
  if (*(a1 + 19352) != a1 + 19344)
  {
    OZObjectManipulator::getHashForState();
  }

  v34 = PCHashWriteStream::getHash(v11);
  PCHash128::operator+=(&v38, v34);
  PCHashWriteStream::setHash(v11, &v38);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v39, *&v39.timescale);
}

void sub_25FAF53CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18)
{
  PCString::~PCString(&a10);
  OZLockingGroup::WriteSentry::~WriteSentry(&a11);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

void TXTextLayout::getTextObjectWithIndex(TXTextLayout *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = this + 57344;
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::ReadSentry::ReadSentry(v9, v6);
  v7 = *(v5 + 185);
  if (a2 >= ((*(v5 + 186) - v7) >> 4))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v8 = *(v7 + 16 * a2);
    *a3 = v8;
    if (*(&v8 + 1))
    {
      atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  OZLockingGroup::ReadSentry::~ReadSentry(v9);
}

uint64_t TXTextLayout::getDirectOffset(uint64_t a1, float32x2_t *a2, const OZRenderState *a3, _BYTE *a4, const LiCamera *a5, int a6, _BYTE *a7)
{
  v94 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 1;
  }

  StringPtr = TXChannelString::getStringPtr((a1 + 19048));
  if (PCString::size(StringPtr))
  {
    v12 = (*(*(a1 + 200) + 272))(a1 + 200);
    OZScene::calcWorldToFilmSpaceMatrixForCamera(v12, a5, v89);
    v13 = Li3DEngineScene::sceneManager(a1);
    OZLockingGroup::WriteSentry::WriteSentry(v88, v13);
    OZRenderParams::OZRenderParams(v86);
    OZRenderParams::setState(v86, a3);
    v87 = 1;
    OZRenderState::OZRenderState(&v85, a3);
    v85.var4 = 0;
    v84 = 0x3FF0000000000000;
    v81 = 0x3FF0000000000000;
    v78 = 0x3FF0000000000000;
    v75 = 0x3FF0000000000000;
    v76 = 0u;
    v77 = 0u;
    v79 = 0u;
    v80 = 0u;
    v82 = 0u;
    v83 = 0u;
    (*(*(a1 + 200) + 1256))(a1 + 200, &v75, &v85);
    memset(v74, 0, sizeof(v74));
    v73 = 0u;
    memset(v72, 0, sizeof(v72));
    var0 = a3->var0;
    OZChannel::getValueAsDouble((a1 + 59888), &var0, 0.0);
    v15 = v14;
    var0 = a3->var0;
    OZChannel::getValueAsDouble((a1 + 60360), &var0, 0.0);
    v17 = v16;
    if (a7)
    {
      *a7 = 0;
    }

    v18 = *(a1 + 58824);
    v45 = *(a1 + 58832);
    if (v18 == v45)
    {
      v43 = 0;
      goto LABEL_47;
    }

    v48 = 0;
    v19 = 0;
    v20 = -1.0;
LABEL_8:
    v71 = 0x3FF0000000000000;
    v68 = 0x3FF0000000000000;
    v65 = 0x3FF0000000000000;
    var0.value = 0x3FF0000000000000;
    *&var0.timescale = 0u;
    v64 = 0u;
    v66 = 0u;
    v67 = 0u;
    v69 = 0u;
    v70 = 0u;
    TXTextObject::getTransformMatrix(*v18, &var0, &v86[0].value, 1, 0, 0, 1, v17, v15);
    v21 = 0;
    while (1)
    {
      if (a6 == 5 || v21 == a6)
      {
        v22 = *v18;
        *v90 = *&a3->var0.var0;
        *&v90[16] = a3->var0.var3;
        if (TXTextObject::isAttributeEnabled(v22, v21, v90))
        {
          v23 = *(*v18 + 264);
          if (v23)
          {
            v24 = *(v23 + 8);
            v25 = *(v23 + 16);
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v25 = 0;
            v24 = 0;
          }

          v62 = 0uLL;
          v61 = 0uLL;
          v60 = 0uLL;
          v59 = 0uLL;
          TXTextObject::getFourCornerPointsInObjectSpaceForAttribute(*v18, v86, &v60, &v59, &v61, &v62, a6, 1, 0.0, 0.0, 0.0, 0.0, 1u, 0);
          v57 = v62;
          v58 = 0;
          v55 = v61;
          v56 = 0;
          v53 = v60;
          v54 = 0;
          v51 = v59;
          v52 = 0;
          PCMatrix44Tmpl<double>::transform<double>(&var0.value, v57.f64, v57.f64);
          PCMatrix44Tmpl<double>::transform<double>(&var0.value, v55.f64, v55.f64);
          PCMatrix44Tmpl<double>::transform<double>(&var0.value, v53.f64, v53.f64);
          PCMatrix44Tmpl<double>::transform<double>(&var0.value, v51.f64, v51.f64);
          PCMatrix44Tmpl<double>::transform<double>(&v75, v57.f64, v57.f64);
          PCMatrix44Tmpl<double>::transform<double>(&v75, v55.f64, v55.f64);
          PCMatrix44Tmpl<double>::transform<double>(&v75, v53.f64, v53.f64);
          PCMatrix44Tmpl<double>::transform<double>(&v75, v51.f64, v51.f64);
          v26 = v19;
          v27 = 0;
          *(v74 + 8) = v57;
          *(&v74[1] + 1) = v58;
          v73 = v55;
          *&v74[0] = v56;
          *(&v72[1] + 8) = v51;
          *(&v72[2] + 1) = v52;
          *&v72[1] = v54;
          v72[0] = v53;
          v92 = 0u;
          v93 = 0u;
          v91 = 0u;
          v28 = v72;
          memset(v90, 0, sizeof(v90));
          do
          {
            memset(&v50, 0, sizeof(v50));
            PCMatrix44Tmpl<double>::transform<double>(&v75, v28, &v50.value);
            PCMatrix44Tmpl<double>::transform<double>(v89, v28, &v50.value);
            *&v90[v27] = *&v50.value;
            v27 += 16;
            v28 += 3;
          }

          while (v27 != 64);
          v93 = *v90;
          v19 = v26;
          if (v21 == 3 && OZChannel::getValueAsInt((v24 + 19528), MEMORY[0x277CC08F0], 0.0))
          {
            v29 = *v18;
            v50 = a3->var0;
            DropShadowDistance = TXTextObject::getDropShadowDistance(v29, &v50);
            v31 = *v18;
            v50 = a3->var0;
            DropShadowAngle = TXTextObject::getDropShadowAngle(v31, &v50);
            v33 = __sincos_stret(DropShadowAngle);
            v34 = 5;
            v35 = &v90[8];
            do
            {
              v36 = DropShadowDistance * v33.__sinval + *v35;
              *(v35 - 1) = DropShadowDistance * v33.__cosval + *(v35 - 1);
              *v35 = v36;
              v35 += 2;
              --v34;
            }

            while (v34);
          }

          *&v50.value = vcvtq_f64_f32(*a2);
          v37 = pointInPolygon(&v50.value, v90, 5);
          v38 = v37;
          if (v37)
          {
            v39 = v18[1];
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            if (a7)
            {
              *a7 = 1;
            }

            v19 = v39;
            v48 = *(*v18 + 388);
            v46 = v48;
          }

          else
          {
            v40 = hypot((*v90 + *&v91) * 0.5 - a2->f32[0], (*&v90[8] + *(&v91 + 1)) * 0.5 - a2->f32[1]);
            v41 = v40;
            if (v20 < 0.0 || v40 < v20)
            {
              v42 = v18[1];
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v26)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v26);
              }

              v48 = *(*v18 + 736);
              v19 = v42;
              v20 = v41;
            }
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v38)
          {
            break;
          }
        }
      }

      if (++v21 == 4)
      {
        v18 += 2;
        if (v18 != v45)
        {
          goto LABEL_8;
        }

        v43 = v48;
        if (!v19)
        {
LABEL_47:
          OZRenderParams::~OZRenderParams(v86);
          OZLockingGroup::WriteSentry::~WriteSentry(v88);
          return v43;
        }

LABEL_46:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        goto LABEL_47;
      }
    }

    v43 = v46;
    if (!v19)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  return 0;
}

void sub_25FAF5BB0(_Unwind_Exception *a1)
{
  OZRenderParams::~OZRenderParams(&STACK[0x388]);
  OZLockingGroup::WriteSentry::~WriteSentry(&STACK[0x918]);
  _Unwind_Resume(a1);
}

void TXTextLayout::getCursorOrigin(TXTextLayout *this, double *a2, double *a3)
{
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) && (v6 = MEMORY[0x277CC08F0], OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 2))
  {
    TXTextLayout::getStyleAtCharOffset(this, 0, &v20);
    v19 = *v6;
    Size = TXTextStyle::getSize(v20, &v19, 0.0);
    OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
    v9 = v8;
    OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
    v11 = v9 - v10;
    AlignmentAtCursor = TXTextLayout::getAlignmentAtCursor(this);
    if (AlignmentAtCursor == 1)
    {
      OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
      v14 = v11 * 0.5 + v15;
    }

    else if (AlignmentAtCursor == 2)
    {
      OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
      v14 = v11 + v13;
    }

    else
    {
      OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
    }

    *a2 = v14;
    if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
    {
      OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
      *a2 = v16;
    }

    if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
    {
      OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
    }

    else
    {
      OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
      v17 = v18 - Size;
    }

    *a3 = v17;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    *a2 = 0.0;
    *a3 = 0.0;
  }
}

void sub_25FAF5E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::getVisibleCharacterRange(TXTextLayout *this@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this + 57344;
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v16, v6);
  *a3 = 0;
  v7 = *(v5 + 185);
  v8 = *(v5 + 186);
  if (v7 == v8)
  {
LABEL_4:
    v9 = 0;
    v10 = 0;
  }

  else
  {
    while (fabs(TXTextObject::getFaceOpacity(*v7, a2)) < 0.0000001)
    {
      v7 += 2;
      if (v7 == v8)
      {
        goto LABEL_4;
      }
    }

    v10 = *(*v7 + 184);
    v9 = *(*v7 + 185);
  }

  if (v7 != v8)
  {
    while (fabs(TXTextObject::getFaceOpacity(*v7, a2)) >= 0.0000001)
    {
      v11 = *v7;
      v7 += 2;
      v12 = *(v11 + 184);
      v13 = *(v11 + 185);
      if (v10 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      v15 = v13 + v12;
      if (v9 + v10 > v15)
      {
        v15 = v9 + v10;
      }

      v9 = v15 - v14;
      v10 = v14;
      if (v7 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = v10;
LABEL_16:
  *a3 = v14;
  *(a3 + 4) = v9;
  OZLockingGroup::WriteSentry::~WriteSentry(v16);
}

void sub_25FAF5F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = v4;
  v2[1] = v3;
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t NumLinesInParagraphs(TXTextLayout *a1)
{
  v1 = *(a1 + 2378);
  v2 = *(a1 + 2379) - v1;
  if ((v2 & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  if ((v2 >> 3) - 1 >= (v2 >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  LODWORD(result) = 0;
  v4 = (v2 >> 3);
  do
  {
    v5 = *v1++;
    result = (*(v5 + 876) + result);
    --v4;
  }

  while (v4);
  return result;
}

uint64_t TXTextLayout::shouldUseBinarySearchForScalingToBothMargins(TXTextLayout *this)
{
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);

  return OZHostApplicationDelegateHandler::wantsToUseBinarySearchForScalingToBothMargins(HostApplicationDelegate);
}

void TXTextLayout::scaleToBothMargins(TXTextLayout *this, CMTime *a2)
{
  if ((*(*this + 1144))(this))
  {

    TXTextLayout::shrinkToBothMarginsBinary(this, a2);
  }

  else
  {

    TXTextLayout::shrinkToBothMarginsLinear(this, a2);
  }
}

void TXTextLayout::shrinkToBothMarginsBinary(TXTextLayout *this, CMTime *a2)
{
  TXTextLayout::calcMarginScaleHash(this, a2);
  v4 = *(this + 3852);
  if (!*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v22, v4)))) & 1) != 0)
  {
    v5 = TXTextLayout::computeMarginWidth(this);
    v6 = TXTextLayout::computeMarginHeight(this);
    v7 = 0;
    v8 = *(this + 7971);
    v9 = -1.0;
    v10 = 1;
    v11 = 8;
    v12 = 0.01;
    v13 = 1.0;
    do
    {
      InitialValue = OZChannel::getInitialValue((this + 61464));
      isBiggerThanMargins = TXTextLayout::isBiggerThanMargins(this, v5, v6, a2);
      if (v9 >= InitialValue)
      {
        v16 = v9;
      }

      else
      {
        v16 = InitialValue;
      }

      if (!isBiggerThanMargins)
      {
        v9 = v16;
      }

      if (v10)
      {
        v17 = 1.0;
      }

      else
      {
        v18 = isBiggerThanMargins;
        v19 = OZChannel::getInitialValue((this + 61464));
        if (v18)
        {
          v13 = v19;
        }

        else
        {
          v12 = v19;
        }

        v17 = (v13 + v12) * 0.5;
      }

      v20 = v11 == 1;
      if (v20 && v9 > 0.0)
      {
        v17 = v9;
      }

      OZChannel::setInitialValue((this + 61464), v17, 1);
      TXTextLayout::setAllParagraphsDirty(this);
      TXTextLayout::doLayoutForParagraphs(this, v5, a2);
      v7 |= v20;
      if ((v7 & 1) != 0 && v8 < 1.0)
      {
        TXTextLayout::shrinkDownToOneLine(this, v5, a2);
      }

      v10 = 0;
      --v11;
    }

    while (v11);
    TXTextLayout::calcMarginScaleHash(this, a2);
    *(this + 3852) = v21;
  }
}

void TXTextLayout::shrinkToBothMarginsLinear(TXTextLayout *this, CMTime *a2)
{
  TXTextLayout::calcMarginScaleHash(this, a2);
  v3 = *(this + 3852);
  if (*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v75, v3)))) & 1) == 0)
  {
    return;
  }

  v4 = (this + 61440);
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v70 = OZHostApplicationDelegateHandler::wantsToLimitLinesOfText(HostApplicationDelegate);
  NumberOfLinesToLimitTextTo = OZHostApplicationDelegateHandler::getNumberOfLinesToLimitTextTo(HostApplicationDelegate);
  v74 = *a2;
  OZChannel::getValueAsDouble((this + 22136), &v74, 0.0);
  v7 = v6;
  v8 = 0;
  v9 = 0;
  v71 = 1;
  v10 = MEMORY[0x277CC08F0];
  while (1)
  {
    v11 = v8;
    OZChannel::getValueAsDouble((this + 24728), v10, 0.0);
    v13 = v12;
    OZChannel::getValueAsDouble((this + 24576), v10, 0.0);
    v15 = v14;
    if (OZChannel::getValueAsInt((this + 20464), v10, 0.0) == 4 || OZChannel::getValueAsInt((this + 20720), v10, 0.0))
    {
      OZChannel::getValueAsDouble((this + 24272), v10, 0.0);
      v17 = v16;
      OZChannel::getValueAsDouble((this + 24424), v10, 0.0);
      v19 = vabdd_f64(v17, v18);
    }

    else
    {
      v19 = vabdd_f64(v13, v15);
    }

    if (*(theApp + 82) == 1)
    {
      TXTextLayout::_getImageBoundsFromParagraphs(this, a2, &v72);
      v20 = *(this + 2378);
      if (*(this + 2379) == v20)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v21 = 0;
      v22 = v73 + **(*v20 + 888) - (*(*(*v20 + 888) + 40) + *(*(*v20 + 888) + 56));
    }

    else
    {
      v23 = v4[370];
      v24 = *(this + 2378);
      v25 = *(this + 2379);
      if (v24 == v25)
      {
        v21 = 0;
        v26 = 0.0;
      }

      else
      {
        v21 = 0;
        v26 = 0.0;
        do
        {
          v27 = *v24;
          v72 = v74;
          OZChannel::getValueAsDouble((v27 + 680), &v72, 0.0);
          v29 = v28;
          v30 = (*(*this + 712))(this, &v74);
          if (OZChannel::getValueAsInt((this + 20464), v10, 0.0) == 4)
          {
            v31 = *(v27 + 856);
            v32 = 0.0;
            if (v31 < *(v27 + 864) + v31)
            {
              v33 = v31;
              v34 = 0.0;
              v35 = 0.0;
              do
              {
                TXHelperFunctions::GetTextObjectContainingCharIndex(this, v33, 1, 0, &v72);
                TypographicBounds = TXTextObject::getTypographicBounds(v72.value);
                v37 = *TypographicBounds;
                v38 = TypographicBounds[2];
                LayoutRealPos = TXTextObject::getLayoutRealPos(v72.value);
                v40 = v33 == 0;
                if (v35 > LayoutRealPos || v33 == 0)
                {
                  v35 = LayoutRealPos;
                }

                if (v34 < v37 + v38 + LayoutRealPos)
                {
                  v40 = 1;
                }

                if (v40)
                {
                  v34 = v37 + v38 + LayoutRealPos;
                }

                if (*&v72.timescale)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v72.timescale);
                }

                ++v33;
              }

              while (v33 < (*(v27 + 864) + *(v27 + 856)));
              v32 = v34 - v35;
            }

            v26 = v26 + v32;
          }

          else
          {
            v42 = *(v27 + 876);
            v21 += v42;
            if (v42)
            {
              v43 = (*(v27 + 888) + 8);
              do
              {
                v26 = v26 + v23 + (v7 + v29) * v30 + *(v43 - 1) - *v43;
                v43 += 8;
                --v42;
              }

              while (v42);
            }
          }

          ++v24;
        }

        while (v24 != v25);
        v25 = *(this + 2379);
        v4 = (this + 61440);
      }

      v44 = *(v25 - 1);
      v72 = *v10;
      OZChannel::getValueAsDouble((v44 + 680), &v72, 0.0);
      v22 = v26 - (v23 + v45 * (*(*this + 712))(this, &v74));
    }

    ValueAsInt = OZChannel::getValueAsInt((this + 20720), v10, 0.0);
    v47 = ValueAsInt == 0;
    v48 = ValueAsInt ? (this + 24576) : (this + 24424);
    v49 = v47 ? (this + 24272) : (this + 24728);
    OZChannel::getValueAsDouble(v48, v10, 0.0);
    v51 = v50;
    OZChannel::getValueAsDouble(v49, v10, 0.0);
    v53 = v51 - v52;
    v54 = v21 > NumberOfLinesToLimitTextTo ? v70 : 0;
    v55 = TXTextLayout::linesFitInParagraphWidth(this, v53);
    v56 = TXTextLayout::wordsFitInParagraphWidth(this, v53);
    isPunctuationSeparatedByLineBreaks = TXTextLayout::isPunctuationSeparatedByLineBreaks(this);
    v58 = v4[291];
    v59 = v22 > v19 || v55 == 0;
    if (!v59 && (v54 & 1) == 0 && v56 && isPunctuationSeparatedByLineBreaks == 0)
    {
      break;
    }

    if (((v71 | v9) & 1) != 0 && OZChannel::getInitialValue((this + 61464)) >= 0.02)
    {
      v9 = 1;
      v61 = -0.01;
LABEL_63:
      InitialValue = OZChannel::getInitialValue((this + 61464));
      OZChannel::setInitialValue((this + 61464), InitialValue + v61, 1);
      TXTextLayout::setAllParagraphsDirty(this);
      TXTextLayout::doLayoutForParagraphs(this, v53, a2);
      v71 = 0;
      v8 = v11;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        goto LABEL_64;
      }
    }
  }

  if (((v71 | v11) & 1) != 0 && OZChannel::getInitialValue((this + 61464)) < 1.0)
  {
    v11 = 1;
    v61 = 0.01;
    goto LABEL_63;
  }

LABEL_64:
  if (v58 < 1.0 && NumLinesInParagraphs(this) >= 2 && ((*(this + 2379) - *(this + 2378)) & 0x7FFFFFFF8) == 8)
  {
    v63 = OZChannel::getInitialValue((this + 61464));
    do
    {
      v64 = OZChannel::getInitialValue((this + 61464));
      v65 = v64 + -0.05;
      v66 = v4[291];
      if (v64 + -0.05 >= v66)
      {
        v67 = v64 + -0.05;
      }

      else
      {
        v67 = v63;
      }

      OZChannel::setInitialValue((this + 61464), v67, 1);
      TXTextLayout::setAllParagraphsDirty(this);
      TXTextLayout::doLayoutForParagraphs(this, v53, a2);
    }

    while (NumLinesInParagraphs(this) != 1 && v65 >= v66);
  }

  TXTextLayout::calcMarginScaleHash(this, a2);
  *(this + 3852) = *&v72.value;
}

void sub_25FAF692C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::calcMarginScaleHash(TXTextLayout *this, const CMTime *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v16[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v16);
  v8 = (v5 + 19344);
  v9 = *(v5 + 19352);
  if (v9 != (v5 + 19344))
  {
    do
    {
      v11 = v9[2];
      v10 = v9[3];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *v4;
      Size = TXTextStyle::getSize(v11, &v15, 0.0);
      PCHashWriteStream::writeValue(v16, Size);
      var8 = v11[3].var8;
      var9 = v11[3].var9;
      if (var9)
      {
        atomic_fetch_add_explicit(&var9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      PCHashWriteStream::writeValue(v16, var8 + 1);
      if (var9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](var9);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v9 = v9[1];
    }

    while (v9 != v8);
  }

  *v7 = *PCHashWriteStream::getHash(v16)->i8;
  PCHashWriteStream::~PCHashWriteStream(v16);
}

void sub_25FAF6A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCHashWriteStream::~PCHashWriteStream(va);
  _Unwind_Resume(a1);
}

double TXTextLayout::computeMarginWidth(TXTextLayout *this)
{
  v2 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
  v4 = 24576;
  if (ValueAsInt)
  {
    v5 = 24728;
  }

  else
  {
    v4 = 24424;
    v5 = 24272;
  }

  OZChannel::getValueAsDouble((this + v4), v2, 0.0);
  v7 = v6;
  OZChannel::getValueAsDouble((this + v5), v2, 0.0);
  return v7 - v8;
}

double TXTextLayout::computeMarginHeight(TXTextLayout *this)
{
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v2 = 24424;
    v3 = 24272;
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
    v3 = 24272;
    if (ValueAsInt)
    {
      v2 = 24424;
    }

    else
    {
      v3 = 24728;
      v2 = 24576;
    }
  }

  v5 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + v3), MEMORY[0x277CC08F0], 0.0);
  v7 = v6;
  OZChannel::getValueAsDouble((this + v2), v5, 0.0);
  return vabdd_f64(v7, v8);
}

uint64_t TXTextLayout::isBiggerThanMargins(TXTextLayout *this, double a2, double a3, const CMTime *a4)
{
  TXTextLayout::computeTotalHeight(this, a4);
  if (v7 > a3 || !TXTextLayout::linesFitInParagraphWidth(this, a2) || (TXTextLayout::isTooManyLines(this) & 1) != 0 || !TXTextLayout::wordsFitInParagraphWidth(this, a2))
  {
    return 1;
  }

  return TXTextLayout::isPunctuationSeparatedByLineBreaks(this);
}

uint64_t TXTextLayout::shrinkDownToOneLine(TXTextLayout *this, double a2, CMTime *a3)
{
  result = NumLinesInParagraphs(this);
  if (result >= 2 && ((*(this + 2379) - *(this + 2378)) & 0x7FFFFFFF8) == 8)
  {
    InitialValue = OZChannel::getInitialValue((this + 61464));
    do
    {
      v8 = OZChannel::getInitialValue((this + 61464));
      v9 = v8 + -0.05;
      v10 = *(this + 7971);
      if (v8 + -0.05 >= v10)
      {
        v11 = v8 + -0.05;
      }

      else
      {
        v11 = InitialValue;
      }

      OZChannel::setInitialValue((this + 61464), v11, 1);
      TXTextLayout::setAllParagraphsDirty(this);
      TXTextLayout::doLayoutForParagraphs(this, a2, a3);
      result = NumLinesInParagraphs(this);
    }

    while (result != 1 && v9 >= v10);
  }

  return result;
}

void TXTextLayout::computeTotalHeight(TXTextLayout *this, const CMTime *a2)
{
  v4 = 0.0;
  OZChannel::getValueAsDouble((this + 22136), a2, 0.0);
  if (*(theApp + 82) == 1)
  {
    TXTextLayout::_getImageBoundsFromParagraphs(this, a2, &v33);
    if (*(this + 2379) == *(this + 2378))
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else
  {
    v6 = *(this + 8050);
    v7 = *(this + 2378);
    v8 = *(this + 2379);
    if (v7 != v8)
    {
      v9 = v5;
      v10 = MEMORY[0x277CC08F0];
      do
      {
        v11 = *v7;
        v33 = *a2;
        OZChannel::getValueAsDouble((v11 + 680), &v33, 0.0);
        v13 = v12;
        v14 = (*(*this + 712))(this, a2);
        if (OZChannel::getValueAsInt((this + 20464), v10, 0.0) == 4)
        {
          v15 = *(v11 + 856);
          v16 = 0.0;
          if (v15 < *(v11 + 864) + v15)
          {
            v17 = v15;
            v18 = 0.0;
            v19 = 0.0;
            do
            {
              TXHelperFunctions::GetTextObjectContainingCharIndex(this, v17, 1, 0, &v33);
              TypographicBounds = TXTextObject::getTypographicBounds(v33.var0);
              v21 = *TypographicBounds;
              v22 = TypographicBounds[2];
              LayoutRealPos = TXTextObject::getLayoutRealPos(v33.var0);
              v24 = v17 == 0;
              if (v19 > LayoutRealPos || v17 == 0)
              {
                v19 = LayoutRealPos;
              }

              if (v18 < v21 + v22 + LayoutRealPos)
              {
                v24 = 1;
              }

              if (v24)
              {
                v18 = v21 + v22 + LayoutRealPos;
              }

              if (*&v33.var1)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v33.var1);
              }

              ++v17;
            }

            while (v17 < (*(v11 + 864) + *(v11 + 856)));
            v16 = v18 - v19;
          }

          v4 = v4 + v16;
        }

        else
        {
          v26 = *(v11 + 876);
          if (v26)
          {
            v27 = 0;
            v28 = v6 + (v9 + v13) * v14;
            v29 = v26 << 6;
            do
            {
              v30 = *(*(v11 + 888) + v27) - *(*(v11 + 888) + v27 + 8);
              if (v30 == 0.0 && !*(v11 + 864))
              {
                v31 = *(v11 + 856);
                if (v31)
                {
                  TXHelperFunctions::GetTextObjectContainingCharIndex(this, (v31 - 1), 1, 0, &v33);
                  if (v33.var0)
                  {
                    v30 = *(TXTextObject::getTypographicBounds(v33.var0) + 24);
                  }

                  if (*&v33.var1)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&v33.var1);
                  }
                }
              }

              v4 = v4 + v28 + v30;
              v27 += 64;
            }

            while (v29 != v27);
          }
        }

        ++v7;
      }

      while (v7 != v8);
      v8 = *(this + 2379);
    }

    v32 = *(v8 - 1);
    v33 = **&MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((v32 + 680), &v33, 0.0);
    (*(*this + 712))(this, a2);
  }
}

void sub_25FAF70EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::computeNumberOfLines(TXTextLayout *this)
{
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    return 1;
  }

  v3 = *(this + 2378);
  v4 = *(this + 2379);
  if (v3 == v4)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v5 = *v3++;
    result = (*(v5 + 876) + result);
  }

  while (v3 != v4);
  return result;
}

uint64_t TXTextLayout::isTooManyLines(TXTextLayout *this)
{
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  result = OZHostApplicationDelegateHandler::wantsToLimitLinesOfText(HostApplicationDelegate);
  if (result)
  {
    NumberOfLinesToLimitTextTo = OZHostApplicationDelegateHandler::getNumberOfLinesToLimitTextTo(HostApplicationDelegate);
    return TXTextLayout::computeNumberOfLines(this) > NumberOfLinesToLimitTextTo;
  }

  return result;
}

void TXTextLayout::updateShrinkToMarginsChannel(const PCString *this)
{
  v5 = *MEMORY[0x277D85DE8];
  *v3 = xmmword_260347B84;
  v4 = 3;
  OZChannelEnum::setTags(&this[7651], v3, 5);
  PCURL::PCURL(&v2, @"Text Layout Scale To Margins Proportional Enum");
  OZChannelEnum::setStrings(this + 7651, &v2, 1);
  PCString::~PCString(&v2);
}

double TXTextLayout::getSeqPosScaleForChar(TXTextLayout *this, unsigned int a2, CMTime *a3)
{
  TXTextLayout::getStyleAtCharOffset(this, a2, &v7);
  v6 = *a3;
  Size = TXTextStyle::getSize(v7, &v6, 0.0);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return Size / 100.0;
}

void sub_25FAF7354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::getWordIndex(TXTextLayout *this, int a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::ReadSentry::ReadSentry(v9, v4);
  v5 = *(this + 7623);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = (this + 60984);
  do
  {
    if (v5[7] >= a2)
    {
      v6 = v5;
    }

    v5 = *&v5[2 * (v5[7] < a2)];
  }

  while (v5);
  if (v6 != (this + 60984) && v6[7] <= a2)
  {
    v7 = v6[8];
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  OZLockingGroup::ReadSentry::~ReadSentry(v9);
  return v7;
}

uint64_t TXTextLayout::getLineIndex(TXTextLayout *this, int a2)
{
  v3 = *(this + 13053);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 6527);
  }

  StringPtr = TXChannelString::getStringPtr((this + 19048));
  v6 = PCString::size(StringPtr);
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v9 = v6;
  v10 = 0;
  result = 0;
  v11 = v9 - 1;
  if (v11 >= a2 - 1)
  {
    v11 = a2 - 1;
  }

  v12 = v11 + 1;
  do
  {
    ++v10;
    if (v3)
    {
      v13 = 1;
      v14 = v4;
      v15 = v3;
      v16 = 1;
      do
      {
        if (v4 && *v14 == v10)
        {
          break;
        }

        v16 = v13++ < v3;
        ++v14;
        --v15;
      }

      while (v15);
      result = result + v16;
    }
  }

  while (v10 != v12);
  return result;
}

uint64_t TXTextLayout::lineIndexToCharIndex(TXTextLayout *this, int a2)
{
  v4 = *(this + 13053);
  if (v4 >= 1 && (v5 = *(this + 6527)) != 0)
  {
    v8[1] = v2;
    v8[2] = v3;
    v8[0] = 0;
    TXTextLayout::computeLineOffsets(this, a2, v4 + 1, v5, v8, &v7);
    return LODWORD(v8[0]);
  }

  else if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t TXTextLayout::writeBody(TXTextLayout *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = (this + 52256);
  PCSerializerWriteStream::pushScope(a2, &TXLayoutScope);
  (*(*a2 + 16))(a2, 508);
  (*(*a2 + 152))(a2, 1, *v10);
  if (*v10 == 1)
  {
    (*(*a2 + 184))(a2, 2, v10[1]);
    (*(*a2 + 184))(a2, 3, v10[2]);
    (*(*a2 + 184))(a2, 4, v10[3]);
    (*(*a2 + 184))(a2, 5, v10[4]);
  }

  v11 = this + 61200;
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 509);
  (*(*a2 + 152))(a2, 1, *(v10 + 1));
  if (*(v10 + 1) == 1)
  {
    (*(*a2 + 184))(a2, 2, v10[5]);
    (*(*a2 + 184))(a2, 3, v10[6]);
    (*(*a2 + 184))(a2, 4, v10[7]);
    (*(*a2 + 184))(a2, 5, v10[8]);
  }

  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 510);
  (*(*a2 + 152))(a2, 1, *(v10 + 2));
  if (*(v10 + 2) == 1)
  {
    (*(*a2 + 184))(a2, 2, v10[9]);
    (*(*a2 + 184))(a2, 3, v10[10]);
    (*(*a2 + 184))(a2, 4, v10[11]);
    (*(*a2 + 184))(a2, 5, v10[12]);
  }

  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 511);
  (*(*a2 + 152))(a2, 6, *v11);
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 512);
  (*(*a2 + 152))(a2, 7, *(this + 63760));
  (*(*a2 + 24))(a2);
  v12 = *(this + 2378);
  v13 = *(this + 2379);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 16))(v14, a2, 0);
    (*(*v14 + 24))(v14, a2, 0, 1, a5);
    (*(*a2 + 24))(a2);
  }

  v15 = *(this + 2419);
  if (v15 != (this + 19344))
  {
    do
    {
      v16 = v15[2];
      v17 = v16[6];
      v16 += 6;
      (*(v17 + 16))(v16, a2, 0);
      (*(*v16 + 24))(v16, a2, 0, 1, a5);
      (*(*a2 + 24))(a2);
      v15 = v15[1];
    }

    while (v15 != (this + 19344));
    if (!this)
    {
      goto LABEL_32;
    }
  }

  {
LABEL_32:
    for (i = *(this + 2422); i != (this + 19368); i = i[1])
    {
      v19 = i[2];
      if (v19[7] || *v11 == 1)
      {
        (*(*v19 + 16))(i[2], a2, 0);
        (*(*v19 + 24))(v19, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }
    }

    v20 = *(this + 2403);
    if (v20 != (this + 19232))
    {
      do
      {
        (*(*a2 + 16))(a2, 513);
        (*(*a2 + 168))(a2, 9, *(v20 + 4));
        (*(*a2 + 184))(a2, 10, *(v20 + 5));
        (*(*a2 + 24))(a2);
        v21 = *(v20 + 1);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = *(v20 + 2);
            v23 = *v22 == v20;
            v20 = v22;
          }

          while (!v23);
        }

        v20 = v22;
      }

      while (v22 != (this + 19232));
    }
  }

  PCSerializerWriteStream::popScope(a2);

  return OZElement::writeBody((this + 200), a2, a3, a4, a5);
}

uint64_t non-virtual thunk toTXTextLayout::writeBody(TXTextLayout *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  return TXTextLayout::writeBody((this - 200), a2, a3, a4, a5);
}

{
  return TXTextLayout::writeBody((this - 248), a2, a3, a4, a5);
}

void TXTextLayout::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  OZSceneNode::markFactoriesForSerialization(this + 25, a2);
  v4 = this + 2418;
  v5 = this[2419];
  if (v5 != this + 2418)
  {
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 192))(v6, a2, 0);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 = v5[1];
    }

    while (v5 != v4);
  }
}

void sub_25FAF7F24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toTXTextLayout::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  TXTextLayout::markFactoriesForSerialization(this - 25, a2);
}

{
  TXTextLayout::markFactoriesForSerialization(this - 31, a2);
}

uint64_t TXTextLayout::parseBegin(TXTextLayout *this, PCSerializerReadStream *a2)
{
  if ((*(*this + 296))(this) && (*(*(this + 25) + 272))(this + 200))
  {
    v4 = (*(*(this + 25) + 272))(this + 200);
    OZScene::decNum3DTextObjects(v4);
  }

  *(this + 52363) = 1;
  TXTextLayout::clearParagraphs(this);
  OZElement::parseBegin((this + 200), a2);
  PCSerializerReadStream::pushScope(a2, &TXLayoutScope);
  LODWORD(v5) = *(a2 + 26);
  OZChannel::setValue((this + 60520), MEMORY[0x277CC08F0], v5, 0);
  return 1;
}

uint64_t non-virtual thunk toTXTextLayout::parseBegin(TXTextLayout *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseBegin((this - 200), a2);
  return 1;
}

{
  TXTextLayout::parseBegin((this - 248), a2);
  return 1;
}

uint64_t TXTextLayout::parseEnd(TXTextLayout *this, PCSerializerReadStream *a2)
{
  (*(*this + 1096))(this);
  if ((*(*this + 296))(this) && (*(*(this + 25) + 272))(this + 200))
  {
    v4 = (*(*(this + 25) + 272))(this + 200);
    OZScene::incNum3DTextObjects(v4);
  }

  v5 = this + 200;
  OZElement::parseEnd((this + 200), a2);
  if (!*(this + 2423))
  {
    v6 = *(this + 2419);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      operator new();
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v9 = (this + 60512);
  v10 = *(a2 + 26);
  if (v10 <= 2)
  {
    TXTextLayout::shiftKerningsToLeft(this);
    v10 = *(a2 + 26);
  }

  if (v10 <= 3 && OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 1 && !*v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *v9 = v11;
  v12 = *(a2 + 26);
  if (v12 <= 5)
  {
    if (*(a2 + 27) <= 6u)
    {
      *(this + 63801) = 1;
    }

    if (v12 <= 2 && (((*(*v5 + 1600))(this + 200) & 1) != 0 || ((*(*v5 + 1608))(this + 200) & 1) != 0 || ((*(*v5 + 1624))(this + 200) & 1) != 0 || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 2))
    {
      OZChannel::setValue((this + 19904), MEMORY[0x277CC08F0], 1.0, 0);
    }
  }

  if ((*(*v5 + 1864))(this + 200) && ((*(*v5 + 1888))(this + 200) & 1) == 0)
  {
    OZChannel::setValue((this + 19904), MEMORY[0x277CC08F0], 1.0, 0);
  }

  OZChannel::setDiscrete((this + 52640), 0, 0);
  OZChannel::setDiscrete((this + 52792), 0, 0);
  OZChannel::setDiscrete((this + 53240), 0, 0);
  OZChannel::setDiscrete((this + 53528), 0, 0);
  OZChannel::setDiscrete((this + 53680), 0, 0);
  OZChannel::setDiscrete((this + 54128), 0, 0);
  v13 = *(a2 + 26);
  if (v13 < 3 || v13 == 3 && *(a2 + 27) < 2u || (TXTextLayout::isPathNormalInitialized(this) & 1) == 0)
  {
    initializeNormalsForPath((this + 52504));
    initializeNormalsForPath((this + 53392));
  }

  v14 = *(a2 + 26);
  if (v14 < 5 || v14 == 5 && *(a2 + 27) <= 1u)
  {
    v15 = *(this + 2378);
    v16 = *(this + 2379);
    while (v15 != v16)
    {
      v17 = *v15++;
      LineSpacingChannel = TXParagraphStyle::getLineSpacingChannel(v17);
      (*(*LineSpacingChannel + 232))(LineSpacingChannel, this + 22136, 1);
      v19 = TXParagraphStyle::getLineSpacingChannel(v17);
      OZChannelBase::setID(v19, 0x194u);
      v20 = TXParagraphStyle::getLineSpacingChannel(v17);
      OZChannelBase::resetFlag(v20, 8, 0);
    }

    (*(*(this + 2767) + 280))(this + 22136, 0);
    OZChannelBase::setFlag((this + 22136), 8, 0);
  }

  return 1;
}

void sub_25FAF860C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::isPathNormalInitialized(TXTextLayout *this)
{
  v2 = (this + 52640);
  if (!(*(*(this + 6580) + 832))(this + 52640))
  {
    return 0;
  }

  OZChannel::getKeyframes(v2, 0, &v14);
  OZChannel::getKeyframes((this + 52792), 0, v13);
  OZChannel::getKeyframes((this + 53240), 0, __p);
  v3 = v14;
  if (v15 == v14)
  {
    v10 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    do
    {
      KeyframeNormal = OZChannel::getKeyframeNormal(v2, v3[v4]);
      v7 = OZChannel::getKeyframeNormal((this + 52792), *(v13[0] + v4));
      v8 = OZChannel::getKeyframeNormal((this + 53240), *(__p[0] + v4));
      v9 = fabs(KeyframeNormal) >= 0.0000001;
      if (fabs(v7) >= 0.0000001)
      {
        v9 = 1;
      }

      v10 = fabs(v8) >= 0.0000001 || v9;
      if (v10)
      {
        break;
      }

      v4 = v5;
      v3 = v14;
      ++v5;
    }

    while (v4 < (v15 - v14) >> 3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v10;
}

void sub_25FAF87DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toTXTextLayout::parseEnd(TXTextLayout *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseEnd((this - 200), a2);
  return 1;
}

{
  TXTextLayout::parseEnd((this - 248), a2);
  return 1;
}

uint64_t TXTextLayout::parseElement(TXTextLayout *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v34);
  v33 = 0;
  OZElement::parseElement((this + 200), a2, a3);
  v6 = (this + 58848);
  v7 = *(a3 + 2);
  if (v7 <= 509)
  {
    if (v7 <= 500)
    {
      if (v7 != 77)
      {
        if (v7 != 110)
        {
          if (v7 == 500)
          {
            operator new();
          }

          goto LABEL_71;
        }

        if (!PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v34))
        {
          goto LABEL_71;
        }

        PCString::PCString(&v31, "Kerning");
        v18 = PCString::compare(&v34, &v31);
        PCString::~PCString(&v31);
        if (v18)
        {
          goto LABEL_71;
        }

        *v29 = 0;
        if (!PCSerializerReadStream::getAttributeAsDouble(a2, a3, 114, v29))
        {
          goto LABEL_71;
        }

        v16 = *v29;
        v28 = *v6;
        v31.var0 = &v28;
        v17 = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(this + 19224, &v28);
LABEL_35:
        v17[5] = v16;
        goto LABEL_71;
      }

      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, &v33);
      PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v34);
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v33 + 4);
      v11 = OZFactories::lookupFactory(*(theApp + 32), v33);
      if (v11)
      {
        if (v12)
        {
          v31.var0 = 0;
          v32 = 0;
          if (*(this + 52363) != 1)
          {
            v22 = (*(*v12 + 168))(v12, &v34, HIDWORD(v33));
            std::shared_ptr<TXTextStyle>::reset[abi:ne200100]<TXTextStyle,0>(&v31, v22);
          }

          v13 = *(this + 2419);
          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            v31.var0 = v15;
            v32 = v14;
            *v29 = v15;
            v30 = v14;
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v31.var0 = v15;
            v32 = 0;
            *v29 = v15;
            v30 = 0;
          }

          (*(*this + 272))(this, v29);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          TXTextLayout::clearStyleRuns(this);
          if (*(this + 146))
          {
            OZStyle::unregisterAllMaterials(v31.var0);
            if (v31.var0)
            {
              v23 = (v31.var0 + 16);
            }

            else
            {
              v23 = 0;
            }

            OZScene::unregisterObject(*(this + 146), v23);
            OZScene::removeAllDependencies(*(this + 146), *(v31.var0 + 24));
          }

          OZChannelBase::setID((v31.var0 + 72), HIDWORD(v33));
          (*(*(v31.var0 + 2) + 120))(v31.var0 + 16, &v34, 0);
          OZChannelBase::updateIDGenerator(HIDWORD(v33));
          OZStyle::assignUniqueIDsToAllMaterials(v31.var0);
          if (v31.var0)
          {
            v24 = *(this + 52363);
            if (v24 == 1)
            {
              RemoveAllMaterialsFromSequenceChannels((this + 25032));
              TXTextLayout::clearStyleRuns(this);
              *(this + 52363) = 0;
            }

            TXTextLayout::addStyle(this, &v31, 0);
            if (v31.var0)
            {
              v25 = (v31.var0 + 48);
            }

            else
            {
              v25 = 0;
            }

            PCSerializerReadStream::pushHandler(a2, v25);
            if (v24)
            {
              RemoveAllMaterialsFromSequenceChannels((this + 25032));
            }
          }

          *(this + 52363) = 0;
          v21 = v32;
          if (v32)
          {
LABEL_70:
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            goto LABEL_71;
          }
        }
      }

      goto LABEL_71;
    }

    switch(v7)
    {
      case 501:
        PCSharedCount::PCSharedCount(&v31);
        (*(*a3 + 16))(a3, &v31);
        TXTextLayout::setString(this, &v31, 1);
        PCString::~PCString(&v31);
        goto LABEL_71;
      case 508:
        PCSerializerReadStream::getAttributeAsBool(a2, a3, 1, this + 52256);
        if (*(this + 52256) != 1)
        {
          goto LABEL_71;
        }

        PCSerializerReadStream::getAttributeAsDouble(a2, a3, 2, this + 52264);
        PCSerializerReadStream::getAttributeAsDouble(a2, a3, 3, this + 52272);
        PCSerializerReadStream::getAttributeAsDouble(a2, a3, 4, this + 52280);
        v10 = 52288;
        break;
      case 509:
        PCSerializerReadStream::getAttributeAsBool(a2, a3, 1, this + 52257);
        if (*(this + 52257) != 1)
        {
          goto LABEL_71;
        }

        PCSerializerReadStream::getAttributeAsDouble(a2, a3, 2, this + 52296);
        PCSerializerReadStream::getAttributeAsDouble(a2, a3, 3, this + 52304);
        PCSerializerReadStream::getAttributeAsDouble(a2, a3, 4, this + 52312);
        v10 = 52320;
        break;
      default:
        goto LABEL_71;
    }

LABEL_40:
    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 5, this + v10);
    goto LABEL_71;
  }

  if (v7 <= 512)
  {
    if (v7 != 510)
    {
      if (v7 == 511)
      {
        v8 = 6;
        v9 = 61200;
      }

      else
      {
        v8 = 7;
        v9 = 63760;
      }

      PCSerializerReadStream::getAttributeAsBool(a2, a3, v8, this + v9);
      goto LABEL_71;
    }

    PCSerializerReadStream::getAttributeAsBool(a2, a3, 1, this + 52258);
    if (*(this + 52258) != 1)
    {
      goto LABEL_71;
    }

    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 2, this + 52328);
    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 3, this + 52336);
    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 4, this + 52344);
    v10 = 52352;
    goto LABEL_40;
  }

  switch(v7)
  {
    case 513:
      v28 = 0;
      *v29 = 0;
      if (!PCSerializerReadStream::getAttributeAsInt64(a2, a3, 9, v29) || !PCSerializerReadStream::getAttributeAsDouble(a2, a3, 10, &v28))
      {
        break;
      }

      v16 = v28;
      v27 = *v29;
      v31.var0 = &v27;
      v17 = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(this + 19224, &v27);
      goto LABEL_35;
    case 520:
      v29[0] = 0;
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 7, v29);
      v19 = *(this + 2419);
      if (v19 == (this + 19344))
      {
LABEL_44:
        v20 = 0;
        v31.var0 = 0;
        v32 = 0;
      }

      else
      {
        while (*(*(v19 + 16) + 96) != v29[0])
        {
          v19 = *(v19 + 8);
          if (v19 == (this + 19344))
          {
            goto LABEL_44;
          }
        }

        v20 = *(v19 + 24);
        v31.var0 = *(v19 + 16);
        v32 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      LODWORD(v28) = 0;
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 9, &v28);
      LODWORD(v27) = 0;
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 10, &v27);
      if (v27 || *(this + 61200) == 1)
      {
        operator new();
      }

      if (v20)
      {
        v21 = v20;
        goto LABEL_70;
      }

      break;
    case 600:
      ++*v6;
      break;
  }

LABEL_71:
  PCString::~PCString(&v34);
  return 1;
}

uint64_t non-virtual thunk toTXTextLayout::parseElement(TXTextLayout *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  TXTextLayout::parseElement((this - 200), a2, a3);
  return 1;
}

{
  TXTextLayout::parseElement((this - 248), a2, a3);
  return 1;
}

uint64_t TXTextLayout::centerAnchorPoint(TXTextLayout *this, double a2, int a3)
{
  v45 = 0uLL;
  v46 = 0.0;
  v6 = (this + 200);
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v7 = (*(*v6 + 272))(v6);
  }

  else
  {
    v7 = *(OZApplication::getCurrentDoc(theApp) + 3);
  }

  memset(&v44, 0, sizeof(v44));
  OZScene::getCurrentTime(v7, &v44);
  OZTransformNode::getPivot(v6, &v45, &v44);
  v8 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
  if (v9 == a2)
  {
    v10 = (this + 24728);
  }

  else
  {
    v10 = (this + 24576);
  }

  OZChannel::getValueAsDouble(v10, v8, 0.0);
  v12 = v11;
  OZChannel::getValueAsDouble((this + 24576), v8, 0.0);
  if (v13 == a2)
  {
    v14 = (this + 24576);
  }

  else
  {
    v14 = (this + 24728);
  }

  OZChannel::getValueAsDouble(v14, v8, 0.0);
  v16 = v15;
  OZChannel::getValueAsDouble((this + 24424), v8, 0.0);
  v18 = v17;
  OZChannel::getValueAsDouble((this + 24272), v8, 0.0);
  v20 = v18 - v19;
  OZChannel::getValueAsDouble((this + 24576), v8, 0.0);
  if (v21 == 0.0)
  {
    v22 = a3;
  }

  else
  {
    v22 = 1;
  }

  v23 = v12 - v16;
  if (!v22)
  {
    v23 = v16 - v12;
  }

  v24 = v23 * 0.5;
  OZChannel::getValueAsDouble((this + 24424), v8, 0.0);
  if (v25 == 0.0)
  {
    v26 = -(v20 * 0.5);
  }

  else
  {
    v26 = v20 * 0.5;
  }

  OZTransformNode::setPivot(v6, v26, v24, v46, &v44);
  v43 = 0x3FF0000000000000;
  v40 = 0x3FF0000000000000;
  v37 = 0x3FF0000000000000;
  v34 = 0x3FF0000000000000;
  v35 = 0u;
  v36 = 0u;
  v38 = 0u;
  v39 = 0u;
  v41 = 0u;
  v42 = 0u;
  OZRenderState::OZRenderState(&v33);
  v33.var4 = 1;
  (*(*(this + 25) + 1256))(v6, &v34, &v33);
  v31 = v45;
  v32 = v46;
  v28 = v26;
  v29 = v24;
  v30 = v46;
  PCMatrix44Tmpl<double>::transform<double>(&v34, &v28, &v28);
  PCMatrix44Tmpl<double>::transform<double>(&v34, &v31, &v31);
  return OZTransformNode::offsetTranslation(v6, v28 - *&v31, v29 - *(&v31 + 1), v30 - v32, &v44, 1);
}

void TXTextLayout::didFinishInitializing(TXTextLayout *this, int a2)
{
  v3 = this + 52360;
  v4 = this + 19344;
  v5 = *(this + 2419);
  if (v5 != (this + 19344))
  {
    do
    {
      v7 = (*(**(v5 + 16) + 112))(*(v5 + 16));
      (*(*(this + 25) + 1128))(&v22, this + 200);
      OZChannelObjectRootBase::setTimeExtent(v7, &v22, a2);
      OZChannelObjectRootBase::getTimeOffset(this + 16, &v22);
      v8 = OZChannelObjectRootBase::setTimeOffset(v7, &v22, a2);
      v9 = *(v5 + 16);
      v10 = *(v9 + 480);
      v11 = *(v9 + 488);
      while (v10 != v11)
      {
        v12 = (*(**v10 + 208))(v8);
        (*(*(this + 25) + 1128))(&v22, this + 200);
        OZChannelObjectRootBase::setTimeExtent(v12, &v22, 0);
        v13 = *v10++;
        v14 = (*(*v13 + 208))(v13);
        OZChannelObjectRootBase::getTimeOffset(this + 16, &v22);
        v8 = OZChannelObjectRootBase::setTimeOffset(v14, &v22, 0);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  OZChannelPosition3D::willBeModified(this + 13348, 1);
  OZChannelPosition3D::willBeModified(this + 13126, 1);
  OZChannel::reparametrizeChannel((this + 53528));
  OZChannel::reparametrizeChannel((this + 53680));
  OZChannel::reparametrizeChannel((v3 + 1768));
  OZChannel::reparametrizeChannel((this + 52640));
  OZChannel::reparametrizeChannel((this + 52792));
  OZChannel::reparametrizeChannel((v3 + 880));
  if (!(*(*(v3 + 110) + 832))(v3 + 880))
  {
    OZChannel::getKeyframes((this + 52640), 0, &v22);
    value = v22.value;
    if (*&v22.timescale != v22.value)
    {
      v16 = 0;
      v17 = 1;
      do
      {
        OZChannel::getKeyframe((this + 52640), value[v16], &v21, 0);
        OZChannel::setKeyframe((v3 + 880), &v21);
        v16 = v17;
        value = v22.value;
        ++v17;
      }

      while (v16 < (*&v22.timescale - v22.value) >> 3);
    }

    if (value)
    {
      *&v22.timescale = value;
      operator delete(value);
    }
  }

  if (!(*(*(v3 + 221) + 832))(v3 + 1768))
  {
    OZChannel::getKeyframes((this + 53528), 0, &v22);
    v18 = v22.value;
    if (*&v22.timescale != v22.value)
    {
      v19 = 0;
      v20 = 1;
      do
      {
        OZChannel::getKeyframe((this + 53528), v18[v19], &v21, 0);
        OZChannel::setKeyframe((v3 + 1768), &v21);
        v19 = v20;
        v18 = v22.value;
        ++v20;
      }

      while (v19 < (*&v22.timescale - v22.value) >> 3);
    }

    if (v18)
    {
      *&v22.timescale = v18;
      operator delete(v18);
    }
  }

  *v3 = 1;
  TXTextLayout::interlockMargins(this, 1);
  TXTextLayout::updateShrinkToMarginsChannel(this);
}

void sub_25FAF987C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TXTextLayout::validateStyleRunAndParagraphRanges(void *this)
{
  v1 = this[2378];
  v2 = this[2379];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v1++;
      v3 += *(v4 + 864);
    }

    while (v1 != v2);
  }

  v5 = this[2422];
  if (v5 != this + 2421)
  {
    v6 = 0;
    do
    {
      v8 = v5 + 1;
      v5 = v5[1];
      v7 = v8[1];
      v9 = *(v7 + 28);
      v6 += v9;
    }

    while (v5 != this + 2421);
    if (v3 > v6)
    {
      *(v7 + 28) = v3 - v6 + v9;
    }
  }

  return this;
}

uint64_t TXTextLayout::didFinishLoadingIntoScene(TXTextLayout *this)
{
  OZElement::didFinishLoadingIntoScene((this + 200));
  (*(*this + 1096))(this);
  *(this + 63761) = 0;
  if (*(this + 2379) == *(this + 2378))
  {
    TXTextLayout::createParagraphStylesFromNewLines(this);
  }

  TXTextLayout::rebuildParagraphStyles(this);
  v2 = MEMORY[0x277CC08F0];
  TXTextLayout::updateDisplayString(this, MEMORY[0x277CC08F0]);
  TXTextLayout::validateStyleRunAndParagraphRanges(this);
  TXTextLayout::updateLineBreaksByHardLine(this);
  TXTextLayout::setAllParagraphsDirty(this);
  TXTextLayout::didFinishInitializing(this, 0);
  TXTextLayout::selectAll(this);
  (*(*this + 336))(this, 1);
  ValueAsInt = OZChannel::getValueAsInt((this + 20464), v2, 0.0);
  TXTextLayout::cacheMargins(this, ValueAsInt);
  *(this + 18988) = 1;
  OZRenderState::OZRenderState(&v5);
  return TXTextLayout::doLayout(this, &v5, 0);
}

uint64_t non-virtual thunk toTXTextLayout::didFinishLoadingIntoScene(TXTextLayout *this)
{
  return TXTextLayout::didFinishLoadingIntoScene((this - 200));
}

{
  return TXTextLayout::didFinishLoadingIntoScene((this - 216));
}

void TXTextLayout::didChangeString(PCString *this)
{
  TXTextLayout::computeComposedCharacterIndices(this);
  (this->var0[34].data)(this);

  TXTextLayout::updateStringTokenizer(this);
}

void initializeNormalsForPath(OZChannelPosition3D *a1)
{
  v2 = (a1 + 136);
  if ((*(*(a1 + 17) + 832))(a1 + 136) >= 2)
  {
    OZChannel::getKeyframes(v2, 0, &v8);
    OZChannel::getKeyframes((a1 + 288), 0, v7);
    OZChannel::getKeyframes((a1 + 736), 0, __p);
    v3 = v8;
    if (v9 != v8)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        OZChannel::setKeyframeNormal(v2, v3[v4], 0.0);
        OZChannel::setKeyframeNormal((a1 + 288), *(v7[0] + v4), 1.0);
        OZChannel::setKeyframeNormal((a1 + 736), *(__p[0] + v4), 0.0);
        v4 = v5;
        v3 = v8;
        ++v5;
      }

      while (v4 < (v9 - v8) >> 3);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }
  }
}

void sub_25FAF9C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZCurrentThread::getInstance(OZCurrentThread *this)
{
  if (!OZCurrentThread::_instance)
  {
    operator new();
  }

  return OZCurrentThread::_instance;
}

BOOL PCMatrix44Tmpl<double>::getTransformation(__int128 *a1, uint64_t a2)
{
  v39 = 0x3FF0000000000000;
  v36 = 1.0;
  v33 = 1.0;
  v30 = 1.0;
  __y = 0u;
  v32 = 0u;
  v34 = 0u;
  __x = 0u;
  v37 = 0u;
  v38 = 0u;
  PartialTransformation = PCMatrix44Tmpl<double>::getPartialTransformation(a1, a2, &v30);
  if (PartialTransformation)
  {
    v11 = *(a2 + 48);
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v19 = asin(-*&__y);
        *(a2 + 72) = v19;
        if (fabs(cos(v19)) < 0.0000001)
        {
          v20 = v36;
          v21 = -*&v34;
LABEL_21:
          *(a2 + 56) = atan2(v21, v20);
          *(a2 + 64) = 0;
          return PartialTransformation;
        }

        *(a2 + 56) = atan2(*(&__x + 1), v33);
        v26 = *(&__y + 1);
        v27 = v30;
LABEL_32:
        *(a2 + 64) = atan2(v26, v27);
        return PartialTransformation;
      }

      if (v11 != 4)
      {
        if (v11 != 5)
        {
          goto LABEL_18;
        }

        v15 = asin(*(&__y + 1));
        *(a2 + 64) = v15;
        if (fabs(cos(v15)) >= 0.0000001)
        {
          *(a2 + 56) = atan2(-*&v34, v36);
          v25 = v30;
          v28 = *&__y;
LABEL_30:
          v24 = -v28;
          goto LABEL_34;
        }

        v16 = *(&__x + 1);
        v17 = v33;
LABEL_15:
        *(a2 + 56) = atan2(v16, v17);
LABEL_25:
        *(a2 + 72) = 0;
        return PartialTransformation;
      }

      v23 = asin(-*&v34);
      *(a2 + 56) = v23;
      if (fabs(cos(v23)) < 0.0000001)
      {
        v14 = v30;
        v13 = -*&__x;
        goto LABEL_24;
      }

      *(a2 + 64) = atan2(*(&__y + 1), v36);
      v24 = *(&v32 + 1);
      v25 = v33;
    }

    else
    {
      if (v11)
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            v12 = asin(*(&__x + 1));
            *(a2 + 56) = v12;
            if (fabs(cos(v12)) < 0.0000001)
            {
              v13 = *(&__y + 1);
              v14 = v30;
LABEL_24:
              *(a2 + 64) = atan2(v13, v14);
              goto LABEL_25;
            }

            *(a2 + 64) = atan2(-*&__x, v36);
            v28 = *&__y;
            v25 = v33;
            goto LABEL_30;
          }

LABEL_18:
          PCPrint("File %s, line %d should not have been reached:\n\t", v3, v4, v5, v6, v7, v8, v9, "/AppleInternal/Library/BuildRoots/4~B_vzugBVzI53cLeUsWlBTaFKJKVmLd5Y5P_6Sn4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMatrix44.h");
          pcAbortImpl();
        }

        v22 = asin(*(&v32 + 1));
        *(a2 + 72) = v22;
        if (fabs(cos(v22)) < 0.0000001)
        {
          v21 = *(&__x + 1);
          v20 = v36;
          goto LABEL_21;
        }

        *(a2 + 56) = atan2(-*&v34, v33);
        v27 = v30;
        v26 = -*&__x;
        goto LABEL_32;
      }

      v18 = asin(-*&__x);
      *(a2 + 64) = v18;
      if (fabs(cos(v18)) < 0.0000001)
      {
        v17 = v33;
        v16 = -*&v34;
        goto LABEL_15;
      }

      *(a2 + 56) = atan2(*(&__x + 1), v36);
      v24 = *(&v32 + 1);
      v25 = v30;
    }

LABEL_34:
    *(a2 + 72) = atan2(v24, v25);
  }

  return PartialTransformation;
}

void TXTextLayout::allowDrag(TXTextLayout *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  *a5 = 0;
  if (!lpsrc)
  {
LABEL_16:

    OZElement::allowDrag((this + 200), lpsrc, a3, a4, a5, a6, a7);
    return;
  }

  v19 = a6;
  v20 = a4;
  if (a7 != 1 && v15)
  {
    return;
  }

  if (a7 != 1 || !v12 || (*(*(this + 25) + 640))(this + 200) != a3)
  {
    if (a7 == 1 && v13)
    {
      *a5 = v20 & 1;
      return;
    }

    a4 = v20;
    a6 = v19;
    if (v14)
    {
      ObjectManipulator = OZChannelBase::getObjectManipulator(a3);
      if (ObjectManipulator)
      {
        v17 = ObjectManipulator;
        {

          v18();
        }
      }

      return;
    }

    goto LABEL_16;
  }

  TXTextLayout::getCurrentStyleForInsertion(this, &v21);
  if (v21 && v12 != a3)
  {
    *a5 = v20 & 1;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void non-virtual thunk toTXTextLayout::allowDrag(TXTextLayout *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  TXTextLayout::allowDrag((this - 200), a2, a3, a4, a5, a6, a7);
}

{
  TXTextLayout::allowDrag((this - 216), a2, a3, a4, a5, a6, a7);
}

uint64_t non-virtual thunk toTXTextLayout::prepareForDragOperation()
{
  return 1;
}

{
  return 1;
}

uint64_t TXTextLayout::performDragOperation(TXTextLayout *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, CMTime *a8)
{
  v131 = *MEMORY[0x277D85DE8];
  if (lpsrc)
  {
    v14 = this;
  }

  else
  {
    v14 = this;
    v13 = 0;
    v12 = 0;
    v15 = 1;
  }

  v16 = (v14 + 200);
  if ((*(*(v14 + 25) + 272))(v14 + 200))
  {
    v120 = (*(*v16 + 272))(v14 + 200);
  }

  else
  {
    v120 = *(OZApplication::getCurrentDoc(theApp) + 3);
  }

  v17 = *(lpsrc + 1);
  *&v127[0].var0 = xmmword_260347AB0;
  isKindOfClass = OZFactory::isKindOfClass(v17, v127);
  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = isKindOfClass;
  }

  if (v19 == 1)
  {
    OZDocument::postNotification(v120[198], 0x80000);
  }

  if (a6 == 1 && v12)
  {
    if (a3)
    {
    }

    else
    {
      v20 = 0;
    }

    v49 = v120[198];
    PCURL::PCURL(v127, @"Undo Gradient Change");
    OZDocument::startCaptureModifiedChannels(v49, v127);
    PCString::~PCString(v127);
    if (v20)
    {
      v50 = v20[30];
      OZChannelFolder::operator=(v20);
      OZChannelFolder::operator=((v20 + 32));
      OZChannelFolder::operator=((v20 + 64));
      OZChannelBase::operator=((v20 + 96), (v12 + 48));
      OZChannelBase::operator=((v20 + 134), (v12 + 67));
      v51 = *(v12 + 198);
      *(v20 + 796) = *(v12 + 796);
      v20[198] = v51;
      OZChannelFolder::setFoldFlags(v20, v50);
    }

    else
    {
      v53 = *(v14 + 4814);
      v54 = *(v14 + 4815);
      v55 = v53;
      if (v53 != v54)
      {
        v56 = v54 - v53;
        v58 = v53 - v54;
        v57 = v53 > v54;
        if (v53 >= v54)
        {
          v53 = *(v14 + 4815);
        }

        if (v57)
        {
          v56 = v58;
        }

        v127[0].var0 = __PAIR64__(v56, v53);
        TXTextLayout::splitStyleRunsInRange(v14, v127);
        v55 = *(v14 + 4814);
        v53 = *(v14 + 4815);
      }

      v127[0].var0 = v127;
      v127[1].var0 = v127;
      v128 = 0;
      v59 = v53 - v55;
      v61 = v55 - v53;
      v60 = v55 > v53;
      if (v55 < v53)
      {
        v53 = v55;
      }

      if (v60)
      {
        v62 = v61;
      }

      else
      {
        v62 = v59;
      }

      v129.n128_u64[0] = __PAIR64__(v62, v53);
      TXTextLayout::getStylesInRange(v14, v127, &v129);
      var0 = v127[1].var0;
      if (v127[1].var0 != v127)
      {
        v64 = MEMORY[0x277CC08F0];
        do
        {
          OZChannel::setValue(&var0[2].var0[190].info, v64, 1.0, 0);
          v65 = var0[2].var0;
          if (&v65[229].length != v12)
          {
            data = v65[233].data;
            OZChannelFolder::operator=(&v65[229].length);
            OZChannelFolder::operator=(&v65[233].length);
            OZChannelFolder::operator=(&v65[237].length);
            OZChannelBase::operator=(&v65[241].length, (v12 + 48));
            OZChannelBase::operator=(&v65[246].data, (v12 + 67));
            v67 = *(v12 + 796);
            LODWORD(v65[254].data) = *(v12 + 198);
            BYTE4(v65[254].data) = v67;
            OZChannelFolder::setFoldFlags(&v65[229].length, data);
          }

          var0 = var0[1].var0;
        }

        while (var0 != v127);
      }

      std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(v127);
    }

    OZDocument::endCaptureModifiedChannels(v120[198], v52);
    return 1;
  }

  if (a6 == 1 && v13)
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(a3);
    {
      v68 = Li3DEngineScene::sceneManager(v14);
      OZLockingGroup::WriteSentry::WriteSentry(v127, v68);
      TXTextLayout::removeMaterialFromSequenceBehaviors(v14, 0);
      TXSequenceChannels::removeMaterialChannelsAtIndex((v14 + 25032), 0);
      v69 = v14;
      v70 = v14 + 19344;
      v71 = *(v69 + 2419);
      if (v71 != v70)
      {
        v72 = MEMORY[0x277CC08F0];
        do
        {
          v73 = *(*(v71 + 16) + 480);
          if (*(*(v71 + 16) + 488) == v73)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v74 = *v73;
          v75 = *(*v73 + 44);
          (*(**v73 + 80))(*v73, v13);
          v76 = (*(*v74 + 208))(v74);
          OZChannelBase::setID(v76, v75);
          OZChannel::setValue((v74 + 568), v72, 31.0, 0);
          OZStyle::didSetFacetAssignmentForMaterial(*(v71 + 16), v74);
          v71 = *(v71 + 8);
        }

        while (v71 != v70);
      }

      OZChannel::getValueAsInt((v13 + 720), MEMORY[0x277CC08F0], 0.0);
      TXSequenceChannels::addMaterialChannels((this + 25032), v13, 0);
      TXTextLayout::addMaterialToSequenceBehaviors(this, v13, 0);
      OZLockingGroup::WriteSentry::~WriteSentry(v127);
      return 1;
    }

    v114 = a8;
    v23 = (v14 + 19344);
    v24 = *(v14 + 2419);
    if (v24 == (v14 + 19344))
    {
      a8 = v114;
    }

    else
    {
      v25 = v22;
      do
      {
        v27 = v24[2];
        v26 = v24[3];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = *(v27 + 480);
        v29 = *(v27 + 488);
        if (v28 == v29)
        {
LABEL_28:
          v30 = 0xFFFFFFFFLL;
        }

        else
        {
          v30 = 0;
          while (*v28 != v25)
          {
            ++v28;
            v30 = (v30 + 1);
            if (v28 == v29)
            {
              goto LABEL_28;
            }
          }
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v24 = v24[1];
      }

      while (v24 != v23 && v30 == -1);
      a8 = v114;
      if (v30 != -1)
      {
        v32 = this;
        TXTextLayout::removeMaterialFromSequenceBehaviors(this, v30);
        TXSequenceChannels::removeMaterialChannelsAtIndex((this + 25032), v30);
        v33 = *(this + 2419);
        v34 = *(v33[2] + 480);
        if (v30 >= ((*(v33[2] + 488) - v34) >> 3))
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v35 = *(v34 + 8 * v30);
        Name = OZObjectManipulator::getName((v13 + 16));
        PCString::PCString(v127, Name);
        ValueAsInt = OZChannel::getValueAsInt((v35 + 720), MEMORY[0x277CC08F0], 0.0);
        OZMaterialBase::setSequenceID(v13, ValueAsInt);
        if (v33 != v23)
        {
          v38 = MEMORY[0x277CC08F0];
          do
          {
            v39 = v33[2];
            v40 = v33[3];
            if (v40)
            {
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v42 = v39 + 480;
            v41 = *(v39 + 480);
            if (v30 >= ((*(v42 + 8) - v41) >> 3))
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v43 = *(v41 + 8 * v30);
            v44 = OZChannel::getValueAsInt((v43 + 568), v38, 0.0);
            (*(*v43 + 336))(v43, v13);
            OZChannel::setValue((v43 + 568), v38, v44, 0);
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            v33 = v33[1];
            v32 = this;
          }

          while (v33 != v23);
        }

        OZChannel::getValueAsInt((v13 + 720), MEMORY[0x277CC08F0], 0.0);
        TXSequenceChannels::addMaterialChannels((v32 + 25032), v13, v30);
        TXTextLayout::addMaterialToSequenceBehaviors(v32, v13, v30);
        (*(*v32 + 1032))(v32, v127, v30, 0, 1);
        PCString::~PCString(v127);
        return 1;
      }
    }

    return OZElement::performDragOperation(v16, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  if (!v15)
  {
    v78 = OZChannelBase::getObjectManipulator(a3);
    v79 = v78;
    if (v78)
    {
      if (v80)
      {
        v121 = v80;
        if (a3)
        {
          v82 = v81;
          if (v82)
          {
            v84 = v83;
            if (v83)
            {
              v85 = OZChannelBase::getObjectManipulator(v82);
              v86 = v85 - 16;
              if (!v85)
              {
                v86 = 0;
              }

              v87 = *(v86 + 1280);
              if (v87)
              {
                v88 = v87 - 16;
              }

              else
              {
                v88 = 0;
              }

              if (*(v88 + 48944) == v14)
              {
                if ((*(*v16 + 272))(v14 + 200))
                {
                  v89 = (*(*v16 + 272))(v14 + 200);
                }

                else
                {
                  v89 = *(OZApplication::getCurrentDoc(theApp) + 3);
                }

                v105 = *(v89 + 1584);
                PCURL::PCURL(v127, @"Undo Material Change");
                OZDocument::startCaptureModifiedChannels(v105, v127);
                PCString::~PCString(v127);
                v106 = *(v121 + 160);
                v107 = v106 - 16;
                if (!v106)
                {
                  v107 = 0;
                }

                v108 = *(v107 + 480);
                v109 = *(v107 + 488);
                if (v108 == v109)
                {
LABEL_134:
                  v110 = -1;
                }

                else
                {
                  v110 = 0;
                  while (*v108 != v121)
                  {
                    ++v108;
                    ++v110;
                    if (v108 == v109)
                    {
                      goto LABEL_134;
                    }
                  }
                }

                v111 = OZMaterialLayersFolder::indexOfDescendant((v121 + 1312), v82);
                v112 = OZMaterialLayersFolder::indexOfDescendant((v121 + 1312), v84);
                TXTextLayout::moveMaterialLayer(v14, v111, v112, v110, a5);
                OZDocument::endCaptureModifiedChannels(*(v89 + 1584), v113);
              }

              return 1;
            }
          }
        }

        (*(v90 + 328))();
      }
    }

    return OZElement::performDragOperation(v16, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  if (!OZChannelBase::isObjectRef(v14))
  {
    return OZElement::performDragOperation(v16, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  if (!v45)
  {
    return OZElement::performDragOperation(v16, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  v46 = v45;
  v127[0].var0 = v127;
  v127[1].var0 = v127;
  v128 = 0;
  TXTextLayout::getGlyphSelectedStyles(v14, v127);
  PCURL::PCURL(&v126, @"Text Style Name");
  PCString::PCString(&v125, &v46->var4);
  PCString::PCString(&v129, ".");
  v47 = PCString::find(&v125, &v129);
  PCString::~PCString(&v129);
  PCSharedCount::PCSharedCount(&v124);
  if (v47 < 1)
  {
    v48 = 0;
  }

  else
  {
    PCString::substrTo(&v125, (v47 - 1), &v129);
    PCString::set(&v124, &v129);
    PCString::~PCString(&v129);
    v48 = PCString::find(&v124, &v126) >= 0;
  }

  PCSharedCount::PCSharedCount(&v123);
  if (v48)
  {
    PCString::substrFrom(&v125, v47 + 1, &v129);
    PCString::set(&v123, &v129);
    PCString::~PCString(&v129);
    PCString::PCString(&v129, ".");
    v91 = PCString::find(&v123, &v129);
    PCString::~PCString(&v129);
    if (v91 < 0)
    {
      goto LABEL_105;
    }

    PCString::substrTo(&v123, v91 - 1, &v129);
    PCString::set(&v123, &v129);
  }

  else
  {
    PCString::PCString(&v129, "Transform");
    v92 = PCString::find(&v125, &v129);
    PCString::~PCString(&v129);
    if ((v92 & 0x80000000) == 0)
    {
      PCString::erase(&v125, v92, 0xAu);
    }

    PCString::PCString(&v129, "Position");
    PCString::PCString(&v130, "Offset");
    if ((PCString::find(&v125, &v129) & 0x80000000) == 0)
    {
      v93 = PCString::find(&v125, &v129);
      v94 = PCString::size(&v129);
      PCString::replace(&v125, v93, v94, &v130);
    }

    PCString::set(&v123, &v125);
    PCString::PCString(&v122, ".");
    v95 = PCString::find(&v123, &v122);
    PCString::~PCString(&v122);
    if ((v95 & 0x80000000) == 0)
    {
      PCString::substrTo(&v123, v95 - 1, &v122.var0);
      PCString::set(&v123, &v122);
      PCString::~PCString(&v122);
    }

    PCString::~PCString(&v130);
  }

  PCString::~PCString(&v129);
LABEL_105:
  v115 = a8;
  v96 = v127[1].var0;
  if (v127[1].var0 == v127)
  {
    v97 = 0;
    v77 = 1;
  }

  else
  {
    v97 = 0;
    do
    {
      v98 = (*(v96[2].var0->isa + 14))(v96[2].var0);
      PCString::PCString(&v130, (v98 + 32));
      PCString::PCString(&v129, &v130);
      PCString::append(&v129, ".");
      PCString::PCString(&v122, &v129);
      PCString::append(&v122, &v123);
      PCString::~PCString(&v129);
      MatchingCompoundChannel = OZChannelFolder::findMatchingCompoundChannel(v98, &v122);
      if (MatchingCompoundChannel)
      {
        MatchingDescendant = OZChannelFolder::findMatchingDescendant(MatchingCompoundChannel, v46);
      }

      else
      {
        MatchingDescendant = OZChannelFolder::findMatchingDescendant(v98, v46);
      }

      a3 = MatchingDescendant;
      v77 = MatchingDescendant != 0;
      if (MatchingDescendant)
      {
        if (!v46->var6)
        {
          if (v101)
          {
            if (v102)
            {
              OZChannel::setInfo(v101, v102[16]);
            }
          }
        }

        PCSharedCount::PCSharedCount(&v129);
        (*(a3->var0 + 43))(a3, &v129);
        PCString::~PCString(&v129);
        if ((a7 & 2) != 0)
        {
          CurrentTime = OZScene::getCurrentTime(v120, &v129);
          (*(a3->var0 + 38))(a3, &v129, v46, CurrentTime);
        }

        else
        {
          OZChannelBase::operator=(a3, v46);
        }

        (*(*this + 544))(this);
        OZDocument::postNotification(v120[198], 8);
        v97 = 1;
      }

      PCString::~PCString(&v122);
      PCString::~PCString(&v130);
      if (!a3)
      {
        break;
      }

      v96 = v96[1].var0;
    }

    while (v96 != v127);
  }

  PCString::~PCString(&v123);
  PCString::~PCString(&v124);
  PCString::~PCString(&v125);
  PCString::~PCString(&v126);
  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(v127);
  if (v77)
  {
    a8 = v115;
    if ((v97 & 1) == 0)
    {
      return OZElement::performDragOperation(v16, lpsrc, a3, a4, a5, a6, a7, a8);
    }
  }

  return v77;
}

void *TXTextLayout::addMaterialToSequenceBehaviors(void *this, OZMaterialBase *a2, unsigned int a3)
{
  v3 = this + 150;
  v4 = this[151];
  if (v4 != this + 150)
  {
    do
    {
      this = v4[2];
      if (this)
      {
        if (this)
        {
          this = TXSequenceBehavior::addMaterial(this, a2, a3);
        }
      }

      v4 = v4[1];
    }

    while (v4 != v3);
  }

  return this;
}

char *TXTextLayout::moveMaterialLayer(TXTextLayout *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = this + 19344;
  v11 = *(this + 2419);
  if (v11 != this + 19344)
  {
    do
    {
      v12 = *(*(v11 + 2) + 480);
      if (a4 >= ((*(*(v11 + 2) + 488) - v12) >> 3))
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *(v12 + 8 * a4);
      if (v13)
      {
      }

      OZLayeredMaterial::moveMaterialLayer(v13, a2, a3, a5);
      v11 = *(v11 + 1);
    }

    while (v11 != v10);
  }

  result = TXSequenceChannels::moveMaterialLayerChannels((this + 25032), a2, a3, a5, a4);
  for (i = *(this + 151); i != (this + 1200); i = i[1])
  {
    result = i[2];
    if (result)
    {
      if (result)
      {
        result = TXSequenceChannels::moveMaterialLayerChannels((result + 816), a2, a3, a5, a4);
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toTXTextLayout::performDragOperation(TXTextLayout *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, CMTime *a8)
{
  return TXTextLayout::performDragOperation((this - 200), a2, a3, a4, a5, a6, a7, a8);
}

{
  return TXTextLayout::performDragOperation((this - 216), a2, a3, a4, a5, a6, a7, a8);
}

uint64_t TXTextLayout::is3D(TXTextLayout *this)
{
  if (*(this + 2420))
  {
    v2 = *(this + 2419);
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3 && (OZChannelBase::isEnabled((v3 + 40520), 0, 1) & 1) != 0)
    {
      v5 = 1;
      if (!v4)
      {
        return v5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = this + 1200;
  v7 = *(this + 151);
  if (v7 == (this + 1200))
  {
    v5 = 0;
    if (!v4)
    {
      return v5;
    }

    goto LABEL_13;
  }

  do
  {
    v5 = (*(**(v7 + 16) + 616))(*(v7 + 16), 1046, 0, 0);
    if (v5)
    {
      break;
    }

    v7 = *(v7 + 8);
  }

  while (v7 != v6);
  if (v4)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_25FAFB87C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::hasSequenceCharacterOffset(TXTextLayout *this)
{
  v1 = this + 1200;
  v2 = *(this + 151);
  if (v2 == (this + 1200))
  {
    return 0;
  }

  while (1)
  {
    v3 = v2[2];
    if (v3)
    {
      if (v4)
      {
        if ((*(*v4 + 616))(v4, 1031, 0, 0))
        {
          break;
        }
      }
    }

    v2 = v2[1];
    if (v2 == v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t TXTextLayout::isStyleEnabledBySequenceBehavior(TXTextLayout *this, uint64_t a2, CMTime *a3)
{
  v3 = this + 1200;
  v4 = *(this + 151);
  if (v4 == this + 1200)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(v4 + 2);
    if (v7)
    {
      if (v8)
      {
        v9 = v8;
        if ((*(*v8 + 616))(v8, a2, 0, 0))
        {
          v12 = *&a3->value;
          epoch = a3->epoch;
          v10 = 1;
          if ((*(*v9 + 296))(v9, &v12, 1, 1, 1))
          {
            break;
          }
        }
      }
    }

    v4 = *(v4 + 1);
    if (v4 == v3)
    {
      return 0;
    }
  }

  return v10;
}

uint64_t TXTextLayout::isStyleEnabledByOldSequenceBehavior(TXTextLayout *this, int a2, CMTime *a3)
{
  v3 = this + 1200;
  v4 = *(this + 151);
  if (v4 == this + 1200)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(v4 + 2);
    if (v7)
    {
      if (v8)
      {
        v9 = v8;
        if (TXTextSequenceBehavior::isChannelEnabled(v8, a2))
        {
          v12 = *&a3->value;
          epoch = a3->epoch;
          v10 = 1;
          if ((*(*v9 + 296))(v9, &v12, 1, 1, 1))
          {
            break;
          }
        }
      }
    }

    v4 = *(v4 + 1);
    if (v4 == v3)
    {
      return 0;
    }
  }

  return v10;
}

void TXTextLayout::prepareForRender(TXTextLayout *this, const OZRenderState *a2)
{
  if (TXTextLayout::hasSequenceCharacterOffset(this))
  {
    *(this + 19321) = 1;
  }

  TXTextLayout::doLayout(this, a2, 0);
  var0 = a2->var0;
  for (i = *(this + 2419); i != (this + 19344); i = i[1])
  {
    v5 = i[2];
    v20 = var0;
    TXTextStyle::updateGradient(v5, &v20);
  }

  if (*(this + 14718) == 2)
  {
    PCString::PCString(&v23, this + 7358);
    TXChannelString::getString(this + 2381, &v20);
    v6 = PCString::caseInsensitiveCompare(&v23, &v20);
    PCString::~PCString(&v20);
    if (v6)
    {
      v7 = Li3DEngineScene::sceneManager(this);
      OZLockingGroup::WriteSentry::WriteSentry(v22, v7);
      v8 = (*(*(this + 25) + 640))(this + 200);
      (*(*v8 + 712))(&v20);
      v18 = a2->var0;
      v9 = (*(*(this + 25) + 272))(this + 200);
      OZSceneSettings::getFrameDuration((v9 + 336), &v16);
      time1 = v18;
      *&time2.value = v16;
      time2.epoch = v17;
      v10 = PC_CMTimeFloorToSampleDuration(&time1, &time2, &v19);
      v11 = (*(*(this + 25) + 272))(this + 200, v10);
      OZSceneSettings::getFrameDuration((v11 + 336), &v14);
      time1 = v20;
      time2 = v19;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        time1 = v20;
        time2 = v21;
        PC_CMTimeSaferAdd(&time1, &time2, &v26);
        time1 = v26;
        *&time2.value = v14;
        time2.epoch = v15;
        PC_CMTimeSaferSubtract(&time1, &time2, &v25);
        time1 = v19;
        time2 = v25;
        if (CMTimeCompare(&time1, &time2) <= 0 || (v21.flags & 1) != 0 && (v21.flags & 0x10) != 0)
        {
          TXTextLayout::setString(this, this + 7358, 1);
          TXTextLayout::updateDisplayString(this, &var0);
          v12 = *(*(this + 2422) + 16);
          TXTextLayout::getDisplayString(this, &v20);
          v13 = PCString::size(&v20);
          *(v12 + 24) = 0;
          *(v12 + 28) = v13;
          PCString::~PCString(&v20);
          TXTextLayout::rebuildParagraphStyles(this);
          TXTextLayout::setAllParagraphsDirty(this);
          TXTextLayout::doLayout(this, a2, 0);
        }
      }

      OZLockingGroup::WriteSentry::~WriteSentry(v22);
    }

    PCString::~PCString(&v23);
  }
}

void sub_25FAFBF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, PCString a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, PCString a28)
{
  PCString::~PCString(&a21);
  OZLockingGroup::WriteSentry::~WriteSentry(&a27);
  PCString::~PCString(&a28);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getNumberOfMissingFonts(TXTextLayout *this)
{
  v1 = this + 19344;
  v2 = *(this + 2419);
  if (v2 == (this + 19344))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v3 = (v3 + TXTextStyle::isMissingFont(*(v2 + 16)));
    v2 = *(v2 + 8);
  }

  while (v2 != v1);
  return v3;
}

uint64_t non-virtual thunk toTXTextLayout::getNumberOfMissingFonts(TXTextLayout *this)
{
  v1 = this + 19144;
  v2 = *(this + 2394);
  if (v2 == (this + 19144))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v3 = (v3 + TXTextStyle::isMissingFont(*(v2 + 16)));
    v2 = *(v2 + 8);
  }

  while (v2 != v1);
  return v3;
}

uint64_t TXTextLayout::getMissingFontName(TXTextLayout *this, int a2, int *a3, PCString *a4)
{
  v4 = this + 19344;
  v5 = *(this + 2419);
  if (v5 == (this + 19344))
  {
    return 0;
  }

  while (!TXTextStyle::isMissingFont(*(v5 + 16)))
  {
LABEL_5:
    v5 = *(v5 + 8);
    if (v5 == v4)
    {
      return 0;
    }
  }

  if (*a3 != a2)
  {
    ++*a3;
    goto LABEL_5;
  }

  MissingFontName = TXTextStyle::getMissingFontName(*(v5 + 16));
  PCString::set(a4, MissingFontName);
  return 1;
}

uint64_t TXTextLayout::getMissingFontKind(TXTextLayout *this, int a2, int *a3, PCString *a4)
{
  v4 = this + 19344;
  v5 = *(this + 2419);
  if (v5 == (this + 19344))
  {
    return 0;
  }

  while (!TXTextStyle::isMissingFont(*(v5 + 16)))
  {
LABEL_5:
    v5 = *(v5 + 8);
    if (v5 == v4)
    {
      return 0;
    }
  }

  if (*a3 != a2)
  {
    ++*a3;
    goto LABEL_5;
  }

  PCURL::PCURL(&v10, @"Missing Kind Font");
  PCString::set(a4, &v10);
  PCString::~PCString(&v10);
  return 1;
}

BOOL TXTextLayout::shouldRenumberChannel(TXTextLayout *this, OZChannelBase *a2)
{
  var1 = a2->var1;
  v6 = xmmword_260347AC0;
  return (OZFactory::isKindOfClass(var1, &v6) & 1) == 0 && OZObjectManipulator::shouldRenumberChannel((this + 216), a2);
}

void TXTextLayout::deleteMaterialLayer(TXTextLayout *this, unsigned int a2, unsigned int a3)
{
  v4 = this + 19344;
  v5 = *(this + 2419);
  if (v5 != this + 19344)
  {
    do
    {
      v6 = *(*(v5 + 2) + 480);
      if (a2 >= ((*(*(v5 + 2) + 488) - v6) >> 3))
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = **(v7 + 178);
      if (a3 >= ((*(*(v7 + 178) + 8) - v8) >> 3))
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = v7;
      v10 = *(v8 + 8 * a3);
      if (v10)
      {
      }

      (*(*v10 + 712))(v10);
      OZLayeredMaterial::deleteLayer(v9, a3);
      v5 = *(v5 + 1);
    }

    while (v5 != v4);
  }

  for (i = *(this + 151); i != (this + 1200); i = i[1])
  {
    v12 = i[2];
    if (v12)
    {
      if (v13)
      {
        TXSequenceBehavior::removeMaterialLayer(v13, a3, a2);
      }
    }
  }

  TXSequenceChannels::removeMaterialLayerChannelsAtIndex((this + 25032), a3, a2);
  v14 = *((*(*(this + 25) + 272))(this + 200) + 1584);

  OZDocument::postNotification(v14, 0x80000);
}

void TXTextLayout::setNameOfMaterialAtIndex(TXTextLayout *this, const PCString *a2, unsigned int a3, uint64_t a4, int a5)
{
  v5 = this + 19344;
  v6 = *(this + 2419);
  if (v6 != this + 19344)
  {
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = *(*(v6 + 2) + 480);
      if (v13 >= (*(*(v6 + 2) + 488) - v14) >> 3)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = *(v14 + 8 * v13);
      if (!a5 || (*(v15 + 1288) & 1) == 0)
      {
        (*(*(v15 + 16) + 120))(v15 + 16, a2, a4);
        v12 = 1;
        if ((a5 & 1) == 0)
        {
          *(v15 + 1288) = 1;
        }
      }

      v6 = *(v6 + 1);
    }

    while (v6 != v5);
    if (v12)
    {
      TXSequenceChannels::renameMaterialAtIndex((this + 25032), a2, a3, a4);
      for (i = *(this + 151); i != (this + 1200); i = i[1])
      {
        v17 = i[2];
        if (v17)
        {
          if (v18)
          {
            TXSequenceChannels::renameMaterialAtIndex((v18 + 816), a2, a3, a4);
          }
        }
      }
    }
  }
}

uint64_t TXTextLayout::selectMaterialAtIndex(uint64_t this, uint64_t a2)
{
  v2 = this + 19344;
  v3 = *(this + 19352);
  if (v3 != this + 19344)
  {
    do
    {
      this = (*(**(v3 + 16) + 232))(*(v3 + 16), a2);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t non-virtual thunk toTXTextLayout::selectMaterialAtIndex(uint64_t this, uint64_t a2)
{
  v2 = this + 19128;
  v3 = *(this + 19136);
  if (v3 != this + 19128)
  {
    do
    {
      this = (*(**(v3 + 16) + 232))(*(v3 + 16), a2);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t TXTextLayout::deselectMaterialAtIndex(uint64_t this, uint64_t a2)
{
  v2 = this + 19344;
  v3 = *(this + 19352);
  if (v3 != this + 19344)
  {
    do
    {
      this = (*(**(v3 + 16) + 240))(*(v3 + 16), a2);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t non-virtual thunk toTXTextLayout::deselectMaterialAtIndex(uint64_t this, uint64_t a2)
{
  v2 = this + 19128;
  v3 = *(this + 19136);
  if (v3 != this + 19128)
  {
    do
    {
      this = (*(**(v3 + 16) + 240))(*(v3 + 16), a2);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t TXTextLayout::getMaterial(TXTextLayout *this, int a2)
{
  v2 = this + 19344;
  for (i = *(this + 2419); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    v5 = *(v4 + 480);
    v6 = *(v4 + 488);
    while (v5 != v6)
    {
      result = *v5;
      if (*(*v5 + 176) == a2)
      {
        return result;
      }

      v5 += 8;
    }
  }

  return 0;
}

uint64_t non-virtual thunk toTXTextLayout::getMaterial(TXTextLayout *this, int a2)
{
  v2 = this + 19144;
  for (i = *(this + 2394); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    v5 = *(v4 + 480);
    v6 = *(v4 + 488);
    while (v5 != v6)
    {
      result = *v5;
      if (*(*v5 + 176) == a2)
      {
        return result;
      }

      v5 += 8;
    }
  }

  return 0;
}

uint64_t TXTextLayout::willResetMaterial(TXTextLayout *this, unsigned int a2)
{
  TXTextLayout::removeMaterialFromSequenceBehaviors(this, a2);

  return TXSequenceChannels::removeMaterialChannelsAtIndex((this + 25032), a2);
}

uint64_t non-virtual thunk toTXTextLayout::willResetMaterial(TXTextLayout *this, unsigned int a2)
{
  TXTextLayout::removeMaterialFromSequenceBehaviors(this - 27, a2);

  return TXSequenceChannels::removeMaterialChannelsAtIndex((this + 24816), a2);
}

uint64_t TXTextLayout::doResetMaterial(uint64_t this, unsigned int a2)
{
  v2 = this + 19344;
  v3 = *(this + 19352);
  if (v3 != this + 19344)
  {
    v4 = a2;
    do
    {
      v5 = *(*(v3 + 16) + 480);
      if (v4 >= (*(*(v3 + 16) + 488) - v5) >> 3)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(**(v5 + 8 * v4) + 208))(*(v5 + 8 * v4));
      this = (*(v6 + 280))();
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

void TXTextLayout::didResetMaterial(TXTextLayout *this, unsigned int a2)
{
  TXTextLayout::getStyleAtCharOffset(this, 0, &v7);
  v4 = *(v7 + 480);
  if (a2 >= ((*(v7 + 488) - v4) >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(v4 + 8 * a2);
  TXTextLayout::addMaterialToSequenceBehaviors(this, v5, a2);
  OZChannel::getValueAsInt((v5 + 720), MEMORY[0x277CC08F0], 0.0);
  TXSequenceChannels::addMaterialChannels((this + 25032), v5, a2);
  v6 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_25FAFCC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *TXTextLayout::doReset3DExtrusionProperties(void *this)
{
  v1 = this + 2418;
  v2 = this[2419];
  if (v2 != this + 2418)
  {
    do
    {
      v3 = v2[2];
      v4 = v3[5079];
      v5 = *v4;
      v6 = *(v4 + 8);
      if (*v4 != v6)
      {
        v7 = v3 + 6075;
        v8 = v3 + 5995;
        v9 = v3 + 6011;
        v10 = v3 + 6094;
        do
        {
          this = *v5;
          if (*v5 != v7 && this != v8 && this != v9 && this != v10)
          {
            this = (*(*this + 288))(this, 0);
          }

          ++v5;
        }

        while (v5 != v6);
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }

  return this;
}

void sub_25FAFD6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getPrecompType(TXTextLayout *this, CMTime *a2)
{
  if (*(this + 63720) != 1)
  {
    v5 = this + 200;
    if ((*(*this + 296))(this))
    {
      v6 = (this + 6880);
    }

    else
    {
      v6 = 0;
    }

    v7 = (*(*(this + 25) + 640))(this + 200);
    v8 = OZElement::checkForForcedPrecompose((this + 200), v7, v6);
    v9 = *(this + 145);
    {
      v11 = v10;
      do
      {
        v17 = *a2;
        v12 = OZGroup::appliesEffectToChildren(v11, &v17);
        if (v12)
        {
          break;
        }

        v13 = *(v11 + 120);
        if (!v13)
        {
          break;
        }
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v14 = (*(*this + 304))(this);
    if (v8 & 1) != 0 || ((*(*v5 + 1592))(this + 200, MEMORY[0x277CC08F0]) & 1) != 0 || OZElement::getPreserveTransparency((this + 200), MEMORY[0x277CC08F0]) || (TXTextLayout::isGlowEnabled(this, v15) & 1) != 0 || ((*(*this + 312))(this))
    {
      v2 = 1;
      if (!v14)
      {
        return v2;
      }
    }

    else
    {
      if ((v14 & 1) == 0)
      {
        if (((*(*v5 + 416))(this + 200) & 1) != 0 || (v12 | (*(*v5 + 1888))(this + 200)) == 1)
        {
          return 1;
        }

        return 2;
      }

      LODWORD(v2) = 0;
    }

    if (((*(*this + 296))(this) & 1) != 0 || ((*(*v5 + 416))(this + 200) & 1) != 0 || ((*(*v5 + 1864))(this + 200) & 1) != 0 || ((*(*v5 + 1600))(this + 200) & 1) != 0 || ((*(*v5 + 1608))(this + 200) & 1) != 0 || (v2 | (*(*v5 + 1624))(this + 200)) == 1)
    {
      return 0;
    }

    return 2;
  }

  return *(this + 15931);
}

uint64_t TXTextLayout::buildSceneObjectForFace(uint64_t a1, CMTime *a2, uint64_t a3, TXTextObject **a4)
{
  v4 = *a4;
  v6 = *a2;
  if (TXTextObject::isFaceVisible(v4, &v6))
  {
    operator new();
  }

  return 0;
}

uint64_t TXTextLayout::buildSceneObjectForGlow(uint64_t a1, CMTime *a2, uint64_t a3, TXTextObject **a4)
{
  v4 = *a4;
  v6 = *a2;
  if (TXTextObject::isGlowVisible(v4, &v6, 0, 0, 0))
  {
    operator new();
  }

  return 0;
}

void sub_25FAFDDD8(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::buildSceneObjectForOutline(uint64_t a1, CMTime *a2, uint64_t a3, TXTextObject **a4)
{
  v4 = *a4;
  v6 = *a2;
  if (TXTextObject::isOutlineVisible(v4, &v6, 0, 0))
  {
    operator new();
  }

  return 0;
}

uint64_t TXTextLayout::buildSceneObjectForDropShadow(uint64_t a1, CMTime *a2, uint64_t a3, TXTextObject **a4)
{
  v4 = *a4;
  v6 = *a2;
  if (TXTextObject::isDropShadowVisible(v4, &v6, 0))
  {
    operator new();
  }

  return 0;
}

void sub_25FAFE314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  MEMORY[0x2666E9F00](v30, 0x10B1C40DE3F20C5);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  OZRenderParams::~OZRenderParams(&a29);
  PCSharedCount::~PCSharedCount(v31 + 1);
  _Unwind_Resume(a1);
}

uint64_t getAttributeForLayer(unsigned int a1, int a2, int a3)
{
  if (a3 | a2)
  {
    if (a2 || a3 != 1)
    {
      if (a2 != 1 || a3)
      {
        if (a1 < 4)
        {
          v3 = &xmmword_260347B10;
          return *(v3 + a1);
        }
      }

      else if (a1 < 4)
      {
        v3 = &unk_260347B00;
        return *(v3 + a1);
      }
    }

    else if (a1 < 4)
    {
      v3 = &unk_260347AF0;
      return *(v3 + a1);
    }
  }

  else if (a1 < 3)
  {
    v3 = &unk_26034836C;
    return *(v3 + a1);
  }

  return 0;
}

void TXGlyphGroupRender::addGlyph(uint64_t a1, int a2, uint64_t *a3, __int128 *a4)
{
  v9 = a2;
  v4 = a3[1];
  v10 = *a3;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[5];
  v16 = a4[4];
  v17 = v5;
  v6 = a4[7];
  v18 = a4[6];
  v19 = v6;
  v7 = a4[1];
  v12 = *a4;
  v13 = v7;
  v8 = a4[3];
  v14 = a4[2];
  v15 = v8;
  std::vector<TXGlyphRender>::push_back[abi:ne200100]((a1 + 1448), &v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_25FAFF0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void LiImageTransform::LiImageTransform(LiImageTransform *this)
{
  *(this + 44) = &unk_2872DEA38;
  *(this + 45) = 0;
  *(this + 368) = 1;
  LiImageFilter::LiImageFilter(this, &off_287261EA0);
  *this = &unk_287261D98;
  *(this + 44) = &unk_287261E80;
  *(this + 15) = 0x3FF0000000000000;
  *(this + 10) = 0x3FF0000000000000;
  *(this + 5) = 0x3FF0000000000000;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 36) = 0x3FF0000000000000;
  *(this + 31) = 0x3FF0000000000000;
  *(this + 26) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 10) = _Q1;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 296) = 0;
  LiClipSet::LiClipSet((this + 304));
}

void sub_25FAFF1D0(_Unwind_Exception *a1)
{
  v4 = v3;
  LiImageFilter::~LiImageFilter(v1, v4 + 1);
  *(v1 + 352) = v2;
  *(v1 + 368) = 0;
  PCWeakCount::~PCWeakCount((v1 + 360));
  _Unwind_Resume(a1);
}

uint64_t LiImageFilterChain::append(LiImageFilterChain *this, LiImageFilter *a2)
{
  v11 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(&v12, a2);
  v3 = *(this + 7);
  if (*(this + 6) <= v3)
  {
    v4 = 2 * (v3 + 1) + 1;
  }

  else
  {
    v4 = *(this + 6);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 16, v3 + 1, v4);
  v5 = *(this + 4) + 16 * *(this + 7);
  *(v5 - 16) = v11;
  PCSharedCount::PCSharedCount(&v13, &v12);
  PCSharedCount::operator=((v5 - 8), &v13);
  PCSharedCount::~PCSharedCount(&v13);
  PCSharedCount::~PCSharedCount(&v12);
  return LiImageFilterChain::connect(this, v6, v7, v8, v9);
}

void sub_25FAFF2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::setGlyphGeodeProperties(TXTextLayout *this, const OZRenderParams *a2, const OZRenderGraphState *a3, LiGeode *a4)
{
  DoHighQualityResampling = OZRenderParams::getDoHighQualityResampling(a2);
  (*(*a4 + 280))(a4, DoHighQualityResampling);
  if ((*a3 & 1) != 0 && (*(*this + 1008))(this))
  {
    (*(*a4 + 192))(a4, *(a3 + 1));
    *(a4 + 170) = *(a3 + 12);
    if (*(a3 + 16) == 1)
    {
      (*(*a4 + 208))(a4, *(a3 + 3));
      (*(*a4 + 224))(a4, *(a3 + 4));
      (*(*a4 + 240))(a4, *(a3 + 5));
    }

    if (*(a3 + 7) > 0.0)
    {
      (*(*a4 + 256))(a4);
    }
  }

  else
  {
    (*(*a4 + 192))(a4, 0.0);
  }

  *(a4 + 552) &= *(a3 + 288);
  *(a4 + 553) &= *(a3 + 289);
  *(a4 + 696) = *(a3 + 88);
  (*(*this + 976))(this, a4, a3 + 224, a2);
  ShowDepth = LiRenderingTechnology::getShowDepth((a2 + 1316));
  if (ShowDepth)
  {
    LOBYTE(ShowDepth) = (*(*(this + 25) + 2104))(this + 200);
  }

  *(a4 + 555) = ShowDepth;
  (*(*this + 944))(this, a2, a3, a4);
  result = (*(*this + 312))(this);
  if ((result & 1) != 0 || (result = (*(*this + 936))(this, MEMORY[0x277CC08F0]), result))
  {
    *(a4 + 554) = 0;
  }

  return result;
}

uint64_t TXTextLayout::clearFontMap(TXTextLayout *this)
{
  v2 = (this + 57344);
  PCMutex::lock((this + 61000));
  std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy((v2 + 466), v2[467]);
  v2[466] = (v2 + 467);
  *(v2 + 467) = 0u;
  return PCMutex::unlock((this + 61000));
}

void TXTextLayout::makeRenderGraphOfElements(TXTextLayout *this, const OZRenderState *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  v5 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v7, v5);
  OZRenderState::OZRenderState(&v6, a2);
  operator new();
}

void sub_25FAFFFB0(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(&STACK[0x678]);
  OZLockingGroup::WriteSentry::~WriteSentry((v1 - 136));
  _Unwind_Resume(a1);
}

void TXTextLayout::generateGlyphPlanes(TXTextLayout *this, const OZRenderParams *a2, double a3, double a4)
{
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 2 || (v6 = *(this + 151), v6 == (this + 1200)))
  {
LABEL_6:
    if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 2)
    {
      v9 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    while (1)
    {
      v7 = *((*(**(v6 + 16) + 344))(*(v6 + 16)) + 8);
      v49[0] = xmmword_260347AD0;
      if (OZFactory::isKindOfClass(v7, v49))
      {
        break;
      }

      v8 = *((*(**(v6 + 16) + 344))(*(v6 + 16)) + 8);
      v49[0] = xmmword_260347A60;
      if (OZFactory::isKindOfClass(v8, v49))
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == (this + 1200))
      {
        goto LABEL_6;
      }
    }
  }

  v9 = 0;
LABEL_9:
  OZRenderParams::OZRenderParams(v49, a2);
  v50 = 1;
  v10 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v48, v10);
  v11 = *(this + 7353);
  v12 = *(this + 7354);
  v34 = this + 58824;
  if (v11 == v12)
  {
    OZLockingGroup::WriteSentry::~WriteSentry(v48);
    goto LABEL_52;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = this + 63736;
  do
  {
    if (*v11 && !TXCharacterSetIsWhitespaceOrNewline(*(*v11 + 120)))
    {
      if (!v9)
      {
        goto LABEL_31;
      }

      v17 = *(*v11 + 264);
      if (v17)
      {
        v19 = *(v17 + 8);
        v18 = *(v17 + 16);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v19 != v14 || v13 == 0)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
LABEL_31:
            v47 = *(*v11 + 388);
            v22 = *(v34 + 292);
            *&v42 = &v47;
            v23 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v22, &v47);
            v24 = *(v23 + 15);
            v46[4] = *(v23 + 13);
            v46[5] = v24;
            v25 = *(v23 + 19);
            v46[6] = *(v23 + 17);
            v46[7] = v25;
            v26 = *(v23 + 7);
            v46[0] = *(v23 + 5);
            v46[1] = v26;
            v27 = *(v23 + 11);
            v46[2] = *(v23 + 9);
            v46[3] = v27;
            v42 = xmmword_260342700;
            v44 = 0uLL;
            v43 = 0;
            v45 = 1.0;
            v39 = 0u;
            v40 = 0u;
            v38 = 0x3FF0000000000000;
            v41 = 1.0;
            PCRay3<double>::transform(&v42, v46);
            PCRay3<double>::transform(&v38, v46);
            v36 = v42;
            v37[0] = v43;
            *&v37[1] = vmulq_f64(v44, v40);
            *&v37[3] = v45 * v41;
            v29 = *v16;
            v28 = *(v16 + 1);
            while (1)
            {
              if (v29 == v28)
              {
                operator new();
              }

              if (PCMath::equal(&v36, *v29, 1.0e-10))
              {
                v30 = *v29;
                if (((*(*v29 + 23) - *(*v29 + 22)) >> 2) < 512)
                {
                  break;
                }
              }

              ++v29;
            }

            LODWORD(v35) = *(*v11 + 388);
            std::vector<int>::push_back[abi:ne200100](v30 + 22, &v35);
            v31 = *(*v11 + 264);
            if (v31)
            {
              v14 = *(v31 + 8);
              v32 = *(v31 + 16);
              if (v32)
              {
                atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v15)
              {
LABEL_41:
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              }
            }

            else
            {
              v14 = 0;
              v32 = 0;
              if (v15)
              {
                goto LABEL_41;
              }
            }

            v13 = *v29;
            v15 = v32;
            goto LABEL_43;
          }

          v33 = (*(v13 + 23) - *(v13 + 22)) >> 2;
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          if (v33 >= 512)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v21 = v19 != v14 || v13 == 0;
          if (v21 || ((*(v13 + 23) - *(v13 + 22)) >> 2) > 511)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v14 || !v13 || ((*(v13 + 23) - *(v13 + 22)) >> 2) >= 512)
      {
        goto LABEL_31;
      }

      LODWORD(v46[0]) = *(*v11 + 388);
      std::vector<int>::push_back[abi:ne200100](v13 + 22, v46);
    }

LABEL_43:
    v11 += 16;
  }

  while (v11 != v12);
  OZLockingGroup::WriteSentry::~WriteSentry(v48);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_52:
  OZRenderParams::~OZRenderParams(v49);
}

void sub_25FB005E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, int a57, char a58)
{
  OZLockingGroup::WriteSentry::~WriteSentry(&a56);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  OZRenderParams::~OZRenderParams(&a58);
  _Unwind_Resume(a1);
}

void TXTextLayout::clearGlyphGroups(TXTextLayout *this)
{
  v1 = this + 61440;
  v2 = (this + 63736);
  v3 = *(this + 7967);
  v4 = *(this + 7968);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        TXGlyphGroup::~TXGlyphGroup(*v3);
        MEMORY[0x2666E9F00]();
      }

      *v3++ = 0;
    }

    while (v3 != v4);
    v3 = *v2;
  }

  *(v1 + 288) = v3;

  std::vector<TXParagraphStyle *>::resize(v2, 0);
}

void TXTextLayout::makeRenderImageSource(TXTextLayout *this@<X0>, PCSharedCount *a2@<X8>)
{
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  if (PCString::size(StringPtr))
  {
    operator new();
  }

  a2->var0 = 0;

  PCSharedCount::PCSharedCount(a2 + 1);
}

void sub_25FB00F4C(_Unwind_Exception *a1)
{
  OZLockingGroup::WriteSentry::~WriteSentry(&STACK[0x268]);
  PCSharedCount::~PCSharedCount(&STACK[0x278]);
  PCSharedCount::~PCSharedCount(&STACK[0x288]);
  OZRenderParams::~OZRenderParams(&STACK[0x290]);
  OZRenderGraphState::~OZRenderGraphState(&STACK[0x820]);
  std::unique_ptr<LiGraphBuilder>::reset[abi:ne200100]((v1 - 128), 0);
  PCSharedCount::~PCSharedCount((v1 - 112));
  _Unwind_Resume(a1);
}

LiGraphBuilder *std::unique_ptr<LiGraphBuilder>::reset[abi:ne200100](LiGraphBuilder **a1, LiGraphBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    LiGraphBuilder::~LiGraphBuilder(result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void OZRenderGraphState::~OZRenderGraphState(OZRenderGraphState *this)
{
  v2 = this + 224;
  *(this + 28) = &unk_2871F25A8;
  if (*(this + 58) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 58);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(v2, 0, v3);
  v4 = *(this + 30);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(this + 30) = 0;
  *(this + 58) = 0;
  std::__list_imp<unsigned int>::clear(this + 8);
}

void non-virtual thunk toTXTextLayout::makeRenderImageSource(TXTextLayout *this@<X0>, PCSharedCount *a2@<X8>)
{
  TXTextLayout::makeRenderImageSource((this - 200), a2);
}

{
  TXTextLayout::makeRenderImageSource((this - 6728), a2);
}

BOOL PCRay3<double>::transform(uint64_t a1, double *a2)
{
  v4 = *(a1 + 16) + *(a1 + 40);
  v5 = (a1 + 24);
  v8 = vaddq_f64(*a1, *(a1 + 24));
  v9 = v4;
  PCMatrix44Tmpl<double>::transform<double>(a2, a1, a1);
  PCMatrix44Tmpl<double>::transform<double>(a2, v8.f64, v8.f64);
  v6 = v9 - *(a1 + 16);
  *v5 = vsubq_f64(v8, *a1);
  *(a1 + 40) = v6;
  return PCVector3<double>::normalize(v5, 0.000000100000001);
}

void TXTextLayout::buildRenderGraph(TXTextLayout *this, OZRenderState *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  v8 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v48, v8);
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  {
    OZRenderState::OZRenderState(&v47, a2);
    if (!v47.var31)
    {
      goto LABEL_12;
    }

    v10 = *(v47.var31 + 1);
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = this + 200;
    v12 = v47.var31 + 8;
    do
    {
      v13 = v10[4];
      v14 = v13 >= v11;
      v15 = v13 < v11;
      if (v14)
      {
        v12 = v10;
      }

      v10 = v10[v15];
    }

    while (v10);
    if (v12 == v47.var31 + 1 || (v16 = v12[4], v11 < v16) || v16 == *(v47.var31 + 5))
    {
LABEL_12:
      *(this + 63720) = 0;
      *(this + 63728) = 0;
      *(this + 7968) = *(this + 7967);
      std::vector<TXParagraphStyle *>::resize(this + 7967, 0);
      var0 = a2->var0;
      *(this + 15931) = TXTextLayout::getPrecompType(this, &var0);
      *(this + 63720) = 1;
      *(this + 15933) = TXTextLayout::scaleAffectsLayout(this);
      *(this + 63728) = 1;
      v17 = this + 200;
      if ((*(*(this + 25) + 1440))(this + 200))
      {
        (*(*v17 + 1976))(this + 200, a2, a3);
      }

      else
      {
        v18 = this + 1200;
        v19 = *(this + 151);
        if (v19 != this + 1200)
        {
          do
          {
            v20 = *(v19 + 2);
            if (v20)
            {
              if (v21)
              {
                v22 = v21;
                var0 = a2->var0;
                if ((*(*v21 + 296))(v21, &var0, 1, 1, 1))
                {
                  var0 = a2->var0;
                  v23 = TXChannelString::getStringPtr((this + 19048));
                  PCString::size(v23);
                  TXSequenceBehavior::createInfluenceCache(v22, &var0);
                }
              }
            }

            v19 = *(v19 + 1);
          }

          while (v19 != v18);
        }

        v24 = a4;
        OZRenderGraphState::OZRenderGraphState(&var0, a4);
        (*(*v17 + 2064))(this + 200, a2, &var0);
        if ((*(*this + 936))(this, MEMORY[0x277CC08F0]))
        {
          TXTextLayout::doLayout(this, a2, 0);
          v37 = a2->var0;
          PrecompType = TXTextLayout::getPrecompType(this, &v37);
          if (PrecompType == 1)
          {
            LiGraphBuilder::partitionWorld(a3);
          }

          OZRenderGraphState::OZRenderGraphState(&v37, v24);
          LiGraphBuilder::getCurrentLocalToWorld(a3, v36);
          for (i = 0; i != 128; i += 32)
          {
            v27 = &v37 + i;
            v28 = *&v36[i + 16];
            *(v27 + 6) = *&v36[i];
            *(v27 + 7) = v28;
          }

          OZElement::buildRenderGraph((this + 200), a2, a3, &v37);
          if (PrecompType == 1)
          {
            LiGraphBuilder::partitionWorld(a3);
          }

          v39 = &unk_2871F25A8;
          if (v40 < 0)
          {
            v29 = 1;
          }

          else
          {
            v29 = v40;
          }

          PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v39, 0, v29);
          if (v41)
          {
            MEMORY[0x2666E9ED0](v41, 0x1000C8077774924);
          }

          v41 = 0;
          v40 = 0;
          std::__list_imp<unsigned int>::clear(v38);
        }

        else
        {
          (*(*this + 576))(this, a2);
          (*(*this + 904))(this, a2, a3, &var0, 0);
        }

        v30 = TXChannelString::getStringPtr((this + 19048));
        if (PCString::size(v30))
        {
          v31 = (*(*this + 1192))(this) ^ 1;
          if (!a3)
          {
            LOBYTE(v31) = 1;
          }

          if ((v31 & 1) == 0)
          {
            if ((*(*this + 296))(this))
            {
              LiGraphBuilder::getCurrentInsertionGroup(a3, &v37);
              if (!v37.value)
              {
                throw_PCNullPointerException(1);
              }

              (*(*v37.value + 192))(v37.value, 1);
              PCSharedCount::~PCSharedCount(&v37.timescale);
            }

            TXTextLayout::buildBackgroundGeode(this, a2, v24);
          }
        }

        std::__list_imp<TXTextLayout::HGNodeCacheEntry>::clear(this + 7584);
        PCSharedMutex::lock((this + 60768));
        std::__list_imp<TXTextLayout::HGMetalNodeCacheEntry>::clear(this + 7609);
        PCSharedMutex::unlock((this + 60768));
        *(this + 63720) = 0;
        *(this + 63728) = 0;
        for (j = *(this + 151); j != v18; j = *(j + 8))
        {
          v33 = *(j + 16);
          if (v33)
          {
            if (v34)
            {
              v37 = a2->var0;
              TXSequenceBehavior::clearInfluenceCache(v34, &v37);
            }
          }
        }

        v44 = &unk_2871F25A8;
        if (v45 < 0)
        {
          v35 = 1;
        }

        else
        {
          v35 = v45;
        }

        PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v44, 0, v35);
        if (v46)
        {
          MEMORY[0x2666E9ED0](v46, 0x1000C8077774924);
        }

        v46 = 0;
        v45 = 0;
        std::__list_imp<unsigned int>::clear(v43);
      }
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v48);
}

void sub_25FB01938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OZRenderGraphState::~OZRenderGraphState(&a65);
  OZLockingGroup::WriteSentry::~WriteSentry((v65 - 96));
  _Unwind_Resume(a1);
}

void TXTextLayout::buildBackgroundGeode(TXTextLayout *this, CMTime *a2, const OZRenderGraphState *a3)
{
  v12[0] = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v12[1] = _Q0;
  (*(*this + 400))(this, v12, a2);
  PCColor::PCColor(&v11);
  v10 = *a2;
  OZChannelColor::getColor((this + 61952), &v10, &v11, 0.0);
  operator new();
}

void sub_25FB01C38(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a3)
  {
    if (atomic_fetch_add(a3 - 3, 0xFFFFFFFF) == 1)
    {
      *a3 = 0;
      free(a3 - 3);
    }
  }

  PCSharedCount::~PCSharedCount(v12 + 1);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk toTXTextLayout::buildRenderGraph(TXTextLayout *this, OZRenderState *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  TXTextLayout::buildRenderGraph((this - 200), a2, a3, a4);
}

{
  TXTextLayout::buildRenderGraph((this - 6728), a2, a3, a4);
}

uint64_t TXTextLayout::setGeodeProperties3D(TXTextLayout *this, CMTime *a2, const OZRenderGraphState *a3, LiGeode *a4)
{
  OZElement::setGeodeProperties3D(this + 200, a2, a3, a4);
  result = (*(*this + 312))(this);
  if (result)
  {
    v9 = *a2;
    result = OZChannel::getValueAsInt((this + 20312), &v9, 0.0);
    v8 = result != 0;
  }

  else
  {
    v8 = 0;
  }

  *(a4 + 556) = v8;
  return result;
}

uint64_t TXTextLayout::doesTransformFromLocalToScreenSpace(TXTextLayout *this, const OZRenderParams *a2)
{
  if (*(a2 + 1400))
  {
    return 0;
  }

  if ((*(*this + 304))(this))
  {

    return OZElement::doesTransformFromLocalToScreenSpace(this + 200);
  }

  else
  {
    v5 = (*(*this + 928))(this, a2);
    if ((*(*this + 936))(this, MEMORY[0x277CC08F0]))
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6 || ((*(*this + 312))(this) & 1) != 0)
    {
      return 1;
    }

    else
    {
      v7 = *(*(this + 25) + 2224);

      return v7(this + 200, a2);
    }
  }
}

void TXTextLayout::addFillSource(uint64_t a1@<X0>, const PCSharedCount *a2@<X1>, TXTextObject *a3@<X2>, CMTime *a4@<X3>, const FxColorDescription *a5@<X4>, unsigned int a6@<W5>, int a7@<W6>, PCSharedCount *a8@<X8>)
{
  a8->var0 = a2->var0;
  v14 = a8 + 1;
  PCSharedCount::PCSharedCount(a8 + 1, a2 + 1);
  v15 = *(a3 + 33);
  if (v15)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  FillType = TXTextStyle::getFillType(v17, a6);
  if (FillType == 1)
  {
    __asm { FMOV            V0.2D, #1.0 }

    if (a7)
    {
      OZChannel::getValueAsDouble((a1 + 60520), MEMORY[0x277CC08F0], 0.0);
    }

    PCSharedCount::PCSharedCount(&v25, v14);
    TXTextStyle::getGradientChannel(v17, a6);
    v27 = *a4;
    TXTextStyle::getGradient(v17, a6, &v27, a5);
    v26 = *a4;
    TXTextLayout::scaleAffectsLayout(a1);
    operator new();
  }

  if (FillType == 2 && TXTextStyle::hasTexture(v17, a6))
  {
    TextureChannel = TXTextStyle::getTextureChannel(v17, a6);
    v27 = *a4;
    OZChannel::getValueAsDouble(TextureChannel + 5, &v27, 0.0);
    OZChannel::getValueAsDouble(TextureChannel + 6, &v27, 0.0);
    TXTextObject::getImageBounds(a3, a4, &v27);
    TXTextObject::getTypographicBounds(a3);
    operator new();
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_25FB02810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, PCSharedCount a27)
{
  PCSharedCount::~PCSharedCount(v29 + 1);
  PCSharedCount::~PCSharedCount(&a18);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  PCSharedCount::~PCSharedCount(v28);
  _Unwind_Resume(a1);
}

PC_Sp_counted_base **PCPtr<LiImageSource>::operator=<TXTextureDecal>(PC_Sp_counted_base **a1, const PCSharedCount *a2)
{
  var0 = a2->var0;
  *a1 = a2->var0;
  if (var0)
  {
    v4 = &v6;
    PCSharedCount::PCSharedCount(&v6, a2 + 1);
    PCSharedCount::operator=(a1 + 1, &v6);
  }

  else
  {
    v4 = &v7;
    PCSharedCount::PCSharedCount(&v7);
    PCSharedCount::operator=(a1 + 1, &v7);
  }

  PCSharedCount::~PCSharedCount(v4);
  return a1;
}

void sub_25FB02994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void sub_25FB02C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, PCSharedCount a20)
{
  PCSharedCount::~PCSharedCount(v21 + 1);
  PCSharedCount::~PCSharedCount(&a14);
  PCSharedCount::~PCSharedCount(v20 + 1);
  PCSharedCount::~PCSharedCount(&a19);
  _Unwind_Resume(a1);
}

void TXTextLayout::getLiImageSourceForOutline(uint64_t a1, uint64_t a2, uint64_t a3, TXTextObject **a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 1;
  v8 = *(*a4 + 33);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (OZChannel::getValueAsInt((v9 + 30928), MEMORY[0x277CC08F0], 0.0))
  {
    TXTextObject::isEmoji(*a4);
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  else if (!v10)
  {
LABEL_6:
    makeTextObjectRender();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  goto LABEL_6;
}

void sub_25FB031CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, PCSharedCount a22)
{
  PCSharedCount::~PCSharedCount(v23 + 1);
  PCSharedCount::~PCSharedCount(v22 + 1);
  PCSharedCount::~PCSharedCount(&a21);
  _Unwind_Resume(a1);
}

void sub_25FB03718(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v3 + 1);
  PCSharedCount::~PCSharedCount(v4 + 1);
  PCSharedCount::~PCSharedCount(v5 + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount((v6 - 120));
  _Unwind_Resume(a1);
}

void LiImageTransform::LiImageTransform(LiImageTransform *this, LiImageSource *a2)
{
  *(this + 44) = &unk_2872DEA38;
  *(this + 45) = 0;
  *(this + 368) = 1;
  LiImageFilter::LiImageFilter(this, &off_287261EA0);
  *this = &unk_287261D98;
  *(this + 44) = &unk_287261E80;
  *(this + 15) = 0x3FF0000000000000;
  *(this + 10) = 0x3FF0000000000000;
  *(this + 5) = 0x3FF0000000000000;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 36) = 0x3FF0000000000000;
  *(this + 31) = 0x3FF0000000000000;
  *(this + 26) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 10) = _Q1;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  LiClipSet::LiClipSet((this + 304));
  (*(*this + 168))(this, a2);
}

void sub_25FB03930(_Unwind_Exception *a1)
{
  LiClipSet::~LiClipSet((v1 + 304));
  LiImageFilter::~LiImageFilter(v1, v3 + 1);
  *(v1 + 352) = v2;
  *(v1 + 368) = 0;
  PCWeakCount::~PCWeakCount((v1 + 360));
  _Unwind_Resume(a1);
}

double PCMatrix44Tmpl<double>::rightScale(double *a1, double a2, double a3, double a4)
{
  if (a2 != 1.0)
  {
    *a1 = *a1 * a2;
    a1[4] = a1[4] * a2;
    a1[8] = a1[8] * a2;
    a1[12] = a1[12] * a2;
  }

  if (a3 != 1.0)
  {
    a1[1] = a1[1] * a3;
    a1[5] = a1[5] * a3;
    a1[9] = a1[9] * a3;
    a1[13] = a1[13] * a3;
  }

  result = 1.0;
  if (a4 != 1.0)
  {
    a1[2] = a1[2] * a4;
    a1[6] = a1[6] * a4;
    a1[10] = a1[10] * a4;
    result = a1[14] * a4;
    a1[14] = result;
  }

  return result;
}

uint64_t TXGlowFilter::TXGlowFilter(uint64_t a1, void *a2, const OZRenderParams *a3)
{
  *(a1 + 1544) = &unk_2872DEA38;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 1;
  LiCachedGaussianBlur::LiCachedGaussianBlur(a1, off_2871F5640, a2, a3);
  *a1 = &unk_2871F5530;
  *(a1 + 1544) = &unk_2871F5620;
  *(a1 + 1520) = 0;
  PCWorkingColorVector::PCWorkingColorVector((a1 + 1528));
  return a1;
}

void sub_25FB03ADC(_Unwind_Exception *a1)
{
  v4 = v3;
  LiCachedGaussianBlur::~LiCachedGaussianBlur(v1, v4 + 1);
  *(v1 + 1544) = v2;
  *(v1 + 1560) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1552));
  _Unwind_Resume(a1);
}

void sub_25FB03E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11.var0 = va_arg(va1, PC_Sp_counted_base *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  PCSharedCount::~PCSharedCount(v9 + 1);
  PCSharedCount::~PCSharedCount(va);
  PCSharedCount::~PCSharedCount(v8 + 1);
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::buildLighting(TXTextLayout *this, LiGeode *a2, const LiLightSet *a3, const OZRenderParams *a4)
{
  v8 = (*(*this + 304))(this);
  if ((*(*this + 312))(this))
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    OZElement::buildLighting((this + 200), a2, a3, a4);
    if (!(v8 & 1 | (((*(*this + 936))(this, MEMORY[0x277CC08F0]) & 1) == 0)))
    {
      LiGeode::setLit(a2, 0);
    }
  }

  result = (*(*this + 296))(this);
  if (result)
  {

    return LiGeode::setLit(a2, 0);
  }

  return result;
}

uint64_t TXTextLayout::buildMaterials@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OZElement::buildMaterials((a1 + 200), a2, a3, a4, a5);
  if (*(a5 + 101) == 1)
  {
    *(a5 + 104) = OZRenderParams::getTextRenderQuality(a2) == 6;
  }

  result = (*(*a1 + 296))(a1);
  if (result)
  {
    *(a5 + 101) = 1;
  }

  return result;
}

double TXTextLayout::castShadowMaxScale(TXTextLayout *this, const OZRenderParams *a2)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  if ((*(*this + 936))(this, &v6))
  {
    return OZElement::castShadowMaxScale((this + 200), a2);
  }

  TextRenderQuality = OZRenderParams::getTextRenderQuality(a2);
  result = 1.0;
  if (TextRenderQuality == 6)
  {
    return 10.0;
  }

  return result;
}

double TXTextLayout::setShadowBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a1 + 304))(a1))
  {

    *&result = OZElement::setShadowBounds(a1 + 200, a2, a3, a4).n128_u64[0];
  }

  return result;
}

double non-virtual thunk toTXTextLayout::setShadowBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a1 - 200) + 304))())
  {

    *&result = OZElement::setShadowBounds(a1, a2, a3, a4).n128_u64[0];
  }

  return result;
}

uint64_t TXTextLayout::canReflect(TXTextLayout *this)
{
  result = OZElement::canReflect((this + 200));
  if (result)
  {
    v3 = *(*this + 304);

    return v3(this);
  }

  return result;
}

uint64_t non-virtual thunk toTXTextLayout::canReflect(OZElement *this)
{
  result = OZElement::canReflect(this);
  if (result)
  {
    v3 = *(*(this - 25) + 304);

    return v3(this - 200);
  }

  return result;
}

__n128 PCRect<int>::operator|=(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[1].i32[0];
  if (v2 < 0 || (v3 = a1[1].i32[1], v3 < 0))
  {
    result = *a2->i8;
    *a1->i8 = *a2->i8;
  }

  else
  {
    result.n128_u64[0] = a2[1];
    if ((result.n128_u32[0] & 0x80000000) == 0 && (result.n128_u32[1] & 0x80000000) == 0)
    {
      v5 = vmin_s32(*a1, *a2);
      result.n128_u64[0] = vsub_s32(vmax_s32(vadd_s32(__PAIR64__(v3, v2), *a1), vadd_s32(result.n128_u64[0], *a2)), v5);
      *a1 = v5;
      a1[1] = result.n128_u64[0];
    }
  }

  return result;
}

uint64_t TXTextLayout::isColorAnimated(TXTextLayout *this, OZChannelColorNoAlpha *a2, OZChannelPercent *a3, int a4, uint64_t a5, uint64_t a6)
{
  if (!a4 && ((*(*a2 + 552))(a2, 0) & 1) != 0 || ((*(a3->var0 + 69))(a3, 0) & 1) != 0 || !a4 && ((OZBehavior::IsChannelAffectedByBehaviors((a2 + 136), 0) & 1) != 0 || (OZBehavior::IsChannelAffectedByBehaviors((a2 + 288), 0) & 1) != 0 || (OZBehavior::IsChannelAffectedByBehaviors((a2 + 440), 0) & 1) != 0) || (OZBehavior::IsChannelAffectedByBehaviors(a3, 0) & 1) != 0)
  {
    return 1;
  }

  v12 = *(this + 151);
  if (v12 == (this + 1200))
  {
    return 0;
  }

  while (1)
  {
    v13 = v12[2];
    if (v13)
    {
      break;
    }

LABEL_23:
    v12 = v12[1];
    if (v12 == (this + 1200))
    {
      return 0;
    }
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  if (a4 || ((*(*v14 + 616))(v14, a5, 0, 0) & 1) == 0)
  {
    if (((*(*v14 + 616))(v14, a6, 0, 0) & 1) == 0)
    {
      LODWORD(v14) = (*(*v14 + 616))(v14, 1044, 0, 0);
      if (!v15)
      {
LABEL_22:
        if (v14)
        {
          return 1;
        }

        goto LABEL_23;
      }

LABEL_16:
      if (a4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    LODWORD(v14) = 1;
LABEL_15:
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  LODWORD(v14) = 1;
  if (!v15)
  {
    v17 = 0;
    return v14 | v17;
  }

LABEL_17:
  if (TXTextSequenceBehavior::isChannelEnabled(v15, a5))
  {
    goto LABEL_29;
  }

LABEL_18:
  if (!TXTextSequenceBehavior::isChannelEnabled(v15, a6))
  {
    if ((v14 | TXTextSequenceBehavior::isChannelEnabled(v15, 1044)))
    {
      return 1;
    }

    goto LABEL_23;
  }

LABEL_29:
  v17 = 1;
  return v14 | v17;
}

CGColorSpace **TXTextLayout::buildHGNodeForDropShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, __int128 *a10, double *a11, _DWORD *a12, unsigned __int8 a13, char a14)
{
  v14 = MEMORY[0x28223BE20](a1);
  v108 = v15;
  v107 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v14;
  v29 = v28;
  v153 = *MEMORY[0x277D85DE8];
  RequestedColorDescription = LiAgent::getRequestedColorDescription(v21);
  OZEaseInInterpolator::~OZEaseInInterpolator(RequestedColorDescription);
  v32 = v31;
  DynamicRange = FxColorDescription::getDynamicRange(RequestedColorDescription);
  ToneMapMethod = FxColorDescription::getToneMapMethod(RequestedColorDescription);
  PCWorkingColor::PCWorkingColor(&v150, v32, DynamicRange, ToneMapMethod);
  v35 = *v26;
  *&v152.var0.var0 = *v24;
  v152.var0.var3 = v24[2];
  if ((TXTextObject::isDropShadowVisible(v35, &v152, &v150) & 1) == 0)
  {
    *v29 = 0;
    return PCCFRef<CGColorSpace *>::~PCCFRef(&v151);
  }

  v36 = *(*v26 + 264);
  if (!v36)
  {
    v37 = 0;
    goto LABEL_13;
  }

  v106 = v18;
  v38 = *(v36 + 8);
  v37 = *(v36 + 16);
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v38)
  {
LABEL_13:
    *v29 = 0;
    if (!v37)
    {
      return PCCFRef<CGColorSpace *>::~PCCFRef(&v151);
    }

    goto LABEL_110;
  }

  v39 = *v26;
  *&v152.var0.var0 = *v24;
  v152.var0.var3 = v24[2];
  v105 = v37;
  DropShadowDistance = TXTextObject::getDropShadowDistance(v39, &v152);
  v41 = *v26;
  *&v152.var0.var0 = *v24;
  v152.var0.var3 = v24[2];
  DropShadowAngle = TXTextObject::getDropShadowAngle(v41, &v152);
  ScenePixelAspectRatio = OZSceneNode::getScenePixelAspectRatio((v27 + 200));
  v44 = __sincos_stret(DropShadowAngle);
  v149 = 0x3FF0000000000000;
  v146 = 0x3FF0000000000000;
  v143 = 0x3FF0000000000000;
  v140 = 0x3FF0000000000000;
  v141 = 0u;
  v142 = 0u;
  v144 = 0u;
  v145 = 0u;
  v147 = 0u;
  v148 = 0u;
  v45 = DropShadowDistance * v44.__sinval;
  v46 = DropShadowDistance * v44.__cosval;
  v47.f64[0] = v46 * ScenePixelAspectRatio;
  PCMatrix44Tmpl<double>::leftTranslate(&v140, v47, v45, 0.0);
  if (OZChannel::getValueAsInt((v27 + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((v27 + 20464), MEMORY[0x277CC08F0], 0.0) != 4 && LiAgent::haveROI(v22))
  {
    if (OZRenderParams::getTextRenderQuality(v24))
    {
      v48 = a10[5];
      v109[4] = a10[4];
      v109[5] = v48;
      v49 = a10[7];
      v109[6] = a10[6];
      v109[7] = v49;
      v50 = a10[1];
      v109[0] = *a10;
      v109[1] = v50;
      v51 = a10[3];
      v109[2] = a10[2];
      v109[3] = v51;
    }

    else
    {
      LiAgent::getObjectToPixelTransform(v22, v109);
    }

    OZRenderState::OZRenderState(&v152, v24);
    v152.var4 = 1;
    v139 = 0.0;
    v138 = 0.0;
    v52 = *v26;
    v125 = *v24;
    TXTextObject::getDropShadowBlur(v52, &v125, &v139, &v138);
    TXTextObject::getImageBounds(*v26, &v152, &v136);
    v53.f64[0] = v139;
    v53.f64[1] = v138;
    __asm { FMOV            V1.2D, #3.0 }

    v59 = vmulq_f64(v53, _Q1);
    __asm { FMOV            V1.2D, #2.0 }

    v61 = vaddq_f64(v59, _Q1);
    v136 = vsubq_f64(v136, v61);
    v137 = vsubq_f64(v137, vsubq_f64(vnegq_f64(v61), v61));
    v135 = 0.0;
    v134 = 0.0;
    v62 = *v26;
    v125 = *v24;
    TXTextObject::getDropShadowScale(v62, &v125, &v135, &v134, 1);
    v133 = 0x3FF0000000000000;
    v130 = 0x3FF0000000000000;
    v127 = 1.0;
    v125.value = 0x3FF0000000000000;
    *&v125.timescale = 0u;
    v126 = 0u;
    v128 = 0u;
    v129 = 0u;
    v131 = 0u;
    v132 = 0u;
    if (v135 != 1.0)
    {
      *&v125.value = v135;
      *&v125.timescale = v135 * 0.0;
      *&v125.epoch = v135 * 0.0;
      *&v126 = v135 * 0.0;
    }

    if (v134 != 1.0)
    {
      *(&v126 + 1) = v134 * 0.0;
      v127 = v134;
      *&v128 = v134 * 0.0;
      *(&v128 + 1) = v134 * 0.0;
    }

    ValueAsInt = OZChannel::getValueAsInt((v38 + 19528), MEMORY[0x277CC08F0], 0.0);
    v124 = 0x3FF0000000000000;
    v121 = 0x3FF0000000000000;
    v118 = 0x3FF0000000000000;
    v117.f64[0] = 1.0;
    v64.f64[1] = 0.0;
    memset(&v117.f64[1], 0, 32);
    v119 = 0u;
    v120 = 0u;
    v122 = 0u;
    v123 = 0u;
    if (ValueAsInt)
    {
      v64.f64[0] = v46;
      PCMatrix44Tmpl<double>::leftTranslate(&v117, v64, v45, 0.0);
      PCMatrix44Tmpl<double>::operator*(&v117, v109, v110);
      PCMatrix44Tmpl<double>::operator*(v110, a9, &v111);
      PCMatrix44Tmpl<double>::operator*(&v111, v108, v114);
    }

    else
    {
      PCMatrix44Tmpl<double>::operator*(v109, a9, v110);
      PCMatrix44Tmpl<double>::operator*(v110, v108, &v111);
      PCMatrix44Tmpl<double>::operator*(&v111, &v140, v114);
    }

    PCMatrix44Tmpl<double>::operator*(v114, &v125.value, v116);
    LiAgent::getROI(v22, v114);
    v65.i64[0] = v114[0].n128_i32[0];
    v65.i64[1] = v114[0].n128_i32[1];
    v111 = vcvtq_f64_s64(v65);
    v112 = v114[0].n128_i32[2];
    v113 = v114[0].n128_i32[3];
    if ((v114[0].n128_u32[2] & 0x80000000) == 0 && (v114[0].n128_u32[3] & 0x80000000) == 0)
    {
      LiImagePolygon::LiImagePolygon(v114);
      LiImagePolygon::set(v114, v136.f64, 0);
      liTransformAndClip(v111.f64, v116[0].i64, v114);
      if (((v115[1] - *v115) & 0x1FFFFFFFE0) == 0)
      {
        *v29 = 0;
        LiImagePolygon::~LiImagePolygon(v114);
        if (!v37)
        {
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v151);
        }

        goto LABEL_110;
      }

      LiImagePolygon::~LiImagePolygon(v114);
    }
  }

  v66 = OZChannel::getValueAsInt((v38 + 13976), MEMORY[0x277CC08F0], 0.0);
  isColorAnimated = TXTextLayout::isColorAnimated(v27, (v38 + 14232), (v38 + 18040), v66, 1021, 1022);
  v136.f64[0] = 0.0;
  PCWorkingColorVector::PCWorkingColorVector(v116);
  v114[0] = xmmword_260343AA0;
  v139 = 1.0;
  v138 = 1.0;
  v68 = LiAgent::getRequestedColorDescription(v22);
  v111 = 0uLL;
  v135 = 0.0;
  LOBYTE(v103) = a13;
  if (TXTextLayout::getCachedTextureOrImage(v27, *v26, v24, v22, 3u, isColorAnimated, a9, a10, v116, &v139, &v138, v114, v103, &v111, &v135, a14))
  {
    TXTextLayout::makeHGTextureOrBitmapNode(v24, &v111, &v135, v114, v22, a13, &v152);
    var0 = v152.var0.var0;
    if (*&v136.f64[0] == v152.var0.var0)
    {
      if (*&v136.f64[0])
      {
        (*(*v152.var0.var0 + 24))(v152.var0.var0);
      }
    }

    else
    {
      if (*&v136.f64[0])
      {
        (*(**&v136.f64[0] + 24))();
      }

      *&v136.f64[0] = var0;
      v152.var0.var0 = 0;
    }

    v70 = a11;
    *a11 = 1.0 / v139;
    a11[5] = 1.0 / v138;
    v152.var7.var0[1][2] = 1.0;
    v152.var7.var0[0][1] = 1.0;
    v152.var3 = 1.0;
    v152.var0.var0 = 0x3FF0000000000000;
    memset(&v152.var0.var1, 0, 32);
    memset(&v152.var4, 0, 32);
    memset(&v152.var7.var0[0][2], 0, 32);
    if (!*v20)
    {
      PCMatrix44Tmpl<double>::operator*(a10, a9, &v125);
      PCMatrix44Tmpl<double>::operator*(&v125, v108, v109);
      for (i = 0; i != 8; i += 2)
      {
        v72 = (&v152.var0.var0 + i * 16);
        v73 = v109[i + 1];
        *v72 = v109[i];
        v72[1] = v73;
      }

      if (!OZChannel::getValueAsInt((v38 + 19528), MEMORY[0x277CC08F0], 0.0))
      {
        PCMatrix44Tmpl<double>::rightMult(&v152, &v140);
      }

      PCMatrix44Tmpl<double>::rightMult(&v152, a11);
    }

    if (!PCMatrix44Tmpl<double>::isIdentity(&v152.var0.var0))
    {
      v74.i64[0] = v114[0].n128_i32[2];
      v74.i64[1] = v114[0].n128_i32[3];
      __asm { FMOV            V2.2D, #0.5 }

      v76 = vmulq_f64(vcvtq_f64_s64(v74), _Q2);
      v74.i64[0] = v114[0].n128_i32[0];
      v74.i64[1] = v114[0].n128_i32[1];
      v125.value = vcvt_f32_f64(vaddq_f64(v76, vcvtq_f64_s64(v74)));
      LiAgent::makeHeliumXForm(v22, &v152, &v136, v109);
      v77 = *v109;
      if (*&v136.f64[0] == *&v109[0])
      {
        if (*&v136.f64[0])
        {
          (*(**&v109[0] + 24))(*&v109[0]);
        }
      }

      else
      {
        if (*&v136.f64[0])
        {
          (*(**&v136.f64[0] + 24))();
          v77 = *v109;
        }

        v136.f64[0] = v77;
      }
    }

    if ((TXTextObject::isEmoji(*v26) & isColorAnimated) != 1)
    {
      goto LABEL_71;
    }

    if (a12)
    {
      *a12 = 1065353216;
    }

    v78.n128_u32[0] = v150.n128_u32[3];
    if (v150.n128_f32[3] == 1.0 || (v104 - 1) >= 2)
    {
      if (v104)
      {
        goto LABEL_64;
      }

      v79 = COERCE_DOUBLE(HGObject::operator new(0x200uLL));
      HgcTXColor::HgcTXColor(*&v79);
    }

    else
    {
      if (a12)
      {
        *a12 = v150.n128_u32[3];
        v79 = v136.f64[0];
        if (*&v136.f64[0])
        {
          (*(**&v136.f64[0] + 16))(*&v136.f64[0], v78.n128_f32[0]);
          goto LABEL_66;
        }

LABEL_71:
        if (*v20)
        {
          if (OZChannel::getValueAsInt((v38 + 13976), MEMORY[0x277CC08F0], 0.0) == 2)
          {
            v80 = TXTextStyle::hasTexture(v38, (v38 + 16448));
          }

          else
          {
            v80 = 0;
          }

          **v20 = v106;
          if (OZChannel::getValueAsInt((v38 + 19528), MEMORY[0x277CC08F0], 0.0))
          {
            LiAgent::getObjectToPixelTransform(v22, &v117);
            v81 = v106;
            PCMatrix44Tmpl<double>::operator*(&v140, &v117, &v125);
            PCMatrix44Tmpl<double>::operator*(&v125, a9, v109);
            PCMatrix44Tmpl<double>::operator*(v109, v108, &v152);
            v82 = *v20;
            v83 = (*v20 + 8);
            if (&v152 != v83)
            {
              v84 = 0;
              v85 = &v152;
              do
              {
                for (j = 0; j != 32; j += 8)
                {
                  *(&v83->var0.var0 + j) = *(&v85->var0.var0 + j);
                }

                ++v84;
                v83 = (v83 + 32);
                v85 = (v85 + 32);
              }

              while (v84 != 4);
            }
          }

          else
          {
            LiAgent::getObjectToPixelTransform(v22, &v117);
            v81 = v106;
            PCMatrix44Tmpl<double>::operator*(&v117, a9, &v125);
            PCMatrix44Tmpl<double>::operator*(&v125, v108, v109);
            PCMatrix44Tmpl<double>::operator*(v109, &v140, &v152);
            v82 = *v20;
            v87 = (*v20 + 8);
            if (&v152 != v87)
            {
              v88 = 0;
              v89 = &v152;
              do
              {
                for (k = 0; k != 32; k += 8)
                {
                  *(&v87->var0.var0 + k) = *(&v89->var0.var0 + k);
                }

                ++v88;
                v87 = (v87 + 32);
                v89 = (v89 + 32);
              }

              while (v88 != 4);
            }
          }

          v91 = v82 + 66;
          if (v82 + 66 != a11)
          {
            for (m = 0; m != 4; ++m)
            {
              for (n = 0; n != 32; n += 8)
              {
                *&v91[n / 4] = v70[n / 8];
              }

              v91 += 8;
              v70 += 4;
            }
          }

          v94 = 0;
          *(v82 + 465) = 1;
          v152.var7.var0[1][2] = 1.0;
          v152.var7.var0[0][1] = 1.0;
          v152.var3 = 1.0;
          v152.var0.var0 = 0x3FF0000000000000;
          memset(&v152.var0.var1, 0, 32);
          memset(&v152.var7.var0[0][2], 0, 32);
          memset(&v152.var4, 0, 32);
          do
          {
            v95 = &v82[v94 + 34];
            *v95 = *(&v152.var0.var0 + v94 * 4);
            v95[1] = *(&v152.var0.var3 + v94 * 4);
            v94 += 8;
          }

          while (v94 != 32);
          if (v107)
          {
            *(v82 + 98) = v116[0];
          }

          else
          {
            PCHashWriteStream::PCHashWriteStream(&v152);
            PCHashWriteStream::writeValue(&v152, v81);
            PCHashWriteStream::close(&v152);
            PCWorkingColorVector::PCWorkingColorVector(v109);
            Hash = PCHashWriteStream::getHash(&v152);
            v109[0] = *Hash->i8;
            *(*v20 + 392) = *Hash->i8;
            PCHashWriteStream::~PCHashWriteStream(&v152);
          }

          v97 = *v20;
          *(*v20 + 456) = 1;
          v99 = *v26;
          v98 = *(v26 + 8);
          if (v98)
          {
            atomic_fetch_add_explicit((v98 + 8), 1uLL, memory_order_relaxed);
          }

          v100 = *(v97 + 480);
          *(v97 + 472) = v99;
          *(v97 + 480) = v98;
          if (v100)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v100);
          }

          PCWorkingColor::operator=((*v20 + 408), &v150);
          v101 = *v20;
          *(v101 + 460) = 3;
          *(v101 + 464) = v80;
        }

        *v29 = *&v136.f64[0];
        v136.f64[0] = 0.0;
        goto LABEL_103;
      }

      v79 = COERCE_DOUBLE(HGObject::operator new(0x200uLL));
      HgcTXAlpha::HgcTXAlpha(*&v79);
    }

    if (v79 != 0.0)
    {
      (*(**&v79 + 120))(COERCE_FLOAT64_T(*&v79), 0, *&v136.f64[0]);
      LODWORD(v152.var0.var0) = 0;
      LODWORD(v109[0]) = 0;
      LODWORD(v125.value) = 0;
      LODWORD(v117.f64[0]) = 0;
      PCWorkingColor::getRGBA(&v150, &v152, v109, &v125, &v117);
      (*(**&v79 + 96))(COERCE_FLOAT64_T(*&v79), 0, *&v152.var0.var0, *v109, *&v125.value, *v117.f64);
      goto LABEL_66;
    }

LABEL_64:
    v79 = v136.f64[0];
    if (!*&v136.f64[0])
    {
      goto LABEL_71;
    }

    (*(**&v136.f64[0] + 16))(*&v136.f64[0], v78);
LABEL_66:
    if (*&v136.f64[0] == *&v79)
    {
      (*(**&v79 + 24))(COERCE_FLOAT64_T(*&v79));
    }

    else
    {
      if (*&v136.f64[0])
      {
        (*(**&v136.f64[0] + 24))();
      }

      v136.f64[0] = v79;
    }

    goto LABEL_71;
  }

  *&v125.timescale = 0u;
  v126 = 0u;
  *&v125.value = v139;
  v127 = v138;
  v128 = 0u;
  v129 = 0u;
  v131 = 0u;
  v132 = 0u;
  v130 = 0x3FF0000000000000;
  v133 = 0x3FF0000000000000;
  if (fabs(v139) >= 0.0000001 && fabs(v138) >= 0.0000001)
  {
    LOBYTE(v134) = 0;
    TXTextLayout::getLiImageSourceForDropShadow(v27, v24, v68, v26, &v150, &v134);
  }

  *v29 = 0;
LABEL_103:
  if (v135 != 0.0)
  {
    (*(**&v135 + 24))(COERCE_DOUBLE(*&v135));
  }

  v37 = v105;
  if (*&v111.f64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v111.f64[1]);
  }

  if (*&v136.f64[0])
  {
    (*(**&v136.f64[0] + 24))(*&v136.f64[0]);
  }

  if (v105)
  {
LABEL_110:
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v151);
}

void sub_25FB0573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HGObject::operator delete(v68);
  if (STACK[0x458])
  {
    (*(*STACK[0x458] + 24))(STACK[0x458]);
  }

  if (a68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a68);
  }

  if (STACK[0x460])
  {
    (*(*STACK[0x460] + 24))(STACK[0x460]);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&STACK[0x528]);
  _Unwind_Resume(a1);
}

CGColorSpace **TXTextLayout::buildHGNodeForGlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, _OWORD *a10, uint64_t a11, _DWORD *a12, unsigned __int8 a13)
{
  v13 = MEMORY[0x28223BE20](a1);
  v104 = v15;
  v105 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v13;
  v28 = v27;
  v148 = *MEMORY[0x277D85DE8];
  RequestedColorDescription = LiAgent::getRequestedColorDescription(v20);
  OZEaseInInterpolator::~OZEaseInInterpolator(RequestedColorDescription);
  v31 = v30;
  DynamicRange = FxColorDescription::getDynamicRange(RequestedColorDescription);
  ToneMapMethod = FxColorDescription::getToneMapMethod(RequestedColorDescription);
  PCWorkingColor::PCWorkingColor(&v145, v31, DynamicRange, ToneMapMethod);
  v144 = 0.0;
  v143 = 0.0;
  v34 = *v25;
  *&v147.var0.var0 = *v23;
  v147.var0.var3 = v23[2];
  if (TXTextObject::isGlowVisible(v34, &v147, &v145, &v144, &v143))
  {
    v142 = 0.0;
    v141 = 0.0;
    v35 = *v25;
    *&v147.var0.var0 = *v23;
    v147.var0.var3 = v23[2];
    TXTextObject::getGlowOffset(v35, &v147, &v142, &v141, 1);
    if (OZChannel::getValueAsInt((v26 + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((v26 + 20464), MEMORY[0x277CC08F0], 0.0) != 4 && LiAgent::haveROI(v21))
    {
      if (OZRenderParams::getTextRenderQuality(v23))
      {
        v36 = a10[5];
        v108[4] = a10[4];
        v108[5] = v36;
        v37 = a10[7];
        v108[6] = a10[6];
        v108[7] = v37;
        v38 = a10[1];
        v108[0] = *a10;
        v108[1] = v38;
        v39 = a10[3];
        v108[2] = a10[2];
        v108[3] = v39;
      }

      else
      {
        LiAgent::getObjectToPixelTransform(v21, v108);
      }

      OZRenderState::OZRenderState(&v147, v23);
      v147.var4 = 1;
      TXTextObject::getImageBounds(*v25, &v147, &v139);
      v40.f64[0] = v144;
      v40.f64[1] = v143;
      __asm { FMOV            V1.2D, #3.0 }

      v45 = vmulq_f64(v40, _Q1);
      __asm { FMOV            V1.2D, #2.0 }

      v47 = vaddq_f64(v45, _Q1);
      v139 = vsubq_f64(v139, v47);
      v140 = vsubq_f64(v140, vsubq_f64(vnegq_f64(v47), v47));
      *&v113 = 0;
      v111 = 0.0;
      v48 = *v25;
      *v129 = *v23;
      *&v129[16] = v23[2];
      TXTextObject::getGlowScale(v48, v129, &v113, &v111, 1);
      v138 = 0.0;
      v137 = 0.0;
      v136 = 0.0;
      v49 = *v25;
      *v129 = *v23;
      *&v129[16] = v23[2];
      TXTextObject::getPivot(v49, &v138, &v137, &v136, v129, 1);
      v135 = 0x3FF0000000000000;
      v132 = 0x3FF0000000000000;
      memset(&v129[8], 0, 32);
      v130 = 0u;
      v131 = 0u;
      v133 = 0u;
      v134 = 0u;
      *&v129[40] = 0x3FF0000000000000;
      *v129 = 0x3FF0000000000000;
      v50 = PCMatrix44Tmpl<double>::leftTranslate(v129, COERCE_UNSIGNED_INT64(-v138), -v137, 0.0);
      if (*&v113 != 1.0)
      {
        *v129 = vmulq_n_f64(*v129, *&v113);
        *&v129[16] = vmulq_n_f64(*&v129[16], *&v113);
      }

      if (v111 != 1.0)
      {
        v50 = vmulq_n_f64(v130, v111);
        *&v129[32] = vmulq_n_f64(*&v129[32], v111);
        v130 = v50;
      }

      v50.f64[0] = v138;
      v51 = PCMatrix44Tmpl<double>::leftTranslate(v129, v50, v137, 0.0);
      v51.f64[0] = v142;
      PCMatrix44Tmpl<double>::leftTranslate(v129, v51, v141, 0.0);
      PCMatrix44Tmpl<double>::operator*(v108, a9, v114);
      PCMatrix44Tmpl<double>::operator*(v114, v104, v117);
      PCMatrix44Tmpl<double>::operator*(v117, v129, &v119);
      LiAgent::getROI(v21, v117);
      v52.i64[0] = v117[0].n128_i32[0];
      v52.i64[1] = v117[0].n128_i32[1];
      *v114 = vcvtq_f64_s64(v52);
      v115 = v117[0].n128_i32[2];
      v116 = v117[0].n128_i32[3];
      if ((v117[0].n128_u32[2] & 0x80000000) == 0 && (v117[0].n128_u32[3] & 0x80000000) == 0)
      {
        LiImagePolygon::LiImagePolygon(v117);
        LiImagePolygon::set(v117, v139.f64, 0);
        liTransformAndClip(v114, &v119, v117);
        if (((v118[1] - *v118) & 0x1FFFFFFFE0) == 0)
        {
          *v28 = 0.0;
          LiImagePolygon::~LiImagePolygon(v117);
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v146);
        }

        LiImagePolygon::~LiImagePolygon(v117);
      }
    }

    v101 = v17;
    v102 = v19;
    v106 = v23;
    v107 = v25;
    v103 = v28;
    v53 = *(v26 + 1208);
    if (v53 == v26 + 1200)
    {
LABEL_24:
      v57 = 1;
    }

    else
    {
      while (1)
      {
        v54 = *(v53 + 16);
        if (v54)
        {
          if (v55)
          {
            if ((*(*v55 + 616))(v55, 1017, 0, 0))
            {
              break;
            }
          }

          if (v56 && TXTextSequenceBehavior::isChannelEnabled(v56, 1017))
          {
            break;
          }
        }

        v53 = *(v53 + 8);
        if (v53 == v26 + 1200)
        {
          goto LABEL_24;
        }
      }

      v57 = 0;
    }

    v58 = *(*v107 + 33);
    v59 = *(v58 + 8);
    v60 = *(v58 + 16);
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ValueAsInt = OZChannel::getValueAsInt((v59 + 31208), MEMORY[0x277CC08F0], 0.0);
    v138 = 0.0;
    PCWorkingColorVector::PCWorkingColorVector(&v139);
    v135 = 0x3FF0000000000000;
    v132 = 0x3FF0000000000000;
    *&v129[40] = 0x3FF0000000000000;
    *v129 = 0x3FF0000000000000;
    memset(&v129[8], 0, 32);
    v130 = 0u;
    v131 = 0u;
    v133 = 0u;
    v134 = 0u;
    OZChannel::getValueAsDouble((v26 + 60520), MEMORY[0x277CC08F0], 0.0);
    if (v62.f64[0] >= 4.0 || ValueAsInt == 0)
    {
      v62.f64[0] = v142;
      PCMatrix44Tmpl<double>::leftTranslate(v129, v62, v141, 0.0);
    }

    v113 = xmmword_260343AA0;
    v137 = 1.0;
    v136 = 1.0;
    v64 = LiAgent::getRequestedColorDescription(v21);
    v65 = a11;
    if (!v57)
    {
      LOBYTE(v111) = 0;
      TXTextLayout::getLiImageSourceForGlow(v26, v106, v64, v107, &v145, &v111);
    }

    v111 = 0.0;
    v112 = 0;
    v110 = 0;
    LOBYTE(v100) = a13;
    if (TXTextLayout::getCachedTextureOrImage(v26, *v107, v106, v21, 2u, 1, a9, a10, &v139, &v137, &v136, &v113, v100, &v111, &v110, 1))
    {
      TXTextLayout::makeHGTextureOrBitmapNode(v106, &v111, &v110, &v113, v21, a13, &v147);
      var0 = v147.var0.var0;
      if (*&v138 == v147.var0.var0)
      {
        if (v138 != 0.0)
        {
          (*(*v147.var0.var0 + 24))(v147.var0.var0);
        }
      }

      else
      {
        if (v138 != 0.0)
        {
          (*(**&v138 + 24))();
        }

        v138 = *&var0;
        v147.var0.var0 = 0;
      }

      *a11 = 1.0 / v137;
      *(a11 + 40) = 1.0 / v136;
      v147.var7.var0[1][2] = 1.0;
      v147.var7.var0[0][1] = 1.0;
      v147.var3 = 1.0;
      v147.var0.var0 = 0x3FF0000000000000;
      memset(&v147.var0.var1, 0, 32);
      memset(&v147.var4, 0, 32);
      memset(&v147.var7.var0[0][2], 0, 32);
      if (!*v105)
      {
        PCMatrix44Tmpl<double>::operator*(a10, a9, v114);
        PCMatrix44Tmpl<double>::operator*(v114, v104, v117);
        PCMatrix44Tmpl<double>::operator*(v117, v129, &v119);
        PCMatrix44Tmpl<double>::operator*(&v119, a11, v108);
        for (i = 0; i != 8; i += 2)
        {
          v68 = (&v147.var0.var0 + i * 16);
          v69 = v108[i + 1];
          *v68 = v108[i];
          v68[1] = v69;
        }
      }

      if (!PCMatrix44Tmpl<double>::isIdentity(&v147.var0.var0))
      {
        v70.i64[0] = SDWORD2(v113);
        v70.i64[1] = SHIDWORD(v113);
        __asm { FMOV            V2.2D, #0.5 }

        v72 = vmulq_f64(vcvtq_f64_s64(v70), _Q2);
        v70.i64[0] = v113;
        v70.i64[1] = SDWORD1(v113);
        *&v119 = vcvt_f32_f64(vaddq_f64(v72, vcvtq_f64_s64(v70)));
        LiAgent::makeHeliumXForm(v21, &v147, &v138, v108);
        v73 = *v108;
        if (*&v138 == *&v108[0])
        {
          if (v138 != 0.0)
          {
            (*(**&v108[0] + 24))(*&v108[0]);
          }
        }

        else
        {
          if (v138 != 0.0)
          {
            (*(**&v138 + 24))();
            v73 = *v108;
          }

          v138 = v73;
        }
      }

      if (v110)
      {
        (*(*v110 + 24))(v110);
      }

      if (v112)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v112);
      }

      WorkingColorSpace = OZRenderParams::getWorkingColorSpace(v106);
      PCWorkingColor::WHITE(WorkingColorSpace, &v147);
      v75 = operator!=(&v145, &v147);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v147.var0.var3);
      if (v75 && v145.n128_f32[3] != 1.0)
      {
        if (a12)
        {
          *a12 = v145.n128_u32[3];
        }

        else
        {
          *&v76 = COERCE_DOUBLE(HGObject::operator new(0x200uLL));
          HgcTXAlpha::HgcTXAlpha(v76);
          if (*&v76 != 0.0)
          {
            (*(*v76 + 120))(v76, 0, COERCE_DOUBLE(*&v138));
            LODWORD(v147.var0.var0) = 0;
            LODWORD(v108[0]) = 0;
            LODWORD(v119) = 0;
            v117[0].n128_u32[0] = 0;
            PCWorkingColor::getRGBA(&v145, &v147, v108, &v119, v117);
            (*(*v76 + 96))(v76, 0, *&v147.var0.var0, *v108, *&v119, v117[0].n128_f32[0]);
            if (*&v138 != v76)
            {
              if (v138 != 0.0)
              {
                (*(**&v138 + 24))();
              }

              v138 = *&v76;
              (*(*v76 + 16))(v76);
            }

            (*(*v76 + 24))(v76);
          }
        }
      }

      if (*v105)
      {
        v77 = *(*v107 + 33);
        if (v77)
        {
          v78 = *(v77 + 8);
          v79 = *(v77 + 16);
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v78 = 0;
          v79 = 0;
        }

        if (OZChannel::getValueAsInt((v78 + 31208), MEMORY[0x277CC08F0], 0.0) == 2)
        {
          v80 = TXTextStyle::hasTexture(v78, (v78 + 33680));
        }

        else
        {
          v80 = 0;
        }

        **v105 = v102;
        LiAgent::getObjectToPixelTransform(v21, v117);
        PCMatrix44Tmpl<double>::operator*(v117, a9, &v119);
        PCMatrix44Tmpl<double>::operator*(&v119, v104, v108);
        PCMatrix44Tmpl<double>::operator*(v108, v129, &v147);
        v81 = *v105;
        v82 = (*v105 + 8);
        if (&v147 != v82)
        {
          v83 = 0;
          v84 = &v147;
          do
          {
            for (j = 0; j != 32; j += 8)
            {
              *(&v82->var0.var0 + j) = *(&v84->var0.var0 + j);
            }

            ++v83;
            v82 = (v82 + 32);
            v84 = (v84 + 32);
          }

          while (v83 != 4);
        }

        v86 = v81 + 66;
        if (v81 + 66 != a11)
        {
          for (k = 0; k != 4; ++k)
          {
            for (m = 0; m != 8; m += 2)
            {
              *&v86[m] = *(v65 + m * 4);
            }

            v86 += 8;
            v65 += 32;
          }
        }

        *(v81 + 465) = 1;
        if (v101)
        {
          *&v108[0] = 0;
          v119 = 0.0;
          *&v147.var0.var0 = v139;
          v89 = v107;
          *(v81 + 98) = v139;
        }

        else
        {
          PCHashWriteStream::PCHashWriteStream(&v147);
          PCHashWriteStream::writeValue(&v147, v102);
          v89 = v107;
          PCHashWriteStream::close(&v147);
          PCWorkingColorVector::PCWorkingColorVector(v108);
          Hash = PCHashWriteStream::getHash(&v147);
          v108[0] = *Hash->i8;
          *(*v105 + 392) = *Hash->i8;
          PCHashWriteStream::~PCHashWriteStream(&v147);
        }

        v91 = 0;
        v147.var7.var0[1][2] = 1.0;
        v147.var7.var0[0][1] = 1.0;
        v147.var3 = 1.0;
        v147.var0.var0 = 0x3FF0000000000000;
        memset(&v147.var0.var1, 0, 32);
        memset(&v147.var7.var0[0][2], 0, 32);
        v92 = *v105;
        v93 = *v105 + 136;
        memset(&v147.var4, 0, 32);
        do
        {
          v94 = (v93 + v91);
          *v94 = *(&v147.var0.var0 + v91);
          v94[1] = *(&v147.var0.var3 + v91);
          v91 += 32;
        }

        while (v91 != 128);
        *(v92 + 456) = 1;
        v96 = *v89;
        v95 = v89[1];
        if (v95)
        {
          atomic_fetch_add_explicit(v95 + 1, 1uLL, memory_order_relaxed);
        }

        v97 = *(v92 + 480);
        *(v92 + 472) = v96;
        *(v92 + 480) = v95;
        if (v97)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        }

        PCWorkingColor::operator=((*v105 + 408), &v145);
        v98 = *v105;
        *(v98 + 460) = 2;
        *(v98 + 464) = v80;
        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }
      }

      *v103 = v138;
    }

    else
    {
      v120 = 0u;
      v121 = 0u;
      v119 = v137;
      v122 = v136;
      v123 = 0u;
      v124 = 0u;
      v126 = 0u;
      v127 = 0u;
      v125 = 0x3FF0000000000000;
      v128 = 0x3FF0000000000000;
      if (fabs(v137) >= 0.0000001 && fabs(v136) >= 0.0000001)
      {
        v109 = 0;
        TXTextLayout::getLiImageSourceForGlow(v26, v106, v64, v107, &v145, &v109);
      }

      *v103 = 0.0;
      if (v110)
      {
        (*(*v110 + 24))(v110);
      }

      if (v112)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v112);
      }

      if (v138 != 0.0)
      {
        (*(**&v138 + 24))(COERCE_DOUBLE(*&v138));
      }
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }
  }

  else
  {
    *v28 = 0.0;
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v146);
}