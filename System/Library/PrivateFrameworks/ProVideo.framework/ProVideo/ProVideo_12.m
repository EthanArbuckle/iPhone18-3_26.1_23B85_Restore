void TXTextInput::rebuildTextFromBehavior(TXTextInput *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v18, v2);
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(this + 2381, &v15, 1);
  v3 = v16;
  if (v16 != &v15)
  {
    while (1)
    {
      v4 = v3[2];
      if (v4)
      {
        if (v5)
        {
          v6 = v5;
          if (OZBehavior::isEnabledAndUseBehaviors(v5))
          {
            v13 = 0.0;
            *v14 = 0;
            Widget = OZRigBehavior::getWidget(v6);
            v8 = (*(*(this + 25) + 1464))(this + 200);
            v9 = (*(*v8 + 264))(v8);
            OZScene::getCurrentTime(v9, &v12);
            OZRigWidget::getCurrentSnapshotIDs(Widget, &v12, &v14[1], v14, &v13);
            ChannelForSnapshot = OZRigBehavior::getChannelForSnapshot(v6, v14[1]);
            if (ChannelForSnapshot)
            {
              if (v11)
              {
                break;
              }
            }
          }
        }
      }

      v3 = v3[1];
      if (v3 == &v15)
      {
        goto LABEL_8;
      }
    }

    (*(*v11 + 848))(&v12);
    TXTextLayout::setString(this, &v12, 1);
    PCString::~PCString(&v12);
  }

LABEL_8:
  std::__list_imp<unsigned int>::clear(&v15);
  TXTextInput::rebuildTextFromCurrentStringChannelState(this);
  OZLockingGroup::WriteSentry::~WriteSentry(v18);
}

void sub_25FAC62E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  PCString::~PCString(&a10);
  std::__list_imp<unsigned int>::clear(&a15);
  OZLockingGroup::WriteSentry::~WriteSentry(&a18);
  _Unwind_Resume(a1);
}

void non-virtual thunk toTXTextInput::cloneBehaviorsEffects(TXTextInput *this, const OZSceneNode *a2, unsigned int a3)
{
  v4 = (this - 200);
  TXTextLayout::cloneBehaviorsEffects((this - 200), a2, a3);
  if (*(this + 64216) == 1)
  {

    TXTextInput::rebuildTextFromBehavior(v4);
  }
}

void TXTextInput::getBoundsForHitCheck(uint64_t a1, float64x2_t *a2, CMTime *a3)
{
  if (OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) && OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) != 2 || (StringPtr = TXChannelString::getStringPtr((a1 + 19048)), PCString::size(StringPtr)) && !TXTextLayout::isAllWhitespace(a1))
  {
    (*(*(a1 + 200) + 1488))(a1 + 200, a2, a3);
  }

  else
  {
    TXTextLayout::getCurrentStyleForInsertion(a1, &v21);
    v20 = *a3;
    Size = TXTextStyle::getSize(v21, &v20, 0.0);
    AlignmentAtCursor = TXTextLayout::getAlignmentAtCursor(a1);
    isVerticalLayout = TXTextLayout::isVerticalLayout(a1);
    v10 = Size;
    v11 = Size * 6.0;
    v12 = Size / -3.0;
    v13 = 0.0;
    if (AlignmentAtCursor == 1.0)
    {
      v14 = v11 * -0.5;
    }

    else
    {
      v14 = 0.0;
    }

    if (AlignmentAtCursor == 2.0)
    {
      v15 = -v11;
    }

    else
    {
      v15 = v14;
    }

    if (AlignmentAtCursor == 1.0)
    {
      v13 = v11 * -0.5;
    }

    if (AlignmentAtCursor == 0.0)
    {
      v13 = -v11;
    }

    if (isVerticalLayout)
    {
      v15 = v10 * -0.5;
      v12 = v13;
      v16 = Size;
    }

    else
    {
      v16 = Size * 6.0;
    }

    if (isVerticalLayout)
    {
      v10 = Size * 6.0;
    }

    a2->f64[0] = v15;
    a2->f64[1] = v12;
    a2[1].f64[0] = v16;
    a2[1].f64[1] = v10;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  if (OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 3)
  {
    ScrollPositionInPixels = TXTextLayout::getScrollPositionInPixels(a1);
    v18.f64[0] = 0.0;
    v18.f64[1] = ScrollPositionInPixels + 0.0;
    v19 = vaddq_f64(v18, *a2);
LABEL_26:
    *a2 = v19;
    return;
  }

  if (OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v19 = vaddq_f64(*a2, COERCE_UNSIGNED_INT64(TXTextLayout::getScrollPositionInPixels(a1) + 0.0));
    goto LABEL_26;
  }
}

void sub_25FAC65B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextInput::behaviorChangedState(TXTextInput *this, OZBehavior *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v6 = this + 19048;
  if ((!v4 || OZSingleChannelBehavior::getChanBase(v4) != v6) && (!v5 || OZSingleChannelBehavior::getChanBase(v5) != v6))
  {
    return 0;
  }

  TXTextInput::rebuildTextFromBehavior(this);
  return 1;
}

uint64_t *TXTextInput::updateLinkedObjects(TXTextInput *this)
{
  result = (*(*(this + 25) + 272))();
  if (result)
  {
    v3 = result;
    memset(v20, 0, sizeof(v20));
    memset(v19, 0, 24);
    v21 = 1065353216;
    memset(v17, 0, sizeof(v17));
    memset(v16, 0, 24);
    v18 = 1065353216;
    OZScene::begin_t<TXTextInput,false,true>(result, v12);
    *v19 = *v12;
    *&v19[9] = *&v12[9];
    v21 = v15;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v20, v14, 0);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v13);
    v4 = v3[151];
    v13 = 0u;
    v14 = 0u;
    v15 = 1065353216;
    *v12 = v3 + 150;
    *&v12[8] = v4;
    *&v12[16] = v3 + 150;
    v12[24] = 0;
    *v16 = *v12;
    *&v16[9] = *&v12[9];
    v18 = 1065353216;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v17, 0, 0);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v13);
    while (*v19 != *v16)
    {
      if (*v19 == *&v19[16] || (v5 = *(*v19 + 16)) == 0)
      {
        v6 = 0;
      }

      else
      {
      }

      if (v6 != this)
      {
        for (i = *(v6 + 151); i != (v6 + 1200); i = i[1])
        {
          v8 = i[2];
          if (v8)
          {
            if (v9)
            {
              v10 = v9;
              if (OZBehavior::isEnabledAndUseBehaviors(v9))
              {
                SourceChannel = OZLinkBehavior::getSourceChannel(v10);
                if (SourceChannel)
                {
                  {
                    TXTextInput::rebuildTextFromBehavior(v6);
                  }
                }
              }
            }
          }
        }
      }

      OZObject::iterator_t<TXTextInput,false,true,OZObject::defaultValidator>::operator++(v19);
    }

    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v17);
    return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
  }

  return result;
}

void sub_25FAC6998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v33 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a23);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a33);
  _Unwind_Resume(a1);
}

uint64_t *OZScene::begin_t<TXTextInput,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<TXTextInput,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<TXTextInput,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<TXTextInput,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<TXTextInput,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<TXTextInput,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t TXTextInput::setText(TXTextInput *this, CMTime *a2, PCString *a3)
{
  v11 = *a2;
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  v7 = PCString::size(StringPtr);
  TXTextInput::deleteTextHelper(this, &v11, 0, v7);
  v11 = *a2;
  v9 = 0;
  v10 = 0;
  TXTextInput::insertHelper(this, &v11, 0, a3, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return (*(*this + 1240))(this);
}

void sub_25FAC6C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXTextInput::deleteTextHelper(TXTextInput *this, CMTime *a2, unsigned int a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    TXChannelString::getString(this + 2381, &v13);
    if (PCString::size(&v13) >= a3)
    {
      if (v4 + a3 > PCString::size(&v13))
      {
        v4 = PCString::size(&v13) - a3;
      }

      PCString::erase(&v13, a3, v4);
      TXTextLayout::setString(this, &v13, 0);
      TXTextLayout::updateParagraphStylesAfterTextDelete(this, a3, v4);
      TXTextLayout::updateStyleRunsAfterTextDelete(this, a3, v4);
      TXTextLayout::updateDisplayString(this, a2);
      *(this + 19320) = 0;
      TXTextLayout::updateKerningsAfterTextDeletion(this, a3, v4);
      TXTextLayout::resetName(this);
      if (TXTextLayout::shouldScaleToBothMargins(this) && (*(*this + 1144))(this))
      {
        OZChannel::setInitialValue((this + 61464), 1.0, 1);
      }

      OZRenderState::OZRenderState(&v12);
      v8 = (*(*(this + 25) + 272))(this + 200);
      if (v8)
      {
        OZScene::getCurrentTime(v8, &v10);
        *&v12.var0.var0 = v10;
        v12.var0.var3 = v11;
      }

      TXTextLayout::doLayout(this, &v12, 0);
      OZChannelBase::setRangeName(this, (v4 + a3));
      *(this + 2407) = vdup_n_s32(a3);
      if (*(this + 19296) == 1 && OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
      {
        v9 = 0;
      }

      else
      {
        --a3;
        v9 = 1;
      }

      *(this + 4746) = a3;
      *(this + 18988) = v9;
      TXTextLayout::setRecomputeGlyphPositions(this);
    }

    PCString::~PCString(&v13);
  }
}

BOOL TXTextInput::insertHelper(uint64_t a1, const CMTime *a2, unsigned int a3, PCString *this, uint64_t *a5)
{
  TXTextLayout::stripUnsupportedXMLChars(this, &v35);
  TXTextInput::stripCarriageReturns(&v35, &v31);
  PCString::set(&v35, &v31);
  PCString::~PCString(&v31);
  v9 = PCString::size(&v35);
  v10 = *(a1 + 19256);
  v11 = *(a1 + 19260);
  if (v10 != v11)
  {
    *&v31.var0.var0 = *&a2->value;
    v31.var0.var3 = a2->epoch;
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v10 <= v11)
    {
      v13 = v11 - v10;
    }

    else
    {
      v13 = v10 - v11;
    }

    TXTextInput::deleteTextHelper(a1, &v31, v12, v13);
  }

  if (v9)
  {
    if (*a5)
    {
      v14 = a5[1];
      v33 = *a5;
      v34 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      TXTextLayout::getCurrentStyleForInsertion(a1, &v33);
    }

    v15 = PCString::createUniStr(&v35);
    TXChannelString::getString((a1 + 19048), &v32);
    PCString::insert(&v32, a3, &v35);
    TXTextLayout::setString(a1, &v32, 0);
    if (*a5)
    {
      TXTextLayout::updateStyleRunsAfterTextInsert(a1, a3, v9);
      v31.var0.var0 = __PAIR64__(v9, a3);
      if (TXTextLayout::splitStyleRunsInRange(a1, &v31))
      {
        StyleRunAtCharOffset = TXTextLayout::getStyleRunAtCharOffset(a1, a3);
        v18 = *a5;
        v17 = a5[1];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v19 = *(StyleRunAtCharOffset + 16);
        *(StyleRunAtCharOffset + 8) = v18;
        *(StyleRunAtCharOffset + 16) = v17;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        TXTextLayout::addStyle(a1, a5, 1);
      }
    }

    else
    {
      TXTextLayout::updateStyleRunsAfterTextInsert(a1, a3, v9);
    }

    TXTextLayout::updateParagraphStylesAfterTextInsert(a1, a3, v9);
    TXTextLayout::updateDisplayString(a1, a2);
    OZRenderState::OZRenderState(&v31);
    v20 = (*(*(a1 + 200) + 272))(a1 + 200);
    if (v20)
    {
      OZScene::getCurrentTime(v20, &v29);
    }

    else
    {
      v29 = *MEMORY[0x277CC08F0];
      v30 = *(MEMORY[0x277CC08F0] + 16);
    }

    v21 = 0;
    *&v31.var0.var0 = v29;
    v31.var0.var3 = v30;
    v22 = a3;
    do
    {
      v23 = v15[v21];
      if (v23 == 13 || v23 == 10)
      {
        TXTextLayout::updateParagraphStylesAfterNewLineInsert(a1, v22);
      }

      ++v21;
      ++v22;
    }

    while (v9 != v21);
    TXTextLayout::updateKerningsAfterTextInsertion(a1, a3, v9);
    if (TXTextLayout::shouldScaleToBothMargins(a1) && (*(*a1 + 1144))(a1))
    {
      OZChannel::setInitialValue((a1 + 61464), 1.0, 1);
    }

    *(a1 + 18984) = -1;
    TXTextLayout::doLayout(a1, &v31, 0);
    OZChannelBase::setRangeName(a1, a3);
    *(a1 + 19260) = v9 + a3;
    *(a1 + 19256) = v9 + a3;
    if (*(a1 + 19296) == 1 && OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      v25 = PCString::size(&v35) + a3;
      v26 = 1;
    }

    else
    {
      v27 = PCString::size(&v35);
      v26 = 0;
      v25 = a3 + v27 - 1;
    }

    *(a1 + 18984) = v25;
    *(a1 + 18988) = v26;
    (*(*a1 + 832))(a1, 0.0);
    *(a1 + 18984) = -1;
    TXTextLayout::doMotionLayout(a1, &v31);
    TXTextLayout::performLayoutWithPath(a1, &v31);
    OZChannelBase::setRangeName(a1, &v31);
    MEMORY[0x2666E9ED0](v15, 0x1000C80BDFB0063);
    TXTextLayout::resetName(a1);
    TXTextLayout::setRecomputeGlyphPositions(a1);
    PCString::~PCString(&v32);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  PCString::~PCString(&v35);
  return v9 != 0;
}

void TXTextInput::insertAndCreateStyle(TXTextInput *this, CMTime *a2, uint64_t a3, const PCString *a4, uint64_t a5, uint64_t a6)
{
  v7 = 0uLL;
  if (*(this + 4814) != *(this + 4815))
  {
    TXTextLayout::getStyleAtCharOffset(this, a3, &v6);
    std::allocate_shared[abi:ne200100]<TXTextStyle,std::allocator<TXTextStyle>,TXTextStyle&,0>();
  }

  v6 = *a2;
  (*(*this + 1208))(this, &v6, a3, a4, &v7, a5, a6);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_25FAC7438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL TXTextInput::insert(Li3DEngineScene *this, CMTime *a2, unsigned int a3, PCString *a4, uint64_t *a5, int a6, int a7)
{
  if (a7)
  {
    v13 = this + 200;
    if ((*(*(this + 25) + 272))(this + 200))
    {
      if (*((*(*v13 + 272))(this + 200) + 1504))
      {
        v14 = (*(*v13 + 272))(this + 200);
        OZChannelBase::setRangeName(*(v14 + 1504), 1);
      }
    }
  }

  if (a6 && TXTextInput::canHandleUndo(this))
  {
    TXTextInput::getUndoDescription(this, &v19);
    PCURL::PCURL(&v20, @"Undo Typing");
    if (PCString::compare(&v19, &v20) || *(this + 4814) != *(this + 4815))
    {
      PCString::~PCString(&v20);
    }

    else
    {
      v15 = *(this + 52364);
      PCString::~PCString(&v20);
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    PCURL::PCURL(&v20, @"Undo Typing");
    (*(*this + 872))(this, &v20, 0);
    PCString::~PCString(&v20);
    *(this + 52364) = 0;
LABEL_13:
    PCString::~PCString(&v19);
  }

  v16 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(&v20, v16);
  v19 = *a2;
  inserted = TXTextInput::insertHelper(this, &v19, a3, a4, a5);
  OZLockingGroup::WriteSentry::~WriteSentry(&v20);
  (*(*this + 1240))(this);
  return inserted;
}

void sub_25FAC76D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  PCString::~PCString(&a12);
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

void TXTextInput::stripCarriageReturns(PCString *this@<X0>, PCString *a2@<X8>)
{
  if (PCString::size(this) < 2)
  {

    PCString::PCString(a2, this);
  }

  else
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = PCString::cf_str(this);
    MutableCopy = CFStringCreateMutableCopy(v5, 0, v6);
    v8 = PCString::cf_str(this);
    v10.length = CFStringGetLength(v8);
    v10.location = 0;
    CFStringFindAndReplace(MutableCopy, @"\r\n", @"\n\n", v10, 0);
    PCURL::PCURL(a2, MutableCopy);
    CFRelease(MutableCopy);
  }
}

uint64_t TXTextInput::rebuildTextFromCurrentStringChannelState(TXTextInput *this)
{
  OZRenderState::OZRenderState(&v12);
  v2 = this + 200;
  v3 = (*(*(this + 25) + 272))(this + 200);
  if (v3)
  {
    OZScene::getCurrentTime(v3, &v10);
  }

  else
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
  }

  *&v12.var0.var0 = v10;
  v12.var0.var3 = v11;
  v4 = (*(*this + 216))(this);
  v5 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(&v10, v5);
  TXTextLayout::resetState(this);
  TXTextLayout::updateStyleRunsAfterTextInsert(this, 0, v4);
  TXTextLayout::updateDisplayString(this, &v12);
  (*(*this + 1096))(this);
  TXTextLayout::createParagraphStylesFromNewLines(this);
  TXTextLayout::rebuildParagraphStyles(this);
  OZLockingGroup::WriteSentry::~WriteSentry(&v10);
  *(this + 4746) = -1;
  if (*(this + 19296) == 1 && OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v6 = 1;
    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v4 = (v4 - 1);
  }

  *(this + 4746) = v4;
  *(this + 18988) = v6;
  (*(*this + 832))(this, v4, v7, 0.0);
  *(this + 4746) = -1;
  if ((*(*(this + 25) + 272))(this + 200) && *((*(*v2 + 272))(this + 200) + 1584))
  {
    v8 = (*(*v2 + 272))(this + 200);
    OZDocument::postNotification(*(v8 + 1584), 0x200000);
  }

  return TXTextLayout::setRecomputeGlyphPositions(this);
}

void TXTextInput::deleteText(PCString *this, CMTime *a2, unsigned int a3, unsigned int a4, int a5)
{
  PCSharedCount::PCSharedCount(&v17);
  TXTextLayout::getString(this, &v17);
  if (PCString::size(&v17) > a3)
  {
    v10 = (this[25].var0[8].data)(&this[25]);
    v11 = v10;
    if (a5)
    {
      if (v10)
      {
        v12 = *(v10 + 1504);
        if (v12)
        {
          OZChannelBase::setRangeName(v12, 1);
        }
      }
    }

    if ((*(theApp + 81) & 1) != 0 || !v11 || !*(*(v11 + 1584) + 176))
    {
      goto LABEL_16;
    }

    TXParagraphStyleFolder_Factory::getCategoryName(&v15);
    PCURL::PCURL(&v16, @"Undo Text Delete");
    if (PCString::compare(&v15, &v16) || LODWORD(this[2407].var0) != HIDWORD(this[2407].var0))
    {
      PCString::~PCString(&v16);
    }

    else
    {
      v13 = BYTE4(this[6545].var0);
      PCString::~PCString(&v16);
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    PCURL::PCURL(&v16, @"Undo Text Delete");
    (this->var0[27].info)(this, &v16, 0);
    PCString::~PCString(&v16);
    BYTE4(this[6545].var0) = 0;
LABEL_15:
    PCString::~PCString(&v15);
LABEL_16:
    v14 = Li3DEngineScene::sceneManager(this);
    OZLockingGroup::WriteSentry::WriteSentry(&v16, v14);
    v15 = *a2;
    TXTextInput::deleteTextHelper(this, &v15, a3, a4);
    OZLockingGroup::WriteSentry::~WriteSentry(&v16);
    (this->var0[38].length)(this);
  }

  PCString::~PCString(&v17);
}

void sub_25FAC7CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a13);
  PCString::~PCString(&a9);
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

OZScene *TXTextInput::notify(TXTextInput *this, char a2)
{
  result = TXTextLayout::notify(this, a2);
  if ((a2 & 0xC) != 0)
  {
    result = (*(*(this + 25) + 272))(this + 200);
    if (result)
    {
      v4 = result;
      v5 = *(result + 198);
      if (v5)
      {
        v6 = *(v5 + 168);
        v40 = *(result + 198);
        v7 = (v5 + 296);
        if (v6)
        {
          v8 = (v6 + 48);
        }

        else
        {
          v8 = v7;
        }

        v9 = *v8;
        if (*v8 != v8[1])
        {
          v41 = *(v40 + 24);
          v10 = (this + 59408);
          v11 = this + 24272;
          v12 = this + 24424;
          v13 = this + 24576;
          v14 = this + 24728;
          do
          {
            if (*(theApp + 81) == 1)
            {
              MotionOnlyPath = OZChannelRef::getMotionOnlyPath(v9);
              PCString::PCString(v45, MotionOnlyPath);
              OZChannelRef::OZChannelRef(&v43, v45);
              PCString::~PCString(v45);
              Channel = OZChannelRef::getChannel(&v43, (v41 + 920));
              OZChannelRef::~OZChannelRef(&v43);
              if (Channel)
              {
                goto LABEL_13;
              }
            }

            else
            {
              Channel = OZChannelRef::getChannel(v9, (v41 + 920));
              if (Channel)
              {
LABEL_13:
                ObjectManipulator = OZChannelBase::getObjectManipulator(Channel);
                if (ObjectManipulator && (v18 = (*(*ObjectManipulator + 232))(ObjectManipulator)) != 0 && (v19 = v18, v20 = *((*(*v18 + 664))(v18) + 8), v43 = xmmword_2603473B0, OZFactory::isKindOfClass(v20, &v43)))
                {
                  v22 = (v21 + 194);
                  for (i = v21[195]; i != v22; i = *(i + 8))
                  {
                    Object = OZScene::getObject(v4, *(i + 16));
                    if (Object)
                    {
                      if (v25)
                      {
                        ChanBase = OZSingleChannelBehavior::getChanBase(v25);
                        v27 = ChanBase == v10 || ChanBase == v11;
                        v28 = v27 || ChanBase == v12;
                        v29 = v28 || ChanBase == v13;
                        if (v29 || ChanBase == v14)
                        {
                          TXTextLayout::setAllParagraphsDirty(this);
                        }
                      }
                    }
                  }
                }

                else if (Channel == v10 || Channel == v11 || Channel == v12 || Channel == v13 || Channel == v14)
                {
                  TXTextLayout::setAllParagraphsDirty(this);
                }
              }
            }

            v9 += 3;
          }

          while (v9 != v8[1]);
        }

        *&v43 = &v43;
        *(&v43 + 1) = &v43;
        v44 = 0;
        OZBehavior::GetBehaviorsAffectingChannel(this + 2381, &v43, 1);
        v31 = *(&v43 + 1);
        if (*(&v43 + 1) == &v43)
        {
          return std::__list_imp<unsigned int>::clear(&v43);
        }

        else
        {
          v32 = 0;
          do
          {
            v33 = *((*(**(v31 + 16) + 344))(*(v31 + 16)) + 8);
            *&v45[0].var0 = xmmword_2603473C0;
            if (OZFactory::isKindOfClass(v33, v45))
            {
              v34 = *(v31 + 16);
              if (v34)
              {
                if (v35)
                {
                  v36 = v35;
                  if (OZRigBehavior::getWidget(v35))
                  {
                    v37 = *(OZRigBehavior::getWidget(v36) + 136);
                    if (v37)
                    {
                      v38 = *(v40 + 168);
                      if (v38)
                      {
                        LOBYTE(v38) = OZNotificationManager::wasChannelModified(v38, v37);
                      }

                      v32 |= v38;
                    }
                  }
                }
              }
            }

            v31 = *(v31 + 8);
          }

          while (v31 != &v43);
          result = std::__list_imp<unsigned int>::clear(&v43);
          if (v32)
          {
            TXTextInput::rebuildTextFromBehavior(this);
            return OZChannelBase::setRangeName(this, v39);
          }
        }
      }
    }
  }

  return result;
}

uint64_t TXTextInput::didFinishLoadingIntoScene(TXTextInput *this)
{
  v2 = (*(*this + 1272))(this);
  *(this + 64416) = v2 != 0;
  if (v2)
  {
    TXTextInput::rebuildTextFromBehavior(this);
  }

  return TXTextLayout::didFinishLoadingIntoScene(this);
}

uint64_t non-virtual thunk toTXTextInput::didFinishLoadingIntoScene(TXTextInput *this)
{
  return TXTextInput::didFinishLoadingIntoScene((this - 200));
}

{
  return TXTextInput::didFinishLoadingIntoScene((this - 216));
}

OZSingleChannelBehavior *TXTextInput::hasLinkedTextString(TXTextInput *this)
{
  v10 = &v10;
  v11 = &v10;
  v12 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(this + 2381, &v10, 1);
  v1 = v11;
  if (v11 == &v10)
  {
LABEL_14:
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v2 = v1[2];
      if (v2)
      {
        if (v3)
        {
          v4 = v3;
          if (OZBehavior::isEnabledAndUseBehaviors(v3))
          {
            ChanBase = OZSingleChannelBehavior::getChanBase(v4);
            SourceChannel = OZLinkBehavior::getSourceChannel(v4);
            if (SourceChannel)
            {
              {
                break;
              }
            }
          }
        }
      }

      v1 = v1[1];
      if (v1 == &v10)
      {
        goto LABEL_14;
      }
    }
  }

  std::__list_imp<unsigned int>::clear(&v10);
  return v4;
}

void sub_25FAC8400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

__CFString *TXTextLayout::getLength(TXTextLayout *this)
{
  StringPtr = TXChannelString::getStringPtr((this + 19048));

  return PCString::size(StringPtr);
}

__n128 OZSceneNode::getTimeExtent@<Q0>(OZSceneNode *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 13);
  *(a2 + 16) = *(this + 28);
  result = *(this + 232);
  *(a2 + 24) = result;
  *(a2 + 40) = *(this + 31);
  return result;
}

uint64_t OZTransformNode::setDefaultTranslation(OZTransformNode *this, double a2, double a3, double a4)
{
  OZChannel::setDefaultValue((this + 1352), a2);
  OZChannel::setDefaultValue((this + 1504), a3);

  return OZChannel::setDefaultValue((this + 1952), a4);
}

uint64_t OZElement::getEffectsRoot(OZElement *this)
{
  if ((*(*this + 416))(this))
  {
    return *(*(this + 123) + 16);
  }

  v3 = *(*this + 2160);

  return v3(this);
}

uint64_t PCSafe::resetHandle(uint64_t this)
{
  if (*(this + 8))
  {
    *(this + 8) = 0;
  }

  return this;
}

void std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v8[3] = a2[3];
        v9 = *v8;
        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_multi<std::pair<OZSceneNode * const,std::__list_iterator<OZSceneNode *,void *>> const&>();
  }
}

void sub_25FAC8A40(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_25FAC8FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::list<OZEffect *>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void *OZObject::iterator_t<TXTextInput,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__shared_ptr_emplace<TXTextStyle>::__shared_ptr_emplace[abi:ne200100]<TXTextStyle&,std::allocator<TXTextStyle>,0>(void *a1, OZSceneNode **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2871EE448;
  TXTextStyle::TXTextStyle((a1 + 3), a2, 0);
  return a1;
}

void std::__shared_ptr_emplace<TXTextStyle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2871EE448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::shared_ptr<TXTextStyle>::__enable_weak_this[abi:ne200100]<OZStyle,TXTextStyle,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void TXTextInput::getUndoDescription(TXTextInput *this@<X0>, PCURL *a2@<X8>)
{
  v3 = (*(*(this + 25) + 272))();
  v5 = [TXParagraphStyleFolder_Factory::createInstance(v3 v4)];

  PCURL::PCURL(a2, v5);
}

uint64_t TXTextInput::performDragOperation(TXTextInput *this, OZFactoryBase *lpsrc, OZChannelBase *MatchingDescendant, unsigned int a4, unsigned int a5, unsigned int a6, char a7, CMTime *a8)
{
  if (lpsrc)
  {
  }

  else
  {
    v16 = 0;
  }

  v17 = this + 200;
  v18 = (*(*(this + 25) + 640))(this + 200) != MatchingDescendant || v16 == 0;
  if (v18 || (v19 = (*(*v17 + 640))(this + 200), OZChannelBase::isDescendantOf(v16, v19)) || (v20 = (*(*v17 + 640))(this + 200), (MatchingDescendant = OZChannelFolder::findMatchingDescendant(v20, v16)) == 0) || (v21 = (*(*v17 + 272))(this + 200), !TXParagraphStyleFolder_Factory::createInstance(v21, v22)))
  {

    return TXTextLayout::performDragOperation(this, lpsrc, MatchingDescendant, a4, a5, a6, a7, a8);
  }

  else
  {
    if ((*(*v17 + 272))(this + 200))
    {
      if (*((*(*v17 + 272))(this + 200) + 1504))
      {
        v23 = (*(*v17 + 272))(this + 200);
        OZChannelBase::setRangeName(*(v23 + 1504), 1);
      }
    }

    v24 = localizedString(@"Undo Description Text", 0);
    v25 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, PCString::cf_str(&v16->var4)];
    v28[0].var0 = 0;
    PCString::set(v28, v25);
    (*(*this + 872))(this, v28, 0);
    PCString::~PCString(v28);
    *&v28[0].var0 = *MEMORY[0x277CC08F0];
    v29 = *(MEMORY[0x277CC08F0] + 16);
    (*(v16->var0 + 106))(&v27, v16);
    (*(*this + 144))(this, v28, &v27);
    PCString::~PCString(&v27);
    return 1;
  }
}

uint64_t non-virtual thunk toTXTextInput::performDragOperation(TXTextInput *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, CMTime *a8)
{
  return TXTextInput::performDragOperation((this - 200), a2, a3, a4, a5, a6, a7, a8);
}

{
  return TXTextInput::performDragOperation((this - 216), a2, a3, a4, a5, a6, a7, a8);
}

void TXTextInput::setupDefaultTitleTextLayout(TXTextInput *this, OZScene *a2)
{
  PCURL::PCURL(&v24, @"Text Layout Default Title Text");
  v18 = *MEMORY[0x277CC08F0];
  v19 = *(MEMORY[0x277CC08F0] + 16);
  (*(*this + 144))(this, &v18, &v24);
  (*(*(this + 25) + 1136))(this + 200, a2 + 1352, 1);
  (*(*this + 536))(this, &v24, 0);
  TXTextLayout::setLayoutMethod(this, 1);
  v22[0] = 0;
  v22[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v17 = _Q0;
  v23 = _Q0;
  v9 = OZSceneSettings::OZSceneSettings(&v18, (a2 + 336));
  v10 = DWORD2(v18);
  v11 = OZPreferenceManager::Instance(v9);
  OZPreferenceManager::getSafeZonesTitlePercentage(v11);
  *&v23 = (*(*a2 + 96))(a2) * (v12 * v10);
  *(&v23 + 1) = 0x4059000000000000;
  (*(*this + 344))(this, v22);
  v13 = (*(*this + 792))(this, 1, 0.0);
  LODWORD(a2) = HIDWORD(v18);
  v14 = *(&v23 + 1);
  v15 = OZPreferenceManager::Instance(v13);
  OZPreferenceManager::getSafeZonesTitlePercentage(v15);
  OZTransformNode::setTranslation((this + 200), 0.0, vcvtd_n_f64_s32(-a2, 1uLL) + v14 * 0.5 + vcvtd_n_f64_s32(a2, 1uLL) * (1.0 - v16), MEMORY[0x277CC08F0]);
  *(this + 3689) = v17;
  (*(*this + 544))(this);
  TXTextLayout::selectAll(this);
  TXTextLayout::didFinishInitializing(this, 0);
  *&v18 = &unk_287283398;
  PCString::~PCString(&v21);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v20);
  PCString::~PCString(&v24);
}

uint64_t TXTextLayout::selectAll(TXTextLayout *this)
{
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  v3 = PCString::size(StringPtr);
  v4 = *(*this + 240);

  return v4(this, 0, v3);
}

void OZSceneSettings::~OZSceneSettings(PCString *this)
{
  this->var0 = &unk_287283398;
  v1 = &this[16];
  PCString::~PCString(this + 23);
  PCCFRef<CGColorSpace *>::~PCCFRef(v1);
}

{
  this->var0 = &unk_287283398;
  v1 = &this[16];
  PCString::~PCString(this + 23);
  PCCFRef<CGColorSpace *>::~PCCFRef(v1);

  JUMPOUT(0x2666E9F00);
}

double TXSelectionRange::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
  }

  return result;
}

void TXSequenceChannels::TXSequenceChannels(TXSequenceChannels *this, OZChannelFolder *a2)
{
  *this = &unk_2871EE498;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  PCURL::PCURL(&v34, @"Text Sequence Channel Format");
  OZChannelFolder::OZChannelFolder((this + 32), &v34, a2, 0x3E8u, 2u, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 160), &v34, (this + 32), 0x3E9u, 2u, 3u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel FaceOpacity");
  OZChannelPercent::OZChannelPercent((this + 1048), 1.0, &v34, (this + 32), 0x414u, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Scale");
  OZChannelScale3D::OZChannelScale3D((this + 1200), &v34, (this + 32), 0x3EBu, 2u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 1792), &v34, (this + 32), 0x406u, 2u, 4u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Rotation");
  OZChannelAngle::OZChannelAngle((this + 2648), &v34, (this + 32), 0x3EAu, 4194314, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Tracking");
  OZChannelDouble::OZChannelDouble((this + 2800), &v34, (this + 32), 0x3ECu, 2, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Tracking");
  Instance = TXSequenceChannels::TXSequenceChannels_trackingImpl::getInstance(v4);
  v6 = TXSequenceChannels::TXSequenceChannels_trackingInfo::getInstance(Instance);
  OZChannelPercent::OZChannelPercent((this + 2952), 0.0, &v34, (this + 32), 0x415u, 2u, Instance, v6);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Baseline");
  OZChannelDouble::OZChannelDouble((this + 3104), &v34, (this + 32), 0x3EDu, 2, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Slant");
  OZChannelDouble::OZChannelDouble((this + 3256), &v34, (this + 32), 0x3EEu, 2, 0, 0);
  PCString::~PCString(&v34);
  PCString::PCString(&v34, "Reveal");
  OZChannelPercent::OZChannelPercent((this + 3408), 1.0, &v34, (this + 32), 0x41Au, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Face");
  OZChannelFolder::OZChannelFolder((this + 3560), &v34, a2, 0x3EFu, 2u, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel FaceColor");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 3688), 1.0, 1.0, 1.0, &v34, (this + 3560), 0x3F0u, 2u, 5u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel FaceOpacity");
  OZChannelPercent::OZChannelPercent((this + 4696), 1.0, &v34, (this + 3560), 0x3F1u, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel FaceBlur");
  v8 = TXSequenceChannels::TXSequenceChannels_faceBlurImpl::getInstance(v7);
  v9 = TXSequenceChannels::TXSequenceChannels_faceBlurInfo::getInstance(v8);
  OZChannel2D::OZChannel2D((this + 4848), &v34, (this + 3560), 0x410u, 2u, 2u, v8, v9);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel FaceBlur");
  OZChannelDouble::OZChannelDouble((this + 5288), &v34, (this + 3560), 0x3F2u, 4194314, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Face Four Corner");
  OZChannelQuad::OZChannelQuad((this + 5440), &v34, (this + 3560), 0x40Bu, 2u, 4u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Outline");
  OZChannelFolder::OZChannelFolder((this + 8392), &v34, a2, 0x3F3u, 2u, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel OutlineColor");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 8520), 1.0, 0.0, 0.0, &v34, (this + 8392), 0x3F4u, 2u, 5u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel OutlineOpacity");
  OZChannelPercent::OZChannelPercent((this + 9528), 1.0, &v34, (this + 8392), 0x3F5u, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel OutlineBlur");
  v11 = TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::getInstance(v10);
  v12 = TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::getInstance(v11);
  OZChannel2D::OZChannel2D((this + 9680), &v34, (this + 8392), 0x411u, 2u, 2u, v11, v12);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel OutlineBlur");
  OZChannelDouble::OZChannelDouble((this + 10120), &v34, (this + 8392), 0x3F7u, 4194314, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel OutlineWidth");
  v14 = TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::getInstance(v13);
  v15 = TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::getInstance(v14);
  OZChannelDouble::OZChannelDouble((this + 10272), &v34, (this + 8392), 0x3F6u, 2, v14, v15);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Outline Layer Order Enum");
  PCURL::PCURL(&v33, @"Text Outline Layer Order");
  OZChannelEnum::OZChannelEnum((this + 10424), &v34, &v33, (this + 8392), 0x409u, 2u, 0, 0);
  PCString::~PCString(&v33);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Outline Four Corner");
  OZChannelQuad::OZChannelQuad((this + 10680), &v34, (this + 8392), 0x40Du, 2u, 4u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Glow");
  OZChannelFolder::OZChannelFolder((this + 13632), &v34, a2, 0x3F8u, 2u, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel GlowColor");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 13760), 1.0, 1.0, 0.5, &v34, (this + 13632), 0x3F9u, 2u, 5u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel GlowOpacity");
  OZChannelPercent::OZChannelPercent((this + 14768), 1.0, &v34, (this + 13632), 0x3FAu, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel GlowBlur");
  v17 = TXSequenceChannels::TXSequenceChannels_glowBlurImpl::getInstance(v16);
  v18 = TXSequenceChannels::TXSequenceChannels_glowBlurInfo::getInstance(v17);
  OZChannel2D::OZChannel2D((this + 14920), 1.0, 1.0, &v34, (this + 13632), 0x412u, 2u, 2u, v17, v18);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel GlowBlur");
  v20 = TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::getInstance(v19);
  OZChannelDouble::OZChannelDouble((this + 15360), 1.0, &v34, (this + 13632), 0x405u, 4194314, v20, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel GlowRadius");
  v22 = TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::getInstance(v21);
  v23 = TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::getInstance(v22);
  OZChannelDouble::OZChannelDouble((this + 15512), &v34, (this + 13632), 0x3FBu, 2, v22, v23);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel GlowScale");
  OZChannelScale::OZChannelScale((this + 15664), &v34, (this + 13632), 0x402u, 2u, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel GlowOffset");
  OZChannelPosition::OZChannelPosition((this + 16104), &v34, (this + 13632), 0x403u, 2u, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Glow Layer Order Enum");
  PCURL::PCURL(&v33, @"Text Glow Layer Order");
  OZChannelEnum::OZChannelEnum((this + 16808), &v34, &v33, (this + 13632), 0x40Au, 2u, 0, 0);
  PCString::~PCString(&v33);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Glow Four Corner");
  OZChannelQuad::OZChannelQuad((this + 17064), &v34, (this + 13632), 0x40Eu, 2u, 4u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Drop Shadow");
  OZChannelFolder::OZChannelFolder((this + 20016), &v34, a2, 0x3FCu, 2u, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel DropShadowColor");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 20144), 0.0, 0.0, 0.0, &v34, (this + 20016), 0x3FDu, 2u, 5u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel DropShadowOpacity");
  OZChannelPercent::OZChannelPercent((this + 21152), 1.0, &v34, (this + 20016), 0x3FEu, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel DropShadowBlur");
  v25 = TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::getInstance(v24);
  v26 = TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::getInstance(v25);
  OZChannel2D::OZChannel2D((this + 21304), &v34, (this + 20016), 0x413u, 2u, 2u, v25, v26);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel DropShadowBlur");
  OZChannelDouble::OZChannelDouble((this + 21744), &v34, (this + 20016), 0x401u, 4194314, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel DropShadowScale");
  OZChannelScale::OZChannelScale((this + 21896), &v34, (this + 20016), 0x404u, 2u, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel DropShadowDistance");
  v28 = TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::getInstance(v27);
  v29 = TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::getInstance(v28);
  OZChannelDouble::OZChannelDouble((this + 22336), &v34, (this + 20016), 0x3FFu, 2, v28, v29);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel DropShadowAngle");
  OZChannelAngle::OZChannelAngle((this + 22488), &v34, (this + 20016), 0x400u, 2, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Drop Shadow Four Corner");
  OZChannelQuad::OZChannelQuad((this + 22640), &v34, (this + 20016), 0x40Cu, 2u, 4u);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Character Offset");
  v31 = TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::getInstance(v30);
  v32 = TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::getInstance(v31);
  OZChannelUint32::OZChannelUint32((this + 25592), &v34, (this + 32), 0x407u, 2, v31, v32);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Character Set Enum");
  PCURL::PCURL(&v33, @"Text Sequence Channel Character Set");
  OZChannelEnum::OZChannelEnum((this + 25744), &v34, &v33, (this + 32), 0x408u, 2u, 0, 0);
  PCString::~PCString(&v33);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel 3D");
  OZChannelFolder::OZChannelFolder((this + 26000), &v34, a2, 0x416u, 2u, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel 3D Extrusion");
  OZChannelDouble::OZChannelDouble((this + 26128), &v34, (this + 26000), 0x417u, 2, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Front Edge Size");
  OZChannel2D::OZChannel2D((this + 26280), &v34, (this + 26000), 0x418u, 2u, 2u, 0, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Text Sequence Channel Back Edge Size");
  OZChannel2D::OZChannel2D((this + 26720), &v34, (this + 26000), 0x419u, 2u, 2u, 0, 0);
  PCString::~PCString(&v34);
  *(this + 3395) = a2;
  TXSequenceChannels::makeChannelList(this);
  OZChannelBase::enable((this + 1048), 0, 0);
  OZChannelBase::enable((this + 3560), 0, 0);
  OZChannelBase::enable((this + 3688), 0, 0);
  OZChannelBase::enable((this + 8392), 0, 0);
  OZChannelBase::enable((this + 8520), 0, 0);
  OZChannelBase::enable((this + 13632), 0, 0);
  OZChannelBase::enable((this + 13760), 0, 0);
  OZChannelBase::enable((this + 20016), 0, 0);
  OZChannelBase::enable((this + 20144), 0, 0);
  OZChannelBase::enable((this + 26000), 0, 0);
  OZChannelBase::enable((this + 26128), 0, 0);
  OZChannelBase::enable((this + 26280), 0, 0);
  OZChannelBase::enable((this + 26720), 0, 0);
  PCURL::PCURL(&v34, @"Bevel Properties Edge Width");
  OZChannelBase::setName((this + 26416), &v34, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Bevel Properties Edge Depth");
  OZChannelBase::setName((this + 26568), &v34, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Bevel Properties Edge Width");
  OZChannelBase::setName((this + 26856), &v34, 0);
  PCString::~PCString(&v34);
  PCURL::PCURL(&v34, @"Bevel Properties Edge Depth");
  OZChannelBase::setName((this + 27008), &v34, 0);
  PCString::~PCString(&v34);
  OZChannelBase::resetFlag((this + 160), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 160));
  *(this + 888) = 0;
  *(this + 600) = 0;
  OZChannelBase::resetFlag((this + 1200), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1200));
  OZChannelBase::resetFlag(this + 16, 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1792));
  OZChannelBase::resetFlag((this + 2648), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2648));
  OZChannelBase::resetFlag(this + 25, 16, 0);
  OZChannelBase::saveStateAsDefault(this + 25);
  OZChannelBase::resetFlag((this + 2952), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2952));
  OZChannelBase::resetFlag((this + 3104), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 3104));
  OZChannelBase::resetFlag((this + 3256), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 3256));
  OZChannelBase::resetFlag((this + 26000), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 26000));
  OZChannelBase::resetFlag((this + 26128), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 26128));
  OZChannelBase::resetFlag((this + 26280), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 26280));
  OZChannelBase::resetFlag((this + 26720), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 26720));
  OZChannelBase::resetFlag((this + 3688), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 3688));
  OZChannelBase::resetFlag((this + 4696), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 4696));
  OZChannelBase::resetFlag((this + 4848), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 4848));
  OZChannelBase::resetFlag((this + 8520), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 8520));
  OZChannelBase::resetFlag((this + 9528), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 9528));
  OZChannelBase::resetFlag((this + 9680), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 9680));
  OZChannel::setMin((this + 10272), 0.0);
  OZChannelBase::resetFlag((this + 10272), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 10272));
  OZChannelBase::enable((this + 10424), 0, 0);
  OZChannelBase::resetFlag((this + 10424), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 10424));
  OZChannelBase::resetFlag((this + 13760), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 13760));
  OZChannelBase::resetFlag((this + 14768), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 14768));
  OZChannelBase::resetFlag((this + 14920), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 14920));
  OZChannelBase::resetFlag((this + 15512), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 15512));
  OZChannelBase::resetFlag((this + 15664), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 15664));
  OZChannelBase::resetFlag((this + 16104), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 16104));
  OZChannelBase::enable((this + 16808), 0, 0);
  OZChannelBase::resetFlag((this + 16808), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 16808));
  OZChannelBase::resetFlag((this + 20144), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 20144));
  OZChannelBase::resetFlag((this + 21152), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 21152));
  OZChannelBase::resetFlag((this + 21304), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 21304));
  OZChannelBase::resetFlag((this + 21896), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 21896));
  OZChannelBase::resetFlag((this + 22336), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 22336));
  OZChannelBase::resetFlag((this + 22488), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 22488));
  OZChannelBase::resetFlag((this + 25592), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 25592));
  OZChannelBase::resetFlag((this + 25744), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 25744));
}

void sub_25FACBAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel2D::~OZChannel2D((v12 + v13));
  OZChannel2D::~OZChannel2D((v12 + v19));
  OZChannel::~OZChannel((v12 + v14));
  OZChannelFolder::~OZChannelFolder((v12 + v17));
  OZChannelEnum::~OZChannelEnum((v12 + 25744));
  OZChannel::~OZChannel((v12 + 25592));
  OZChannelQuad::~OZChannelQuad((v12 + 22640));
  OZChannel::~OZChannel((v12 + 22488));
  OZChannel::~OZChannel((v12 + 22336));
  OZChannel2D::~OZChannel2D((v12 + 21896));
  OZChannel::~OZChannel((v12 + 21744));
  OZChannel2D::~OZChannel2D((v12 + 21304));
  OZChannelPercent::~OZChannelPercent((v12 + 21152));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v12 + 20144));
  OZChannelFolder::~OZChannelFolder((v12 + v15));
  OZChannelQuad::~OZChannelQuad((v12 + 17064));
  OZChannelEnum::~OZChannelEnum((v12 + 16808));
  OZChannelPosition::~OZChannelPosition((v12 + 16104));
  OZChannel2D::~OZChannel2D((v12 + 15664));
  OZChannel::~OZChannel((v12 + 15512));
  OZChannel::~OZChannel((v12 + 15360));
  OZChannel2D::~OZChannel2D((v12 + 14920));
  OZChannelPercent::~OZChannelPercent((v12 + 14768));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v12 + 13760));
  OZChannelFolder::~OZChannelFolder((v12 + v16));
  OZChannelQuad::~OZChannelQuad((v12 + 10680));
  OZChannelEnum::~OZChannelEnum((v12 + 10424));
  OZChannel::~OZChannel((v12 + 10272));
  OZChannel::~OZChannel((v12 + 10120));
  OZChannel2D::~OZChannel2D((v12 + 9680));
  OZChannelPercent::~OZChannelPercent((v12 + 9528));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v12 + 8520));
  OZChannelFolder::~OZChannelFolder((v12 + v18));
  OZChannelQuad::~OZChannelQuad((v12 + 5440));
  OZChannel::~OZChannel((v12 + 5288));
  OZChannel2D::~OZChannel2D((v12 + 4848));
  OZChannelPercent::~OZChannelPercent((v12 + 4696));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v12 + 3688));
  OZChannelFolder::~OZChannelFolder((v12 + 3560));
  OZChannelPercent::~OZChannelPercent((v12 + 3408));
  OZChannel::~OZChannel((v12 + 3256));
  OZChannel::~OZChannel((v12 + 3104));
  OZChannelPercent::~OZChannelPercent((v12 + 2952));
  OZChannel::~OZChannel((v12 + 2800));
  OZChannel::~OZChannel((v12 + 2648));
  OZChannelRotation3D::~OZChannelRotation3D((v12 + 1792));
  OZChannelScale3D::~OZChannelScale3D((v12 + 1200));
  OZChannelPercent::~OZChannelPercent((v12 + 1048));
  OZChannelPosition3D::~OZChannelPosition3D((v12 + 160));
  OZChannelFolder::~OZChannelFolder((v12 + 32));
  v21 = *a10;
  if (*a10)
  {
    *(v12 + 16) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void TXSequenceChannels::makeChannelList(TXSequenceChannels *this)
{
  v2 = this + 32;
  std::vector<TXTabStop *>::push_back[abi:ne200100](this + 8, &v2);
  v2 = this + 3560;
  std::vector<TXTabStop *>::push_back[abi:ne200100](this + 8, &v2);
  v2 = this + 8392;
  std::vector<TXTabStop *>::push_back[abi:ne200100](this + 8, &v2);
  v2 = this + 13632;
  std::vector<TXTabStop *>::push_back[abi:ne200100](this + 8, &v2);
  v2 = this + 20016;
  std::vector<TXTabStop *>::push_back[abi:ne200100](this + 8, &v2);
  v2 = this + 26000;
  std::vector<TXTabStop *>::push_back[abi:ne200100](this + 8, &v2);
}

void OZChannelScale3D::~OZChannelScale3D(OZChannelScale3D *this)
{
  *this = &unk_2872557A8;
  *(this + 2) = &unk_287255B00;
  OZChannel::~OZChannel((this + 440));

  OZChannel2D::~OZChannel2D(this);
}

{
  OZChannelScale3D::~OZChannelScale3D(this);

  JUMPOUT(0x2666E9F00);
}

void TXSequenceChannels::TXSequenceChannels(TXSequenceChannels *this, const TXSequenceChannels *a2, OZChannelFolder *a3)
{
  *this = &unk_2871EE498;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  OZChannelFolder::OZChannelFolder((this + 32), (a2 + 32), a3);
  OZChannelPosition3D::OZChannelPosition3D((this + 160), (a2 + 160), (this + 32));
  OZChannelPercent::OZChannelPercent((this + 1048), (a2 + 1048), (this + 32));
  OZChannelScale3D::OZChannelScale3D((this + 1200), (a2 + 1200), (this + 32));
  OZChannelRotation3D::OZChannelRotation3D((this + 1792), (a2 + 1792), (this + 32));
  OZChannel::OZChannel((this + 2648), (a2 + 2648), (this + 32));
  *(this + 331) = &unk_287246030;
  *(this + 333) = &unk_287246390;
  OZChannel::OZChannel((this + 2800), a2 + 25, (this + 32));
  *(this + 350) = &unk_287245C60;
  *(this + 352) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 2952), (a2 + 2952), (this + 32));
  OZChannel::OZChannel((this + 3104), (a2 + 3104), (this + 32));
  *(this + 388) = &unk_287245C60;
  *(this + 390) = &unk_287245FC0;
  OZChannel::OZChannel((this + 3256), (a2 + 3256), (this + 32));
  *(this + 407) = &unk_287245C60;
  *(this + 409) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 3408), (a2 + 3408), (this + 32));
  OZChannelFolder::OZChannelFolder((this + 3560), (a2 + 3560), a3);
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 3688), (a2 + 3688), (this + 3560));
  OZChannelPercent::OZChannelPercent((this + 4696), (a2 + 4696), (this + 3560));
  OZChannel2D::OZChannel2D((this + 4848), (a2 + 4848), (this + 3560));
  OZChannel::OZChannel((this + 5288), (a2 + 5288), (this + 3560));
  *(this + 661) = &unk_287245C60;
  *(this + 663) = &unk_287245FC0;
  OZChannelQuad::OZChannelQuad((this + 5440), (a2 + 5440), (this + 3560));
  OZChannelFolder::OZChannelFolder((this + 8392), (a2 + 8392), a3);
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 8520), (a2 + 8520), (this + 8392));
  OZChannelPercent::OZChannelPercent((this + 9528), (a2 + 9528), (this + 8392));
  OZChannel2D::OZChannel2D((this + 9680), (a2 + 9680), (this + 8392));
  OZChannel::OZChannel((this + 10120), (a2 + 10120), (this + 8392));
  *(this + 1265) = &unk_287245C60;
  *(this + 1267) = &unk_287245FC0;
  OZChannel::OZChannel((this + 10272), (a2 + 10272), (this + 8392));
  *(this + 1284) = &unk_287245C60;
  *(this + 1286) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 10424), (a2 + 10424), (this + 8392));
  OZChannelQuad::OZChannelQuad((this + 10680), (a2 + 10680), (this + 8392));
  OZChannelFolder::OZChannelFolder((this + 13632), (a2 + 13632), a3);
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 13760), (a2 + 13760), (this + 13632));
  OZChannelPercent::OZChannelPercent((this + 14768), (a2 + 14768), (this + 13632));
  OZChannel2D::OZChannel2D((this + 14920), (a2 + 14920), (this + 13632));
  OZChannel::OZChannel((this + 15360), (a2 + 15360), (this + 13632));
  *(this + 1920) = &unk_287245C60;
  *(this + 1922) = &unk_287245FC0;
  OZChannel::OZChannel((this + 15512), (a2 + 15512), (this + 13632));
  *(this + 1939) = &unk_287245C60;
  *(this + 1941) = &unk_287245FC0;
  OZChannelScale::OZChannelScale((this + 15664), (a2 + 15664), (this + 13632));
  OZChannelPosition::OZChannelPosition((this + 16104), (a2 + 16104), (this + 13632));
  OZChannelEnum::OZChannelEnum((this + 16808), (a2 + 16808), (this + 13632));
  OZChannelQuad::OZChannelQuad((this + 17064), (a2 + 17064), (this + 13632));
  OZChannelFolder::OZChannelFolder((this + 20016), (a2 + 20016), a3);
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 20144), (a2 + 20144), (this + 20016));
  OZChannelPercent::OZChannelPercent((this + 21152), (a2 + 21152), (this + 20016));
  OZChannel2D::OZChannel2D((this + 21304), (a2 + 21304), (this + 20016));
  OZChannel::OZChannel((this + 21744), (a2 + 21744), (this + 20016));
  *(this + 2718) = &unk_287245C60;
  *(this + 2720) = &unk_287245FC0;
  OZChannelScale::OZChannelScale((this + 21896), (a2 + 21896), (this + 20016));
  OZChannel::OZChannel((this + 22336), (a2 + 22336), (this + 20016));
  *(this + 2792) = &unk_287245C60;
  *(this + 2794) = &unk_287245FC0;
  OZChannel::OZChannel((this + 22488), (a2 + 22488), (this + 20016));
  *(this + 2811) = &unk_287246030;
  *(this + 2813) = &unk_287246390;
  OZChannelQuad::OZChannelQuad((this + 22640), (a2 + 22640), (this + 20016));
  OZChannel::OZChannel((this + 25592), (a2 + 25592), (this + 32));
  *(this + 3199) = &unk_287246400;
  *(this + 3201) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 25744), (a2 + 25744), (this + 32));
  OZChannelFolder::OZChannelFolder((this + 26000), (a2 + 26000), a3);
  OZChannel::OZChannel((this + 26128), (a2 + 26128), (this + 26000));
  *(this + 3266) = &unk_287245C60;
  *(this + 3268) = &unk_287245FC0;
  OZChannel2D::OZChannel2D((this + 26280), (a2 + 26280), (this + 26000));
  OZChannel2D::OZChannel2D((this + 26720), (a2 + 26720), (this + 26000));
  *(this + 3395) = a3;
  TXSequenceChannels::makeChannelList(this);
  TXSequenceChannels::copyMaterialSequenceFolders(this, a2 + 1);
}

void sub_25FACCBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, OZChannel *a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannel *a16, OZChannel *a17, OZChannel *a18, OZChannel *a19, void **a20)
{
  OZChannel2D::~OZChannel2D((v20 + v22));
  OZChannel::~OZChannel(v26);
  OZChannelFolder::~OZChannelFolder((v20 + v23));
  OZChannelEnum::~OZChannelEnum((v20 + 25744));
  OZChannel::~OZChannel(v25);
  OZChannelQuad::~OZChannelQuad((v20 + 22640));
  OZChannel::~OZChannel(v24);
  OZChannel::~OZChannel(a9);
  OZChannel2D::~OZChannel2D((v20 + 21896));
  OZChannel::~OZChannel(a10);
  OZChannel2D::~OZChannel2D((v20 + 21304));
  OZChannelPercent::~OZChannelPercent((v20 + 21152));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v20 + 20144));
  OZChannelFolder::~OZChannelFolder((v20 + v21));
  OZChannelQuad::~OZChannelQuad((v20 + 17064));
  OZChannelEnum::~OZChannelEnum((v20 + 16808));
  OZChannelPosition::~OZChannelPosition((v20 + 16104));
  OZChannel2D::~OZChannel2D((v20 + 15664));
  OZChannel::~OZChannel(a11);
  OZChannel::~OZChannel(a12);
  OZChannel2D::~OZChannel2D((v20 + 14920));
  OZChannelPercent::~OZChannelPercent((v20 + 14768));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v20 + 13760));
  OZChannelFolder::~OZChannelFolder((v20 + 13632));
  OZChannelQuad::~OZChannelQuad((v20 + 10680));
  OZChannelEnum::~OZChannelEnum((v20 + 10424));
  OZChannel::~OZChannel(a13);
  OZChannel::~OZChannel(a14);
  OZChannel2D::~OZChannel2D((v20 + 9680));
  OZChannelPercent::~OZChannelPercent((v20 + 9528));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v20 + 8520));
  OZChannelFolder::~OZChannelFolder((v20 + 8392));
  OZChannelQuad::~OZChannelQuad((v20 + 5440));
  OZChannel::~OZChannel(a15);
  OZChannel2D::~OZChannel2D((v20 + 4848));
  OZChannelPercent::~OZChannelPercent((v20 + 4696));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v20 + 3688));
  OZChannelFolder::~OZChannelFolder((v20 + 3560));
  OZChannelPercent::~OZChannelPercent((v20 + 3408));
  OZChannel::~OZChannel(a16);
  OZChannel::~OZChannel(a17);
  OZChannelPercent::~OZChannelPercent((v20 + 2952));
  OZChannel::~OZChannel(a18);
  OZChannel::~OZChannel(a19);
  OZChannelRotation3D::~OZChannelRotation3D((v20 + 1792));
  OZChannelScale3D::~OZChannelScale3D((v20 + 1200));
  OZChannelPercent::~OZChannelPercent((v20 + 1048));
  OZChannelPosition3D::~OZChannelPosition3D((v20 + 160));
  OZChannelFolder::~OZChannelFolder((v20 + 32));
  v28 = *a20;
  if (*a20)
  {
    *(v20 + 16) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void TXSequenceChannels::copyMaterialSequenceFolders(uint64_t a1, void *a2)
{
  v2 = (a2[1] - *a2) >> 3;
  v3 = (v2 - 6);
  if (v2 != 6)
  {
    v6 = 0;
    do
    {
      v7 = (v6 + 6);
      if (v7 >= (a2[1] - *a2) >> 3)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *(*a2 + 8 * v7);
      v9 = *(v8 + 24);
      v10 = (*(**(v8 + 8) + 24))(*(v8 + 8), v8, 0);
      OZChannelFolder::push_back(*(a1 + 27160), v10);
      OZChannelBase::setID(v10, v9);
      isEnabled = OZChannelBase::isEnabled(v8, 1, 1);
      (*(v10->var0 + 13))(v10, isEnabled, 0);
      OZChannelBase::setFlag(v10, 0x100000000, 0);
      v12 = *(v8 + 112);
      if (v12)
      {
        v13 = *v12;
        v14 = v12[1];
        while (v13 != v14)
        {
          v15 = *v13++;
          v16 = (*(**(v15 + 8) + 24))(*(v15 + 8), v15, 0);
          OZChannelFolder::push_back(v10, v16);
        }
      }

      v17 = v10;
      std::vector<TXTabStop *>::push_back[abi:ne200100](a1 + 8, &v17);
      ++v6;
    }

    while (v6 != v3);
  }
}

uint64_t TXSequenceChannels::operator=(uint64_t a1, uint64_t a2)
{
  OZChannelFolder::operator=(a1 + 32);
  OZChannelPosition::operator=(a1 + 160, a2 + 160);
  OZChannelFolder::operator=(a1 + 1200);
  OZChannelBase::operator=(a1 + 1336, a2 + 1336);
  OZChannelBase::operator=(a1 + 1488, a2 + 1488);
  OZChannelBase::operator=(a1 + 1640, a2 + 1640);
  OZChannelPosition::operator=(a1 + 1792, a2 + 1792);
  OZChannelBase::operator=(a1 + 2648, a2 + 2648);
  OZChannelBase::operator=(a1 + 2800, a2 + 2800);
  OZChannelBase::operator=(a1 + 2952, a2 + 2952);
  OZChannelBase::operator=(a1 + 3104, a2 + 3104);
  OZChannelBase::operator=(a1 + 3256, a2 + 3256);
  OZChannelFolder::operator=(a1 + 3560);
  OZChannelFolder::operator=(a1 + 3688);
  OZChannelBase::operator=(a1 + 3824, a2 + 3824);
  OZChannelBase::operator=(a1 + 3976, a2 + 3976);
  OZChannelBase::operator=(a1 + 4128, a2 + 4128);
  OZChannelBase::operator=(a1 + 4280, a2 + 4280);
  OZChannelBase::operator=(a1 + 4432, a2 + 4432);
  *(a1 + 4688) = *(a2 + 4688);
  OZChannelBase::operator=(a1 + 4696, a2 + 4696);
  OZChannelFolder::operator=(a1 + 4848);
  OZChannelBase::operator=(a1 + 4984, a2 + 4984);
  OZChannelBase::operator=(a1 + 5136, a2 + 5136);
  OZChannelFolder::operator=(a1 + 5440);
  OZChannelPosition::operator=(a1 + 5576, a2 + 5576);
  OZChannelPosition::operator=(a1 + 6280, a2 + 6280);
  OZChannelPosition::operator=(a1 + 6984, a2 + 6984);
  OZChannelPosition::operator=(a1 + 7688, a2 + 7688);
  OZChannelFolder::operator=(a1 + 8392);
  OZChannelFolder::operator=(a1 + 8520);
  OZChannelBase::operator=(a1 + 8656, a2 + 8656);
  OZChannelBase::operator=(a1 + 8808, a2 + 8808);
  OZChannelBase::operator=(a1 + 8960, a2 + 8960);
  OZChannelBase::operator=(a1 + 9112, a2 + 9112);
  OZChannelBase::operator=(a1 + 9264, a2 + 9264);
  *(a1 + 9520) = *(a2 + 9520);
  OZChannelBase::operator=(a1 + 9528, a2 + 9528);
  OZChannelFolder::operator=(a1 + 9680);
  OZChannelBase::operator=(a1 + 9816, a2 + 9816);
  OZChannelBase::operator=(a1 + 9968, a2 + 9968);
  OZChannelBase::operator=(a1 + 10272, a2 + 10272);
  OZChannelBase::operator=(a1 + 10424, a2 + 10424);
  OZChannelFolder::operator=(a1 + 10680);
  OZChannelPosition::operator=(a1 + 10816, a2 + 10816);
  OZChannelPosition::operator=(a1 + 11520, a2 + 11520);
  OZChannelPosition::operator=(a1 + 12224, a2 + 12224);
  OZChannelPosition::operator=(a1 + 12928, a2 + 12928);
  OZChannelFolder::operator=(a1 + 13632);
  OZChannelFolder::operator=(a1 + 13760);
  OZChannelBase::operator=(a1 + 13896, a2 + 13896);
  OZChannelBase::operator=(a1 + 14048, a2 + 14048);
  OZChannelBase::operator=(a1 + 14200, a2 + 14200);
  OZChannelBase::operator=(a1 + 14352, a2 + 14352);
  OZChannelBase::operator=(a1 + 14504, a2 + 14504);
  *(a1 + 14760) = *(a2 + 14760);
  OZChannelBase::operator=(a1 + 14768, a2 + 14768);
  OZChannelFolder::operator=(a1 + 14920);
  OZChannelBase::operator=(a1 + 15056, a2 + 15056);
  OZChannelBase::operator=(a1 + 15208, a2 + 15208);
  OZChannelBase::operator=(a1 + 15512, a2 + 15512);
  OZChannelFolder::operator=(a1 + 15664);
  OZChannelBase::operator=(a1 + 15800, a2 + 15800);
  OZChannelBase::operator=(a1 + 15952, a2 + 15952);
  OZChannelPosition::operator=(a1 + 16104, a2 + 16104);
  OZChannelBase::operator=(a1 + 16808, a2 + 16808);
  OZChannelFolder::operator=(a1 + 17064);
  OZChannelPosition::operator=(a1 + 17200, a2 + 17200);
  OZChannelPosition::operator=(a1 + 17904, a2 + 17904);
  OZChannelPosition::operator=(a1 + 18608, a2 + 18608);
  OZChannelPosition::operator=(a1 + 19312, a2 + 19312);
  OZChannelFolder::operator=(a1 + 20016);
  OZChannelFolder::operator=(a1 + 20144);
  OZChannelBase::operator=(a1 + 20280, a2 + 20280);
  OZChannelBase::operator=(a1 + 20432, a2 + 20432);
  OZChannelBase::operator=(a1 + 20584, a2 + 20584);
  OZChannelBase::operator=(a1 + 20736, a2 + 20736);
  OZChannelBase::operator=(a1 + 20888, a2 + 20888);
  *(a1 + 21144) = *(a2 + 21144);
  OZChannelBase::operator=(a1 + 21152, a2 + 21152);
  OZChannelFolder::operator=(a1 + 21304);
  OZChannelBase::operator=(a1 + 21440, a2 + 21440);
  OZChannelBase::operator=(a1 + 21592, a2 + 21592);
  OZChannelFolder::operator=(a1 + 21896);
  OZChannelBase::operator=(a1 + 22032, a2 + 22032);
  OZChannelBase::operator=(a1 + 22184, a2 + 22184);
  OZChannelBase::operator=(a1 + 22336, a2 + 22336);
  OZChannelBase::operator=(a1 + 22488, a2 + 22488);
  OZChannelFolder::operator=(a1 + 22640);
  OZChannelPosition::operator=(a1 + 22776, a2 + 22776);
  OZChannelPosition::operator=(a1 + 23480, a2 + 23480);
  OZChannelPosition::operator=(a1 + 24184, a2 + 24184);
  OZChannelPosition::operator=(a1 + 24888, a2 + 24888);
  OZChannelBase::operator=(a1 + 25592, a2 + 25592);
  OZChannelBase::operator=(a1 + 25744, a2 + 25744);
  OZChannelFolder::operator=(a1 + 26000);
  OZChannelBase::operator=(a1 + 26128, a2 + 26128);
  OZChannelFolder::operator=(a1 + 26280);
  OZChannelBase::operator=(a1 + 26416, a2 + 26416);
  OZChannelBase::operator=(a1 + 26568, a2 + 26568);
  OZChannelFolder::operator=(a1 + 26720);
  OZChannelBase::operator=(a1 + 26856, a2 + 26856);
  result = OZChannelBase::operator=(a1 + 27008, a2 + 27008);
  *(a1 + 27160) = *(a2 + 27160);
  return result;
}

void TXSequenceChannels::~TXSequenceChannels(TXSequenceChannels *this)
{
  *this = &unk_2871EE498;
  while (*(this + 2) - *(this + 1) >= 0x31uLL)
  {
    TXSequenceChannels::removeMaterialChannelsAtIndex(this, 0);
  }

  OZChannel2D::~OZChannel2D((this + 26720));
  OZChannel2D::~OZChannel2D((this + 26280));
  OZChannel::~OZChannel((this + 26128));
  OZChannelFolder::~OZChannelFolder((this + 26000));
  OZChannelEnum::~OZChannelEnum((this + 25744));
  OZChannel::~OZChannel((this + 25592));
  OZChannelQuad::~OZChannelQuad((this + 22640));
  OZChannel::~OZChannel((this + 22488));
  OZChannel::~OZChannel((this + 22336));
  OZChannel2D::~OZChannel2D((this + 21896));
  OZChannel::~OZChannel((this + 21744));
  OZChannel2D::~OZChannel2D((this + 21304));
  OZChannelPercent::~OZChannelPercent((this + 21152));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 20144));
  OZChannelFolder::~OZChannelFolder((this + 20016));
  OZChannelQuad::~OZChannelQuad((this + 17064));
  OZChannelEnum::~OZChannelEnum((this + 16808));
  OZChannelPosition::~OZChannelPosition((this + 16104));
  OZChannel2D::~OZChannel2D((this + 15664));
  OZChannel::~OZChannel((this + 15512));
  OZChannel::~OZChannel((this + 15360));
  OZChannel2D::~OZChannel2D((this + 14920));
  OZChannelPercent::~OZChannelPercent((this + 14768));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 13760));
  OZChannelFolder::~OZChannelFolder((this + 13632));
  OZChannelQuad::~OZChannelQuad((this + 10680));
  OZChannelEnum::~OZChannelEnum((this + 10424));
  OZChannel::~OZChannel((this + 10272));
  OZChannel::~OZChannel((this + 10120));
  OZChannel2D::~OZChannel2D((this + 9680));
  OZChannelPercent::~OZChannelPercent((this + 9528));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 8520));
  OZChannelFolder::~OZChannelFolder((this + 8392));
  OZChannelQuad::~OZChannelQuad((this + 5440));
  OZChannel::~OZChannel((this + 5288));
  OZChannel2D::~OZChannel2D((this + 4848));
  OZChannelPercent::~OZChannelPercent((this + 4696));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 3688));
  OZChannelFolder::~OZChannelFolder((this + 3560));
  OZChannelPercent::~OZChannelPercent((this + 3408));
  OZChannel::~OZChannel((this + 3256));
  OZChannel::~OZChannel((this + 3104));
  OZChannelPercent::~OZChannelPercent((this + 2952));
  OZChannel::~OZChannel((this + 2800));
  OZChannel::~OZChannel((this + 2648));
  OZChannelRotation3D::~OZChannelRotation3D((this + 1792));
  *(this + 150) = &unk_2872557A8;
  *(this + 152) = &unk_287255B00;
  OZChannel::~OZChannel((this + 1640));
  OZChannel2D::~OZChannel2D((this + 1200));
  OZChannelPercent::~OZChannelPercent((this + 1048));
  OZChannelPosition3D::~OZChannelPosition3D((this + 160));
  OZChannelFolder::~OZChannelFolder((this + 32));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  TXSequenceChannels::~TXSequenceChannels(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t TXSequenceChannels::removeMaterialChannelsAtIndex(TXSequenceChannels *this, unsigned int a2)
{
  v2 = a2 + 6;
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v2 >= (v3 - v4) >> 3)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = *(v4 + 8 * v2);
  v7 = v4 + 8 * a2;
  v8 = v7 + 48;
  v9 = v3 - (v7 + 56);
  if (v3 != v7 + 56)
  {
    memmove((v7 + 48), (v7 + 56), v3 - (v7 + 56));
  }

  *(this + 2) = v8 + v9;
  OZChannelFolder::removeDescendant(v6->var6, v6);
  var0 = v6->var0;
  if (v11)
  {
    OZLayeredMaterialSequenceFolder::deleteLayerSequenceFolders(v11);
    var0 = v6->var0;
  }

  v12 = var0[1];

  return v12(v6);
}

BOOL TXSequenceChannels::removeTrackingChannel(TXSequenceChannels *this, int a2)
{
  Descendant = OZChannelFolder::getDescendant((this + 32), a2);
  if (Descendant)
  {
    v5 = OZChannelFolder::getDescendant((this + 32), a2);
    OZChannelFolder::removeDescendant((this + 32), v5);
  }

  return Descendant != 0;
}

void TXSequenceChannels::getChannelList(uint64_t a1, uint64_t a2)
{
  v7 = a1 + 32;
  std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v7);
  v7 = a1 + 26000;
  std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v7);
  v7 = a1 + 3560;
  std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v7);
  v7 = a1 + 8392;
  std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v7);
  v7 = a1 + 13632;
  std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v7);
  v7 = a1 + 20016;
  std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v7);
  v4 = *(a1 + 8);
  if ((*(a1 + 16) - v4) >= 0x31)
  {
    v5 = 7;
    v6 = 6;
    do
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](a2, (v4 + 8 * v6));
      v6 = v5;
      v4 = *(a1 + 8);
      ++v5;
    }

    while (v6 < (*(a1 + 16) - v4) >> 3);
  }
}

char *std::vector<OZChannelBase *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_25FACDE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *TXSequenceChannels::findChannel(TXSequenceChannels *this, int a2, int a3, int a4)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    return 0;
  }

  while (1)
  {
    result = *v4;
    v10 = *(*v4 + 24);
    if (v10 == a2)
    {
      break;
    }

    v11 = !a3 || v10 == a3;
    v12 = v11;
    if ((result[57] & 0x10) != 0 && v12)
    {
      result = OZChannelFolder::getDescendant(v13, a2);
      if (result)
      {
        break;
      }

      if (*(v13 + 6) == a3)
      {
        Descendant = OZChannelFolder::getDescendant(v13, a4);
        if (Descendant)
        {
          if (v15)
          {
            result = OZChannelFolder::getDescendant(v15, a2);
            if (result)
            {
              break;
            }
          }
        }
      }
    }

    v4 += 8;
    if (v4 == v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TXSequenceChannels::getColorChannelID(TXSequenceChannels *this)
{
  if (this > 3)
  {
    return 0;
  }

  else
  {
    return dword_2603478C0[this];
  }
}

void *TXSequenceChannels::materialSequenceFolder(TXSequenceChannels *this, int a2)
{
  v3 = *(this + 1);
  v4 = (*(this + 2) - v3) >> 3;
  v5 = (a2 + 6);
  if (v4 < v5)
  {
    return 0;
  }

  if (v4 <= v5)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = *(v3 + 8 * v5);
  if (!v6)
  {
    return 0;
  }
}

void TXSequenceChannels::renameMaterialAtIndex(TXSequenceChannels *this, const PCString *a2, int a3, int a4)
{
  v6 = TXSequenceChannels::materialSequenceFolder(this, a3);
  if (v6)
  {
    v7 = v6;
    if (a4)
    {
      PCURL::PCURL(&v8, @"Undo Name Change");
      (*(v7->var0 + 43))(v7, &v8);
      PCString::~PCString(&v8);
    }

    OZChannelBase::setName(v7, a2, 0);
  }
}

char *TXSequenceChannels::addMaterialChannels(TXSequenceChannels *this, OZMaterialBase *a2, unsigned int a3)
{
  OZChannel::getValueAsInt((a2 + 720), MEMORY[0x277CC08F0], 0.0);
  if (a2)
  {
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 3395);
      if (v8)
      {
      }

      else
      {
        v9 = 0;
      }

      OZLayeredMaterial::makeSequenceChannelFolder(v7, v9);
    }
  }

  v10 = *(this + 1) + 8 * a3;
  v12 = 0;
  return std::vector<OZChannelBase *>::insert(this + 1, (v10 + 48), &v12);
}

char *std::vector<OZChannelBase *>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_25FACE40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *TXSequenceChannels::moveMaterialLayerChannels(TXSequenceChannels *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v5 = (a5 + 6);
  v6 = *(this + 1);
  if (v5 >= (*(this + 2) - v6) >> 3 || (v7 = *(v6 + 8 * v5), v8 = **(v7 + 112), v9 = (*(*(v7 + 112) + 8) - v8) >> 3, v9 <= a2) || v9 <= a3)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *(v8 + 8 * a2);
  v12 = *(v8 + 8 * a3);
  result = OZChannelFolder::removeDescendant(v7, v11);
  if (a4 == 2)
  {

    return OZChannelFolder::insertDescendantBefore(v7, v12, v11);
  }

  else if (a4 == 3)
  {

    return OZChannelFolder::insertDescendantAfter(v7, v12, v11);
  }

  return result;
}

OZChannelFolder *TXSequenceChannels::removeMaterialLayerChannelsAtIndex(TXSequenceChannels *this, unsigned int a2, int a3)
{
  v3 = (a3 + 6);
  v4 = *(this + 1);
  if (v3 >= (*(this + 2) - v4) >> 3 || (v5 = *(v4 + 8 * v3), v6 = **(v5 + 112), a2 >= ((*(*(v5 + 112) + 8) - v6) >> 3)))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *(v6 + 8 * a2);
  result = OZChannelFolder::removeDescendant(v5, v7);
  if (v7)
  {
    v9 = *(v7->var0 + 1);

    return v9(v7);
  }

  return result;
}

uint64_t TXSequenceChannels::materialLayerSequenceFolder(TXSequenceChannels *this, unsigned int a2, int a3)
{
  v4 = TXSequenceChannels::materialSequenceFolder(this, a3);
  v5 = v4[14];
  if (v5)
  {
    v6 = (v5[1] - *v5) >> 3;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a2)
  {
    return 0;
  }

  v8 = *v5;
  if (a2 >= ((*(v4[14] + 8) - v8) >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v8 + 8 * a2);
}

void OZChannelAngle::OZChannelAngle(OZChannelAngle *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelAngle_FactoryBase = getOZChannelAngle_FactoryBase();
  OZChannel::OZChannel(this, OZChannelAngle_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287246030;
  this->var2 = &unk_287246390;
  OZChannelAngleInfo = OZChannelAngle::createOZChannelAngleInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelAngle::_OZChannelAngleInfo;
    this->var17 = OZChannelAngle::_OZChannelAngleInfo;
  }

  this->var16 = var17;
  OZChannelAngle::createOZChannelAngleImpl(OZChannelAngleInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAngle::_OZChannelAngleImpl;
    this->var15 = OZChannelAngle::_OZChannelAngleImpl;
  }

  this->var14 = var15;
}

uint64_t OZChannelAngle::createOZChannelAngleInfo(OZChannelAngle *this)
{
  if (atomic_load_explicit(&OZChannelAngle::createOZChannelAngleInfo(void)::_OZChannelAngleInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAngle::createOZChannelAngleInfo(void)::_OZChannelAngleInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAngle::createOZChannelAngleInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAngle::_OZChannelAngleInfo;
}

uint64_t OZChannelAngle::createOZChannelAngleImpl(OZChannelAngle *this)
{
  if (atomic_load_explicit(&OZChannelAngle::createOZChannelAngleImpl(void)::_OZChannelAngleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAngle::createOZChannelAngleImpl(void)::_OZChannelAngleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAngle::createOZChannelAngleImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAngle::_OZChannelAngleImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAngle::createOZChannelAngleInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAngle::_OZChannelAngleInfo)
  {
    operator new();
  }
}

void OZChannelAngleInfo::OZChannelAngleInfo(OZChannelAngleInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, -3.40282347e38, 3.40282347e38, 0.0174532925, 0.000174532925, 57.2957795, "°");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_2871EE4C8;
  *(this + 10) = &unk_2871EE4E8;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAngle::createOZChannelAngleImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAngle::_OZChannelAngleImpl)
  {
    operator new();
  }
}

void sub_25FACEA24(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelAngleImpl::~OZChannelAngleImpl(OZChannelAngleImpl *this)
{
  PCSingleton::~PCSingleton((this + 40));

  OZChannelImpl::~OZChannelImpl(this);
}

{
  PCSingleton::~PCSingleton((this + 40));
  OZChannelImpl::~OZChannelImpl(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelAngleImpl::~OZChannelAngleImpl(OZChannelAngleImpl *this)
{
  v1 = (this - 40);
  PCSingleton::~PCSingleton(this);

  OZChannelImpl::~OZChannelImpl(v1);
}

{
  v1 = (this - 40);
  PCSingleton::~PCSingleton(this);
  OZChannelImpl::~OZChannelImpl(v1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZCurveAngleSplineState::getInstance(OZCurveAngleSplineState *this)
{
  if (atomic_load_explicit(&OZCurveAngleSplineState::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCurveAngleSplineState::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCurveAngleSplineState::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCurveAngleSplineState::_instance;
}

void OZCurveAngle::~OZCurveAngle(OZCurve *this)
{
  OZCurve::~OZCurve(this);

  JUMPOUT(0x2666E9F00);
}

void OZCurveAngleSplineState::~OZCurveAngleSplineState(OZCurveAngleSplineState *this)
{
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t TXSequenceChannels::TXSequenceChannels_trackingImpl::getInstance(TXSequenceChannels::TXSequenceChannels_trackingImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_trackingImpl::getInstance(void)::TXSequenceChannels_trackingImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_trackingImpl::getInstance(void)::TXSequenceChannels_trackingImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_trackingImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_trackingImpl::_TXSequenceChannels_tracking;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_trackingImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_trackingImpl::_TXSequenceChannels_tracking)
  {
    operator new();
  }
}

uint64_t OZCurvePercentSplineState::getInstance(OZCurvePercentSplineState *this)
{
  if (atomic_load_explicit(&OZCurvePercentSplineState::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCurvePercentSplineState::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCurvePercentSplineState::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCurvePercentSplineState::_instance;
}

uint64_t TXSequenceChannels::TXSequenceChannels_trackingInfo::getInstance(TXSequenceChannels::TXSequenceChannels_trackingInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_trackingInfo::getInstance(void)::TXSequenceChannels_trackingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_trackingInfo::getInstance(void)::TXSequenceChannels_trackingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_trackingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_trackingInfo::_TXSequenceChannels_trackingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_trackingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_trackingInfo::_TXSequenceChannels_trackingInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_trackingInfo *TXSequenceChannels::TXSequenceChannels_trackingInfo::TXSequenceChannels_trackingInfo(TXSequenceChannels::TXSequenceChannels_trackingInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF110;
  *(this + 10) = &unk_2871EF130;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_faceBlurImpl::getInstance(TXSequenceChannels::TXSequenceChannels_faceBlurImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_faceBlurImpl::getInstance(void)::TXSequenceChannels_faceBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_faceBlurImpl::getInstance(void)::TXSequenceChannels_faceBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_faceBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_faceBlurImpl::_TXSequenceChannels_faceBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_faceBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_faceBlurImpl::_TXSequenceChannels_faceBlur)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_faceBlurInfo::getInstance(TXSequenceChannels::TXSequenceChannels_faceBlurInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_faceBlurInfo::getInstance(void)::TXSequenceChannels_faceBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_faceBlurInfo::getInstance(void)::TXSequenceChannels_faceBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_faceBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_faceBlurInfo::_TXSequenceChannels_faceBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_faceBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_faceBlurInfo::_TXSequenceChannels_faceBlurInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_faceBlurInfo *TXSequenceChannels::TXSequenceChannels_faceBlurInfo::TXSequenceChannels_faceBlurInfo(TXSequenceChannels::TXSequenceChannels_faceBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF200;
  *(this + 10) = &unk_2871EF220;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::getInstance(TXSequenceChannels::TXSequenceChannels_outlineBlurImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::getInstance(void)::TXSequenceChannels_outlineBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::getInstance(void)::TXSequenceChannels_outlineBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::_TXSequenceChannels_outlineBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_outlineBlurImpl::_TXSequenceChannels_outlineBlur)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::getInstance(TXSequenceChannels::TXSequenceChannels_outlineBlurInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::getInstance(void)::TXSequenceChannels_outlineBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::getInstance(void)::TXSequenceChannels_outlineBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::_TXSequenceChannels_outlineBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::_TXSequenceChannels_outlineBlurInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_outlineBlurInfo *TXSequenceChannels::TXSequenceChannels_outlineBlurInfo::TXSequenceChannels_outlineBlurInfo(TXSequenceChannels::TXSequenceChannels_outlineBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF2F0;
  *(this + 10) = &unk_2871EF310;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::getInstance(TXSequenceChannels::TXSequenceChannels_outlineWidthImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::getInstance(void)::TXSequenceChannels_outlineWidthImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::getInstance(void)::TXSequenceChannels_outlineWidthImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::_TXSequenceChannels_outlineWidth;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_outlineWidthImpl::_TXSequenceChannels_outlineWidth)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::getInstance(TXSequenceChannels::TXSequenceChannels_outlineWidthInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::getInstance(void)::TXSequenceChannels_outlineWidthInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::getInstance(void)::TXSequenceChannels_outlineWidthInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::_TXSequenceChannels_outlineWidthInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::_TXSequenceChannels_outlineWidthInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_outlineWidthInfo *TXSequenceChannels::TXSequenceChannels_outlineWidthInfo::TXSequenceChannels_outlineWidthInfo(TXSequenceChannels::TXSequenceChannels_outlineWidthInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF3E0;
  *(this + 10) = &unk_2871EF400;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_glowBlurImpl::getInstance(TXSequenceChannels::TXSequenceChannels_glowBlurImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_glowBlurImpl::getInstance(void)::TXSequenceChannels_glowBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_glowBlurImpl::getInstance(void)::TXSequenceChannels_glowBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_glowBlurImpl::_TXSequenceChannels_glowBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_glowBlurImpl::_TXSequenceChannels_glowBlur)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_glowBlurInfo::getInstance(TXSequenceChannels::TXSequenceChannels_glowBlurInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_glowBlurInfo::getInstance(void)::TXSequenceChannels_glowBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_glowBlurInfo::getInstance(void)::TXSequenceChannels_glowBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_glowBlurInfo::_TXSequenceChannels_glowBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_glowBlurInfo::_TXSequenceChannels_glowBlurInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_glowBlurInfo *TXSequenceChannels::TXSequenceChannels_glowBlurInfo::TXSequenceChannels_glowBlurInfo(TXSequenceChannels::TXSequenceChannels_glowBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF4D0;
  *(this + 10) = &unk_2871EF4F0;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::getInstance(TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::getInstance(void)::TXSequenceChannels_glowBlurObsoleteImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::getInstance(void)::TXSequenceChannels_glowBlurObsoleteImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::_TXSequenceChannels_glowBlurObsolete;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_glowBlurObsoleteImpl::_TXSequenceChannels_glowBlurObsolete)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::getInstance(TXSequenceChannels::TXSequenceChannels_glowRadiusImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::getInstance(void)::TXSequenceChannels_glowRadiusImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::getInstance(void)::TXSequenceChannels_glowRadiusImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::_TXSequenceChannels_glowRadius;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_glowRadiusImpl::_TXSequenceChannels_glowRadius)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::getInstance(TXSequenceChannels::TXSequenceChannels_glowRadiusInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::getInstance(void)::TXSequenceChannels_glowRadiusInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::getInstance(void)::TXSequenceChannels_glowRadiusInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::_TXSequenceChannels_glowRadiusInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::_TXSequenceChannels_glowRadiusInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_glowRadiusInfo *TXSequenceChannels::TXSequenceChannels_glowRadiusInfo::TXSequenceChannels_glowRadiusInfo(TXSequenceChannels::TXSequenceChannels_glowRadiusInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF638;
  *(this + 10) = &unk_2871EF658;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::getInstance(TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::getInstance(void)::TXSequenceChannels_dropShadowBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::getInstance(void)::TXSequenceChannels_dropShadowBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::_TXSequenceChannels_dropShadowBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_dropShadowBlurImpl::_TXSequenceChannels_dropShadowBlur)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::getInstance(TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::getInstance(void)::TXSequenceChannels_dropShadowBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::getInstance(void)::TXSequenceChannels_dropShadowBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::_TXSequenceChannels_dropShadowBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::_TXSequenceChannels_dropShadowBlurInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo *TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo::TXSequenceChannels_dropShadowBlurInfo(TXSequenceChannels::TXSequenceChannels_dropShadowBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF728;
  *(this + 10) = &unk_2871EF748;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::getInstance(TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::getInstance(void)::TXSequenceChannels_dropShadowDistanceImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::getInstance(void)::TXSequenceChannels_dropShadowDistanceImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::_TXSequenceChannels_dropShadowDistance;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_dropShadowDistanceImpl::_TXSequenceChannels_dropShadowDistance)
  {
    operator new();
  }
}

uint64_t TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::getInstance(TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::getInstance(void)::TXSequenceChannels_dropShadowDistanceInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::getInstance(void)::TXSequenceChannels_dropShadowDistanceInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::_TXSequenceChannels_dropShadowDistanceInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::_TXSequenceChannels_dropShadowDistanceInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo *TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo::TXSequenceChannels_dropShadowDistanceInfo(TXSequenceChannels::TXSequenceChannels_dropShadowDistanceInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EF818;
  *(this + 10) = &unk_2871EF838;
  return this;
}

uint64_t TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::getInstance(TXSequenceChannels::TXSequenceChannels_characterOffsetImpl *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::getInstance(void)::TXSequenceChannels_characterOffsetImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::getInstance(void)::TXSequenceChannels_characterOffsetImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::_TXSequenceChannels_characterOffset;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_characterOffsetImpl::_TXSequenceChannels_characterOffset)
  {
    operator new();
  }
}

uint64_t OZCurveIntSplineState::getInstance(OZCurveIntSplineState *this)
{
  if (atomic_load_explicit(&OZCurveIntSplineState::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCurveIntSplineState::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCurveIntSplineState::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCurveIntSplineState::_instance;
}

uint64_t TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::getInstance(TXSequenceChannels::TXSequenceChannels_characterOffsetInfo *this)
{
  if (atomic_load_explicit(&TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::getInstance(void)::TXSequenceChannels_characterOffsetInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::getInstance(void)::TXSequenceChannels_characterOffsetInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::_TXSequenceChannels_characterOffsetInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::_TXSequenceChannels_characterOffsetInfo)
  {
    operator new();
  }
}

TXSequenceChannels::TXSequenceChannels_characterOffsetInfo *TXSequenceChannels::TXSequenceChannels_characterOffsetInfo::TXSequenceChannels_characterOffsetInfo(TXSequenceChannels::TXSequenceChannels_characterOffsetInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871EFE78;
  *(this + 10) = &unk_2871EFE98;
  return this;
}

void OZChannelUint32::OZChannelUint32(OZChannelUint32 *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelUint32_FactoryBase = getOZChannelUint32_FactoryBase();
  OZChannel::OZChannel(this, OZChannelUint32_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287246400;
  this->var2 = &unk_287246760;
  OZChannelUint32Info = OZChannelUint32::createOZChannelUint32Info(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelUint32::_OZChannelUint32Info;
    this->var17 = OZChannelUint32::_OZChannelUint32Info;
  }

  this->var16 = var17;
  OZChannelUint32::createOZChannelUint32Impl(OZChannelUint32Info);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelUint32::_OZChannelUint32Impl;
    this->var15 = OZChannelUint32::_OZChannelUint32Impl;
  }

  this->var14 = var15;
}

uint64_t OZChannelUint32::createOZChannelUint32Info(OZChannelUint32 *this)
{
  if (atomic_load_explicit(&OZChannelUint32::createOZChannelUint32Info(void)::_OZChannelUint32Info_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelUint32::createOZChannelUint32Info(void)::_OZChannelUint32Info_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint32::createOZChannelUint32Info(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelUint32::_OZChannelUint32Info;
}

uint64_t OZChannelUint32::createOZChannelUint32Impl(OZChannelUint32 *this)
{
  if (atomic_load_explicit(&OZChannelUint32::createOZChannelUint32Impl(void)::_OZChannelUint32Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelUint32::createOZChannelUint32Impl(void)::_OZChannelUint32Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint32::createOZChannelUint32Impl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelUint32::_OZChannelUint32Impl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint32::createOZChannelUint32Info(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelUint32::_OZChannelUint32Info)
  {
    operator new();
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint32::createOZChannelUint32Impl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelUint32::_OZChannelUint32Impl)
  {
    operator new();
  }
}

void sub_25FAD1890(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannel2D::~OZChannel2D(OZChannel2D *this)
{
  *this = &unk_28724AE00;
  *(this + 2) = &unk_28724B158;
  OZChannel::~OZChannel((this + 288));
  OZChannel::~OZChannel((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  OZChannel2D::~OZChannel2D(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelQuad::~OZChannelQuad(OZChannelQuad *this)
{
  *this = &unk_2872545B8;
  *(this + 2) = &unk_287254900;
  OZChannelPosition::~OZChannelPosition((this + 2248));
  OZChannelPosition::~OZChannelPosition((this + 1544));
  OZChannelPosition::~OZChannelPosition((this + 840));
  OZChannelPosition::~OZChannelPosition((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  OZChannelQuad::~OZChannelQuad(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelColorNoAlpha::~OZChannelColorNoAlpha(OZChannelColorNoAlpha *this)
{
  *this = &unk_28724CB50;
  *(this + 2) = &unk_28724CEC0;
  OZChannelEnum::~OZChannelEnum((this + 744));
  OZChannel::~OZChannel((this + 592));
  OZChannel::~OZChannel((this + 440));
  OZChannel::~OZChannel((this + 288));
  OZChannel::~OZChannel((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha(this);

  JUMPOUT(0x2666E9F00);
}

void TXFont::~TXFont(TXFont *this)
{
  *this = &unk_2871EFF60;
  v2 = (this + 32);
  PCMutex::lock((this + 32));
  v3 = *(this + 1);
  if (v3 != (this + 16))
  {
    do
    {
      v4 = *(v3 + 5);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      *(v3 + 5) = 0;
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (this + 16));
  }

  PCMutex::unlock(v2);
  PCMutex::~PCMutex(v2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 8, *(this + 2));
}

uint64_t TXFont::getGlyph(TXFont *this, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v6 = (this + 32);
  PCMutex::lock((this + 32));
  for (i = *(this + 2); i; i = *i)
  {
    v8 = *(i + 16);
    if (v8 <= a2)
    {
      if (v8 >= a2)
      {
        v12 = &v11;
        v9 = std::__tree<std::__value_type<unsigned short,TXGlyph *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TXGlyph *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TXGlyph *>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 8, &v11)[5];
        goto LABEL_8;
      }

      ++i;
    }
  }

  v9 = (*(*this + 72))(this, a2, a3);
  v12 = &v11;
  std::__tree<std::__value_type<unsigned short,TXGlyph *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TXGlyph *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TXGlyph *>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 8, &v11)[5] = v9;
LABEL_8:
  PCMutex::unlock(v6);
  return v9;
}

void TXCoreTextFont::TXCoreTextFont(TXCoreTextFont *this, int a2, PCString *a3)
{
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  TXFont::TXFont(this);
  *v6 = &unk_2871EFFC0;
  *(v6 + 104) = a2;
  PCString::PCString((v6 + 112), a3);
  *(this + 15) = 0;
  *(this + 16) = 0x408F400000000000;
  *(this + 136) = 0;
  v7 = PCString::cf_str(a3);
  *(this + 15) = OZCreateFontWithName(v7, *(this + 16), 0);
}

void TXFont::TXFont(TXFont *this)
{
  *this = &unk_2871EFF60;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  PCMutex::PCMutex((this + 32));
}

void TXCoreTextFont::TXCoreTextFont(TXCoreTextFont *this, int a2, const PCString *a3, const __CTFont *a4)
{
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  TXFont::TXFont(this);
  *v8 = &unk_2871EFFC0;
  *(v8 + 104) = a2;
  PCString::PCString((v8 + 112), a3);
  *(this + 15) = a4;
  *(this + 136) = 0;
  if (a4)
  {
    CFRetain(a4);
    *(this + 16) = CTFontGetSize(a4);
  }
}

void TXCoreTextFont::~TXCoreTextFont(PCString *this)
{
  this->var0 = &unk_2871EFFC0;
  var0 = this[15].var0;
  if (var0)
  {
    CFRelease(var0);
  }

  PCString::~PCString(this + 14);

  TXFont::~TXFont(this);
}

{
  TXCoreTextFont::~TXCoreTextFont(this);

  JUMPOUT(0x2666E9F00);
}

void TXCoreTextFont::getMetricsForGlyph(uint64_t a1@<X0>, CGGlyph a2@<W1>, double *a3@<X2>, float64x2_t *a4@<X8>, double a5@<D0>)
{
  glyphs = a2;
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(*(a1 + 120), kCTFontOrientationHorizontal, &glyphs, 0, 1);
  v9 = a5 / *(a1 + 128);
  a4[1].f64[0] = v9 * BoundingRectsForGlyphs.size.width;
  a4[1].f64[1] = v9 * BoundingRectsForGlyphs.size.height;
  y = BoundingRectsForGlyphs.origin.y;
  BoundingRectsForGlyphs.origin = vmulq_n_f64(vbicq_s8(BoundingRectsForGlyphs.origin, vceqq_f64(vabsq_f64(BoundingRectsForGlyphs.origin), vdupq_n_s64(0x7FF0000000000000uLL))), v9);
  *a4 = BoundingRectsForGlyphs.origin;
  a4[2] = vnegq_f64(BoundingRectsForGlyphs.origin);
  if (a3)
  {
    PCMatrix33Tmpl<double>::transform<double>(a3, a4->f64, a4);
    v11 = a4[2].f64[0];
    v12 = a4[2].f64[1];
    v13 = a3[2] + v11 * *a3 + v12 * a3[1];
    v14 = a3[5] + v11 * a3[3] + v12 * a3[4];
    a4[2].f64[0] = v13;
    a4[2].f64[1] = v14;
  }
}

double TXCoreTextFont::getBoundingRectForGlyph@<D0>(TXCoreTextFont *this@<X0>, double a2@<D0>, CGGlyph a3@<W1>, double *a4@<X8>)
{
  glyphs = a3;
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(*(this + 15), kCTFontOrientationHorizontal, &glyphs, 0, 1);
  v7 = a2 / *(this + 16);
  *a4 = v7 * BoundingRectsForGlyphs.origin.x;
  a4[1] = v7 * BoundingRectsForGlyphs.origin.y;
  result = v7 * BoundingRectsForGlyphs.size.height;
  a4[2] = v7 * BoundingRectsForGlyphs.size.width;
  a4[3] = v7 * BoundingRectsForGlyphs.size.height;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned short,TXGlyph *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TXGlyph *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TXGlyph *>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float64x2_t PCMatrix33Tmpl<double>::transform<double>(double *a1, double *a2, float64x2_t *a3)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  if (v4 < 0.0 || (v5 = a2[3], v5 < 0.0))
  {
    __asm { FMOV            V0.2D, #-1.0 }

    a3[1] = result;
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    v20[0] = *a2;
    v20[1] = v8 + v5;
    v20[2] = v4 + v20[0];
    v20[3] = v8 + v5;
    v20[4] = v4 + v20[0];
    v20[5] = v8;
    v20[6] = v20[0];
    v20[7] = v8;
    __asm { FMOV            V0.2D, #-1.0 }

    a3[1] = _Q0;
    do
    {
      v14 = &v20[v7];
      v15 = v20[v7];
      v16 = v20[v7 + 1];
      v17 = a1[2] + v15 * *a1 + v16 * a1[1];
      v18 = a1[5] + v15 * a1[3] + v16 * a1[4];
      *v14 = v17;
      v14[1] = v18;
      *&result.f64[0] = *&PCRect<double>::operator|=(a3, &v20[v7]);
      v7 += 2;
    }

    while (v7 != 8);
  }

  return result;
}

void TXCoreTextTypeface::TXCoreTextTypeface(TXCoreTextTypeface *this, const PCString *a2, const PCString *a3, int a4, OZFontFamily *a5)
{
  OZCoreTextTypeface::OZCoreTextTypeface(this, a2, a3, a4, a5);
  *v5 = &unk_2871F0048;
  operator new();
}

void sub_25FAD2490(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10E1C40F10BFBABLL);
  OZCoreTextTypeface::~OZCoreTextTypeface(v1);
  _Unwind_Resume(a1);
}

void TXCoreTextTypeface::TXCoreTextTypeface(TXCoreTextTypeface *this, const PCString *a2, const PCString *a3, int a4, OZFontFamily *a5, const __CTFont *a6)
{
  OZCoreTextTypeface::OZCoreTextTypeface(this, a2, a3, a4, a5);
  *v6 = &unk_2871F0048;
  operator new();
}

void sub_25FAD2558(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10E1C40F10BFBABLL);
  OZCoreTextTypeface::~OZCoreTextTypeface(v1);
  _Unwind_Resume(a1);
}

void TXCoreTextTypeface::~TXCoreTextTypeface(PCString *this)
{
  this->var0 = &unk_2871F0048;
  var0 = this[5].var0;
  if (var0)
  {
    (*(var0->isa + 1))(var0);
  }

  this[5].var0 = 0;

  OZCoreTextTypeface::~OZCoreTextTypeface(this);
}

{
  TXCoreTextTypeface::~TXCoreTextTypeface(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t TXFontManager::getInstance(TXFontManager *this)
{
  if (TXFontManager::getInstance(void)::once != -1)
  {
    TXFontManager::getInstance();
  }

  return TXFontManager::_instance;
}

uint64_t TXFontManager::cleanup(TXFontManager *this)
{
  result = TXFontManager::_instance;
  if (TXFontManager::_instance)
  {
    result = (*(*TXFontManager::_instance + 8))(TXFontManager::_instance);
  }

  TXFontManager::_instance = 0;
  return result;
}

void TXFontManager::TXFontManager(TXFontManager *this)
{
  OZFontManagerBase::OZFontManagerBase(this);
  PCSingleton::PCSingleton((v2 + 160), 0);
  *this = &unk_2871F00A8;
  *(this + 22) = 0;
  *(this + 20) = &unk_2871F0100;
  *(this + 21) = this + 176;
  *(this + 26) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 24) = this + 200;
}

void TXFontManager::~TXFontManager(TXFontManager *this)
{
  *this = &unk_2871F00A8;
  v2 = (this + 160);
  *(this + 20) = &unk_2871F0100;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(this + 192, *(this + 25));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 168, *(this + 22));
  PCSingleton::~PCSingleton(v2);

  OZFontManagerBase::~OZFontManagerBase(this);
}

{
  TXFontManager::~TXFontManager(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXFontManager::~TXFontManager(TXFontManager *this)
{
  TXFontManager::~TXFontManager((this - 160));
}

{
  TXFontManager::~TXFontManager((this - 160));

  JUMPOUT(0x2666E9F00);
}

uint64_t TXFontManager::getFontFace@<X0>(TXFontManager *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  PCMutex::lock((this + 64));
  v6 = *(this + 25);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 200;
  do
  {
    v8 = *(v6 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 != this + 200 && *(v7 + 8) <= a2)
  {
    v13 = *(v7 + 5);
    v12 = *(v7 + 6);
    *a3 = v13;
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return PCMutex::unlock((this + 64));
}

uint64_t TXFontManager::getCoreTextFont(TXFontManager *this, unsigned int a2)
{
  v4 = (this + 64);
  v11 = this + 64;
  PCMutex::lock((this + 64));
  v12 = 1;
  TXFontManager::getFontFace(this, a2, &lpsrc);
  {
    v6 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = v5[5];
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v7 = v5[5];
    }
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  PCMutex::unlock(v4);
  return v7;
}

void sub_25FAD2AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXFontManager::addFontFace(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 64);
  v16 = a1 + 64;
  PCMutex::lock((a1 + 64));
  v17 = 1;
  v5 = *(a2 + 8);
  v14 = *a2;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OZFontManagerBase::addFontFace(a1, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v6[8];
  v18 = &v13;
  v8 = std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1 + 192, &v13);
  v10 = *a2;
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v8[6];
  v8[5] = v10;
  v8[6] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return PCMutex::unlock(v4);
}

void sub_25FAD2C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXFontManager::getCoreTextFont(TXFontManager *this, const PCString *a2)
{
  (*(*this + 56))(&v7);
  v4 = v7;
  v3 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (!v4)
  {
    CoreTextFont = 0;
    if (!v3)
    {
      return CoreTextFont;
    }

    goto LABEL_6;
  }

  CoreTextFont = TXFontManager::getCoreTextFont(this, *(v4 + 32));
  if (v3)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return CoreTextFont;
}

void sub_25FAD2CD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

OZFontManagerBase *TXFontManager::initFonts(OZFontManagerBase *this)
{
  if ((*(this + 136) & 1) == 0)
  {
    v2 = this;
    TXFontManager::registerCustomFonts(this);

    return OZFontManagerBase::initFonts(v2);
  }

  return this;
}

void TXFontManager::registerCustomFonts(TXFontManager *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((TXFontManager::registerCustomFonts(void)::customFontsRegistered & 1) == 0)
  {
    OZChannelBase::setRangeName(&v15, @"Motion Effect");
    v1 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v11 objects:&v15.var0 + 1 count:16];
    if (v3)
    {
      v4 = *v12;
      do
      {
        v5 = 0;
        do
        {
          if (*v12 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = CFURLCreateWithFileSystemPath(0, *(*(&v11 + 1) + 8 * v5), kCFURLPOSIXPathStyle, 0);
          v7 = v6;
          if (v6)
          {
            error = 0;
            if (!CTFontManagerRegisterFontsForURL(v6, kCTFontManagerScopeProcess, &error))
            {
              v8 = CFErrorCopyDescription(error);
              PCURL::PCURL(&v9, v8);
              PCString::~PCString(&v9);
            }

            CFRelease(v7);
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v11 objects:&v15.var0 + 1 count:16];
      }

      while (v3);
    }

    TXFontManager::registerCustomFonts(void)::customFontsRegistered = 1;
    OZChannelBase::setRangeName(&v15, v2);
  }
}

uint64_t TXFontManager::getFontFace@<X0>(const PCString *this@<X0>, PCString *a2@<X1>, void *a3@<X8>)
{
  v6 = &this[8];
  v12 = this + 8;
  PCMutex::lock(&this[8]);
  v13 = 1;
  OZFontManagerBase::getFontFace(this, a2, &v10);
  if (!v10)
  {
    v8 = PCString::cf_str(a2);
    OZGetNewFontID(v8);
    operator new();
  }

  v7 = v11;
  *a3 = v10;
  a3[1] = v7;
  v10 = 0;
  v11 = 0;
  return PCMutex::unlock(v6);
}

void sub_25FAD31D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, PCString a11, PCString a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v17 = *(v15 + 8);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(&a15);
  _Unwind_Resume(a1);
}

BOOL TXFontManager::containsFontWithName(const PCString *this, PCString *a2)
{
  v4 = &this[8];
  v9 = this + 8;
  PCMutex::lock(&this[8]);
  v10 = 1;
  OZFontManagerBase::getFontFace(this, a2, &v7);
  v5 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  PCMutex::unlock(v4);
  return v5 != 0;
}

void sub_25FAD32EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void sub_25FAD3368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<OZFontFace>::shared_ptr[abi:ne200100]<TXCoreTextTypeface,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TXCoreTextTypeface *,std::shared_ptr<OZFontFace>::__shared_ptr_default_delete<OZFontFace,TXCoreTextTypeface>,std::allocator<TXCoreTextTypeface>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<TXCoreTextTypeface *,std::shared_ptr<OZFontFace>::__shared_ptr_default_delete<OZFontFace,TXCoreTextTypeface>,std::allocator<TXCoreTextTypeface>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TXCoreTextTypeface *,std::shared_ptr<OZFontFace>::__shared_ptr_default_delete<OZFontFace,TXCoreTextTypeface>,std::allocator<TXCoreTextTypeface>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void TXTimeGlyphPropertiesMap::TXTimeGlyphPropertiesMap(TXTimeGlyphPropertiesMap *this)
{
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 5) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 32;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
}

uint64_t TXTimeGlyphPropertiesMap::preSelectGlyphMap(TXTimeGlyphPropertiesMap *this, CMTime *a2)
{
  result = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(this, a2);
  *(this + 12) = result + 56;
  return result;
}

__n128 TXTimeGlyphPropertiesMap::setPosition(uint64_t a1, CMTime *a2, unsigned int *a3, __n128 *a4)
{
  v7 = *(a1 + 96);
  if (!v7)
  {
    v7 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(a1, a2) + 56;
  }

  v8 = std::__tree<std::__value_type<unsigned int,GlyphProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,GlyphProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,GlyphProperties>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, a3);
  result = *a4;
  v8[7] = a4[1].n128_i64[0];
  *(v8 + 5) = result;
  return result;
}

uint64_t TXTimeGlyphPropertiesMap::getPosition@<X0>(uint64_t this@<X0>, CMTime *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v6 = *(this + 96);
  if (!v6)
  {
    this = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(this, a2);
    v6 = this + 56;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v6 + 8;
  v7 = *(v6 + 8);
  if (!v7)
  {
    if (*(v6 + 16))
    {
      do
      {
        v15 = *(v8 + 16);
        v16 = *v15 == v8;
        v8 = v15;
      }

      while (v16);
      goto LABEL_16;
    }

LABEL_17:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return this;
  }

  v9 = *a3;
  v10 = v6 + 8;
  v11 = *(v6 + 8);
  do
  {
    v12 = *(v11 + 32);
    v13 = v12 >= v9;
    v14 = v12 < v9;
    if (v13)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v10 != v8 && v9 >= *(v10 + 32))
  {
    v17 = *(v10 + 40);
    v18 = *(v10 + 56);
    goto LABEL_19;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_17;
  }

  do
  {
    v15 = v7;
    v7 = *(v7 + 8);
  }

  while (v7);
LABEL_16:
  v17 = *(v15 + 40);
  v18 = *(v15 + 56);
LABEL_19:
  a4[2] = v18;
  *a4 = v17;
  return this;
}

__n128 TXTimeGlyphPropertiesMap::setPathRotation(uint64_t a1, CMTime *a2, unsigned int *a3, __n128 *a4)
{
  v7 = *(a1 + 96);
  if (!v7)
  {
    v7 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(a1, a2) + 56;
  }

  v8 = std::__tree<std::__value_type<unsigned int,GlyphProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,GlyphProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,GlyphProperties>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, a3);
  result = *a4;
  v8[5].n128_u64[0] = a4[1].n128_u64[0];
  v8[4] = result;
  return result;
}

uint64_t TXTimeGlyphPropertiesMap::getPathRotation@<X0>(uint64_t this@<X0>, CMTime *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v6 = *(this + 96);
  if (!v6)
  {
    this = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(this, a2);
    v6 = this + 56;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v6 + 8;
  v7 = *(v6 + 8);
  if (!v7)
  {
    if (*(v6 + 16))
    {
      do
      {
        v15 = *(v8 + 16);
        v16 = *v15 == v8;
        v8 = v15;
      }

      while (v16);
      goto LABEL_16;
    }

LABEL_17:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return this;
  }

  v9 = *a3;
  v10 = v6 + 8;
  v11 = *(v6 + 8);
  do
  {
    v12 = *(v11 + 32);
    v13 = v12 >= v9;
    v14 = v12 < v9;
    if (v13)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v10 != v8 && v9 >= *(v10 + 32))
  {
    v17 = *(v10 + 64);
    v18 = *(v10 + 80);
    goto LABEL_19;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_17;
  }

  do
  {
    v15 = v7;
    v7 = *(v7 + 8);
  }

  while (v7);
LABEL_16:
  v17 = *(v15 + 64);
  v18 = *(v15 + 80);
LABEL_19:
  a4[2] = v18;
  *a4 = v17;
  return this;
}

uint64_t *TXTimeGlyphPropertiesMap::setTypeOn(TXTimeGlyphPropertiesMap *this, double a2, unsigned int a3, CMTime *a4)
{
  v8 = a3;
  v6 = *(this + 12);
  if (!v6)
  {
    v9 = a4;
    v6 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(this, a4) + 56;
  }

  v9 = &v8;
  result = std::__tree<std::__value_type<unsigned int,GlyphProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,GlyphProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,GlyphProperties>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v6, &v8);
  *(result + 11) = a2;
  return result;
}

double TXTimeGlyphPropertiesMap::getTypeOn(TXTimeGlyphPropertiesMap *this, unsigned int a2, CMTime *a3)
{
  v4 = *(this + 12);
  if (!v4)
  {
    v4 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(this, a3) + 56;
  }

  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  result = 1.0;
  if (v7)
  {
    v9 = v5;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v5 && *(v9 + 32) <= a2)
    {
      return *(v9 + 88);
    }
  }

  return result;
}

double TXTimeGlyphPropertiesMap::setHash(int64x2_t *this, CMTime *a2, const PCHash128 *a3)
{
  if (this[5].i64[1] >= 0x19uLL)
  {
    v6 = 8;
    do
    {
      v7 = this[5].i64[1] - 1;
      v8 = *(this[3].i64[1] + 8 * ((v7 + this[5].i64[0]) / 0xAAuLL)) + 24 * ((v7 + this[5].i64[0]) % 0xAAuLL);
      v9 = *(v8 + 16);
      *&v11.value = *v8;
      v11.epoch = v9;
      this[5].i64[1] = v7;
      std::deque<CMTime>::__maybe_remove_back_spare[abi:ne200100](this[3].i64, 1);
      TXTimeGlyphPropertiesMap::evict(this, &v11);
      --v6;
    }

    while (v6);
  }

  v11.value = a2;
  *(std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(&this[1].i64[1], a2) + 52) = *a3;
  return TXTimeGlyphPropertiesMap::promoteTime(this, a2);
}

void TXTimeGlyphPropertiesMap::evict(uint64_t **this, CMTime *a2)
{
  v4 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::find<CMTime>(this, a2);
  if (this + 1 != v4)
  {
    std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::erase(this, v4);
  }

  v5 = std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::find<CMTime>((this + 3), a2);
  if (this + 4 != v5)
  {
    v6 = v5;
    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 3, v5);

    operator delete(v6);
  }
}

double TXTimeGlyphPropertiesMap::promoteTime(int64x2_t *this, const CMTime *a2)
{
  v4 = this[5].u64[0];
  v5 = this[3].i64[1];
  v6 = this[4].i64[0];
  v7 = (v5 + 8 * (v4 / 0xAA));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((this[5].i64[1] + v4) / 0xAA));
  }

  else
  {
    v8 = (*(v5 + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA));
    v9 = this[5].i64[1] + v4;
    v10 = (v5 + 8 * (v9 / 0xAA));
    v11 = (*v10 + 24 * (v9 % 0xAA));
  }

  v13 = std::__find_segment_if[abi:ne200100]<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__find_segment<CMTime>,std::__identity>(v7, v8, v10, v11, &a2->value);
  v14 = this[3].i64[1];
  if (this[4].i64[0] == v14)
  {
    v16 = 0;
  }

  else
  {
    v15 = this[5].i64[1] + this[5].i64[0];
    v16 = *(v14 + 8 * (v15 / 0xAA)) + 24 * (v15 % 0xAA);
  }

  if (v16 != v12)
  {
    std::deque<CMTime>::erase(this + 3, v13, v12);
  }

  *&result = std::deque<CMTime>::push_front(this + 3, &a2->value).u64[0];
  return result;
}

unint64_t std::deque<CMTime>::erase(int64x2_t *a1, void *a2, char *a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0xAA));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = &(*v6)[24 * (v4 % 0xAA)];
  }

  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 170 * (a2 - v6) - 0x5555555555555555 * (&a3[-*a2] >> 3) + 0x5555555555555555 * ((v7 - *v6) >> 3);
  }

  v27[0].n128_u64[0] = v5 + 8 * (v4 / 0xAA);
  v27[0].n128_u64[1] = v7;
  std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>::operator+=[abi:ne200100](v27, v8);
  v9 = a1[2].i64[1];
  v10 = v27[0].n128_u64[1] - *v27[0].n128_u64[0];
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  if (v8 <= (v9 - 1) >> 1)
  {
    if (v10 < -23)
    {
      v15 = (v27[0].n128_u64[0] - 8 * ((168 - v11) / 0xAA));
      v16 = (*v15 + 24 * (170 * ((168 - v11) / 0xAA) - (168 - v11)) + 4056);
    }

    else
    {
      v15 = (v27[0].n128_u64[0] + 8 * ((v11 + 1) / 0xAA));
      v16 = (*v15 + 24 * ((v11 + 1) % 0xAA));
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,0>(v6, v7, v27[0].n128_u64[0], v27[0].n128_u64[1], v15, v16, v27);
    a1[2] = vaddq_s64(a1[2], xmmword_260342880);
    std::deque<CMTime>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
  }

  else
  {
    if (v10 < -23)
    {
      v17 = 168 - v11;
      v13 = (v27[0].n128_u64[0] - 8 * (v17 / 0xAA));
      v14 = &(*v13)[24 * (170 * (v17 / 0xAA) - v17) + 4056];
    }

    else
    {
      v12 = v11 + 1;
      v13 = (v27[0].n128_u64[0] + 8 * (v12 / 0xAA));
      v14 = &(*v13)[24 * (v12 % 0xAA)];
    }

    v18 = a1[2].i64[0] + v9;
    v19 = a1->i64[1];
    v20 = (v19 + 8 * (v18 / 0xAA));
    if (a1[1].i64[0] == v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = &(*v20)[24 * (v18 % 0xAA)];
    }

    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>>>(v13, v14, v20, v21, v27);
    --a1[2].i64[1];
    std::deque<CMTime>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
  }

  v22 = a1[2].u64[0];
  v23 = a1->i64[1];
  v24 = (v23 + 8 * (v22 / 0xAA));
  if (a1[1].i64[0] == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = *v24 + 24 * (v22 % 0xAA);
  }

  v27[0].n128_u64[0] = v24;
  v27[0].n128_u64[1] = v25;
  std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>::operator+=[abi:ne200100](v27, v8);
  return v27[0].n128_u64[0];
}

int64x2_t std::deque<CMTime>::push_front(int64x2_t *a1, __int128 *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<CMTime>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0xAA));
  v7 = *v6 + 24 * (v4 % 0xAA);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4080;
  }

  v8 = *a2;
  *(v7 - 8) = *(a2 + 2);
  *(v7 - 24) = v8;
  result = vaddq_s64(a1[2], xmmword_260342890);
  a1[2] = result;
  return result;
}

__n128 TXTimeGlyphPropertiesMap::getHash@<Q0>(TXTimeGlyphPropertiesMap *this@<X0>, CMTime *a2@<X1>, PCWorkingColorVector *a3@<X8>)
{
  PCWorkingColorVector::PCWorkingColorVector(a3);
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::find<CMTime>(this + 24, a2);
  if ((this + 32) != v6)
  {
    result = *(v6 + 52);
    *a3 = result;
  }

  return result;
}

void TXTimeGlyphPropertiesMap::flush(TXTimeGlyphPropertiesMap *this)
{
  v3 = *(this + 11);
  if (v3 >= 2)
  {
    v9 = v1;
    v10 = v2;
    do
    {
      v5 = v3 - 1;
      v6 = *(*(this + 7) + 8 * ((*(this + 10) + v5) / 0xAA)) + 24 * ((*(this + 10) + v5) % 0xAA);
      v7 = *(v6 + 16);
      *&v8.value = *v6;
      v8.epoch = v7;
      *(this + 11) = v5;
      std::deque<CMTime>::__maybe_remove_back_spare[abi:ne200100](this + 6, 1);
      TXTimeGlyphPropertiesMap::evict(this, &v8);
      v3 = *(this + 11);
    }

    while (v3 > 1);
  }
}

uint64_t std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(uint64_t a1, CMTime *a2)
{
  v2 = *std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__find_equal<CMTime>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__find_equal<CMTime>(uint64_t a1, void *a2, CMTime *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        time1 = *a3;
        v9 = *(v4 + 4);
        if ((CMTimeCompare(&time1, &v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      time1 = *(v7 + 4);
      v9 = *a3;
      if ((CMTimeCompare(&time1, &v9) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<unsigned int,GlyphProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,GlyphProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,GlyphProperties>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::deque<CMTime>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(uint64_t a1, CMTime *a2)
{
  result = *std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::__find_equal<CMTime>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::__find_equal<CMTime>(uint64_t a1, void *a2, CMTime *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        time1 = *a3;
        v9 = *(v4 + 28);
        if ((CMTimeCompare(&time1, &v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      time1 = *(v7 + 28);
      v9 = *a3;
      if ((CMTimeCompare(&time1, &v9) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_25FAD45CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *std::__find_segment_if[abi:ne200100]<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__find_segment<CMTime>,std::__identity>(void *a1, __int128 *a2, void *a3, __int128 *a4, __int128 *a5)
{
  v7 = a2;
  v8 = a1;
  if (a1 != a3)
  {
    v11 = a3;
    v12 = *a1 + 4080;
    if (v12 == a2)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v13 = *v7;
      time1.epoch = *(v7 + 2);
      *&time1.value = v13;
      v14 = *a5;
      v25.epoch = *(a5 + 2);
      *&v25.value = v14;
      if (!CMTimeCompare(&time1, &v25))
      {
        break;
      }

      v7 = (v7 + 24);
      if (v7 == v12)
      {
LABEL_21:
        while (1)
        {
          v18 = v8;
          v20 = v8[1];
          ++v8;
          v19 = v20;
          if (v8 == v11)
          {
            break;
          }

          for (i = 0; i != 4080; i += 24)
          {
            v16 = *(v19 + i);
            time1.epoch = *(v19 + i + 16);
            *&time1.value = v16;
            v17 = *a5;
            v25.epoch = *(a5 + 2);
            *&v25.value = v17;
            if (!CMTimeCompare(&time1, &v25))
            {
              break;
            }
          }

          if (i != 4080)
          {
            if ((*v8 + 4080) == (v19 + i))
            {
              return v18 + 2;
            }

            return v8;
          }
        }

        if (v19 == a4)
        {
          v23 = v19;
        }

        else
        {
          while (1)
          {
            v21 = *v19;
            time1.epoch = *(v19 + 2);
            *&time1.value = v21;
            v22 = *a5;
            v25.epoch = *(a5 + 2);
            *&v25.value = v22;
            if (!CMTimeCompare(&time1, &v25))
            {
              break;
            }

            v19 = (v19 + 24);
            if (v19 == a4)
            {
              v19 = a4;
              break;
            }
          }

          v23 = v19;
          v19 = *v8;
        }

        if (v19 + 255 == v23)
        {
          return v18 + 2;
        }

        return v11;
      }
    }

    if (v7 == v12)
    {
      goto LABEL_21;
    }

    if (v7 != (*v8 + 4080))
    {
      return v8;
    }

    return ++v8;
  }

  if (a2 != a4)
  {
    while (1)
    {
      v9 = *v7;
      time1.epoch = *(v7 + 2);
      *&time1.value = v9;
      v10 = *a5;
      v25.epoch = *(a5 + 2);
      *&v25.value = v10;
      if (!CMTimeCompare(&time1, &v25))
      {
        break;
      }

      v7 = (v7 + 24);
      if (v7 == a4)
      {
        v7 = a4;
        break;
      }
    }
  }

  if (v8)
  {
    if ((*v8 + 4080) != v7)
    {
      return v8;
    }

    return ++v8;
  }

  return 0;
}

uint64_t std::deque<CMTime>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

void *std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (170 * (v5 / 0xAA) - v5) + 4056;
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] + 24 * (v3 % 0xAA);
    }

    result[1] = v4;
  }

  return result;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CMTime *,std::__deque_iterator<CMTime,CMTime *,CMTime&,CMTime **,long,170l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4080;
    }

    v12 = *v17 + 4080;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CMTime *,std::__deque_iterator<CMTime,CMTime *,CMTime&,CMTime **,long,170l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CMTime *,std::__deque_iterator<CMTime,CMTime *,CMTime&,CMTime **,long,170l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (&a4[-v10] >> 3);
      if ((0xAAAAAAAAAAAAAAABLL * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - a1) >> 3);
      }

      v11 -= 24 * v12;
      a4 -= 24 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 24 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a4 = (v14 + 4080);
    }

    if ((*v6 + 4080) == a4)
    {
      v15 = v6[1];
      ++v6;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>,std::__deque_iterator<CMTime,CMTime*,CMTime&,CMTime**,long,170l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,CMTime *,CMTime *,std::__deque_iterator<CMTime,CMTime *,CMTime&,CMTime **,long,170l>,0>(__src, *(a5 + 8), *a1 + 4080, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,CMTime *,CMTime *,std::__deque_iterator<CMTime,CMTime *,CMTime&,CMTime **,long,170l>,0>(v13, *(a5 + 8), v13 + 4080, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,CMTime *,CMTime *,std::__deque_iterator<CMTime,CMTime *,CMTime&,CMTime **,long,170l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,CMTime *,CMTime *,std::__deque_iterator<CMTime,CMTime *,CMTime&,CMTime **,long,170l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __dst + 4080) >> 3);
      if ((0xAAAAAAAAAAAAAAABLL * ((a3 - v9) >> 3)) < v11)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v9) >> 3);
      }

      v12 = 3 * v11;
      v13 = 24 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 24 * v11);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4080 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

const void **std::deque<CMTime>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0xAA)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v10);
  }

  *(a1 + 32) = v5 + 170;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_front<PVLoadedEffectItem *&>(a1, v11);
}

void sub_25FAD4E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::find<CMTime>(uint64_t a1, CMTime *a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::__lower_bound<CMTime>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  time1 = *a2;
  v7 = *(v4 + 28);
  if (CMTimeCompare(&time1, &v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<CMTime,PCHash128>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCHash128>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCHash128>>>::__lower_bound<CMTime>(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      time1 = *(v5 + 28);
      v9 = *a2;
      v7 = CMTimeCompare(&time1, &v9);
      if (v7 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v7 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::find<CMTime>(uint64_t a1, CMTime *a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__lower_bound<CMTime>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  time1 = *a2;
  v7 = *(v4 + 32);
  if (CMTimeCompare(&time1, &v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__lower_bound<CMTime>(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      time1 = *(v5 + 32);
      v9 = *a2;
      v7 = CMTimeCompare(&time1, &v9);
      if (v7 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v7 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, a2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a2 + 56, *(a2 + 64));
  operator delete(a2);
  return v3;
}

void TXGlyph::TXGlyph(TXGlyph *this, __int16 a2, __int16 a3, TXFont *a4)
{
  *this = &unk_2871F01D0;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 2) = a4;
}

void TXGrowShrinkCurveNode1D::TXGrowShrinkCurveNode1D(OZBehaviorCurveNode *a1, OZBehavior *a2, OZChannel *a3)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(a1, a2, a3);
  *v4 = &unk_2871F0200;
  v4[4] = a2;
}

void TXGrowShrinkCurveNode1D::~TXGrowShrinkCurveNode1D(TXGrowShrinkCurveNode1D *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double TXGrowShrinkCurveNode1D::solveNode(TXGrowShrinkCurveNode1D *this, const CMTime *a2, double a3, double a4)
{
  v4 = *(this + 4);
  v6 = *a2;
  return (*(*v4 + 680))(v4, &v6) + a4;
}

void TXGrowShrinkCurveNode1D::solveNode(TXGrowShrinkCurveNode1D *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v10 = *(a2 + 5);
  v9 = *(a2 + 4);
  if (*(a2 + 36))
  {
    v6 = 0;
    do
    {
      v7 = *(v3 + 8 * v6);
      v8 = *(this + 4);
      v12 = v9;
      *(v2 + 8 * v6) = v7 * (*(*v8 + 680))();
      v12 = v9;
      v11 = v10;
      PC_CMTimeSaferAdd(&v12, &v11, &v9);
      ++v6;
    }

    while (v6 < *(a2 + 36));
  }
}

__n128 TXGrowShrinkCurveNode1D::getNeededRange(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a2 + 96);
  *(a2 + 40) = *(a2 + 112);
  result = *(a2 + 120);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a2 + 136);
  *(a2 + 72) = *(a2 + 144);
  *(a2 + 88) = 0;
  *(a2 + 80) = *(a2 + 152);
  return result;
}

__n128 OZCurveNode::getCurrentRange@<Q0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v2 + 16);
  return result;
}

__n128 OZCurveNode::getNeededTime@<Q0>(const CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  result = *&a1->value;
  *a2 = *a1;
  return result;
}

char *AddMaterialToSequenceChannels(TXSequenceChannels *a1, OZMaterialBase *a2, unsigned int a3)
{
  OZChannel::getValueAsInt((a2 + 720), MEMORY[0x277CC08F0], 0.0);

  return TXSequenceChannels::addMaterialChannels(a1, a2, a3);
}

char *AddAllMaterialsToSequenceChannels(char *result, TXSequenceChannels *a2)
{
  v2 = *(*result + 480);
  v3 = *(*result + 488);
  if (v2 != v3)
  {
    v5 = MEMORY[0x277CC08F0];
    do
    {
      v6 = *v2++;
      v7 = ((*(a2 + 2) - *(a2 + 1)) >> 3) - 6;
      OZChannel::getValueAsInt((v6 + 720), v5, 0.0);
      result = TXSequenceChannels::addMaterialChannels(a2, v6, v7);
    }

    while (v2 != v3);
  }

  return result;
}

TXSequenceChannels *RemoveAllMaterialsFromSequenceChannels(TXSequenceChannels *this)
{
  v1 = (*(this + 2) - *(this + 1)) >> 3;
  v2 = v1 - 6;
  if (v1 != 6)
  {
    v3 = this;
    do
    {
      this = TXSequenceChannels::removeMaterialChannelsAtIndex(v3, 0);
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t TXTextLayout::pixelTransformSupport(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144))
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

void TXTextLayout::updateStringTokenizer(TXTextLayout *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v8, v2);
  v3 = *(this + 7984);
  if (v3)
  {
    CFRelease(v3);
  }

  StringPtr = TXChannelString::getStringPtr((this + 19048));
  v5 = PCString::cf_str(StringPtr);
  v6 = TXChannelString::getStringPtr((this + 19048));
  v7 = PCString::cf_str(v6);
  v9.length = CFStringGetLength(v7);
  v9.location = 0;
  *(this + 7984) = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], v5, v9, 4uLL, 0);
  OZLockingGroup::WriteSentry::~WriteSentry(v8);
}

void sub_25FAD5658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

CFIndex TXTextLayout::getWordRange(__CFStringTokenizer **this, unsigned int a2, char a3)
{
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v12, v6);
  v7 = this[7984];
  if (!v7)
  {
    TXTextLayout::updateStringTokenizer(this);
    v7 = this[7984];
  }

  v8 = CFStringTokenizerGoToTokenAtIndex(v7, a2);
  location = CFStringTokenizerGetCurrentTokenRange(v7).location;
  if (location == a2)
  {
    v10 = a3;
  }

  else
  {
    v10 = 1;
  }

  if (!v8 || (v10 & 1) == 0)
  {
    if (CFStringTokenizerGoToTokenAtIndex(v7, a2 - 1))
    {
      location = CFStringTokenizerGetCurrentTokenRange(v7).location;
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v12);
  return location;
}

void sub_25FAD5740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::TXTextLayout(TXTextLayout *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v5 = this + 18984;
  OZTextLayout::OZTextLayout(this, a2, a3, a4);
  *v6 = &unk_2871F02F8;
  *(v6 + 200) = &unk_2871F07C0;
  *(v6 + 216) = &unk_2871F1098;
  *(v6 + 248) = &unk_2871F12F0;
  *(v6 + 6728) = &unk_2871F1348;
  *(v6 + 18976) = &unk_2871F1420;
  *v5 = -1;
  v5[4] = 1;
  *(v6 + 19000) = 0u;
  *(v6 + 19016) = 0u;
  *(v6 + 19032) = 0u;
  PCURL::PCURL(&v110, @"Text Layout String");
  TXChannelString::TXChannelString((this + 19048), &v110, (this + 648), 0x171u, 0);
  PCString::~PCString(&v110);
  PCSharedCount::PCSharedCount(this + 2402);
  *(this + 1202) = 0u;
  *(this + 2403) = this + 19232;
  *(this + 2406) = &unk_2871F1478;
  *(this + 2407) = 0;
  TXDiscontinuousSelection::TXDiscontinuousSelection((this + 19272));
  *(v5 + 168) = 0;
  *(v5 + 85) = 1;
  v5[348] = 0;
  *(v5 + 88) = 0;
  *(this + 2418) = this + 19344;
  *(this + 2419) = this + 19344;
  *(this + 2420) = 0;
  *(this + 2421) = this + 19368;
  *(this + 2422) = this + 19368;
  v5[408] = 1;
  *(this + 2423) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 19396));
  PCWorkingColorVector::PCWorkingColorVector((this + 19412));
  PCURL::PCURL(&v110, @"Text Face Opacity");
  OZChannelPercent::OZChannelPercent((this + 19448), 1.0, &v110, (this + 648), 0x16Eu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v7, @"Text Layout Tracking");
  Instance = TXTextLayout::TXTextLayout_oldTrackingInfo::getInstance(v8);
  OZChannelDouble::OZChannelDouble((this + 19600), &v110, (this + 648), 0x152u, 2, 0, Instance);
  PCString::~PCString(&v110);
  PCURL::PCURL(v10, @"Text Layout Tracking");
  v12 = TXTextLayout::TXTextLayout_trackingImpl::getInstance(v11);
  v13 = TXTextLayout::TXTextLayout_trackingInfo::getInstance(v12);
  OZChannelPercent::OZChannelPercent((this + 19752), 0.0, &v110, (this + 648), 0x170u, 2u, v12, v13);
  PCString::~PCString(&v110);
  PCURL::PCURL(v14, @"Text Layout Flatten");
  OZChannelBool::OZChannelBool((this + 19904), 0, &v110, (this + 648), 0x15Fu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v15, @"Text Layout Render Space Enum");
  PCURL::PCURL(&v111, @"Text Layout Render Space");
  OZChannelEnum::OZChannelEnum((this + 20056), &v110, &v111, (this + 648), 0x168u, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v16, @"Text Layout Face Camera");
  OZChannelBool::OZChannelBool((this + 20312), 0, &v110, (this + 648), 0x160u, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v17, @"Text Layout Method Enum");
  PCURL::PCURL(&v111, @"Text Layout Method");
  OZChannelEnum::OZChannelEnum((this + 20464), 0, &v110, &v111, (this + 648), 0x13Au, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v18, @"Text Layout Direction Enum");
  PCURL::PCURL(&v111, @"Text Layout Direction");
  OZChannelEnum::OZChannelEnum((this + 20720), 0, &v110, &v111, (this + 648), 0x13Cu, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v19, @"Text Layout Alignment");
  TXChannelAlignment::TXChannelAlignment((this + 20976), &v110, (this + 648), 0x175u, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v20, @"Text Layout Alignment Enum");
  PCURL::PCURL(&v111, @"Text Layout Alignment");
  OZChannelEnum::OZChannelEnum((this + 21624), 0, &v110, &v111, (this + 648), 0x13Du, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v21, @"Text Layout Justification Enum");
  PCURL::PCURL(&v111, @"Text Layout Justification");
  OZChannelEnum::OZChannelEnum((this + 21880), &v110, &v111, (this + 648), 0x13Eu, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v22, @"Text Layout Line Spacing");
  v24 = TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::getInstance(v23);
  OZChannelDouble::OZChannelDouble((this + 22136), &v110, (this + 648), 0x138u, 8, 0, v24);
  PCString::~PCString(&v110);
  PCURL::PCURL(v25, @"Text Layout Anchor Point Enum");
  PCURL::PCURL(&v111, @"Text Layout Anchor Point");
  OZChannelEnum::OZChannelEnum((this + 22288), &v110, &v111, (this + 648), 0x165u, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v26, @"Text Layout Anchor Position Enum");
  PCURL::PCURL(&v111, @"Text Layout Anchor Position");
  OZChannelEnum::OZChannelEnum((this + 22544), &v110, &v111, (this + 648), 0x177u, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v27, @"Text Layout Anchor Point Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 22800), &v110, (this + 648), 0x166u, 0, 3u);
  PCString::~PCString(&v110);
  PCURL::PCURL(v28, @"Text Layout Type On");
  OZChannelFolder::OZChannelFolder((this + 23688), &v110, (this + 648), 0x13Fu, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v29, @"Text Layout Type On Start");
  OZChannelPercent::OZChannelPercent((this + 23816), 0.0, &v110, (this + 23688), 0x140u, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v30, @"Text Layout Type On End");
  OZChannelPercent::OZChannelPercent((this + 23968), 1.0, &v110, (this + 23688), 0x141u, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v31, @"Text Layout Type On Fade In");
  OZChannelBool::OZChannelBool((this + 24120), 1, &v110, (this + 23688), 0x142u, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v32, @"Text Layout Left Margin");
  v34 = TXTextLayout::TXTextLayout_leftMarginImpl::getInstance(v33);
  OZChannelDouble::OZChannelDouble((this + 24272), &v110, (this + 648), 0x143u, 0, v34, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v35, @"Text Layout Right Margin");
  v37 = TXTextLayout::TXTextLayout_rightMarginImpl::getInstance(v36);
  OZChannelDouble::OZChannelDouble((this + 24424), &v110, (this + 648), 0x144u, 0, v37, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v38, @"Text Layout Top Margin");
  v40 = TXTextLayout::TXTextLayout_topMarginImpl::getInstance(v39);
  OZChannelDouble::OZChannelDouble((this + 24576), &v110, (this + 648), 0x145u, 0, v40, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v41, @"Text Layout Bottom Margin");
  v43 = TXTextLayout::TXTextLayout_bottomMarginImpl::getInstance(v42);
  OZChannelDouble::OZChannelDouble((this + 24728), &v110, (this + 648), 0x146u, 0, v43, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v44, @"Text Layout Sequence");
  OZChannelDouble::OZChannelDouble((this + 24880), &v110, (this + 648), 0x148u, 10, 0, 0);
  PCString::~PCString(&v110);
  TXSequenceChannels::TXSequenceChannels((this + 25032), (this + 648), 0x148u);
  *(this + 6525) = &unk_2871F2698;
  *(this + 3263) = 0u;
  *(this + 3264) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v109 = _Q0;
  *(this + 3265) = _Q0;
  *(this + 26128) = 0;
  *(this + 52258) = 0;
  *(this + 13090) = 16777472;
  *(this + 52364) = 0;
  *(this + 13092) = 0;
  PCURL::PCURL(&v110, @"Text Layout Path Heading");
  OZChannelFolder::OZChannelFolder((this + 52376), &v110, (this + 648), 0x149u, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v50, @"Text Layout Line Path");
  OZChannelPosition3D::OZChannelPosition3D((this + 52504), &v110, (this + 52376), 0x14Eu, 0x28000002u, 3u);
  PCString::~PCString(&v110);
  PCURL::PCURL(v51, @"Text Layout Loop Path");
  OZChannelPosition3D::OZChannelPosition3D((this + 53392), &v110, (this + 52376), 0x14Fu, 0x28000002u, 3u);
  PCString::~PCString(&v110);
  PCURL::PCURL(v52, @"Text Layout Path Shape Enum");
  PCURL::PCURL(&v111, @"Text Layout Path Shape");
  OZChannelEnum::OZChannelEnum((this + 54280), &v110, &v111, (this + 52376), 0x14Au, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v53, @"Text Layout Path Type Enum");
  PCURL::PCURL(&v111, @"Text Layout Path Type");
  OZChannelEnum::OZChannelEnum((this + 54536), 0, &v110, &v111, (this + 52376), 0x151u, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v54, @"Motion Path Behavior Circle Radius");
  v56 = TXTextLayout::TXTextLayout_radiusImpl::getInstance(v55);
  v57 = TXTextLayout::TXTextLayout_radiusInfo::getInstance(v56);
  OZChannel2D::OZChannel2D((this + 54792), 200.0, 200.0, &v110, (this + 52376), 0x154u, 0, 2u, v56, v57);
  PCString::~PCString(&v110);
  PCURL::PCURL(v58, @"Motion Path Behavior Rect Size");
  v60 = TXTextLayout::TXTextLayout_rectSizeImpl::getInstance(v59);
  v61 = TXTextLayout::TXTextLayout_rectSizeInfo::getInstance(v60);
  OZChannel2D::OZChannel2D((this + 55232), 400.0, 400.0, &v110, (this + 52376), 0x155u, 0, 2u, v60, v61);
  PCString::~PCString(&v110);
  PCURL::PCURL(v62, @"Motion Path Behavior Wave Start Point");
  OZChannelPosition::OZChannelPosition((this + 55672), 0.0, 0.0, &v110, (this + 52376), 0x156u, 0, 2u, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v63, @"Motion Path Behavior Wave End Point");
  OZChannelPosition::OZChannelPosition((this + 56376), 400.0, 0.0, &v110, (this + 52376), 0x157u, 0, 2u, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v64, @"Motion Path Behavior Wave Amplitude");
  v66 = TXTextLayout::TXTextLayout_waveAmplitudeImpl::getInstance(v65);
  v67 = TXTextLayout::TXTextLayout_waveAmplitudeInfo::getInstance(v66);
  OZChannelDouble::OZChannelDouble((this + 57080), 100.0, &v110, (this + 52376), 0x158u, 0, v66, v67);
  PCString::~PCString(&v110);
  PCURL::PCURL(v68, @"Motion Path Behavior Wave Frequency");
  v70 = TXTextLayout::TXTextLayout_waveFrequencyImpl::getInstance(v69);
  v71 = TXTextLayout::TXTextLayout_waveFrequencyInfo::getInstance(v70);
  OZChannelDouble::OZChannelDouble((this + 57232), 1.0, &v110, (this + 52376), 0x159u, 0, v70, v71);
  PCString::~PCString(&v110);
  PCURL::PCURL(v72, @"Motion Path Behavior Wave Phase");
  OZChannelAngle::OZChannelAngle((this + 57384), 0.0, &v110, (this + 52376), 0x15Au, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v73, @"Motion Path Behavior Wave Damping");
  v75 = TXTextLayout::TXTextLayout_waveDampingImpl::getInstance(v74);
  v76 = TXTextLayout::TXTextLayout_waveDampingInfo::getInstance(v75);
  OZChannelDouble::OZChannelDouble((this + 57536), 0.0, &v110, (this + 52376), 0x15Du, 0, v75, v76);
  PCString::~PCString(&v110);
  PCURL::PCURL(v77, @"Text Layout Path Align To Shape");
  OZChannelBool::OZChannelBool((this + 57688), 1, &v110, (this + 52376), 0x15Cu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v78, @"Text Layout Path Offset");
  v80 = TXTextLayout::TXTextLayout_pathOffsetImpl::getInstance(v79);
  v81 = TXTextLayout::TXTextLayout_pathOffsetInfo::getInstance(v80);
  OZChannelPercent::OZChannelPercent((this + 57840), 0.0, &v110, (this + 52376), 0x14Bu, 0, v80, v81);
  PCString::~PCString(&v110);
  PCURL::PCURL(v82, @"Text Layout Path Wrap Around");
  OZChannelBool::OZChannelBool((this + 57992), 1, &v110, (this + 52376), 0x15Bu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v83, @"Text Layout Path Inside Path");
  OZChannelBool::OZChannelBool((this + 58144), &v110, (this + 52376), 0x14Cu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v84, @"Text Layout Path Align To Path");
  OZChannelBool::OZChannelBool((this + 58296), 1, &v110, (this + 52376), 0x14Du, 0, 0, 0);
  PCString::~PCString(&v110);
  PCString::PCString(v85, "Align To Text");
  OZChannelBool::OZChannelBool((this + 58448), 0, &v110, (this + 52376), 0x161u, 0, 0, 0);
  PCString::~PCString(&v110);
  PCEvaluator::PCEvaluator((this + 58600));
  PCString::PCString(&v110, "Text Object Folder");
  OZChannelFolder::OZChannelFolder((this + 58696), &v110, (this + 648), 0x150u, 0x801000Au, 0);
  PCString::~PCString(&v110);
  *(this + 7355) = 0;
  *(this + 58824) = 0u;
  *(this + 14712) = -1;
  PCSharedCount::PCSharedCount(this + 7357);
  PCSharedCount::PCSharedCount(this + 7358);
  PCURL::PCURL(&v110, @"Text Paragraph Style Folder");
  OZChannelFolder::OZChannelFolder((this + 58880), &v110, (this + 648), 0x162u, 0, 0);
  PCString::~PCString(&v110);
  *(this + 3688) = 0u;
  *(this + 3689) = v109;
  PCWorkingColorVector::PCWorkingColorVector((this + 59040));
  *(this + 3693) = xmmword_2603429E0;
  *(this + 3692) = xmmword_2603429E0;
  *(this + 3691) = xmmword_2603429E0;
  PCWorkingColorVector::PCWorkingColorVector((this + 59104));
  PCURL::PCURL(&v110, @"Text Layout Is FCP Editable");
  OZChannelBool::OZChannelBool(this + 389, 1, &v110, (this + 648), 0x15Eu, 0x80u, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v86, @"Text Layout Scale Heading");
  OZChannelFolder::OZChannelFolder((this + 59280), &v110, (this + 648), 0x163u, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v87, @"Text Layout Scale Affects Layout");
  OZChannelBool::OZChannelBool((this + 59408), 1, &v110, (this + 59280), 0x164u, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v88, @"Text Layout Credit Scroll Line Spacing");
  OZChannelDouble::OZChannelDouble((this + 59560), &v110, (this + 648), 0x167u, 134283274, 0, 0);
  PCString::~PCString(&v110);
  *(this + 3733) = xmmword_260343AA0;
  PCWorkingColorVector::PCWorkingColorVector((this + 59744));
  PCURL::PCURL(&v110, @"Text Layout Pan Heading");
  OZChannelFolder::OZChannelFolder((this + 59760), &v110, (this + 648), 0x169u, 0xAu, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v89, @"Text Layout Pan Position");
  OZChannelDouble::OZChannelDouble((this + 59888), 0.0, &v110, (this + 59760), 0x16Au, 10, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v90, @"Text Layout Show Scroll Bars");
  v92 = TXTextLayout::TXTextLayout_showScrollBarsImpl::getInstance(v91);
  OZChannelBool::OZChannelBool((this + 60056), 1, &v110, (this + 648), 0x16Bu, 0x41000Au, v92, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v93, @"Text Layout Show Rulers");
  v95 = TXTextLayout::TXTextLayout_showRulersImpl::getInstance(v94);
  OZChannelBool::OZChannelBool((this + 60208), 1, &v110, (this + 648), 0x16Cu, 0x41000Au, v95, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v96, @"Text Layout Ticker Position");
  OZChannelDouble::OZChannelDouble((this + 60360), 0.0, &v110, (this + 59760), 0x16Du, 10, 0, 0);
  PCString::~PCString(&v110);
  v98 = PCString::PCString(v97, "Hidden Channel");
  v99 = TXTextLayout::TXTextLayout_versionImpl::getInstance(v98);
  OZChannelDouble::OZChannelDouble((this + 60520), 5, &v110, (this + 648), 0x16Fu, 2, v99, 0);
  PCString::~PCString(&v110);
  *(this + 3792) = vdupq_n_s64(this + 60672);
  *(this + 7586) = 0;
  *(this + 3794) = 0u;
  *(this + 7587) = this + 60704;
  *(this + 3795) = 0u;
  *(this + 3796) = 0u;
  *(this + 3797) = 0u;
  PCSharedMutex::PCSharedMutex((this + 60768));
  *(this + 7609) = this + 60872;
  *(this + 7610) = this + 60872;
  *(this + 7611) = 0;
  *(this + 60904) = 0u;
  *(this + 7612) = this + 60904;
  *(this + 60920) = 0u;
  *(this + 60936) = 0u;
  *(this + 60952) = 0u;
  *(this + 60984) = 0u;
  *(this + 7622) = this + 60984;
  PCMutex::PCMutex((this + 61000));
  *(this + 61080) = 0u;
  *(this + 7634) = this + 61080;
  *(this + 7648) = 0;
  *(this + 61096) = 0u;
  *(this + 61112) = 0u;
  *(this + 61128) = 0u;
  *(this + 61160) = 0u;
  PCURL::PCURL(&v110, @"Text Layout Scale To Margins Enum");
  PCURL::PCURL(&v111, @"Text Layout Scale To Margins");
  OZChannelEnum::OZChannelEnum((this + 61208), 0, &v110, &v111, (this + 648), 0x172u, 0, 0, 0);
  PCString::~PCString(&v111);
  PCString::~PCString(&v110);
  PCURL::PCURL(v100, @"Text Layout Margin Scale");
  OZChannelDouble::OZChannelDouble((this + 61464), 1.0, &v110, (this + 648), 0x178u, 0x400000, 0, 0);
  PCString::~PCString(&v110);
  PCWorkingColorVector::PCWorkingColorVector((this + 61632));
  PCURL::PCURL(&v110, @"Text Layout Crop To Margins");
  OZChannelBool::OZChannelBool((this + 61648), 0, &v110, (this + 648), 0x174u, 0, 0, 0);
  PCString::~PCString(&v110);
  PCString::PCString(v101, "Wrap To Bottom Margin");
  OZChannelBool::OZChannelBool((this + 61800), &v110, (this + 648), 0x17Du, 0, 0, 0);
  PCString::~PCString(&v110);
  PCURL::PCURL(v102, @"Text Background Color");
  OZChannelColor::OZChannelColor((this + 61952), 0.0, 0.0, 0.0, 1.0, &v110, (this + 648), 0x176u, 0, 6u);
  PCString::~PCString(&v110);
  PCString::PCString(v103, "Add Extra Line Spacing For Diacritics");
  OZChannelBool::OZChannelBool((this + 63112), 0, &v110, (this + 648), 0x17Bu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCString::PCString(v104, "Extra Line Spacing");
  OZChannelDouble::OZChannelDouble((this + 63264), 0.0, &v110, (this + 648), 0x17Cu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCString::PCString(v105, "Dynamic Line Spacing for Diacritics");
  OZChannelBool::OZChannelBool((this + 63416), 0, &v110, (this + 648), 0x17Eu, 0, 0, 0);
  PCString::~PCString(&v110);
  PCString::PCString(v106, "Minimum Line Spacing");
  OZChannelDouble::OZChannelDouble((this + 63568), 0.0, &v110, (this + 648), 0x17Fu, 0, 0, 0);
  PCString::~PCString(&v110);
  *(this + 63816) = 0u;
  *(this + 7967) = 0;
  *(this + 7968) = 0;
  *(this + 7969) = 0;
  *(this + 63761) = 0;
  *(this + 63804) = 0;
  *(this + 15953) = -1;
  *(this + 7984) = 0;
  *(this + 63832) = 0u;
  *(this + 63848) = 0u;
  OZValueCache<OZBoundsCacheItem>::OZValueCache(this + 63888);
  OZValueCache<OZProjectedBoundsCacheItem>::OZValueCache(this + 64032);
  *(this + 64176) = 0;
  *(this + 8023) = 0;
  *(this + 4012) = xmmword_2603426F0;
  *(this + 64216) = 0u;
  *(this + 8026) = this + 64216;
  *(this + 4015) = 0u;
  *(this + 8029) = this + 64240;
  *(this + 4016) = 0u;
  *(this + 4017) = 0u;
  *(this + 16072) = 1065353216;
  *(this + 4019) = 0u;
  *(this + 8037) = this + 64304;
  *(this + 16080) = 0;
  *(this + 64324) = 1;
  *(this + 64328) = 0u;
  *(this + 64344) = v109;
  *(this + 16090) = 0;
  *(this + 64376) = 0u;
  *(this + 8046) = this + 64376;
  *(this + 8051) = 0;
  *(this + 7649) = 0;
  *(this + 7621) = 0;
  OZChannelBase::setFlag((this + 25064), 8, 0);
  OZChannelBase::setFlag((this + 28592), 8, 0);
  OZChannelBase::setFlag((this + 33424), 8, 0);
  OZChannelBase::setFlag((this + 38664), 8, 0);
  OZChannelBase::setFlag((this + 45048), 8, 0);
  OZChannelBase::setFlag((this + 256), 0x2000000, 0);
  OZChannelFolder::saveStateAsDefault((this + 256));
  OZChannelBase::setParameterCtlrClassName((this + 256), @"TXTextLayoutChanObjectRootController");
  v108 = *(TXTextStyleManager::getInstance(v107) + 16);
  if (v108)
  {
    atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<TXTextStyle,std::allocator<TXTextStyle>,TXTextStyle&,0>();
}

void sub_25FAD7448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, PCString **a12, void **a13, void *a14, void **a15, uint64_t *a16, void **a17, uint64_t *a18, uint64_t a19, uint64_t *a20, void **a21, uint64_t a22, void *a23, uint64_t a24, void **a25)
{
  v34 = *(v33 - 104);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v30 + 81), *a25);
  std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::destroy((v30 + 72), *v27);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::~__hash_table(v25 + 64256);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v30 + 64), *v26);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v30 + 61), *a10);
  OZValueCache<OZProjectedBoundsCacheItem>::~OZValueCache(v25 + 64032);
  OZValueCache<OZBoundsCacheItem>::~OZValueCache(v25 + 63888);
  v35 = v30[15];
  if (v35)
  {
    v30[16] = v35;
    operator delete(v35);
  }

  v36 = *v31;
  if (*v31)
  {
    v30[13] = v36;
    operator delete(v36);
  }

  v37 = *v28;
  if (*v28)
  {
    v30[3] = v37;
    operator delete(v37);
  }

  OZChannel::~OZChannel((v25 + 63568));
  OZChannelBool::~OZChannelBool((v25 + 63416));
  OZChannel::~OZChannel((v25 + 63264));
  OZChannelBool::~OZChannelBool((v25 + 63112));
  OZChannelColor::~OZChannelColor((v25 + 61952));
  OZChannelBool::~OZChannelBool((v25 + 61800));
  OZChannelBool::~OZChannelBool((v25 + 61648));
  OZChannel::~OZChannel((v25 + 61464));
  OZChannelEnum::~OZChannelEnum((v25 + 61208));
  v38 = v29[284];
  if (v38)
  {
    v29[285] = v38;
    operator delete(v38);
  }

  v39 = *a11;
  if (*a11)
  {
    v29[282] = v39;
    operator delete(v39);
  }

  std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy((v29 + 278), *a12);
  PCMutex::~PCMutex((v25 + 61000));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v29 + 266), *a13);
  std::deque<PCHash128>::~deque[abi:ne200100](a14);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v29 + 256), *a15);
  std::__list_imp<TXTextLayout::HGMetalNodeCacheEntry>::clear(a16);
  PCSharedMutex::~PCSharedMutex((v25 + 60768));
  std::deque<PCHash128>::~deque[abi:ne200100]((v25 + 60720));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v29 + 231), *a17);
  std::__list_imp<TXTextLayout::HGNodeCacheEntry>::clear(a18);
  OZChannel::~OZChannel((v25 + 60520));
  OZChannel::~OZChannel((v25 + 60360));
  OZChannelBool::~OZChannelBool((v25 + 60208));
  OZChannelBool::~OZChannelBool((v25 + 60056));
  OZChannel::~OZChannel((v25 + 59888));
  OZChannelFolder::~OZChannelFolder((v25 + 59760));
  OZChannel::~OZChannel((v25 + 59560));
  OZChannelBool::~OZChannelBool((v25 + 59408));
  OZChannelFolder::~OZChannelFolder((v25 + 59280));
  OZChannelBool::~OZChannelBool((v25 + 59128));
  OZChannelFolder::~OZChannelFolder((v25 + 58880));
  PCString::~PCString((v25 + 58864));
  PCString::~PCString((v25 + 58856));
  *(v33 - 112) = a19;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100]((v33 - 112));
  OZChannelFolder::~OZChannelFolder((v25 + 58696));
  PCEvaluator::~PCEvaluator((v25 + 58600));
  OZChannelBool::~OZChannelBool((v25 + 58448));
  OZChannelBool::~OZChannelBool((v25 + 58296));
  OZChannelBool::~OZChannelBool((v25 + 58144));
  OZChannelBool::~OZChannelBool((v25 + 57992));
  OZChannelPercent::~OZChannelPercent((v25 + 57840));
  OZChannelBool::~OZChannelBool((v25 + 57688));
  OZChannel::~OZChannel((v25 + 57536));
  OZChannel::~OZChannel((v25 + 57384));
  OZChannel::~OZChannel((v25 + 57232));
  OZChannel::~OZChannel((v25 + 57080));
  OZChannelPosition::~OZChannelPosition((v25 + 56376));
  OZChannelPosition::~OZChannelPosition((v25 + 55672));
  OZChannel2D::~OZChannel2D((v25 + 55232));
  OZChannel2D::~OZChannel2D((v25 + 54792));
  OZChannelEnum::~OZChannelEnum((v25 + 54536));
  OZChannelEnum::~OZChannelEnum((v25 + 54280));
  OZChannelPosition3D::~OZChannelPosition3D((v25 + 53392));
  OZChannelPosition3D::~OZChannelPosition3D((v25 + 52504));
  OZChannelFolder::~OZChannelFolder((v25 + 52376));
  PCArray<unsigned long,PCArray_Traits<unsigned long>>::~PCArray(*(v33 - 136));
  TXSequenceChannels::~TXSequenceChannels((v25 + 25032));
  OZChannel::~OZChannel((v25 + 24880));
  OZChannel::~OZChannel((v25 + 24728));
  OZChannel::~OZChannel((v25 + 24576));
  OZChannel::~OZChannel((v25 + 24424));
  OZChannel::~OZChannel((v25 + 24272));
  OZChannelBool::~OZChannelBool((v25 + 24120));
  OZChannelPercent::~OZChannelPercent((v25 + 23968));
  OZChannelPercent::~OZChannelPercent((v25 + 23816));
  OZChannelFolder::~OZChannelFolder((v25 + 23688));
  OZChannelPosition3D::~OZChannelPosition3D((v25 + 22800));
  OZChannelEnum::~OZChannelEnum((v25 + 22544));
  OZChannelEnum::~OZChannelEnum((v25 + 22288));
  OZChannel::~OZChannel((v25 + 22136));
  OZChannelEnum::~OZChannelEnum((v25 + 21880));
  OZChannelEnum::~OZChannelEnum((v25 + 21624));
  TXChannelAlignment::~TXChannelAlignment((v25 + 20976));
  OZChannelEnum::~OZChannelEnum((v25 + 20720));
  OZChannelEnum::~OZChannelEnum((v25 + 20464));
  OZChannelBool::~OZChannelBool((v25 + 20312));
  OZChannelEnum::~OZChannelEnum((v25 + 20056));
  OZChannelBool::~OZChannelBool((v25 + 19904));
  OZChannelPercent::~OZChannelPercent((v25 + 19752));
  OZChannel::~OZChannel((v25 + 19600));
  OZChannelPercent::~OZChannelPercent((v25 + 19448));
  std::__list_imp<unsigned int>::clear(a23);
  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(a20);
  v40 = *(v25 + 19272);
  *(v25 + 19280) = v40;
  if (v40)
  {
    operator delete(v40);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v25 + 19224, *a21);
  PCString::~PCString((v25 + 19216));
  OZChannelText::~OZChannelText((v25 + 19048));
  v41 = *(v25 + 19024);
  if (v41)
  {
    *(v25 + 19032) = v41;
    operator delete(v41);
  }

  *(v33 - 112) = a22;
  std::vector<TXTabStop>::__destroy_vector::operator()[abi:ne200100]((v33 - 112));
  OZLockingElement::~OZLockingElement(v25);
  _Unwind_Resume(a1);
}

void TXTextLayout::addStyle(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    updated = OZChannelBase::updateIDGenerator((*(a1 + 280) + 1));
    v6 = *a2;
    NextUniqueID = OZChannelBase::getNextUniqueID(updated);
    OZChannelBase::setID(&v6->var9, NextUniqueID);
    OZStyle::assignUniqueIDsToAllMaterials(*a2);
  }

  else
  {
    v8 = *(a1 + 19352);
    if (v8 != (a1 + 19344))
    {
      while (1)
      {
        v9 = v8[2];
        if (*(v9 + 96) == *(*a2 + 96))
        {
          break;
        }

        v8 = v8[1];
        if (v8 == (a1 + 19344))
        {
          goto LABEL_20;
        }
      }

      v10 = v8[3];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = a1 + 19368;
      v12 = *(a1 + 19376);
      if (v12 != a1 + 19368)
      {
        do
        {
          v13 = *(v12 + 16);
          v15 = *(v13 + 8);
          v14 = *(v13 + 16);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (v15 == v9)
          {
            v17 = *a2;
            v16 = *(a2 + 8);
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v18 = *(v13 + 16);
            *(v13 + 8) = v17;
            *(v13 + 16) = v16;
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

LABEL_20:
  OZStyle::setSceneNode(*a2, (a1 + 200));
  v19 = *a2;
  *(*a2 + 48944) = a1;
  v20 = *(a1 + 19352);
  if (v20 == (a1 + 19344))
  {
    goto LABEL_24;
  }

  var12 = v19->var12;
  while (1)
  {
    v22 = v20[2];
    if (v22[24] == var12)
    {
      break;
    }

    v20 = v20[1];
    if (v20 == (a1 + 19344))
    {
      goto LABEL_24;
    }
  }

  v30 = v20[3];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 61200) != 1)
  {
LABEL_24:
    if (!*(a1 + 19360))
    {
      v23 = *(*a2 + 480);
      v24 = *(*a2 + 488);
      if (v23 != v24)
      {
        v25 = MEMORY[0x277CC08F0];
        do
        {
          v26 = *v23;
          if (!OZChannel::getValueAsInt((*v23 + 720), v25, 0.0))
          {
            AvailableMaterialSequenceID = NextAvailableMaterialSequenceID((a1 + 25032));
            OZMaterialBase::setSequenceID(v26, AvailableMaterialSequenceID);
          }

          v28 = *(a1 + 25048);
          v29 = *(a1 + 25040);
          OZChannel::getValueAsInt((v26 + 720), v25, 0.0);
          TXSequenceChannels::addMaterialChannels((a1 + 25032), v26, ((v28 - v29) >> 3) - 6);
          ++v23;
        }

        while (v23 != v24);
      }
    }

    std::list<std::shared_ptr<TXTextStyle>>::push_back();
  }

  v31 = (*(*v22 + 112))(v22);
  v32 = (*(**a2 + 112))();
  (*(*v31 + 256))(v31, v32);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_25FAD8530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXPathResetCallback(OZChannelBase *a1, void *a2)
{
  if (a1)
  {
    (*(a1->var0 + 35))(a1, 0);
    ObjectManipulator = OZChannelBase::getObjectManipulator(a1);
    if (ObjectManipulator)
    {
      if (v4)
      {
        v5 = v4;
        OZRenderState::OZRenderState(&v14);
        if ((*(*(v5 + 200) + 272))(v5 + 200))
        {
          v6 = (*(*(v5 + 200) + 272))(v5 + 200);
          OZScene::getCurrentTime(v6, &v12);
          *&v14.var0.var0 = v12;
          v14.var0.var3 = v13;
        }

        v12 = 0uLL;
        __asm { FMOV            V0.2D, #-1.0 }

        v13 = _Q0;
        TXTextLayout::getTypographicBounds(v5, &v12, &v14, 1, 0);
        TXTextLayout::initializePaths(v5, &v12);
      }
    }
  }
}

void std::vector<TXParagraphStyle *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<TXParagraphStyle *>::__append(a1, a2 - v2);
  }
}

char *std::vector<TXParagraphStyle *>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_25FAD889C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelColor::~OZChannelColor(OZChannelColor *this)
{
  *this = &unk_28724C608;
  *(this + 2) = &unk_28724C978;
  OZChannel::~OZChannel((this + 1008));

  OZChannelColorNoAlpha::~OZChannelColorNoAlpha(this);
}

{
  OZChannelColor::~OZChannelColor(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<unsigned long,PCArray_Traits<unsigned long>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F2698;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      bzero((v5 + 8 * v4), 8 * ~v4 + 8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

{
  *a1 = &unk_2871F2698;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<unsigned long,PCArray_Traits<unsigned long>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void TXTextLayout::TXTextLayout(TXTextLayout *this, const TXTextLayout *a2, uint64_t a3)
{
  v5 = this + 18984;
  OZTextLayout::OZTextLayout(this, a2, a3);
  *v6 = &unk_2871F02F8;
  *(v6 + 200) = &unk_2871F07C0;
  *(v6 + 216) = &unk_2871F1098;
  *(v6 + 248) = &unk_2871F12F0;
  *(v6 + 6728) = &unk_2871F1348;
  *(v6 + 18976) = &unk_2871F1420;
  *v5 = -1;
  v5[4] = 1;
  *(v6 + 19000) = 0u;
  *(v6 + 19016) = 0u;
  *(v6 + 19032) = 0u;
  TXChannelString::TXChannelString((v6 + 19048), (a2 + 19048), (this + 648));
  PCSharedCount::PCSharedCount(this + 2402);
  std::map<long,double>::map[abi:ne200100](this + 2403, a2 + 19224);
  *(this + 2406) = &unk_2871F1478;
  *(this + 2407) = 0;
  TXDiscontinuousSelection::TXDiscontinuousSelection((this + 19272));
  *(v5 + 168) = *(a2 + 9660);
  *(v5 + 85) = *(a2 + 4831);
  v5[348] = 0;
  *(v5 + 88) = 0;
  *(this + 2418) = this + 19344;
  *(this + 2419) = this + 19344;
  *(this + 2420) = 0;
  *(this + 2421) = this + 19368;
  *(this + 2422) = this + 19368;
  *(this + 2423) = 0;
  v5[408] = 1;
  PCWorkingColorVector::PCWorkingColorVector((this + 19396));
  PCWorkingColorVector::PCWorkingColorVector((this + 19412));
  OZChannelPercent::OZChannelPercent((this + 19448), (a2 + 19448), (this + 648));
  OZChannel::OZChannel((this + 19600), a2 + 175, (this + 648));
  *(this + 2450) = &unk_287245C60;
  *(this + 2452) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 19752), (a2 + 19752), (this + 648));
  OZChannelBool::OZChannelBool((this + 19904), (a2 + 19904), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 20056), (a2 + 20056), (this + 648));
  OZChannelBool::OZChannelBool((this + 20312), (a2 + 20312), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 20464), (a2 + 20464), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 20720), (a2 + 20720), (this + 648));
  TXChannelAlignment::TXChannelAlignment((this + 20976), (a2 + 20976), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 21624), (a2 + 21624), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 21880), (a2 + 21880), (this + 648));
  OZChannel::OZChannel((this + 22136), (a2 + 22136), (this + 648));
  *(this + 2767) = &unk_287245C60;
  *(this + 2769) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 22288), (a2 + 22288), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 22544), (a2 + 22544), (this + 648));
  OZChannelPosition3D::OZChannelPosition3D((this + 22800), (a2 + 22800), (this + 648));
  OZChannelFolder::OZChannelFolder((this + 23688), (a2 + 23688), (this + 648));
  OZChannelPercent::OZChannelPercent((this + 23816), (a2 + 23816), (this + 23688));
  OZChannelPercent::OZChannelPercent((this + 23968), a2 + 214, (this + 23688));
  OZChannelBool::OZChannelBool((this + 24120), (a2 + 24120), (this + 23688));
  OZChannel::OZChannel((this + 24272), (a2 + 24272), (this + 648));
  *(this + 3034) = &unk_287245C60;
  *(this + 3036) = &unk_287245FC0;
  OZChannel::OZChannel((this + 24424), (a2 + 24424), (this + 648));
  *(this + 3053) = &unk_287245C60;
  *(this + 3055) = &unk_287245FC0;
  OZChannel::OZChannel((this + 24576), (a2 + 24576), (this + 648));
  *(this + 3072) = &unk_287245C60;
  *(this + 3074) = &unk_287245FC0;
  OZChannel::OZChannel((this + 24728), (a2 + 24728), (this + 648));
  *(this + 3091) = &unk_287245C60;
  *(this + 3093) = &unk_287245FC0;
  OZChannel::OZChannel((this + 24880), (a2 + 24880), (this + 648));
  *(this + 3110) = &unk_287245C60;
  *(this + 3112) = &unk_287245FC0;
  TXSequenceChannels::TXSequenceChannels((this + 25032), (a2 + 25032), (this + 648));
  *(this + 6525) = &unk_2871F2698;
  *(this + 3263) = 0u;
  *(this + 3264) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  *(this + 3265) = _Q0;
  *(this + 26128) = *(a2 + 26128);
  *(this + 13090) = 16777217;
  *(this + 52364) = 0;
  *(this + 13092) = *(a2 + 13092);
  OZChannelFolder::OZChannelFolder((this + 52376), (a2 + 52376), (this + 648));
  OZChannelPosition3D::OZChannelPosition3D((this + 52504), (a2 + 52504), (this + 52376));
  OZChannelPosition3D::OZChannelPosition3D((this + 53392), (a2 + 53392), (this + 52376));
  OZChannelEnum::OZChannelEnum((this + 54280), (a2 + 54280), (this + 52376));
  OZChannelEnum::OZChannelEnum((this + 54536), (a2 + 54536), (this + 52376));
  OZChannel2D::OZChannel2D((this + 54792), (a2 + 54792), (this + 52376));
  OZChannel2D::OZChannel2D((this + 55232), (a2 + 55232), (this + 52376));
  OZChannelPosition::OZChannelPosition((this + 55672), (a2 + 55672), (this + 52376));
  OZChannelPosition::OZChannelPosition((this + 56376), (a2 + 56376), (this + 52376));
  OZChannel::OZChannel((this + 57080), (a2 + 57080), (this + 52376));
  *(this + 7135) = &unk_287245C60;
  *(this + 7137) = &unk_287245FC0;
  OZChannel::OZChannel((this + 57232), a2 + 511, (this + 52376));
  *(this + 7154) = &unk_287245C60;
  *(this + 7156) = &unk_287245FC0;
  OZChannel::OZChannel((this + 57384), (a2 + 57384), (this + 52376));
  *(this + 7173) = &unk_287246030;
  *(this + 7175) = &unk_287246390;
  OZChannel::OZChannel((this + 57536), (a2 + 57536), (this + 52376));
  *(this + 7192) = &unk_287245C60;
  *(this + 7194) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 57688), (a2 + 57688), (this + 52376));
  OZChannelPercent::OZChannelPercent((this + 57840), (a2 + 57840), (this + 52376));
  OZChannelBool::OZChannelBool((this + 57992), (a2 + 57992), (this + 52376));
  OZChannelBool::OZChannelBool((this + 58144), (a2 + 58144), (this + 52376));
  OZChannelBool::OZChannelBool((this + 58296), (a2 + 58296), (this + 52376));
  OZChannelBool::OZChannelBool((this + 58448), (a2 + 58448), (this + 52376));
  PCEvaluator::PCEvaluator((this + 58600));
  OZChannelFolder::OZChannelFolder((this + 58696), (a2 + 58696), (this + 648));
  *(this + 7355) = 0;
  *(this + 58824) = 0u;
  *(this + 14712) = -1;
  PCSharedCount::PCSharedCount(this + 7357);
  PCSharedCount::PCSharedCount(this + 7358);
  OZChannelFolder::OZChannelFolder((this + 58880), (a2 + 58880), (this + 648));
  *(this + 3688) = 0u;
  *(this + 3689) = v14;
  PCWorkingColorVector::PCWorkingColorVector((this + 59040));
  *(this + 3693) = xmmword_2603429E0;
  *(this + 3692) = xmmword_2603429E0;
  *(this + 3691) = xmmword_2603429E0;
  PCWorkingColorVector::PCWorkingColorVector((this + 59104));
  OZChannelBool::OZChannelBool(this + 389, (a2 + 59128), (this + 648));
  OZChannelFolder::OZChannelFolder((this + 59280), (a2 + 59280), (this + 648));
  OZChannelBool::OZChannelBool((this + 59408), (a2 + 59408), (this + 59280));
  OZChannel::OZChannel((this + 59560), (a2 + 59560), (this + 648));
  *(this + 7445) = &unk_287245C60;
  *(this + 7447) = &unk_287245FC0;
  *(this + 3733) = xmmword_260343AA0;
  PCWorkingColorVector::PCWorkingColorVector((this + 59744));
  OZChannelFolder::OZChannelFolder((this + 59760), (a2 + 59760), (this + 648));
  OZChannel::OZChannel(this + 394, (a2 + 59888), (this + 59760));
  *(this + 7486) = &unk_287245C60;
  *(this + 7488) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 60056), (a2 + 60056), (this + 648));
  OZChannelBool::OZChannelBool((this + 60208), (a2 + 60208), (this + 648));
  OZChannel::OZChannel((this + 60360), (a2 + 60360), (this + 59760));
  *(this + 7545) = &unk_287245C60;
  *(this + 7547) = &unk_287245FC0;
  OZChannel::OZChannel((this + 60520), (a2 + 60520), (this + 648));
  *(this + 7565) = &unk_287245C60;
  *(this + 7567) = &unk_287245FC0;
  *(this + 3792) = vdupq_n_s64(this + 60672);
  *(this + 7586) = 0;
  *(this + 3794) = 0u;
  *(this + 7587) = this + 60704;
  *(this + 3795) = 0u;
  *(this + 3796) = 0u;
  *(this + 3797) = 0u;
  PCSharedMutex::PCSharedMutex((this + 60768));
  *(this + 7609) = this + 60872;
  *(this + 7610) = this + 60872;
  *(this + 7611) = 0;
  *(this + 60904) = 0u;
  *(this + 7612) = this + 60904;
  *(this + 60920) = 0u;
  *(this + 60936) = 0u;
  *(this + 60952) = 0u;
  *(this + 60984) = 0u;
  *(this + 7622) = this + 60984;
  PCMutex::PCMutex((this + 61000));
  *(this + 61080) = 0u;
  *(this + 7634) = this + 61080;
  *(this + 7648) = 0;
  *(this + 61096) = 0u;
  *(this + 61112) = 0u;
  *(this + 61128) = 0u;
  *(this + 61160) = 0u;
  *(this + 61200) = *(a2 + 61200);
  OZChannelEnum::OZChannelEnum((this + 61208), (a2 + 61208), (this + 648));
  OZChannel::OZChannel((this + 61464), (a2 + 61464), (this + 648));
  v13 = v12;
  *(this + 7683) = &unk_287245C60;
  *(this + 7685) = &unk_287245FC0;
  PCWorkingColorVector::PCWorkingColorVector((this + 61632));
  OZChannelBool::OZChannelBool((this + 61648), (a2 + 61648), (this + 648));
  OZChannelBool::OZChannelBool((this + 61800), (a2 + 61800), (this + 648));
  OZChannelColor::OZChannelColor((this + 61952), (a2 + 61952), (this + 648));
  OZChannelBool::OZChannelBool((this + 63112), (a2 + 63112), (this + 648));
  OZChannel::OZChannel((this + 63264), (a2 + 63264), (this + 648));
  *(this + 7908) = &unk_287245C60;
  *(this + 7910) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 63416), (a2 + 63416), (this + 648));
  OZChannel::OZChannel((this + 63568), (a2 + 63568), (this + 648));
  *(this + 7946) = &unk_287245C60;
  *(this + 7948) = &unk_287245FC0;
  *(this + 7967) = 0;
  *(this + 7969) = 0;
  *(this + 7968) = 0;
  *(this + 63761) = *(a2 + 63761);
  *(this + 7971) = *(a2 + 7971);
  *(this + 63776) = *(a2 + 63776);
  *(this + 63804) = 0;
  *(this + 15953) = -1;
  *(this + 7984) = 0;
  *(this + 63832) = 0u;
  *(this + 63848) = 0u;
  *(this + 63816) = 0u;
  OZValueCache<OZBoundsCacheItem>::OZValueCache(this + 63888);
  OZValueCache<OZProjectedBoundsCacheItem>::OZValueCache(this + 64032);
  *(this + 64176) = 0;
  *(this + 8023) = 0;
  *(this + 4012) = xmmword_2603426F0;
  *(this + 64216) = 0u;
  *(this + 8026) = this + 64216;
  *(this + 4015) = 0u;
  *(this + 8029) = this + 64240;
  *(this + 4016) = 0u;
  *(this + 4017) = 0u;
  *(this + 16072) = 1065353216;
  *(this + 4019) = 0u;
  *(this + 8037) = this + 64304;
  *(this + 16080) = 0;
  *(this + 64324) = 1;
  *(this + 64328) = 0u;
  *(this + 64344) = v14;
  *(this + 16090) = 0;
  *(this + 64376) = 0u;
  *(this + 8046) = this + 64376;
  *(this + 8051) = 0;
  *(this + 7649) = 0;
  *(this + 7621) = 0;
  TXTextLayout::copyLayout(this, a2);
  TXTextLayout::updateLineBreaksByHardLine(this);
  (*(*this + 336))(this, 1);
  *(v5 + 4) = *(a2 + 9496);
  v5[10] = *(a2 + 18994);
  *(this + 15128) = *(a2 + 15128);
  std::vector<TXParagraphStyle *>::resize(this + 7967, 0);
  OZChannelBase::operator=(v13, a2 + 61464);
  *(this + 63720) = 0;
  *(this + 63728) = 0;
  *(this + 15288) = 0;
  v5[456] = *(a2 + 19440);
  PCString::set(this + 7357, a2 + 7357);
  PCString::set(this + 7358, a2 + 7358);
  *(this + 14718) = *(a2 + 14718);
  *(this + 63760) = *(a2 + 63760);
  *(this + 63800) = *(a2 + 63800);
  if (this != a2)
  {
    std::vector<PCVector3<double>>::__assign_with_size[abi:ne200100]<PCVector3<double>*,PCVector3<double>*>(this + 7977, *(a2 + 7977), *(a2 + 7978), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7978) - *(a2 + 7977)) >> 3));
    std::vector<PCVector2<double>>::__assign_with_size[abi:ne200100]<PCVector2<double>*,PCVector2<double>*>(this + 7980, *(a2 + 7980), *(a2 + 7981), (*(a2 + 7981) - *(a2 + 7980)) >> 4);
  }

  *(this + 7983) = *(a2 + 7983);
  *(this + 63801) = *(a2 + 63801);
  *(this + 64392) = *(a2 + 64392);
  *(this + 8050) = *(a2 + 8050);
  OZChannelBase::setResetCallback((this + 52376), TXPathResetCallback, 0, 0);
}

void sub_25FAD9A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10, OZChannel *a11, PCString **a12, void **a13, void *a14, void **a15, uint64_t *a16, void **a17, uint64_t *a18, OZChannel *a19, OZChannel *a20, OZChannel *a21, OZChannel *a22, uint64_t a23, OZChannel *a24, OZChannel *a25, OZChannel *a26, uint64_t a27, OZChannel *a28, OZChannel *a29, OZChannel *a30, OZChannel *a31, OZChannel *a32, OZChannel *a33)
{
  OZValueCache<OZBoundsCacheItem>::~OZValueCache(v33 + 63888);
  v39 = **(v37 - 152);
  if (v39)
  {
    v36[333] = v39;
    operator delete(v39);
  }

  v40 = *v34;
  if (*v34)
  {
    v36[330] = v40;
    operator delete(v40);
  }

  v41 = **(v37 - 144);
  if (v41)
  {
    v36[320] = v41;
    operator delete(v41);
  }

  OZChannel::~OZChannel(a10);
  OZChannelBool::~OZChannelBool((v33 + 63416));
  OZChannel::~OZChannel(a11);
  OZChannelBool::~OZChannelBool((v33 + 63112));
  OZChannelColor::~OZChannelColor((v33 + 61952));
  OZChannelBool::~OZChannelBool((v33 + 61800));
  OZChannelBool::~OZChannelBool((v33 + 61648));
  OZChannel::~OZChannel(*(v37 - 136));
  OZChannelEnum::~OZChannelEnum((v33 + 61208));
  p_var8 = &v35[26].var8;
  var11 = v35[26].var11;
  if (var11)
  {
    v35[26].var12 = var11;
    operator delete(var11);
  }

  v44 = *p_var8;
  if (*p_var8)
  {
    v35[26].var9 = v44;
    operator delete(v44);
  }

  std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy(&v35[26].var5, *a12);
  PCMutex::~PCMutex((v33 + 61000));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v35[25].var12, *a13);
  std::deque<PCHash128>::~deque[abi:ne200100](a14);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v35[25].var2, *a15);
  std::__list_imp<TXTextLayout::HGMetalNodeCacheEntry>::clear(a16);
  PCSharedMutex::~PCSharedMutex((v33 + 60768));
  std::deque<PCHash128>::~deque[abi:ne200100]((v33 + 60720));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v35[23].var15, *a17);
  std::__list_imp<TXTextLayout::HGNodeCacheEntry>::clear(a18);
  OZChannel::~OZChannel(a19);
  OZChannel::~OZChannel(a20);
  OZChannelBool::~OZChannelBool((v33 + 60208));
  OZChannelBool::~OZChannelBool((v33 + 60056));
  OZChannel::~OZChannel(a21);
  OZChannelFolder::~OZChannelFolder((v33 + 59760));
  OZChannel::~OZChannel(a22);
  OZChannelBool::~OZChannelBool((v33 + 59408));
  OZChannelFolder::~OZChannelFolder((v33 + 59280));
  OZChannelBool::~OZChannelBool((v33 + 59128));
  OZChannelFolder::~OZChannelFolder((v33 + 58880));
  PCString::~PCString((v33 + 58864));
  PCString::~PCString((v33 + 58856));
  *(v37 - 96) = a23;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100]((v37 - 96));
  OZChannelFolder::~OZChannelFolder((v33 + 58696));
  PCEvaluator::~PCEvaluator((v33 + 58600));
  OZChannelBool::~OZChannelBool((v33 + 58448));
  OZChannelBool::~OZChannelBool((v33 + 58296));
  OZChannelBool::~OZChannelBool((v33 + 58144));
  OZChannelBool::~OZChannelBool((v33 + 57992));
  OZChannelPercent::~OZChannelPercent((v33 + 57840));
  OZChannelBool::~OZChannelBool((v33 + 57688));
  OZChannel::~OZChannel(a24);
  OZChannel::~OZChannel(a25);
  OZChannel::~OZChannel(a26);
  OZChannel::~OZChannel(v35);
  OZChannelPosition::~OZChannelPosition((v33 + 56376));
  OZChannelPosition::~OZChannelPosition((v33 + 55672));
  OZChannel2D::~OZChannel2D((v33 + 55232));
  OZChannel2D::~OZChannel2D((v33 + 54792));
  OZChannelEnum::~OZChannelEnum((v33 + 54536));
  OZChannelEnum::~OZChannelEnum((v33 + 54280));
  OZChannelPosition3D::~OZChannelPosition3D((v33 + 53392));
  OZChannelPosition3D::~OZChannelPosition3D((v33 + 52504));
  OZChannelFolder::~OZChannelFolder((v33 + 52376));
  PCArray<unsigned long,PCArray_Traits<unsigned long>>::~PCArray(a27);
  TXSequenceChannels::~TXSequenceChannels((v33 + 25032));
  OZChannel::~OZChannel(a28);
  OZChannel::~OZChannel(a29);
  OZChannel::~OZChannel(a30);
  OZChannel::~OZChannel(a31);
  OZChannel::~OZChannel(a32);
  OZChannelBool::~OZChannelBool((v33 + 24120));
  OZChannelPercent::~OZChannelPercent((v33 + 23968));
  OZChannelPercent::~OZChannelPercent((v33 + 23816));
  OZChannelFolder::~OZChannelFolder((v33 + 23688));
  OZChannelPosition3D::~OZChannelPosition3D((v33 + 22800));
  OZChannelEnum::~OZChannelEnum((v33 + 22544));
  OZChannelEnum::~OZChannelEnum((v33 + 22288));
  OZChannel::~OZChannel(a33);
  OZChannelEnum::~OZChannelEnum((v33 + 21880));
  OZChannelEnum::~OZChannelEnum((v33 + 21624));
  TXChannelAlignment::~TXChannelAlignment((v33 + 20976));
  OZChannelEnum::~OZChannelEnum((v33 + 20720));
  OZChannelEnum::~OZChannelEnum((v33 + 20464));
  OZChannelBool::~OZChannelBool((v33 + 20312));
  OZChannelEnum::~OZChannelEnum((v33 + 20056));
  OZChannelBool::~OZChannelBool((v33 + 19904));
  OZChannelPercent::~OZChannelPercent((v33 + 19752));
  OZChannel::~OZChannel(*(v37 - 184));
  OZChannelPercent::~OZChannelPercent((v33 + 19448));
  std::__list_imp<unsigned int>::clear(*(v37 - 176));
  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(*(v37 - 168));
  v45 = *(v33 + 19272);
  *(v33 + 19280) = v45;
  if (v45)
  {
    operator delete(v45);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v33 + 19224, *(v33 + 19232));
  PCString::~PCString((v33 + 19216));
  OZChannelText::~OZChannelText((v33 + 19048));
  v46 = *(v33 + 19024);
  if (v46)
  {
    *(v33 + 19032) = v46;
    operator delete(v46);
  }

  *(v37 - 96) = *(v37 - 160);
  std::vector<TXTabStop>::__destroy_vector::operator()[abi:ne200100]((v37 - 96));
  OZLockingElement::~OZLockingElement(v33);
  _Unwind_Resume(a1);
}

void TXTextLayout::copyLayout(TXTextLayout *this, const TXTextLayout *a2)
{
  v4 = this + 19208;
  v5 = a2 + 19208;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::clear[abi:ne200100](this + 7353);
  OZChannelBase::operator=(this + 19048, a2 + 19048);
  PCString::set(this + 2400, a2 + 2400);
  *v4 = *v5;
  (*(*this + 1096))(this);
  TXTextLayout::updateDisplayString(this, MEMORY[0x277CC08F0]);
  TXTextLayout::clearParagraphs(this);
  if (*(a2 + 2378) != *(a2 + 2379))
  {
    operator new();
  }

  if (*(this + 2379) == *(this + 2378))
  {
    TXTextLayout::createParagraphStylesFromNewLines(this);
  }

  TXTextLayout::rebuildParagraphStyles(this);
  TXTextLayout::setAllParagraphsDirty(this);
  v4[112] = v5[112];
  TXSelectionRange::operator=(this + 19248, a2 + 19248);
  *(v4 + 29) = *(v5 + 29);
  OZChannelBase::operator=(this + 57688, a2 + 57688);
  OZChannelFolder::operator=(this + 54792);
  OZChannelBase::operator=(this + 54928, a2 + 54928);
  OZChannelBase::operator=(this + 55080, a2 + 55080);
  OZChannelFolder::operator=(this + 55232);
  OZChannelBase::operator=(this + 55368, a2 + 55368);
  OZChannelBase::operator=(this + 55520, a2 + 55520);
  OZChannelPosition::operator=(this + 55672, a2 + 55672);
  OZChannelPosition::operator=(this + 56376, a2 + 56376);
  OZChannelBase::operator=(this + 57080, a2 + 57080);
  OZChannelBase::operator=(this + 57232, a2 + 57232);
  OZChannelBase::operator=(this + 57384, a2 + 57384);
  OZChannelBase::operator=(this + 57992, a2 + 57992);
  *(this + 52256) = *(a2 + 52256);
  *(this + 52257) = *(a2 + 52257);
  *(this + 2429) = *(a2 + 2429);
  OZChannelBase::operator=(this + 60360, a2 + 60360);
  *(this + 2408) = *(a2 + 2408);
  if (this != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 2409, *(a2 + 2409), *(a2 + 2410), (*(a2 + 2410) - *(a2 + 2409)) >> 2);
  }

  *(this + 52264) = *(a2 + 52264);
  *(this + 52280) = *(a2 + 52280);
  *(this + 52296) = *(a2 + 52296);
  *(this + 52312) = *(a2 + 52312);
  *(this + 52328) = *(a2 + 52328);
  *(this + 52344) = *(a2 + 52344);
  *(this + 52360) = *(a2 + 52360);
  *(this + 61200) = *(a2 + 61200);
  OZChannel::setDiscrete((this + 52640), 0, 0);
  OZChannel::setDiscrete((this + 52792), 0, 0);
  OZChannel::setDiscrete((this + 53240), 0, 0);
  OZChannel::setDiscrete((this + 53528), 0, 0);
  OZChannel::setDiscrete((this + 53680), 0, 0);
  OZChannel::setDiscrete((this + 54128), 0, 0);
  *(this + 15288) = 0;
  *(this + 7638) = *(this + 7637);
  *(this + 7641) = *(this + 7640);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::clear(this + 64256);
  *(this + 63776) = *(a2 + 63776);
}

uint64_t TXTextLayout::deleteThis(TXTextLayout *this, OZChannelBase *a2)
{
  v4 = this + 19344;
  v5 = *(this + 2419);
  if (v5 == this + 19344)
  {
    goto LABEL_28;
  }

  do
  {
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v6 + 480);
    v9 = *(v6 + 488);
    v10 = v9 - v8;
    if (v9 - v8 == 8 || v8 == v9)
    {
      v11 = 0;
LABEL_11:
      v12 = 0;
      if (v7)
      {
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      v11 = 0;
      while ((*(**v8 + 208))() != a2)
      {
        ++v8;
        ++v11;
        if (v8 == v9)
        {
          goto LABEL_11;
        }
      }

      v12 = *v8;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    if (v10 == 8)
    {
      break;
    }

    v5 = *(v5 + 1);
    if (v5 == v4)
    {
      break;
    }
  }

  while (!v12);
  if (v12)
  {
    ValueAsInt = OZChannel::getValueAsInt((v12 + 568), MEMORY[0x277CC08F0], 0.0);
    TXTextLayout::removeMaterialFromSequenceBehaviors(this, v11);
    TXSequenceChannels::removeMaterialChannelsAtIndex((this + 25032), v11);
    for (i = *(this + 2419); i != v4; i = *(i + 1))
    {
      v16 = *(i + 2);
      v15 = *(i + 3);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(v16 + 60);
      if (v11 >= ((*(v16 + 61) - v17) >> 3))
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      OZStyle::unregisterMaterial(v16, *(v17 + 8 * v11));
      OZStyle::removeMaterialAtIndex(v16, v11);
      OZStyle::didDeleteMaterialWithFacetAssignment(v16, ValueAsInt);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    return 1;
  }

LABEL_28:

  return OZSceneNode::deleteThis((this + 200), a2);
}

void sub_25FADA780(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *TXTextLayout::removeMaterialFromSequenceBehaviors(void *this, unsigned int a2)
{
  v2 = this + 150;
  v3 = this[151];
  if (v3 != this + 150)
  {
    do
    {
      this = v3[2];
      if (this)
      {
        if (this)
        {
          this = TXSequenceBehavior::removeMaterial(this, a2);
        }
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t non-virtual thunk toTXTextLayout::deleteThis(TXTextLayout *this, OZChannelBase *a2)
{
  return TXTextLayout::deleteThis((this - 200), a2);
}

{
  return TXTextLayout::deleteThis((this - 216), a2);
}

void TXTextLayout::~TXTextLayout(TXTextLayout *this)
{
  v2 = this + 60696;
  *this = &unk_2871F02F8;
  *(this + 25) = &unk_2871F07C0;
  *(this + 27) = &unk_2871F1098;
  *(this + 31) = &unk_2871F12F0;
  *(this + 841) = &unk_2871F1348;
  *(this + 2372) = &unk_2871F1420;
  v3 = (this + 58824);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::clear[abi:ne200100](this + 7353);
  std::__list_imp<TXTextLayout::HGNodeCacheEntry>::clear(this + 7584);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *(v2 + 1));
  *v2 = v2 + 8;
  *(v2 + 2) = 0;
  *(v2 + 1) = 0;
  v4 = *(v2 + 4);
  v5 = *(v2 + 5);
  *(v2 + 8) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(v2 + 5);
      v4 = (*(v2 + 4) + 8);
      *(v2 + 4) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 128;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 256;
  }

  *(v2 + 7) = v8;
LABEL_8:
  v9 = *(v2 + 29);
  v10 = *(v2 + 30);
  *(v2 + 33) = 0;
  v11 = (v10 - v9) >> 3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v9);
      v12 = *(v2 + 30);
      v9 = (*(v2 + 29) + 8);
      *(v2 + 29) = v9;
      v11 = (v12 - v9) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v13 = 256;
  }

  *(v2 + 32) = v13;
LABEL_15:
  TXTextLayout::clearParagraphs(this);
  TXTextLayout::clearStyleRuns(this);
  v14 = *(v2 + 62);
  if (v14)
  {
    std::deque<CMTime>::~deque[abi:ne200100]((v14 + 48));
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v14 + 24, *(v14 + 32));
    std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::destroy(v14, *(v14 + 8));
    MEMORY[0x2666E9F00](v14, 0x10A0C4023076DA7);
    *(v2 + 62) = 0;
  }

  v15 = *(v2 + 34);
  if (v15)
  {
    v16 = PCCache<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::~PCCache(v15);
    MEMORY[0x2666E9F00](v16, 0x20C4093837F09);
    *(v2 + 34) = 0;
  }

  v17 = *(v2 + 397);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(v2 + 464);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = (*(this + 3131) - *(this + 3130)) >> 3;
  v20 = v19 - 6;
  if (v19 != 6)
  {
    do
    {
      v18 = TXSequenceChannels::removeMaterialChannelsAtIndex((this + 25032), 0);
      --v20;
    }

    while (v20);
  }

  if (TXTextLayout::scaleEmojiToCapHeight(v18))
  {
    v21 = *(v2 + 436);
    if (v21)
    {
      CFRelease(v21);
      *(v2 + 436) = 0;
    }
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 64368, *(v2 + 460));
  std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::destroy(this + 64296, *(v2 + 451));
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::~__hash_table(this + 64256);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 64232, *(v2 + 443));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 64208, *(v2 + 440));
  OZValueCache<OZProjectedBoundsCacheItem>::~OZValueCache(this + 64032);
  OZValueCache<OZBoundsCacheItem>::~OZValueCache(this + 63888);
  v22 = *(v2 + 393);
  if (v22)
  {
    *(v2 + 394) = v22;
    operator delete(v22);
  }

  v23 = *(v2 + 390);
  if (v23)
  {
    *(v2 + 391) = v23;
    operator delete(v23);
  }

  v24 = *(v2 + 380);
  if (v24)
  {
    *(v2 + 381) = v24;
    operator delete(v24);
  }

  OZChannel::~OZChannel((this + 63568));
  OZChannelBool::~OZChannelBool((this + 63416));
  OZChannel::~OZChannel((this + 63264));
  OZChannelBool::~OZChannelBool((this + 63112));
  *(v2 + 157) = &unk_28724C608;
  *(v2 + 159) = &unk_28724C978;
  OZChannel::~OZChannel((this + 62960));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v2 + 1256));
  OZChannelBool::~OZChannelBool((this + 61800));
  OZChannelBool::~OZChannelBool((this + 61648));
  OZChannel::~OZChannel((this + 61464));
  OZChannelEnum::~OZChannelEnum((this + 61208));
  v25 = *(v2 + 53);
  if (v25)
  {
    *(v2 + 54) = v25;
    operator delete(v25);
  }

  v26 = *(v2 + 50);
  if (v26)
  {
    *(v2 + 51) = v26;
    operator delete(v26);
  }

  std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy(this + 61072, *(v2 + 48));
  PCMutex::~PCMutex((this + 61000));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 60976, *(v2 + 36));
  std::deque<PCHash128>::~deque[abi:ne200100](this + 7615);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 60896, *(v2 + 26));
  std::__list_imp<TXTextLayout::HGMetalNodeCacheEntry>::clear(this + 7609);
  PCSharedMutex::~PCSharedMutex((this + 60768));
  std::deque<PCHash128>::~deque[abi:ne200100](this + 7590);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *(v2 + 1));
  std::__list_imp<TXTextLayout::HGNodeCacheEntry>::clear(this + 7584);
  OZChannel::~OZChannel((this + 60520));
  OZChannel::~OZChannel((this + 60360));
  OZChannelBool::~OZChannelBool((this + 60208));
  OZChannelBool::~OZChannelBool((this + 60056));
  OZChannel::~OZChannel(this + 394);
  OZChannelFolder::~OZChannelFolder((this + 59760));
  OZChannel::~OZChannel((this + 59560));
  OZChannelBool::~OZChannelBool((this + 59408));
  OZChannelFolder::~OZChannelFolder((this + 59280));
  OZChannelBool::~OZChannelBool(this + 389);
  OZChannelFolder::~OZChannelFolder((this + 58880));
  PCString::~PCString(this + 7358);
  PCString::~PCString(this + 7357);
  v34 = v3;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&v34);
  OZChannelFolder::~OZChannelFolder((this + 58696));
  PCEvaluator::~PCEvaluator((this + 58600));
  OZChannelBool::~OZChannelBool((this + 58448));
  OZChannelBool::~OZChannelBool((this + 58296));
  OZChannelBool::~OZChannelBool((this + 58144));
  OZChannelBool::~OZChannelBool((this + 57992));
  OZChannelPercent::~OZChannelPercent((this + 57840));
  OZChannelBool::~OZChannelBool((this + 57688));
  OZChannel::~OZChannel((this + 57536));
  OZChannel::~OZChannel((this + 57384));
  OZChannel::~OZChannel((this + 57232));
  OZChannel::~OZChannel((this + 57080));
  OZChannelPosition::~OZChannelPosition((this + 56376));
  OZChannelPosition::~OZChannelPosition((this + 55672));
  OZChannel2D::~OZChannel2D((this + 55232));
  OZChannel2D::~OZChannel2D((this + 54792));
  OZChannelEnum::~OZChannelEnum((this + 54536));
  OZChannelEnum::~OZChannelEnum((this + 54280));
  OZChannelPosition3D::~OZChannelPosition3D((this + 53392));
  OZChannelPosition3D::~OZChannelPosition3D((this + 52504));
  OZChannelFolder::~OZChannelFolder((this + 52376));
  *(this + 6525) = &unk_2871F2698;
  v27 = *(this + 13052);
  if (v27 < 0)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27 & ~(v27 >> 31);
  }

  if (v28 == v27)
  {
    v29 = *(this + 13053);
    v30 = *(this + 6527);
    if ((v29 & 0x80000000) != 0)
    {
      bzero((v30 + 8 * v29), 8 * ~v29 + 8);
    }
  }

  else
  {
    if (v28)
    {
      operator new[]();
    }

    v30 = 0;
    v31 = *(this + 6527);
    if (v31)
    {
      MEMORY[0x2666E9ED0](v31, 0x1000C8077774924);
    }

    *(this + 6527) = 0;
  }

  *(this + 13052) = v28;
  *(this + 13053) = 0;
  if (v30)
  {
    MEMORY[0x2666E9ED0](v30, 0x1000C8077774924);
  }

  *(this + 6527) = 0;
  *(this + 13052) = 0;
  TXSequenceChannels::~TXSequenceChannels((this + 25032));
  OZChannel::~OZChannel((this + 24880));
  OZChannel::~OZChannel((this + 24728));
  OZChannel::~OZChannel((this + 24576));
  OZChannel::~OZChannel((this + 24424));
  OZChannel::~OZChannel((this + 24272));
  OZChannelBool::~OZChannelBool((this + 24120));
  OZChannelPercent::~OZChannelPercent((this + 23968));
  OZChannelPercent::~OZChannelPercent((this + 23816));
  OZChannelFolder::~OZChannelFolder((this + 23688));
  OZChannelPosition3D::~OZChannelPosition3D((this + 22800));
  OZChannelEnum::~OZChannelEnum((this + 22544));
  OZChannelEnum::~OZChannelEnum((this + 22288));
  OZChannel::~OZChannel((this + 22136));
  OZChannelEnum::~OZChannelEnum((this + 21880));
  OZChannelEnum::~OZChannelEnum((this + 21624));
  TXChannelAlignment::~TXChannelAlignment((this + 20976));
  OZChannelEnum::~OZChannelEnum((this + 20720));
  OZChannelEnum::~OZChannelEnum((this + 20464));
  OZChannelBool::~OZChannelBool((this + 20312));
  OZChannelEnum::~OZChannelEnum((this + 20056));
  OZChannelBool::~OZChannelBool((this + 19904));
  OZChannelPercent::~OZChannelPercent((this + 19752));
  OZChannel::~OZChannel((this + 19600));
  OZChannelPercent::~OZChannelPercent((this + 19448));
  std::__list_imp<unsigned int>::clear(this + 2421);
  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(this + 2418);
  v32 = *(this + 2409);
  *(this + 2410) = v32;
  if (v32)
  {
    operator delete(v32);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 19224, *(this + 2404));
  PCString::~PCString(this + 2402);
  OZChannelText::~OZChannelText((this + 19048));
  v33 = *(this + 2378);
  if (v33)
  {
    *(this + 2379) = v33;
    operator delete(v33);
  }

  v34 = (this + 19000);
  std::vector<TXTabStop>::__destroy_vector::operator()[abi:ne200100](&v34);
  OZLockingElement::~OZLockingElement(this);
}

{
  TXTextLayout::~TXTextLayout(this);

  JUMPOUT(0x2666E9F00);
}

void *TXTextLayout::clearParagraphs(void *this)
{
  v1 = this;
  v2 = this[2378];
  v3 = this[2379];
  if (v2 != v3)
  {
    do
    {
      this = *v2;
      if (*v2)
      {
        this = (*(*this + 8))(this);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v1[2378];
  }

  v1[2379] = v2;
  return this;
}

void *TXTextLayout::clearStyleRuns(TXTextLayout *this)
{
  v1 = (this + 19368);
  v2 = *(this + 2422);
  if (v2 != (this + 19368))
  {
    do
    {
      v4 = v2[1];
      v10 = v2[2];
      v6 = v10[1];
      v5 = v10[2];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v6;
      v9 = v5;
      (*(*this + 272))(this, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      std::list<TXTextStyleRun *>::remove(v1, &v10);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }

  return std::__list_imp<unsigned int>::clear(v1);
}

void sub_25FADB2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toTXTextLayout::~TXTextLayout(TXTextLayout *this)
{
  TXTextLayout::~TXTextLayout((this - 200));
}

{
  TXTextLayout::~TXTextLayout((this - 216));
}

{
  TXTextLayout::~TXTextLayout((this - 248));
}

{
  TXTextLayout::~TXTextLayout((this - 6728));
}

{
  TXTextLayout::~TXTextLayout((this - 18976));
}

{
  TXTextLayout::~TXTextLayout((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 6728));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 18976));

  JUMPOUT(0x2666E9F00);
}

void TXTextLayout::updateDisplayString(PCString *this, const CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v8, v4);
  TXChannelString::getString(this + 2381, &v7);
  v5 = PCString::cf_str(&v7);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v5);
  PCString::~PCString(&v7);
  TXTextLayout::applyAllCaps(this, MutableCopy);
  TXTextLayout::applySequenceCharacterOffsets(this, MutableCopy, a2);
  PCString::set(this + 2402, MutableCopy);
  CFRelease(MutableCopy);
  OZLockingGroup::WriteSentry::~WriteSentry(v8);
}

void sub_25FADB550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::createParagraphStylesFromNewLines(TXTextLayout *this)
{
  v2 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsInt((this + 21624), MEMORY[0x277CC08F0], 0.0);
  OZChannel::getValueAsInt((this + 21880), v2, 0.0);
  if (*(this + 2379) == *(this + 2378))
  {
    operator new();
  }

  *(this + 4831) = 1;
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  v4 = PCString::size(StringPtr);
  TXChannelString::getString(this + 2381, &theString);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, i);
      if (TXCharacterSetIsNewline(CharacterAtIndex))
      {
        operator new();
      }
    }
  }

  PCString::~PCString(&theString);
}

void TXTextLayout::rebuildParagraphStyles(PCString *this)
{
  var0 = this[2378].var0;
  if (this[2379].var0 == var0)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *var0;
  TXParagraphStyle::setStart(*var0, 0);
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v5 = OZHostApplicationDelegateHandler::wantsSameAlignmentForAllLinesOfText(HostApplicationDelegate);
  v6 = this[26].var0;
  info = v6->info;
  info_high = HIDWORD(v6->info);
  data = v6->data;
  data_high = HIDWORD(v6->data);
  v14 = info == 792898163 && info_high == 1337411563 && data == -1926054385 && data_high == 1588990368;
  TXChannelString::getString(this + 2381, &v30);
  v15 = PCString::createUniStr(&v30);
  v16 = 0;
  LODWORD(v17) = 0;
  v18 = v14 | v5;
  while (v16 < PCString::size(&v30))
  {
    if (TXCharacterSetIsNewline(v15[v16]))
    {
      TXParagraphStyle::setLength(v3, ++v16 - *(v3 + 107));
      Alignment = TXParagraphStyle::getAlignment(v3);
      v17 = (v17 + 1);
      v20 = this[2378].var0;
      if ((this[2379].var0 - v20) >> 3 <= v17)
      {
        operator new();
      }

      v3 = *(&v20->isa + v17);
      if (v18)
      {
        TXParagraphStyle::setAlignment(*(&v20->isa + v17), Alignment, 1);
      }

      TXParagraphStyle::setStart(v3, v16);
    }

    else
    {
      ++v16;
    }
  }

  v21 = PCString::size(&v30);
  TXParagraphStyle::setLength(v3, v21 - *(v3 + 107));
  v22 = (v17 + 1);
  v23 = this[2379].var0;
  v24 = this[2378].var0;
  if (v22 < (v23 - v24) >> 3)
  {
    v25 = 8 * v22;
    do
    {
      v26 = *(&v24->isa + v22);
      v27 = v24 + v25;
      v28 = (&v24->info + v25);
      v29 = v23 - v28;
      if (v23 != v28)
      {
        memmove(v24 + v25, v28, v23 - v28);
      }

      v23 = &v27[v29];
      this[2379].var0 = &v27[v29];
      if (v26)
      {
        (*(*v26 + 8))(v26);
        v23 = this[2379].var0;
      }

      v24 = this[2378].var0;
    }

    while (v22 < (v23 - v24) >> 3);
  }

  if (v15)
  {
    MEMORY[0x2666E9ED0](v15, 0x1000C80BDFB0063);
  }

  PCString::~PCString(&v30);
}

void sub_25FADBAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  MEMORY[0x2666E9F00](v10, 0x10F1C4017F5857CLL);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void TXTextLayout::setAllParagraphsDirty(TXParagraphStyle ***this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v5, v2);
  v3 = this[2378];
  v4 = this[2379];
  while (v3 != v4)
  {
    TXParagraphStyle::dirty(*v3++, 1);
  }

  *(this + 19392) = 1;
  OZLockingGroup::WriteSentry::~WriteSentry(v5);
}

void sub_25FADBB78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::operator=(uint64_t a1, const void *a2)
{
  PCSharedMutex::lock((a1 + 8));
  OZElement::operator=(a1 + 200, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 24272, v4 + 24272);
  OZChannelBase::operator=(a1 + 24424, v5 + 24424);
  OZChannelBase::operator=(a1 + 24576, v5 + 24576);
  OZChannelBase::operator=(a1 + 24728, v5 + 24728);
  v6 = (a1 + 1200);
  if (a1 + 1200 != *(a1 + 1208))
  {
    v7 = (a1 + 1200);
    do
    {
      v8 = *(*v7 + 16);
      v9 = v8[1];
      v12 = xmmword_260347A60;
      if ((OZFactory::isKindOfClass(v9, &v12) & 1) == 0)
      {
        (*(*v8 + 120))(v8);
      }

      v7 = *v7;
    }

    while (v7 != *(a1 + 1208));
  }

  TXTextLayout::copyLayout(a1, v5);
  if (v5 != a1)
  {
    std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<long,double>,std::__tree_node<std::__value_type<long,double>,void *> *,long>>((a1 + 19224), *(v5 + 2403), v5 + 2404);
  }

  OZChannelFolder::operator=(a1 + 648);
  for (; v6 != *(a1 + 1208); v6 = *v6)
  {
    v10 = *(*v6 + 16);
    v11 = v10[1];
    v12 = xmmword_260347A60;
    if ((OZFactory::isKindOfClass(v11, &v12) & 1) == 0)
    {
      (*(*v10 + 96))(v10, a1 + 200);
    }
  }

  TXTextLayout::updateLineBreaksByHardLine(a1);
  PCSharedMutex::unlock((a1 + 8));
}

char *TXTextLayout::cloneBehaviorsEffects(TXTextLayout *this, const OZSceneNode *a2, unsigned int a3)
{
  v6 = (this + 200);
  (*(*(this + 25) + 768))(this + 200);
  for (i = v6[2394]; i != v6 + 2393; i = *(i + 8))
  {
    v8 = (*(**(i + 16) + 112))(*(i + 16));
    OZChannelFolder::removeDescendant((this + 1032), v8);
    if (*(this + 146))
    {
      OZStyle::unregisterAllMaterials(*(i + 16));
      v9 = *(i + 16);
      if (v9)
      {
        v10 = (v9 + 16);
      }

      else
      {
        v10 = 0;
      }

      OZScene::unregisterObject(*(this + 146), v10);
      OZScene::removeAllDependencies(*(this + 146), *(*(i + 16) + 96));
    }
  }

  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(v6 + 2393);
  TXTextLayout::clearStyleRuns(this);
  if (!v11)
  {
    __cxa_bad_cast();
  }

  if (v11[2419] != v11 + 2418)
  {
    std::allocate_shared[abi:ne200100]<TXTextStyle,std::allocator<TXTextStyle>,TXTextStyle&,decltype(nullptr),0>();
  }

  if (v11[2422] != v11 + 2421)
  {
    operator new();
  }

  (*(*v6 + 776))(v6);
  return OZSceneNode::cloneBehaviorsEffects(v6, a2, a3);
}

double TXTextLayout::didChangeChannelState(TXTextLayout *this, OZChannelBase *a2)
{
  PCURL::PCURL(&v6, @"Text Format Kerning");
  LODWORD(a2) = PCString::compare(&a2->var4, &v6);
  PCString::~PCString(&v6);
  if (!a2)
  {
    ParagraphStyleContainingCurrentInsertionPoint = TXTextLayout::getParagraphStyleContainingCurrentInsertionPoint(this);
    if (ParagraphStyleContainingCurrentInsertionPoint)
    {
      return TXParagraphStyle::dirty(ParagraphStyleContainingCurrentInsertionPoint, 1);
    }
  }

  return result;
}

uint64_t TXTextLayout::getParagraphStyleContainingCurrentInsertionPoint(TXTextLayout *this)
{
  v2 = this + 0x4000;
  v3 = *(this + 4814);
  v4 = (*(*this + 216))(this);
  if (v3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v2[2912] == 1)
  {
    v6 = *(v2 + 718);
    v7 = (*(*this + 216))(this);
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = v5 - 1;
  }

  v9 = *(this + 2378);
  v10 = *(this + 2379);
  if (v9 == v10)
  {
    return *(v10 - 8);
  }

  while (1)
  {
    result = *v9;
    v12 = *(*v9 + 856);
    if (v12 <= v8 && *(result + 864) + v12 > v8)
    {
      break;
    }

    v9 += 8;
    if (v9 == v10)
    {
      return *(v10 - 8);
    }
  }

  return result;
}

void TXTextLayout::getIconName(TXTextLayout *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(*this + 296))(this))
  {
    v4 = *(this + 2419);
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (OZChannel::getValueAsInt((v6 + 43240), MEMORY[0x277CC08F0], 0.0))
    {
      v7 = 0;
    }

    else
    {
      v7 = OZ3DExtrusionProperties::environmentType((v6 + 40520)) == 0;
    }

    v9 = (*(*this + 936))(this, MEMORY[0x277CC08F0]);
    v10 = @"M_LayersList_ObjectIconColor-3DTextWithLighting";
    if (v7)
    {
      v10 = @"M_LayersList_ObjectIconColor-3DText";
    }

    v11 = @"M_LayersList_ObjectIconColor-3DTextRasterized";
    if (!v7)
    {
      v11 = @"M_LayersList_ObjectIconColor-3DTextWithLightingRasterized";
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    PCURL::PCURL(a2, v12);
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else if ((*(*this + 936))(this, MEMORY[0x277CC08F0]))
  {

    PCURL::PCURL(a2, @"M_LayersList_ObjectIconColor-TextRasterized");
  }

  else
  {
    v8 = *(**(this + 26) + 80);

    v8();
  }
}

void sub_25FADC4E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::getIconNameBW(TXTextLayout *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(*this + 296))(this))
  {
    v4 = *(this + 2419);
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (OZChannel::getValueAsInt((v6 + 43240), MEMORY[0x277CC08F0], 0.0))
    {
      v7 = 0;
    }

    else
    {
      v7 = OZ3DExtrusionProperties::environmentType((v6 + 40520)) == 0;
    }

    v9 = (*(*this + 936))(this, MEMORY[0x277CC08F0]);
    v10 = @"M_LayersList_ObjectIconGrey-3DTextWithLighting";
    if (v7)
    {
      v10 = @"M_LayersList_ObjectIconGrey-3DText";
    }

    v11 = @"M_LayersList_ObjectIconGrey-3DTextRasterized";
    if (!v7)
    {
      v11 = @"M_LayersList_ObjectIconGrey-3DTextWithLightingRasterized";
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    PCURL::PCURL(a2, v12);
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else if ((*(*this + 936))(this, MEMORY[0x277CC08F0]))
  {

    PCURL::PCURL(a2, @"M_LayersList_ObjectIconGrey-TextRasterized");
  }

  else
  {
    v8 = *(**(this + 26) + 88);

    v8();
  }
}

void sub_25FADC6FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::getIconID(TXTextLayout *this)
{
  if ((*(*this + 296))(this))
  {
    v2 = *(this + 2419);
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (OZChannel::getValueAsInt((v4 + 43240), MEMORY[0x277CC08F0], 0.0))
    {
      v5 = 0;
    }

    else
    {
      v5 = OZ3DExtrusionProperties::environmentType((v4 + 40520)) == 0;
    }

    v9 = (*(*this + 936))(this, MEMORY[0x277CC08F0]);
    if (v5)
    {
      v10 = 39;
    }

    else
    {
      v10 = 40;
    }

    if (v5)
    {
      v11 = 37;
    }

    else
    {
      v11 = 38;
    }

    if (v9)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    return v6;
  }

  if ((*(*this + 936))(this, MEMORY[0x277CC08F0]))
  {
    return 28;
  }

  v7 = *(**(this + 26) + 96);

  return v7();
}

void sub_25FADC8B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::didUndoLastChange(TXTextLayout *this)
{
  v2 = this + 200;
  OZSceneNode::didUndoLastChange(this + 200);
  (*(*(this + 25) + 232))(v2);
  v3 = (*(*(this + 25) + 272))(v2);
  if (v3)
  {
    v4 = v3;
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

      OZScene::registerObject(v4, v7);
      OZScene::addNodeDependency(v4, *(*(i + 16) + 96), *(this + 70));
      OZStyle::registerAllMaterials(*(i + 16));
    }

    v8 = *(v4 + 198);

    OZDocument::postNotification(v8, 0x80000);
  }
}

void TXTextLayout::setString(TXTextLayout *this, const PCString *a2, char a3)
{
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v9, v6);
  PCString::PCString(&v8, a2);
  v7.var0 = &v8;
  TXChannelString::setString((this + 19048), v7, a3, 0);
  PCString::~PCString(&v8);
  (*(*this + 1096))(this);
  OZLockingGroup::WriteSentry::~WriteSentry(v9);
}

void sub_25FADCA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  PCString::~PCString(&a9);
  OZLockingGroup::WriteSentry::~WriteSentry(&a10);
  _Unwind_Resume(a1);
}

void TXTextLayout::getString(PCString *this, PCString *a2)
{
  TXChannelString::getString(this + 2381, &v3);
  PCString::set(a2, &v3);
  PCString::~PCString(&v3);
}

void TXTextLayout::getDisplayString(PCString *this@<X0>, PCString *a2@<X8>)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v5, v4);
  PCString::PCString(a2, this + 2402);
  OZLockingGroup::WriteSentry::~WriteSentry(v5);
}

void sub_25FADCB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::resetState(TXTextLayout *this)
{
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::clear[abi:ne200100](this + 7353);
  v2 = *(this + 2379);
  v3 = *(this + 2378);
  if ((v2 - v3) >= 9)
  {
    do
    {
      v4 = *(v2 - 8);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 2379);
        v3 = *(this + 2378);
      }

      v2 -= 8;
      *(this + 2379) = v2;
    }

    while ((v2 - v3) > 8);
  }

  if (v2 != v3)
  {
    v5 = *(v2 - 8);
    TXParagraphStyle::setStart(v5, 0);
    TXParagraphStyle::setLength(v5, 0);
  }

  if (*(this + 2423) >= 2uLL)
  {
    do
    {
      v6 = *(*(this + 2421) + 16);
      v8 = v6[1];
      v7 = v6[2];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v8;
      v15 = v7;
      (*(*this + 272))(this, &v14);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      (*(*v6 + 8))(v6);
      v9 = *(this + 2421);
      v11 = *v9;
      v10 = v9[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      --*(this + 2423);
      operator delete(v9);
    }

    while (*(this + 2423) > 1uLL);
  }

  *(*(*(this + 2421) + 16) + 24) = 0;
  *(this + 19320) = 0;
  TXTextLayout::resetKernings(this);
  *(this + 2407) = 0;
  if (*(this + 19296) == 1 && OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = -1;
  }

  *(this + 4746) = v12;
  *(this + 18988) = v13;
}

void sub_25FADCD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::resetKernings(TXTextLayout *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v3, v2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 19224, *(this + 2404));
  *(this + 2403) = this + 19232;
  *(this + 1202) = 0u;
  TXTextLayout::setAllParagraphsDirty(this);
  (*(*this + 544))(this);
  OZLockingGroup::WriteSentry::~WriteSentry(v3);
}

void sub_25FADCE28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::resetName(PCString *this)
{
  if ((BYTE2(this[6545].var0) & 1) == 0)
  {
    PCSharedCount::PCSharedCount(&v6);
    TXChannelString::getString(this + 2381, &v5);
    if (PCString::size(&v5))
    {
      PCString::PCString(&v4, "\n");
      v2 = PCString::find(&v5, &v4);
      PCString::~PCString(&v4);
      v3 = (v2 - 1);
      if (v3 > 0x1C)
      {
        if (PCString::size(&v5) < 0x1F)
        {
          PCString::set(&v6, &v5);
          goto LABEL_9;
        }

        PCString::substrTo(&v5, 30, &v4.var0);
        PCString::set(&v6, &v4);
      }

      else
      {
        PCString::substrTo(&v5, v3, &v4.var0);
        PCString::set(&v6, &v4);
      }
    }

    else
    {
      PCURL::PCURL(&v4, @"Text Name");
      PCString::set(&v6, &v4);
    }

    PCString::~PCString(&v4);
LABEL_9:
    OZObjectManipulator::setName(&this[27], &v6, 0);
    PCString::~PCString(&v5);
    PCString::~PCString(&v6);
  }
}

void sub_25FADCF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

void TXTextLayout::updateDisplayStringAndAffectedState(PCString *this, const CMTime *a2)
{
  TXChannelString::getString(this + 2381, &v4);
  PCString::size(&v4);
  PCString::~PCString(&v4);
  TXTextLayout::updateDisplayString(this, a2);
  TXTextLayout::rebuildParagraphStyles(this);
  TXTextLayout::setAllParagraphsDirty(this);
}

uint64_t TXTextLayout::getNumWords(TXTextLayout *this)
{
  result = *(this + 15953);
  if ((result & 0x80000000) != 0)
  {
    result = 0;
    *(this + 15953) = 0;
  }

  return result;
}

uint64_t TXTextLayout::setSelection(uint64_t this, int a2, int a3)
{
  *(this + 19256) = a2;
  *(this + 19260) = a3;
  return this;
}

void TXTextLayout::selectAllGlyphs(TXTextLayout *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v7, v2);
  TXDiscontinuousSelection::removeAll(this + 2409);
  for (i = 0; ; ++i)
  {
    StringPtr = TXChannelString::getStringPtr((this + 19048));
    if (i >= PCString::size(StringPtr))
    {
      break;
    }

    v5 = TXChannelString::getStringPtr((this + 19048));
    CharacterAtIndex = CFStringGetCharacterAtIndex(*v5, i);
    if (!TXCharacterSetIsWhitespace(CharacterAtIndex))
    {
      TXDiscontinuousSelection::addChar((this + 19272), i);
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v7);
}

void sub_25FADD12C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getParagraphStyleContainingOffset(TXTextLayout *this, unint64_t a2)
{
  v2 = *(this + 2378);
  v3 = *(this + 2379);
  while (v2 != v3)
  {
    result = *v2;
    v5 = *(*v2 + 856);
    if (v5 <= a2 && *(result + 864) + v5 > a2)
    {
      return result;
    }

    v2 += 8;
  }

  return *(v3 - 8);
}

uint64_t TXTextLayout::doLayout(TXTextLayout *this, const OZRenderState *a2, PCHash128 *a3)
{
  v3 = MEMORY[0x28223BE20](this);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v120[520] = *MEMORY[0x277D85DE8];
  v9 = Li3DEngineScene::sceneManager(v3);
  OZLockingGroup::WriteSentry::WriteSentry(v116, v9);
  v10 = v8 + 200;
  if (!(*(*(v8 + 200) + 272))(v8 + 200) || *(*((*(*v10 + 272))(v8 + 200) + 1584) + 324) != 1 || ((*(*v8 + 296))(v8) & 1) == 0)
  {
    StringPtr = TXChannelString::getStringPtr((v8 + 19048));
    if (PCString::size(StringPtr))
    {
      v115 = *v7;
      v114 = 0;
      v113 = 0;
      v112 = &v113;
      PCHashWriteStream::PCHashWriteStream(v120);
      OZRenderParams::OZRenderParams(time2);
      time.value = &time;
      *&time.timescale = &time;
      time.epoch = 0;
      v12 = OZRenderParams::setState(time2, v7);
      if ((*(*v10 + 272))(v8 + 200, v12) && *((*(*v10 + 272))(v8 + 200) + 1579) == 1 && *(v8 + 19432) != 0.0)
      {
        (*(*v8 + 824))(v8, 1, 0.0);
        *(v8 + 19392) = 1;
      }

      OZRenderParams::setWorkingColorDescriptionFromRenderNode(time2, v8 + 6728, 0);
      v13 = (*(*v10 + 296))(v8 + 200);
      OZRenderParams::setBlendingGamma(time2, v13);
      TXTextLayout::getTextHashForState(v120, v8, time2, 1, &v109);
      if (v5)
      {
        *v5 = *&v109.value;
      }

      v14 = TXTextLayout::timeGlyphPropertiesMap(v8);
      TXTimeGlyphPropertiesMap::getHash(v14, v7, &time1);
      v104 = (v8 + 18984);
      v99 = vceqq_s32(*&time1.value, *&v109.value);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(v99))) & 1) == 0)
      {
        v15 = TXTextLayout::timeGlyphPropertiesMap(v8);
        TXTimeGlyphPropertiesMap::promoteTime(v15, &v115);
      }

      v102 = v8 + 200;
      v103 = v7;
      PCHashWriteStream::PCHashWriteStream(&time1);
      for (i = *(v8 + 19376); i != v8 + 19368; i = *(i + 8))
      {
        v17 = *(i + 16);
        PCHashWriteStream::reset(&time1);
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v110 = time2[0];
        TXTextStyle::calcHashForStateAffectingLayout(v18, &time1, &v110);
        Hash = PCHashWriteStream::getHash(&time1);
        LODWORD(v108.value) = *(v17 + 24);
        v110.value = &v108;
        *(std::__tree<std::__value_type<unsigned int,PCHash128>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCHash128>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCHash128>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v112, &v108) + 2) = *Hash->i8;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      v21 = *(v8 + 19024);
      for (j = *(v8 + 19032); v21 != j; ++v21)
      {
        TXParagraphStyle::calcHashForStateAndSetDirty(*v21);
      }

      v23 = (v8 + 19396);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*&v109.value, *(v8 + 19396))))) & 1) == 0 && (*(v8 + 19392) & 1) == 0)
      {
        v24 = TXTextLayout::isAnyParagraphDirty(v8) ^ 1;
        if ((vaddvq_s32(vbicq_s8(xmmword_260347A70, v99)) & 0xF) != 0)
        {
          v24 = 0;
        }

        if (v24)
        {
          PCHashWriteStream::~PCHashWriteStream(&time1);
          std::__list_imp<unsigned int>::clear(&time);
          OZRenderParams::~OZRenderParams(time2);
LABEL_145:
          PCHashWriteStream::~PCHashWriteStream(v120);
          std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v112, v113);
          goto LABEL_146;
        }
      }

      v25 = v8 + 1200;
      v26 = *(v8 + 1208);
      if (v26 != v8 + 1200)
      {
        do
        {
          v27 = *(v26 + 16);
          if (v27)
          {
            if (v28)
            {
              v29 = v28;
              if (OZChannelBase::testFlag((v28 + 3336), 2) && OZChannelBase::testFlag((v29 + 3488), 2))
              {
                goto LABEL_38;
              }

              goto LABEL_37;
            }

            if (v30)
            {
              v31 = v30;
              if (((*(*v30 + 616))(v30, 1045, 0, 0) & 1) == 0 && ((*(*v31 + 616))(v31, 1004, 0, 0) & 1) == 0)
              {
                goto LABEL_38;
              }

LABEL_37:
              TXTextLayout::setAllParagraphsDirty(v8);
              goto LABEL_38;
            }

            {
              goto LABEL_37;
            }
          }

LABEL_38:
          v26 = *(v26 + 8);
        }

        while (v26 != v25);
      }

      *v23 = *&v109.value;
      PCHashWriteStream::~PCHashWriteStream(&time1);
      std::__list_imp<unsigned int>::clear(&time);
      OZRenderParams::~OZRenderParams(time2);
      PCHashWriteStream::~PCHashWriteStream(v120);
      v32 = TXTextLayout::timeGlyphPropertiesMap(v8);
      TXTimeGlyphPropertiesMap::setHash(v32, &v115, v23);
      PCHashWriteStream::PCHashWriteStream(v120);
      v33 = v103;
      v34 = *(v8 + 19352);
      if (v34 != v8 + 19344)
      {
        v35 = MEMORY[0x277CC08F0];
        do
        {
          OZChannel::getValueAsDouble((*(v34 + 16) + 5504), v35, 0.0);
          PCHashWriteStream::writeValue(v120, v36);
          v34 = *(v34 + 8);
        }

        while (v34 != v8 + 19344);
      }

      v37 = PCHashWriteStream::getHash(v120);
      v38 = v37->i32[1];
      v39 = v37[1].i32[0];
      v40 = v37[1].i32[1];
      v44 = *(v8 + 19412) != v37->i32[0] || *(v8 + 19416) != v38 || *(v8 + 19420) != v39 || *(v8 + 19424) != v40;
      *(v8 + 19412) = v37->i32[0];
      *(v8 + 19416) = v38;
      *(v8 + 19420) = v39;
      *(v8 + 19424) = v40;
      for (k = *(v8 + 19024); ; k += 8)
      {
        if (k == *(v8 + 19032))
        {
          v46 = 1;
          goto LABEL_61;
        }

        if (*(*k + 872) == 1)
        {
          break;
        }
      }

      v46 = 0;
      *(v8 + 61152) = 0;
      *(v8 + 61104) = *(v8 + 61096);
      *(v8 + 61128) = *(v8 + 61120);
LABEL_61:
      if ((*(v8 + 19321) | v44))
      {
        (*(*v8 + 1088))(v8, &v115);
      }

      if ((TXTextLayout::shouldScaleToBothMargins(v8) & 1) == 0)
      {
        OZChannel::setInitialValue((v8 + 61464), 1.0, 1);
      }

      __asm { FMOV            V0.2D, #1.0 }

      v100 = _Q0;
      if ((*(v8 + 19392) & 1) != 0 || TXTextLayout::isAnyParagraphDirty(v8))
      {
        *(v8 + 61616) = v100;
        v51 = 1;
      }

      else
      {
        v51 = 0;
      }

      if ((TXTextLayout::shouldScaleToLRMargins(v8) & 1) != 0 || (TXTextLayout::shouldScaleProportionallyToLeftRightMargins(v8) & 1) != 0 || (TXTextLayout::shouldScaleToTBMargins(v8) & 1) != 0 || TXTextLayout::hasLinkedMarginScale(v8))
      {
        if ((v51 & 1) == 0)
        {
          *(v8 + 61616) = v100;
        }

        TXTextLayout::setAllParagraphsDirty(v8);
      }

      if (OZChannel::getValueAsInt((v8 + 20720), MEMORY[0x277CC08F0], 0.0))
      {
        if (OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || (v52 = 0.0, OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 3))
        {
          OZChannel::getValueAsDouble((v8 + 24576), MEMORY[0x277CC08F0], 0.0);
          v54 = v53;
          OZChannel::getValueAsDouble((v8 + 24728), MEMORY[0x277CC08F0], 0.0);
LABEL_83:
          v52 = v54 - v55 + 1.0;
        }
      }

      else if (OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || (v52 = 0.0, OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 3))
      {
        OZChannel::getValueAsDouble((v8 + 24424), MEMORY[0x277CC08F0], 0.0);
        v54 = v56;
        OZChannel::getValueAsDouble((v8 + 24272), MEMORY[0x277CC08F0], 0.0);
        goto LABEL_83;
      }

      if (((TXTextLayout::shouldScaleToLRMargins(v8) & 1) != 0 || TXTextLayout::shouldScaleProportionallyToLeftRightMargins(v8)) && !OZChannel::getValueAsInt((v8 + 20720), MEMORY[0x277CC08F0], 0.0) || TXTextLayout::shouldScaleToTBMargins(v8) && OZChannel::getValueAsInt((v8 + 20720), MEMORY[0x277CC08F0], 0.0))
      {
        v52 = 0.0;
      }

      v57 = fabs(v52);
      v58 = TXTextLayout::doLayoutForParagraphs(v8, v57, v103);
      if ((v46 & 1) == 0 && OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) != 4)
      {
        v59 = ((*(v8 + 58832) - *(v8 + 58824)) >> 4);
        std::vector<unsigned int>::resize((v8 + 61096), v59);
        std::vector<unsigned int>::resize((v8 + 61120), v59);
        *(v8 + 61144) = 0;
        *(v8 + 61154) = 0;
      }

      v60 = MEMORY[0x277CC08F0];
      if (!OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 2)
      {
        v61 = *(v8 + 19032);
        v62 = *(v8 + 19024);
        if (((v61 - v62) & 0x7FFFFFFF0) != 0)
        {
          v63 = v58;
        }

        else
        {
          v63 = 0;
        }

        for (m = 0.0; v62 != v61; ++v62)
        {
          v65 = *v62;
          if (m < *(*v62 + 115))
          {
            m = *(*v62 + 115);
          }

          if (v63 && (TXParagraphStyle::getJustification(*v62) || TXParagraphStyle::getAlignment(v65)))
          {
            TXParagraphStyle::dirty(v65, 1);
          }
        }

        *(v8 + 59720) = m;
        v33 = v103;
        TXTextLayout::doLayoutForParagraphs(v8, m, v103);
      }

      if (v58)
      {
        if ((OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 4) && ((TXTextLayout::shouldScaleToLRMargins(v8) & 1) != 0 || TXTextLayout::shouldScaleProportionallyToLeftRightMargins(v8)))
        {
          TXTextLayout::shrinkToLeftRightMargins(v8, v33);
        }

        if ((OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((v8 + 20464), MEMORY[0x277CC08F0], 0.0) == 4) && TXTextLayout::shouldScaleToTBMargins(v8))
        {
          TXTextLayout::shrinkToTopBottomMargins(v8, v57, v33);
        }
      }

      TXTextLayout::getNumLinesInParagraphBounds(v8);
      if (TXTextLayout::shouldScaleToBothMargins(v8) && ((v58 & (*(*v8 + 1144))(v8) & 1) != 0 || ((*(*v8 + 1144))(v8) & 1) == 0))
      {
        (*(*v8 + 1152))(v8, v33);
      }

      TXTextLayout::doMotionLayout(v8, v33);
      v66 = (*(*v102 + 272))(v102);
      __asm { FMOV            V0.2D, #-1.0 }

      v101 = _Q0;
      if (!v66)
      {
        goto LABEL_133;
      }

      v68 = *(v8 + 1208);
      if (v68 == v25)
      {
LABEL_131:
        OZChannel::getValueAsDouble((v8 + 59560), MEMORY[0x277CC08F0], 0.0);
        v33 = v103;
        if (v72 != 0.0)
        {
          OZChannel::setValue((v8 + 59560), MEMORY[0x277CC08F0], 0.0, 1);
          *(v8 + 59712) = 0;
          TXTextLayout::doMotionLayout(v8, v103);
        }

LABEL_133:
        TXTextLayout::updateLineBreaks(v8);
        TXTextLayout::performLayoutWithPath(v8, v33);
        *(v8 + 19392) = 0;
        *(v8 + 19321) = 0;
        *(v8 + 59024) = v101;
        *(v8 + 59088) = xmmword_2603429E0;
        *(v8 + 59072) = xmmword_2603429E0;
        *(v8 + 59056) = xmmword_2603429E0;
        if (v114)
        {
          OZRenderParams::OZRenderParams(&time1);
          OZRenderParams::setState(&time1, v33);
          v73 = *(v8 + 19024);
          v74 = *(v8 + 19032);
          while (v73 != v74)
          {
            TXParagraphStyle::calcHashForStateAndSetDirty(*v73++);
          }

          OZRenderParams::~OZRenderParams(&time1);
        }

        v75 = *v104;
        if (v75 != -1)
        {
          (*(*v8 + 832))(v8, v75, *(v8 + 18988), 0.0);
          *v104 = -1;
        }

        for (n = *(v8 + 1208); n != v25; n = *(n + 8))
        {
          v77 = *(n + 16);
          if (v77)
          {
            if (v78)
            {
              v78[584] = 1;
            }
          }
        }

        goto LABEL_145;
      }

      while (1)
      {
        v69 = *(v68 + 16);
        if (v69)
        {
          if (v70)
          {
            v71 = v70;
            if ((*(v70[2] + 24))())
            {
              if ((*(*v71 + 760))(v71))
              {
                break;
              }
            }
          }
        }

        v68 = *(v68 + 8);
        if (v68 == v25)
        {
          goto LABEL_131;
        }
      }

      ComputeOffsetForPreInceptionProjects = TXTextScrollBehavior::getComputeOffsetForPreInceptionProjects(v71);
      v33 = v103;
      v81 = *(*v71 + 760);
      if (ComputeOffsetForPreInceptionProjects)
      {
        *(v8 + 59712) = v81(v71);
        *&time2[0].value = 0uLL;
        *&time2[0].epoch = v101;
        TXTextLayout::getTypographicBounds(v8, time2, v103, 1, 0);
        v82 = *&time2[1].value;
        v83 = *((*(*v102 + 272))(v102) + 348);
        (*(*v71 + 608))(&time1, v71);
        v110 = v119;
        v84 = (*(*v102 + 272))(v102);
        OZSceneSettings::getFrameDuration((v84 + 336), &v109);
        operator/(&v110.value, &v109, &time);
        v85 = (CMTimeGetSeconds(&time) + -1.0) * *(v71 + 483) - (v82 + v83);
        if (v85 > 0.0)
        {
          v86 = *(v8 + 59712) == 1 ? (*(v8 + 19324) - 1) : (((*(v8 + 19032) - *(v8 + 19024)) >> 3) - 1);
          if (v86 > 0.0)
          {
            OZChannel::setValue((v8 + 59560), MEMORY[0x277CC08F0], v85 / v86, 1);
            TXTextLayout::doMotionLayout(v8, v103);
          }
        }

        goto LABEL_133;
      }

      *(v8 + 59712) = v81(v71);
      v87 = *((*(*(v8 + 200) + 272))() + 348);
      v88 = 1.0;
      if (*(theApp + 81) == 1 && (*(*v102 + 272))(v102))
      {
        v89 = (*(*v102 + 272))(v102);
        HostAppProjectHeight = OZSceneSettings::getHostAppProjectHeight((v89 + 336));
        v88 = HostAppProjectHeight / *((*(*v102 + 272))(v102) + 348);
      }

      TXTextScrollBehavior::getContentBounds(v71, v103, &time1);
      v91 = *&v119.value;
      CurrentConversion = OZMEChannelTimeConverter::GetCurrentConversion(v92);
      v94 = CurrentConversion;
      memset(&v110, 0, sizeof(v110));
      if (CurrentConversion && (time1 = *(CurrentConversion + 76), time2[0] = *v60, CMTimeCompare(&time1, time2)))
      {
        v110 = *(v94 + 76);
      }

      else
      {
        v95 = (*(*v102 + 272))(v102);
        OZSceneSettings::getFrameDuration((v95 + 336), &v110);
        memset(&v109, 0, sizeof(v109));
        if (!v94)
        {
          CMTimeMake(&v109, 1, 1);
          v33 = v103;
          goto LABEL_164;
        }
      }

      v109 = *(v94 + 52);
      v33 = v103;
LABEL_164:
      (*(*v71 + 608))(&time1, v71);
      memset(&v108, 0, sizeof(v108));
      time2[0] = v119;
      operator*(&time2[0].value, &v109, &v108);
      memset(&v107, 0, sizeof(v107));
      OZChannel::getValueAsDouble((v71 + 386), MEMORY[0x277CC08F0], 0.0);
      operator*(&v109, &v107, v96);
      operator*(&v110.value, &v107, &v105);
      time2[0] = v108;
      time = v105;
      PC_CMTimeSaferSubtract(time2, &time, &v106);
      operator/(&v106, &v110, time2);
      v97 = (CMTimeGetSeconds(time2) + -1.0) * *(v71 + 483) - (v88 * v87 + v88 * v91);
      if (v97 > 0.0)
      {
        v98 = *(v8 + 59712) == 1 ? (*(v8 + 19324) - 1) : (((*(v8 + 19032) - *(v8 + 19024)) >> 3) - 1);
        if (v98 > 0.0)
        {
          OZChannel::setValue((v8 + 59560), MEMORY[0x277CC08F0], v97 / v98 / v88, 1);
          TXTextLayout::doMotionLayout(v8, v33);
        }
      }

      goto LABEL_133;
    }

    TXTextLayout::doLayoutForEmptyString(v8);
  }

LABEL_146:
  OZLockingGroup::WriteSentry::~WriteSentry(v116);
  return 0;
}