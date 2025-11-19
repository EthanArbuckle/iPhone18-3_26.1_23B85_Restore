void sub_25FADE62C(_Unwind_Exception *a1)
{
  PCHashWriteStream::~PCHashWriteStream(&STACK[0x1708]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&STACK[0x668], STACK[0x670]);
  OZLockingGroup::WriteSentry::~WriteSentry(&STACK[0x698]);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getHardLine(TXTextLayout *this, unint64_t a2)
{
  v2 = *(this + 2378);
  v3 = *(this + 2379);
  if (v2 == v3)
  {
    return ((v3 - v2) >> 3) - 1;
  }

  result = 0;
  v5 = v2;
  while (1)
  {
    v6 = *(*v5 + 856);
    if (v6 <= a2 && *(*v5 + 864) + v6 > a2)
    {
      break;
    }

    v5 += 8;
    result = (result + 1);
    if (v5 == v3)
    {
      return ((v3 - v2) >> 3) - 1;
    }
  }

  return result;
}

uint64_t TXTextLayout::getParagraphStyleAtIndex(TXTextLayout *this, unsigned int a2)
{
  v2 = *(this + 2378);
  if (a2 >= ((*(this + 2379) - v2) >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 8 * a2);
}

uint64_t *TXTextLayout::getComposedCharacter(TXTextLayout *this, unsigned int a2)
{
  v14 = a2;
  v2 = this + 64304;
  for (i = *(this + 8038); i; i = *i)
  {
    v4 = *(i + 8);
    if (v4 <= a2)
    {
      if (v4 >= a2)
      {
        v15 = &v14;
        v12 = std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 64296, &v14);
        return v12 + 5;
      }

      ++i;
    }
  }

  v5 = *(this + 8037);
  if (v5 != v2)
  {
    while (1)
    {
      v6 = *(v5 + 6);
      if (v6 <= a2 && *(v5 + 7) + v6 > a2)
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
        goto LABEL_21;
      }
    }
  }

  if (v5 == v2)
  {
LABEL_21:
    v13 = 0;
    v15 = &v13;
    v12 = std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 64296, &v13);
    return v12 + 5;
  }

  return (v5 + 40);
}

void TXTextLayout::addStyle(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = v4;
      v7 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a1 + 280))(a1, &v6, 0);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void sub_25FADE9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FADEA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NextAvailableMaterialSequenceID(TXSequenceChannels *a1)
{
  v5 = &v5;
  v6 = &v5;
  v7 = 0;
  v1 = *(a1 + 1);
  if ((*(a1 + 2) - v1) >= 0x29)
  {
    operator new();
  }

  std::list<unsigned int>::__sort<std::__less<void,void>>(&v5, &v5, 0, &v8);
  v2 = v6;
  for (i = 2000; v2 != &v5; v2 = v2[1])
  {
    if (i == *(v2 + 4))
    {
      i = (i + 200);
    }

    else
    {
      i = i;
    }
  }

  std::__list_imp<unsigned int>::clear(&v5);
  return i;
}

uint64_t OZMaterialBase::setSequenceID(OZMaterialBase *this, unsigned int a2)
{
  OZChannel::setValue((this + 720), MEMORY[0x277CC08F0], a2, 0);
  OZChannelBase::finishInitializing((this + 720));

  return OZChannel::setDefaultToCurrentValue((this + 720));
}

void *RemoveAllMaterialsFromSequenceBehaviors(void *result)
{
  v1 = result + 150;
  v2 = result[151];
  if (v2 != result + 150)
  {
    do
    {
      result = v2[2];
      if (result)
      {
        if (result)
        {
          result = RemoveAllMaterialsFromSequenceChannels((result + 102));
        }
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }

  return result;
}

void *AddAllMaterialsToSequenceBehaviors(void *result, char *a2)
{
  v2 = result + 150;
  v3 = result[151];
  if (v3 != result + 150)
  {
    do
    {
      result = v3[2];
      if (result)
      {
        if (result)
        {
          result = AddAllMaterialsToSequenceChannels(a2, (result + 102));
        }
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  return result;
}

OZScene *ReplaceAllMaterialsInStyles(OZScene *result, uint64_t a2)
{
  v2 = result + 19344;
  v3 = *(result + 2419);
  if (v3 != (result + 19344))
  {
    do
    {
      while (1)
      {
        result = *(v3 + 16);
        v5 = *(result + 60);
        if (*(result + 61) == v5)
        {
          break;
        }

        OZStyle::unregisterMaterial(result, *v5);
        OZStyle::removeMaterialAtIndex(*(v3 + 16), 0);
      }

      v6 = *a2;
      v7 = *(a2 + 8);
      while (v6 != v7)
      {
        v8 = (*(**(*v6 + 8) + 24))(*(*v6 + 8), *v6, 2);
        if (v8)
        {
        }

        else
        {
          v9 = 0;
        }

        OZStyle::addMaterial(*(v3 + 16), v9);
        result = OZStyle::registerMaterial(*(v3 + 16), v9);
        ++v6;
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return result;
}

void TXTextLayout::setStyle(unsigned int *a1, TXTextStyle **a2, _BYTE *a3)
{
  if (*(a1 + 2420))
  {
    v6 = *(a1 + 2419);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    isEnabled = (*(*a1 + 296))(a1);
    v10 = *a2;
    if (*(*a2 + 12238) != 1)
    {
      isEnabled = OZChannelBase::isEnabled((v10 + 40520), 1, 1);
      v10 = *a2;
    }

    v11 = StyleWillReplaceMaterial(v10, v8);
    if (isEnabled != (*(*a1 + 296))(a1))
    {
      TXTextLayout::didToggleIs3D(a1, isEnabled);
    }

    v12 = *(*a2 + 60);
    if (*(*a2 + 61) == v12)
    {
      TXTextStyle::addDefaultMaterial(*a2);
      v12 = *(*a2 + 60);
    }

    if (!OZChannel::getValueAsInt((*v12 + 720), MEMORY[0x277CC08F0], 0.0))
    {
      v13 = **(*a2 + 60);
      AvailableMaterialSequenceID = NextAvailableMaterialSequenceID((a1 + 6258));
      OZMaterialBase::setSequenceID(v13, AvailableMaterialSequenceID);
    }

    if (a3)
    {
      *a3 = v11;
    }

    v15 = a1[4814];
    v16 = a1[4815];
    if (v15 == v16)
    {
      if (v11)
      {
        RemoveAllMaterialsFromSequenceBehaviors(a1);
        RemoveAllMaterialsFromSequenceChannels((a1 + 6258));
        ReplaceAllMaterialsInStyles(a1, *a2 + 480);
      }

      if (*(*a2 + 49857))
      {
        TXTextLayout::getCurrentStyleForInsertion(a1, &v29);
        TXTextStyle::copyStyle(v29, *a2);
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }
      }

      else
      {
        for (i = *(a1 + 2419); i != a1 + 4836; i = *(i + 8))
        {
          TXTextStyle::copyStyle(*(i + 16), *a2);
        }
      }

      if (v11)
      {
        AddAllMaterialsToSequenceChannels(a2, (a1 + 6258));
        AddAllMaterialsToSequenceBehaviors(a1, a2);
      }
    }

    else
    {
      v17 = v16 - v15;
      v19 = v15 - v16;
      v18 = v15 > v16;
      if (v15 >= v16)
      {
        v15 = a1[4815];
      }

      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = v17;
      }

      v32[0] = v15;
      v32[1] = v20;
      if (*(*a2 + 12238) != 0xFFFF)
      {
        TXTextLayout::splitStyleRunsInRange(a1, v32);
      }

      if (v11)
      {
        RemoveAllMaterialsFromSequenceBehaviors(a1);
        RemoveAllMaterialsFromSequenceChannels((a1 + 6258));
        ReplaceAllMaterialsInStyles(a1, *a2 + 480);
      }

      v29 = &v29;
      v30 = &v29;
      v31 = 0;
      v21 = a1[4814];
      v22 = a1[4815];
      v23 = v22 - v21;
      v25 = v21 - v22;
      v24 = v21 > v22;
      if (v21 >= v22)
      {
        v21 = a1[4815];
      }

      if (v24)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      v33[0] = v21;
      v33[1] = v26;
      TXTextLayout::getStylesInRange(a1, &v29, v33);
      for (j = v30; j != &v29; j = j->__shared_owners_)
      {
        TXTextStyle::copyStyle(j->__shared_weak_owners_, *a2);
      }

      if (v11)
      {
        AddAllMaterialsToSequenceChannels(a2, (a1 + 6258));
        AddAllMaterialsToSequenceBehaviors(a1, a2);
      }

      std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(&v29);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_25FADF2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::didToggleIs3D(TXTextLayout *this, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = this + 19344;
  v4 = *(this + 2419);
  if (v4 != this + 19344)
  {
    do
    {
      (*(*(*(v4 + 2) + 40520) + 104))(*(v4 + 2) + 40520, a2, 0);
      v5 = *(v4 + 2);
      if (a2)
      {
        OZChannelFolder::setFoldFlag((v5 + 31080), 4);
        OZChannelFolder::setFoldFlag((*(v4 + 2) + 13848), 4);
        v6 = MEMORY[0x277CC08F0];
        (*(*(*(v4 + 2) + 31208) + 712))(*(v4 + 2) + 31208, MEMORY[0x277CC08F0], 0, 0.0);
        (*(*(*(v4 + 2) + 13976) + 712))(*(v4 + 2) + 13976, v6, 0, 0.0);
        (*(*(*(v4 + 2) + 31208) + 104))(*(v4 + 2) + 31208, 0, 0);
        (*(*(*(v4 + 2) + 13976) + 104))(*(v4 + 2) + 13976, 0, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 31208), 0x400000, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 36168), 0x400000, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 37568), 0x400000, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 13976), 0x400000, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 19528), 0x400000, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 18784), 0x400000, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 19680), 0x400000, 0);
        OZChannelBase::setFlag((*(v4 + 2) + 5960), 2, 1);
        OZChannelBase::setFlag((*(v4 + 2) + 22632), 2, 1);
      }

      else
      {
        (*(*(v5 + 31208) + 104))(v5 + 31208, 1, 0);
        (*(*(*(v4 + 2) + 13976) + 104))(*(v4 + 2) + 13976, 1, 0);
        OZChannelFolder::resetFoldFlag((*(v4 + 2) + 31080), 4);
        OZChannelFolder::resetFoldFlag((*(v4 + 2) + 13848), 4);
        OZChannelBase::resetFlag((*(v4 + 2) + 31208), 0x400000, 0);
        OZChannelBase::resetFlag((*(v4 + 2) + 36168), 0x400000, 0);
        OZChannelBase::resetFlag((*(v4 + 2) + 37568), 0x400000, 0);
        OZChannelBase::resetFlag((*(v4 + 2) + 13976), 0x400000, 0);
        OZChannelBase::resetFlag((*(v4 + 2) + 19528), 0x400000, 0);
        OZChannelBase::resetFlag((*(v4 + 2) + 18784), 0x400000, 0);
        OZChannelBase::resetFlag((*(v4 + 2) + 19680), 0x400000, 0);
        OZChannelBase::resetFlag((*(v4 + 2) + 5960), 2, 1);
        OZChannelBase::resetFlag((*(v4 + 2) + 22632), 2, 1);
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  if (a2)
  {
    OZChannelBase::setFlag((this + 9120), 0x400000, 0);
    OZChannelBase::setFlag((this + 8968), 0x400000, 0);
  }

  else
  {
    OZChannelBase::resetFlag((this + 9120), 0x400000, 0);
    OZChannelBase::resetFlag((this + 8968), 0x400000, 0);
  }

  snprintf(__str, 0x40uLL, "%d", a2);
  return OZChannelBase::setRangeName("3D Text Toggle", "3D Text");
}

uint64_t TXTextLayout::getCurrentStyleForInsertion@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 19256);
  v3 = *(this + 19260);
  if (v2 != v3)
  {
    v4 = v3 - v2;
    v6 = v2 - v3;
    v5 = v2 > v3;
    if (v2 < v3)
    {
      v3 = *(this + 19256);
    }

    if (v5)
    {
      v4 = v6;
    }

    for (i = *(this + 19376); i != this + 19368; i = *(i + 8))
    {
      v8 = *(i + 16);
      if (*(v8 + 24) == v3 && *(v8 + 28) == v4)
      {
        v9 = *(v8 + 16);
        *a2 = *(v8 + 8);
        a2[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        return this;
      }
    }
  }

  return (*(*this + 288))();
}

uint64_t TXTextLayout::splitStyleRunsInRange(Li3DEngineScene *a1, unsigned int *a2)
{
  v4 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v21, v4);
  v5 = *(a1 + 2422);
  if (v5 != (a1 + 19368))
  {
    while (1)
    {
      v6 = v5[2];
      v7 = *(v6 + 16);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 24);
      v8 = *(v6 + 28);
      v10 = *a2;
      v11 = a2[1] + *a2;
      v12 = v8 + v9;
      if ((v8 + v9 - 1) >= *a2 && v9 <= (v11 - 1))
      {
        break;
      }

      v5 = v5[1];
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v5 == (a1 + 19368))
      {
        goto LABEL_31;
      }
    }

    v14 = v10;
    v15 = v11;
    v20 = 0;
    if (v10 <= v9)
    {
      v14 = v9;
    }

    if (v15 >= v12)
    {
      v15 = v12;
    }

    if (v14 <= v15)
    {
      LODWORD(v20) = v14;
      HIDWORD(v20) = v15 - v14;
    }

    PCSharedCount::PCSharedCount(&v19);
    TXTextLayout::getString(a1, &v19);
    if (v20 != v9 || HIDWORD(v20) != v8)
    {
      v17 = v20 - v9;
      if (v20 > v9)
      {
        if (HIDWORD(v20) + v20 < v12)
        {
          *(v6 + 24) = v9;
          *(v6 + 28) = v17;
          std::allocate_shared[abi:ne200100]<TXTextStyle,std::allocator<TXTextStyle>,TXTextStyle&,0>();
        }

        if (v12 == HIDWORD(v20) + v20)
        {
          *(v6 + 24) = v9;
          *(v6 + 28) = v17;
          std::allocate_shared[abi:ne200100]<TXTextStyle,std::allocator<TXTextStyle>,TXTextStyle&,0>();
        }
      }

      std::allocate_shared[abi:ne200100]<TXTextStyle,std::allocator<TXTextStyle>,TXTextStyle&,0>();
    }

    v5 = v5[1];
    PCString::~PCString(&v19);
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_10;
  }

LABEL_31:
  TXTextLayout::updateStyleNames(a1);
  OZLockingGroup::WriteSentry::~WriteSentry(v21);
  return 0;
}

void sub_25FADFC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, PCString a15, uint64_t a16, char a17)
{
  MEMORY[0x2666E9F00](v18, 0x10A1C40CEA811D0);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  PCString::~PCString(&a15);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(&a17);
  _Unwind_Resume(a1);
}

void TXTextLayout::removeStyle(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    if (v4)
    {
      v5 = *(a2 + 8);
      v16 = v4;
      v17 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      for (i = *(a1 + 1208); i != a1 + 1200; i = *(i + 8))
      {
        v7 = *(i + 16);
        if (v7)
        {
          if (v8)
          {
            v9 = v8;
            if (OZSingleChannelBehavior::getChanBase(v8))
            {
              ChanBase = OZSingleChannelBehavior::getChanBase(v9);
              v11 = (*(**a2 + 112))();
              OZChannelBase::isDescendantOf(ChanBase, v11);
              if (*a2)
              {
                v12 = *a2 + 16;
              }

              else
              {
                v12 = 0;
              }

              (*(*v9 + 152))(v9, v12);
            }
          }
        }
      }

      std::list<std::shared_ptr<TXTextStyle>>::remove(a1 + 19344, &v16);
      v14 = v16;
      v15 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OZSceneNode::removeStyle(a1 + 200, &v14);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v13 = v16;
      *(v16 + 6118) = 0;
      OZStyle::setSceneNode(v13, 0);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }
  }
}

void sub_25FADFF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::list<std::shared_ptr<TXTextStyle>>::remove(uint64_t a1, void *a2)
{
  v9[0] = v9;
  v9[1] = v9;
  v9[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<std::shared_ptr<TXTextStyle>>::splice(v9, v9, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(v9);
}

void sub_25FAE0038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getStyleAtInsertionPoint@<X0>(TXTextLayout *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  result = TXTextLayout::getStyleRunAtInsertionPoint(this, a2);
  if (result)
  {
    v5 = *(result + 16);
    *a3 = *(result + 8);
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t TXTextLayout::getStyleRunAtInsertionPoint(TXTextLayout *this, unsigned int a2)
{
  v2 = *(this + 2422);
  if (v2 == (this + 19368))
  {
    v5 = *(TXTextStyleManager::getInstance(this) + 16);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    std::allocate_shared[abi:ne200100]<TXTextStyle,std::allocator<TXTextStyle>,TXTextStyle&,0>();
  }

  do
  {
    v3 = v2[2];
    v4 = *(v3 + 24);
    if (v4 <= a2 && *(v3 + 28) + v4 >= a2)
    {
      break;
    }

    v2 = v2[1];
  }

  while (v2 != (this + 19368));
  return v3;
}

void sub_25FAE01BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  MEMORY[0x2666E9F00](v12, 0x10A1C40CEA811D0);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getStyleAtCharOffset@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = *(this + 19376);
  if (v3 == this + 19368)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    do
    {
      v4 = *(v3 + 16);
      v5 = *(v4 + 24);
      if (v5 <= a2 && *(v4 + 28) + v5 > a2)
      {
        break;
      }

      v3 = *(v3 + 8);
    }

    while (v3 != this + 19368);
    v6 = *(v4 + 16);
    *a3 = *(v4 + 8);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

uint64_t TXTextLayout::getStyleRunAtCharOffset(TXTextLayout *this, unsigned int a2)
{
  v2 = this + 19368;
  v3 = *(this + 2422);
  if (v3 == this + 19368)
  {
    return 0;
  }

  do
  {
    result = *(v3 + 2);
    v5 = *(result + 24);
    if (v5 <= a2 && *(result + 28) + v5 > a2)
    {
      break;
    }

    v3 = *(v3 + 1);
  }

  while (v3 != v2);
  return result;
}

uint64_t TXTextLayout::getGlyphSelectedStyles(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (((*(result + 19280) - *(result + 19272)) & 0x3FFFFFFFCLL) != 0)
  {
    CharOffsetAt = TXDiscontinuousSelection::getCharOffsetAt((result + 19272), 0);
    TXTextLayout::getStyleAtCharOffset(v2, CharOffsetAt, &v7);
    std::list<std::shared_ptr<TXTextStyle>>::push_back();
  }

  if (!*(a2 + 16))
  {
    v4 = *(result + 19256);
    v5 = (*(*result + 216))(result);
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    (*(*v2 + 288))(&v7, v2, v6);
    std::list<std::shared_ptr<TXTextStyle>>::push_back();
  }

  return result;
}

void sub_25FAE03F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *TXTextLayout::getStylesInRange(void *result, uint64_t a2, _DWORD *a3)
{
  if (!a3[1])
  {
    (*(*result + 288))(&v8);
    std::list<std::shared_ptr<TXTextStyle>>::push_back();
  }

  for (i = result[2422]; i != result + 2421; i = i[1])
  {
    v4 = i[2];
    v5 = *(v4 + 24);
    if (v5 <= *a3 + a3[1] - 1 && v5 + *(v4 + 28) - 1 >= *a3)
    {
      v7 = *(v4 + 16);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }
  }

  return result;
}

void sub_25FAE0540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::updateStyleRun(TXTextLayout *this, TXTextStyleRun *a2)
{
  v3 = this + 57344;
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v9, v4);
  v5 = *(v3 + 185);
  v6 = *(v3 + 186);
  while (v5 != v6)
  {
    v7 = *(*v5 + 736);
    v8 = *(a2 + 6);
    if (v8 <= v7 && *(a2 + 7) + v8 > v7)
    {
      TXTextObject::setStyleRun(*v5, a2);
    }

    v5 += 2;
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v9);
}

void sub_25FAE05F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void *std::list<TXTextStyleRun *>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<std::shared_ptr<TXTextStyle>>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<unsigned int>::clear(v10);
}

void sub_25FAE06C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::isAnyParagraphDirty(TXTextLayout *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::ReadSentry::ReadSentry(v9, v2);
  v3 = *(this + 2378);
  v4 = *(this + 2379);
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = v3 + 8;
    do
    {
      v6 = *(*(v5 - 8) + 872);
      if (v6)
      {
        break;
      }

      v7 = v5 == v4;
      v5 += 8;
    }

    while (!v7);
  }

  OZLockingGroup::ReadSentry::~ReadSentry(v9);
  return v6;
}

void TXTextLayout::updateParagraphStylesAfterTextDelete(uint64_t **this, unsigned int a2, unsigned int a3)
{
  v6 = a2;
  HardLine = TXTextLayout::getHardLine(this, a2);
  v8 = a3 + a2;
  v9 = TXTextLayout::getHardLine(this, v8);
  v10 = this[2378];
  v11 = this[2379];
  if (v10 != v11)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if (HardLine == v12)
      {
        v13 = *v10;
      }

      if (v9 == v12)
      {
        break;
      }

      ++v12;
      if (++v10 == v11)
      {
        return;
      }
    }

    if (v13)
    {
      v14 = *v10;
      if (v14)
      {
        v28 = v6 - *(v13 + 856);
        v15 = *(v14 + 856) - v8 + *(v14 + 864);
        v16 = v9 - HardLine;
        if (v9 != HardLine && HardLine + 1 < (v9 + 1))
        {
          v17 = (HardLine + 1);
          do
          {
            v18 = &this[2378][v17];
            v19 = *v18;
            v20 = this[2379];
            v21 = v20 - (v18 + 1);
            if (v20 != (v18 + 1))
            {
              memmove(&this[2378][v17], v18 + 1, v20 - (v18 + 1));
            }

            this[2379] = (v18 + v21);
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            --v16;
          }

          while (v16);
        }

        TXParagraphStyle::setLength(v13, v15 + v28);
        TXParagraphStyle::dirty(v13, 1);
        if (!(v15 + v28))
        {
          *&v29 = *(v13 + 1032);
          TXParagraphStyle::setGlyphRange(v13, &v29);
        }

        v22 = this[2378];
        v23 = this[2379];
        if (v22 != v23)
        {
          v24 = a3;
          v25 = -a3;
          do
          {
            v26 = *v22;
            v27 = *(*v22 + 856);
            if (v27 > v6)
            {
              TXParagraphStyle::setStart(*v22, v27 - v24);
              TXParagraphStyle::shiftLineBreaksBy(v26, v25);
              TXParagraphStyle::shiftDirectionalRunsBy(v26, v25);
              TXParagraphStyle::shiftCaretInsertionIndices(v26, v25);
            }

            ++v22;
          }

          while (v22 != v23);
        }
      }
    }
  }
}

void TXTextLayout::updateParagraphStylesAfterTextInsert(TXTextLayout *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 2378);
  v4 = *(this + 2379);
  if (v3 != v4)
  {
    v7 = 0;
    v8 = v4 - v3 - 1;
    v9 = (v3 + 1);
    while (1)
    {
      v10 = *v3;
      if (v8 <= v7 || !*v9 || (*v9)[107] != a2)
      {
        v11 = *(v10 + 107);
        if (v11 <= a2)
        {
          v12 = *(v10 + 108);
          if (v12 + v11 >= a2)
          {
            break;
          }
        }
      }

      ++v3;
      ++v7;
      ++v9;
      if (v3 == v4)
      {
        v12 = *(v10 + 108);
        break;
      }
    }

    TXParagraphStyle::setLength(v10, v12 + a3);
    TXParagraphStyle::dirty(v10, 1);
    v13 = v3 + 1;
    if (v13 != v4)
    {
      v14 = v7 + 1;
      do
      {
        if (v14 >= ((*(this + 2379) - *(this + 2378)) >> 3))
        {
          break;
        }

        v15 = *v13++;
        TXParagraphStyle::setStart(v15, *(v15 + 107) + a3);
        TXParagraphStyle::shiftLineBreaksBy(v15, a3);
        TXParagraphStyle::shiftDirectionalRunsBy(v15, a3);
        TXParagraphStyle::shiftCaretInsertionIndices(v15, a3);
        ++v14;
      }

      while (v13 != v4);
    }
  }
}

void TXTextLayout::updateParagraphStylesAfterNewLineInsert(TXTextLayout *this, unsigned int a2)
{
  v2 = *(this + 2378);
  v3 = *(this + 2379);
  if (v2 != v3)
  {
    do
    {
      v4 = *(*v2 + 856);
      if (v4 <= a2 && *(*v2 + 864) + v4 > a2)
      {
        break;
      }

      v2 += 8;
    }

    while (v2 != v3);
    operator new();
  }

  std::vector<TXParagraphStyle *>::resize(this + 2378, 0);
  operator new();
}

char *std::vector<TXParagraphStyle *>::insert(void *a1, char *__src, char *a3)
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

void sub_25FAE0E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::updateStyleRunsAfterTextInsert(uint64_t this, unsigned int a2, int a3)
{
  v3 = this + 19368;
  for (i = *(this + 19376); ; i = *(i + 8))
  {
    if (i == v3)
    {
      goto LABEL_11;
    }

    v5 = *(i + 16);
    v7 = *(v5 + 24);
    v6 = *(v5 + 28);
    if (v7 <= a2 && v6 + v7 >= a2)
    {
      break;
    }
  }

  *(v5 + 28) = v6 + a3;
  while (1)
  {
    i = *(i + 8);
LABEL_11:
    if (i == v3)
    {
      break;
    }

    *(*(i + 16) + 24) += a3;
  }

  return this;
}

void TXTextLayout::updateStyleRunsAfterTextDelete(TXTextLayout *this, int a2, int a3)
{
  v3 = this + 19368;
  v4 = *(this + 2422);
  if (v4 != this + 19368)
  {
    v7 = a3 + a2 - 1;
    v8 = a2;
    v9 = (a3 + a2);
    v10 = *(this + 2422);
    while (1)
    {
      v11 = *(v10 + 2);
      v13 = *(v11 + 24);
      v12 = *(v11 + 28);
      if (v13 <= v7 && (v12 + v13 - 1) >= a2)
      {
        v15 = v13;
        v16 = (v12 + v13);
        if (v8 > v13)
        {
          v15 = v8;
        }

        if (v9 < v16)
        {
          v16 = v9;
        }

        if (v15 <= v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0;
        }

        if (v15 <= v16)
        {
          v18 = v16 - v15;
        }

        else
        {
          v18 = 0;
        }

        if (v17 == v13 && v12 == v18)
        {
          if (v10 != v4)
          {
            v21 = *(v10 + 1);
            v23 = *(v11 + 8);
            v22 = *(v11 + 16);
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v29 = v23;
            v30 = v22;
            (*(*this + 272))(this, &v29);
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            (*(*v11 + 8))(v11);
            v25 = *v10;
            v24 = *(v10 + 1);
            *(v25 + 8) = v24;
            *v24 = v25;
            --*(this + 2423);
            operator delete(v10);
            v10 = v21;
            goto LABEL_31;
          }

          v20 = 0;
        }

        else
        {
          v20 = v12 - v18;
        }

        *(v11 + 28) = v20;
      }

      v10 = *(v10 + 1);
LABEL_31:
      if (v10 == v3)
      {
        v4 = *(this + 2422);
        break;
      }
    }
  }

  if (v4 != v3)
  {
    v26 = 0;
    do
    {
      v27 = *(v4 + 2);
      v28 = *(v27 + 28);
      *(v27 + 24) = v26;
      v26 += v28;
      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }
}

void sub_25FAE107C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayout::setKerningAtCharOffset(uint64_t **this, double a2, uint64_t a3)
{
  v15[0] = a3;
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(&v14, v6);
  if (a3 < 0)
  {
    goto LABEL_18;
  }

  if (fabs(a2) >= 0.0000001)
  {
    v15[2] = v15;
    *(std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>((this + 2403), v15) + 5) = a2;
LABEL_11:
    v9 = this[2378];
    v10 = this[2379];
    if (v9 == v10)
    {
LABEL_15:
      v11 = *(v10 - 1);
      if (!v11)
      {
LABEL_17:
        ((*this)[68])(this, v13);
        goto LABEL_18;
      }
    }

    else
    {
      while (1)
      {
        v11 = *v9;
        v12 = *(*v9 + 856);
        if (v12 <= v15[0] && *(v11 + 108) + v12 > v15[0])
        {
          break;
        }

        if (++v9 == v10)
        {
          goto LABEL_15;
        }
      }
    }

    v13.n128_f64[0] = TXParagraphStyle::dirty(v11, 1);
    goto LABEL_17;
  }

  for (i = this[2404]; i; i = *i)
  {
    v8 = i[4];
    if (v8 <= a3)
    {
      if (v8 >= a3)
      {
        std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__erase_unique<long>(this + 2403, v15);
        goto LABEL_11;
      }

      ++i;
    }
  }

LABEL_18:
  OZLockingGroup::WriteSentry::~WriteSentry(&v14);
}

uint64_t TXTextLayout::getOutlineOrder(TXTextLayout *this, TXTextObject *a2)
{
  v3 = *(a2 + 33);
  if (v3)
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (OZChannelBase::isEnabled((this + 35456), 0, 1))
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 35456), MEMORY[0x277CC08F0], 0.0);
  }

  else
  {
    v9 = **&MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((v5 + 27720), &v9, 0.0);
  }

  v7 = ValueAsInt;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v7;
}

void sub_25FAE12C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::getGlowOrder(TXTextLayout *this, TXTextObject *a2)
{
  v3 = *(a2 + 33);
  if (v3)
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (OZChannelBase::isEnabled((this + 41840), 0, 1))
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 41840), MEMORY[0x277CC08F0], 0.0);
  }

  else
  {
    v9 = **&MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((v5 + 37312), &v9, 0.0);
  }

  v7 = ValueAsInt;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v7;
}

void sub_25FAE13A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double TXTextLayout::cacheMargins(TXTextLayout *this, int a2)
{
  switch(a2)
  {
    case 1:
      v3 = 52288;
      v4 = 52280;
      v5 = 52272;
      v6 = 52264;
      break;
    case 4:
      v3 = 52352;
      v4 = 52344;
      v5 = 52336;
      v6 = 52328;
      break;
    case 3:
      v3 = 52320;
      v4 = 52312;
      v5 = 52304;
      v6 = 52296;
      break;
    default:
      return result;
  }

  v7 = MEMORY[0x277CC08F0];
  *(this + v6) = OZChannel::getValueAsInt((this + 24272), MEMORY[0x277CC08F0], 0.0);
  *(this + v5) = OZChannel::getValueAsInt((this + 24424), v7, 0.0);
  *(this + v4) = OZChannel::getValueAsInt((this + 24576), v7, 0.0);
  result = OZChannel::getValueAsInt((this + 24728), v7, 0.0);
  *(this + v3) = result;
  return result;
}

CGColorSpace **TXTextLayout::initializeScrollMargins(TXTextLayout *this)
{
  v2 = (this + 200);
  v3 = (*(*(this + 25) + 272))(this + 200);
  v4 = OZSceneSettings::OZSceneSettings(&v33, (v3 + 336));
  v5 = v34;
  v6 = v35;
  v7 = OZPreferenceManager::Instance(v4);
  SafeZonesTitlePercentage = OZPreferenceManager::getSafeZonesTitlePercentage(v7);
  v10 = v9;
  v11 = v35;
  v12 = OZPreferenceManager::Instance(SafeZonesTitlePercentage);
  OZPreferenceManager::getSafeZonesTitlePercentage(v12);
  v14 = v13;
  v15 = (*(*v2 + 272))(v2);
  v16 = (*(*v15 + 96))(v15);
  v31 = 0.0;
  v32 = 0.0;
  memset(&v30, 0, sizeof(v30));
  v17 = (*(*v2 + 272))(v2);
  OZScene::getCurrentTime(v17, &v30);
  OZTransformNode::getTranslation(v2, &v32, &v31, &v30);
  v32 = v16 * v32;
  v28 = 0.0;
  v29 = 0.0;
  v27 = 0;
  OZTransformNode::getPivot(v2, &v29, &v28, &v27, &v30);
  if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
  {
    v18 = v5;
    v19 = (v14 * v11);
  }

  else
  {
    v19 = v6;
    v18 = (v10 * v5);
  }

  v20 = v16 * v18;
  v21 = v31;
  v22 = v28;
  v23 = v20 * -0.5 - v32 + v29;
  v24 = v20 * 0.5 - v32 + v29;
  v25 = v19 * -0.5 - v31 + v28;
  OZChannel::setMax((this + 24272), 1.79769313e308);
  OZChannel::setMin((this + 24272), -1.79769313e308);
  OZChannel::setMax((this + 24424), 1.79769313e308);
  OZChannel::setMin((this + 24424), -1.79769313e308);
  OZChannel::setMax((this + 24728), 1.79769313e308);
  OZChannel::setMin((this + 24728), -1.79769313e308);
  OZChannel::setMax((this + 24576), 1.79769313e308);
  OZChannel::setMin((this + 24576), -1.79769313e308);
  OZChannel::setValue((this + 24272), MEMORY[0x277CC08F0], v23, 0);
  OZChannel::setValue((this + 24424), MEMORY[0x277CC08F0], v24, 0);
  OZChannel::setValue((this + 24728), MEMORY[0x277CC08F0], v25, 0);
  OZChannel::setValue((this + 24576), MEMORY[0x277CC08F0], v19 * 0.5 - v21 + v22, 0);
  *(this + 52257) = 1;
  v33 = &unk_287283398;
  PCString::~PCString(&v37);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v36);
}

void sub_25FAE17EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  OZSceneSettings::~OZSceneSettings(va);
  _Unwind_Resume(a1);
}

CGColorSpace **TXTextLayout::initializeTickerMargins(TXTextLayout *this)
{
  v2 = (this + 200);
  v3 = (*(*(this + 25) + 272))(this + 200);
  v4 = OZSceneSettings::OZSceneSettings(&v35, (v3 + 336));
  v6 = v36;
  v5 = v37;
  v7 = OZPreferenceManager::Instance(v4);
  SafeZonesTitlePercentage = OZPreferenceManager::getSafeZonesTitlePercentage(v7);
  v10 = v9;
  v11 = v36;
  v12 = OZPreferenceManager::Instance(SafeZonesTitlePercentage);
  OZPreferenceManager::getSafeZonesTitlePercentage(v12);
  v14 = v13;
  v15 = (*(*v2 + 272))(v2);
  v16 = (*(*v15 + 96))(v15);
  v33 = 0.0;
  v34 = 0.0;
  memset(&v32, 0, sizeof(v32));
  v17 = (*(*v2 + 272))(v2);
  OZScene::getCurrentTime(v17, &v32);
  OZTransformNode::getTranslation(v2, &v34, &v33, &v32);
  v34 = v16 * v34;
  v30 = 0.0;
  v31 = 0.0;
  v29 = 0;
  OZTransformNode::getPivot(v2, &v31, &v30, &v29, &v32);
  v18 = *(this + 2378);
  v19 = 0.0;
  while (v18 != *(this + 2379))
  {
    v20 = *(*v18 + 876);
    if (v20)
    {
      v21 = (*(*v18 + 888) + 8);
      do
      {
        if (*(v21 - 1) - *v21 > v19)
        {
          v19 = *(v21 - 1) - *v21;
        }

        v21 += 8;
        --v20;
      }

      while (v20);
    }

    v18 += 8;
  }

  if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
  {
    v22 = v16 * (v14 * v11);
    v23 = v5 * 0.5 - v33 + v30;
    v24 = v5 * -0.5 - v33 + v30;
    v25 = v22 * 0.5 - v34 + v31;
    v26 = v25 - v19;
  }

  else
  {
    v27 = v16 * v6;
    v26 = v27 * -0.5 - v34 + v31;
    v25 = v27 * 0.5 - v34 + v31;
    v24 = (v10 * v5) * -0.5 - v33 + v30;
    v23 = v19 + v24;
  }

  OZChannel::setMax((this + 24272), 1.79769313e308);
  OZChannel::setMin((this + 24272), -1.79769313e308);
  OZChannel::setMax((this + 24424), 1.79769313e308);
  OZChannel::setMin((this + 24424), -1.79769313e308);
  OZChannel::setMax((this + 24728), 1.79769313e308);
  OZChannel::setMin((this + 24728), -1.79769313e308);
  OZChannel::setMax((this + 24576), 1.79769313e308);
  OZChannel::setMin((this + 24576), -1.79769313e308);
  OZChannel::setValue((this + 24272), MEMORY[0x277CC08F0], v26, 0);
  OZChannel::setValue((this + 24424), MEMORY[0x277CC08F0], v25, 0);
  OZChannel::setValue((this + 24728), MEMORY[0x277CC08F0], v24, 0);
  OZChannel::setValue((this + 24576), MEMORY[0x277CC08F0], v23, 0);
  *(this + 52258) = 1;
  v35 = &unk_287283398;
  PCString::~PCString(&v39);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v38);
}

void sub_25FAE1C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  OZSceneSettings::~OZSceneSettings(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::setCachedMargins(uint64_t this, int a2)
{
  v2 = this;
  switch(a2)
  {
    case 1:
      v3 = 52280;
      v4 = 52288;
      v5 = 52272;
      v6 = 52264;
      break;
    case 4:
      v3 = 52344;
      v4 = 52352;
      v5 = 52336;
      v6 = 52328;
      break;
    case 3:
      v3 = 52312;
      v4 = 52320;
      v5 = 52304;
      v6 = 52296;
      break;
    default:
      return this;
  }

  v7 = MEMORY[0x277CC08F0];
  OZChannel::setValue((this + 24272), MEMORY[0x277CC08F0], *(this + v6), 0);
  OZChannel::setValue((v2 + 24424), v7, *(v2 + v5), 0);
  OZChannel::setValue((v2 + 24728), v7, *(v2 + v4), 0);
  v8 = *(v2 + v3);

  return OZChannel::setValue((v2 + 24576), v7, v8, 0);
}

void TXTextLayout::setLayoutMethod(TXTextLayout *this, int a2)
{
  v4 = this + 52256;
  v5 = MEMORY[0x277CC08F0];
  OZChannel::setValue((this + 20464), MEMORY[0x277CC08F0], a2, 0);
  ValueAsInt = OZChannel::getValueAsInt((this + 20464), v5, 0.0);
  __asm { FMOV            V0.2D, #-1.0 }

  v22 = _Q0;
  if (ValueAsInt == 1)
  {
    if (*v4 == 1)
    {
      v12 = this;
LABEL_14:
      TXTextLayout::setCachedMargins(v12, a2);
LABEL_26:
      TXTextLayout::interlockMargins(this, 0);
      goto LABEL_27;
    }

    StringPtr = TXChannelString::getStringPtr((this + 19048));
    if (PCString::size(StringPtr))
    {
      v24 = 0uLL;
      v25 = v22;
      OZRenderState::OZRenderState(&v23);
      TXTextLayout::getTypographicBounds(this, &v24, &v23, 1, 0);
      v14 = *&v25 + 2.0;
      *&v25 = *&v25 + 2.0;
      v15 = *(this + 2378);
      if (*(this + 2379) == v15)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(*v15 + 960) == 1)
      {
        v16.n128_u64[0] = *&vsubq_f64(v24, *&v14);
        v16.n128_u64[1] = *&vaddq_f64(*&v24, 0).f64[1];
        v24 = v16;
      }

      (*(*this + 344))(this, &v24);
    }

    else
    {
      TXTextLayout::getStyleAtCharOffset(this, 0, &v24);
      *&v23.var0.var0 = *&v5->value;
      v23.var0.var3 = v5->epoch;
      Size = TXTextStyle::getSize(v24.n128_u64[0], &v23, 0.0);
      OZChannel::setValue((this + 24272), MEMORY[0x277CC08F0], 0.0, 0);
      OZChannel::setValue((this + 24424), MEMORY[0x277CC08F0], 300.0, 0);
      v21 = Size;
      OZChannel::setValue((this + 24728), MEMORY[0x277CC08F0], v21 + -300.0, 0);
      OZChannel::setValue((this + 24576), MEMORY[0x277CC08F0], v21, 0);
      if (v24.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24.n128_u64[1]);
      }
    }

    *v4 = 1;
LABEL_25:
    TXTextLayout::cacheMargins(this, a2);
    goto LABEL_26;
  }

  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3)
  {
    v12 = this;
    if (v4[1] == 1)
    {
      goto LABEL_14;
    }

    TXTextLayout::initializeScrollMargins(this);
    goto LABEL_25;
  }

  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v12 = this;
    if (v4[2] == 1)
    {
      goto LABEL_14;
    }

    TXTextLayout::initializeTickerMargins(this);
    goto LABEL_25;
  }

  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0))
  {
    OZRenderState::OZRenderState(&v23);
    v17 = (*(*(this + 25) + 272))(this + 200);
    OZScene::getCurrentTime(v17, &v24);
    *&v23.var0.var0 = v24;
    v23.var0.var3 = v25;
    v24 = 0uLL;
    v25 = v22;
    TXTextLayout::getTypographicBounds(this, &v24, &v23, 1, 0);
    v18 = OZChannel::getValueAsInt((this + 54280), MEMORY[0x277CC08F0], 0.0);
    v19 = 53528;
    if (!v18)
    {
      v19 = 52640;
    }

    if (((*(*(this + v19) + 552))(this + v19, 0) & 1) == 0)
    {
      TXTextLayout::initializePaths(this, &v24);
      *(this + 63760) = 1;
    }

    TXTextLayout::doLayout(this, &v23, 0);
  }

  else
  {
    TXTextLayout::updateLineBreaksByHardLine(this);
  }

LABEL_27:
  *(this + 3689) = v22;
  *(this + 3693) = xmmword_2603429E0;
  *(this + 3692) = xmmword_2603429E0;
  *(this + 3691) = xmmword_2603429E0;
  TXTextLayout::setAllParagraphsDirty(this);
}

void sub_25FAE2160()
{
  v1 = *(v0 - 88);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25FAE2158);
}

uint64_t TXTextLayout::getTypographicBounds(uint64_t a1, uint64_t a2, CMTime *a3, char a4, int a5)
{
  StringPtr = TXChannelString::getStringPtr((a1 + 19048));
  if (PCString::size(StringPtr))
  {
    v57 = a4;
    v58 = a2;
    v71 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v63 = _Q0;
    v72 = _Q0;
    v70 = *a3;
    v56 = a3;
    v15 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0);
    v17 = OZChannel::getValueAsInt((a1 + 20720), v15, 0.0);
    OZChannel::getValueAsDouble((a1 + 22136), &v70, 0.0);
    v60 = v18;
    v19 = *(a1 + 19024);
    v61 = *(a1 + 19032);
    if (v19 != v61)
    {
      v20 = 0;
      v59 = *(a1 + 64400);
      v21 = 0.0;
      v22 = 0.0;
      do
      {
        v23 = *v19;
        *&v64[0].var0 = *&v70.value;
        *&v65 = v70.epoch;
        OZChannel::getValueAsDouble((v23 + 680), v64, 0.0);
        v25 = v24;
        (*(*a1 + 712))(a1, &v70);
        if (*(v23 + 876))
        {
          v62 = v19;
          v27 = 0;
          v28 = 0;
          v29 = v59 + (v60 + v25) * v26;
          do
          {
            v30 = (*(v23 + 888) + v27);
            v31 = *v30;
            v32 = v30[1];
            if (a5 && v31 == 0.0 && v32 == 0.0)
            {
              v33 = *(v23 + 856);
              _CF = v33 != 0;
              v34 = (v33 - 1);
              if (_CF)
              {
                v35 = v34;
              }

              else
              {
                v35 = 0;
              }

              TXHelperFunctions::GetTextObjectContainingCharIndex(a1, v35, 1, 0, &v68);
              if (v68 != 0.0)
              {
                TXTextLayout::getStyleAtCharOffset(a1, v35, &v66);
                v36 = v66;
                *&v64[0].var0 = *&v70.value;
                *&v65 = v70.epoch;
                Size = TXTextStyle::getSize(v66, v64, 0.0);
                TXTextStyle::getFontName(v36, v64);
                Font = TXTextLayout::getFont(a1, v64);
                PCString::~PCString(v64);
                if (Font)
                {
                  v39 = Size;
                  v40 = (*(*Font + 40))(Font, v39);
                  v41 = (*(*Font + 48))(Font, v39);
                  v31 = v40;
                  v32 = (0.0 - (v41 + (*(*Font + 56))(Font, v39)));
                }

                if (v67)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v67);
                }
              }

              if (v69)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v69);
              }
            }

            v42 = fabs(*(v23 + 920));
            v43 = vabdd_f64(v31, v32);
            if (v20 + v28)
            {
              _ZF = ValueAsInt == 4;
            }

            else
            {
              _ZF = 1;
            }

            v45 = _ZF;
            if (v17)
            {
              v46 = v21;
            }

            else
            {
              v46 = v32;
            }

            if (!v45)
            {
              v32 = v46;
            }

            v64[0].var0 = 0;
            v64[1].var0 = 0;
            v65 = v63;
            v47 = OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0);
            if (v17)
            {
              v64[0] = *&v32;
              v48 = 0.0 - v22 - v42;
              if (v47 != 4)
              {
                v48 = 0.0 - v42;
              }

              v49 = v43;
            }

            else
            {
              if (v45)
              {
                v50 = v31;
              }

              else
              {
                v50 = v21;
              }

              v48 = v50 - v43;
              if (v47 == 4)
              {
                v64[0] = *&v22;
              }

              else
              {
                v64[0].var0 = 0;
              }

              v49 = v42;
              v42 = v43;
            }

            v51 = v29 - v32;
            if (v20 + v28)
            {
              v51 = v29 + v43;
              v52 = 1;
            }

            else
            {
              v52 = v17 == 0;
            }

            v64[1] = *&v48;
            *&v65 = v49;
            *(&v65 + 1) = v42;
            if (v52)
            {
              v21 = v21 - v51;
            }

            else
            {
              v21 = v21 - v51 - (v29 + v43);
            }

            PCRect<double>::operator|=(&v71, v64);
            ++v28;
            v27 += 64;
          }

          while (v28 < *(v23 + 876));
          v20 += v28;
          v19 = v62;
        }

        v22 = v22 + *(v23 + 920);
        ++v19;
      }

      while (v19 != v61);
    }

    v53 = v72;
    *v58 = v71;
    *(v58 + 16) = v53;
    if ((v57 & 1) != 0 && (OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 && (*(a1 + 52256) & 1) != 0 || OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 3 && (*(a1 + 52257) & 1) != 0 || ValueAsInt == 4 && *(a1 + 52258) == 1))
    {
      v64[0].var0 = 0;
      v68 = 0.0;
      (*(*a1 + 1016))(a1, v64, &v68, v56);
      *&v54.f64[0] = v64[0];
      v54.f64[1] = v68;
      *v58 = vaddq_f64(v54, *v58);
    }
  }

  return 0;
}

void sub_25FAE2690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, PCString a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  PCString::~PCString(&a19);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::interlockMargins(TXTextLayout *this, char a2)
{
  if (a2)
  {
    OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setSliderMax((this + 24272), v4);
  }

  else
  {
    v5 = *(*(this + 3050) + 8);
    OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
    if (v5 < v6)
    {
      OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
      OZChannel::setSliderMax((this + 24272), v7);
    }

    v8 = *(*(this + 3050) + 16);
    OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
    if (v8 <= v9)
    {
      goto LABEL_8;
    }
  }

  OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
  OZChannel::setSliderMin((this + 24272), v10);
  if (a2)
  {
    OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setSliderMax((this + 24424), v11);
    goto LABEL_11;
  }

LABEL_8:
  v12 = *(*(this + 3069) + 8);
  OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
  if (v12 < v13)
  {
    OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setSliderMax((this + 24424), v14);
  }

  v15 = *(*(this + 3069) + 16);
  OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
  if (v15 <= v16)
  {
LABEL_13:
    v19 = *(*(this + 3107) + 8);
    OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
    if (v19 < v20)
    {
      OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
      OZChannel::setSliderMax((this + 24728), v21);
    }

    v22 = *(*(this + 3107) + 16);
    OZChannel::getValueAsDouble((this + 24728), MEMORY[0x277CC08F0], 0.0);
    if (v22 <= v23)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_11:
  OZChannel::getValueAsDouble((this + 24272), MEMORY[0x277CC08F0], 0.0);
  OZChannel::setSliderMin((this + 24424), v17);
  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

  OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
  OZChannel::setSliderMax((this + 24728), v18);
LABEL_16:
  OZChannel::getValueAsDouble((this + 24728), MEMORY[0x277CC08F0], 0.0);
  OZChannel::setSliderMin((this + 24728), v24);
  if (a2)
  {
    OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setSliderMax((this + 24576), v25);
LABEL_21:
    OZChannel::getValueAsDouble((this + 24728), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setSliderMin((this + 24576), v31);
    goto LABEL_22;
  }

LABEL_18:
  v26 = *(*(this + 3088) + 8);
  OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
  if (v26 < v27)
  {
    OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setSliderMax((this + 24576), v28);
  }

  v29 = *(*(this + 3088) + 16);
  OZChannel::getValueAsDouble((this + 24728), MEMORY[0x277CC08F0], 0.0);
  if (v29 > v30)
  {
    goto LABEL_21;
  }

LABEL_22:
  v32 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
  OZChannel::setMax((this + 24272), v33);
  OZChannel::getValueAsDouble((this + 24272), v32, 0.0);
  OZChannel::setMin((this + 24424), v34);
  OZChannel::getValueAsDouble((this + 24576), v32, 0.0);
  OZChannel::setMax((this + 24728), v35);
  OZChannel::getValueAsDouble((this + 24728), v32, 0.0);

  return OZChannel::setMin((this + 24576), v36);
}

void TXTextLayout::initializePaths(uint64_t a1, uint64_t a2)
{
  ValueAsInt = OZChannel::getValueAsInt((a1 + 20720), MEMORY[0x277CC08F0], 0.0);
  v5 = (a2 + 16);
  if (ValueAsInt)
  {
    v5 = (a2 + 24);
  }

  if (fabs(*v5) >= 0.0000001)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 300.0;
  }

  v7 = *(a1 + 19024);
  if (*(a1 + 19032) == v7)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  Alignment = TXParagraphStyle::getAlignment(*v7);
  v9 = (*(*(a1 + 52640) + 552))(a1 + 52640, 0);
  if ((v9 & 1) == 0)
  {
    Instance = OZCurrentThread::getInstance(v9);
    if (PCThread::isSelf(*(Instance + 8)))
    {
      OZChannelPosition3D::willBeModified((a1 + 52504), 1);
      (*(*(a1 + 52640) + 480))(a1 + 52640, 1);
      (*(*(a1 + 52792) + 480))(a1 + 52792, 1);
      (*(*(a1 + 53240) + 480))(a1 + 53240, 1);
    }

    OZChannel::setDiscrete((a1 + 52640), 0, 0);
    OZChannel::setDiscrete((a1 + 52792), 0, 0);
    OZChannel::setDiscrete((a1 + 53240), 0, 0);
    OZChannel::setParametric((a1 + 52640), 1);
    OZChannel::setParametric((a1 + 52792), 1);
    OZChannel::setParametric((a1 + 53240), 1);
    v11 = 0.0;
    if (OZChannel::getValueAsInt((a1 + 20720), MEMORY[0x277CC08F0], 0.0))
    {
      if (Alignment > 6)
      {
        goto LABEL_20;
      }

      if (((1 << Alignment) & 0x49) != 0)
      {
        v12 = MEMORY[0x277CC08F0];
        OZChannel::setKeyframe((a1 + 52640), MEMORY[0x277CC08F0], 0.0, 0);
        OZChannel::setKeyframe((a1 + 52792), v12, 0.0, 0);
        OZChannel::setKeyframe((a1 + 53240), v12, 0.0, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 52640), v45, 0.0, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 52792), v45, -v6, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 53240), v45, 0.0, 0);
        CMTimeMake(v45, 1, 1);
        v13 = -0.5;
LABEL_21:
        v16 = v6 * v13;
        v17 = (a1 + 52504);
        v18 = 0.0;
LABEL_38:
        OZChannelPosition3D::insertBezierPoint(v17, v45, v18, v16, 0.0);
        goto LABEL_39;
      }

      if (((1 << Alignment) & 0x12) == 0)
      {
LABEL_20:
        v15 = MEMORY[0x277CC08F0];
        OZChannel::setKeyframe((a1 + 52792), MEMORY[0x277CC08F0], v6, 0);
        OZChannel::setKeyframe((a1 + 52640), v15, 0.0, 0);
        OZChannel::setKeyframe((a1 + 53240), v15, 0.0, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 52640), v45, 0.0, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 52792), v45, 0.0, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 53240), v45, 0.0, 0);
        CMTimeMake(v45, 1, 1);
        v13 = 0.5;
        goto LABEL_21;
      }

      v14 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe((a1 + 52640), MEMORY[0x277CC08F0], 0.0, 0);
      OZChannel::setKeyframe((a1 + 52792), v14, v6 * 0.5, 0);
      OZChannel::setKeyframe((a1 + 53240), v14, 0.0, 0);
      OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
      OZChannel::setKeyframe((a1 + 52640), v45, 0.0, 0);
      OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
      OZChannel::setKeyframe((a1 + 52792), v45, v6 * -0.5, 0);
      OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
      OZChannel::setKeyframe((a1 + 53240), v45, 0.0, 0);
      goto LABEL_34;
    }

    if (Alignment <= 6)
    {
      if (((1 << Alignment) & 0x49) != 0)
      {
LABEL_23:
        v19 = MEMORY[0x277CC08F0];
        OZChannel::setKeyframe((a1 + 52640), MEMORY[0x277CC08F0], v11, 0);
        OZChannel::setKeyframe((a1 + 52792), v19, 0.0, 0);
        OZChannel::setKeyframe((a1 + 53240), v19, 0.0, 0);
        if (Alignment > 6)
        {
          goto LABEL_28;
        }

        if (((1 << Alignment) & 0x49) != 0)
        {
          OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
          v20 = (a1 + 52640);
          v21 = v6;
          goto LABEL_30;
        }

        if (((1 << Alignment) & 0x12) != 0)
        {
          OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
          v21 = v6 * 0.5;
        }

        else
        {
LABEL_28:
          OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
          v21 = 0.0;
        }

        v20 = (a1 + 52640);
LABEL_30:
        OZChannel::setKeyframe(v20, v45, v21, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 52792), v45, 0.0, 0);
        OZFigTimeForChannelSeconds(v45, 2.0, 0x40000);
        OZChannel::setKeyframe((a1 + 53240), v45, 0.0, 0);
        if (Alignment <= 6)
        {
          if (((1 << Alignment) & 0x49) != 0)
          {
            CMTimeMake(v45, 1, 1);
            v22 = 0.5;
LABEL_36:
            v18 = v6 * v22;
            v17 = (a1 + 52504);
            goto LABEL_37;
          }

          if (((1 << Alignment) & 0x12) != 0)
          {
LABEL_34:
            CMTimeMake(v45, 1, 1);
            v17 = (a1 + 52504);
            v18 = 0.0;
LABEL_37:
            v16 = 0.0;
            goto LABEL_38;
          }
        }

        CMTimeMake(v45, 1, 1);
        v22 = -0.5;
        goto LABEL_36;
      }

      if (((1 << Alignment) & 0x12) != 0)
      {
        v11 = v6 * -0.5;
        goto LABEL_23;
      }
    }

    v11 = -v6;
    goto LABEL_23;
  }

LABEL_39:
  if (((*(*(a1 + 53528) + 552))(a1 + 53528, 0) & 1) == 0)
  {
    *v45 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v45[16] = _Q0;
    v28 = (*(*(a1 + 200) + 272))(a1 + 200);
    OZScene::getSceneBounds(v28, v45);
    __asm { FMOV            V1.2D, #0.75 }

    v30 = vmulq_f64(*&v45[16], _Q1);
    if (v30.f64[0] <= v30.f64[1])
    {
      v31 = v30.f64[0];
    }

    else
    {
      v31 = v30.f64[1];
    }

    OZChannelPosition3D::willBeModified((a1 + 53392), 1);
    OZChannel::setDiscrete((a1 + 53528), 0, 0);
    OZChannel::setDiscrete((a1 + 53680), 0, 0);
    OZChannel::setDiscrete((a1 + 54128), 0, 0);
    OZChannel::setParametric((a1 + 53528), 1);
    OZChannel::setParametric((a1 + 53680), 1);
    OZChannel::setParametric((a1 + 54128), 1);
    v32 = MEMORY[0x277CC08F0];
    OZChannel::setKeyframe((a1 + 53528), MEMORY[0x277CC08F0], 0.0, 1);
    OZChannel::setKeyframe((a1 + 53680), v32, 0.0, 1);
    OZChannel::setKeyframe((a1 + 54128), v32, 0.0, 1);
    CMTimeMake(&v44, 1, 1);
    OZChannel::setKeyframe((a1 + 53528), &v44, v31 * 0.5, 1);
    CMTimeMake(&v44, 1, 1);
    OZChannel::setKeyframe((a1 + 53680), &v44, v31 * 0.5, 1);
    CMTimeMake(&v44, 1, 1);
    Keyframe = OZChannel::getKeyframe((a1 + 53528), &v44);
    CMTimeMake(&v44, 1, 1);
    v34 = OZChannel::getKeyframe((a1 + 53680), &v44);
    OZChannel::setKeyframeInputTangents((a1 + 53528), Keyframe, 0.0, v31 * 0.5 * -0.546761902, 1);
    OZChannel::setKeyframeInputTangents((a1 + 53680), v34, 0.0, 0.0, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53528), Keyframe, 0.0, v31 * 0.5 * 0.546761902, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53680), v34, 0.0, 0.0, 1);
    CMTimeMake(&v44, 1, 1);
    OZChannel::setKeyframe((a1 + 54128), &v44, 0.0, 1);
    OZFigTimeForChannelSeconds(&v44, 2.0, 0x40000);
    OZChannel::setKeyframe((a1 + 53528), &v44, v31 * 0.5 + v31 * 0.5, 1);
    OZFigTimeForChannelSeconds(&v44, 2.0, 0x40000);
    OZChannel::setKeyframe((a1 + 53680), &v44, 0.0, 1);
    OZFigTimeForChannelSeconds(&v44, 2.0, 0x40000);
    v35 = OZChannel::getKeyframe((a1 + 53528), &v44);
    OZFigTimeForChannelSeconds(&v44, 2.0, 0x40000);
    v36 = OZChannel::getKeyframe((a1 + 53680), &v44);
    OZChannel::setKeyframeInputTangents((a1 + 53528), v35, 0.0, 0.0, 1);
    OZChannel::setKeyframeInputTangents((a1 + 53680), v36, 0.0, v31 * 0.5 * 0.546761902, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53528), v35, 0.0, 0.0, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53680), v36, 0.0, v31 * 0.5 * -0.546761902, 1);
    OZFigTimeForChannelSeconds(&v44, 2.0, 0x40000);
    OZChannel::setKeyframe((a1 + 54128), &v44, 0.0, 1);
    OZFigTimeForChannelSeconds(&v44, 3.0, 0x40000);
    OZChannel::setKeyframe((a1 + 53528), &v44, v31 * 0.5, 1);
    OZFigTimeForChannelSeconds(&v44, 3.0, 0x40000);
    OZChannel::setKeyframe((a1 + 53680), &v44, -(v31 * 0.5), 1);
    OZFigTimeForChannelSeconds(&v44, 3.0, 0x40000);
    v37 = OZChannel::getKeyframe((a1 + 53528), &v44);
    OZFigTimeForChannelSeconds(&v44, 3.0, 0x40000);
    v38 = OZChannel::getKeyframe((a1 + 53680), &v44);
    OZChannel::setKeyframeInputTangents((a1 + 53528), v37, 0.0, v31 * 0.5 * 0.546761902, 1);
    OZChannel::setKeyframeInputTangents((a1 + 53680), v38, 0.0, 0.0, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53528), v37, 0.0, v31 * 0.5 * -0.546761902, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53680), v38, 0.0, 0.0, 1);
    OZFigTimeForChannelSeconds(&v44, 3.0, 0x40000);
    OZChannel::setKeyframe((a1 + 54128), &v44, 0.0, 1);
    v39 = OZChannel::getKeyframe((a1 + 53528), v32);
    v40 = OZChannel::getKeyframe((a1 + 53680), v32);
    OZChannel::setKeyframeInputTangents((a1 + 53528), v39, 0.0, 0.0, 1);
    OZChannel::setKeyframeInputTangents((a1 + 53680), v40, 0.0, v31 * 0.5 * -0.546761902, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53528), v39, 0.0, 0.0, 1);
    OZChannel::setKeyframeOutputTangents((a1 + 53680), v40, 0.0, v31 * 0.5 * 0.546761902, 1);
    OZChannel::closeParametricCurve((a1 + 53528));
    OZChannel::closeParametricCurve((a1 + 53680));
    OZChannel::closeParametricCurve((a1 + 54128));
  }

  initializeNormalsForPath((a1 + 52504));
  initializeNormalsForPath((a1 + 53392));
  v42 = OZCurrentThread::getInstance(v41);
  if (PCThread::isSelf(*(v42 + 8)))
  {
    v43 = (*(*(a1 + 200) + 272))(a1 + 200);
    OZDocument::postNotification(*(v43 + 1584), 8);
  }
}

BOOL TXTextLayout::isFlattened(TXTextLayout *this)
{
  if ((*(*this + 296))(this))
  {
    return 0;
  }

  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    return 1;
  }

  return OZChannel::getValueAsInt((this + 19904), MEMORY[0x277CC08F0], 0.0) != 0;
}

uint64_t TXTextLayout::canFourCorner(TXTextLayout *this)
{
  result = OZElement::canFourCorner((this + 200));
  if (result)
  {
    v3 = *(*this + 304);

    return v3(this);
  }

  return result;
}

uint64_t non-virtual thunk toTXTextLayout::canFourCorner(OZElement *this)
{
  result = OZElement::canFourCorner(this);
  if (result)
  {
    v3 = *(*(this - 25) + 304);

    return v3(this - 200);
  }

  return result;
}

uint64_t TXTextLayout::canCrop(TXTextLayout *this)
{
  result = OZElement::canCrop((this + 200));
  if (result)
  {
    v3 = *(*this + 304);

    return v3(this);
  }

  return result;
}

uint64_t non-virtual thunk toTXTextLayout::canCrop(OZElement *this)
{
  result = OZElement::canCrop(this);
  if (result)
  {
    v3 = *(*(this - 25) + 304);

    return v3(this - 200);
  }

  return result;
}

uint64_t TXTextLayout::updateHiddenChannels(TXTextLayout *this, char a2)
{
  v4 = this + 53233;
  if ((*(*this + 304))(this))
  {
    OZChannelBase::resetFlag((this + 12872), 2, a2);
    OZChannelBase::resetFlag((this + 20056), 2, a2);
    OZChannelBase::resetFlag((this + 20312), 2, a2);
    v5 = 1;
  }

  else
  {
    OZChannelBase::setFlag((this + 12872), 2, a2);
    OZChannelBase::setFlag((this + 20056), 2, a2);
    OZChannelBase::setFlag((this + 20312), 2, a2);
    OZChannelBase::setRangeName((this + 200), v6);
    v5 = 0;
  }

  *v4 = v5;
  v4[888] = v5;
  if (OZChannel::getValueAsInt((this + 20312), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannelBase::resetFlag((this + 58296), 2, a2);
  }

  else
  {
    OZChannelBase::setFlag((this + 58296), 2, a2);
  }

  v7 = this + 200;
  if ((*(*(this + 25) + 272))(this + 200) && *((*(*v7 + 272))(this + 200) + 1584))
  {
    v8 = (*(*v7 + 272))(this + 200);
    OZDocument::postNotification(*(v8 + 1584), 32);
  }

  *(this + 19392) = 1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 3689) = _Q0;
  *(this + 3693) = xmmword_2603429E0;
  *(this + 3692) = xmmword_2603429E0;
  *(this + 3691) = xmmword_2603429E0;

  return OZElement::updateHiddenChannels((this + 200), a2);
}

double TXTextLayout::invalidateLayout(TXTextLayout *this)
{
  *(this + 19392) = 1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 3689) = _Q0;
  result = 1.0;
  *(this + 3693) = xmmword_2603429E0;
  *(this + 3692) = xmmword_2603429E0;
  *(this + 3691) = xmmword_2603429E0;
  return result;
}

double TXTextLayout::setAlignmentAtCursor(TXTextLayout *this, double a2, int a3)
{
  v5 = *(this + 2407);
  if (a3)
  {
    StringPtr = TXChannelString::getStringPtr((this + 19048));
    v7 = PCString::size(StringPtr);
    v8 = 0;
  }

  else
  {
    if (v5 >= HIDWORD(v5))
    {
      v8 = HIDWORD(*(this + 2407));
    }

    else
    {
      v8 = *(this + 2407);
    }

    if (v5 <= HIDWORD(v5))
    {
      v7 = HIDWORD(*(this + 2407));
    }

    else
    {
      v7 = *(this + 2407);
    }
  }

  do
  {
    HardLine = TXTextLayout::getHardLine(this, v8);
    v10 = *(this + 2378);
    if (HardLine >= ((*(this + 2379) - v10) >> 3))
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = *(v10 + 8 * HardLine);
    TXParagraphStyle::setAlignment(v11, a2, 0);
    TXParagraphStyle::dirty(v11, 1);
    v12 = *(v11 + 216) + *(v11 + 214);
    v13 = TXChannelString::getStringPtr((this + 19048));
    if (PCString::size(v13) == v12)
    {
      v8 = v12 + 1;
    }

    else
    {
      v8 = v12;
    }
  }

  while (v8 <= v7);
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 3689) = _Q0;
  result = 1.0;
  *(this + 3693) = xmmword_2603429E0;
  *(this + 3692) = xmmword_2603429E0;
  *(this + 3691) = xmmword_2603429E0;
  return result;
}

double TXTextLayout::getAlignmentAtCursor(TXTextLayout *this)
{
  v2 = *(this + 4814);
  v3 = *(this + 4815);
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  HardLine = TXTextLayout::getHardLine(this, v4);
  v6 = *(this + 2378);
  if (HardLine >= ((*(this + 2379) - v6) >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return TXParagraphStyle::getAlignment(*(v6 + 8 * HardLine));
}

void TXTextLayout::setParagraphBounds(uint64_t a1, double *a2)
{
  v4 = MEMORY[0x277CC08F0];
  OZChannel::setValue((a1 + 24272), MEMORY[0x277CC08F0], *a2, 0);
  OZChannel::setValue((a1 + 24424), v4, *a2 + a2[2], 0);
  OZChannel::setValue((a1 + 24728), v4, a2[1], 0);
  OZChannel::setValue((a1 + 24576), v4, a2[1] + a2[3], 0);
  TXTextLayout::interlockMargins(a1, 0);

  TXTextLayout::setAllParagraphsDirty(a1);
}

double TXTextLayout::getParagraphBounds(uint64_t a1, double *a2)
{
  v4 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((a1 + 24272), MEMORY[0x277CC08F0], 0.0);
  v6 = v5;
  OZChannel::getValueAsDouble((a1 + 24576), v4, 0.0);
  v8 = v7;
  OZChannel::getValueAsDouble((a1 + 24424), v4, 0.0);
  v10 = v9;
  OZChannel::getValueAsDouble((a1 + 24728), v4, 0.0);
  if (v6 <= v10)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  if (v6 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v8 >= v11)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  if (v8 < v11)
  {
    v11 = v8;
  }

  *a2 = v12;
  a2[1] = v11;
  result = v14 - v11;
  a2[2] = v13 - v12;
  a2[3] = result;
  return result;
}

double TXTextLayout::getScrollableHeight(TXTextLayout *this, CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v15, v4);
  v13[0] = 0;
  v13[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  TXTextLayout::getTypographicBounds(this, v13, a2, 0, 0);
  v10 = &v14;
  if ((OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 4) && (!OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 1))
  {
    v10 = &v14 + 1;
  }

  v11 = *v10;
  OZLockingGroup::WriteSentry::~WriteSentry(v15);
  return v11;
}

void sub_25FAE402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

__CFString *TXTextLayout::setScrollPosition(TXTextLayout *this, double a2, int a3)
{
  v5 = *(this + 25);
  *(this + 2429) = a2;
  result = (*(v5 + 272))();
  if (a3)
  {
    v7 = result;
    if (result)
    {
      OZRenderState::OZRenderState(&v22);
      OZScene::getCurrentTime(v7, &v20);
      v8 = v20;
      v22.var0.var3 = v21;
      v9 = &v21;
      v20 = 0uLL;
      __asm { FMOV            V1.2D, #-1.0 }

      v21 = _Q1;
      *&v22.var0.var0 = v8;
      OZRenderState::OZRenderState(&v19, &v22);
      ScrollableHeight = TXTextLayout::getScrollableHeight(this, &v19);
      (*(*this + 352))(this, &v20);
      if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0) || (result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0), result != 4))
      {
        result = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
        if (!result || (result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0), result != 3) && (result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0), result != 1))
        {
          v9 = &v21 + 1;
        }
      }

      v16 = 0.0;
      if (ScrollableHeight <= *v9 || (StringPtr = TXChannelString::getStringPtr((this + 19048)), result = PCString::size(StringPtr), !result) || (v18 = *(this + 2429), v18 < 0.0) || (v16 = 1.0, v18 > 1.0))
      {
        *(this + 2429) = v16;
      }
    }
  }

  return result;
}

double TXTextLayout::scrollToFitCharOffset(TXTextLayout *this, int a2, int a3, double a4)
{
  LODWORD(v6) = a2;
  v8 = 0.0;
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0))
  {
    if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 2)
    {
      v9 = (*(this + 7354) - *(this + 7353)) >> 4;
      if (v9)
      {
        if (v9 <= v6)
        {
          v6 = (v9 - 1);
        }

        else
        {
          v6 = v6;
        }

        OZRenderState::OZRenderState(&v58);
        v10 = (*(*(this + 25) + 272))(this + 200);
        if (v10)
        {
          OZScene::getCurrentTime(v10, &v56);
          v11 = v56;
          v58.var0.var3 = v57;
          v12 = &v57;
          v56 = 0uLL;
          __asm { FMOV            V1.2D, #-1.0 }

          v57 = _Q1;
          *&v58.var0.var0 = v11;
          OZRenderState::OZRenderState(&v55, &v58);
          ScrollableHeight = TXTextLayout::getScrollableHeight(this, &v55);
          (*(*this + 352))(this, &v56);
          if ((OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 4) && (!OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 1))
          {
            v12 = &v57 + 1;
          }

          v18 = *v12;
          if (ScrollableHeight >= *v12)
          {
            TXHelperFunctions::GetTextObjectContainingCharIndex(this, v6, 1, 0, &v53);
            if (v53)
            {
              if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
              {
                if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
                {
                  v19 = *(v53 + 25);
                  OZChannel::getValueAsDouble((this + 24576), MEMORY[0x277CC08F0], 0.0);
                }

                else
                {
                  v19 = *(v53 + 24);
                  OZChannel::getValueAsDouble((this + 24424), MEMORY[0x277CC08F0], 0.0);
                }

                v32 = v19 - v20;
                v33 = *(this + 7354) - *(this + 7353);
                if ((v33 & 0xFFFFFFFF0) != 0)
                {
                  v34 = ((v33 >> 4) - 1);
                }

                else
                {
                  v34 = 0;
                }

                TXHelperFunctions::GetTextObjectContainingCharIndex(this, v34, 1, 0, &v51);
                if (v51)
                {
                  if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
                  {
                    TypographicBounds = TXTextObject::getTypographicBounds(v51);
                    v36 = *(TypographicBounds + 8) + *(TypographicBounds + 24);
                  }

                  else
                  {
                    v36 = *TXTextObject::getTypographicBounds(v51);
                  }
                }

                else
                {
                  v36 = 0.0;
                }

                v37 = TXTextObject::getTypographicBounds(v53);
                v38 = *v37;
                v39 = v37[1];
                v40 = v37[2];
                v41 = v37[3];
                ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
                v43 = vabdd_f64(v32 - v36, v39 + v41) / (ScrollableHeight - v18);
                v44.n128_f64[0] = (fabs(v32 - v36 + v39) - v18) / (ScrollableHeight - v18);
                v45 = (fabs(v32 + v36 + v38) - v18) / (ScrollableHeight - v18);
                v46 = fabs(v32 + v36 + v38 + v40);
                if (ValueAsInt)
                {
                  v47 = v43;
                }

                else
                {
                  v44.n128_f64[0] = v46 / (ScrollableHeight - v18);
                  v47 = v45;
                }

                v48 = *(this + 2429);
                if (v44.n128_f64[0] < v48 || v47 > v48)
                {
                  if (a3)
                  {
                    v44.n128_f64[0] = v47;
                  }

                  (*(*this + 824))(this, 1, v44);
                }

                if (v52)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                }
              }

              else
              {
                v21 = *(v53 + 25);
                if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
                {
                  v21 = *(v53 + 24);
                }

                v22 = *(this + 2378);
                v23 = *(*v22 + 111);
                v24 = *(this + 2379);
                while (v22 != v24)
                {
                  v25 = *v22;
                  v26 = *(*v22 + 107);
                  if (v26 <= v6 && *(v25 + 108) + v26 > v6)
                  {
                    goto LABEL_30;
                  }

                  ++v22;
                }

                v25 = *(v24 - 1);
LABEL_30:
                v27 = *v23;
                v28.n128_f64[0] = fabs(v21 - *v23 + TXParagraphStyle::getAscenderForCharOffset(v25, v6)) / (ScrollableHeight - v18);
                v29 = (vabdd_f64(v21, v27) - v18) / (ScrollableHeight - v18);
                v30 = *(this + 2429);
                if (v29 - a4 > v30 || v28.n128_f64[0] - a4 < v30)
                {
                  if (!a3)
                  {
                    v28.n128_f64[0] = v29;
                  }

                  (*(*this + 824))(this, 1, v28);
                }
              }

              v8 = *(this + 2429);
            }

            else
            {
              v8 = 0.0;
            }

            if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }
          }

          else
          {
            v8 = 0.0;
            (*(*this + 824))(this, 0, 0.0);
          }
        }

        else
        {
          (*(*this + 824))(this, 0, 0.0);
        }
      }
    }
  }

  return v8;
}

void sub_25FAE47B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::getEnableScroll(TXTextLayout *this)
{
  if (*(this + 19440) != 1)
  {
    return 0;
  }

  if (*((*(*(this + 25) + 272))() + 1579))
  {
    return 0;
  }

  if (!TXTextLayout::shouldScaleToTBMargins(this) || (result = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0), result))
  {
    if (((TXTextLayout::shouldScaleToLRMargins(this) & 1) != 0 || TXTextLayout::shouldScaleProportionallyToLeftRightMargins(this)) && OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
    {
      return 0;
    }

    return TXTextLayout::shouldScaleToBothMargins(this) ^ 1;
  }

  return result;
}

uint64_t TXTextLayout::shouldScaleToTBMargins(TXTextLayout *this)
{
  if (OZChannel::getValueAsInt((this + 61208), MEMORY[0x277CC08F0], 0.0) != 2)
  {
    return 0;
  }

  result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  if (result != 1)
  {
    return OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4;
  }

  return result;
}

uint64_t TXTextLayout::shouldScaleToLRMargins(TXTextLayout *this)
{
  if (OZChannel::getValueAsInt((this + 61208), MEMORY[0x277CC08F0], 0.0) != 1)
  {
    return 0;
  }

  result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  if (result != 1)
  {
    return OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4;
  }

  return result;
}

uint64_t TXTextLayout::shouldScaleProportionallyToLeftRightMargins(TXTextLayout *this)
{
  if (OZChannel::getValueAsInt((this + 61208), MEMORY[0x277CC08F0], 0.0) != 4)
  {
    return 0;
  }

  result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  if (result != 1)
  {
    return OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4;
  }

  return result;
}

uint64_t TXTextLayout::shouldScaleToBothMargins(TXTextLayout *this)
{
  if (OZChannel::getValueAsInt((this + 61208), MEMORY[0x277CC08F0], 0.0) != 3)
  {
    return 0;
  }

  result = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
  if (result != 1)
  {
    return OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4;
  }

  return result;
}

double TXTextLayout::getScrollPositionInPixels(TXTextLayout *this)
{
  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || (v2 = 0.0, OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3) || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v2 = 0.0;
    if (TXTextLayout::getEnableScroll(this))
    {
      v3 = &v20;
      v19[0] = 0;
      v19[1] = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v20 = _Q0;
      OZRenderState::OZRenderState(&v18);
      if ((*(*(this + 25) + 272))(this + 200))
      {
        v9 = (*(*(this + 25) + 272))(this + 200);
      }

      else
      {
        v9 = *(OZApplication::getCurrentDoc(theApp) + 3);
      }

      OZScene::getCurrentTime(v9, &v16);
      *&v18.var0.var0 = v16;
      v18.var0.var3 = v17;
      OZRenderState::OZRenderState(&v15, &v18);
      ScrollableHeight = TXTextLayout::getScrollableHeight(this, &v15);
      (*(*this + 352))(this, v19);
      if ((OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 4) && (!OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) != 1))
      {
        v3 = &v20 + 1;
      }

      v11 = *v3;
      if (ScrollableHeight > *v3 && (StringPtr = TXChannelString::getStringPtr((this + 19048)), PCString::size(StringPtr)))
      {
        v13 = *(this + 2429);
      }

      else
      {
        *(this + 2429) = 0;
        v13 = 0.0;
      }

      return (ScrollableHeight - v11) * v13;
    }
  }

  return v2;
}

void *TXTextLayout::updateKerningsAfterTextInsertion(void *this, uint64_t a2, uint64_t a3)
{
  v3 = this + 2404;
  if (this + 2404 != this[2403])
  {
    v6 = this;
    do
    {
      v7 = *v3;
      v8 = *v3;
      v9 = v3;
      if (*v3)
      {
        do
        {
          v10 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = v9[2];
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (v11);
      }

      v18[0] = v10[4];
      if (v18[0] < a2)
      {
        break;
      }

      v12 = v3;
      if (v7)
      {
        do
        {
          v13 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v11 = *v13 == v12;
          v12 = v13;
        }

        while (v11);
      }

      v14 = v13[5];
      std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__erase_unique<long>(v6 + 2403, v18);
      v17 = v18[0] + a3;
      v18[2] = &v17;
      this = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>((v6 + 2403), &v17);
      this[5] = v14;
      v15 = *v3;
      if (*v3)
      {
        do
        {
          v16 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v3[2];
          v11 = *v16 == v3;
          v3 = v16;
        }

        while (v11);
      }

      v3 = v16;
    }

    while (v16 != v6[2403]);
  }

  return this;
}

void TXTextLayout::updateKerningsAfterTextDeletion(TXTextLayout *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 2403);
  v4 = (this + 19232);
  if (v3 != (this + 19232))
  {
    v8 = a3 + a2;
    do
    {
      v9 = v3[4];
      if (v9 >= a2 && v9 < v8)
      {
        v12 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 2403, v3);
        operator delete(v3);
      }

      else if (v9 >= v8)
      {
        v14 = v3[5];
        v15 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 2403, v3);
        operator delete(v3);
        v18[0] = v9 - a3;
        v18[1] = v14;
        v16 = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_hint_unique_key_args<long,std::pair<long,double>>(this + 2403, v15, v18);
        v17 = *(v16 + 8);
        if (v17)
        {
          do
          {
            v12 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v12 = *(v16 + 16);
            v13 = *v12 == v16;
            v16 = v12;
          }

          while (!v13);
        }
      }

      else
      {
        v11 = v3[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v3[2];
            v13 = *v12 == v3;
            v3 = v12;
          }

          while (!v13);
        }
      }

      v3 = v12;
    }

    while (v12 != v4);
  }
}

void *TXTextLayout::getKerningsForRange(void *result, void *a2, uint64_t a3)
{
  v3 = result[2403];
  v4 = result + 2404;
  if (v3 != result + 2404)
  {
    do
    {
      v7 = v3[4];
      if (v7 >= *a2)
      {
        if (v7 >= a2[1] + *a2)
        {
          return result;
        }

        v8 = v3[5];
        v12[0] = v7 - *a2;
        v12[2] = v12;
        result = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(a3, v12);
        result[5] = v8;
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  return result;
}

void TXTextLayout::shiftKerningsToLeft(uint64_t **this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v5, v2);
  v3 = this[2403];
  if (this + 2404 != v3)
  {
    do
    {
      TXTextLayout::setKerningAtCharOffset(this, *(v3 + 5), v3[4] - 1);
      v4 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 2403, v3);
      operator delete(v3);
      v3 = v4;
    }

    while (this + 2404 != v4);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v5);
}

void sub_25FAE523C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::getTrackingForRange(uint64_t a1, uint64_t *a2, CMTime *a3, uint64_t a4)
{
  v4 = (a1 + 64304);
  v5 = *(a1 + 64304);
  if (v5)
  {
    v10 = *a2;
    v11 = (a1 + 64304);
    v12 = *(a1 + 64304);
    do
    {
      v13 = *(v12 + 32);
      v14 = v13 >= v10;
      v15 = v13 < v10;
      if (v14)
      {
        v11 = v12;
      }

      v12 = *(v12 + 8 * v15);
    }

    while (v12);
    if (v11 != v4 && LODWORD(v11[4].var0) <= v10)
    {
      v16 = *(a2 + 2) + v10;
      v17 = (a1 + 64304);
      do
      {
        v18 = *(v5 + 32);
        v14 = v18 >= v16;
        v19 = v18 < v16;
        if (v14)
        {
          v17 = v5;
        }

        v5 = *(v5 + 8 * v19);
      }

      while (v5);
      if (v17 == v4 || LODWORD(v17[4].var0) > v16)
      {
        v17 = (a1 + 64304);
      }

      var0 = v17->var0;
      if (v17->var0)
      {
        do
        {
          v21 = var0;
          var0 = var0[1].var0;
        }

        while (var0);
      }

      else
      {
        do
        {
          v21 = v17[2].var0;
          v22 = v21->var0 == v17;
          v17 = v21;
        }

        while (v22);
      }

      if (v11 != v21)
      {
        while (v21 == v4 || PCString::isWhitespaceAndNewline(v21 + 5))
        {
          v23 = v21->var0;
          if (v21->var0)
          {
            do
            {
              v24 = v23;
              v23 = v23->info;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v21[2].var0;
              v22 = v24->isa == v21;
              v21 = v24;
            }

            while (v22);
          }

          v21 = v24;
          if (v11 == v24)
          {
            return;
          }
        }

        if (v11 != v21)
        {
          do
          {
            var0_low = LODWORD(v11[4].var0);
            if ((PCString::isNewline(v11 + 5) & 1) == 0)
            {
              TXTextLayout::getStyleAtCharOffset(a1, var0_low, &v49);
              v26 = v49;
              v48 = *a3;
              Size = TXTextStyle::getSize(v49, &v48, 0.0);
              v28 = v11[8].var0;
              v48 = *a3;
              OZChannel::getValueAsDouble((a1 + 19600), &v48, 0.0);
              v30 = v29;
              v48 = *a3;
              OZChannel::getValueAsDouble((v26 + 2256), &v48, 0.0);
              v32 = v31;
              v48 = *a3;
              OZChannel::getValueAsDouble((a1 + 27832), &v48, v28);
              v34 = v33;
              v48 = *a3;
              OZChannel::getValueAsDouble((a1 + 19752), &v48, 0.0);
              v36 = v35;
              v48 = *a3;
              OZChannel::getValueAsDouble((v26 + 49416), &v48, 0.0);
              v38 = v37;
              v48 = *a3;
              OZChannel::getValueAsDouble((a1 + 27984), &v48, v28);
              v40 = (v30 + v32 + v34 + (v36 + v38 + v39) * Size) * TXTextLayout::getXMarginScale(a1);
              v41 = var0_low - *a2;
              v47 = v41;
              for (i = *(a4 + 8); i; i = *i)
              {
                v43 = i[4];
                if (v41 >= v43)
                {
                  if (v43 >= v41)
                  {
                    v48.value = &v47;
                    v44 = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(a4, &v47);
                    v44[5] = v40 + v44[5];
                    goto LABEL_39;
                  }

                  ++i;
                }
              }

              v48.value = &v47;
              *(std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(a4, &v47) + 5) = v40;
LABEL_39:
              if (v50)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v50);
              }
            }

            v45 = v11[1].var0;
            if (v45)
            {
              do
              {
                v46 = v45;
                v45 = v45->isa;
              }

              while (v45);
            }

            else
            {
              do
              {
                v46 = v11[2].var0;
                v22 = v46->var0 == v11;
                v11 = v46;
              }

              while (!v22);
            }

            v11 = v46;
          }

          while (v46 != v21);
        }
      }
    }
  }
}

void sub_25FAE560C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

double TXTextLayout::getXMarginScale(TXTextLayout *this)
{
  if ((TXTextLayout::shouldScaleToLRMargins(this) & 1) != 0 || (shouldScaleProportionallyToLeftRightMargins = TXTextLayout::shouldScaleProportionallyToLeftRightMargins(this), result = 1.0, shouldScaleProportionallyToLeftRightMargins))
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
    v5 = 61624;
    if (!ValueAsInt)
    {
      v5 = 61616;
    }

    return *(this + v5);
  }

  return result;
}

void TXTextLayout::applyKerningAndTrackingToAttributedString(TXTextLayout *this, __CFAttributedString *a2, CMTime *a3, const CFRange *a4)
{
  v8 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v14, v8);
  v13[0] = 0;
  v13[1] = 0;
  v11[1] = 0;
  v12 = v13;
  v10 = v11;
  v11[0] = 0;
  *v9 = *a4;
  TXTextLayout::getKerningsForRange(this, v9, &v12);
  TXTextLayout::getTrackingForRange(this, v9, a3, &v10);
  applyKerningsToAttributedString(&v12, @"SimpeValueDict::kerning", a2);
  applyKerningsToAttributedString(&v10, @"SimpeValueDict::tracking", a2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v10, v11[0]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v12, v13[0]);
  OZLockingGroup::WriteSentry::~WriteSentry(v14);
}

void sub_25FAE5778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *a16)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a12, a13);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a15, a16);
  OZLockingGroup::WriteSentry::~WriteSentry((v16 - 40));
  _Unwind_Resume(a1);
}

void applyKerningsToAttributedString(void *a1, const __CFString *a2, CFMutableAttributedStringRef aStr)
{
  CFAttributedStringBeginEditing(aStr);
  String = CFAttributedStringGetString(aStr);
  Length = CFStringGetLength(String);
  v10 = *a1;
  v8 = (a1 + 1);
  v9 = v10;
  if (v10 != v8)
  {
    v11 = Length;
    v12 = *MEMORY[0x277CC49E0];
    do
    {
      v13 = *(v9 + 4);
      if (v13 >= v11)
      {
        break;
      }

      v25 = v9[5];
      if (fabs(v25) >= 0.0000001)
      {
        RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(String, v13);
        valuePtr = 0.0;
        Attribute = CFAttributedStringGetAttribute(aStr, v13, v12, 0);
        if (Attribute)
        {
          Value = CFNumberGetValue(Attribute, kCFNumberDoubleType, &valuePtr);
          v17 = v25;
          if (Value)
          {
            v17 = v25 + valuePtr;
          }
        }

        else
        {
          v17 = v25;
        }

        v23 = v17;
        v18 = CFNumberCreate(0, kCFNumberDoubleType, &v23);
        CFAttributedStringSetAttribute(aStr, RangeOfComposedCharactersAtIndex, v12, v18);
        CFRelease(v18);
        if (a2)
        {
          v19 = CFNumberCreate(0, kCFNumberDoubleType, &v25);
          CFAttributedStringSetAttribute(aStr, RangeOfComposedCharactersAtIndex, a2, v19);
          CFRelease(v19);
        }
      }

      v20 = *(v9 + 1);
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = *(v9 + 2);
          v22 = *v21 == v9;
          v9 = v21;
        }

        while (!v22);
      }

      v9 = v21;
    }

    while (v21 != v8);
  }

  CFAttributedStringEndEditing(aStr);
}

uint64_t TXTextLayout::getAlignmentOffset(TXTextLayout *this, double *a2, double *a3, CMTime *a4)
{
  v8 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 24728), MEMORY[0x277CC08F0], 0.0);
  v10 = v9;
  OZChannel::getValueAsDouble((this + 24272), v8, 0.0);
  v12 = v11;
  OZChannel::getValueAsDouble((this + 24576), v8, 0.0);
  v14 = v13;
  OZChannel::getValueAsDouble((this + 24424), v8, 0.0);
  v16 = v15;
  ValueAsInt = OZChannel::getValueAsInt((this + 20720), v8, 0.0);
  v18 = OZChannel::getValueAsInt((this + 20464), v8, 0.0);
  v19 = OZChannel::getValueAsInt((this + 20464), v8, 0.0);
  v20 = OZChannel::getValueAsInt((this + 20464), v8, 0.0);
  if (!OZChannel::getValueAsInt((this + 20464), v8, 0.0))
  {
    goto LABEL_14;
  }

  if (v18 == 1 || v19 == 3)
  {
    if (ValueAsInt)
    {
      v31 = v16;
    }

    else
    {
      v31 = v12;
    }

    *a2 = v31;
    *&v97[0].value = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v97[0].epoch = _Q0;
    v94 = 0;
    v95 = 0;
    v96 = _Q0;
    TXTextLayout::getTypographicBounds(this, v97, a4, 0, 0);
    if (TXTextLayout::shouldScaleToBothMargins(this) && *(theApp + 82) == 1)
    {
      TXTextLayout::_getImageBoundsFromParagraphs(this, a4, v93);
      *&v97[0].value = *v93;
      *&v97[0].epoch = *&v93[16];
      v36 = *(this + 2378);
      if (*(this + 2379) == v36)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      *&v97[1].value = *&v97[1].value + **(*v36 + 888) - (*(*(*v36 + 888) + 40) + *(*(*v36 + 888) + 56));
      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    v39 = v19 == 3 || v18 == 1;
    if (ValueAsInt)
    {
      v40 = v39;
    }

    else
    {
      v40 = v20 == 4;
    }

    v41 = *&v97[1].value;
    if (v40)
    {
      v42 = *&v97[0].epoch;
    }

    else
    {
      v42 = *&v97[1].value;
    }

    (*(*this + 352))(this, &v94);
    v43 = 24;
    if (v40)
    {
      v43 = 16;
    }

    v44 = *(&v94 + v43);
    v45 = MEMORY[0x277CC08F0];
    v46 = (this + 58824);
    if (!OZChannel::getValueAsInt((this + 21368), MEMORY[0x277CC08F0], 0.0) || v42 > v44 && *(this + 19440) == 1)
    {
      TXTextLayout::getStyleAtCharOffset(this, 0, &theString);
      v47 = *(this + 2378);
      if (*(this + 2379) == v47)
      {
        *v93 = *v45;
        *&v93[16] = *(v45 + 16);
        Size = TXTextStyle::getSize(theString.value, v93, 0.0);
      }

      else
      {
        Size = **(*v47 + 888);
      }

      if (*(this + 15128) == 1)
      {
        *v93 = *v45;
        *&v93[16] = *(v45 + 16);
        v64 = TXTextStyle::getSize(theString.value, v93, 0.0);
        v65 = *(this + 2419);
        if (v65 != (this + 19344))
        {
          v66 = Size - v64;
          v67 = MEMORY[0x277CC08F0];
          do
          {
            (*(*(v65[2] + 2560) + 768))(v65[2] + 2560, v67, v66);
            v65 = v65[1];
          }

          while (v65 != (this + 19344));
        }

        *(this + 15128) = 2;
      }

      if (ValueAsInt)
      {
        v68 = *(**(this + 2378) + 888);
        *a2 = *a2 + (*v68 - v68[1]) * -0.5;
      }

      else
      {
        v14 = v14 - Size;
      }

      *a3 = v14;
      v69 = *&theString.timescale;
      if (*&theString.timescale)
      {
        goto LABEL_68;
      }

      return 0;
    }

    *v93 = *&a4->value;
    *&v93[16] = a4->epoch;
    v49 = **(**(this + 2378) + 888);
    if ((v37 & 1) == 0)
    {
      v41 = 0.0;
      OZChannel::getValueAsDouble((this + 22136), v93, 0.0);
      v51 = *(this + 2378);
      v52 = *(this + 2379);
      if (v51 == v52)
      {
        goto LABEL_71;
      }

      v53 = v50;
      v91 = v49;
      v54 = *(this + 8050);
      do
      {
        v55 = *v51;
        theString = *v93;
        OZChannel::getValueAsDouble((v55 + 680), &theString, 0.0);
        v57 = v56;
        (*(*this + 712))(this, v93);
        v59 = *(v55 + 876);
        if (v59)
        {
          v60 = v54 + v57 * v58;
          v61 = (*(v55 + 888) + 8);
          do
          {
            v41 = v41 + v53 + v60 + *(v61 - 1) - *v61;
            v61 += 8;
            --v59;
          }

          while (v59);
        }

        ++v51;
      }

      while (v51 != v52);
      if (v41 <= 0.0)
      {
        v49 = v91;
      }

      else
      {
        v62 = *(*(this + 2379) - 8);
        theString = *v93;
        OZChannel::getValueAsDouble((v62 + 680), &theString, 0.0);
        v49 = v91;
        v41 = v41 - v63 * (*(*this + 712))(this, v93);
      }

      if (v41 <= 0.0)
      {
LABEL_71:
        v72 = **(this + 2378);
        theString = *v93;
        OZChannel::getValueAsDouble((v72 + 680), &theString, 0.0);
        v41 = v41 - v73 * (*(*this + 712))(this, v93);
      }

      HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
      if (OZHostApplicationDelegateHandler::wantsToComputeTypographicHeightWithoutLastLineLeading(HostApplicationDelegate))
      {
        v75 = *(*(this + 2379) - 8);
        v76 = *(v75 + 876);
        if (v76)
        {
          v77 = 0.0 - *(*(v75 + 888) + ((v76 - 1) << 6) + 16);
        }

        else
        {
          v77 = 0.0;
        }

        v41 = v41 - v77;
      }
    }

    StringPtr = TXChannelString::getStringPtr((this + 19048));
    v79 = PCString::size(StringPtr);
    TXChannelString::getString(this + 2381, &theString);
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString.value, (v79 - 1));
    if (TXCharacterSetIsNewline(CharacterAtIndex))
    {
      v81 = *v46;
      if (*v46 != *(this + 7354))
      {
        v82 = *v81;
        v83 = *(v81 + 8);
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = v41 + *(TXTextObject::getTypographicBounds(v82) + 24);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }
      }
    }

    v84 = OZChannel::getValueAsInt((this + 21368), MEMORY[0x277CC08F0], 0.0);
    v85 = v14 - v10;
    v86 = v16 - v12;
    if (v84 == 1)
    {
      v87 = v41 * 0.5;
      if (ValueAsInt)
      {
        *a3 = v14;
        v88 = v16 + v86 * -0.5 + v87;
LABEL_88:
        *a2 = v88 - v49;
LABEL_92:
        PCString::~PCString(&theString);
        return 0;
      }

      v89 = v14 - v49 + v85 * -0.5 + v87;
    }

    else
    {
      if (ValueAsInt)
      {
        *a3 = v14;
        v88 = v16 - v86 + v41;
        goto LABEL_88;
      }

      v89 = v14 - v49 - v85 + v41;
    }

    *a3 = v89;
    goto LABEL_92;
  }

  if (v20 != 4)
  {
LABEL_14:
    *a2 = 0.0;
    *a3 = 0.0;
    return 0;
  }

  TXTextLayout::getStyleAtCharOffset(this, 0, &v94);
  v21 = *(this + 2379);
  v22 = *(this + 2378);
  if (v21 == v22)
  {
    v97[0] = *v8;
    v23 = 0.0;
    v24 = TXTextStyle::getSize(v94, v97, 0.0);
  }

  else
  {
    v23 = 0.0;
    v24 = 0.0;
    do
    {
      v25 = *v22;
      v26 = *(*v22 + 876);
      if (v26)
      {
        v27 = *(v25 + 920);
        v28 = (*(v25 + 888) + 8);
        do
        {
          v23 = v23 + v27;
          v29 = *v28;
          v28 += 8;
          v30 = v29;
          if (v29 < v24)
          {
            v24 = v30;
          }

          --v26;
        }

        while (v26);
      }

      ++v22;
    }

    while (v22 != v21);
  }

  v70 = v10 - v24;
  if (!ValueAsInt)
  {
    v24 = -v23;
  }

  v71 = v16 + v24;
  if (ValueAsInt)
  {
    v70 = v14;
  }

  *a2 = v71;
  *a3 = v70;
  v69 = v95;
  if (v95)
  {
LABEL_68:
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  return 0;
}

void sub_25FAE616C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  PCString::~PCString(&a11);
  _Unwind_Resume(a1);
}

void TXTextLayout::_getImageBoundsFromParagraphs(TXTextLayout *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 16) = _Q0;
  *&_Q0 = 0;
  v29 = _Q0;
  OZChannel::getValueAsDouble((this + 22136), a2, 0.0);
  v12 = *(this + 2378);
  v13 = *(this + 2379);
  if (v12 != v13)
  {
    v14 = v11;
    v15 = 1;
    do
    {
      v16 = *v12;
      *v31 = *&a2->value;
      *&v31[16] = a2->epoch;
      OZChannel::getValueAsDouble((v16 + 680), v31, 0.0);
      v18 = v17;
      (*(*this + 712))(this, a2);
      v20 = *(*v12 + 876);
      if (v20)
      {
        v21 = 0;
        v22 = (v14 + v18) * v19;
        v23 = *(*v12 + 888);
        v24 = v20 << 6;
        v25 = v29;
        do
        {
          v26 = *(v23 + v21 + 48);
          *v31 = *(v23 + v21 + 32);
          *&v31[16] = v26;
          if ((v15 & 1) == 0)
          {
            *&v25 = *&v25 - (v22 + *(v23 + v21));
          }

          v27.f64[0] = 0.0;
          *&v27.f64[1] = v25;
          v30 = v25;
          *v31 = vaddq_f64(v27, *v31);
          PCRect<double>::operator|=(a3, v31);
          *(&v25 + 1) = *(&v30 + 1);
          v28 = 0;
          LOBYTE(v15) = 0;
          v23 = *(*v12 + 888);
          *&v25 = *&v30 + *(v23 + v21 + 8);
          v21 += 64;
        }

        while (v24 != v21);
      }

      else
      {
        v28 = v15;
        v25 = v29;
      }

      v29 = v25;
      ++v12;
      v15 = v28;
    }

    while (v12 != v13);
  }
}

uint64_t TXTextLayout::_computeTypographicHeightWithoutLastLineLeading(TXTextLayout *this)
{
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);

  return OZHostApplicationDelegateHandler::wantsToComputeTypographicHeightWithoutLastLineLeading(HostApplicationDelegate);
}

double TXTextLayout::_lastLineLeading(TXTextLayout *this)
{
  v1 = *(*(this + 2379) - 8);
  v2 = *(v1 + 876);
  if (v2)
  {
    return 0.0 - *(*(v1 + 888) + ((v2 - 1) << 6) + 16);
  }

  else
  {
    return 0.0;
  }
}

OZRenderState *TXTextLayout::getAlignmentOffsetForParagraph(OZRenderState *this, const TXParagraphStyle *a2, double *a3, double *a4, int a5, unsigned int a6, double a7, double a8)
{
  v12 = this;
  if (a6 <= 4 && ((1 << a6) & 0x1A) != 0)
  {
    v23 = 0.0;
    v24 = 0.0;
    this = OZRenderState::OZRenderState(&v22);
    if (a7 == -1.0 || a8 == -1.0)
    {
      this = (*(*v12 + 1016))(v12, &v24, &v23, &v22);
      a8 = v23;
      a7 = v24;
    }

    *a3 = a7;
    *a4 = a8;
    return this;
  }

  if (!a5)
  {
    goto LABEL_18;
  }

  if (a6)
  {
    v16 = *(a2 + 115);
    v17 = *&this[226].var5;
    if (a5 != 1)
    {
      if (a5 != 2)
      {
        return this;
      }

      v18 = -(v16 - v17);
LABEL_21:
      *a3 = v18;
      return this;
    }

    v19 = v16 - v17;
    v20 = -0.5;
LABEL_20:
    v18 = v19 * v20;
    goto LABEL_21;
  }

  if (a5 == 3 || a5 == 6)
  {
LABEL_18:
    *a3 = 0.0;
    return this;
  }

  this = OZChannel::getValueAsInt(&this[78].var7.var0[1][3], MEMORY[0x277CC08F0], 0.0);
  v21 = *(a2 + 115);
  if (this)
  {
    *a4 = v21;
  }

  else
  {
    *a3 = -v21;
  }

  if (a5 == 4 || a5 == 1)
  {
    this = OZChannel::getValueAsInt((v12 + 20720), MEMORY[0x277CC08F0], 0.0);
    if (this)
    {
      *a4 = *a4 * 0.5;
      return this;
    }

    v19 = *a3;
    v20 = 0.5;
    goto LABEL_20;
  }

  return this;
}

uint64_t TXTextLayout::getBaseline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 19024);
  if (*(a1 + 19032) == v6)
  {
    v7 = -0.0;
  }

  else
  {
    v7 = (**(*v6 + 888) - *(*(*v6 + 888) + 8)) * -0.5;
  }

  v8 = MEMORY[0x277CC08F0];
  if (!OZChannel::getValueAsInt((a1 + 20720), MEMORY[0x277CC08F0], 0.0))
  {
    v7 = 0.0;
  }

  result = OZChannel::getValueAsInt((a1 + 20720), v8, 0.0);
  *a2 = v7;
  *(a2 + 8) = 0;
  v10 = *(a1 + 19024);
  if (*(a1 + 19032) == v10)
  {
LABEL_33:
    *a3 = v7;
    *(a3 + 8) = 0;
    return result;
  }

  v11 = result;
  v12 = *v10;
  v13 = *(*v10 + 115);
  if (result)
  {
    v14 = *(*v10 + 115);
  }

  else
  {
    v14 = 0.0;
  }

  if (result)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(*v10 + 115);
  }

  *a3 = v15;
  *(a3 + 8) = v14;
  result = TXParagraphStyle::getAlignment(v12);
  if (result != 1)
  {
    result = TXParagraphStyle::getAlignment(v12);
    if (result != 2)
    {
      return result;
    }

    result = OZChannel::getValueAsInt((a1 + 20720), MEMORY[0x277CC08F0], 0.0);
    v20 = -v13;
    if (result)
    {
      v20 = v13;
    }

    if (v11)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    if (v11)
    {
      v20 = v7;
    }

    *a2 = v20;
    *(a2 + 8) = v21;
    goto LABEL_33;
  }

  v16 = v13 * -0.5;
  if (v11)
  {
    v17 = v7;
  }

  else
  {
    v17 = v13 * -0.5;
  }

  v18 = 0.0;
  if (v11)
  {
    v18 = v13 * 0.5;
  }

  else
  {
    v16 = 0.0;
  }

  *a2 = v17;
  *(a2 + 8) = v16;
  if (v11)
  {
    v19 = v7;
  }

  else
  {
    v19 = v13 * 0.5;
  }

  *a3 = v19;
  *(a3 + 8) = v18;
  return result;
}

void TXTextLayout::getOriginalBounds(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v2;
  v86[520] = *MEMORY[0x277D85DE8];
  v5 = (v1 + 52212);
  if ((*(v1 + 52360) & 1) == 0)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 16) = _Q0;
    return;
  }

  v6 = v3;
  v7 = v1;
  PCWorkingColorVector::PCWorkingColorVector(&v85);
  TXTextLayout::doLayout(v7, v6, &v85);
  PCHashWriteStream::PCHashWriteStream(v86);
  PCHashWriteStream::writeValue(v86, v6->var20);
  PCHashWriteStream::writeValue(v86, v6->var29);
  Hash = PCHashWriteStream::getHash(v86);
  PCHash128::operator+=(v85.i32, Hash);
  v9 = Li3DEngineScene::sceneManager(v7);
  OZLockingGroup::WriteSentry::WriteSentry(v84, v9);
  v10 = (v7 + 59008);
  if (*(v7 + 59024) >= 0.0 && *(v7 + 59032) >= 0.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v85, *(v7 + 59040))))) & 1) == 0 && (*(v7 + 19392) & 1) == 0 && (TXTextLayout::isAnyParagraphDirty(v7) & 1) == 0 && OZChannel::getValueAsInt((v7 + 20464), MEMORY[0x277CC08F0], 0.0) != 2 && !v6->var22)
  {
    v67 = *(v7 + 59024);
    *v4 = *v10;
    *(v4 + 16) = v67;
    goto LABEL_96;
  }

  var0 = v6->var0;
  OZChannel::getValueAsDouble((v7 + 59888), &var0, 0.0);
  v12 = v11;
  var0 = v6->var0;
  OZChannel::getValueAsDouble((v7 + 60360), &var0, 0.0);
  v14 = v13;
  ValueAsInt = OZChannel::getValueAsInt((v7 + 20464), MEMORY[0x277CC08F0], 0.0);
  v16 = OZChannel::getValueAsInt((v7 + 20464), MEMORY[0x277CC08F0], 0.0);
  __asm { FMOV            V0.2D, #-1.0 }

  v71 = _Q0;
  *(v4 + 16) = _Q0;
  if (OZChannel::getValueAsInt((v7 + 20464), MEMORY[0x277CC08F0], 0.0) != 1 || !v6->var20)
  {
    v23 = *(v7 + 58824);
    v22 = *(v7 + 58832);
    OZRenderParams::OZRenderParams(&var0);
    v70 = v5;
    OZRenderParams::setState(&var0, v6);
    v83 = 1;
    HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
    v69 = OZHostApplicationDelegateHandler::wantsToAdjustTextBoundsHeightUsingCapHeight(HostApplicationDelegate);
    v25 = OZHostApplicationDelegateHandler::wantsToIgnoreTextBoundsOfTransparentObjects(HostApplicationDelegate);
    v26 = OZHostApplicationDelegateHandler::wantsToIgnoreTextBoundsOfNewlinesOfTranscriptions(HostApplicationDelegate);
    if (v23 == v22)
    {
LABEL_94:
      OZRenderParams::~OZRenderParams(&var0);
      v10 = (v7 + 59008);
      goto LABEL_95;
    }

    v27 = v26;
    v29 = ValueAsInt == 3 || v16 == 4;
    v68 = v29;
    while (1)
    {
      v30 = *(*v23 + 120);
      if (v25)
      {
        FaceOpacity = TXTextObject::getFaceOpacity(*v23, v6);
        if (!v6->var25 && fabs(FaceOpacity) < 0.0000001)
        {
          goto LABEL_88;
        }
      }

      v32 = v30 == 10 ? v27 : 0;
      if (v32 == 1 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v7 + 208) + 8), xmmword_260347A80)))) & 1) == 0)
      {
        goto LABEL_88;
      }

      v80 = 0uLL;
      v81 = v71;
      if (*(*v23 + 138) != 1)
      {
        goto LABEL_88;
      }

      v33 = *(*v23 + 120);
      if (v22 == v23 + 16)
      {
        if (v30 == 10)
        {
          TXTextLayout::getCursorRectForNewline(v7, *v23, v6, v72);
          v80 = *v72;
          v81 = *&v72[16];
LABEL_85:
          if (*&v81 > 0.0 && *(&v81 + 1) > 0.0)
          {
            PCRect<double>::operator|=(v4, &v80);
          }

          goto LABEL_88;
        }

        v36 = 1;
      }

      else
      {
        v35 = *(v23 + 16);
        v34 = *(v23 + 24);
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v35 + 120) == 10)
        {
          v36 = 1;
          if (!v34)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        v37 = *(v35 + 736);
        v38 = *v70;
        if (v38 < 1)
        {
          if (!v38)
          {
            v36 = 0;
            if (!v34)
            {
              goto LABEL_49;
            }

LABEL_48:
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            goto LABEL_49;
          }

          v39 = 0;
        }

        else
        {
          v39 = *(v70 + 1);
        }

        v40 = 1;
        v41 = v39;
        v42 = *v70;
        v36 = 1;
        do
        {
          if (v39 && *v41 == v37)
          {
            break;
          }

          v36 = v40++ < v38;
          ++v41;
          --v42;
        }

        while (v42);
        if (v34)
        {
          goto LABEL_48;
        }
      }

LABEL_49:
      if (v30 == 10 || v36 && v33 == 32 && *(v7 + 58832) - *(v7 + 58824) > 0x10uLL)
      {
        goto LABEL_88;
      }

      var29 = v6->var29;
      if (var29 <= 1)
      {
        if (!var29)
        {
          TypographicBounds = TXTextObject::getTypographicBounds(*v23);
          v49 = *(TypographicBounds + 16);
          v80 = *TypographicBounds;
          v81 = v49;
          goto LABEL_84;
        }

        if (var29 != 1)
        {
          goto LABEL_84;
        }

        v44 = *(*v23 + 264);
        if (v44)
        {
          v45 = *(v44 + 8);
          v46 = *(v44 + 16);
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v46 = 0;
          v45 = 0;
        }

        *v72 = *&v6->var0.var0;
        *&v72[16] = v6->var0.var3;
        Size = TXTextStyle::getSize(v45, v72, 0.0);
        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        v57 = Size;
        CapHeight = TXTextObject::getCapHeight(*v23, Size);
        TXTextObject::getBoundingRectForGlyph(*v23, v57);
LABEL_82:
        v80 = v59;
        v63 = CapHeight;
        *&v81 = v60;
LABEL_83:
        *(&v81 + 1) = v63;
        goto LABEL_84;
      }

      if (var29 == 2)
      {
        v50 = *(*v23 + 264);
        if (v50)
        {
          v51 = *(v50 + 8);
          v52 = *(v50 + 16);
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v52 = 0;
          v51 = 0;
        }

        *v72 = *&v6->var0.var0;
        *&v72[16] = v6->var0.var3;
        v61 = TXTextStyle::getSize(v51, v72, 0.0);
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        v62 = v61;
        CapHeight = TXTextObject::getXHeight(*v23, v61);
        TXTextObject::getBoundingRectForGlyph(*v23, v62);
        goto LABEL_82;
      }

      if (var29 == 3)
      {
        v47 = *v23;
        if (v68)
        {
          TXTextObject::getImageBoundsOfAttribute(v47, v80.f64, &var0, 5, 1, 1, 1u, 0, 0.0, 0.0, 0.0, 0.0);
        }

        else
        {
          TXTextObject::getImageBoundsWithFourCornerPinning(v47, &var0, &v80, 5);
        }

        if (*(*v23 + 120) == 32)
        {
          *&v81 = *(TXTextObject::getTypographicBounds(*v23) + 16);
          if (v69)
          {
            v53 = *(*v23 + 264);
            if (v53)
            {
              v54 = *(v53 + 8);
              v55 = *(v53 + 16);
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v55 = 0;
              v54 = 0;
            }

            *v72 = *&v6->var0.var0;
            *&v72[16] = v6->var0.var3;
            v64 = TXTextStyle::getSize(v54, v72, 0.0);
            if (v55)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v55);
            }

            v63 = TXTextObject::getCapHeight(*v23, v64);
            goto LABEL_83;
          }
        }
      }

LABEL_84:
      v79 = 0x3FF0000000000000;
      v76 = 0x3FF0000000000000;
      v73 = 0x3FF0000000000000;
      *v72 = 0x3FF0000000000000;
      memset(&v72[8], 0, 32);
      v74 = 0u;
      v75 = 0u;
      v77 = 0u;
      v78 = 0u;
      TXTextObject::getTransformMatrix(*v23, v72, &var0.value, 1, 0, 0, 0, v14, v12);
      if (PCMatrix44Tmpl<double>::transformRect<double>(v72, v80.f64, &v80))
      {
        goto LABEL_85;
      }

LABEL_88:
      v23 += 16;
      if (v23 == v22)
      {
        goto LABEL_94;
      }
    }
  }

  (*(*v7 + 352))(v7, v4);
LABEL_95:
  *(v7 + 64324) = 0;
  v65 = *(v4 + 16);
  *(v7 + 64328) = *v4;
  *(v7 + 64344) = v65;
  TXTextLayout::offsetBoundsBasedOnScrollPosition(v7, v4);
  v66 = *(v4 + 16);
  *v10 = *v4;
  v10[1] = v66;
  *(v7 + 59040) = v85;
LABEL_96:
  OZLockingGroup::WriteSentry::~WriteSentry(v84);
  PCHashWriteStream::~PCHashWriteStream(v86);
}

void sub_25FAE6EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  OZRenderParams::~OZRenderParams(&a37);
  OZLockingGroup::WriteSentry::~WriteSentry(&STACK[0x678]);
  PCHashWriteStream::~PCHashWriteStream(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void TXTextLayout::getCursorRectForNewline(TXTextLayout *this@<X0>, TXTextObject *a2@<X1>, CMTime *a3@<X2>, double *a4@<X8>)
{
  v8 = *(a2 + 184);
  v9 = *(this + 2378);
  v10 = *(this + 2379);
  while (v9 != v10)
  {
    v11 = *v9;
    v12 = *(*v9 + 856);
    if (v12 <= v8 && *(v11 + 864) + v12 > v8)
    {
      goto LABEL_7;
    }

    ++v9;
  }

  v11 = *(v10 - 1);
LABEL_7:
  DescenderForCharOffset = TXParagraphStyle::getDescenderForCharOffset(v11, v8);
  ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
  TypographicBounds = TXTextObject::getTypographicBounds(a2);
  v16 = 16;
  if (!ValueAsInt)
  {
    v16 = 24;
  }

  v17 = *(TypographicBounds + v16);
  v18 = *(a2 + 33);
  if (v18)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = v17;
  if (!TXTextLayout::scaleAffectsLayout(this))
  {
    v34 = 0.0;
    v35 = 0.0;
    v32 = *a3;
    v33 = 0.0;
    OZChannelScale3D::getValue((v20 + 2864), &v32, &v35, &v34, &v33, 0.0);
    v21 = v17 * v34;
    DescenderForCharOffset = DescenderForCharOffset * v34;
  }

  v32 = *a3;
  OZChannel::getValueAsDouble((v11 + 680), &v32, 0.0);
  v23 = v22;
  v24 = (*(*this + 712))(this, a3);
  v34 = 0.0;
  v35 = 0.0;
  TXTextLayout::getCursorOrigin(this, &v35, &v34);
  v25 = v23 * v24;
  if (OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0))
  {
    TXTextObject::getPosition(a2, a3, &v32);
    v26 = DescenderForCharOffset + *&v32.value - v17 - v25;
    v27 = v34;
    v28 = v21;
    v21 = 1.0;
  }

  else
  {
    OZChannel::getValueAsDouble((v20 + 3592), a3, 0.0);
    v30 = v29;
    v31 = v35;
    TXTextObject::getPosition(a2, a3, &v32);
    v26 = v30 + v31;
    v27 = DescenderForCharOffset + *&v32.timescale - v17 - v25;
    v28 = 1.0;
  }

  *a4 = v26;
  a4[1] = v27;
  a4[2] = v28;
  a4[3] = v21;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_25FAE7210(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::offsetBoundsBasedOnScrollPosition(uint64_t a1, float64x2_t *a2)
{
  ScrollPositionInPixels = TXTextLayout::getScrollPositionInPixels(a1);
  result = OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0);
  if (result == 1 || (result = OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0), result == 3))
  {
    v5 = a2->f64[1] - ScrollPositionInPixels;
    a2->f64[0] = a2->f64[0] + 0.0;
    a2->f64[1] = v5;
  }

  else
  {
    result = OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0);
    if (result == 4)
    {
      *&v6.f64[0] = *&vsubq_f64(*a2, *&ScrollPositionInPixels);
      v6.f64[1] = vaddq_f64(*a2, 0).f64[1];
      *a2 = v6;
    }
  }

  return result;
}

uint64_t TXTextLayout::getProjectedBounds(uint64_t a1, float64x2_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v75, v8);
  v9 = *(a1 + 52360);
  if (v9)
  {
    time = *a4;
    Seconds = CMTimeGetSeconds(&time);
    v63 = 0uLL;
    __asm { FMOV            V1.2D, #-1.0 }

    v32 = _Q1;
    v64 = _Q1;
    v74 = 0x3FF0000000000000;
    v71 = 0x3FF0000000000000;
    v68 = 0x3FF0000000000000;
    v61 = &unk_2871F24E0;
    v65 = 0x3FF0000000000000;
    v66 = 0u;
    v67 = 0u;
    v69 = 0u;
    v70 = 0u;
    v72 = 0u;
    v73 = 0u;
    if (!OZValueCache<OZProjectedBoundsCacheItem>::find(a1 + 64032, &v61, Seconds))
    {
      goto LABEL_13;
    }

    v15 = 0;
    v16 = 0;
    v17 = &v65;
    v18 = a3;
LABEL_4:
    v19 = 0;
    while (vabdd_f64(*&v17[v19], *&v18[v19]) < 0.0000001)
    {
      if (++v19 == 4)
      {
        v16 = v15 > 2;
        v18 += 4;
        v17 += 4;
        if (++v15 == 4)
        {
          goto LABEL_11;
        }

        goto LABEL_4;
      }
    }

    if (!v16)
    {
LABEL_13:
      PCWorkingColorVector::PCWorkingColorVector(v60);
      TXTextLayout::doLayout(a1, a4, v60);
      a2[1] = v32;
      OZRenderParams::OZRenderParams(&time);
      OZRenderParams::setState(&time, a4);
      v59 = 1;
      v57 = 0x3FF0000000000000;
      v54 = 0x3FF0000000000000;
      v51 = 0x3FF0000000000000;
      v48 = 0x3FF0000000000000;
      v49 = 0u;
      v50 = 0u;
      v52 = 0u;
      v53 = 0u;
      v55 = 0u;
      v56 = 0u;
      (*(*(a1 + 200) + 1256))(a1 + 200, &v48, &time);
      PCMatrix44Tmpl<double>::operator*(a3, &v48, v47);
      v23 = *(a1 + 58824);
      v22 = *(a1 + 58832);
      if (v23 != v22)
      {
        v24 = MEMORY[0x277CC08F0];
        do
        {
          v46[0] = 0uLL;
          v46[1] = v32;
          if (*(*v23 + 138))
          {
            if (OZChannel::getValueAsInt((a1 + 20464), v24, 0.0) == 3 || OZChannel::getValueAsInt((a1 + 20464), v24, 0.0) == 4)
            {
              TXTextObject::getImageBoundsOfAttribute(*v23, v46[0].f64, &time, 5, 1, 1, 1u, 0, 0.0, 0.0, 0.0, 0.0);
            }

            else
            {
              TXTextObject::getImageBoundsWithFourCornerPinning(*v23, &time, v46, 5);
            }

            v45 = 0x3FF0000000000000;
            v42 = 0x3FF0000000000000;
            v39 = 0x3FF0000000000000;
            v36 = 0x3FF0000000000000;
            v37 = 0u;
            v38 = 0u;
            v40 = 0u;
            v41 = 0u;
            v43 = 0u;
            v44 = 0u;
            TXTextObject::getTransformMatrix(*v23, &v36, &time.value, 1, 1, 0, 1, 0.0, 0.0);
            v34 = 0uLL;
            v35 = v32;
            PCMatrix44Tmpl<double>::operator*(v47, &v36, v33);
            v25 = PCMatrix44Tmpl<double>::transformRect<double>(v33, v46[0].f64, &v34);
            v26 = v35.f64[0] > 0.0 && v25;
            if (v26 && v35.f64[1] > 0.0)
            {
              PCRect<double>::operator|=(a2, &v34);
            }
          }

          v23 += 2;
        }

        while (v23 != v22);
      }

      if (*(a4 + 241))
      {
        OZElement::expandBoundsToIncludeDropShadow(a1 + 200, a2, a4);
      }

      v27 = a2[1];
      v63 = *a2;
      v64 = v27;
      if (&v65 != a3)
      {
        for (i = 0; i != 16; i += 4)
        {
          v29 = (&v65 + i * 8);
          v30 = *&a3[i + 2];
          *v29 = *&a3[i];
          v29[1] = v30;
        }
      }

      OZValueCache<OZProjectedBoundsCacheItem>::add(a1 + 64032, &v61);
    }

LABEL_11:
    if (a2)
    {
      v21 = v64;
      *a2 = v63;
      a2[1] = v21;
    }
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    a2[1] = _Q0;
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v75);
  return v9;
}

void sub_25FAE77BC(_Unwind_Exception *a1)
{
  OZRenderParams::~OZRenderParams(&STACK[0x270]);
  OZLockingGroup::WriteSentry::~WriteSentry((v1 - 104));
  _Unwind_Resume(a1);
}

uint64_t OZValueCache<OZProjectedBoundsCacheItem>::find(uint64_t a1, uint64_t a2, double a3)
{
  PCSharedMutex::lock_shared((a1 + 40));
  for (i = *(a1 + 16); ; i = *(i + 8))
  {
    if (i == a1 + 8)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v7 = *(i + 24);
    if (v7 == a3)
    {
      break;
    }
  }

  *(a2 + 8) = v7;
  v9 = *(i + 48);
  *(a2 + 16) = *(i + 32);
  *(a2 + 32) = v9;
  if (i + 16 != a2)
  {
    v10 = 0;
    v11 = a2 + 48;
    v12 = i + 64;
    do
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v11 + j) = *(v12 + j);
      }

      ++v10;
      v11 += 32;
      v12 += 32;
    }

    while (v10 != 4);
  }

  v8 = 1;
LABEL_12:
  PCSharedMutex::unlock_shared((a1 + 40));
  return v8;
}

void OZValueCache<OZProjectedBoundsCacheItem>::add(uint64_t a1, uint64_t a2)
{
  PCSharedMutex::lock((a1 + 40));
  std::list<OZProjectedBoundsCacheItem>::remove_if<OZ_VC_SameKey<OZProjectedBoundsCacheItem>>(a1 + 8, *(a2 + 8));
  if (*(a1 + 24) >= *(a1 + 32))
  {
    std::list<OZProjectedBoundsCacheItem>::pop_front(a1 + 8);
  }

  std::list<OZProjectedBoundsCacheItem>::push_back();
}

void TXTextLayout::getBoundsIgnoringParagraphMargins(TXTextLayout *this@<X0>, OZRenderState *a2@<X1>, __int128 *a3@<X8>)
{
  time = a2->var0;
  Seconds = CMTimeGetSeconds(&time);
  v67 = 0uLL;
  v65 = &unk_2871F2540;
  __asm { FMOV            V1.2D, #-1.0 }

  v50 = _Q1;
  v68 = _Q1;
  if (OZValueCache<OZBoundsCacheItem>::find(this + 63888, &v65, Seconds) && a2->var29 == *(this + 15970))
  {
    v11 = v68;
    *a3 = v67;
    a3[1] = v11;
    return;
  }

  *a3 = 0;
  *(a3 + 1) = 0;
  a3[1] = v50;
  v12 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v64, v12);
  if (*(this + 52360) == 1)
  {
    PCWorkingColorVector::PCWorkingColorVector(v63);
    TXTextLayout::doLayout(this, a2, v63);
    v13 = *(this + 7353);
    v14 = *(this + 7354);
    OZRenderParams::OZRenderParams(&time);
    OZRenderParams::setState(&time, a2);
    v62 = 1;
    v49 = *(this + 2423) == 1;
    if (v13 == v14)
    {
LABEL_59:
      v48 = a3[1];
      v67 = *a3;
      v68 = v48;
      OZValueCache<OZBoundsCacheItem>::add(this + 63888, &v65);
    }

    while (1)
    {
      while (1)
      {
        if (*(*v13 + 138))
        {
          v59 = 0uLL;
          v60 = v50;
          v15 = *v13;
          v16 = *(*v13 + 60);
          if (v14 == v13 + 2 && v16 == 10)
          {
            TXTextLayout::getCursorRectForNewline(this, v15, a2, v51);
            v17 = 0;
            v59 = *v51;
            v60 = *&v51[16];
            goto LABEL_10;
          }

          if (v16 != 10)
          {
            break;
          }
        }

LABEL_58:
        v13 += 2;
        if (v13 == v14)
        {
          goto LABEL_59;
        }
      }

      v17 = 0;
      var29 = a2->var29;
      if (var29 <= 2)
      {
        break;
      }

      if (var29 > 4)
      {
        if (var29 == 5)
        {
          TypographicBounds = TXTextObject::getTypographicBounds(*v13);
          v31 = *(TypographicBounds + 16);
          v59 = *TypographicBounds;
          v60 = v31;
          v32 = -v59.f64[1];
          goto LABEL_54;
        }

        if (var29 == 6)
        {
          v25 = *(v15 + 33);
          if (v25)
          {
            v26 = *(v25 + 8);
            v27 = *(v25 + 16);
            if (v27)
            {
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v27 = 0;
            v26 = 0;
          }

          *v51 = *&a2->var0.var0;
          *&v51[16] = a2->var0.var3;
          Size = TXTextStyle::getSize(v26, v51, 0.0);
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          v37 = Size;
          CapHeight = TXTextObject::getCapHeight(*v13, Size);
          TXTextObject::getBoundingRectForGlyph(*v13, v37);
          v17 = 0;
          v59 = v39;
          *&v60 = v40;
          *(&v60 + 1) = CapHeight;
        }
      }

      else
      {
        if (var29 != 3)
        {
          v20 = TXTextObject::getTypographicBounds(*v13);
          v21 = *(v20 + 16);
          v59 = *v20;
          *&v60 = v21;
          *(&v60 + 1) = v59.f64[1] + *(&v21 + 1);
          v59.f64[1] = 0.0;
          goto LABEL_55;
        }

        TXTextObject::getImageBounds(*v13, a2, v51);
        v59 = *v51;
        v60 = *&v51[16];
        v17 = 0;
        if (*(*v13 + 64) == 1)
        {
          *(&v60 + 1) = 0;
        }
      }

LABEL_56:
      v58 = 0x3FF0000000000000;
      v55 = 0x3FF0000000000000;
      v52 = 0x3FF0000000000000;
      *v51 = 0x3FF0000000000000;
      memset(&v51[8], 0, 32);
      v53 = 0u;
      v54 = 0u;
      v56 = 0u;
      v57 = 0u;
      TXTextObject::getTransformMatrix(*v13, v51, &time.value, 1, 1, 0, 1, 0.0, 0.0);
      if (!PCMatrix44Tmpl<double>::transformRect<double>(v51, v59.f64, &v59))
      {
        goto LABEL_57;
      }

LABEL_10:
      if (*&v60 <= 0.0 || *(&v60 + 1) <= 0.0)
      {
LABEL_57:
        if (v17)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      PCRect<double>::operator|=(a3, &v59);
      v13 += 2;
      if (v13 == v14)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        goto LABEL_59;
      }
    }

    switch(var29)
    {
      case 0:
        v28 = TXTextObject::getTypographicBounds(*v13);
        v17 = 0;
        v29 = *(v28 + 16);
        v59 = *v28;
        v60 = v29;
        goto LABEL_56;
      case 1:
        v33 = *(v15 + 33);
        if (v33)
        {
          v34 = *(v33 + 8);
          v35 = *(v33 + 16);
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v35 = 0;
          v34 = 0;
        }

        *v51 = *&a2->var0.var0;
        *&v51[16] = a2->var0.var3;
        v46 = TXTextStyle::getSize(v34, v51, 0.0);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        v47 = v46;
        XHeight = TXTextObject::getCapHeight(*v13, v46);
        TXTextObject::getBoundingRectForGlyph(*v13, v47);
        break;
      case 2:
        v22 = *(v15 + 33);
        if (v22)
        {
          v23 = *(v22 + 8);
          v24 = *(v22 + 16);
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        *v51 = *&a2->var0.var0;
        *&v51[16] = a2->var0.var3;
        v41 = TXTextStyle::getSize(v23, v51, 0.0);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v42 = v41;
        XHeight = TXTextObject::getXHeight(*v13, v41);
        TXTextObject::getBoundingRectForGlyph(*v13, v42);
        break;
      default:
        goto LABEL_56;
    }

    v59 = v44;
    v32 = XHeight;
    *&v60 = v45;
LABEL_54:
    *(&v60 + 1) = v32;
LABEL_55:
    v17 = v49;
    goto LABEL_56;
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v64);
}

void sub_25FAE7E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  OZRenderParams::~OZRenderParams(&a33);
  OZLockingGroup::WriteSentry::~WriteSentry((v33 - 160));
  _Unwind_Resume(a1);
}

uint64_t OZValueCache<OZBoundsCacheItem>::find(uint64_t a1, uint64_t a2, double a3)
{
  PCSharedMutex::lock_shared((a1 + 40));
  for (i = *(a1 + 16); ; i = *(i + 8))
  {
    if (i == a1 + 8)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = *(i + 24);
    if (v7 == a3)
    {
      break;
    }
  }

  *(a2 + 8) = v7;
  v9 = *(i + 48);
  *(a2 + 16) = *(i + 32);
  *(a2 + 32) = v9;
  v8 = 1;
LABEL_7:
  PCSharedMutex::unlock_shared((a1 + 40));
  return v8;
}

void OZValueCache<OZBoundsCacheItem>::add(uint64_t a1, uint64_t a2)
{
  PCSharedMutex::lock((a1 + 40));
  std::list<OZProjectedBoundsCacheItem>::remove_if<OZ_VC_SameKey<OZProjectedBoundsCacheItem>>(a1 + 8, *(a2 + 8));
  if (*(a1 + 24) >= *(a1 + 32))
  {
    std::list<OZProjectedBoundsCacheItem>::pop_front(a1 + 8);
  }

  operator new();
}

uint64_t TXTextLayout::getLocalVolumeForHitCheck(PCString *a1, uint64_t a2, uint64_t a3)
{
  if (OZChannel::getValueAsInt(&a1[2558], MEMORY[0x277CC08F0], 0.0) == 1 || OZChannel::getValueAsInt(&a1[2558], MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt(&a1[2558], MEMORY[0x277CC08F0], 0.0) == 4 || (StringPtr = TXChannelString::getStringPtr(&a1[2381]), PCString::size(StringPtr)) && (TXTextLayout::isAllWhitespace(a1) & 1) == 0)
  {
    length = a1->var0[13].length;

    return length(a1, a2, a3);
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v19 = _Q0;
    result = (a1->var0[14].isa)(a1, &v17, a3);
    v13 = v18;
    v14 = v17 + *&v19;
    v15 = v18 + *(&v19 + 1);
    *a2 = v17;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }

  return result;
}

void TXTextLayout::getLocalVolume(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v102 = *MEMORY[0x277D85DE8];
  if ((*(*v1 + 304))(v1))
  {

    OZElement::getLocalVolume(v6 + 200, v5);
    return;
  }

  v7 = (*(*v6 + 296))(v6);
  if (OZChannel::getValueAsInt((v6 + 20464), MEMORY[0x277CC08F0], 0.0) != 1 || (v7 & 1) != 0)
  {
    v13 = Li3DEngineScene::sceneManager(v6);
    OZLockingGroup::WriteSentry::WriteSentry(v95, v13);
    PCWorkingColorVector::PCWorkingColorVector(&v94);
    TXTextLayout::doLayout(v6, v3, &v94);
    v14 = v6 + 58824;
    v76 = v6;
    if (v7)
    {
      PCHashWriteStream::PCHashWriteStream(&v99);
      v15 = v7;
      PCHashWriteStream::writeValue(&v99, 1);
      v16 = *v14;
      v17 = *(v14 + 8);
      if (*v14 != v17)
      {
        v18 = MEMORY[0x277CC08F0];
        do
        {
          ExtrusionDepth = TXTextObject::getExtrusionDepth(*v16, v3);
          PCHashWriteStream::writeValue(&v99, ExtrusionDepth);
          v20 = *(*v16 + 33);
          v21 = *(v20 + 8);
          v22 = *(v20 + 16);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ValueAsInt = OZChannel::getValueAsInt((v21 + 41056), v18, 0.0);
          PCHashWriteStream::writeValue(&v99, ValueAsInt);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v16 += 2;
        }

        while (v16 != v17);
      }

      Hash = PCHashWriteStream::getHash(&v99);
      PCHash128::operator+=(v94.i32, Hash);
      PCHashWriteStream::~PCHashWriteStream(&v99);
      v7 = v15;
      v6 = v76;
    }

    v79 = (v14 + 232);
    if (*(v14 + 232) <= *(v14 + 240) && *(v14 + 248) <= *(v14 + 256) && *(v14 + 264) <= *(v14 + 272) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v94, *(v6 + 59104))))) & 1) == 0 && (*(v6 + 19392) & 1) == 0 && (TXTextLayout::isAnyParagraphDirty(v6) & 1) == 0 && OZChannel::getValueAsInt((v6 + 20464), MEMORY[0x277CC08F0], 0.0) != 2 && !v3->var22)
    {
      v73 = *v79;
      v74 = *(v14 + 264);
      *(v5 + 16) = *(v14 + 248);
      *(v5 + 32) = v74;
      *v5 = v73;
      goto LABEL_108;
    }

    *(v6 + 59088) = xmmword_2603429E0;
    *(v6 + 59072) = xmmword_2603429E0;
    *(v6 + 59056) = xmmword_2603429E0;
    OZRenderParams::OZRenderParams(&v99);
    OZRenderParams::setState(&v99, v3);
    v78 = (v14 + 240);
    v75 = v5;
    v101 = 1;
    v26 = *v14;
    v25 = *(v14 + 8);
    if (*v14 != v25)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      v77 = _Q0;
      while (1)
      {
        v92 = 0uLL;
        v93 = v77;
        v90 = xmmword_2603429E0;
        v91 = xmmword_2603429E0;
        v89 = xmmword_2603429E0;
        if ((v7 & 1) == 0)
        {
          break;
        }

        TXTextObject::getBoundingImageVolume(*v26, &v89, &v99);
LABEL_53:
        v44 = v7;
        v88 = 0x3FF0000000000000;
        v85 = 0x3FF0000000000000;
        v82 = 0x3FF0000000000000;
        var0.value = 0x3FF0000000000000;
        *&var0.timescale = 0u;
        v81 = 0u;
        v83 = 0u;
        v84 = 0u;
        v86 = 0u;
        v87 = 0u;
        TXTextObject::getTransformMatrix(*v26, &var0, &v99, 1, 1, 0, 1, 0.0, 0.0);
        v45 = 0;
        v46 = 0;
        v47 = -1.0;
        v48 = 1.0;
        v49 = 1.0;
        v50 = -1.0;
        v51 = 1.0;
        v52 = -1.0;
        do
        {
          v53 = (&v90 + 8);
          if ((v46 & 2) != 0)
          {
            v53 = &v90;
          }

          v54 = *v53;
          v55 = (&v91 + 8);
          if (v46 >= 4)
          {
            v55 = &v91;
          }

          v56 = *v55;
          v96 = *(&v89 | v45 & 8 ^ 8);
          v97 = v54;
          v98 = v56;
          PCMatrix44Tmpl<double>::transform<double>(&var0.value, &v96, &v96);
          if (v45)
          {
            if (v48 >= v96)
            {
              v48 = v96;
            }

            if (v47 <= v96)
            {
              v47 = v96;
            }

            if (v49 >= v97)
            {
              v49 = v97;
            }

            if (v50 <= v97)
            {
              v50 = v97;
            }

            if (v51 >= v98)
            {
              v51 = v98;
            }

            if (v52 <= v98)
            {
              v52 = v98;
            }
          }

          else
          {
            v50 = v97;
            v52 = v98;
            v51 = v98;
            v49 = v97;
            v47 = v96;
            v48 = v96;
          }

          ++v46;
          v45 += 8;
        }

        while (v45 != 64);
        v57 = *v79;
        v58 = *v78;
        if (*v79 <= *v78 && (v60 = *(v14 + 248), v59 = *(v14 + 256), v60 <= v59) && (v62 = *(v14 + 264), v61 = *(v14 + 272), v62 <= v61))
        {
          v64 = v48 <= v47 && v49 <= v50 && v51 <= v52;
          v7 = v44;
          if (!v64)
          {
            goto LABEL_79;
          }

          if (v57 >= v48)
          {
            v57 = v48;
          }

          if (v58 <= v47)
          {
            v58 = v47;
          }

          *(v14 + 232) = v57;
          *(v14 + 240) = v58;
          if (v60 >= v49)
          {
            v60 = v49;
          }

          if (v59 <= v50)
          {
            v59 = v50;
          }

          *(v14 + 248) = v60;
          *(v14 + 256) = v59;
          if (v62 >= v51)
          {
            v65 = v51;
          }

          else
          {
            v65 = v62;
          }

          *(v14 + 264) = v65;
          if (v61 > v52)
          {
            v52 = v61;
          }
        }

        else
        {
          *(v14 + 232) = v48;
          *(v14 + 240) = v47;
          *(v14 + 248) = v49;
          *(v14 + 256) = v50;
          *(v14 + 264) = v51;
          v7 = v44;
        }

        *(v14 + 272) = v52;
LABEL_79:
        v26 += 2;
        if (v26 == v25)
        {
          goto LABEL_103;
        }
      }

      var29 = v3->var29;
      if (var29 <= 1)
      {
        if (var29)
        {
          if (var29 == 1)
          {
            v29 = *(*v26 + 33);
            if (v29)
            {
              v30 = *(v29 + 8);
              v31 = *(v29 + 16);
              if (v31)
              {
                atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v31 = 0;
              v30 = 0;
            }

            var0 = v3->var0;
            Size = TXTextStyle::getSize(v30, &var0, 0.0);
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            v38 = Size;
            CapHeight = TXTextObject::getCapHeight(*v26, Size);
            TXTextObject::getBoundingRectForGlyph(*v26, v38);
LABEL_51:
            v92 = v40;
            *&v93 = v41;
            *(&v93 + 1) = CapHeight;
          }
        }

        else
        {
          TypographicBounds = TXTextObject::getTypographicBounds(*v26);
          v33 = *(TypographicBounds + 16);
          v92 = *TypographicBounds;
          v93 = v33;
        }

LABEL_52:
        *&v89 = v92.f64[0];
        *(&v89 + 1) = v92.f64[0] + *&v93;
        *&v90 = v92.f64[1];
        *(&v90 + 1) = v92.f64[1] + *(&v93 + 1);
        v91 = 0uLL;
        goto LABEL_53;
      }

      if (var29 != 2)
      {
        if (var29 == 3)
        {
          TXTextObject::getImageBoundsWithFourCornerPinning(*v26, &v99, &v92, 5);
        }

        goto LABEL_52;
      }

      v34 = *(*v26 + 33);
      if (v34)
      {
        v35 = *(v34 + 8);
        v36 = *(v34 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }

      var0 = v3->var0;
      v42 = TXTextStyle::getSize(v35, &var0, 0.0);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      v43 = v42;
      CapHeight = TXTextObject::getXHeight(*v26, v42);
      TXTextObject::getBoundingRectForGlyph(*v26, v43);
      goto LABEL_51;
    }

LABEL_103:
    v66 = (v14 + 240);
    if (OZChannel::getValueAsInt((v76 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || OZChannel::getValueAsInt((v76 + 20464), MEMORY[0x277CC08F0], 0.0) == 3)
    {
      *(v14 + 248) = 0.0 - TXTextLayout::getScrollPositionInPixels(v76) + *(v14 + 248);
      ScrollPositionInPixels = TXTextLayout::getScrollPositionInPixels(v76);
      v66 = (v14 + 256);
    }

    else
    {
      if (OZChannel::getValueAsInt((v76 + 20464), MEMORY[0x277CC08F0], 0.0) != 4)
      {
        goto LABEL_107;
      }

      *v79 = 0.0 - TXTextLayout::getScrollPositionInPixels(v76) + *v79;
      ScrollPositionInPixels = TXTextLayout::getScrollPositionInPixels(v76);
    }

    *v66 = 0.0 - ScrollPositionInPixels + *v66;
LABEL_107:
    v68 = *v79;
    v69 = *(v14 + 264);
    v75[1] = *(v14 + 248);
    v75[2] = v69;
    *v75 = v68;
    *(v76 + 59104) = v94;
    OZRenderParams::~OZRenderParams(&v99);
LABEL_108:
    OZLockingGroup::WriteSentry::~WriteSentry(v95);
    return;
  }

  v99 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v100 = _Q0;
  if (v3->var20)
  {
    (*(*v6 + 352))(v6, &v99);
  }

  else
  {
    (*(*(v6 + 200) + 1488))(v6 + 200, &v99, v3);
  }

  v70 = *(&v99 + 1);
  v71 = *&v99 + *&v100;
  v72 = *(&v99 + 1) + *(&v100 + 1);
  *v5 = v99;
  *(v5 + 8) = v71;
  *(v5 + 16) = v70;
  *(v5 + 24) = v72;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
}

void TXTextLayout::updateLineBreaksByHardLine(TXTextLayout *this)
{
  v2 = this + 49152;
  v3 = *(this + 2379) - *(this + 2378);
  if (v3)
  {
    v4 = v3 >> 3;
    v5 = -1;
    do
    {
      v6 = (v5 + 2);
      ++v5;
    }

    while (v4 > v6);
  }

  else
  {
    v5 = -1;
  }

  if (*(this + 13052) < v5)
  {
    v7 = 2 * v5 + 1;
  }

  else
  {
    v7 = *(this + 13052);
  }

  PCArray<unsigned long,PCArray_Traits<unsigned long>>::resize(this + 52200, v5, v7);
  if (v5)
  {
    v8 = *(v2 + 383);
    v9 = *(this + 2378);
    v10 = (*(this + 2379) - v9) >> 3;
    v11 = v5;
    do
    {
      if (!v10)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *v9++;
      *v8++ = *(v12 + 864) + *(v12 + 856);
      --v10;
      --v11;
    }

    while (v11);
  }
}

uint64_t TXTextLayout::getLineBreaks(TXTextLayout *this, unint64_t **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = this + 49152;
  result = *(this + 13053);
  if (result < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 383);
  }

  *a2 = v4;
  return result;
}

void TXTextLayout::updateLineBreaks(PCString *this)
{
  v2 = this + 6526;
  var0 = this[2378].var0;
  v4 = this[2379].var0;
  if (var0 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = ((v4 - var0) >> 3) - 1;
    do
    {
      isa = var0->isa;
      var0 = (var0 + 8);
      v5 = v5 - (v7 == v6++) + isa[219];
    }

    while (var0 != v4);
  }

  if (SLODWORD(v2->var0) < v5)
  {
    v9 = 2 * v5 + 1;
  }

  else
  {
    v9 = v2->var0;
  }

  PCArray<unsigned long,PCArray_Traits<unsigned long>>::resize(&this[6525], v5, v9);
  if (v5)
  {
    v10 = this[2378].var0;
    v11 = this[2379].var0;
    if (v10 != v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = v2[1].var0;
      v15 = ((v11 - v10) >> 3) - 1;
      do
      {
        v16 = v10->isa;
        v17 = (*(v10->isa + 219) - 1);
        if (*(v10->isa + 219) == 1)
        {
          v21 = v12;
        }

        else
        {
          v18 = v16[114];
          v19 = v18;
          do
          {
            if (v18)
            {
              v20 = *v19;
            }

            else
            {
              v20 = 0;
            }

            v21 = (v12 + 1);
            *(&v14->isa + v12) = v20;
            ++v19;
            LODWORD(v12) = v12 + 1;
            --v17;
          }

          while (v17);
        }

        if (v15 != v13)
        {
          *(&v14->isa + v21) = v16[108] + v16[107];
          v21 = (v21 + 1);
        }

        v10 = (v10 + 8);
        ++v13;
        v12 = v21;
      }

      while (v10 != v11);
    }
  }

  HIDWORD(this[2415].var0) = v5 + 1;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*&this[26].var0->info, xmmword_260347A80)))) & 1) == 0)
  {
    StringPtr = TXChannelString::getStringPtr(&this[2381]);
    v23 = PCString::size(StringPtr);
    TXChannelString::getString(this + 2381, &theString);
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, (v23 - 1));
    if (TXCharacterSetIsNewline(CharacterAtIndex))
    {
      --HIDWORD(this[2415].var0);
    }

    PCString::~PCString(&theString);
  }
}

BOOL TXTextLayout::isLineBreak(TXTextLayout *this, uint64_t a2, unint64_t *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 1;
    v5 = a4;
    v6 = a3;
    v7 = 1;
    do
    {
      if (a3 && *v6 == a2)
      {
        break;
      }

      v7 = v4 < a4;
      ++v6;
      ++v4;
      --v5;
    }

    while (v5);
  }

  else
  {
    return 0;
  }

  return v7;
}

void TXTextLayout::computeLineOffsets(PCString *this, int a2, int a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (!a4)
  {
    *a5 = 0;
    TXChannelString::getString(this + 2381, &v9);
    v7 = PCString::size(&v9);
    goto LABEL_6;
  }

  if (a2)
  {
    *a5 = a4[a2 - 1];
    if (a3 - 1 == a2)
    {
      TXChannelString::getString(this + 2381, &v9);
      v7 = PCString::size(&v9);
LABEL_6:
      *a6 = v7;
      PCString::~PCString(&v9);
      return;
    }

    v8 = a4[a2];
  }

  else
  {
    *a5 = 0;
    v8 = *a4;
  }

  *a6 = v8;
}

uint64_t TXTextLayout::timeGlyphPropertiesMap(TXTextLayout *this)
{
  if (!*(this + 7649))
  {
    operator new();
  }

  return *(this + 7649);
}

uint64_t TXTextLayout::getPosition@<X0>(TXTextLayout *this@<X0>, CMTime *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v7 = TXTextLayout::timeGlyphPropertiesMap(this);

  return TXTimeGlyphPropertiesMap::getPosition(v7, a2, a3, a4);
}

double TXTextLayout::setPosition(TXTextLayout *a1, CMTime *a2, unsigned int *a3, __n128 *a4)
{
  v7 = TXTextLayout::timeGlyphPropertiesMap(a1);

  *&result = TXTimeGlyphPropertiesMap::setPosition(v7, a2, a3, a4).n128_u64[0];
  return result;
}

uint64_t TXTextLayout::getPathRotation@<X0>(TXTextLayout *this@<X0>, CMTime *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v7 = TXTextLayout::timeGlyphPropertiesMap(this);

  return TXTimeGlyphPropertiesMap::getPathRotation(v7, a2, a3, a4);
}

double TXTextLayout::setPathRotation(TXTextLayout *a1, CMTime *a2, unsigned int *a3, __n128 *a4)
{
  v7 = TXTextLayout::timeGlyphPropertiesMap(a1);

  *&result = TXTimeGlyphPropertiesMap::setPathRotation(v7, a2, a3, a4).n128_u64[0];
  return result;
}

double TXTextLayout::getTypeOn(TXTextLayout *this, unsigned int a2, CMTime *a3)
{
  v5 = TXTextLayout::timeGlyphPropertiesMap(this);

  return TXTimeGlyphPropertiesMap::getTypeOn(v5, a2, a3);
}

void TXTextLayout::getSelectionBounds(uint64_t a1, uint64_t a2, const OZRenderState *a3)
{
  v6 = (a1 + 19256);
  if (*(a1 + 19256) == *(a1 + 19260) || (*(a1 + 19320) & 1) != 0)
  {
    v22 = *(*(a1 + 200) + 1488);
    v23 = a1 + 200;

    v22(v23);
  }

  else
  {
    OZRenderParams::OZRenderParams(v28);
    OZRenderParams::setState(v28, a3);
    __asm { FMOV            V0.2D, #-1.0 }

    v24 = _Q0;
    *(a2 + 16) = _Q0;
    v12 = Li3DEngineScene::sceneManager(a1);
    OZLockingGroup::WriteSentry::WriteSentry(v27, v12);
    v13 = a1 + 58824;
    v14 = *(a1 + 58824);
    v15 = *(v13 + 8);
    while (v14 != v15)
    {
      v16 = *v14;
      v17 = *(*v14 + 184);
      v18 = *v6;
      v19 = v6[1];
      if (*v6 >= v19)
      {
        v20 = v6[1];
      }

      else
      {
        v20 = *v6;
      }

      if (v18 <= v19)
      {
        v18 = v6[1];
      }

      if (v20 <= v17 && v18 > v17)
      {
        v25 = 0uLL;
        v26 = v24;
        TXTextObject::getTransformedImageBoundsWithStyles(v16, &v25, v28);
        if (*&v26 >= 0.0 && *(&v26 + 1) >= 0.0)
        {
          PCRect<double>::operator|=(a2, &v25);
        }
      }

      v14 += 2;
    }

    OZLockingGroup::WriteSentry::~WriteSentry(v27);
    OZRenderParams::~OZRenderParams(v28);
  }
}

void sub_25FAE92C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::getBothMarginScale(TXTextLayout *this, const CMTime *a2)
{
  shouldScaleToBothMargins = TXTextLayout::shouldScaleToBothMargins(this);
  hasLinkedMarginScale = TXTextLayout::hasLinkedMarginScale(this);
  if ((shouldScaleToBothMargins & 1) != 0 || hasLinkedMarginScale)
  {
    OZChannel::getInitialValue((this + 61464));
    OZChannel::getValueAsDouble((this + 61464), a2, 0.0);
  }
}

uint64_t TXTextLayout::hasLinkedMarginScale(TXTextLayout *this)
{
  v12 = &v12;
  v13 = &v12;
  v14 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(this + 7683, &v12, 1);
  v1 = v13;
  if (v13 == &v12)
  {
LABEL_15:
    v10 = 0;
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
              v9 = v8 && v6;
              if (v9 && v8[6] == 376)
              {
                break;
              }
            }
          }
        }
      }

      v1 = v1[1];
      if (v1 == &v12)
      {
        goto LABEL_15;
      }
    }

    v10 = 1;
  }

  std::__list_imp<unsigned int>::clear(&v12);
  return v10;
}

void sub_25FAE952C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

double TXTextLayout::getYMarginScale(TXTextLayout *this)
{
  if ((TXTextLayout::shouldScaleToTBMargins(this) & 1) != 0 || (shouldScaleProportionallyToLeftRightMargins = TXTextLayout::shouldScaleProportionallyToLeftRightMargins(this), result = 1.0, shouldScaleProportionallyToLeftRightMargins))
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
    v5 = 61616;
    if (!ValueAsInt)
    {
      v5 = 61624;
    }

    return *(this + v5);
  }

  return result;
}

BOOL TXTextLayout::scaleAffectsLayout(TXTextLayout *this)
{
  if (*(this + 63728) == 1)
  {
    return *(this + 15933) != 0;
  }

  if (OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    return 1;
  }

  return OZChannel::getValueAsInt((this + 59408), MEMORY[0x277CC08F0], 0.0) != 0;
}

void TXTextLayout::getWordVolume(TXTextLayout *this@<X0>, unint64_t a2@<X1>, int a3@<W2>, float64x2_t *a4@<X8>)
{
  a4[1] = xmmword_2603429E0;
  a4[2] = xmmword_2603429E0;
  *a4 = xmmword_2603429E0;
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  v9 = PCString::size(StringPtr);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      do
      {
        v12 = TXChannelString::getStringPtr((this + 19048));
        CharacterAtIndex = CFStringGetCharacterAtIndex(*v12, v11);
        if (!TXCharacterSetIsWhitespace(CharacterAtIndex))
        {
          break;
        }

        v11 = (v11 + 1);
      }

      while (v11 < v10);
      v14 = (*(*this + 1112))(this, v11, 1);
      if (v14 == -1)
      {
        break;
      }

      v16 = v14;
      v17 = (v14 + v15);
      if (v14 <= a2 && v17 > a2)
      {
        v19 = Li3DEngineScene::sceneManager(this);
        OZLockingGroup::WriteSentry::WriteSentry(v47, v19);
        TextObjectIterWithCharOffset = TXTextLayout::getTextObjectIterWithCharOffset(this, v16);
        v21 = TXTextLayout::getTextObjectIterWithCharOffset(this, v17);
        if (TextObjectIterWithCharOffset != v21)
        {
          v22 = MEMORY[0x277CC08F0];
          do
          {
            if (!TXCharacterSetIsWhitespaceOrNewline(*(*TextObjectIterWithCharOffset + 120)))
            {
              v45 = xmmword_2603429E0;
              v46 = xmmword_2603429E0;
              v44 = xmmword_2603429E0;
              v23 = *TextObjectIterWithCharOffset;
              if (a3)
              {
                TXTextObject::getBoundingTypographicVolume(v23, &v44);
              }

              else
              {
                TXTextObject::getBoundingImageVolume(v23, &v44, v22);
              }

              v24 = *(*TextObjectIterWithCharOffset + 168);
              v25 = vdupq_lane_s64(v24.i64[0], 0);
              v26 = vaddq_f64(vdupq_laneq_s64(v24, 1), v45);
              v27 = vaddq_f64(v25, v44);
              v44 = v27;
              v45 = v26;
              v28 = v46;
              v29 = *&v46 + 0.0;
              v30 = *(&v46 + 1) + 0.0;
              *&v46 = *&v46 + 0.0;
              *(&v46 + 1) = *(&v46 + 1) + 0.0;
              v31 = *a4;
              if (vmovn_s64(vcgtq_f64(*a4, vdupq_laneq_s64(*a4, 1))).u8[0] & 1) != 0 || (v32 = a4[1], (vmovn_s64(vcgtq_f64(v32, vdupq_laneq_s64(v32, 1))).u8[0]) || (v34 = a4[2].f64[0], v33 = a4[2].f64[1], v34 > v33))
              {
                v35 = v45;
                *a4 = v44;
                a4[1] = v35;
                a4[2] = v46;
              }

              else if (v27.f64[0] <= v27.f64[1] && v26.f64[0] <= v26.f64[1] && *&v28 <= *(&v28 + 1))
              {
                v38 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v27, v31), vcgtq_f64(v26, v32)));
                v39 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v31, v27), vcgtq_f64(v32, v26)));
                v40.i64[0] = v38.u16[0];
                v40.i64[1] = v39.u16[1];
                v41 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v40, 0x3FuLL)), v31, v27);
                v40.i64[0] = v38.u16[2];
                v40.i64[1] = v39.u16[3];
                *a4 = v41;
                a4[1] = vbslq_s8(vcltzq_s64(vshlq_n_s64(v40, 0x3FuLL)), v32, v26);
                if (v34 >= *&v28)
                {
                  v42 = v29;
                }

                else
                {
                  v42 = v34;
                }

                if (v33 <= *(&v28 + 1))
                {
                  v43 = v30;
                }

                else
                {
                  v43 = v33;
                }

                a4[2].f64[0] = v42;
                a4[2].f64[1] = v43;
              }
            }

            TextObjectIterWithCharOffset += 16;
          }

          while (TextObjectIterWithCharOffset != v21);
        }

        OZLockingGroup::WriteSentry::~WriteSentry(v47);
        return;
      }

      v11 = v14 + v15;
    }

    while (v10 > v14 + v15);
  }
}

void sub_25FAE991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getTextObjectIterWithCharOffset(TXTextLayout *this, TXTextLayout *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::ReadSentry::ReadSentry(v9, v4);
  TXHelperFunctions::GetTextObjectContainingCharIndex(this, a2, 1, 0, &v7);
  if (v7)
  {
    v5 = *(this + 7353) + 16 * *(v7 + 388);
  }

  else
  {
    v5 = *(this + 7354);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  OZLockingGroup::ReadSentry::~ReadSentry(v9);
  return v5;
}

void sub_25FAE99C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZLockingGroup::ReadSentry::~ReadSentry(va);
  _Unwind_Resume(a1);
}

void TXTextLayout::getLineVolume(TXTextLayout *this@<X0>, CMTime *a2@<X2>, unint64_t a3@<X1>, int a4@<W3>, float64x2_t *a5@<X8>)
{
  for (i = *(this + 2378); i != *(this + 2379); i += 8)
  {
    v10 = *(*i + 856);
    if (v10 <= a3)
    {
      v11 = (v10 + *(*i + 864));
      if (v11 > a3)
      {
        goto LABEL_7;
      }
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_7:
  a5[1] = xmmword_2603429E0;
  a5[2] = xmmword_2603429E0;
  *a5 = xmmword_2603429E0;
  TextObjectIterWithCharOffset = TXTextLayout::getTextObjectIterWithCharOffset(this, v10);
  v13 = TXTextLayout::getTextObjectIterWithCharOffset(this, v11);
  if (TextObjectIterWithCharOffset != v13)
  {
    v14 = v13;
    do
    {
      if (!TXCharacterSetIsWhitespaceOrNewline(*(*TextObjectIterWithCharOffset + 60)))
      {
        v37 = xmmword_2603429E0;
        v38 = xmmword_2603429E0;
        v36 = xmmword_2603429E0;
        v15 = *(*TextObjectIterWithCharOffset + 97);
        if (a4)
        {
          if (!TXTextLayout::getTextObjectTypographicVolumeFromMap(this, &v36, v15))
          {
            TXTextObject::getBoundingTypographicVolume(*TextObjectIterWithCharOffset, &v36);
          }
        }

        else if (!TXTextLayout::getTextObjectVolumeFromMap(this, &v36, v15))
        {
          TXTextObject::getBoundingImageVolume(*TextObjectIterWithCharOffset, &v36, a2);
        }

        v16 = *(*TextObjectIterWithCharOffset + 21);
        v17 = vdupq_lane_s64(v16.i64[0], 0);
        v18 = vaddq_f64(vdupq_laneq_s64(v16, 1), v37);
        v19 = vaddq_f64(v17, v36);
        v36 = v19;
        v37 = v18;
        v20 = v38;
        v21 = *&v38 + 0.0;
        v22 = *(&v38 + 1) + 0.0;
        *&v38 = *&v38 + 0.0;
        *(&v38 + 1) = *(&v38 + 1) + 0.0;
        v23 = *a5;
        if (vmovn_s64(vcgtq_f64(*a5, vdupq_laneq_s64(*a5, 1))).u8[0] & 1) != 0 || (v24 = a5[1], (vmovn_s64(vcgtq_f64(v24, vdupq_laneq_s64(v24, 1))).u8[0]) || (v26 = a5[2].f64[0], v25 = a5[2].f64[1], v26 > v25))
        {
          v27 = v37;
          *a5 = v36;
          a5[1] = v27;
          a5[2] = v38;
        }

        else if (v19.f64[0] <= v19.f64[1] && v18.f64[0] <= v18.f64[1] && *&v20 <= *(&v20 + 1))
        {
          v30 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v19, v23), vcgtq_f64(v18, v24)));
          v31 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v23, v19), vcgtq_f64(v24, v18)));
          v32.i64[0] = v30.u16[0];
          v32.i64[1] = v31.u16[1];
          v33 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v32, 0x3FuLL)), v23, v19);
          v32.i64[0] = v30.u16[2];
          v32.i64[1] = v31.u16[3];
          *a5 = v33;
          a5[1] = vbslq_s8(vcltzq_s64(vshlq_n_s64(v32, 0x3FuLL)), v24, v18);
          if (v26 >= *&v20)
          {
            v34 = v21;
          }

          else
          {
            v34 = v26;
          }

          if (v25 <= *(&v20 + 1))
          {
            v35 = v22;
          }

          else
          {
            v35 = v25;
          }

          a5[2].f64[0] = v34;
          a5[2].f64[1] = v35;
        }
      }

      TextObjectIterWithCharOffset += 2;
    }

    while (TextObjectIterWithCharOffset != v14);
  }
}

BOOL TXTextLayout::getTextObjectTypographicVolumeFromMap(uint64_t a1, _OWORD *a2, unsigned int a3)
{
  v9 = a3;
  v3 = *(a1 + 61176);
  if (v3)
  {
    v10 = &v9;
    v5 = std::__tree<std::__value_type<unsigned int,PCBox<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCBox<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCBox<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v3, &v9);
    v6 = *(v5 + 5);
    v7 = *(v5 + 9);
    a2[1] = *(v5 + 7);
    a2[2] = v7;
    *a2 = v6;
  }

  return v3 != 0;
}

BOOL TXTextLayout::getTextObjectVolumeFromMap(uint64_t a1, _OWORD *a2, unsigned int a3)
{
  v9 = a3;
  v3 = *(a1 + 61168);
  if (v3)
  {
    v10 = &v9;
    v5 = std::__tree<std::__value_type<unsigned int,PCBox<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCBox<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCBox<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v3, &v9);
    v6 = *(v5 + 5);
    v7 = *(v5 + 9);
    a2[1] = *(v5 + 7);
    a2[2] = v7;
    *a2 = v6;
  }

  return v3 != 0;
}

void TXTextLayout::getWordBounds(PCString *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v42, v8);
  v9 = (this->var0[22].data)(this, a2);
  v10 = v9;
  for (i = this[8030].var0; i; i = i->isa)
  {
    isa = i[1].isa;
    if (v9 >= isa)
    {
      if (isa >= v9)
      {
        LODWORD(v36.f64[0]) = v9;
        v35.var0.var0 = &v36;
        v31 = std::__tree<std::__value_type<int,PCRect<double>>,std::__map_value_compare<int,std::__value_type<int,PCRect<double>>,std::less<int>,true>,std::allocator<std::__value_type<int,PCRect<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&this[8029], &v36);
        v32 = *(v31 + 7);
        *a4 = *(v31 + 5);
        *(a4 + 16) = v32;
        goto LABEL_33;
      }

      i = (i + 8);
    }
  }

  TXChannelString::getString(this + 2381, &v41);
  if (PCString::empty(&v41) || (v13 = (this->var0[34].length)(this, a2, 1), v13 == -1))
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a4 + 16) = _Q0;
  }

  else
  {
    v15 = 0;
    v16 = v13 + v14;
    *a4 = 0;
    *(a4 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v33 = _Q0;
    *(a4 + 16) = _Q0;
    v40 = v13;
    if (v13 < v13 + v14)
    {
      v22 = 0;
      v15 = 0;
      do
      {
        if (std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::find<unsigned int>(&this[8032].var0, &v40))
        {
          TXTextLayout::cachedTextObjectForCharIndex(this, v40, &v38);
          v23 = v38;
          if (v38 == v22)
          {
            v23 = v22;
          }

          else
          {
            v36 = 0uLL;
            v37 = v33;
            if (a3)
            {
              TypographicBounds = TXTextObject::getTypographicBounds(v38);
              v25 = *TypographicBounds;
              v26 = TypographicBounds[1];
            }

            else
            {
              OZRenderState::OZRenderState(&v35);
              TXTextObject::getImageBounds(v23, &v35, v34);
              v25 = v34[0];
              v26 = v34[1];
            }

            v36 = v25;
            v37 = v26;
            if (v26.f64[0] > 0.0 && v37.f64[1] > 0.0)
            {
              v36 = vaddq_f64(*(v23 + 168), v36);
              PCRect<double>::operator|=(a4, &v36);
            }

            v27 = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            v15 = v27;
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          v22 = v23;
        }

        ++v40;
      }

      while (v40 < v16);
    }

    LODWORD(v36.f64[0]) = v10;
    v35.var0.var0 = &v36;
    v28 = std::__tree<std::__value_type<int,PCRect<double>>,std::__map_value_compare<int,std::__value_type<int,PCRect<double>>,std::less<int>,true>,std::allocator<std::__value_type<int,PCRect<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&this[8029], &v36);
    v29 = *a4;
    *(v28 + 7) = *(a4 + 16);
    *(v28 + 5) = v29;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  PCString::~PCString(&v41);
LABEL_33:
  OZLockingGroup::WriteSentry::~WriteSentry(v42);
}

uint64_t *TXTextLayout::cachedTextObjectForCharIndex@<X0>(TXTextLayout *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v7 = &v6;
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 8032, &v6);
  v5 = result[4];
  *a3 = result[3];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void TXTextLayout::getLineBounds(TXTextLayout *this@<X0>, CMTime *a2@<X2>, unint64_t a3@<X1>, char a4@<W3>, int a5@<W4>, double *a6@<X8>)
{
  v11 = a6;
  *a6 = 0.0;
  a6[1] = 0.0;
  v12 = 0.0;
  OZChannel::getValueAsDouble((this + 22136), a2, 0.0);
  v43 = v13;
  v14 = *(this + 2378);
  v44 = *(this + 2379);
  if (v14 == v44)
  {
    v36 = -1.0;
    v37 = -1.0;
  }

  else
  {
    v38 = v11;
    v15 = 0;
    v42 = -1.0;
    v39 = 0.0;
    v16 = 0.0;
    v41 = 0.0;
    v40 = -1.0;
    do
    {
      v17 = *v14;
      v53 = 0;
      *&v49.var0.var0 = *&a2->value;
      v49.var0.var3 = a2->epoch;
      OZChannel::getValueAsDouble((v17 + 680), &v49, 0.0);
      v19 = v18;
      (*(*this + 712))(this, a2);
      if (*(v17 + 876))
      {
        v21 = 0;
        v22 = (v43 + v19) * v20;
        while (1)
        {
          TXParagraphStyle::getLineMetrics(v17, v21, &v50);
          v23 = v51;
          v24 = v51 + v52;
          v25 = v50;
          if (a4)
          {
            v26 = vabdd_f64(v24, v51);
            v27 = vabdd_f64(*&v50, *(&v50 + 1));
            v28 = v22 + v27;
            v29 = v15 ? v16 : *&v50;
            if (!v15)
            {
              v28 = v22 - *(&v50 + 1);
            }
          }

          else
          {
            OZRenderState::OZRenderState(&v49);
            *&v49.var0.var0 = *&a2->value;
            v49.var0.var3 = a2->epoch;
            v30 = *(v17 + 856);
            v29 = 0.0;
            v31 = 3.40282347e38;
            if (v30 < (v30 + *(v17 + 864)))
            {
              v31 = 3.40282347e38;
              do
              {
                TXHelperFunctions::GetTextObjectContainingCharIndex(this, v30, a5, &v53, &v47);
                if (!TXCharacterSetIsWhitespaceOrNewline(*(v47 + 60)))
                {
                  TXTextObject::getImageBounds(v47, &v49, &v45);
                  if (v29 < v45.f64[1] + v46)
                  {
                    v29 = v45.f64[1] + v46;
                  }

                  if (v31 > v45.f64[1])
                  {
                    v31 = v45.f64[1];
                  }
                }

                if (v48)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                }

                v30 = (v30 + 1);
              }

              while (v30 < *(v17 + 864) + *(v17 + 856));
            }

            v26 = vabdd_f64(v24, v23);
            v27 = vabdd_f64(v29, v31);
            v32 = v22 + vabdd_f64(*&v25, *(&v25 + 1));
            if (v15)
            {
              v29 = v16 - (*&v25 - v29);
              v28 = v32;
            }

            else
            {
              v28 = v22 - *(&v25 + 1);
            }
          }

          v16 = v16 - v28;
          v33 = *(v17 + 856);
          if (v33 <= a3 && *(v17 + 864) + v33 > a3)
          {
            break;
          }

          ++v21;
          ++v15;
          if (v21 >= *(v17 + 876))
          {
            goto LABEL_29;
          }
        }

        v49.var0.var0 = 0;
        v45.f64[0] = 0.0;
        Alignment = TXParagraphStyle::getAlignment(v17);
        ValueAsInt = OZChannel::getValueAsInt((this + 20464), MEMORY[0x277CC08F0], 0.0);
        TXTextLayout::getAlignmentOffsetForParagraph(this, v17, &v49.var0.var0, v45.f64, Alignment, ValueAsInt, -1.0, -1.0);
        v40 = v27;
        v41 = v23 + *&v49.var0.var0;
        v39 = v29 - v27 + v45.f64[0];
        v42 = v26;
      }

LABEL_29:
      ++v14;
    }

    while (v14 != v44);
    v11 = v38;
    v36 = v40;
    v38[1] = v39;
    v12 = v41;
    v37 = v42;
  }

  *v11 = v12;
  v11[2] = v37;
  v11[3] = v36;
}

void sub_25FAEA450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  *a9 = a12;
  a9[1] = a10;
  a9[2] = a13;
  a9[3] = a11;
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::getTypographicBox(uint64_t a1, float64x2_t *a2, CMTime *a3, int a4)
{
  StringPtr = TXChannelString::getStringPtr((a1 + 19048));
  if (PCString::size(StringPtr))
  {
    v64 = a4;
    v65 = a2;
    v79 = *a3;
    v63 = a3;
    v9 = *(a1 + 19024);
    v10 = *(a1 + 19032);
    v11 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0);
    v13 = OZChannel::getValueAsInt((a1 + 20720), v11, 0.0);
    OZChannel::getValueAsDouble((a1 + 22136), &v79, 0.0);
    v66 = v14;
    if (v9 == v10)
    {
      v47 = -1.0;
      v43 = 1.0;
      v46 = 1.0;
      v45 = -1.0;
      v44 = 1.0;
      v42 = -1.0;
    }

    else
    {
      v15 = 0;
      v16 = 1.0;
      v17 = -1.0;
      v18 = MEMORY[0x277CC08F0];
      v19 = 0.0;
      v68 = 0.0;
      v20 = -1.0;
      v21 = 1.0;
      v22 = -1.0;
      v23 = 1.0;
      do
      {
        v71 = v21;
        v76 = v16;
        v67 = v9;
        v24 = *v9;
        v78 = v79;
        OZChannel::getValueAsDouble((v24 + 680), &v78, 0.0);
        v26 = v25;
        (*(*a1 + 712))(a1, &v79);
        if (*(v24 + 876))
        {
          v28 = 0;
          v69 = (v66 + v26) * v27;
          do
          {
            v70 = v17;
            v29 = (*(v24 + 888) + (v28 << 6));
            v30 = *v29;
            v31 = fabs(*(v24 + 920));
            v32 = vabdd_f64(*v29, v29[1]);
            if (v15)
            {
              v33 = ValueAsInt == 4;
            }

            else
            {
              v33 = 1;
            }

            v34 = v33;
            if (v13)
            {
              v35 = v19;
            }

            else
            {
              v35 = v29[1];
            }

            if (v34)
            {
              v36 = v29[1];
            }

            else
            {
              v36 = v35;
            }

            v37 = OZChannel::getValueAsInt((a1 + 20464), v18, 0.0);
            v75 = v19;
            v73 = v36;
            if (v13)
            {
              if (v37 == 4)
              {
                v38 = 0.0 - v68 - v31;
              }

              else
              {
                v38 = 0.0 - v31;
              }

              v72 = v31;
              v31 = v32;
            }

            else
            {
              if (v34)
              {
                v39 = v30;
              }

              else
              {
                v39 = v19;
              }

              v38 = v39 - v32;
              if (v37 == 4)
              {
                v36 = v68;
              }

              else
              {
                v36 = 0.0;
              }

              v72 = v32;
            }

            v74 = v32;
            v40 = *(v24 + 856);
            v41 = (v40 + *(v24 + 864));
            v42 = 0.0;
            v43 = 3.40282347e38;
            while (v40 < v41)
            {
              TXHelperFunctions::GetTextObjectContainingCharIndex(a1, v40, 1, 0, &v78);
              v77 = 0.0;
              OZChannelBase::setRangeName(v78.value, &v79);
              if (v43 > 0.0)
              {
                v43 = v77;
              }

              if (*&v78.timescale)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v78.timescale);
              }

              v40 = (v40 + 1);
              v41 = (*(v24 + 864) + *(v24 + 856));
            }

            v44 = v36;
            v45 = v36 + v31;
            v46 = v38;
            v47 = v72 + v38;
            if (v76 > v20)
            {
              v48 = v73;
            }

            else
            {
              v48 = v73;
              if (v71 <= v22 && v23 <= v70)
              {
                if (v76 >= v36)
                {
                  v49 = v36;
                }

                else
                {
                  v49 = v76;
                }

                if (v20 <= v45)
                {
                  v50 = v36 + v31;
                }

                else
                {
                  v50 = v20;
                }

                if (v71 >= v38)
                {
                  v51 = v38;
                }

                else
                {
                  v51 = v71;
                }

                if (v22 <= v47)
                {
                  v52 = v72 + v38;
                }

                else
                {
                  v52 = v22;
                }

                if (v23 >= v43)
                {
                  v53 = v43;
                }

                else
                {
                  v53 = v23;
                }

                if (v70 <= 0.0)
                {
                  v54 = 0.0;
                }

                else
                {
                  v54 = v70;
                }

                v56 = v36 <= v45 && v38 <= v47 && v43 <= 0.0;
                if (v56)
                {
                  v43 = v53;
                }

                else
                {
                  v43 = v23;
                }

                if (v56)
                {
                  v47 = v52;
                }

                else
                {
                  v47 = v22;
                }

                if (v56)
                {
                  v46 = v51;
                }

                else
                {
                  v46 = v71;
                }

                if (v56)
                {
                  v45 = v50;
                }

                else
                {
                  v45 = v20;
                }

                if (v56)
                {
                  v44 = v49;
                }

                else
                {
                  v44 = v76;
                }

                if (v56)
                {
                  v42 = v54;
                }

                else
                {
                  v42 = v70;
                }
              }
            }

            v57 = v69 - v48;
            if (v15)
            {
              v57 = v69 + v74;
              v58 = 1;
            }

            else
            {
              v58 = v13 == 0;
            }

            v59 = v75 - v57;
            if (v58)
            {
              v19 = v59;
            }

            else
            {
              v19 = v59 - (v69 + v74);
            }

            ++v28;
            ++v15;
            v17 = v42;
            v76 = v44;
            v20 = v45;
            v71 = v46;
            v22 = v47;
            v23 = v43;
          }

          while (v28 < *(v24 + 876));
        }

        else
        {
          v43 = v23;
          v47 = v22;
          v46 = v71;
          v45 = v20;
          v44 = v76;
          v42 = v17;
        }

        v60 = *(v24 + 920);
        v9 = v67 + 1;
        v17 = v42;
        v16 = v44;
        v20 = v45;
        v68 = v68 + v60;
        v21 = v46;
        v22 = v47;
        v23 = v43;
      }

      while (v67 + 1 != v10);
    }

    v65->f64[0] = v44;
    v65->f64[1] = v45;
    v65[1].f64[0] = v46;
    v65[1].f64[1] = v47;
    v65[2].f64[0] = v43;
    v65[2].f64[1] = v42;
    if (v64 && (OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 && (*(a1 + 52256) & 1) != 0 || OZChannel::getValueAsInt((a1 + 20464), MEMORY[0x277CC08F0], 0.0) == 3 && (*(a1 + 52257) & 1) != 0 || ValueAsInt == 4 && *(a1 + 52258) == 1))
    {
      v77 = 0.0;
      v78.value = 0;
      (*(*a1 + 1016))(a1, &v78, &v77, v63);
      v61 = vaddq_f64(vdupq_lane_s64(*&v77, 0), v65[1]);
      *v65 = vaddq_f64(vdupq_lane_s64(v78.value, 0), *v65);
      v65[1] = v61;
    }
  }

  return 0;
}

void sub_25FAEA9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::getFont(PCString *this, PCString *a2)
{
  v4 = &this[7625];
  PCMutex::lock(&this[7625]);
  v5 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(this + 7634, a2);
  if (&this[7635] == v5)
  {
    Instance = TXFontManager::getInstance(v5);
    CoreTextFont = TXFontManager::getCoreTextFont(Instance, a2);
    std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(this + 7634, a2)[1].info = CoreTextFont;
  }

  else
  {
    CoreTextFont = v5[5].var0;
  }

  PCMutex::unlock(v4);
  return CoreTextFont;
}

void TXTextLayout::getTypographicBoundsWithAlignment(TXTextLayout *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 16) = _Q0;
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  if (PCString::size(StringPtr))
  {
    v11 = 0.0;
    OZChannel::getValueAsDouble((this + 22136), a2, 0.0);
    v13 = *(this + 2378);
    v27 = *(this + 2379);
    if (v13 != v27)
    {
      v14 = v12;
      v15 = 0;
      v16 = *(this + 8050);
      v17 = MEMORY[0x277CC08F0];
      do
      {
        v18 = *v13;
        v33 = *a2;
        OZChannel::getValueAsDouble((v18 + 680), &v33, 0.0);
        v20 = v19;
        (*(*this + 712))(this, a2);
        if (*(v18 + 876))
        {
          v29 = v13;
          v22 = 0;
          v23 = v16 + (v14 + v20) * v21;
          do
          {
            TXParagraphStyle::getLineMetrics(v18, v22, &v33);
            v32[0] = v34;
            v32[1] = v35;
            if ((v15 + v22) >= 1)
            {
              v32[0].f64[1] = v11;
            }

            v30 = 0.0;
            v31 = 0.0;
            Alignment = TXParagraphStyle::getAlignment(v18);
            ValueAsInt = OZChannel::getValueAsInt((this + 20464), v17, 0.0);
            TXTextLayout::getAlignmentOffsetForParagraph(this, v18, &v31, &v30, Alignment, ValueAsInt, -1.0, -1.0);
            v26.f64[0] = v31;
            v26.f64[1] = v30;
            v32[0] = vaddq_f64(v26, v32[0]);
            PCRect<double>::operator|=(a3, v32);
            v11 = v11 - (v23 + *&v33.value - *&v33.timescale);
            ++v22;
          }

          while (v22 < *(v18 + 876));
          v15 += v22;
          v13 = v29;
        }

        ++v13;
      }

      while (v13 != v27);
    }
  }
}

void TXTextLayout::doLineLayout(TXTextLayout *this, unsigned int a2, double a3, CMTime *a4)
{
  v6 = this;
  v114[1] = *MEMORY[0x277D85DE8];
  v7 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v111, v7);
  v8 = *(v6 + 2378);
  if (a2 >= ((*(v6 + 2379) - v8) >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *(v8 + 8 * a2);
  v10 = *(v9 + 864);
  if (v10)
  {
    v11 = *(v9 + 856);
    TXChannelString::getString(v6 + 2381, &valuePtr);
    v91 = v11;
    PCString::substr(&valuePtr, v11, v10, &v107.var0);
    PCString::~PCString(&valuePtr);
    TXTextLayout::getDisplayString(v6, &valuePtr);
    PCString::substr(&valuePtr, v11, v10, &v106.var0);
    PCString::~PCString(&valuePtr);
    v12 = *MEMORY[0x277CBECE8];
    aStr = CFAttributedStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CFAttributedStringBeginEditing(aStr);
    v13 = PCString::cf_str(&v106);
    v115.location = 0;
    v115.length = 0;
    CFAttributedStringReplaceString(aStr, v115, v13);
    __p = 0;
    v109 = 0;
    v110 = 0;
    theArray = 0;
    TXParagraphStyle::getTabs(v9, &valuePtr);
    v14 = (*&valuePtr.b - *&valuePtr.a) >> 3;
    if (*&valuePtr.a)
    {
      valuePtr.b = valuePtr.a;
      operator delete(*&valuePtr.a);
    }

    if (v14 >= 1)
    {
      theArray = CFArrayCreateMutable(v12, v14, MEMORY[0x277CBF128]);
      TXParagraphStyle::getTabs(v9, &valuePtr);
      a = valuePtr.a;
      b = valuePtr.b;
      if (*&valuePtr.a != *&valuePtr.b)
      {
        do
        {
          v17 = TXMakeCTTextTab(**&a);
          CFArrayAppendValue(theArray, v17);
          CFRelease(v17);
          *&a += 8;
        }

        while (*&a != *&b);
        a = valuePtr.a;
      }

      if (a != 0.0)
      {
        valuePtr.b = a;
        operator delete(*&a);
      }

      LODWORD(valuePtr.a) = 4;
      *&valuePtr.b = 8;
      *&valuePtr.c = &theArray;
      std::vector<CTParagraphStyleSetting>::push_back[abi:ne200100](&__p, &valuePtr);
      __src = 0x403C000000000000;
      LODWORD(v103) = 5;
      *(&v103 + 1) = 8;
      p_src = &__src;
      std::vector<CTParagraphStyleSetting>::push_back[abi:ne200100](&__p, &v103);
    }

    if (v109 != __p)
    {
      v18 = CTParagraphStyleCreate(__p, 0xAAAAAAAAAAAAAAABLL * ((v109 - __p) >> 3));
      v116.location = 0;
      v116.length = v10;
      CFAttributedStringSetAttribute(aStr, v116, *MEMORY[0x277CC49F8], v18);
      CFRelease(v18);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (OZChannel::getValueAsInt((v6 + 20720), MEMORY[0x277CC08F0], 0.0))
    {
      v117.location = 0;
      v117.length = v10;
      CFAttributedStringSetAttribute(aStr, v117, *MEMORY[0x277CC4AC8], *MEMORY[0x277CBED28]);
      LODWORD(valuePtr.a) = 2;
      v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v118.location = 0;
      v118.length = v10;
      CFAttributedStringSetAttribute(aStr, v118, *MEMORY[0x277CC4920], v19);
      CFRelease(v19);
    }

    v102 = 0;
    v20 = CFNumberCreate(0, kCFNumberIntType, &v102);
    v119.location = 0;
    v119.length = v10;
    CFAttributedStringSetAttribute(aStr, v119, *MEMORY[0x277CC49F0], v20);
    CFRelease(v20);
    v87 = v10;
    v21 = v91 + v10;
    v90 = v9;
    if (v91 + v10 > v91)
    {
      v22 = v6 + 19368;
      v23 = MEMORY[0x277CC08F0];
      LODWORD(v24) = v91;
      do
      {
        v25 = *(v6 + 2422);
        if (v25 == v22)
        {
          v26 = 0;
        }

        else
        {
          do
          {
            v26 = *(v25 + 16);
            v27 = *(v26 + 24);
            if (v27 <= v24 && *(v26 + 28) + v27 > v24)
            {
              break;
            }

            v25 = *(v25 + 8);
          }

          while (v25 != v22);
        }

        v28 = v6;
        v30 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = *(v26 + 24);
        v31 = *(v26 + 28);
        if (v32 <= v24)
        {
          v33 = v24;
        }

        else
        {
          v33 = v32;
        }

        v34 = (v31 + v32);
        if (v34 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = (v31 + v32);
        }

        *&valuePtr.a = v33 - v91;
        *&valuePtr.b = v24 - v33;
        if (OZChannel::getValueAsInt((v30 + 5504), v23, 0.0))
        {
          v35 = PCString::cf_str(&v107);
          v100 = v30;
          v101 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          TXTextLayout::applyAllCapsSizeToAttributedString(v28, aStr, v35, &v100, &valuePtr, a4);
          v36 = v101;
          if (!v101)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v98 = v30;
          v99 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          TXTextLayout::applyFontToAttributedString(v28, aStr, &v98, &valuePtr, a4, 0);
          v36 = v99;
          if (!v99)
          {
            goto LABEL_39;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
LABEL_39:
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        v37 = v21 > v34;
        v9 = v90;
        v6 = v28;
      }

      while (v37);
    }

    CFAttributedStringEndEditing(aStr);
    *(&v103 + 1) = 0;
    p_src = 0;
    *&v103 = &v103 + 8;
    v97[0] = v91;
    v97[1] = v87;
    TXTextLayout::getKerningsForRange(v6, v97, &v103);
    TXTextLayout::getTrackingForRange(v6, v97, a4, &v103);
    applyKerningsToAttributedString(&v103, 0, aStr);
    __src = 0;
    v95 = 0;
    v96 = 0;
    v38 = *(MEMORY[0x277CBF3A0] + 8);
    v39 = *(MEMORY[0x277CBF3A0] + 24);
    v85 = v6 + 61440;
    if (TXTextLayout::scaleEmojiToCapHeight(v40) && *(v6 + 8023) && __src != v95)
    {
      CFAttributedStringBeginEditing(aStr);
      *(v6 + 8024) = CTFontGetCapHeight(*(v6 + 8023)) / v39;
      *(v6 + 8025) = -v38;
      v41 = __src;
      v42 = v95;
      if (__src != v95)
      {
        v43 = *MEMORY[0x277CC4838];
        do
        {
          location = v41->location;
          v45 = *(v6 + 2422);
          do
          {
            v46 = v45[2];
            v47 = *(v46 + 24);
            if (v47 <= location && *(v46 + 28) + v47 > location)
            {
              break;
            }

            v45 = v45[1];
          }

          while (v45 != (v6 + 19368));
          v48 = *(v46 + 8);
          v49 = *(v46 + 16);
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&valuePtr.a = *&a4->value;
          *&valuePtr.c = a4->epoch;
          Size = TXTextStyle::getSize(v48, &valuePtr, 0.0);
          memset(&valuePtr, 0, sizeof(valuePtr));
          CGAffineTransformMakeScale(&valuePtr, *(v6 + 8024), *(v6 + 8024));
          v51 = CTFontCreateWithName(@"AppleColorEmoji", Size, &valuePtr);
          CFAttributedStringSetAttribute(aStr, *v41, v43, v51);
          CFRelease(v51);
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          ++v41;
        }

        while (v41 != v42);
      }

      CFAttributedStringEndEditing(aStr);
    }

    line = CTLineCreateWithAttributedString(aStr);
    TXParagraphStyle::clearDirectionalRuns(v9);
    GlyphRuns = CTLineGetGlyphRuns(line);
    Count = CFArrayGetCount(GlyphRuns);
    v83 = v6;
    if (Count < 1)
    {
      v61 = 0.0;
      v60 = -1;
      LOBYTE(v78) = 1;
    }

    else
    {
      v86 = Count;
      v88 = GlyphRuns;
      v54 = 0;
      v55 = 0.0;
      key = *MEMORY[0x277CC4838];
      v56 = 1;
      v57 = -1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v88, v54);
        StringRange = CTRunGetStringRange(ValueAtIndex);
        v60 = StringRange.location;
        v61 = *&StringRange.length;
        if (TXTextLayout::scaleEmojiToCapHeight(StringRange.location))
        {
          Attributes = CTRunGetAttributes(ValueAtIndex);
          Value = CFDictionaryGetValue(Attributes, key);
          v64 = CTFontCopyPostScriptName(Value);
          GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
          if (CFStringCompare(v64, @"AppleColorEmoji", 0))
          {
            *(v85 + 343) = CFRetain(Value);
          }

          else
          {
            GlyphsPtr = CTRunGetGlyphsPtr(ValueAtIndex);
            if (!GlyphsPtr)
            {
              operator new[]();
            }

            CTFontGetBoundingRectsForGlyphs(Value, kCTFontOrientationDefault, GlyphsPtr, 0, GlyphCount);
            v67 = v95;
            if (v95 >= v96)
            {
              v69 = __src;
              v70 = v95 - __src;
              v71 = (v95 - __src) >> 4;
              v72 = v71 + 1;
              if ((v71 + 1) >> 60)
              {
                std::vector<double>::__throw_length_error[abi:ne200100]();
              }

              v73 = v96 - __src;
              if ((v96 - __src) >> 3 > v72)
              {
                v72 = v73 >> 3;
              }

              _CF = v73 >= 0x7FFFFFFFFFFFFFF0;
              v75 = 0xFFFFFFFFFFFFFFFLL;
              if (!_CF)
              {
                v75 = v72;
              }

              if (v75)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(&__src, v75);
              }

              *(16 * v71) = StringRange;
              v68 = 16 * v71 + 16;
              memcpy(0, v69, v70);
              v76 = __src;
              __src = 0;
              v95 = v68;
              v96 = 0;
              if (v76)
              {
                operator delete(v76);
              }
            }

            else
            {
              *v95 = StringRange.location;
              *(v67 + 1) = StringRange.length;
              v68 = (v67 + 16);
            }

            v95 = v68;
          }

          CFRelease(v64);
        }

        Status = CTRunGetStatus(ValueAtIndex);
        v78 = !(Status & 1);
        if (v54)
        {
          if ((Status & 1) == v56)
          {
            *&valuePtr.a = v57 + v91;
            valuePtr.b = v55;
            LOBYTE(valuePtr.c) = v56;
            TXParagraphStyle::pushDirectionalRun(v90, &valuePtr);
          }

          else
          {
            *&v61 = StringRange.length + *&v55;
            if ((Status & 1) == 0)
            {
              v60 = v57;
            }

            v78 = v56;
          }
        }

        ++v54;
        v57 = v60;
        v55 = v61;
        v56 = v78;
      }

      while (v86 != v54);
    }

    *&valuePtr.a = v60 + v91;
    valuePtr.b = v61;
    LOBYTE(valuePtr.c) = v78;
    TXParagraphStyle::pushDirectionalRun(v90, &valuePtr);
    if (OZChannel::getValueAsInt((v83 + 20464), MEMORY[0x277CC08F0], 0.0) == 1 || OZChannel::getValueAsInt((v83 + 20464), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((v83 + 20464), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      TXTextLayout::doParagraphLayout(v83, v90, &v107, aStr, a3, a4);
    }

    else
    {
      TXTextLayout::doTypeLayout(v83, line, v90, &v107, aStr, a3, a4);
    }

    TXParagraphStyle::dirty(v90, 0);
    TXParagraphStyle::setAttributedString(v90, aStr);
    PCCFRef<__CTLine const*>::~PCCFRef(&line);
    if (__src)
    {
      v95 = __src;
      operator delete(__src);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v103, *(&v103 + 1));
    if (__p)
    {
      v109 = __p;
      operator delete(__p);
    }

    PCString::~PCString(&v106);
    PCString::~PCString(&v107);
  }

  else
  {
    TXParagraphStyle::dirty(*(v8 + 8 * a2), 0);
    *(v9 + 920) = 0;
    *(v9 + 876) = 1;
    memset(&valuePtr, 0, sizeof(valuePtr));
    __asm { FMOV            V1.2D, #-1.0 }

    v113 = _Q1;
    v109 = 0;
    v110 = 0;
    __p = 0;
    std::vector<TXLineMetrics>::__init_with_size[abi:ne200100]<TXLineMetrics const*,TXLineMetrics const*>(&__p, &valuePtr, v114, 1uLL);
    if ((v9 + 888) != &__p)
    {
      std::vector<TXLineMetrics>::__assign_with_size[abi:ne200100]<TXLineMetrics*,TXLineMetrics*>((v9 + 888), __p, v109, (v109 - __p) >> 6);
    }

    TXParagraphStyle::clearDirectionalRuns(v9);
    valuePtr.a = *(v9 + 856);
    valuePtr.b = 0.0;
    LOBYTE(valuePtr.c) = 1;
    TXParagraphStyle::pushDirectionalRun(v9, &valuePtr);
    TXParagraphStyle::setCaretPositionPair(v9, *(v9 + 856), 0xFFFFFFFFLL, 0xFFFFFFFFLL);
    if (__p)
    {
      v109 = __p;
      operator delete(__p);
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v111);
}

void sub_25FAEB7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, PCString a35, PCString a36, void *__p, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  OZLockingGroup::WriteSentry::~WriteSentry((v38 - 216));
  _Unwind_Resume(a1);
}

CTTextTabRef TXMakeCTTextTab(TXTabStop *a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  ValueAsInt = OZChannel::getValueAsInt((a1 + 288), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt >= 4)
  {
    printf("Unrecognized TXTabType");
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x10200u >> (8 * ValueAsInt);
  }

  v4 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((a1 + 136), MEMORY[0x277CC08F0], 0.0);
  v6 = v5;
  if (OZChannel::getValueAsInt((a1 + 288), v4, 0.0) == 3)
  {
    keys[0] = *MEMORY[0x277CC4A20];
    v7 = *MEMORY[0x277CBECE8];
    values = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x277CBECE8], @".");
    v8 = CFDictionaryCreate(v7, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    return CTTextTabCreate(kCTTextAlignmentLeft, v6, v8);
  }

  else
  {

    return CTTextTabCreate(v3, v6, 0);
  }
}

void std::vector<CTParagraphStyleSetting>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CTParagraphStyleSetting>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void TXTextLayout::doParagraphLayout(TXTextLayout *this, TXParagraphStyle *a2, PCString *a3, __CFAttributedString *a4, double a5, const OZRenderState *a6)
{
  v10 = PCString::cf_str(a3);
  Length = CFStringGetLength(v10);
  *(a2 + 3) = *(a2 + 2);
  TXParagraphStyle::clearLeftRightCaretPositionMaps(a2);
  v54 = *(a2 + 107);
  v11 = *(a2 + 108);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  typesetter = CTTypesetterCreateWithAttributedString(a4);
  v12 = *(this + 2378);
  v13 = *(this + 2379);
  if (v12 == v13)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *v12;
      if (*v12 == a2)
      {
        break;
      }

      v14 += *(v16 + 259);
      v15 += *(v16 + 108);
      ++v12;
    }

    while (v12 != v13);
  }

  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v18 = OZHostApplicationDelegateHandler::wantsToSkipSuggestedLineBreaksInParagraphLayout(HostApplicationDelegate);
  v52 = OZHostApplicationDelegateHandler::wantsToIncludeTrailingWhitespaceInParagraphLineWidth(HostApplicationDelegate);
  memset(v65, 0, sizeof(v65));
  if (Length < 1)
  {
    v19 = 0;
    v22 = 0.0;
  }

  else
  {
    v57 = 0;
    v19 = 0;
    v20 = 0;
    v49 = v14;
    v50 = v11 + v54;
    v21 = v18 ^ 1;
    if (a5 <= 0.0)
    {
      v21 = 0;
    }

    v51 = v21;
    v22 = 0.0;
    v48 = a4;
    do
    {
      if (v51)
      {
        v23 = (*(*this + 1120))(this, typesetter, v20, v15, a5);
      }

      else
      {
        v23 = *(a2 + 108);
      }

      v24 = v23 + v20;
      *&v61[0] = v23 + v20 + v15;
      std::vector<unsigned long>::push_back[abi:ne200100](&v72, v61);
      v75.location = v20;
      v75.length = v23;
      v25 = CTTypesetterCreateLine(typesetter, v75);
      flushFactor = 0.0;
      line = v25;
      v62 = 0.0;
      Alignment = TXParagraphStyle::getAlignment(a2);
      TXToCTAlignmentJustificationFactor(Alignment, v20 + v54 + v23 == v50, &flushFactor, &v62);
      if (a5 > 0.0 && v62 > 0.0)
      {
        *&v61[0] = CTLineCreateJustifiedLine(line, v62, a5);
        if (*&v61[0])
        {
          PCCFRef<__CTLine const*>::operator=(&line, v61);
        }

        PCCFRef<__CTLine const*>::~PCCFRef(v61);
      }

      TrailingKerningWidth = getTrailingKerningWidth(line);
      PenOffsetForFlush = CTLineGetPenOffsetForFlush(line, flushFactor, a5);
      ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
      v31 = TrailingKerningWidth * 0.5 + PenOffsetForFlush;
      if (ValueAsInt)
      {
        v31 = -v31;
      }

      TXTextLayout::applyCTLineDataToTextObjects(this, line, a2, a3, a4, v31, v30, v61);
      std::vector<TXLineMetrics>::push_back[abi:ne200100](&v66, v61);
      v32 = v15;
      TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(line);
      v34 = this;
      TypographicBounds = CTLineGetTypographicBounds(line, 0, 0, 0);
      if (v52)
      {
        v37 = TypographicBounds;
      }

      else
      {
        v37 = TypographicBounds - TrailingWhitespaceWidth;
      }

      if (v37 >= v22)
      {
        v22 = v37;
      }

      v38 = v70;
      if (v70 >= v71)
      {
        v40 = v69;
        v41 = v70 - v69;
        v42 = (v70 - v69) >> 3;
        v43 = v42 + 1;
        if ((v42 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v44 = v71 - v69;
        if ((v71 - v69) >> 2 > v43)
        {
          v43 = v44 >> 2;
        }

        v45 = v44 >= 0x7FFFFFFFFFFFFFF8;
        v46 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v45)
        {
          v46 = v43;
        }

        if (v46)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v69, v46);
        }

        *(8 * v42) = v37;
        v39 = 8 * v42 + 8;
        memcpy(0, v40, v41);
        v35 = v69;
        v69 = 0;
        v70 = v39;
        v71 = 0;
        if (v35)
        {
          operator delete(v35);
        }

        a4 = v48;
        v14 = v49;
      }

      else
      {
        *v70 = v37;
        v39 = (v38 + 1);
      }

      v70 = v39;
      __p = 0;
      v59 = 0;
      v60 = 0;
      TXTextLayout::addCaretInsertionPoints(v35, a4, v20, v23, a2, &__p);
      std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](v65, &__p);
      GlyphCount = CTLineGetGlyphCount(line);
      this = v34;
      v15 = v32;
      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      v57 += GlyphCount;
      v19 += GlyphCount;
      PCCFRef<__CTLine const*>::~PCCFRef(&line);
      v20 = v24;
    }

    while (v24 < Length);
  }

  CFRelease(typesetter);
  TXHelperFunctions::SetCaretMovementMap(a2, v65);
  if ((a2 + 888) != &v66)
  {
    std::vector<TXLineMetrics>::__assign_with_size[abi:ne200100]<TXLineMetrics*,TXLineMetrics*>(a2 + 111, v66, v67, (v67 - v66) >> 6);
  }

  *(a2 + 219) = (v67 - v66) >> 6;
  TXParagraphStyle::setLineBreaks(a2, v72, (v73 - v72) >> 3);
  *(a2 + 115) = v22;
  *&v61[0] = __PAIR64__(v19, v14);
  TXParagraphStyle::setGlyphRange(a2, v61);
  *&v61[0] = v65;
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](v61);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void sub_25FAEC114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, __int16 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  a21 = &a33;
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  v41 = *(v39 - 184);
  if (v41)
  {
    *(v39 - 176) = v41;
    operator delete(v41);
  }

  v42 = *(v39 - 160);
  if (v42)
  {
    *(v39 - 152) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void TXTextLayout::doTypeLayout(TXTextLayout *this, CTLineRef line, TXParagraphStyle *a3, const PCString *a4, __CFAttributedString *a5, double a6, const OZRenderState *a7)
{
  v11 = line;
  *(a3 + 3) = *(a3 + 2);
  __p = 0;
  v25 = 0;
  v26 = 0;
  leading = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(line, 0, 0, &leading);
  TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(v11);
  TrailingKerningWidth = getTrailingKerningWidth(v11);
  v17 = *(this + 2378);
  v18 = *(this + 2379);
  if (v17 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    do
    {
      if (*v17 == a3)
      {
        break;
      }

      v19 += *(*v17 + 1036);
      v17 += 8;
    }

    while (v17 != v18);
  }

  cf = 0;
  if (a6 > 0.0 && TXParagraphStyle::getAlignment(a3) == 6)
  {
    cf = CTLineCreateJustifiedLine(v11, 1.0, a6);
    *&v21[0] = 0;
    PCCFRef<__CTLine const*>::~PCCFRef(v21);
    if (cf)
    {
      v11 = cf;
    }
  }

  TXTextLayout::applyCTLineDataToTextObjects(this, v11, a3, a4, a5, 0.0, v15, v21);
  std::vector<TXLineMetrics>::push_back[abi:ne200100](&__p, v21);
  if ((a3 + 888) != &__p)
  {
    std::vector<TXLineMetrics>::__assign_with_size[abi:ne200100]<TXLineMetrics*,TXLineMetrics*>(a3 + 111, __p, v25, (v25 - __p) >> 6);
  }

  *(a3 + 219) = 1;
  TXParagraphStyle::setLineBreaks(a3, 0, 0);
  *(a3 + 115) = TypographicBounds - TrailingWhitespaceWidth - TrailingKerningWidth;
  LODWORD(v20) = v19;
  HIDWORD(v20) = CTLineGetGlyphCount(v11);
  TXParagraphStyle::setGlyphRange(a3, &v20);
  PCCFRef<__CTLine const*>::~PCCFRef(&cf);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_25FAEC3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  PCCFRef<__CTLine const*>::~PCCFRef(&a10);
  PCCFRef<__CTLine const*>::~PCCFRef(&a18);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t TXToCTAlignmentJustificationFactor(uint64_t result, int a2, double *a3, double *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v5 = 0x3FE0000000000000;
        goto LABEL_20;
      }

      if (result == 2)
      {
        v5 = 0x3FF0000000000000;
LABEL_20:
        *a3 = v5;
        goto LABEL_21;
      }
    }

LABEL_12:
    *a3 = 0.0;
LABEL_21:
    v6 = 0.0;
    goto LABEL_22;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      v4 = 0x3FF0000000000000;
      goto LABEL_15;
    }

    if (result == 6)
    {
      *a3 = 0.0;
      v6 = 1.0;
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (result == 3)
  {
    *a3 = 0.0;
    goto LABEL_16;
  }

  v4 = 0x3FE0000000000000;
LABEL_15:
  *a3 = v4;
LABEL_16:
  v6 = 1.0;
  if (a2)
  {
    v6 = 0.0;
  }

LABEL_22:
  *a4 = v6;
  return result;
}

const void **PCCFRef<__CTLine const*>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      CFRelease(v3);
      v4 = *a2;
    }

    *a1 = v4;
    if (*a2)
    {
      CFRetain(v4);
    }
  }

  return a1;
}

double getTrailingKerningWidth(const __CTLine *a1)
{
  GlyphRuns = CTLineGetGlyphRuns(a1);
  Count = CFArrayGetCount(GlyphRuns);
  ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, Count - 1);

  return getTrailingKerningWidthForRun(ValueAtIndex);
}

void TXTextLayout::applyCTLineDataToTextObjects(TXTextLayout *this@<X0>, CTLineRef line@<X1>, TXParagraphStyle *a3@<X2>, const PCString *a4@<X4>, const __CFAttributedString *a5@<X5>, double a6@<D0>, const OZRenderState *a7@<X6>, uint64_t a8@<X8>)
{
  theArray = CTLineGetGlyphRuns(line);
  Count = CFArrayGetCount(theArray);
  ValueAsInt = OZChannel::getValueAsInt((this + 20720), MEMORY[0x277CC08F0], 0.0);
  (*(*this + 304))(this);
  aStr = a5;
  Attribute = CFAttributedStringGetAttribute(a5, 0, *MEMORY[0x277CC4920], 0);
  valuePtr[0] = 1;
  if (Attribute)
  {
    v11 = Attribute;
    valuePtr[0] = 2;
    v12 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
    CFNumberCompare(v12, v11, 0);
    CFRelease(v12);
  }

  v40 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v41 = _Q0;
  String = CFAttributedStringGetString(aStr);
  PCURL::PCURL(&v39, String);
  if (Count >= 1)
  {
    v19 = *MEMORY[0x277CC4838];
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    CTRunGetGlyphCount(ValueAtIndex);
    Attributes = CTRunGetAttributes(ValueAtIndex);
    Value = CFDictionaryGetValue(Attributes, v19);
    v23 = CFAttributedStringGetAttribute(aStr, 0, v19, 0);
    CTRunGetStringRange(ValueAtIndex);
    v38 = CTFontCopyPostScriptName(Value);
    v37 = CTFontCopyPostScriptName(v23);
    CTFontGetAscent(v23);
    CTFontGetDescent(v23);
    CTFontGetLeading(v23);
    CTRunGetStatus(ValueAtIndex);
    glyphs = CTRunGetGlyphsPtr(ValueAtIndex);
    buffer = CTRunGetPositionsPtr(ValueAtIndex);
    StringIndicesPtr = CTRunGetStringIndicesPtr(ValueAtIndex);
    AdvancesPtr = CTRunGetAdvancesPtr(ValueAtIndex);
    if (!glyphs)
    {
      operator new[]();
    }

    if (!buffer)
    {
      operator new[]();
    }

    if (!StringIndicesPtr)
    {
      operator new[]();
    }

    if (!AdvancesPtr)
    {
      operator new[]();
    }

    if (ValueAsInt)
    {
      operator new[]();
    }

    memset(&v36, 0, sizeof(v36));
    CTRunGetTextMatrix(&v36, ValueAtIndex);
    operator new[]();
  }

  v24.f64[0] = 0.0;
  *a8 = 0;
  v24.f64[1] = 0.0;
  v25 = vbslq_s8(vclezq_f64(v24), 0, v24);
  *(a8 + 8) = vbicq_s8(vnegq_f64(v25), vceqq_f64(v25, vdupq_n_s64(0x10000000000000uLL)));
  v26 = v41;
  *(a8 + 32) = v40;
  *(a8 + 48) = v26;
  *(a8 + 24) = 0;
  PCString::~PCString(&v39);
}

void sub_25FAED790(_Unwind_Exception *a1)
{
  PCCFRef<__CTLine const*>::~PCCFRef((v1 - 224));
  PCCFRef<__CTLine const*>::~PCCFRef((v1 - 216));
  PCString::~PCString((v1 - 208));
  _Unwind_Resume(a1);
}

void TXTextLayout::addCaretInsertionPoints(int a1, CFAttributedStringRef aStr, CFIndex a3, CFIndex a4, uint64_t a5, uint64_t a6)
{
  String = CFAttributedStringGetString(aStr);
  Length = CFStringGetLength(String);
  AttributedStringCopyForCaretInsertionInfo = CreateAttributedStringCopyForCaretInsertionInfo(aStr);
  v13 = CTTypesetterCreateWithAttributedString(AttributedStringCopyForCaretInsertionInfo);
  v53.location = a3;
  v53.length = a4;
  Line = CTTypesetterCreateLine(v13, v53);
  CFRelease(AttributedStringCopyForCaretInsertionInfo);
  CFRelease(v13);
  v45 = 0;
  v46 = &v45;
  v47 = 0x4002000000;
  v48 = __Block_byref_object_copy__12;
  v49 = __Block_byref_object_dispose__12;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2000000000;
  v44 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = *(a5 + 960) == 0;
  v15 = *(a5 + 856);
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2000000000;
  v38 = 0;
  v36[0] = xmmword_260344610;
  v36[1] = xmmword_260344610;
  std::vector<std::pair<TXTextLayout::addCaretInsertionPoints(__CFAttributedString const*,CFRange,TXParagraphStyle *,std::vector<unsigned long> &)::TXCaretOffset,TXTextLayout::addCaretInsertionPoints(__CFAttributedString const*,CFRange,TXParagraphStyle *,std::vector<unsigned long> &)::TXCaretOffset>>::push_back[abi:ne200100](&v50, v36);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12TXTextLayout23addCaretInsertionPointsEPK20__CFAttributedString7CFRangeP16TXParagraphStyleRNSt3__16vectorImNS6_9allocatorImEEEE_block_invoke;
  block[3] = &unk_279AA80A8;
  block[4] = v37;
  block[5] = v43;
  block[8] = Line;
  block[9] = v15;
  block[6] = &v45;
  block[7] = &v39;
  CTLineEnumerateCaretOffsets(Line, block);
  v16 = Length >= 1 && (CFStringGetCharacterAtIndex(String, Length - 1) == 10 || a3 + a4 < Length);
  __p = 0;
  v33 = 0;
  v34 = 0;
  v17 = v46[5];
  v18 = v46[6];
  v19 = v18 - v17;
  if (v18 != v17)
  {
    v20 = 0;
    v21 = v19 >> 5;
    v22 = v15 + a3;
    v23 = 1;
    do
    {
      if (v23 == 1)
      {
        if (*(v40 + 24) == 1)
        {
          goto LABEL_10;
        }

        if (!v16)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v21 - 1 != v20)
        {
          v24 = (v17 + 32 * v20);
          v25 = *v24;
          v26 = *(v24 + 8);
          v27 = v24[2];
          if ((*(v24 + 24) ^ v26))
          {
            v28 = *(v24 + 9);
            if (*(v40 + 24) == 1)
            {
              if (v28)
              {
                v31 = v25 + 1;
              }

              else
              {
                v31 = v27;
              }
            }

            else if (v28)
            {
              v31 = v25;
            }

            else
            {
              v31 = v27 + 1;
            }
          }

          else if (v26)
          {
            v31 = v25 + 1;
          }

          else
          {
            v31 = v27 + 1;
          }

          std::vector<unsigned long>::push_back[abi:ne200100](&__p, &v31);
          goto LABEL_30;
        }

        if (!v16 && (v40[3] & 1) != 0)
        {
LABEL_16:
          v31 = v22 + CTLineGetStringRange(Line).length;
          std::vector<unsigned long>::push_back[abi:ne200100](&__p, &v31);
          goto LABEL_30;
        }

        if ((v40[3] & 1) == 0)
        {
LABEL_10:
          v31 = v22;
          std::vector<unsigned long>::push_back[abi:ne200100](&__p, &v31);
        }
      }

LABEL_30:
      v20 = v23;
      v17 = v46[5];
      v21 = (v46[6] - v17) >> 5;
    }

    while (v21 > v23++);
  }

  CFRelease(Line);
  std::vector<unsigned long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(a6, *(a6 + 8), __p, v33, (v33 - __p) >> 3);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_25FAEDD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 152), 8);
  v36 = *(v34 - 112);
  if (v36)
  {
    *(v34 - 104) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<unsigned long>>::__emplace_back_slow_path<std::vector<unsigned long> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<unsigned long>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned long> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t GetNumBytesForGlyph(const __CTRun *a1, uint64_t a2, const uint64_t *a3)
{
  v3 = a3;
  v6 = &a3[a2];
  v7 = *v6;
  GlyphCount = CTRunGetGlyphCount(a1);
  StringRange = CTRunGetStringRange(a1);
  if (CTRunGetStatus(a1))
  {
    if (a2 < 1)
    {
      v16 = CTRunGetStringRange(a1);
      v15 = v16.length - v7 + v16.location;
    }

    else
    {
      v15 = *(v6 - 1) - v7;
    }

    v17 = fabs(v15);
    return (v17 + v17);
  }

  else
  {
    v10 = StringRange.location + StringRange.length;
    if (GlyphCount >= 1)
    {
      do
      {
        v12 = *v3++;
        v11 = v12;
        if (v12 > v7 && v11 < v10)
        {
          v10 = v11;
        }

        --GlyphCount;
      }

      while (GlyphCount);
    }

    return (2 * (v10 - v7));
  }
}

double getTrailingKerningWidthForRun(const __CTRun *a1)
{
  Attributes = CTRunGetAttributes(a1);
  v2 = *MEMORY[0x277CC49E0];
  if (!CFDictionaryContainsKey(Attributes, *MEMORY[0x277CC49E0]))
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(Attributes, v2);
  valuePtr = 0.0;
  v4 = CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  result = valuePtr;
  if (valuePtr <= 0.0 || v4 == 0)
  {
    return 0.0;
  }

  return result;
}

void *std::vector<std::shared_ptr<TXTextObject>>::insert(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    v18 = v17 >> 3;
    if (v17 >> 3 <= v15)
    {
      v18 = ((v6 - *a1) >> 4) + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v20 = v16 >> 4;
    v32 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(a1, v19);
    }

    *&v30 = 0;
    *(&v30 + 1) = 16 * v20;
    v31 = (16 * v20);
    std::__split_buffer<std::shared_ptr<TXTextObject>>::emplace_back<std::shared_ptr<TXTextObject> const&>(&v30, a3);
    v22 = *(&v30 + 1);
    memcpy(v31, v4, a1[1] - v4);
    v23 = *a1;
    v24 = *(&v30 + 1);
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = (v24 - (v4 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    *&v30 = v27;
    *(&v30 + 1) = v27;
    std::__split_buffer<std::shared_ptr<TXTextObject>>::~__split_buffer(&v30);
    return v22;
  }

  else if (a2 == v6)
  {
    v21 = a3[1];
    *v6 = *a3;
    v6[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 2;
  }

  else
  {
    std::vector<std::shared_ptr<TXTextObject>>::__move_range(a1, a2, v6, (a2 + 2));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = v10[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v4[1];
    *v4 = v12;
    v4[1] = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return v4;
}

void sub_25FAEE100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<TXTextObject>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__CFAttributedString *CreateAttributedStringCopyForCaretInsertionInfo(const __CFAttributedString *a1)
{
  String = CFAttributedStringGetString(a1);
  Length = CFStringGetLength(String);
  MutableCopy = CFAttributedStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
  v17.location = 0;
  v17.length = Length;
  CFAttributedStringRemoveAttribute(MutableCopy, v17, *MEMORY[0x277CC49E0]);
  v5 = CFAttributedStringGetLength(MutableCopy);
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = *MEMORY[0x277CC4838];
    v9 = MEMORY[0x277CBF2C0];
    v10.length = v5;
    do
    {
      v10.location = v7;
      AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(MutableCopy, v7, v8, v10, &longestEffectiveRange);
      v12 = v9[1];
      *&v15.a = *v9;
      *&v15.c = v12;
      *&v15.tx = v9[2];
      v13 = CTFontCreateCopyWithAttributes(AttributeAndLongestEffectiveRange, 72.0, &v15, 0);
      CFAttributedStringSetAttribute(MutableCopy, longestEffectiveRange, v8, v13);
      CFRelease(v13);
      v7 = longestEffectiveRange.length + longestEffectiveRange.location;
      v10.length = v6 - (longestEffectiveRange.length + longestEffectiveRange.location);
    }

    while (v6 > longestEffectiveRange.length + longestEffectiveRange.location);
  }

  return MutableCopy;
}

__n128 __Block_byref_object_copy__12(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__12(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void std::vector<std::pair<TXTextLayout::addCaretInsertionPoints(__CFAttributedString const*,CFRange,TXParagraphStyle *,std::vector<unsigned long> &)::TXCaretOffset,TXTextLayout::addCaretInsertionPoints(__CFAttributedString const*,CFRange,TXParagraphStyle *,std::vector<unsigned long> &)::TXCaretOffset>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t ___ZN12TXTextLayout23addCaretInsertionPointsEPK20__CFAttributedString7CFRangeP16TXParagraphStyleRNSt3__16vectorImNS6_9allocatorImEEEE_block_invoke(uint64_t a1, CFIndex a2, int a3)
{
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24) == 1)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v27[0] = xmmword_260344610;
    v27[1] = xmmword_260344610;
    std::vector<std::pair<TXTextLayout::addCaretInsertionPoints(__CFAttributedString const*,CFRange,TXParagraphStyle *,std::vector<unsigned long> &)::TXCaretOffset,TXTextLayout::addCaretInsertionPoints(__CFAttributedString const*,CFRange,TXParagraphStyle *,std::vector<unsigned long> &)::TXCaretOffset>>::push_back[abi:ne200100](*(*(a1 + 48) + 8) + 40, v27);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24) ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *(v6 + 24) = v7 & 1;
  GlyphRuns = CTLineGetGlyphRuns(*(a1 + 64));
  Count = CFArrayGetCount(GlyphRuns);
  if (Count < 1)
  {
LABEL_12:
    v15 = 0;
  }

  else
  {
    v10 = Count;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v11);
      StringRange = CTRunGetStringRange(ValueAtIndex);
      if (StringRange.location <= a2 && StringRange.location + StringRange.length > a2)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_12;
      }
    }

    v15 = (CTRunGetStatus(ValueAtIndex) & 1) == 0;
  }

  v16 = *(*(a1 + 48) + 8);
  v17 = *(*(*(a1 + 40) + 8) + 24);
  v18 = *(v16 + 40);
  if (v17 >= (*(v16 + 48) - v18) >> 5)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v19 = *(a1 + 72);
  v20 = (v18 + 32 * v17);
  v21 = 10;
  v22 = 9;
  v23 = *(*(*(a1 + 56) + 8) + 24);
  v24 = 1;
  v25 = v20 + 2;
  result = 24;
  if (v15 == a3)
  {
    v24 = 3;
  }

  else
  {
    v25 = v20;
  }

  if (v15 == a3)
  {
    v22 = 25;
    v21 = 26;
  }

  LOBYTE(v20[v24]) = v15;
  *v25 = v19 + a2;
  *(v20 + v22) = v23 == v15;
  *(v20 + v21) = a3;
  return result;
}

void TXTextLayout::computeComposedCharacterIndices(PCString *this)
{
  v2 = this + 7680;
  v3 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v77, v3);
  v72 = v2 + 357;
  std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::destroy(&v2[357], v2[358].var0);
  v2[357].var0 = &v2[358];
  *&v2[358].var0 = 0u;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v2[366], &v2[367].var0->isa);
  v69 = v2;
  v2[366].var0 = &v2[367];
  *&v2[367].var0 = 0u;
  TXChannelString::getString(this + 2381, &v76);
  v4 = PCString::cf_str(&v76);
  v5 = CFAttributedStringCreate(*MEMORY[0x277CBECE8], v4, 0);
  v6 = CTLineCreateWithAttributedString(v5);
  GlyphRuns = CTLineGetGlyphRuns(v6);
  Count = CFArrayGetCount(GlyphRuns);
  v64 = v6;
  cf = v5;
  v63 = &v2[358];
  __p = 0;
  v74 = 0;
  v75 = 0;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, i);
      StringRange = CTRunGetStringRange(ValueAtIndex);
      v12 = CTRunGetStatus(ValueAtIndex) & 1;
      if (!StringRange.location)
      {
        LODWORD(v69[365].var0) = v12;
      }

      v13 = v74;
      if (v74 >= v75)
      {
        v15 = (v74 - __p) >> 3;
        if ((v15 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v16 = (v75 - __p) >> 2;
        if (v16 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        if (v75 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(&__p, v17);
        }

        v18 = (8 * v15);
        *v18 = ValueAtIndex;
        v14 = 8 * v15 + 8;
        v19 = v18 - (v74 - __p);
        memcpy(v19, __p, v74 - __p);
        v20 = __p;
        __p = v19;
        v74 = v14;
        v75 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v74 = ValueAtIndex;
        v14 = (v13 + 8);
      }

      v74 = v14;
      v86[0] = StringRange.location;
      v79.var0 = v86;
      v21 = std::__tree<std::__value_type<int,TXDirectionalRun>,std::__map_value_compare<int,std::__value_type<int,TXDirectionalRun>,std::less<int>,true>,std::allocator<std::__value_type<int,TXDirectionalRun>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v69[366], v86);
      *(v21 + 5) = StringRange;
      *(v21 + 56) = v12 ^ 1;
    }
  }

  var0 = v69[365].var0;
  if (var0)
  {
    v22 = v74;
    v66 = __p;
    if (v74 != __p)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(v22 - 1);
        v67 = v22 - 8;
        Status = CTRunGetStatus(v25);
        v27 = CTRunGetStringRange(v25);
        location = v27.location;
        PCString::substr(&v76, LODWORD(v27.location), v27.length, &v85.var0);
        v29 = Status & 1;
        v30 = v23 + PCString::composedCharacterCount(&v85) - 1;
        if (v29 == var0)
        {
          v31 = v23;
        }

        else
        {
          v31 = v30;
        }

        PCString::stringWithoutSpacesAndNewlines(&v85, &v84);
        v32 = PCString::composedCharacterCount(&v84);
        if (v27.length >= 1)
        {
          if (v29 == var0)
          {
            v33 = v24;
          }

          else
          {
            v33 = v24 + v32 - 1;
          }

          if (v29 == var0)
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          do
          {
            v35 = PCString::cf_str(&v76);
            RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v35, location);
            PCString::substr(&v76, LODWORD(RangeOfComposedCharactersAtIndex.location), RangeOfComposedCharactersAtIndex.length, &v83.var0);
            PCString::PCString(&v79, &v83);
            v80 = RangeOfComposedCharactersAtIndex;
            *&v81 = __PAIR64__(v31, v23);
            *(&v81 + 1) = __PAIR64__(v33, v24);
            v82 = v29;
            v78 = RangeOfComposedCharactersAtIndex.location;
            *v86 = &v78;
            v37 = std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v72, &v78);
            PCString::set(v37 + 5, &v79);
            v38 = v81;
            *(v37 + 3) = v80;
            *(v37 + 4) = v38;
            *(v37 + 20) = v82;
            if ((PCString::isWhitespaceAndNewline(&v83) & 1) == 0)
            {
              ++v24;
              if (v29 == var0)
              {
                ++v33;
              }

              else
              {
                --v33;
              }
            }

            location += RangeOfComposedCharactersAtIndex.length;
            v31 += v34;
            PCString::~PCString(&v79);
            PCString::~PCString(&v83);
            ++v23;
          }

          while (location < v27.location + v27.length);
        }

        PCString::~PCString(&v84);
        PCString::~PCString(&v85);
        v22 = v67;
      }

      while (v67 != v66);
    }
  }

  else
  {
    v39 = __p;
    v68 = v74;
    if (v74 != __p)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        v71 = v39;
        v42 = *v39;
        v43 = CTRunGetStatus(*v39);
        v44 = CTRunGetStringRange(v42);
        v45 = v44.location;
        PCString::substr(&v76, LODWORD(v44.location), v44.length, &v85.var0);
        v46 = v43 & 1;
        v47 = v40 + PCString::composedCharacterCount(&v85) - 1;
        if (v43)
        {
          v48 = v47;
        }

        else
        {
          v48 = v40;
        }

        PCString::stringWithoutSpacesAndNewlines(&v85, &v84);
        v49 = PCString::composedCharacterCount(&v84);
        if (v44.length >= 1)
        {
          if (v43)
          {
            v50 = v41 + v49 - 1;
          }

          else
          {
            v50 = v41;
          }

          if (v43)
          {
            v51 = -1;
          }

          else
          {
            v51 = 1;
          }

          do
          {
            v52 = PCString::cf_str(&v76);
            v53 = CFStringGetRangeOfComposedCharactersAtIndex(v52, v45);
            PCString::substr(&v76, LODWORD(v53.location), v53.length, &v83.var0);
            PCString::PCString(&v79, &v83);
            v80 = v53;
            *&v81 = __PAIR64__(v48, v40);
            *(&v81 + 1) = __PAIR64__(v50, v41);
            v82 = v46;
            v78 = v53.location;
            *v86 = &v78;
            v54 = std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v72, &v78);
            PCString::set(v54 + 5, &v79);
            v55 = v81;
            *(v54 + 3) = v80;
            *(v54 + 4) = v55;
            *(v54 + 20) = v82;
            if ((PCString::isWhitespaceAndNewline(&v83) & 1) == 0)
            {
              ++v41;
              if (v46)
              {
                --v50;
              }

              else
              {
                ++v50;
              }
            }

            v45 += v53.length;
            v48 += v51;
            PCString::~PCString(&v79);
            PCString::~PCString(&v83);
            ++v40;
          }

          while (v45 < v44.location + v44.length);
        }

        PCString::~PCString(&v84);
        PCString::~PCString(&v85);
        v39 = v71 + 1;
      }

      while (v71 + 1 != v68);
    }
  }

  CFRelease(cf);
  CFRelease(v64);
  LODWORD(v69[360].var0) = 0;
  v56 = v63;
  if (v63 != v69[357].var0)
  {
    while (1)
    {
      v57 = *v56;
      v58 = v56;
      if (*v56)
      {
        do
        {
          v59 = v57;
          v57 = *(v57 + 1);
        }

        while (v57);
      }

      else
      {
        do
        {
          v59 = *(v58 + 2);
          v60 = *v59 == v58;
          v58 = v59;
        }

        while (v60);
      }

      if ((PCString::isWhitespaceAndNewline(v59 + 5) & 1) == 0)
      {
        break;
      }

      v61 = *v56;
      if (*v56)
      {
        do
        {
          v62 = v61;
          v61 = *(v61 + 1);
        }

        while (v61);
      }

      else
      {
        do
        {
          v62 = *(v56 + 2);
          v60 = *v62 == v56;
          v56 = v62;
        }

        while (v60);
      }

      v56 = v62;
      if (v62 == v72->var0)
      {
        goto LABEL_69;
      }
    }

    LODWORD(v69[360].var0) = *(v59 + 18) + 1;
  }

LABEL_69:
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  PCString::~PCString(&v76);
  OZLockingGroup::WriteSentry::~WriteSentry(v77);
}