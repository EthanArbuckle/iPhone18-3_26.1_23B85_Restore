void sub_260085290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZSystemSimulator::getState(OZSystemSimulator *this, const CMTime *a2, OZSimStateArray **a3, BOOL *a4)
{
  PCMutex::lock((this + 160));
  ++*(this + 58);
  memset(&v17, 0, sizeof(v17));
  (*(**(this + 1) + 120))(&v17);
  time = v17;
  CMTimeGetSeconds(&time);
  v16 = *a2;
  memset(&v15, 0, sizeof(v15));
  time = *a2;
  time2 = v17;
  PC_CMTimeFloorToSampleDuration(&time, &time2, &v15);
  memset(&v14, 0, sizeof(v14));
  time = v16;
  time2 = v15;
  PC_CMTimeSaferSubtract(&time, &time2, &v14);
  time = **&MEMORY[0x277CC08F0];
  time2 = v14;
  if (CMTimeCompare(&time, &time2) && (time = v16, (NonFrameAlignedCachedState = OZSystemSimulator::getNonFrameAlignedCachedState(this, &time)) != 0))
  {
    OZSystemSimulator::updateLocalCoords(this, NonFrameAlignedCachedState);
    *a3 = NonFrameAlignedCachedState;
    *a4 = 0;
    result = PCMutex::unlock((this + 160));
  }

  else
  {
    time = v16;
    time2 = v17;
    CachedState = OZSystemSimulator::getCachedState(this, &time, &time2);
    v11 = CachedState;
    if (!CachedState || (time = CachedState[1], time2 = v16, CMTimeCompare(&time, &time2)))
    {
      v12 = (*(**(this + 1) + 80))(*(this + 1));
      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == 1)
      {
        operator new();
      }

      operator new();
    }

    OZSystemSimulator::updateLocalCoords(this, v11);
    *a3 = v11;
    *a4 = 0;
    result = PCMutex::unlock((this + 160));
  }

  --*(this + 58);
  return result;
}

uint64_t OZSystemSimulator::getNonFrameAlignedCachedState(uint64_t **this, CMTime *a2)
{
  v4 = (this + 11);
  PCMutex::lock((this + 11));
  if (__PAIR64__(*(this + 236), *(this + 58)) == 0x100000001)
  {
    OZSystemSimulator::flushCache(this, 0, 1);
    *(this + 236) = 0;
  }

  else
  {
    v5 = this[9];
    if (v5 != (this + 8))
    {
      do
      {
        time1 = *(v5[2] + 24);
        time2 = *a2;
        v6 = CMTimeCompare(&time1, &time2);
        v7 = v5[1];
        if (!v6)
        {
          v8 = *v5;
          *(v8 + 8) = v7;
          *v7 = v8;
          this[10] = (this[10] - 1);
          operator delete(v5);
          operator new();
        }

        v5 = v5[1];
      }

      while (v7 != (this + 8));
    }
  }

  PCMutex::unlock(v4);
  return 0;
}

double *OZSystemSimulator::updateLocalCoords(double *this, OZSimStateArray *a2)
{
  if ((*(a2 + 48) & 1) == 0)
  {
    v14 = *(a2 + 24);
    v15 = *(a2 + 5);
    v13 = 0x3FF0000000000000;
    v10 = 0x3FF0000000000000;
    v7 = 0x3FF0000000000000;
    v4 = 0x3FF0000000000000;
    v5 = 0u;
    v6 = 0u;
    v8 = 0u;
    v9 = 0u;
    v12 = 0u;
    v11 = 0u;
    this = (*(**(this + 1) + 104))(*(this + 1), this, &v4, &v14);
    for (i = *a2; i != *(a2 + 1); i += 248)
    {
      *(i + 176) = *i;
      *(i + 192) = *(i + 16);
      this = PCMatrix44Tmpl<double>::transform<double>(&v4, (i + 176), (i + 176));
    }

    *(a2 + 48) = 1;
  }

  return this;
}

CMTime *OZSystemSimulator::getCachedState(OZSystemSimulator *this, CMTime *a2, CMTime *a3)
{
  v6 = (this + 88);
  v21 = this + 88;
  PCMutex::lock((this + 88));
  v22 = 1;
  if (__PAIR64__(*(this + 236), *(this + 58)) == 0x100000001)
  {
    OZSystemSimulator::flushCache(this, 0, 1);
    v7 = 0;
    *(this + 236) = 0;
    goto LABEL_31;
  }

  v8 = *(this + 3);
  if (v8 == (this + 16))
  {
    goto LABEL_14;
  }

  v7 = 0;
  do
  {
    v9 = v8[2];
    time1 = v9[1];
    time2 = *a2;
    if (!CMTimeCompare(&time1, &time2))
    {
      v16 = *v8;
      v15 = v8[1];
      *(v16 + 8) = v15;
      *v15 = v16;
      --*(this + 4);
      operator delete(v8);
      operator new();
    }

    time1 = v9[1];
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (!v7 || (time1 = v7[1], time2 = v9[1], CMTimeCompare(&time1, &time2) < 0))
      {
        v7 = v9;
      }
    }

    v8 = v8[1];
  }

  while (v8 != (this + 16));
  if (!v7)
  {
LABEL_14:
    v7 = 0;
  }

  else
  {
    time2 = v7[1];
    time1 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &v20);
    operator*(a3, &v19, 10.0);
    time1 = v20;
    time2 = v19;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      goto LABEL_31;
    }
  }

  v10 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__lower_bound<CMTime>(this + 40, a2, *(this + 6), this + 48);
  v11 = v10;
  if ((this + 48) == v10)
  {
    if (!*(this + 7))
    {
      goto LABEL_31;
    }

    v17 = *v10;
    if (*v10)
    {
      do
      {
        v13 = v17;
        v17 = v17[1];
      }

      while (v17);
    }

    else
    {
      do
      {
        v13 = v11[2];
        v14 = *v13 == v11;
        v11 = v13;
      }

      while (v14);
    }

LABEL_29:
    v7 = v13[7];
    goto LABEL_31;
  }

  time1 = **&MEMORY[0x277CC08F0];
  time2 = *(v10 + 32);
  if (!CMTimeCompare(&time1, &time2))
  {
    v7 = v11[7];
    goto LABEL_31;
  }

  if (*(this + 5) != v11)
  {
    v12 = *v11;
    if (*v11)
    {
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = v11[2];
        v14 = *v13 == v11;
        v11 = v13;
      }

      while (v14);
    }

    goto LABEL_29;
  }

LABEL_31:
  PCMutex::unlock(v6);
  return v7;
}

void sub_260085F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void *OZSystemSimulator::accumInitialValues(OZSystemSimulator *this, OZSimStateArray *a2, uint64_t a3)
{
  v18 = &v18;
  v19 = &v18;
  v20 = 0;
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  v6 = (*(**(this + 1) + 88))(*(this + 1));
  v7 = *(this + 1);
  v13 = *(a2 + 24);
  v14 = *(a2 + 5);
  (*(*v7 + 24))(v7, &v18, &v13);
  for (i = v19; i != &v18; i = i[1])
  {
    v9 = i[2];
    v10 = *v9;
    {
      operator new();
    }

    (*(v10 + 648))(v9, a2, a3, v6);
  }

  for (j = v16; j != &v15; j = j[1])
  {
    (*(*j[2] + 648))(j[2], a2, a3, v6);
  }

  std::__list_imp<unsigned int>::clear(&v15);
  return std::__list_imp<unsigned int>::clear(&v18);
}

void sub_2600861B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__list_imp<unsigned int>::clear(va);
  std::__list_imp<unsigned int>::clear(va1);
  _Unwind_Resume(a1);
}

void std::vector<OZSimStateElement>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xEF7BDEF7BDEF7BDFLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<OZSimStateElement>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 248 * a2;
    while (v3 != v7)
    {
      OZSimStateElement::~OZSimStateElement((v3 - 248));
    }

    a1[1] = v7;
  }
}

void OZSystemSimulator::reapDeadObjects(OZSystemSimulator *this, OZSimStateArray *a2, OZSimStateArray *a3)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 5);
  v5 = *a2;
  if (*a2 == *(a2 + 1))
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v11 = v9;
      v12 = v10;
      if ((*(**(v5 + 232) + 24))(*(v5 + 232), &v11))
      {
        OZSimStateElement::operator=(*a3 + 248 * v6++, v5);
      }

      v5 += 248;
    }

    while (v5 != *(a2 + 1));
    v7 = v6;
  }

  v8 = *(a2 + 24);
  *(a3 + 5) = *(a2 + 5);
  *(a3 + 24) = v8;
  *(a3 + 48) = 0;
  OZSimStateArray::setOwnedObjectFrom(a3, a2);
  std::vector<OZSimStateElement>::resize(a3, v7);
}

uint64_t OZSystemSimulator::cacheState(OZSystemSimulator *this, OZSimStateArray *a2, CMTime *a3)
{
  result = (*(**(this + 1) + 72))(*(this + 1));
  if (result)
  {
    v15 = this + 88;
    PCMutex::lock((this + 88));
    v16 = 1;
    v6 = this + 16;
    for (i = *(this + 3); i != v6; i = i[1])
    {
      v14 = *(i[2] + 24);
      time2 = *(a2 + 1);
      if (!CMTimeCompare(&v14, &time2))
      {
        v12 = i[1];
        v13 = *i;
        *(v13 + 8) = v12;
        *v12 = v13;
        --*(this + 4);
        operator delete(i);
        operator new();
      }
    }

    v8 = *(this + 4);
    if (v8 >= 8)
    {
      v9 = *v6;
      if (*(*v6 + 16))
      {
        OZSimStateArray::~OZSimStateArray(*(*v6 + 16));
        MEMORY[0x2666E9F00]();
        v9 = *(this + 2);
        v8 = *(this + 4);
      }

      v11 = *v9;
      v10 = v9[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      *(this + 4) = v8 - 1;
      operator delete(v9);
    }

    operator new();
  }

  return result;
}

void sub_2600866F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void *OZSystemSimulator::handleCollisions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  v9 = *(a1 + 8);
  v13 = *(a3 + 24);
  v14 = *(a3 + 40);
  (*(*v9 + 32))(v9, &v15, &v13);
  for (i = v16; i != &v15; i = i[1])
  {
    v11 = i[2];
    if (v11)
    {
    }

    (*(*v11 + 736))(v11, 0, a2, a3, a4, a5);
    if (*a5)
    {
      break;
    }
  }

  return std::__list_imp<unsigned int>::clear(&v15);
}

void sub_2600868C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZSystemSimulator::partialSolve(OZSystemSimulator *this, OZSimStateArray *a2, uint64_t a3, CMTime *a4)
{
  if (a3 >= 1)
  {
    v19 = v4;
    v20 = v5;
    v7 = a3;
    OZSystemSimulator::accumInitialValues(this, a2, a3);
    if ((*(**(this + 1) + 144))(*(this + 1)))
    {
      OZSystemSimulator::getDerivatives(this, a2);
      memset(&v16, 0, sizeof(v16));
      operator/(&a4->value, &v16, v7);
      v15 = **&MEMORY[0x277CC08F0];
      v10 = *(a2 + 1);
      if (v10 != *a2)
      {
        v11 = (v10 - 248);
        v12 = 1;
        do
        {
          v18 = v15;
          Seconds = CMTimeGetSeconds(&v18);
          OZSimStateElement::stepFrom(v11, v11, Seconds, 1.0);
          v18 = v15;
          v17 = v16;
          PC_CMTimeSaferAdd(&v18, &v17, &v15);
          v11[9] = 0u;
          v11[10] = 0u;
          v11[8] = 0u;
          if (v11 == *a2)
          {
            break;
          }

          v11 = (v11 - 248);
        }

        while (v12++ < v7);
      }
    }
  }
}

uint64_t OZSystemSimulator::cacheNonFrameAlignedState(OZSystemSimulator *this, OZSimStateArray *a2)
{
  result = (*(**(this + 1) + 72))(*(this + 1));
  if (result)
  {
    PCMutex::lock((this + 88));
    v5 = this + 64;
    for (i = *(this + 9); i != v5; i = i[1])
    {
      time1 = *(i[2] + 24);
      time2 = *(a2 + 1);
      if (!CMTimeCompare(&time1, &time2))
      {
        v12 = i[1];
        v13 = *i;
        *(v13 + 8) = v12;
        *v12 = v13;
        --*(this + 10);
        operator delete(i);
        operator new();
      }
    }

    v7 = *(this + 10);
    if (v7 >= 8)
    {
      v8 = *v5;
      if (*(*v5 + 16))
      {
        OZSimStateArray::~OZSimStateArray(*(*v5 + 16));
        MEMORY[0x2666E9F00](v9, 0x1020C408C3EC410);
        v8 = *(this + 8);
        v7 = *(this + 10);
      }

      v11 = *v8;
      v10 = v8[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      *(this + 10) = v7 - 1;
      operator delete(v8);
    }

    operator new();
  }

  return result;
}

uint64_t OZSystemSimulator::dirtyCache(OZSystemSimulator *this)
{
  PCMutex::lock((this + 88));
  *(this + 236) = 1;

  return PCMutex::unlock((this + 88));
}

void OZSystemSimulator::didAddToScene(OZSystemSimulator *this, OZScene *a2)
{
  v3 = *(a2 + 198);
  *(this + 33) = v3;
  OZDocument::addCPPObserver(v3, this, 1000);

  OZScene::addSimulator();
}

void *OZSystemSimulator::willRemoveFromScene(OZSystemSimulator *this, OZScene *a2)
{
  v4 = *(a2 + 198);
  *(this + 33) = v4;
  OZDocument::removeCPPObserver(v4);

  return OZScene::removeSimulator(a2, this);
}

void OZSystemSimulator::notify(OZSystemSimulator *this, __int16 a2)
{
  if (((*(**(this + 1) + 152))(*(this + 1)) & 1) == 0)
  {
    if ((a2 & 0x9810) != 0)
    {
      goto LABEL_4;
    }

    if ((a2 & 0xC) == 0)
    {
      return;
    }

    v4 = *(this + 33);
    if (!v4)
    {
LABEL_4:
      PCMutex::lock((this + 88));
      *(this + 236) = 1;

      PCMutex::unlock((this + 88));
    }

    else
    {
      v20[0] = 0;
      v20[1] = 0;
      v19 = v20;
      v5 = *(v4 + 24) + 920;
      do
      {
        v6 = v5;
        v5 = *(v5 + 48);
      }

      while (v5);
      v7 = *(v4 + 168);
      v8 = (v4 + 296);
      if (v7)
      {
        v9 = (v7 + 48);
      }

      else
      {
        v9 = v8;
      }

      for (i = *v9; i != v9[1]; i = (i + 24))
      {
        Channel = OZChannelRef::getChannel(i, v6);
        if (Channel)
        {
          ObjectManipulator = OZChannelBase::getObjectManipulator(Channel);
          if (ObjectManipulator)
          {
            v13 = (*(*ObjectManipulator + 232))(ObjectManipulator);
            v14 = v13;
            if (v13)
            {
              LODWORD(v17) = *(v13 + 80);
              std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v19, &v17);
              v15 = *((*(*v14 + 664))(v14) + 8);
              v17 = xmmword_2603473B0;
              if (OZFactory::isKindOfClass(v15, &v17))
              {
                *(&v17 + 1) = 0;
                v18 = 0;
                *&v17 = &v17 + 8;
                OZRigWidget::getRiggedNodeIDs(v16, &v17);
                std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v19, v17, &v17 + 2);
                std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v17, *(&v17 + 1));
              }
            }
          }
        }
      }

      if ((*(**(this + 1) + 64))(*(this + 1), &v19) && *(this + 68) <= 0)
      {
        PCMutex::lock((this + 88));
        *(this + 236) = 1;
        PCMutex::unlock((this + 88));
        ++*(this + 68);
      }

      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v19, v20[0]);
    }
  }
}

uint64_t std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *OZSystemSimulator::calcStaticHash(uint64_t a1, void *lpsrc, uint64_t a3, uint64_t a4)
{
  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  v17 = *PCHashWriteStream::getHash(v7)->i8;
  (*(*v8 + 40))(v8);
  result = *(a1 + 8);
  if (result)
  {
    v14 = &v14;
    v15 = &v14;
    v16 = 0;
    (*(*result + 48))(result, &v14);
    for (i = v15; i != &v14; i = i[1])
    {
      v11 = i[2];
      v12 = (*(*v11 + 320))(v11);
      if (v12 != a4 && ((*(*v11 + 672))(v11) || v12 && !OZObjectManipulator::isInObjectList(v12 + 16, a3)))
      {
        OZObjectManipulator::getStaticHash();
      }
    }

    Hash = PCHashWriteStream::getHash(v8);
    PCHash128::operator+=(&v17, Hash);
    PCHashWriteStream::setHash(v8, &v17);
    return std::__list_imp<unsigned int>::clear(&v14);
  }

  return result;
}

void sub_2600872EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void *OZSystemSimulator::calcHashForState(uint64_t a1, void *lpsrc, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v19 = *PCHashWriteStream::getHash(v9)->i8;
  (*(*lpsrc + 40))(lpsrc);
  result = *(a1 + 8);
  if (result)
  {
    v16 = &v16;
    v17 = &v16;
    v18 = 0;
    (*(*result + 48))(result, &v16);
    for (i = v17; i != &v16; i = i[1])
    {
      v13 = i[2];
      v14 = (*(*v13 + 320))(v13);
      if (v14 != a5)
      {
        if ((*(*v13 + 672))(v13))
        {
          OZObjectManipulator::getHashForState();
        }

        if (v14 && !OZObjectManipulator::isInObjectList(v14 + 16, a4))
        {
          OZObjectManipulator::getHashForState();
        }

        if (!OZObjectManipulator::isInObjectList(v13 + 16, a4))
        {
          OZObjectManipulator::getHashForState();
        }
      }
    }

    Hash = PCHashWriteStream::getHash(v10);
    PCHash128::operator+=(&v19, Hash);
    PCHashWriteStream::setHash(v10, &v19);
    return std::__list_imp<unsigned int>::clear(&v16);
  }

  return result;
}

void sub_26008756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZSystemSimulator::midPointSolve(OZSystemSimulator *this, OZSimStateArray *a2, OZSimStateArray *a3, CMTime *a4, double a5)
{
  OZSystemSimulator::getDerivatives(this, a2);
  OZSimStateArray::OZSimStateArray(v12, -1108378657 * ((*(a2 + 1) - *a2) >> 3));
  v10 = *a4;
  PC_CMTimeHalve(&v10, &v11);
  OZSimStateArray::stepFrom(v12, a2, &v11, a5 * 0.5);
  OZSystemSimulator::getDerivatives(this, v12);
  v11 = *a4;
  OZSimStateArray::stepFrom(a3, a2, v12, &v11, a5);
  OZSimStateArray::~OZSimStateArray(v12);
}

void sub_260087670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  OZSimStateArray::~OZSimStateArray(va);
  _Unwind_Resume(a1);
}

void *OZSystemSimulator::getDerivatives(OZSystemSimulator *this, OZSimStateArray *a2)
{
  OZSimStateArray::clearForces(a2);
  v16 = &v16;
  v17 = &v16;
  v18 = 0;
  v4 = (*(**(this + 1) + 88))(*(this + 1));
  v15 = *(a2 + 1);
  (*(**(this + 1) + 128))(&v14);
  time1 = v15;
  time2 = v14;
  v5 = CMTimeCompare(&time1, &time2);
  (*(**(this + 1) + 24))(*(this + 1), &v16, &v15);
  memset(&v14, 0, sizeof(v14));
  (*(**(this + 1) + 120))(&v14);
  memset(&v13, 0, sizeof(v13));
  operator*(&v14, &v13, 0.001);
  for (i = v17; i != &v16; i = i[1])
  {
    v7 = i[2];
    if ((*(*v7 + 672))(v7))
    {
      time1 = v15;
      time2 = v13;
      v8 = PC_CMTimeSaferSubtract(&time1, &time2, v12);
      v9 = (*(*v7 + 296))(v7, v12, 0, 1, 1, v8);
      if (v5)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        (*(*v7 + 648))(v7, a2, -1108378657 * ((*(a2 + 1) - *a2) >> 3), v4);
      }
    }

    (*(*v7 + 632))(v7, a2, v4);
  }

  return std::__list_imp<unsigned int>::clear(&v16);
}

void sub_260087964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void std::vector<OZSimStateElement>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xEF7BDEF7BDEF7BDFLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 248 * a2);
      v11 = 248 * a2;
      do
      {
        OZSimStateElement::OZSimStateElement(v5);
        v5 = (v5 + 248);
        v11 -= 248;
      }

      while (v11);
      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xEF7BDEF7BDEF7BDFLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x108421084210842)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xEF7BDEF7BDEF7BDFLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x84210842108421)
    {
      v9 = 0x108421084210842;
    }

    else
    {
      v9 = v8;
    }

    v22 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OZSimStateElement>>(a1, v9);
    }

    v12 = 248 * v6;
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v13 = 248 * a2;
    v14 = (v12 + 248 * a2);
    do
    {
      OZSimStateElement::OZSimStateElement(v12);
      v12 += 248;
      v13 -= 248;
    }

    while (v13);
    *&v21 = v14;
    v15 = *(a1 + 8);
    v16 = (v20 + *a1 - v15);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZSimStateElement>,OZSimStateElement*>(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = *(a1 + 16);
    *(a1 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    std::__split_buffer<OZSimStateElement>::~__split_buffer(&v19);
  }
}

void sub_260087B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<OZSimStateElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OZSimStateElement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZSimStateElement>,OZSimStateElement*>(int a1, OZSimStateElement *a2, OZSimStateElement *a3, OZSimStateElement *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      OZSimStateElement::OZSimStateElement(this, v8);
      v8 = (v8 + 248);
      this = (this + 248);
      v7 -= 248;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      OZSimStateElement::~OZSimStateElement(v6);
      v6 = (v6 + 248);
    }
  }
}

void sub_260087C14(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 248);
    do
    {
      OZSimStateElement::~OZSimStateElement(v4);
      v4 = (v5 - 248);
      v2 += 248;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<OZSimStateElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    OZSimStateElement::~OZSimStateElement((i - 248));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<CMTime,OZSimStateArray *>,std::__map_value_compare<CMTime,std::__value_type<CMTime,OZSimStateArray *>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,OZSimStateArray *>>>::__emplace_unique_key_args<CMTime,std::pair<CMTime const,OZSimStateArray *>>(uint64_t a1, CMTime *a2)
{
  v2 = *std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__find_equal<CMTime>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void OZMetalGradientRadial::OZMetalGradientRadial(OZMetalGradientRadial *this, OZChannelGradient *a2, CGColorSpace *a3, CGColorSpace *a4)
{
  v4 = a3;
  *(this + 37) = &unk_2872DEA38;
  *(this + 38) = 0;
  *(this + 312) = 1;
  OZGradient::OZGradient(this, off_287279B90, a2, a3, a4);
  *this = &unk_287279B20;
  *(this + 37) = &unk_287279B70;
  *(this + 27) = 0;
  *(this + 26) = this + 216;
  *(this + 28) = 0;
  *(this + 58) = v4;
  *(this + 118) = 0;
  PCColor::PCColor((this + 240));
}

void sub_260087E84(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::destroy(v3, *(v1 + 216));
  OZGradient::~OZGradient(v1, off_287279B90);
  *(v1 + 296) = v2;
  *(v1 + 312) = 0;
  PCWeakCount::~PCWeakCount((v1 + 304));
  _Unwind_Resume(a1);
}

void OZMetalGradientRadial::~OZMetalGradientRadial(CGColorSpace **this, void *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 3)) = a2[5];
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 36);
  std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::destroy((this + 26), this[27]);

  OZGradient::~OZGradient(this, a2 + 1);
}

void OZMetalGradientRadial::~OZMetalGradientRadial(CGColorSpace **this)
{
  *(v1 + 296) = &unk_2872DEA38;
  *(v1 + 312) = 0;
  PCWeakCount::~PCWeakCount((v1 + 304));
}

{
  *(v1 + 296) = &unk_2872DEA38;
  *(v1 + 312) = 0;
  PCWeakCount::~PCWeakCount((v1 + 304));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZMetalGradientRadial::~OZMetalGradientRadial(OZMetalGradientRadial *this)
{
  *(v1 + 296) = &unk_2872DEA38;
  *(v1 + 312) = 0;
  v2 = (v1 + 304);

  PCWeakCount::~PCWeakCount(v2);
}

{
  OZMetalGradientRadial::~OZMetalGradientRadial((this + *(*this - 24)));
}

void OZMetalGradientRadial::getHash(OZMetalGradientRadial *this, CMTime *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v7[520] = *MEMORY[0x277D85DE8];
  OZGradient::getHash(v2, v5);
  PCHashWriteStream::PCHashWriteStream(v7);
  PCHashWriteStream::writeValue(v7, v2[236]);
  PCHashWriteStream::writeValue(v7, v2[237]);
  Hash = PCHashWriteStream::getHash(v7);
  PCHash128::operator+=(v4, Hash);
  PCHashWriteStream::~PCHashWriteStream(v7);
}

uint64_t OZMetalGradientRadial::update(OZMetalGradientRadial *this, CMTime *a2)
{
  v17 = *a2;
  v3 = OZGradient::update(this, &v17);
  if (v3)
  {
    if (*(this + 236) == 1)
    {
      v4 = *(this + 1);
      v5 = vcvtd_n_f64_s32(*(v4 + 12), 2uLL);
      if (v5)
      {
        v6 = *(v4 + 24);
        __asm { FMOV            V0.2S, #1.0 }

        do
        {
          *v6 = _D0;
          *(v6 + 8) = 1065353216;
          v6 += 16;
          --v5;
        }

        while (v5);
      }
    }

    if (*(this + 237) == 1)
    {
      v12 = (*(*(this + 1) + 24) + 4 * (4 * vcvtd_n_f64_s32(*(*(this + 1) + 12), 2uLL) - 4));
      UserTag = HGRenderJob::GetUserTag(this);
      PCColor::getRGBA((this + 240), v12, v12 + 1, v12 + 2, v12 + 3, UserTag);
    }

    v15 = *(this + 27);
    v14 = (this + 216);
    std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::destroy((v14 - 1), v15);
    *v14 = 0;
    v14[1] = 0;
    *(v14 - 1) = v14;
  }

  return v3;
}

std::string *OZMetalGradientRadial::getFragmentProgramText(OZMetalGradientRadial *this)
{
  {
    std::string::__init(&OZMetalGradientRadial::getFragmentProgramText(void)const::program, "\n        fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]],\n                                          const constant float4* hg_Params [[ buffer(0) ]],\n                                          texture2d< float > hg_Texture0 [[ texture(0) ]])\n        {\n            // Enforce clamp_to_zero lookup with local sampler.\n            //  (see setTransparentBeyondEdge() in GL impl, assumed true in Metal impl)\n            sampler s(coord::normalized,\n                      address::clamp_to_zero,\n                      filter::linear);\n            \n            FragmentOut out;\n            float2 t = frag._texCoord0.xy;\n            t.x = sqrt(dot(t, t));\n            t.y = 0.5;\n            out.color0 = hg_Texture0.sample(s, t) * hg_Params[0];\n            return out;\n        }\n    ", 0x31AuLL);
    __cxa_atexit(MEMORY[0x277D82640], &OZMetalGradientRadial::getFragmentProgramText(void)const::program, &dword_25F8F0000);
  }

  return &OZMetalGradientRadial::getFragmentProgramText(void)const::program;
}

HGMetalContext *OZMetalGradientRadial::getTexture@<X0>(OZMetalGradientRadial *this@<X0>, HGMetalContext *a2@<X1>, HGMetalContext **a3@<X8>)
{
  v6 = *(PCICCTransferFunctionLUT::getLUTEnd(a2) + 24);
  v22[0] = v6;
  v8 = this + 216;
  v7 = *(this + 27);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = this + 216;
  do
  {
    v10 = *(v7 + 4);
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *&v7[8 * v12];
  }

  while (v7);
  if (v9 != v8 && v6 >= *(v9 + 4))
  {
    result = *(v9 + 5);
    *a3 = result;
    if (result)
    {
      v21 = *(*result + 16);

      return v21();
    }
  }

  else
  {
LABEL_9:
    v13 = HGRectMake4i(0, 0, *(this + 58), 1u);
    v15 = v14;
    v16 = *(*(this + 1) + 24);
    v17 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v17, v13, v15, 28, v16);
    *&v24.var0 = v15;
    *&v24.var2 = 0;
    HGMetalTexture::createFromBitmap(a2, v17, v13, v24, 1, a3);
    v22[2] = v22;
    v18 = std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v8 - 8), v22);
    v19 = v18[5];
    result = *a3;
    if (v19 != *a3)
    {
      if (v19)
      {
        (*(*v19 + 24))(v19);
        result = *a3;
      }

      v18[5] = result;
      if (result)
      {
        result = (*(*result + 16))(result);
      }
    }

    if (v17)
    {
      return (*(*v17 + 24))(v17);
    }
  }

  return result;
}

void sub_26008858C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,HGRef<HGMetalTexture>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,HGRef<HGMetalTexture>>,0>(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,HGRef<HGMetalTexture>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,HGRef<HGMetalTexture>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t OZShaderManager::getInstance(OZShaderManager *this)
{
  if (OZShaderManager::getInstance(void)::once != -1)
  {
    OZShaderManager::getInstance();
  }

  return OZShaderManager::_instance;
}

void OZShaderManager::~OZShaderManager(PCSpinLock *this)
{
  *&this->_lock._os_unfair_lock_opaque = &unk_287279CE0;
  OZShaderManager::purgeAll(&this->_lock);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&this[4], *&this[6]._lock._os_unfair_lock_opaque);
  PCSpinLock::~PCSpinLock(this + 2);

  PCSingleton::~PCSingleton(this);
}

{
  OZShaderManager::~OZShaderManager(this);

  JUMPOUT(0x2666E9F00);
}

void OZShaderManager::purgeAll(os_unfair_lock_s *this)
{
  PCSpinLock::lock(this + 2);
  v2 = *&this[4]._os_unfair_lock_opaque;
  v3 = this + 6;
  if (v2 != &this[6])
  {
    do
    {
      v4 = *&v2[10]._os_unfair_lock_opaque;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *&v2[2]._os_unfair_lock_opaque;
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *&v5->_os_unfair_lock_opaque;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *&v2[4]._os_unfair_lock_opaque;
          v7 = *&v6->_os_unfair_lock_opaque == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&this[4], *&this[6]._os_unfair_lock_opaque);
  *&this[6]._os_unfair_lock_opaque = 0;
  *&this[8]._os_unfair_lock_opaque = 0;
  *&this[4]._os_unfair_lock_opaque = v3;
  PCSpinLock::unlock(this + 2);
}

void OZShaderManager::addShader(os_unfair_lock_s *a1, const char *a2, uint64_t a3)
{
  v5 = a1 + 2;
  v7 = a2;
  PCSpinLock::lock(a1 + 2);
  if (std::__tree<std::__value_type<char const*,PGShader *>,std::__map_value_compare<char const*,std::__value_type<char const*,PGShader *>,ltstr,true>,std::allocator<std::__value_type<char const*,PGShader *>>>::__count_unique<char const*>(&a1[4], &v7))
  {
    v8 = &v7;
    v6 = *(std::__tree<std::__value_type<char const*,PGShader *>,std::__map_value_compare<char const*,std::__value_type<char const*,PGShader *>,ltstr,true>,std::allocator<std::__value_type<char const*,PGShader *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&a1[4], &v7) + 40);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v8 = &v7;
  *(std::__tree<std::__value_type<char const*,PGShader *>,std::__map_value_compare<char const*,std::__value_type<char const*,PGShader *>,ltstr,true>,std::allocator<std::__value_type<char const*,PGShader *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&a1[4], &v7) + 40) = a3;
  PCSpinLock::unlock(v5);
}

uint64_t OZShaderManager::getShader(os_unfair_lock_s *this, const char *a2)
{
  v3 = this + 2;
  v6[0] = a2;
  PCSpinLock::lock(this + 2);
  if (std::__tree<std::__value_type<char const*,PGShader *>,std::__map_value_compare<char const*,std::__value_type<char const*,PGShader *>,ltstr,true>,std::allocator<std::__value_type<char const*,PGShader *>>>::__count_unique<char const*>(&this[4], v6))
  {
    v6[2] = v6;
    v4 = *(std::__tree<std::__value_type<char const*,PGShader *>,std::__map_value_compare<char const*,std::__value_type<char const*,PGShader *>,ltstr,true>,std::allocator<std::__value_type<char const*,PGShader *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&this[4], v6) + 40);
  }

  else
  {
    v4 = 0;
  }

  PCSpinLock::unlock(v3);
  return v4;
}

uint64_t std::__tree<std::__value_type<char const*,PGShader *>,std::__map_value_compare<char const*,std::__value_type<char const*,PGShader *>,ltstr,true>,std::allocator<std::__value_type<char const*,PGShader *>>>::__count_unique<char const*>(uint64_t a1, const char **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a2;
    v4 = 1;
    do
    {
      v5 = v2[4];
      if ((strcmp(v3, v5) & 0x80000000) == 0)
      {
        if ((strcmp(v5, v3) & 0x80000000) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<char const*,PGShader *>,std::__map_value_compare<char const*,std::__value_type<char const*,PGShader *>,ltstr,true>,std::allocator<std::__value_type<char const*,PGShader *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(uint64_t a1, const char **a2)
{
  v2 = *std::__tree<std::__value_type<char const*,void *>,std::__map_value_compare<char const*,std::__value_type<char const*,void *>,OZRenderParams::LessThanStringFunctor,true>,std::allocator<std::__value_type<char const*,void *>>>::__find_equal<char const*>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void OZARAnchorElement::OZARAnchorElement(OZARAnchorElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZ3DEngineSceneElement::OZ3DEngineSceneElement(this, a2, a3, a4);
  *v4 = &unk_287279D28;
  *(v4 + 16) = &unk_28727A660;
  *(v4 + 48) = &unk_28727A8B8;
  *(v4 + 6528) = &unk_28727A910;
  *(v4 + 24408) = 0u;
}

void OZARAnchorElement::OZARAnchorElement(OZARAnchorElement *this, const OZARAnchorElement *a2, uint64_t a3)
{
  OZ3DEngineSceneElement::OZ3DEngineSceneElement(this, a2, a3);
  *v4 = &unk_287279D28;
  *(v4 + 16) = &unk_28727A660;
  *(v4 + 48) = &unk_28727A8B8;
  *(v4 + 24408) = 0u;
  *(v4 + 6528) = &unk_28727A910;
  *(v4 + 24408) = *(a2 + 24408);
}

void sub_260089040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_2600890D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

OZLocking **OZFxPlugLockSentinel::OZFxPlugLockSentinel(OZLocking **a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  OZLocking::acquireObjectReadLock(v3);
  return a1;
}

void sub_260089158(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void OZFxPlugLockSentinel::~OZFxPlugLockSentinel(OZLocking **this)
{
  OZLocking::releaseObjectReadLock(*this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t OZChanRotoshapeRefWithPicker_Factory::getInstance(OZChanRotoshapeRefWithPicker_Factory *this)
{
  if (atomic_load_explicit(&OZChanRotoshapeRefWithPicker_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanRotoshapeRefWithPicker_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanRotoshapeRefWithPicker_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChanRotoshapeRefWithPicker_Factory::_instance;
}

void OZChanRotoshapeRefWithPicker::~OZChanRotoshapeRefWithPicker(OZChanRotoshapeRefWithPicker *this)
{
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChanRotoshapeRefWithPicker::~OZChanRotoshapeRefWithPicker(OZChanRotoshapeRefWithPicker *this)
{
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this - 16));
}

{
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChanRotoshapeRefWithPicker_Factory::OZChanRotoshapeRefWithPicker_Factory(OZChanRotoshapeRefWithPicker_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_26084F790;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28727AE18;
  *(this + 16) = &unk_28727AEE8;
}

void OZShapeBehavior::OZShapeBehavior(OZShapeBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZBehavior::OZBehavior(this, a2, a3, a4);
  *v5 = &unk_28727AF40;
  *(v5 + 16) = &unk_28727B2A8;
  *(v5 + 48) = &unk_28727B500;
  *(v5 + 336) = &unk_28727B558;
  *(v5 + 344) = 0;
  *(v5 + 352) = 0;
  *(v5 + 360) = 0;
  PCMutex::PCMutex((v5 + 368));
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 59) = 0;
  PCSharedMutex::PCSharedMutex((this + 496));
  *(this + 75) = this + 600;
  *(this + 76) = this + 600;
  *(this + 77) = 0;
  PCSharedMutex::PCSharedMutex((this + 624));
  PCWorkingColorVector::PCWorkingColorVector((this + 728));
  *(this + 464) = 0;
}

void sub_260089920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  PCSharedMutex::~PCSharedMutex((v10 + 624));
  std::__list_imp<unsigned int>::clear(v11);
  PCSharedMutex::~PCSharedMutex((v10 + 496));
  a10 = (v10 + 472);
  std::vector<std::list<OZShapeBehaviorVertexCacheEntry *>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v13 = *(v10 + 440);
  if (v13)
  {
    *(v10 + 448) = v13;
    operator delete(v13);
  }

  PCMutex::~PCMutex((v10 + 368));
  v14 = *(v10 + 344);
  if (v14)
  {
    operator delete(v14);
  }

  OZBehavior::~OZBehavior(v10);
  _Unwind_Resume(a1);
}

void OZShapeBehavior::OZShapeBehavior(OZShapeBehavior *this, OZShapeBehavior *a2, char a3)
{
  OZBehavior::OZBehavior(this, a2, a3);
  *v5 = &unk_28727AF40;
  *(v5 + 16) = &unk_28727B2A8;
  *(v5 + 48) = &unk_28727B500;
  *(v5 + 336) = &unk_28727B558;
  *(v5 + 344) = 0;
  *(v5 + 352) = 0;
  *(v5 + 360) = 0;
  PCMutex::PCMutex((v5 + 368));
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 59) = 0;
  PCSharedMutex::PCSharedMutex((this + 496));
  *(this + 75) = this + 600;
  *(this + 76) = this + 600;
  *(this + 77) = 0;
  PCSharedMutex::PCSharedMutex((this + 624));
  PCWorkingColorVector::PCWorkingColorVector((this + 728));
  std::vector<BOOL>::operator=(this + 344, a2 + 344);
  *(this + 464) = 0;
  (*(*this + 784))(this);
}

void sub_260089AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__list_imp<unsigned int>::clear(v11);
  PCSharedMutex::~PCSharedMutex((v10 + 496));
  a10 = (v10 + 472);
  std::vector<std::list<OZShapeBehaviorVertexCacheEntry *>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v13 = *(v10 + 440);
  if (v13)
  {
    *(v10 + 448) = v13;
    operator delete(v13);
  }

  PCMutex::~PCMutex((v10 + 368));
  v14 = *(v10 + 344);
  if (v14)
  {
    operator delete(v14);
  }

  OZBehavior::~OZBehavior(v10);
  _Unwind_Resume(a1);
}

void OZShapeBehavior::~OZShapeBehavior(OZShapeBehavior *this)
{
  *this = &unk_28727AF40;
  *(this + 2) = &unk_28727B2A8;
  *(this + 6) = &unk_28727B500;
  *(this + 42) = &unk_28727B558;
  if (*(this + 464) == 1)
  {
    Scene = OZBehavior::getScene(this);
    if (Scene)
    {
      OZDocument::removeCPPObserver(*(Scene + 1584));
      *(this + 464) = 0;
    }
  }

  (*(*this + 784))(this);
  PCSharedMutex::~PCSharedMutex((this + 624));
  std::__list_imp<unsigned int>::clear(this + 75);
  PCSharedMutex::~PCSharedMutex((this + 496));
  v5 = (this + 472);
  std::vector<std::list<OZShapeBehaviorVertexCacheEntry *>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 55);
  if (v3)
  {
    *(this + 56) = v3;
    operator delete(v3);
  }

  PCMutex::~PCMutex((this + 368));
  v4 = *(this + 43);
  if (v4)
  {
    operator delete(v4);
  }

  OZBehavior::~OZBehavior(this);
}

{
  OZShapeBehavior::~OZShapeBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZShapeBehavior::~OZShapeBehavior(OZShapeBehavior *this)
{
  OZShapeBehavior::~OZShapeBehavior((this - 16));
}

{
  OZShapeBehavior::~OZShapeBehavior((this - 48));
}

{
  OZShapeBehavior::~OZShapeBehavior((this - 336));
}

{
  OZShapeBehavior::~OZShapeBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZShapeBehavior::~OZShapeBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZShapeBehavior::~OZShapeBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZShapeBehavior::operator=(uint64_t a1, const void *a2)
{
  OZBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  std::vector<BOOL>::operator=(a1 + 344, v4 + 344);
  v5 = *(*a1 + 784);

  return v5(a1);
}

uint64_t OZShapeBehavior::didAddToNode(OZShapeBehavior *this, OZSceneNode *a2)
{
  *(this + 41) = a2;
  (*(*this + 696))(this);
  v3 = *this;
  if (*(this + 44))
  {
    (*(v3 + 736))(this);
  }

  else
  {
    (*(v3 + 728))(this);
  }

  Rotoshape = OZShapeBehavior::getRotoshape(this);
  OZRotoshape::setDirty(Rotoshape, 1, 1);
  if ((*(this + 464) & 1) == 0 && (*(*this + 336))(this))
  {
    v5 = (*(*this + 336))(this);
    OZDocument::addCPPObserver(*(v5 + 1584), this + 336, 1000);
    *(this + 464) = 1;
  }

  v6 = *(*this + 784);

  return v6(this);
}

void *OZShapeBehavior::getRotoshape(OZShapeBehavior *this)
{
  result = (*(*this + 320))(this);
  if (result)
  {
  }

  return result;
}

uint64_t OZShapeBehavior::didAddSceneNodeToScene(OZShapeBehavior *this, OZScene *a2)
{
  result = (*(*this + 744))(this);
  if ((*(this + 464) & 1) == 0)
  {
    result = OZDocument::addCPPObserver(*(a2 + 198), this + 336, 1000);
    *(this + 464) = 1;
  }

  return result;
}

void *OZShapeBehavior::enable(OZShapeBehavior *this)
{
  OZObjectManipulator::enable((this + 16));
  result = OZShapeBehavior::getRotoshape(this);
  if (result)
  {
    Rotoshape = OZShapeBehavior::getRotoshape(this);

    return OZRotoshape::setDirty(Rotoshape, 1, 1);
  }

  return result;
}

void *OZShapeBehavior::disable(OZShapeBehavior *this)
{
  OZObjectManipulator::disable((this + 16));
  result = OZShapeBehavior::getRotoshape(this);
  if (result)
  {
    Rotoshape = OZShapeBehavior::getRotoshape(this);

    return OZRotoshape::setDirty(Rotoshape, 1, 1);
  }

  return result;
}

uint64_t OZShapeBehavior::rebuildCurveNodes(OZShapeBehavior *this)
{
  Rotoshape = OZShapeBehavior::getRotoshape(this);
  OZShapeBehavior::removeNodesFromChan(this, (Rotoshape + 19336));
  v3 = *(*this + 696);

  return v3(this);
}

void OZShapeBehavior::removeNodesFromChan(OZShapeBehavior *this, OZChannelBase *a2)
{
  if ((a2->var7 & 0x1000) != 0)
  {
    if (v4)
    {
      for (i = *v4; i != v4[1]; ++i)
      {
        v6 = *i;
        OZShapeBehavior::removeNodesFromChan(this, v6);
      }
    }
  }

  else
  {

    OZShapeBehavior::removeNodesFromSingleChan(this, v3);
  }
}

void *OZShapeBehavior::setupCurveNodes(OZShapeBehavior *this)
{
  result = OZShapeBehavior::getRotoshape(this);
  if (result)
  {
    result = OZShapeBehavior::getRotoshape(this);
    v3 = result[2431];
    if (v3)
    {
      if (((*(v3 + 8) - *v3) & 0x7FFFFFFF8) != 0 && ((*(v3 + 8) - *v3) >> 3) > 0)
      {
        v4 = **v3;
        if (v4)
        {
        }

        Descendant = OZChannelFolder::getDescendant(v4, 2);
        if (Descendant)
        {
        }

        operator new();
      }
    }
  }

  return result;
}

void OZShapeBehavior::setupCurveNodesForVertex(OZShapeBehavior *this, OZChannelFolder *a2, OZChannelVertexFolder *a3)
{
  Descendant = OZChannelFolder::getDescendant(a2, 2);
  if (Descendant)
  {
  }

  operator new();
}

uint64_t OZShapeBehavior::updateAffectedIDs(OZShapeBehavior *this)
{
  result = OZShapeBehavior::getRotoshape(this);
  v3 = *(result + 19448);
  if (v3)
  {
    v4 = (v3[1] - *v3) >> 3;
    *(this + 44) = 0;
    if (v4 >= 2)
    {
      v5 = v4 / 2;
      do
      {
        v6 = 1;
        result = std::vector<BOOL>::push_back(this + 344, &v6);
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    *(this + 44) = 0;
  }

  return result;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void OZShapeBehavior::copyAffectedIDs(OZShapeBehavior *this)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  v2 = *(OZShapeBehavior::getRotoshape(this) + 2431);
  if (v2)
  {
    v3 = v2[1] - *v2;
    v8 = 0;
    if ((v3 >> 3) >= 2)
    {
      v4 = 0;
      v5 = (v3 >> 4) & 0x7FFFFFFF;
      do
      {
        if (v4 >= *(this + 88))
        {
          v6 = 1;
        }

        else
        {
          v6 = (*(*(this + 43) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1;
        }

        std::vector<BOOL>::push_back(&__p, &v6);
        ++v4;
      }

      while (v5 != v4);
    }
  }

  else
  {
    v8 = 0;
  }

  *(this + 44) = 0;
  std::vector<BOOL>::operator=(this + 344, &__p);
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_26008ABDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZShapeBehavior::restoreAffectedIDs(OZShapeBehavior *this)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  v2 = *(OZShapeBehavior::getRotoshape(this) + 2431);
  if (v2)
  {
    v3 = v2[1] - *v2;
    v8 = 0;
    if ((v3 >> 3) >= 2)
    {
      v4 = 0;
      v5 = (v3 >> 4) & 0x7FFFFFFF;
      do
      {
        if (v4 >= *(this + 88))
        {
          v6 = 0;
        }

        else
        {
          v6 = (*(*(this + 43) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1;
        }

        std::vector<BOOL>::push_back(&__p, &v6);
        ++v4;
      }

      while (v5 != v4);
    }
  }

  else
  {
    v8 = 0;
  }

  *(this + 44) = 0;
  std::vector<BOOL>::operator=(this + 344, &__p);
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_26008ACD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZShapeBehavior::didAddVertex(OZShapeBehavior *this, int a2)
{
  if (*(this + 88) >= a2)
  {
    v4 = *(this + 43);
    if (a2)
    {
      if (a2 < 0)
      {
        v5 = -((63 - a2) >> 6);
      }

      else
      {
        v5 = a2 >> 6;
      }

      v4 += 8 * v5;
      v6 = a2 & 0x3F;
      v10 = 1;
      v7 = this + 344;
    }

    else
    {
      v10 = 1;
      v7 = this + 344;
      v6 = 0;
    }

    std::vector<BOOL>::insert(v7, v4, v6, &v10, v9);
  }

  else
  {
    v9[0] = 1;
    std::vector<BOOL>::push_back(this + 344, v9);
  }

  return (*(*this + 784))(this);
}

void std::vector<BOOL>::insert(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v11 >= v10 << 6)
  {
    v34 = 0;
    v35 = 0uLL;
    if ((v11 + 1) < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v15 = v10 << 6;
    v16 = v10 << 7;
    v17 = (v11 & 0xFFFFFFFFFFFFFFC0) + 64;
    if (v16 <= v17)
    {
      v16 = v17;
    }

    if (v15 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v34, v18);
    v19 = *a1;
    *&v35 = *(a1 + 8) + 1;
    v36 = v34;
    v37 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v19, 0, a2, a3, &v36, &v32);
    v20 = v32;
    *a5 = v32;
    v21 = v33;
    *(a5 + 8) = v33;
    v22 = *(a1 + 8);
    v23 = (*a1 + 8 * (v22 >> 6));
    v24 = v22 & 0x3F;
    v36 = &v34[v35 >> 6];
    v37 = v35 & 0x3F;
    if (v37 == v24)
    {
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v23, v24, &v36, &v32);
    }

    else
    {
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v23, v24, &v36, &v32);
    }

    v27 = *a1;
    *a1 = v34;
    v34 = v27;
    v28 = *(a1 + 8);
    *(a1 + 8) = v35;
    v35 = v28;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    v12 = *a1;
    v13 = (*a1 + 8 * (v11 >> 6));
    v14 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = v11 + 1;
    v34 = &v12[(v11 + 1) >> 6];
    if (((v11 + 1) & 0x3F) == v14)
    {
      LODWORD(v35) = v14;
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v13, v11 & 0x3F, &v34, &v36);
    }

    else
    {
      LODWORD(v35) = (v11 + 1) & 0x3F;
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v13, v11 & 0x3F, &v34, &v36);
    }

    v25 = 8 * (a2 - *a1) + a3;
    if (v25 < 0)
    {
      v29 = v25 - 63;
      if (v25 - 63 < 0)
      {
        v29 = 8 * (a2 - *a1) + a3;
      }

      v26 = v29 >> 6;
    }

    else
    {
      v26 = v25 >> 6;
    }

    v20 = (*a1 + 8 * v26);
    v21 = v25 & 0x3F;
    *a5 = v20;
    *(a5 + 8) = v25 & 0x3F;
  }

  v30 = 1 << v21;
  if (*a4 == 1)
  {
    v31 = *v20 | v30;
  }

  else
  {
    v31 = *v20 & ~v30;
  }

  *v20 = v31;
}

void sub_26008B028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZShapeBehavior::willRemoveVertex(OZShapeBehavior *this, int a2)
{
  v3 = *(this + 44);
  if (v3 >= a2)
  {
    v4 = *(this + 43);
    if (a2)
    {
      if (a2 < 0)
      {
        v5 = -((63 - a2) >> 6);
      }

      else
      {
        v5 = a2 >> 6;
      }

      v6 = &v4[v5];
      v7 = a2 & 0x3F;
      if (v5 < 0)
      {
        v5 = -(-v5 & 0x3FFFFFF);
      }

      v8 = &v4[v5];
      v9 = (v7 + 1) & 0x3F;
      v10 = ((v7 + 1) >> 3) & 8;
      v11 = &v4[v3 >> 6];
      if (v7 == v9)
      {
        v15 = v8;
        v16 = v7;
        std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>((v6 + v10), v9, v11, v3 & 0x3F, &v15, v14);
LABEL_13:
        v3 = *(this + 44);
        goto LABEL_14;
      }

      v15 = v8;
      v16 = v7;
      v4 = (v6 + v10);
      v12 = v3 & 0x3F;
    }

    else
    {
      v11 = &v4[v3 >> 6];
      v15 = *(this + 43);
      v16 = 0;
      v12 = v3 & 0x3F;
      v9 = 1;
    }

    std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>(v4, v9, v11, v12, &v15, v14);
    goto LABEL_13;
  }

LABEL_14:
  *(this + 44) = v3 - 1;
  return (*(*this + 784))(this);
}

uint64_t OZShapeBehavior::resetAffectedVertices(OZShapeBehavior *this)
{
  if (*(this + 44))
  {
    v1 = 0;
    v2 = *(this + 43);
    v3 = 1;
    do
    {
      *(v2 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v1);
      v1 = v3;
    }

    while (*(this + 44) > v3++);
  }

  Rotoshape = OZShapeBehavior::getRotoshape(this);

  return OZRotoshape::setDirty(Rotoshape, 1, 1);
}

uint64_t OZShapeBehavior::addAllAffectedVertices(OZShapeBehavior *this)
{
  if (*(this + 44))
  {
    v1 = 0;
    v2 = *(this + 43);
    v3 = 1;
    do
    {
      *(v2 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v1;
      v1 = v3;
    }

    while (*(this + 44) > v3++);
  }

  Rotoshape = OZShapeBehavior::getRotoshape(this);

  return OZRotoshape::setDirty(Rotoshape, 1, 1);
}

uint64_t OZShapeBehavior::didInsert(OZShapeBehavior *this, OZSceneNode *a2, OZBehavior *a3)
{
  (*(*this + 96))(this, a2);
  v5 = *(*this + 112);

  return v5(this, a3);
}

uint64_t OZShapeBehavior::willRemove(OZShapeBehavior *this)
{
  if (*(this + 464) == 1 && (*(*this + 336))(this))
  {
    v2 = (*(*this + 336))(this);
    OZDocument::removeCPPObserver(*(v2 + 1584));
    *(this + 464) = 0;
  }

  Rotoshape = OZShapeBehavior::getRotoshape(this);
  OZShapeBehavior::removeNodesFromChan(this, (Rotoshape + 19336));
  v4 = OZShapeBehavior::getRotoshape(this);
  result = OZRotoshape::setDirty(v4, 1, 1);
  *(this + 41) = 0;
  return result;
}

uint64_t OZShapeBehavior::willRemoveSceneNodeFromScene(uint64_t this, OZScene *a2)
{
  if (*(this + 464) == 1)
  {
    v2 = this;
    this = (*(*this + 336))(this, a2);
    if (this)
    {
      this = OZDocument::removeCPPObserver(*(this + 1584));
      *(v2 + 464) = 0;
    }
  }

  return this;
}

void OZShapeBehavior::removeNodesFromSingleChan(OZShapeBehavior *this, OZChannel *a2)
{
  OZChannel::enumerateCurveProcessingNodes(a2, &__p);
  v8 = &v8;
  v9 = &v8;
  v10 = 0;
  v4 = __p;
  v5 = v12;
  if (__p != v12)
  {
    do
    {
      if (*v4)
      {
        if (v6)
        {
          if (v6[1] == this)
          {
            operator new();
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
    if (&v8 != v9)
    {
      v7 = &v8;
      do
      {
        OZChannel::deleteCurveProcessingNode(a2, *(*v7 + 16));
        v7 = *v7;
      }

      while (v7 != v9);
    }
  }

  std::__list_imp<unsigned int>::clear(&v8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_26008B5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::__list_imp<unsigned int>::clear(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OZShapeBehavior::reorderCurveNode(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a2[2];
  OZChannel::removeCurveProcessingNode(v7, a2);
  OZChannel::enumerateCurveProcessingNodes(v7, __p);
  v8 = __p[1];
  v9 = __p[0];
  if (__p[0] == __p[1])
  {
LABEL_13:
    OZChannel::appendCurveProcessingNode(v7, a2);
  }

  else
  {
    v10 = *a4;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(*(*a4 + 16) + 8) + 8), xmmword_26084F810)))))
    {
      v11 = 0;
      while (1)
      {
        v12 = v11;
        v11 = *v9;
        if (*v9)
        {
          if (v13)
          {
            if (v10 == a3)
            {
              break;
            }

            v14 = v10;
            while (*(v14 + 16) != v13[1])
            {
              v14 = *(v14 + 8);
              if (v14 == a3)
              {
                goto LABEL_15;
              }
            }

            if (v14 == a3)
            {
              break;
            }
          }
        }

        if (++v9 == v8)
        {
          goto LABEL_13;
        }
      }

LABEL_15:
      OZChannel::insertCurveProcessingNode(v7, a2, v12);
    }

    else
    {
      v15 = *__p[0];
      {
        v15 = 0;
      }

      OZChannel::insertCurveProcessingNode(v7, a2, v15);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_26008B818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZShapeBehavior::reorderSingleChan(uint64_t a1, OZChannel *this, uint64_t a3, uint64_t *a4)
{
  OZChannel::enumerateCurveProcessingNodes(this, &__p);
  v11 = &v11;
  v12 = &v11;
  v13 = 0;
  v7 = __p;
  v8 = v15;
  if (__p != v15)
  {
    do
    {
      v9 = *v7;
      if (*v7)
      {
        if (v9)
        {
          if (v9[1] == a1)
          {
            operator new();
          }
        }
      }

      ++v7;
    }

    while (v7 != v8);
    if (&v11 != v12)
    {
      v10 = &v11;
      do
      {
        OZShapeBehavior::reorderCurveNode(v9, *(*v10 + 16), a3, a4);
        v10 = *v10;
      }

      while (v10 != v12);
    }
  }

  std::__list_imp<unsigned int>::clear(&v11);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_26008B9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::__list_imp<unsigned int>::clear(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OZShapeBehavior::reorderChan(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if ((a2[7] & 0x1000) != 0)
  {
    if (v8)
    {
      for (i = *v8; i != v8[1]; ++i)
      {
        v10 = *i;
        OZShapeBehavior::reorderChan(a1, v10, a3, a4);
      }
    }
  }

  else
  {

    OZShapeBehavior::reorderSingleChan(a1, v7, a3, a4);
  }
}

void OZShapeBehavior::didReorder(OZShapeBehavior *this, OZBehavior *a2)
{
  if (OZShapeBehavior::getRotoshape(this))
  {
    Rotoshape = OZShapeBehavior::getRotoshape(this);
    v4 = Rotoshape + 200;
    if (!Rotoshape)
    {
      v4 = 0;
    }

    v5 = (v4 + 1000);
    v6 = *(v4 + 126);
    v7 = v5;
    if (v6 != v5)
    {
      v7 = v6;
      while (*(v7 + 16) != this)
      {
        v7 = *(v7 + 8);
        if (v7 == v5)
        {
          v7 = v5;
          break;
        }
      }
    }

    v9 = *(v7 + 8);
    v8 = OZShapeBehavior::getRotoshape(this);
    OZShapeBehavior::reorderChan(this, v8 + 2417, v5, &v9);
  }
}

void OZShapeBehavior::willDeleteObject(OZShapeBehavior *this, OZObjectManipulator *a2)
{
  Rotoshape = OZShapeBehavior::getRotoshape(this);
  v5 = (Rotoshape + 216);
  if (!Rotoshape)
  {
    v5 = 0;
  }

  if (v5 == a2)
  {
    v6 = (OZShapeBehavior::getRotoshape(this) + 19336);

    OZShapeBehavior::removeNodesFromChan(this, v6);
  }
}

uint64_t OZShapeBehavior::isVertexAffectedByBehavior(OZShapeBehavior *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 88) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*(this + 43) + ((a2 >> 3) & 0x1FFFFFF8)) >> a2) & 1;
  }
}

uint64_t OZShapeBehavior::addAffectedVertex(uint64_t this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    if (*(this + 352) > a2)
    {
      *(*(this + 344) + ((a2 >> 3) & 0x1FFFFFF8)) |= 1 << a2;
    }

    Rotoshape = OZShapeBehavior::getRotoshape(this);

    return OZRotoshape::setDirty(Rotoshape, 1, 1);
  }

  return this;
}

uint64_t OZShapeBehavior::removeAffectedVertex(uint64_t this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    if (*(this + 352) > a2)
    {
      *(*(this + 344) + ((a2 >> 3) & 0x1FFFFFF8)) &= ~(1 << a2);
    }

    Rotoshape = OZShapeBehavior::getRotoshape(this);

    return OZRotoshape::setDirty(Rotoshape, 1, 1);
  }

  return this;
}

void OZShapeBehavior::didSetStartPoint(OZShapeBehavior *this, int a2)
{
  std::vector<BOOL>::vector(&__p, this + 344);
  *(this + 44) = 0;
  if (a2 < 0)
  {
    v4 = -((63 - a2) >> 6);
  }

  else
  {
    v4 = a2 >> 6;
  }

  v5 = __p + 8 * v4;
  v6 = a2 & 0x3F;
  v7 = (v13 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v8 = *(this + 43);
  v16 = v5;
  v17 = v6;
  v14 = __p + v7;
  v15 = v13 & 0x3F;
  std::vector<BOOL>::__insert_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(this + 344, v8, 0, &v16, &v14, (v13 & 0x3F) - v6 + 8 * (v7 - 8 * v4), v11);
  v9 = *(this + 44);
  v10 = *(this + 43) + 8 * (v9 >> 6);
  v16 = __p;
  v17 = 0;
  v14 = v5;
  v15 = v6;
  std::vector<BOOL>::__insert_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(this + 344, v10, v9 & 0x3F, &v16, &v14, v6 + 8 * (v5 - __p), v11);
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_26008BDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZShapeBehavior::writeBody(OZShapeBehavior *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZShapeBehaviorScope);
  if (*(this + 44))
  {
    v10 = 0;
    v11 = *(this + 43);
    do
    {
      (*(*a2 + 16))(a2, 801);
      (*(*a2 + 48))(a2, (*v11 >> v10) & 1);
      (*(*a2 + 24))(a2);
      v11 += v10 == 63;
      if (v10 == 63)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }
    }

    while (v11 != (*(this + 43) + 8 * (*(this + 44) >> 6)) || v10 != (*(this + 88) & 0x3F));
  }

  PCSerializerWriteStream::popScope(a2);

  return OZBehavior::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZShapeBehavior::parseBegin(OZShapeBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZShapeBehaviorScope);
  *(this + 44) = 0;
  return 1;
}

uint64_t non-virtual thunk toOZShapeBehavior::parseBegin(OZShapeBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZShapeBehaviorScope);
  *(this + 38) = 0;
  return 1;
}

uint64_t OZShapeBehavior::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZBehavior::parseElement(this, a2, a3);
  if (*(a3 + 2) == 801)
  {
    v6 = 0;
    (*(*a3 + 72))(a3, &v6);
    std::vector<BOOL>::push_back((this + 43), &v6);
  }

  return 1;
}

uint64_t OZShapeBehavior::getCurveNodeForChannel(OZShapeBehavior *this, OZChannel *a2)
{
  OZChannel::enumerateCurveProcessingNodes(a2, &v10);
  v3 = v10;
  v4 = v11;
  if (v10 != v11)
  {
    v5 = 0;
    while (1)
    {
      v6 = *&v3[v5];
      if (v6)
      {
        if (v7)
        {
          if (v7[1] == this)
          {
            break;
          }
        }
      }

      v5 += 8;
      if (&v3[v5] == v4)
      {
        goto LABEL_7;
      }
    }

    if (v5)
    {
      v8 = *&v3[v5 - 8];
      if (!v3)
      {
        return v8;
      }

      goto LABEL_8;
    }
  }

LABEL_7:
  v8 = 0;
  if (v3)
  {
LABEL_8:
    operator delete(v3);
  }

  return v8;
}

void *OZShapeBehavior::getGlobalCacheEntry(OZShapeBehavior *this, uint64_t a2, CMTime *a3)
{
  PCSharedMutex::lock_shared((this + 624));
  for (i = *(this + 76); ; i = i[1])
  {
    if (i == (this + 600))
    {
      v9 = 1;
      goto LABEL_7;
    }

    v7 = i[2];
    v8 = *(v7 + 8);
    time1.epoch = *(v7 + 24);
    *&time1.value = v8;
    v11 = *a3;
    if (!CMTimeCompare(&time1, &v11))
    {
      break;
    }
  }

  i = (*(*this + 808))(this, i[2]);
  v9 = 0;
LABEL_7:
  PCSharedMutex::unlock_shared((this + 624));
  if (v9)
  {
    time1 = *a3;
    if ((*(*this + 800))(this, a2, &time1))
    {
      PCSharedMutex::lock((this + 624));
      operator new();
    }

    return (*(*this + 808))(this, 0);
  }

  return i;
}

uint64_t OZShapeBehavior::getVertexCacheEntry(OZShapeBehavior *this, uint64_t a2, CMTime *a3)
{
  PCSharedMutex::lock_shared((this + 496));
  v6 = *(this + 59) + 24 * a2;
  v7 = v6;
  while (1)
  {
    v7 = *(v7 + 8);
    if (v7 == v6)
    {
      break;
    }

    v8 = *(v7 + 16);
    v9 = *(v8 + 8);
    time1.epoch = *(v8 + 24);
    *&time1.value = v9;
    v11 = *a3;
    if (!CMTimeCompare(&time1, &v11))
    {
      a2 = (*(*this + 832))(this, *(v7 + 16));
      break;
    }
  }

  PCSharedMutex::unlock_shared((this + 496));
  if (v7 == v6)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

void OZShapeBehavior::addVertexCacheEntry(OZShapeBehavior *this, int a2, OZShapeBehaviorVertexCacheEntry *a3)
{
  PCSharedMutex::lock((this + 496));
  if (a3)
  {
    operator new();
  }

  PCSharedMutex::unlock((this + 496));
}

void OZShapeBehavior::flushCache(OZShapeBehavior *this)
{
  PCSharedMutex::lock((this + 496));
  v3 = *(this + 59);
  v2 = *(this + 60);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = &v3[3 * v4];
      if (v6[2])
      {
        do
        {
          v7 = *(*v6 + 16);
          if (v7)
          {
            (*(*v7 + 8))(v7);
            v3 = *(this + 59);
          }

          *(v3[3 * v4] + 16) = 0;
          v8 = *(this + 59) + 24 * v4;
          v9 = *v8;
          v11 = **v8;
          v10 = *(*v8 + 8);
          *(v11 + 8) = v10;
          *v10 = v11;
          --*(v8 + 16);
          operator delete(v9);
          v3 = *(this + 59);
          v6 = &v3[3 * v4];
        }

        while (v6[2]);
        v2 = *(this + 60);
      }

      v4 = ++v5;
    }

    while (0xAAAAAAAAAAAAAAABLL * (v2 - v3) > v5);
  }

  while (v2 != v3)
  {
    v2 -= 3;
    std::__list_imp<unsigned int>::clear(v2);
  }

  *(this + 60) = v3;
  if (*(this + 44))
  {
    v12 = 1;
    do
    {
      v22[0] = v22;
      v22[1] = v22;
      v22[2] = 0;
      v13 = *(this + 60);
      if (v13 >= *(this + 61))
      {
        v14 = std::vector<std::list<OZShapeBehaviorVertexCacheEntry *>>::__emplace_back_slow_path<std::list<OZShapeBehaviorVertexCacheEntry *> const&>(this + 472, v22);
      }

      else
      {
        std::list<OZShapeBehaviorVertexCacheEntry *>::list(*(this + 60), v22);
        v14 = v13 + 24;
        *(this + 60) = v13 + 24;
      }

      *(this + 60) = v14;
      std::__list_imp<unsigned int>::clear(v22);
    }

    while (*(this + 44) > v12++);
  }

  PCSharedMutex::unlock((this + 496));
  PCSharedMutex::lock((this + 624));
  while (1)
  {
    v16 = *(this + 77);
    if (!v16)
    {
      break;
    }

    v17 = *(this + 75);
    v18 = *(v17 + 16);
    if (v18)
    {
      (*(*v18 + 8))(v18);
      v17 = *(this + 75);
      v16 = *(this + 77);
    }

    *(v17 + 16) = 0;
    v19 = *(this + 75);
    v21 = *v19;
    v20 = v19[1];
    *(v21 + 8) = v20;
    *v20 = v21;
    *(this + 77) = v16 - 1;
    operator delete(v19);
  }

  PCSharedMutex::unlock((this + 624));
}

void sub_26008C894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  PCSharedMutex::unlock((v2 + 496));
  _Unwind_Resume(a1);
}

OZShapeBehavior *OZShapeBehavior::notify(OZShapeBehavior *this)
{
  result = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4 = result;
  v13[520] = *MEMORY[0x277D85DE8];
  if ((v2 & 0x981C) != 0)
  {
    result = (*(*result + 784))(result);
  }

  if ((v3 & 0xC) != 0)
  {
    result = (*(*v4 + 336))(v4);
    if (result)
    {
      v5 = result;
      PCSharedMutex::lock_shared((v4 + 496));
      PCSharedMutex::lock_shared((v4 + 624));
      PCHashWriteStream::PCHashWriteStream(v13);
      OZRenderParams::OZRenderParams(v12);
      OZRenderState::OZRenderState(&v11);
      OZScene::getCurrentTime(v5, &v10);
      v11.var0 = v10;
      OZRenderParams::setState(v12, &v11);
      v10 = v12[0];
      OZChannelFolder::calcHashForState((v4 + 56), v13, &v10);
      v9 = vceqq_s32(*PCHashWriteStream::getHash(v13)->i8, *(v4 + 728));
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(v9))))
      {
        *(v4 + 728) = *PCHashWriteStream::getHash(v13)->i8;
      }

      OZRenderParams::~OZRenderParams(v12);
      PCHashWriteStream::~PCHashWriteStream(v13);
      PCSharedMutex::unlock_shared((v4 + 624));
      PCSharedMutex::unlock_shared((v4 + 496));
      v6 = (vaddvq_s32(vbicq_s8(xmmword_260347A70, v9)) & 0xF) == 0;
      result = OZShapeBehavior::getRotoshape(v4);
      if (result)
      {
        v7 = v6;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        Rotoshape = OZShapeBehavior::getRotoshape(v4);
        return OZRotoshape::setDirty(Rotoshape, 1, 1);
      }
    }
  }

  return result;
}

void sub_26008CAD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t OZShapeBehavior::willBake(OZShapeBehavior *this, PCTimeRange *a2)
{
  PCMutex::lock((this + 368));
  *(this + 56) = *(this + 55);
  if (OZShapeBehavior::getRotoshape(this) && *(this + 44))
  {
    OZShapeBehavior::getRotoshape(this);
    operator new();
  }

  result = PCMutex::unlock((this + 368));
  *(this + 320) = 1;
  return result;
}

uint64_t OZShapeBehavior::didBake(OZShapeBehavior *this)
{
  PCMutex::lock((this + 368));
  v2 = *(this + 56);
  if (*(this + 55) != v2)
  {
    do
    {
      v3 = *(v2 - 8);
      if (v3)
      {
        OZShapeBehaviorBakeEntry::~OZShapeBehaviorBakeEntry(v3);
        MEMORY[0x2666E9F00]();
        v2 = *(this + 56);
      }

      *(v2 - 8) = 0;
      v4 = *(this + 55);
      v2 = *(this + 56) - 8;
      *(this + 56) = v2;
    }

    while (v4 != v2);
  }

  result = PCMutex::unlock((this + 368));
  *(this + 320) = 0;
  return result;
}

void OZShapeBehaviorBakeEntry::OZShapeBehaviorBakeEntry(OZShapeBehaviorBakeEntry *this, int a2, PCTimeRange *a3, CMTime *a4)
{
  v4 = MEMORY[0x277CC08F0];
  v5 = *MEMORY[0x277CC08F0];
  *(this + 3) = *(MEMORY[0x277CC08F0] + 16);
  *(this + 8) = v5;
  *(this + 2) = *v4;
  *(this + 6) = *(v4 + 16);
  *this = a2;
  if ((this + 8) != a3)
  {
    v6 = *a3;
    *(this + 3) = *(a3 + 2);
    *(this + 8) = v6;
    v7 = *(a3 + 24);
    *(this + 6) = *(a3 + 5);
    *(this + 2) = v7;
  }

  v8 = *(a3 + 24);
  v9 = *(a3 + 5);
  operator/(&v8, a4, &time);
  CMTimeGetSeconds(&time);
  operator new[]();
}

void OZShapeBehaviorBakeEntry::~OZShapeBehaviorBakeEntry(OZShapeBehaviorBakeEntry *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8000313F17);
  }

  *(this + 7) = 0;
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8000313F17);
  }

  *(this + 8) = 0;
  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8000313F17);
  }

  *(this + 9) = 0;
  v5 = *(this + 10);
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8000313F17);
  }

  *(this + 10) = 0;
  v6 = *(this + 11);
  if (v6)
  {
    MEMORY[0x2666E9ED0](v6, 0x1000C8000313F17);
  }

  *(this + 11) = 0;
  v7 = *(this + 12);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8000313F17);
  }

  *(this + 12) = 0;
}

void std::vector<std::list<OZShapeBehaviorVertexCacheEntry *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        std::__list_imp<unsigned int>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - a1);
  result = *a5;
  if (v8 >= 1)
  {
    if (a4)
    {
      if (v8 >= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = (-1 << (a4 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -a4);
      *result = *result & ~v11 | *a3 & v11;
      *(a5 + 8) = (*(a5 + 8) - v10) & 0x3F;
    }

    if (v8 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 63;
    }

    v13 = v12 >> 6;
    result -= v12 >> 6;
    *a5 = result;
    v14 = &a3[-(v12 >> 6)];
    if ((v8 + 63) >= 0x7F)
    {
      memmove(result, v14, 8 * v13);
      result = *a5;
    }

    if (v8 - (v13 << 6) >= 1)
    {
      v15 = -1 << ((v13 << 6) - v8);
      v16 = *(v14 - 1) & v15;
      v17 = *--result;
      *a5 = result;
      *result = v17 & ~v15 | v16;
      *(a5 + 8) = -v8 & 0x3F;
    }
  }

  *a6 = result;
  *(a6 + 8) = *(a5 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t result@<X0>, unsigned int a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4 - a2 + 8 * (a3 - result);
  if (v6 <= 0)
  {
    v11 = *a5;
    LODWORD(v9) = *(a5 + 8);
  }

  else
  {
    if (a4)
    {
      if (v6 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 - a2 + 8 * (a3 - result);
      }

      v6 -= v7;
      v8 = (-1 << (a4 - v7)) & (0xFFFFFFFFFFFFFFFFLL >> -a4) & *a3;
      v9 = *(a5 + 8);
      if (v7 >= v9)
      {
        v10 = *(a5 + 8);
      }

      else
      {
        v10 = v7;
      }

      v11 = *a5;
      if (v10)
      {
        v12 = v8 >> (a4 - v9);
        if (v9 > a4)
        {
          v12 = v8 << (v9 - a4);
        }

        *v11 = *v11 & ~((-1 << (v9 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -v9)) | v12;
        LODWORD(v9) = (v9 - v10) & 0x3F;
        *(a5 + 8) = v9;
        v7 -= v10;
      }

      if (v7 >= 1)
      {
        v13 = *--v11;
        *a5 = v11;
        LODWORD(v9) = -v7 & 0x3F;
        *(a5 + 8) = v9;
        *v11 = v13 & ~(-1 << -v7) | (v8 << (v7 + v10 - a4 + (-v7 & 0x3F)));
      }
    }

    else
    {
      LODWORD(v9) = *(a5 + 8);
      v11 = *a5;
    }

    v14 = 64 - v9;
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
    if (v6 >= 64)
    {
      v16 = *v11;
      do
      {
        v17 = v6;
        v19 = *--a3;
        v18 = v19;
        result = v19 >> v14;
        *v11 = v16 & ~v15 | (v19 >> v14);
        v20 = *--v11;
        v16 = v20 & v15 | (v18 << v9);
        *v11 = v16;
        v6 = v17 - 64;
      }

      while (v17 > 0x7F);
      *a5 = v11;
    }

    if (v6 >= 1)
    {
      v21 = *(a3 - 1) & (-1 << -v6);
      if (v6 >= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = v6;
      }

      *v11 = *v11 & ~((-1 << (v9 - v22)) & v15) | (v21 >> v14);
      LODWORD(v9) = (v9 - v22) & 0x3F;
      *(a5 + 8) = v9;
      if (v6 - v22 >= 1)
      {
        v23 = *--v11;
        *a5 = v11;
        *(a5 + 8) = (v22 - v6) & 0x3F;
        *v11 = v23 & ~(-1 << (v22 - v6)) | (v21 << (v6 + ((v22 - v6) & 0x3F)));
        LODWORD(v9) = (v22 - v6) & 0x3F;
      }
    }
  }

  *a6 = v11;
  *(a6 + 8) = v9;
  return result;
}

unint64_t *std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4 - a2 + 8 * (a3 - result);
  if (v6 <= 0)
  {
    v18 = *a5;
    v19 = *(a5 + 8);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
      if (v6 >= (64 - a2))
      {
        v8 = 64 - a2;
      }

      else
      {
        v8 = a4 - a2 + 8 * (a3 - result);
      }

      v6 -= v8;
      v9 = (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v8)) & (-1 << a2) & *result;
      v10 = *(a5 + 8);
      if (v8 >= (64 - v10))
      {
        v11 = (64 - v10);
      }

      else
      {
        v11 = v8;
      }

      v12 = *a5;
      v13 = v9 >> (a2 - v10);
      v14 = v10 >= a2;
      v16 = v10 - a2;
      v15 = v16 != 0 && v14;
      v17 = v9 << v16;
      if (!v15)
      {
        v17 = v13;
      }

      *v12 = **a5 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v11)) & (-1 << v10)) | v17;
      v18 = (v12 + (((v11 + v10) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v10 + v11) & 0x3F;
      *(a5 + 8) = v19;
      v20 = v8 - v11;
      if (v20 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v20) | (v9 >> (v11 + v7));
        *(a5 + 8) = v20;
        v19 = v20;
      }

      ++result;
    }

    else
    {
      v19 = *(a5 + 8);
      v18 = *a5;
    }

    v21 = 64 - v19;
    v22 = -1 << v19;
    if (v6 >= 64)
    {
      v23 = *v18;
      do
      {
        v24 = v6;
        v26 = *result++;
        v25 = v26;
        *v18 = v23 & ~v22 | (v26 << v19);
        v27 = v18[1];
        ++v18;
        v23 = v27 & v22 | (v25 >> v21);
        *v18 = v23;
        v6 = v24 - 64;
      }

      while (v24 > 0x7F);
      *a5 = v18;
    }

    if (v6 >= 1)
    {
      v28 = *result & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      if (v6 >= v21)
      {
        v29 = 64 - v19;
      }

      else
      {
        v29 = v6;
      }

      *v18 = *v18 & ~((0xFFFFFFFFFFFFFFFFLL >> (v21 - v29)) & v22) | (v28 << v19);
      v18 = (v18 + (((v29 + v19) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v19 + v29) & 0x3F;
      *(a5 + 8) = v19;
      v30 = v6 - v29;
      if (v30 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v30) | (v28 >> v29);
        *(a5 + 8) = v30;
        v19 = v30;
      }
    }
  }

  *a6 = v18;
  *(a6 + 8) = v19;
  return result;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void std::vector<BOOL>::__insert_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v14 << 6 < a6 || v15 > (v14 << 6) - a6)
  {
    v38 = 0;
    v39 = 0uLL;
    v17 = v15 + a6;
    if (v17 < 0)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    if ((v14 << 6) > 0x3FFFFFFFFFFFFFFELL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v14 << 7;
      v19 = (v17 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }
    }

    std::vector<BOOL>::reserve(&v38, v20);
    v26 = *a1;
    *&v39 = *(a1 + 8) + a6;
    v44 = v38;
    v45 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v26, 0, a2, a3, &v44, &v42);
    v27 = v42;
    *a7 = v42;
    v28 = v43;
    *(a7 + 8) = v43;
    v29 = *(a1 + 8);
    v30 = (*a1 + 8 * (v29 >> 6));
    v31 = v29 & 0x3F;
    v44 = v38 + 8 * (v39 >> 6);
    v45 = v39 & 0x3F;
    if (v45 == v31)
    {
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v30, v31, &v44, &v42);
    }

    else
    {
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v30, v31, &v44, &v42);
    }

    v32 = *a1;
    *a1 = v38;
    v38 = v32;
    v33 = *(a1 + 8);
    *(a1 + 8) = v39;
    v39 = v33;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    v21 = *a1;
    v22 = (*a1 + 8 * (v15 >> 6));
    v23 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = v15 + a6;
    v38 = &v21[(v15 + a6) >> 6];
    if (((v15 + a6) & 0x3F) == v23)
    {
      LODWORD(v39) = v23;
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v22, v15 & 0x3F, &v38, &v44);
    }

    else
    {
      LODWORD(v39) = (v15 + a6) & 0x3F;
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(a2, a3, v22, v15 & 0x3F, &v38, &v44);
    }

    v24 = 8 * (a2 - *a1) + a3;
    if (v24 < 0)
    {
      v34 = v24 - 63;
      if (v24 - 63 < 0)
      {
        v34 = 8 * (a2 - *a1) + a3;
      }

      v25 = v34 >> 6;
    }

    else
    {
      v25 = v24 >> 6;
    }

    v27 = *a1 + 8 * v25;
    v28 = v24 & 0x3F;
    *a7 = v27;
    *(a7 + 8) = v28;
  }

  v35 = *(a4 + 8);
  v36 = *a5;
  v37 = *(a5 + 8);
  v44 = *a4;
  v45 = v35;
  v42 = v36;
  v43 = v37;
  v40 = v27;
  v41 = v28;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v44, &v42, &v40, &v38);
}

void sub_26008E2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::list<OZShapeBehaviorVertexCacheEntry *>>::__emplace_back_slow_path<std::list<OZShapeBehaviorVertexCacheEntry *> const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::list<OZShapeBehaviorVertexCacheEntry *>>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::list<OZShapeBehaviorVertexCacheEntry *>::list((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = (24 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::list<OZShapeBehaviorVertexCacheEntry *>>,std::list<OZShapeBehaviorVertexCacheEntry *>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::list<OZShapeBehaviorVertexCacheEntry *>>::~__split_buffer(&v13);
  return v12;
}

void sub_26008E434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::list<OZShapeBehaviorVertexCacheEntry *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::list<OZShapeBehaviorVertexCacheEntry *>::list(void *result, uint64_t a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::list<OZShapeBehaviorVertexCacheEntry *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::list<OZShapeBehaviorVertexCacheEntry *>>,std::list<OZShapeBehaviorVertexCacheEntry *>*>(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      std::allocator<std::list<OZShapeBehaviorVertexCacheEntry *>>::construct[abi:ne200100]<std::list<OZShapeBehaviorVertexCacheEntry *>,std::list<OZShapeBehaviorVertexCacheEntry *>>(a1, a4, v8);
      v8 += 3;
      a4 += 3;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::__list_imp<unsigned int>::clear(v6);
      v6 += 3;
    }
  }
}

void std::allocator<std::list<OZShapeBehaviorVertexCacheEntry *>>::construct[abi:ne200100]<std::list<OZShapeBehaviorVertexCacheEntry *>,std::list<OZShapeBehaviorVertexCacheEntry *>>(uint64_t a1, uint64_t *a2, void *a3)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v3 = a3[2];
  if (v3)
  {
    v5 = *a3;
    v4 = a3[1];
    v6 = *(*a3 + 8);
    v7 = *v4;
    *(v7 + 8) = v6;
    *v6 = v7;
    v8 = *a2;
    *(v8 + 8) = v4;
    *v4 = v8;
    *a2 = v5;
    *(v5 + 8) = a2;
    a2[2] = v3;
    a3[2] = 0;
  }
}

uint64_t std::__split_buffer<std::list<OZShapeBehaviorVertexCacheEntry *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__list_imp<unsigned int>::clear((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void OZShapeBehaviorCurveNode::~OZShapeBehaviorCurveNode(OZShapeBehaviorCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZShapeBehaviorCurveNode::solveNode(OZShapeBehaviorCurveNode *this, const CMTime *a2, __n128 a3, __n128 a4)
{
  v4 = a4.n128_u64[0];
  v5 = a3.n128_u64[0];
  v6 = *(this + 1);
  if (v6)
  {
  }

  v7 = *(*v6 + 640);
  a3.n128_u64[0] = v5;
  a4.n128_u64[0] = v4;

  return v7(a3, a4);
}

__n128 OZShapeBehaviorCurveNode::solveNode(OZShapeBehaviorCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v9 = *(a2 + 5);
  result = *(a2 + 6);
  *&v8.value = result;
  v8.epoch = *(a2 + 14);
  if (*(a2 + 36))
  {
    v7 = 0;
    do
    {
      *(v2 + 8 * v7) = (*(*this + 16))(this, &v8, 0.0, *(v3 + 8 * v7));
      v11 = v8;
      v10 = v9;
      PC_CMTimeSaferAdd(&v11, &v10, &v12);
      result = *&v12.value;
      v8 = v12;
      ++v7;
    }

    while (v7 < *(a2 + 36));
  }

  return result;
}

__n128 OZShapeBehaviorCurveNode::getNeededRange(OZShapeBehaviorCurveNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

void OZChanRotoshapeRef::OZChanRotoshapeRef(OZChanRotoshapeRef *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3, a4, a5);
  *v5 = &unk_28727B6E0;
  v5[2] = &unk_28727BA60;
}

void OZChanRotoshapeRef::OZChanRotoshapeRef(OZChanRotoshapeRef *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3, a4);
  *v4 = &unk_28727B6E0;
  v4[2] = &unk_28727BA60;
}

void OZChanRotoshapeRef::OZChanRotoshapeRef(OZChanRotoshapeRef *this, const OZChanSceneNodeRef *a2, OZChannelFolder *a3)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3);
  *v3 = &unk_28727B6E0;
  v3[2] = &unk_28727BA60;
}

void non-virtual thunk toOZChanRotoshapeRef::~OZChanRotoshapeRef(OZChanRotoshapeRef *this)
{
  OZChanSceneNodeRef::~OZChanSceneNodeRef((this - 16));
}

{
  OZChanSceneNodeRef::~OZChanSceneNodeRef((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChanRotoshapeRef::~OZChanRotoshapeRef(OZChanRotoshapeRef *this)
{
  OZChanSceneNodeRef::~OZChanSceneNodeRef(this);

  JUMPOUT(0x2666E9F00);
}

const void *OZChanRotoshapeRef::getRotoshape(OZChannelBase *this)
{
  result = OZChanSceneNodeRef::getNode(this);
  if (result)
  {
  }

  return result;
}

uint64_t OZChanRotoshapeRef::canReferenceObject(OZChannelBase *this, const OZObjectManipulator *lpsrc)
{
  {
    return 0;
  }

  return OZChanSceneNodeRef::canReferenceObject(this, lpsrc);
}

void OZSimStateElement::OZSimStateElement(OZSimStateElement *this)
{
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0x3FF0000000000000;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0x3FF0000000000000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 240) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
}

void OZSimStateElement::OZSimStateElement(OZSimStateElement *this, const OZSimStateElement *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = 0x3FF0000000000000;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v3 = *(a2 + 29);
  *(this + 29) = v3;
  v4 = *(a2 + 240);
  *(this + 240) = v4;
  if (v3)
  {
    if (v4)
    {
      *(this + 29) = (*(*v3 + 16))(v3);
    }
  }
}

uint64_t OZSimStateElement::operator=(uint64_t a1, __int128 *a2)
{
  if (a2 != a1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 3);
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v5;
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v6;
    v7 = a2[5];
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 80) = v7;
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v8;
    v9 = a2[8];
    *(a1 + 144) = *(a2 + 18);
    *(a1 + 128) = v9;
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 152) = v10;
    v11 = a2[11];
    *(a1 + 192) = *(a2 + 24);
    *(a1 + 176) = v11;
    v12 = *(a2 + 29);
    if (v12 && *(a2 + 240) == 1)
    {
      v13 = *(a1 + 232);
      if (v13 && *(a1 + 240) == 1)
      {
        (*(*v13 + 8))(*(a1 + 232));
        *(a1 + 232) = 0;
        v12 = *(a2 + 29);
      }

      v12 = (*(*v12 + 16))(v12);
    }

    *(a1 + 232) = v12;
    *(a1 + 240) = *(a2 + 240);
  }

  return a1;
}

void OZSimStateElement::~OZSimStateElement(OZSimStateElement *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    if (*(this + 240) == 1)
    {
      (*(*v2 + 8))(v2);
      *(this + 29) = 0;
    }
  }
}

__n128 OZSimStateElement::stepFrom(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a3 + 72) * a4 + *(a2 + 16);
  *a1 = vaddq_f64(vmulq_n_f64(*(a3 + 56), a4), *a2);
  *(a1 + 16) = v5;
  v6 = a4 * a5;
  v7 = v6 * *(a3 + 144) + *(a2 + 72);
  *(a1 + 56) = vaddq_f64(vmulq_n_f64(*(a3 + 128), v6), *(a2 + 56));
  *(a1 + 72) = v7;
  v8 = a4 * 0.5 * 0.125;
  v9.f64[0] = 0.0;
  v9.f64[1] = *(a3 + 96);
  v10 = vmulq_n_f64(*(a3 + 80), v8);
  v11 = vmulq_n_f64(v9, v8);
  v12.f64[0] = v10.f64[0];
  v12.f64[1] = v11.f64[1];
  v13 = vmulq_f64(v12, v12);
  if (v13.f64[0] + vmuld_lane_f64(v10.f64[1], v10, 1) + v13.f64[1] == 0.0)
  {
    if (a2 != a1)
    {
      *(a1 + 24) = *(a2 + 24);
      v14 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v14;
    }
  }

  else
  {
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    v17 = vextq_s8(v10, v11, 8uLL);
    v18 = vextq_s8(v11, v10, 8uLL);
    v19 = 8;
    v20 = *(a2 + 40);
    do
    {
      v21.f64[0] = v20.f64[0];
      v21.f64[1] = v15;
      v22.f64[1] = v20.f64[1];
      v22.f64[0] = v15;
      v23 = vdupq_lane_s64(*&v20.f64[0], 0);
      v23.f64[0] = v16;
      v24 = v10.f64[0] * v15 + v11.f64[0] * v16 + vmuld_lane_f64(v10.f64[1], v20, 1) - v11.f64[1] * v20.f64[0];
      v25 = v15 + v11.f64[0] * v15 - (v10.f64[0] * v16 + v10.f64[1] * v20.f64[0] + vmuld_lane_f64(v11.f64[1], v20, 1));
      v26 = v16 + v24;
      v27 = vaddq_f64(v20, vaddq_f64(vaddq_f64(vmulq_f64(v11, v21), vmulq_f64(v17, v22)), vsubq_f64(vmulq_f64(v18, v23), vmulq_f64(v10, vextq_s8(v20, v23, 8uLL)))));
      v28 = vmulq_f64(v27, v27);
      v29 = sqrt(v25 * v25 + v28.f64[1] + v26 * v26 + v28.f64[0]);
      if (v29 == 0.0)
      {
        v20 = 0uLL;
        v15 = 1.0;
        v16 = 0.0;
      }

      else
      {
        v15 = v25 / v29;
        v20 = vdivq_f64(v27, vdupq_lane_s64(*&v29, 0));
        v16 = v26 / v29;
      }

      --v19;
    }

    while (v19);
    *(a1 + 24) = v15;
    *(a1 + 32) = v16;
    *(a1 + 40) = v20;
  }

  v30 = *(a3 + 168) * a4 + *(a2 + 120);
  *(a1 + 104) = vaddq_f64(vmulq_n_f64(*(a3 + 152), a4), *(a2 + 104));
  *(a1 + 120) = v30;
  result = *(a1 + 104);
  *(a1 + 80) = result;
  *(a1 + 96) = *(a1 + 120);
  *(a1 + 232) = *(a2 + 232);
  return result;
}

uint64_t OZLi3DEngineTexturedObjectData::OZLi3DEngineTexturedObjectData(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, __int128 *a5, const OZRenderParams *a6, char a7, double a8)
{
  v15 = a4[1];
  v28[0] = *a4;
  v28[1] = v15;
  v16 = a4[3];
  v28[2] = a4[2];
  v28[3] = v16;
  v17 = Li3DEngineObjectDataBase::defaultPerInstanceColor(a1);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v26[1] = 0;
  v26[2] = 0;
  v26[0] = &unk_2871F25A8;
  v27 = 0;
  Li3DEngineObjectData::Li3DEngineObjectData(a1, a2, v28, 0, 0, 0, v26, a8, v18, v19, v20, v21, 1.0);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v26);
  *a1 = &unk_28727BAD0;
  OZRenderParams::OZRenderParams((a1 + 576), a6);
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  v22 = *a5;
  v23 = a5[1];
  *(a1 + 2064) = a5[2];
  *(a1 + 2048) = v23;
  *(a1 + 2032) = v22;
  v24 = *(a5 + 6);
  *(a1 + 2080) = v24;
  if (v24)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v24);
  }

  *(a1 + 2088) = a7;
  *(a1 + 2096) = a3;
  return a1;
}

void sub_26008F2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 2008);
  std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v11 = *(v9 + 2000);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  OZRenderParams::~OZRenderParams((v9 + 576));
  Li3DEngineObjectData::~Li3DEngineObjectData(v9);
  _Unwind_Resume(a1);
}

uint64_t Li3DEngineObjectData::Li3DEngineObjectData(uint64_t a1, uint64_t a2, __int128 *a3, char a4, char a5, int a6, uint64_t a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  v14 = a3[1];
  v18[0] = *a3;
  v18[1] = v14;
  v15 = a3[3];
  v18[2] = a3[2];
  v18[3] = v15;
  v16 = Li3DEngineObjectDataBase::Li3DEngineObjectDataBase(a1, a2, v18, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  *v16 = &unk_287266390;
  Li3DEngineObjectForceParams::Li3DEngineObjectForceParams((v16 + 27));
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = -1;
  *(a1 + 208) = 0;
  *(a1 + 416) = 0x3FF0000000000000;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 568) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  return a1;
}

void sub_26008F3D8(_Unwind_Exception *a1)
{
  *v1 = &unk_287266628;
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray((v1 + 21));
  _Unwind_Resume(a1);
}

void OZLi3DEngineTexturedObjectData::~OZLi3DEngineTexturedObjectData(OZLi3DEngineTexturedObjectData *this)
{
  *this = &unk_28727BAD0;

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 260);
  v3 = (this + 2008);
  std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 250);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  OZRenderParams::~OZRenderParams((this + 576));
  Li3DEngineObjectData::~Li3DEngineObjectData(this);
}

{
  OZLi3DEngineTexturedObjectData::~OZLi3DEngineTexturedObjectData(this);

  JUMPOUT(0x2666E9F00);
}

void sub_26008F60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(exception_object);
}

void OZLi3DEngineTexturedObjectData::makeFaceStickerTextureNode(OZLi3DEngineTexturedObjectData *this, LiAgent *a2)
{
  v3 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v3);
  memset(v5, 0, 24);
  PCColor::getComponents(this + 508, v5);
  v4 = HGObject::operator new(0x1A0uLL);
  HGSolidColor::HGSolidColor(v4);
}

void sub_26008FA8C(_Unwind_Exception *a1)
{
  LiImageFilterChain::~LiImageFilterChain(v3 + 2);
  (*(*v2 + 24))(v2);
  v6 = *(v4 - 120);
  if (v6)
  {
    *(v4 - 112) = v6;
    operator delete(v6);
  }

  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t OZLi3DEngineTexturedObjectData::applyChanges(uint64_t result)
{
  v1 = *(result + 2000);
  if (v1)
  {
    if (*(result + 2088))
    {
      v2 = MEMORY[0x277CDBBA0];
    }

    else
    {
      v2 = MEMORY[0x277CDBB98];
    }

    v3 = *v2;
    v4 = *(result + 2096);
    v5 = *(v1 + 144);
    return ApplyMetalTextureToNode(v4, &v5, v3);
  }

  return result;
}

void OZ3DEnginePlaneElement::OZ3DEnginePlaneElement(OZ3DEnginePlaneElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZ3DEngineSceneElement::OZ3DEngineSceneElement(this, a2, a3, a4);
  *v5 = &unk_28727BB08;
  v5[2] = &unk_28727C440;
  v5[6] = &unk_28727C698;
  v5[816] = &unk_28727C6F0;
  PCURL::PCURL(&v6, @"Channel Image Element Footage Folder");
  OZChannelFolder::OZChannelFolder((this + 24408), &v6, (this + 320), 0x190u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Image Element Footage");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 24536), &v6, (this + 24408), 0x191u, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Image Element Footage");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 26120), &v6, (this + 24408), 0x192u, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Image Element Footage");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 27704), &v6, (this + 24408), 0x193u, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Base Color");
  OZChannelColor::OZChannelColor((this + 29288), 0.0, 0.0, 0.0, 0.0, &v6, (this + 448), 0x194u, 0, 6u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Enable Lights");
  OZChannelBool::OZChannelBool((this + 30448), 0, &v6, (this + 448), 0x195u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Plane Size");
  OZChannel2D::OZChannel2D((this + 30600), 1024.0, 1024.0, &v6, (this + 448), 0x196u, 0, 2u, 0, 0);
  PCString::~PCString(&v6);
  Li3DEngineScene::Li3DEngineScene((this + 31040));
  *(this + 31208) = 0u;
  *(this + 3903) = 0;
  PCMutex::PCMutex((this + 31232), 1);
  *(this + 3904) = &unk_2871D83A0;
  OZChannelBase::setFlag((this + 19144), 2, 0);
}

void sub_26008FF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  v20 = v11;
  PCMutex::~PCMutex(v20);
  Li3DEngineScene::~Li3DEngineScene((v10 + v19));
  OZChannel2D::~OZChannel2D((v10 + v18));
  OZChannelBool::~OZChannelBool((v10 + v17));
  OZChannelColor::~OZChannelColor((v10 + v16));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v10 + v15));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v10 + v14));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v10 + v13));
  OZChannelFolder::~OZChannelFolder((v10 + v12));
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement(v10);
  _Unwind_Resume(a1);
}

void Li3DEngineScene::~Li3DEngineScene(Li3DEngineScene *this)
{
  std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::destroy(this + 144, *(this + 19));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 120, *(this + 16));
  ProCore_Impl::PCNSRefImpl::release(this + 14);
  std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(this + 80, *(this + 11));
  ProCore_Impl::PCNSRefImpl::release(this + 8);

  std::recursive_mutex::~recursive_mutex(this);
}

void OZ3DEnginePlaneElement::OZ3DEnginePlaneElement(OZ3DEnginePlaneElement *this, const OZ3DEnginePlaneElement *a2, uint64_t a3)
{
  OZ3DEngineSceneElement::OZ3DEngineSceneElement(this, a2, a3);
  *v5 = &unk_28727BB08;
  *(v5 + 16) = &unk_28727C440;
  *(v5 + 48) = &unk_28727C698;
  *(v5 + 6528) = &unk_28727C6F0;
  OZChannelFolder::OZChannelFolder((v5 + 24408), (a2 + 24408), (this + 320));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 24536), (a2 + 24536), (this + 24408));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 26120), (a2 + 26120), (this + 24408));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 27704), (a2 + 27704), (this + 24408));
  OZChannelColor::OZChannelColor((this + 29288), (a2 + 29288), (this + 448));
  OZChannelBool::OZChannelBool((this + 30448), (a2 + 30448), (this + 448));
  OZChannel2D::OZChannel2D((this + 30600), (a2 + 30600), (this + 448));
  Li3DEngineScene::Li3DEngineScene((this + 31040));
  *(this + 31208) = 0u;
  *(this + 3903) = 0;
  PCMutex::PCMutex((this + 31232), 1);
  *(this + 3904) = &unk_2871D83A0;
  OZChannelBase::setFlag((this + 19144), 2, 0);
}

void sub_260090284(_Unwind_Exception *a1)
{
  v11 = v2;
  PCMutex::~PCMutex(v11);
  Li3DEngineScene::~Li3DEngineScene((v1 + v10));
  OZChannel2D::~OZChannel2D((v1 + v9));
  OZChannelBool::~OZChannelBool((v1 + v8));
  OZChannelColor::~OZChannelColor((v1 + v7));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v1 + v6));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v1 + v5));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v1 + v4));
  OZChannelFolder::~OZChannelFolder((v1 + v3));
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement(v1);
  _Unwind_Resume(a1);
}

void OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement(OZ3DEnginePlaneElement *this)
{
  *this = &unk_28727BB08;
  *(this + 2) = &unk_28727C440;
  *(this + 6) = &unk_28727C698;
  *(this + 816) = &unk_28727C6F0;

  PCMutex::~PCMutex((this + 31232));
  std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::destroy(this + 31184, *(this + 3899));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 31160, *(this + 3896));
  ProCore_Impl::PCNSRefImpl::release(this + 3894);
  std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(this + 31120, *(this + 3891));
  ProCore_Impl::PCNSRefImpl::release(this + 3888);
  std::recursive_mutex::~recursive_mutex(this + 485);
  OZChannel2D::~OZChannel2D((this + 30600));
  OZChannelBool::~OZChannelBool((this + 30448));
  *(this + 3661) = &unk_28724C608;
  *(this + 3663) = &unk_28724C978;
  OZChannel::~OZChannel((this + 30296));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 29288));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 27704));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 26120));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 24536));
  OZChannelFolder::~OZChannelFolder((this + 24408));

  OZ3DEngineSceneElement::~OZ3DEngineSceneElement(this);
}

{
  OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZ3DEnginePlaneElement::~OZ3DEnginePlaneElement(OZ3DEnginePlaneElement *this)
{
  OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement((this - 16));
}

{
  OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement((this - 48));
}

{
  OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement((this - 6528));
}

{
  OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEnginePlaneElement::~OZ3DEnginePlaneElement((this - 6528));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZ3DEnginePlaneElement::get3DScene(OZ3DEnginePlaneElement *this)
{
  v2 = (this + 31232);
  v10 = this + 31232;
  PCMutex::lock((this + 31232));
  LOBYTE(v11) = 1;
  if (!*(this + 3901))
  {
    v3 = objc_opt_new();
    *(this + 3901) = v3;
    [objc_msgSend(v3 rootNode];
    Li3DEngineScene::set((this + 31040), *(this + 3901));
    v4 = [MEMORY[0x277CDBAD8] planeWithWidth:1024.0 height:1024.0];
    *(this + 3902) = v4;
    *(this + 3903) = [MEMORY[0x277CDBAA8] nodeWithGeometry:v4];
    [objc_msgSend(*(this + 3901) "rootNode")];
    Li3DEngineScene::setUseOriginalScene(this + 31040, 1);
  }

  OZChannel::getValueAsDouble((this + 30736), MEMORY[0x277CC08F0], 0.0);
  v6 = v5;
  OZChannel::getValueAsDouble((this + 30888), MEMORY[0x277CC08F0], 0.0);
  v8 = v7;
  [*(this + 3902) setWidth:v6];
  [*(this + 3902) setHeight:v8];
  PCMutex::unlock(v2);
  return this + 31040;
}

void OZ3DEnginePlaneElement::getLocalVolume(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v3 = (*(*a1 + 2336))(a1);
    std::recursive_mutex::lock(v3);
    Representation = PCBitmap::getRepresentation(v3);
    getSceneBoundingBox(Representation, v6);
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v6[2];
    std::recursive_mutex::unlock(v3);
  }
}

void OZ3DEnginePlaneElement::makeDataFor3DEngineObject(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v26 = *a3;
  v13 = *a3;
  v5 = (*(*(a1 + 16) + 104))();
  Li3DEngineObjectForceParams::Li3DEngineObjectForceParams(&v16);
  v6 = 0;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = -1;
  v15 = 0;
  if (v5)
  {
    v6 = OZ3DEngineSceneElement::physicsType(a1, &v26);
  }

  LODWORD(v15) = v6;
  OZChannel::getValueAsDouble((a1 + 21384), &v26, 0.0);
  v21 = v7;
  OZChannel::getValueAsDouble((a1 + 21688), &v26, 0.0);
  v23 = v8;
  OZChannel::getValueAsDouble((a1 + 21536), &v26, 0.0);
  v22 = v9;
  HIDWORD(v15) = (*(*a1 + 2304))(a1, &v26);
  OZChannel::getValueAsDouble((a1 + 21840), &v26, 0.0);
  v24 = v10;
  OZChannel::getValueAsDouble((a1 + 21992), &v26, 0.0);
  v25 = v11;
  v12 = OZ3DEngineSceneElement::get3DWorldOwner(a1);
  if (v12)
  {
    if (!OZ3DEngineSceneElement::is3DNodeInMasterScene(a1, v12))
    {
      OZ3DEngineSceneElement::add3DNodeToMasterScene(a1);
    }
  }

  PCColor::PCColor(&v14);
  v13 = *a3;
  OZChannelColor::getColor((a1 + 29288), &v13, &v14, 0.0);
  operator new();
}

void sub_260090D80(_Unwind_Exception *a1)
{
  v3 = STACK[0x698];
  if (STACK[0x698])
  {
    STACK[0x6A0] = v3;
    operator delete(v3);
  }

  if (STACK[0x6F8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x6F8]);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&STACK[0x738]);
  Li3DEngineObjectForceParams::~Li3DEngineObjectForceParams((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t Li3DEngineObjectDataBase::Li3DEngineObjectDataBase(uint64_t a1, uint64_t a2, __int128 *a3, char a4, char a5, int a6, uint64_t a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  *a1 = &unk_287266628;
  *(a1 + 8) = a2;
  *(a1 + 16) = a8;
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[2];
  *(a1 + 72) = a3[3];
  *(a1 + 56) = v17;
  *(a1 + 40) = v16;
  *(a1 + 24) = v15;
  *(a1 + 88) = a4;
  *(a1 + 92) = a9;
  *(a1 + 96) = a10;
  *(a1 + 100) = a11;
  *(a1 + 104) = a12;
  *(a1 + 108) = a13;
  *(a1 + 112) = a5;
  *(a1 + 116) = a6;
  *(a1 + 152) = xmmword_2603429E0;
  *(a1 + 136) = xmmword_2603429E0;
  *(a1 + 120) = xmmword_2603429E0;
  v18 = a1 + 168;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = &unk_2871F25A8;
  v19 = *(a7 + 12);
  if (v19 > 0)
  {
    v20 = 2 * v19 + 1;
  }

  else
  {
    v20 = 0;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(v18, v19, v20);
  if (*(a7 + 12) >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      LiLight::operator=(*(a1 + 184) + v21, *(a7 + 16) + v21);
      ++v22;
      v21 += 944;
    }

    while (v22 < *(a7 + 12));
  }

  *(a1 + 192) = *(a7 + 24);
  return a1;
}

void std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::destroy(uint64_t a1, PCSharedCount *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::destroy(a1, a2[1].var0);
    PCSharedCount::~PCSharedCount(a2 + 6);

    operator delete(a2);
  }
}

void std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__assign_with_size[abi:ne200100]<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*>(uint64_t a1, const PCSharedCount *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__vdeallocate(a1);
    if (a4 <= 0x1C71C71C71C71C7)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
      {
        v10 = 0x1C71C71C71C71C7;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x8E38E38E38E38E39 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>::operator=[abi:ne200100](v8, v6);
        v6 += 18;
        v8 += 18;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    for (; v11 != v8; v11 -= 144)
    {
      PCSharedCount::~PCSharedCount((v11 - 136));
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>::operator=[abi:ne200100](v8, v14);
        v14 += 18;
        v8 += 18;
        v13 -= 144;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*>(a1, v6 + v12, a3, v11);
  }
}

void std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 18;
        PCSharedCount::~PCSharedCount(v3 - 17);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = (a4 + v7);
      *(a4 + v7) = *(a2 + v7);
      PCSharedCount::PCSharedCount((a4 + v7 + 8), (a2 + v7 + 8));
      v10 = *(a2 + v7 + 16);
      v11 = *(a2 + v7 + 32);
      v12 = *(a2 + v7 + 64);
      v9[3] = *(a2 + v7 + 48);
      v9[4] = v12;
      v9[1] = v10;
      v9[2] = v11;
      v13 = *(a2 + v7 + 80);
      v14 = *(a2 + v7 + 96);
      v15 = *(a2 + v7 + 128);
      v9[7] = *(a2 + v7 + 112);
      v9[8] = v15;
      v9[5] = v13;
      v9[6] = v14;
      v7 += 144;
    }

    while (v8 + 144 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2600912BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 136);
    do
    {
      PCSharedCount::~PCSharedCount(v5);
      v5 = (v6 - 144);
      v4 += 144;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

PC_Sp_counted_base **std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>::operator=[abi:ne200100](PC_Sp_counted_base **a1, const PCSharedCount *a2)
{
  PCPtr<LiImageSource>::operator=(a1, a2);
  if (a2 != a1)
  {
    v4 = 0;
    v5 = a2 + 2;
    v6 = a1 + 2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v6[i] = v5[i].var0;
      }

      ++v4;
      v6 += 4;
      v5 += 4;
    }

    while (v4 != 4);
  }

  return a1;
}

PC_Sp_counted_base **PCPtr<LiImageSource>::operator=(PC_Sp_counted_base **a1, const PCSharedCount *a2)
{
  *a1 = a2->var0;
  v3 = (a1 + 1);
  PCSharedCount::PCSharedCount(&v5, a2 + 1);
  PCSharedCount::operator=(v3, &v5);
  PCSharedCount::~PCSharedCount(&v5);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 18;
        PCSharedCount::~PCSharedCount(v4 - 17);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_260091504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<OZLi3DEngineTexturedObjectData>::shared_ptr[abi:ne200100]<OZLi3DEngineTexturedObjectData,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<OZLi3DEngineTexturedObjectData *,std::shared_ptr<OZLi3DEngineTexturedObjectData>::__shared_ptr_default_delete<OZLi3DEngineTexturedObjectData,OZLi3DEngineTexturedObjectData>,std::allocator<OZLi3DEngineTexturedObjectData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<OZLi3DEngineTexturedObjectData *,std::shared_ptr<OZLi3DEngineTexturedObjectData>::__shared_ptr_default_delete<OZLi3DEngineTexturedObjectData,OZLi3DEngineTexturedObjectData>,std::allocator<OZLi3DEngineTexturedObjectData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OZSimStateArray::OZSimStateArray(OZSimStateArray *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v1 = MEMORY[0x277CC08F0];
  *(this + 24) = *MEMORY[0x277CC08F0];
  *(this + 5) = *(v1 + 16);
  *(this + 48) = 0;
  *(this + 7) = 0;
  PCSharedCount::PCSharedCount(this + 8);
}

void sub_26009160C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OZSimStateElement>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void OZSimStateArray::OZSimStateArray(OZSimStateArray *this, unsigned int a2)
{
  v2 = std::vector<OZSimStateElement>::vector[abi:ne200100](this, a2);
  v3 = MEMORY[0x277CC08F0];
  *(v2 + 3) = *MEMORY[0x277CC08F0];
  v2[5] = *(v3 + 16);
  *(v2 + 48) = 0;
  v2[7] = 0;
  PCSharedCount::PCSharedCount(v2 + 8);
}

void sub_260091684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OZSimStateElement>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<OZSimStateElement>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<OZSimStateElement>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void OZSimStateArray::OZSimStateArray(OZSimStateArray *this, const OZSimStateArray *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<OZSimStateElement>::__init_with_size[abi:ne200100]<OZSimStateElement*,OZSimStateElement*>(this, *a2, *(a2 + 1), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 1) - *a2) >> 3));
  v4 = *(a2 + 24);
  *(this + 5) = *(a2 + 5);
  *(this + 24) = v4;
  *(this + 48) = *(a2 + 48);
  *(this + 7) = *(a2 + 7);
  PCSharedCount::PCSharedCount(this + 8, a2 + 8);
}

void sub_2600917C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OZSimStateElement>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void OZSimStateArray::~OZSimStateArray(PCSharedCount *this)
{
  PCSharedCount::~PCSharedCount(this + 8);
  v2 = this;
  std::vector<OZSimStateElement>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void OZSimStateArray::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<OZSimStateElement>::__assign_with_size[abi:ne200100]<OZSimStateElement*,OZSimStateElement*>(a1, *a2, *(a2 + 8), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 8) - *a2) >> 3));
  }

  *(a1 + 56) = *(a2 + 56);
  PCSharedCount::PCSharedCount(&v4, (a2 + 64));
  PCSharedCount::operator=((a1 + 64), &v4);
  PCSharedCount::~PCSharedCount(&v4);
  *(a1 + 48) = *(a2 + 48);
}

void OZSimStateArray::setOwnedObjectFrom(OZSimStateArray *this, const PCSharedCount *a2)
{
  *(this + 7) = a2[7];
  PCSharedCount::PCSharedCount(&v3, a2 + 8);
  PCSharedCount::operator=(this + 8, &v3);
  PCSharedCount::~PCSharedCount(&v3);
}

void *OZSimStateArray::clearForces(void *this)
{
  for (i = *this; i != this[1]; i = (i + 248))
  {
    i[9] = 0uLL;
    i[10] = 0uLL;
    i[8] = 0uLL;
  }

  return this;
}

void OZSimStateArray::stepFrom(OZSimStateArray *this, OZSimStateArray *a2, OZSimStateArray *a3, CMTime *a4, double a5)
{
  v8 = *this;
  if (*this != *(this + 1))
  {
    v10 = *a2;
    v11 = *a3;
    do
    {
      v16 = 0;
      v17 = 0;
      v15 = 0;
      v14 = 0x3FF0000000000000;
      v18 = 0x3FF0000000000000;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      v22 = 0x3FF0000000000000;
      OZSimStateElement::stepFrom(v8, v10, v11, a5, 1.0);
      v8 += 248;
      v10 += 248;
      v11 += 248;
    }

    while (v8 != *(this + 1));
  }

  v24 = *(a2 + 1);
  v23 = *a4;
  PC_CMTimeSaferAdd(&v24, &v23, &v12);
  *(this + 24) = v12;
  *(this + 5) = v13;
  *(this + 7) = *(a2 + 7);
  PCSharedCount::PCSharedCount(&v24, a2 + 8);
  PCSharedCount::operator=(this + 8, &v24.value);
  PCSharedCount::~PCSharedCount(&v24);
  *(this + 48) = 0;
}

void std::vector<OZSimStateElement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        OZSimStateElement::~OZSimStateElement((v4 - 248));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<OZSimStateElement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OZSimStateElement>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<OZSimStateElement>::__init_with_size[abi:ne200100]<OZSimStateElement*,OZSimStateElement*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<OZSimStateElement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_260091C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<OZSimStateElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

OZSimStateElement *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OZSimStateElement>,OZSimStateElement*,OZSimStateElement*,OZSimStateElement*>(int a1, OZSimStateElement *a2, OZSimStateElement *a3, OZSimStateElement *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      OZSimStateElement::OZSimStateElement(this, v6);
      v6 = (v6 + 248);
      this = (this + 248);
      v7 -= 248;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_260091C98(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 248);
    do
    {
      OZSimStateElement::~OZSimStateElement(v4);
      v4 = (v5 - 248);
      v2 += 248;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<OZSimStateElement>::__assign_with_size[abi:ne200100]<OZSimStateElement*,OZSimStateElement*>(uint64_t a1, __int128 *a2, OZSimStateElement *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<OZSimStateElement>::__vdeallocate(a1);
    if (a4 <= 0x108421084210842)
    {
      v9 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
      {
        v10 = 0x108421084210842;
      }

      else
      {
        v10 = v9;
      }

      std::vector<OZSimStateElement>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xEF7BDEF7BDEF7BDFLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        OZSimStateElement::operator=(v8, v6);
        v6 = (v6 + 248);
        v8 = (v8 + 248);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 248);
      OZSimStateElement::~OZSimStateElement(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        OZSimStateElement::operator=(v8, v14);
        v14 = (v14 + 248);
        v8 = (v8 + 248);
        v13 -= 248;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OZSimStateElement>,OZSimStateElement*,OZSimStateElement*,OZSimStateElement*>(a1, (v6 + v12), a3, v11);
  }
}

void std::vector<OZSimStateElement>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        OZSimStateElement::~OZSimStateElement((v3 - 248));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void OZSimSystemMoToFoBehavior::OZSimSystemMoToFoBehavior(OZSimSystemMoToFoBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSimulationBehavior::OZSimulationBehavior(this, a2, a3, a4);
  v5 = 0;
  *v6 = &unk_28727C870;
  *(v6 + 16) = &unk_28727CB68;
  *(v6 + 48) = &unk_28727CDC0;
  *(v6 + 352) = 0;
  *(v6 + 360) = 0;
  *(v6 + 472) = 0u;
  *(v6 + 488) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0x3FF0000000000000;
  *(v6 + 392) = 0;
  *(v6 + 400) = 0;
  *(v6 + 384) = 0;
  *(v6 + 544) = 0x3FF0000000000000;
  *(v6 + 504) = 0x3FF0000000000000;
  *(v6 + 464) = 0x3FF0000000000000;
  *(v6 + 424) = 0x3FF0000000000000;
  *(v6 + 432) = 0u;
  *(v6 + 448) = 0u;
  *(v6 + 512) = 0u;
  *(v6 + 528) = 0u;
  do
  {
    v7 = this + v5;
    *(v7 + 74) = 0;
    *(v7 + 36) = 0uLL;
    *(v7 + 75) = 0x3FF0000000000000;
    *(v7 + 76) = 0;
    *(this + v5 + 616) = 0uLL;
    v5 += 88;
  }

  while (v5 != 528);
  OZChannelBase::setFlag((this + 56), 10, 0);
  v8 = 0;
  v9 = xmmword_260343E00;
  v10 = vdupq_n_s64(6uLL);
  v11 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v10, v9)).u8[0])
    {
      *(this + v8 + 632) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v9)).i32[1])
    {
      *(this + v8 + 720) = 0;
    }

    v9 = vaddq_s64(v9, v11);
    v8 += 176;
  }

  while (v8 != 528);
  *(this + 270) = 0;
  *(this + 42) = 0;
}

void OZSimSystemMoToFoBehavior::OZSimSystemMoToFoBehavior(OZSimSystemMoToFoBehavior *this, OZSimSystemMoToFoBehavior *a2, char a3)
{
  OZSimulationBehavior::OZSimulationBehavior(this, a2, a3);
  v4 = 0;
  *v5 = &unk_28727C870;
  *(v5 + 16) = &unk_28727CB68;
  *(v5 + 48) = &unk_28727CDC0;
  *(v5 + 352) = 0;
  *(v5 + 360) = 0;
  *(v5 + 472) = 0u;
  *(v5 + 488) = 0u;
  *(v5 + 368) = 0;
  *(v5 + 376) = 0x3FF0000000000000;
  *(v5 + 392) = 0;
  *(v5 + 400) = 0;
  *(v5 + 384) = 0;
  *(v5 + 544) = 0x3FF0000000000000;
  *(v5 + 504) = 0x3FF0000000000000;
  *(v5 + 464) = 0x3FF0000000000000;
  *(v5 + 424) = 0x3FF0000000000000;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  do
  {
    v6 = this + v4;
    *(v6 + 74) = 0;
    *(v6 + 36) = 0uLL;
    *(v6 + 75) = 0x3FF0000000000000;
    *(v6 + 76) = 0;
    *(this + v4 + 616) = 0uLL;
    v4 += 88;
  }

  while (v4 != 528);
  OZChannelBase::setFlag((this + 56), 10, 0);
  v7 = 0;
  v8 = xmmword_260343E00;
  v9 = vdupq_n_s64(6uLL);
  v10 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v9, v8)).u8[0])
    {
      *(this + v7 + 632) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v8)).i32[1])
    {
      *(this + v7 + 720) = 0;
    }

    v8 = vaddq_s64(v8, v10);
    v7 += 176;
  }

  while (v7 != 528);
  *(this + 270) = 0;
  *(this + 42) = 0;
}

void OZSimSystemMoToFoBehavior::~OZSimSystemMoToFoBehavior(OZSimSystemMoToFoBehavior *this)
{
  *this = &unk_28727C870;
  *(this + 2) = &unk_28727CB68;
  *(this + 6) = &unk_28727CDC0;
  if (OZBehavior::getSceneNode(this))
  {
    v2 = (*(*this + 320))(this);
    v3 = (*(*v2 + 640))(v2);
    OZChannelObjectRoot::removeBehavior(v3, this);
  }

  OZSimulationBehavior::~OZSimulationBehavior(this);
}

{
  OZSimSystemMoToFoBehavior::~OZSimSystemMoToFoBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZSimSystemMoToFoBehavior::~OZSimSystemMoToFoBehavior(OZSimSystemMoToFoBehavior *this)
{
  OZSimSystemMoToFoBehavior::~OZSimSystemMoToFoBehavior((this - 16));
}

{
  OZSimSystemMoToFoBehavior::~OZSimSystemMoToFoBehavior((this - 48));
}

{
  OZSimSystemMoToFoBehavior::~OZSimSystemMoToFoBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSimSystemMoToFoBehavior::~OZSimSystemMoToFoBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSimSystemMoToFoBehavior::operator=(uint64_t a1)
{
  result = OZSimulationBehavior::operator=();
  *(a1 + 336) = 0;
  return result;
}

uint64_t OZSimSystemMoToFoBehavior::findCachedValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, CMTime *a6, CMTime *a7)
{
  v11 = 0;
  v12 = 0;
  v13 = a5;
  v14 = a2 + 24;
  v15 = a2 + 48;
  do
  {
    v16 = (a1 + v11);
    if (*(a1 + v11 + 632) == 1)
    {
      v17 = v16 + 23;
      time1 = *a6;
      time2 = v16[23];
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        memset(&v26, 0, sizeof(v26));
        time1 = *v17;
        time2 = *a6;
        PC_CMTimeSaferSubtract(&time1, &time2, &v26);
        time1 = v26;
        time2 = *a7;
        SampleNumber = PC_CMTimeGetSampleNumber(&time1, &time2);
        if (SampleNumber < v13)
        {
          v19 = a1 + v11;
          *(a2 + 8 * SampleNumber) = *(a1 + v11 + 576);
          *(v14 + 8 * SampleNumber) = *(a1 + v11 + 584);
          *(v15 + 8 * SampleNumber) = *(a1 + v11 + 592);
          v20 = (a1 + v11 + 600);
          v21 = a3 + 32 * SampleNumber;
          if (v20 != v21)
          {
            *v21 = *v20;
            v22 = *(v19 + 608);
            *(v21 + 24) = *(v19 + 624);
            *(v21 + 8) = v22;
          }

          v12 = 1;
          *(a4 + SampleNumber) = 1;
        }
      }
    }

    v11 += 88;
  }

  while (v11 != 528);
  return v12 & 1;
}

void OZSimSystemMoToFoBehavior::didAddToNode(OZSimSystemMoToFoBehavior *this, OZSceneNode *a2)
{
  OZSimulationBehavior::didAddToNode(this, a2);
  v4 = (*(*a2 + 640))(a2);
  OZChannelObjectRoot::addBehavior(v4, this);
}

void OZSimSystemMoToFoBehavior::willRemove(OZSimSystemMoToFoBehavior *this)
{
  v2 = (*(*this + 320))(this);
  v3 = (*(*v2 + 640))(v2);
  OZChannelObjectRoot::removeBehavior(v3, this);
  *(this + 42) = 0;
}

double OZSimSystemMoToFoBehavior::calcParentsDerivatives(OZSimSystemMoToFoBehavior *this, OZSimulationState *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v94 = 0uLL;
  v95 = 0;
  OZChannelObjectRootBase::getTimeOffset((*(this + 42) + 56), &v111);
  *&v99.var0.var0 = *(a2 + 11);
  v99.var0.var3 = *(a2 + 24);
  *v102 = v111;
  *&v102[16] = v112;
  v3.n128_f64[0] = PC_CMTimeSaferSubtract(&v99, v102, &v94);
  memset(&v93, 0, sizeof(v93));
  v4 = (*(**(this + 42) + 272))(v3);
  OZSceneSettings::getFrameDuration((v4 + 336), &v93);
  v5 = 0uLL;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 8) = 0u;
  if (!*(this + 42))
  {
    return *&v5;
  }

  v6 = 0;
  v115 = 0.0;
  v113 = 0uLL;
  v114 = 0uLL;
  v111 = 0uLL;
  v112 = 0uLL;
  v110 = 0;
  v109 = 0uLL;
  memset(v108, 0, sizeof(v108));
  do
  {
    v7 = &v102[v6];
    *v7 = 0x3FF0000000000000;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    v6 += 32;
  }

  while (v6 != 96);
  v92 = 0;
  v91 = 0;
  v89 = 0uLL;
  v90 = 0;
  *&v99.var0.var0 = v94;
  v99.var0.var3 = v95;
  v98 = v93;
  PC_CMTimeFloorToSampleDuration(&v99, &v98, &v89);
  memset(&v88, 0, sizeof(v88));
  *&v99.var0.var0 = v89;
  v99.var0.var3 = v90;
  v98 = v93;
  PC_CMTimeSaferSubtract(&v99, &v98, &v88);
  v87 = 3;
  v10 = *(this + 42);
  if (*(this + 344))
  {
    v101.var0 = v10 + 1352;
    *&v101.var1 = v10 + 1504;
    v101.var3 = v10 + 1952;
    v100[0] = v10 + 2240;
    v100[1] = v10 + 2392;
    v83 = v10;
    v100[2] = v10 + 2544;
    v99.var0 = v88;
    v98 = v93;
    v86 = &v99;
    if (OZSimSystemMoToFoBehavior::findCachedValues(this, &v111, v102, &v91, 3, &v99, &v98))
    {
      v85 = v88;
      v11 = 0;
      v12 = &v111;
      v13 = v108;
      do
      {
        if ((*(&v91 + v11) & 1) == 0)
        {
          v14 = 0;
          v15 = v12;
          do
          {
            v98.value = v15;
            LODWORD(v97.value) = 1;
            OZChannel::getSamples(*(&v101.var0 + v14), &v85, &v93, &v97, &v86, &v98);
            v14 += 8;
            v15 += 24;
          }

          while (v14 != 24);
          v16 = 0;
          v17 = v13;
          do
          {
            v98.value = v17;
            LODWORD(v97.value) = 1;
            OZChannel::getSamples(v100[v16++], &v85, &v93, &v97, &v86, &v98);
            v17 += 24;
          }

          while (v16 != 3);
          v18 = *(&v108[1] + v11 + 1);
          v19 = *(&v109 + v11);
          v20 = &v102[32 * v11];
          *v20 = *(v108 + v11);
          v20[1] = v18;
          v20[2] = v19;
          v20[3] = 0x4010000000000000;
        }

        v97 = v85;
        v96 = v93;
        PC_CMTimeSaferAdd(&v97, &v96, &v98);
        ++v11;
        v85 = v98;
        v12 = (v12 + 8);
        v13 = (v13 + 8);
      }

      while (v11 < v87);
    }

    else
    {
      v28 = 0;
      v29 = &v111;
      do
      {
        v98.value = v29;
        OZChannel::getSamples(*(&v101.var0 + v28), &v88, &v93, &v87, &v86, &v98);
        v29 = (v29 + 24);
        v28 += 8;
      }

      while (v28 != 24);
      v30 = 0;
      v31 = v108;
      do
      {
        v98.value = v31;
        OZChannel::getSamples(v100[v30], &v88, &v93, &v87, &v86, &v98);
        v31 = (v31 + 24);
        ++v30;
      }

      while (v30 != 3);
      v32 = &v108[1] + 1;
      v33 = &v102[16];
      v34 = 3;
      do
      {
        v35 = *v32;
        v36 = v32[3];
        *(v33 - 2) = *(v32 - 3);
        *(v33 - 1) = v35;
        *v33 = v36;
        v33[1] = 0x4010000000000000;
        v33 += 4;
        ++v32;
        --v34;
      }

      while (v34);
    }

    v10 = v83;
  }

  else
  {
    v21 = *(this + 44);
    v22 = *(this + 45);
    v23 = &v112 + 1;
    v24 = *(this + 46);
    v25 = (this + 376);
    v26 = v102;
    v27 = 3;
    do
    {
      *(v23 - 3) = v21;
      *v23 = v22;
      v23[3] = v24;
      if (v26 != v25)
      {
        *v26 = *v25;
        v9 = *(this + 24);
        *(v26 + 8) = v9;
        *(v26 + 3) = *(this + 50);
      }

      v26 += 32;
      ++v23;
      --v27;
    }

    while (v27);
  }

  v37 = *(v10 + 960);
  if (!v37)
  {
    goto LABEL_41;
  }

  if (!v38)
  {
    goto LABEL_41;
  }

  if (*(this + 416))
  {
    v39 = v38;
    memset(&v101, 0, sizeof(v101));
    OZChannelObjectRootBase::getTimeOffset((*(this + 42) + 56), &v97);
    v99.var0 = v88;
    v98 = v97;
    PC_CMTimeSaferAdd(&v99, &v98, &v101);
    OZRenderState::OZRenderState(&v99);
    if (v87)
    {
      v40 = 0;
      v41 = &v111;
      do
      {
        if ((*(&v91 + v40) & 1) == 0)
        {
          v99.var0 = v101;
          (*(*v39 + 1224))(v39, v41, &v41[1].n128_i64[1], v41 + 3, &v99);
        }

        v97 = v101;
        v96 = v93;
        PC_CMTimeSaferAdd(&v97, &v96, &v98);
        ++v40;
        v101 = v98;
        v41 = (v41 + 8);
      }

      while (v40 < v87);
    }

LABEL_41:
    v97 = v88;
    if (v87)
    {
      v50 = 0;
      v51 = &v112 + 1;
      v52 = v102;
      do
      {
        if ((*(&v91 + v50) & 1) == 0)
        {
          v53 = *(this + 270);
          *(this + 270) = (v53 + 1) % 6;
          v54 = this + 88 * v53 + 552;
          *v54 = v97;
          v55 = *v51;
          v56 = v51[3];
          *(v54 + 3) = *(v51 - 3);
          *(v54 + 4) = v55;
          *(v54 + 5) = v56;
          if (v52 != v54 + 48)
          {
            *(v54 + 6) = *v52;
            *(v54 + 56) = *(v52 + 8);
            *(v54 + 9) = *(v52 + 3);
          }

          v54[80] = 1;
        }

        v99.var0 = v97;
        v98 = v93;
        PC_CMTimeSaferAdd(&v99, &v98, &v97);
        ++v50;
        v52 += 32;
        ++v51;
      }

      while (v50 < v87);
    }

    goto LABEL_48;
  }

  v42 = v87;
  if (v87)
  {
    v43 = 0;
    v44 = &v112 + 1;
    v45 = &v91;
    do
    {
      v46 = *v45++;
      if ((v46 & 1) == 0)
      {
        v47 = v44[3];
        v48 = *v44;
        v99.var0.var0 = *(v44 - 3);
        *&v99.var0.var1 = v48;
        v99.var0.var3 = v47;
        PCMatrix44Tmpl<double>::transform<double>(this + 53, &v99.var0.var0, &v99.var0.var0);
        *(v44 - 3) = v99.var0.var0;
        var3 = v99.var0.var3;
        *v44 = *&v99.var0.var1;
        v44[3] = var3;
        v42 = v87;
      }

      ++v43;
      ++v44;
    }

    while (v43 < v42);
    goto LABEL_41;
  }

LABEL_48:
  v57 = *(this + 51);
  *&v58.f64[0] = v111.n128_u64[1];
  v8.i64[0] = v111.n128_u64[0];
  v9.i64[0] = *(&v112 + 1);
  v59 = v114;
  v60 = v57 * (*(&v114 + 1) - *&v114);
  *&v61.f64[0] = v112;
  v62 = v57 * (v57 * (v115 - *(&v114 + 1)) - v60);
  *&v58.f64[1] = v113;
  *&v63.f64[0] = v111.n128_u64[0];
  v63.f64[1] = *(&v112 + 1);
  v64 = vmulq_n_f64(vsubq_f64(v58, v63), v57);
  v61.f64[1] = *(&v113 + 1);
  *(a2 + 8) = vaddq_f64(*(a2 + 8), vmulq_n_f64(vsubq_f64(vmulq_n_f64(vsubq_f64(v61, v58), v57), v64), v57));
  *(a2 + 18) = v62 + *(a2 + 18);
  *a2 = v8.i64[0];
  *(a2 + 1) = v9.i64[0];
  *(a2 + 2) = v59;
  *(a2 + 56) = v64;
  *(a2 + 9) = v60;
  v9.i64[0] = *&v102[24];
  v8.i64[0] = *&v104[16];
  v65 = (v57 + v57) * (v103 - *v102);
  v66 = (v57 + v57) * (v105 - v103);
  v67 = v103 * ((v57 + v57) * (v107 - *&v104[16])) - *&v104[16] * v66;
  v68 = vmulq_n_f64(vsubq_f64(*v104, *&v102[8]), v57 + v57);
  v69 = vextq_s8(v68, v68, 8uLL);
  v70 = vmulq_f64(*&v102[8], v69);
  v69.f64[0] = (v57 + v57) * (*&v104[16] - *&v102[24]);
  v71 = vaddq_f64(vsubq_f64(vmulq_n_f64(v68, *v102), vmulq_n_f64(*&v102[8], v65)), vsubq_f64(vmulq_f64(*&v102[16], v69), vmulq_f64(vzip1q_s64(v9, *&v102[8]), vextq_s8(v68, v69, 8uLL))));
  v72 = vsubq_f64(v70, vdupq_laneq_s64(v70, 1)).f64[0] + *v102 * v69.f64[0] - v65 * *&v102[24];
  v73 = vmulq_n_f64(vsubq_f64(v106, *v104), v57 + v57);
  v74 = vsubq_f64(vmulq_n_f64(v73, v103), vmulq_n_f64(*v104, v66));
  v75 = vextq_s8(v73, v73, 8uLL);
  v76 = vmulq_f64(*v104, v75);
  v75.f64[0] = (v57 + v57) * (v107 - *&v104[16]);
  v77 = vaddq_f64(v74, vsubq_f64(vmulq_f64(*&v104[8], v75), vmulq_f64(vzip1q_s64(v8, *v104), vextq_s8(v73, v75, 8uLL))));
  v73.f64[0] = vsubq_f64(v76, vdupq_laneq_s64(v76, 1)).f64[0] + v67;
  v78 = vmulq_f64(v77, 0);
  v79 = vmulq_f64(v71, 0);
  v80 = vmulq_n_f64(vsubq_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(v73.f64[0] * 0.0), 0), vaddq_f64(v77, vextq_s8(v78, v78, 8uLL))), vaddq_f64(vdupq_lane_s64(COERCE__INT64(v72 * 0.0), 0), vaddq_f64(v71, vextq_s8(v79, v79, 8uLL)))), v57);
  v81 = v57 * (v73.f64[0] + vaddvq_f64(v78) - (v72 + vaddvq_f64(v79)));
  if (v102 != a2 + 24)
  {
    *(a2 + 3) = *v102;
    *(a2 + 2) = *&v102[8];
    *(a2 + 6) = *&v102[24];
  }

  *(a2 + 5) = v71;
  *(a2 + 12) = v72;
  *(a2 + 104) = v71;
  *(a2 + 15) = v72;
  *(a2 + 152) = vaddq_f64(v80, *(a2 + 152));
  *&v5 = v81 + *(a2 + 21);
  *(a2 + 21) = v5;
  return *&v5;
}

void OZSimSystemMoToFoBehavior::accumForces(OZSimSystemMoToFoBehavior *this, OZSimStateArray *a2, OZTransformNode *a3)
{
  if (*(this + 42) || ((*(*this + 712))(this, a2, a3), *(this + 42)))
  {
    if ((*(this + 344) & 1) != 0 || *(this + 416) == 1)
    {
      v28 = *(a2 + 24);
      v29 = *(a2 + 5);
      v27 = (*(*this + 728))(this, &v28, a3);
      if (fabs(v27) >= 0.0000001)
      {
        v28 = 0uLL;
        v29 = 0.0;
        v30 = 0x3FF0000000000000;
        v39 = 0;
        v40 = 0;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v35 = 0u;
        memset(v36, 0, 32);
        v5 = *(a2 + 24);
        v37 = *(a2 + 5);
        v38 = 0;
        v36[2] = v5;
        OZSimSystemMoToFoBehavior::calcParentsDerivatives(this, &v28);
        if (*a2 != *(a2 + 1))
        {
          v6 = (*a2 + 168);
          do
          {
            v7 = v6 - 21;
            v8.f64[0] = v29;
            *&v8.f64[1] = v28;
            v9 = *(v6 - 20) - *(&v28 + 1);
            v10.f64[0] = *(v6 - 19);
            v10.f64[1] = *(v6 - 21);
            v11 = vsubq_f64(v10, v8);
            v12 = vmulq_f64(v11, v11);
            v13 = sqrt(*&v12.i64[1] + v9 * v9 + *v12.i64);
            if (v13 <= 0.1)
            {
              v24 = v35;
              v25 = *v36[0].i64;
            }

            else
            {
              v12.i64[0] = v36[1].i64[1];
              v14 = vdupq_lane_s64(*&v11.f64[0], 0);
              v14.f64[0] = *(v6 - 20) - *(&v28 + 1);
              v15 = vsubq_f64(vmulq_f64(v11, v36[1]), vmulq_f64(v14, vzip1q_s64(v12, *(v36 + 8))));
              v14.f64[1] = v11.f64[1];
              v16 = vmulq_f64(v14, *(v36 + 8));
              v17 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1));
              v18 = vmulq_f64(v15, v15);
              v19 = sqrt(vaddq_f64(vmulq_f64(v17, v17), vaddq_f64(v18, vdupq_laneq_s64(v18, 1))).f64[0]);
              if (fabs(v19) >= 0.000000100000001)
              {
                v15 = vdivq_f64(v15, vdupq_lane_s64(*&v19, 0));
                v17.f64[0] = v17.f64[0] / v19;
              }

              *&v20.f64[0] = vdupq_laneq_s64(*(v34 + 8), 1).u64[0];
              *&v20.f64[1] = v34[0].i64[0];
              v21 = vaddq_f64(v11, v20);
              v22 = vdupq_lane_s64(*&v21.f64[0], 0);
              v22.f64[0] = v9 + *&v34[0].i64[1];
              v23 = *&v36[1].i64[1] / v13 * v17.f64[0];
              v24 = vaddq_f64(vmulq_f64(vdivq_f64(*(v36 + 8), vdupq_lane_s64(*&v13, 0)), v15), vaddq_f64(vsubq_f64(vmulq_f64(*(v34 + 8), v21), vmulq_f64(v20, v22)), v35));
              v25 = v23 + *v34[0].i64 * (v9 + *&v34[0].i64[1]) - vmulq_laneq_f64(*(v34 + 8), v21, 1).f64[0] + *v36[0].i64;
            }

            *(v6 - 5) = vaddq_f64(vmulq_n_f64(v24, v27), *(v6 - 5));
            *(v6 - 3) = v27 * v25 + *(v6 - 3);
            if ((*(*this + 736))(this))
            {
              v26 = v27 * *&v36[1].i64[1];
              *(v6 - 1) = vaddq_f64(vmulq_n_f64(*(v36 + 8), v27), *(v6 - 2));
              *v6 = v26 + *v6;
            }

            v6 += 31;
          }

          while (v7 + 31 != *(a2 + 1));
        }
      }
    }
  }
}

void OZSimSystemMoToFoBehavior::calcParentsInitialValues(OZSimSystemMoToFoBehavior *this, OZSimulationState *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v63 = 0uLL;
  v64 = 0;
  OZChannelObjectRootBase::getTimeOffset((*(this + 42) + 56), &v75);
  *&v68.var0.var0 = *(a2 + 11);
  v68.var0.var3 = *(a2 + 24);
  *&v49.value = v75;
  v49.epoch = v76;
  v4.n128_f64[0] = PC_CMTimeSaferSubtract(&v68, &v49, &v63);
  memset(&v62, 0, sizeof(v62));
  v5 = (*(**(this + 42) + 272))(v4);
  OZSceneSettings::getFrameDuration((v5 + 336), &v62);
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 8) = 0u;
  LOWORD(v49.value) = 1;
  *&v49.timescale = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v50 = *MEMORY[0x277CC08F0];
  v51 = *(MEMORY[0x277CC08F0] + 16);
  v52 = v50;
  v53 = v51;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  *&v57.value = *MEMORY[0x277CC08F0];
  v6 = *MEMORY[0x277CC08F0];
  v57.epoch = *(MEMORY[0x277CC08F0] + 16);
  v58.epoch = v57.epoch;
  *&v58.value = v6;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v47 = 0uLL;
  v48 = 0;
  *&v68.var0.var0 = v63;
  v68.var0.var3 = v64;
  v69[0] = v62;
  PC_CMTimeFloorToSampleDuration(&v68, v69, &v47);
  memset(&v46, 0, sizeof(v46));
  *&v68.var0.var0 = v47;
  v68.var0.var3 = v48;
  v69[0] = v62;
  PC_CMTimeSaferSubtract(&v68, v69, &v46);
  v7 = 0;
  v45 = 2;
  v57 = v46;
  v59 = 2;
  v58 = v62;
  v8 = *(this + 42);
  v71[0] = v8 + 1352;
  v71[1] = v8 + 1504;
  v71[2] = v8 + 1952;
  v70[0] = v8 + 2240;
  v70[1] = v8 + 2392;
  v70[2] = v8 + 2544;
  v9 = &v75;
  v44 = v69;
  do
  {
    v68.var0.var0 = v9;
    v60 = v9;
    OZChannel::getSamples(v71[v7++], &v46, &v62, &v45, &v44, &v68);
    ++v9;
  }

  while (v7 != 3);
  v10 = 0;
  v11 = &v72;
  do
  {
    v68.var0.var0 = v11;
    v60 = v11;
    OZChannel::getSamples(v70[v10++], &v46, &v62, &v45, &v44, &v68);
    ++v11;
  }

  while (v10 != 3);
  v12 = *&v72;
  v13 = *&v73;
  v14 = *&v74;
  if ((*(this + 344) & 1) == 0)
  {
    v15 = v76;
    v16 = v77;
    *(this + 44) = v75.n128_u64[0];
    *(this + 45) = v15;
    *(this + 46) = v16;
    *(this + 47) = v12;
    *(this + 48) = v13;
    *(this + 49) = v14;
    *(this + 50) = 0x4010000000000000;
  }

  v17 = *(&v72 + 1);
  v18 = *(&v73 + 1);
  v19 = *(&v74 + 1);
  v20 = *(v8 + 960);
  if (v20)
  {
    if (v21)
    {
      v22 = v21;
      OZRenderState::OZRenderState(&v68);
      memset(&v43, 0, sizeof(v43));
      OZChannelObjectRootBase::getTimeOffset((*(this + 42) + 56), &v65);
      v67 = v46;
      v66 = v65;
      PC_CMTimeSaferAdd(&v67, &v66, &v43);
      if (v45)
      {
        v23 = 0;
        v24 = &v75;
        do
        {
          v68.var0 = v43;
          (*(*v22 + 1224))(v22, v24, v24 + 1, v24 + 2, &v68);
          v66 = v43;
          v65 = v62;
          PC_CMTimeSaferAdd(&v66, &v65, &v67);
          v43 = v67;
          ++v23;
          v24 = (v24 + 8);
        }

        while (v23 < v45);
      }
    }
  }

  v25 = (*(*this + 336))(this);
  v26 = 0;
  v27 = *(v25 + 368);
  v28 = &v75.n128_f64[1];
  do
  {
    *(&v68.var0.var0 + v26) = v27 * (*v28 - *(v28 - 1));
    v26 += 8;
    v28 += 2;
  }

  while (v26 != 24);
  v29 = v76;
  v30 = v77;
  *a2 = v75.n128_u64[0];
  *(a2 + 1) = v29;
  *&v31.f64[0] = v68.var0.var3;
  *(a2 + 56) = vaddq_f64(*(a2 + 56), *&v68.var0.var0);
  *(a2 + 2) = v30;
  *(a2 + 3) = v12;
  *(a2 + 4) = v13;
  *(a2 + 5) = v14;
  *(a2 + 6) = 0x4010000000000000;
  v32 = v27 + v27;
  v33 = v32 * (v17 - v12);
  v34 = v32 * (v18 - v13);
  v35 = v32 * (v19 - v14);
  v36 = v32 * 0.0;
  v37 = v12 * v34 - v13 * v33;
  v38 = v12 * v35 - v14 * v33;
  v39 = v12 * v36 - v33 * 4.0;
  v40 = v14 * v36 - v35 * 4.0;
  v41 = v38 + v34 * 4.0 - v13 * v36;
  v31.f64[1] = v37 + v40;
  *(a2 + 72) = vaddq_f64(*(a2 + 72), v31);
  *(a2 + 11) = *(a2 + 11) + v41;
  v42.f64[0] = v13 * v35 - v14 * v34 + v39;
  v42.f64[1] = v42.f64[0] * 0.0 + v37 + v40 + v41 * 0.0;
  *(a2 + 6) = vaddq_f64(v42, *(a2 + 6));
  v31.f64[0] = v42.f64[0] + (v37 + v40) * 0.0 + v41 * 0.0 + *(a2 + 15);
  *(a2 + 14) = v42.f64[0] * 0.0 + v41 + (v37 + v40) * 0.0 + *(a2 + 14);
  *(a2 + 15) = *&v31.f64[0];
  OZCurveNodeParam::~OZCurveNodeParam(&v49);
}

void sub_260093AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  _Unwind_Resume(a1);
}

void OZSimSystemMoToFoBehavior::accumInitialValues(OZSimSystemMoToFoBehavior *this, OZSimStateArray *a2, uint64_t a3, OZTransformNode *a4)
{
  v4 = a3;
  if (*(this + 42) || ((*(*this + 712))(this, a2, a3, a4), *(this + 42)))
  {
    v44 = *(a2 + 24);
    v45 = *(a2 + 5);
    v39 = (*(*this + 728))(this, &v44, a3, a4);
    if (fabs(v39) >= 0.0000001)
    {
      v44 = 0uLL;
      v45 = 0.0;
      v46 = 0x3FF0000000000000;
      v51 = 0;
      v52 = 0;
      v47 = 0u;
      memset(v48, 0, 128);
      v7 = *(a2 + 24);
      v49 = *(a2 + 5);
      v50 = 0;
      v48[8] = v7;
      OZSimSystemMoToFoBehavior::calcParentsInitialValues(this, &v44);
      v8 = *(a2 + 1);
      if (v8 != *a2 && v4 >= 1)
      {
        v9.f64[0] = v45;
        *&v9.f64[1] = v44;
        v43 = v9;
        v10 = *(&v44 + 1);
        v38 = *(v48 + 8);
        v42 = vmulq_n_f64(*(v48 + 8), v39);
        v11 = v48[1].f64[1];
        v12 = v39 * v48[1].f64[1];
        v13 = v39 * v48[2].f64[0];
        v37 = *(&v48[2] + 8);
        *&v14.f64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
        v14.f64[1] = v48[2].f64[0];
        v15 = v39 * v48[4].f64[1];
        v35 = v48[2];
        v36 = v14;
        v16 = v8 - 248;
        v17 = 1;
        v40 = vmulq_n_f64(*(&v48[3] + 8), v39);
        v41 = vmulq_n_f64(*(&v48[2] + 8), v39);
        do
        {
          v18.f64[0] = *(v16 + 16);
          v18.f64[1] = *v16;
          v19 = vsubq_f64(v18, v43);
          v20 = vmulq_f64(v19, v19);
          v21 = sqrt(v20.f64[1] + (*(v16 + 8) - v10) * (*(v16 + 8) - v10) + v20.f64[0]) <= 0.1;
          v22 = v12;
          v23 = v42;
          if (!v21)
          {
            v24.f64[1] = v19.f64[1];
            v24.f64[0] = *(v16 + 8) - v10;
            v25 = vmulq_f64(v24, v35);
            v26 = vmulq_f64(v19, v37);
            v27 = vdupq_lane_s64(*&v19.f64[0], 0);
            v27.f64[0] = *(v16 + 8) - v10;
            v23 = vaddq_f64(v38, vmulq_n_f64(vsubq_f64(v26, vmulq_f64(v27, v36)), v39));
            v22 = v39 * vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0] + v11;
          }

          *(v16 + 56) = vaddq_f64(v23, *(v16 + 56));
          *(v16 + 72) = v22 + *(v16 + 72);
          v28 = (*(*this + 736))(this);
          v29 = *(v16 + 80);
          if (v28)
          {
            v29 = v13 + v29;
            v31 = v40;
            v30 = v41;
            v32 = vaddq_f64(v41, *(v16 + 88));
            v33 = vaddq_f64(v40, *(v16 + 104));
            v34 = v15 + *(v16 + 120);
          }

          else
          {
            v32 = *(v16 + 88);
            v33 = *(v16 + 104);
            v34 = *(v16 + 120);
            v31 = v40;
            v30 = v41;
          }

          *(v16 + 80) = v13 + v29;
          *(v16 + 88) = vaddq_f64(v30, v32);
          *(v16 + 104) = vaddq_f64(v31, v33);
          *(v16 + 120) = v15 + v34;
          if (v16 == *a2)
          {
            break;
          }

          v16 -= 248;
          v21 = v17++ < v4;
        }

        while (v21);
      }
    }
  }
}

uint64_t OZSimSystemMoToFoBehavior::isSceneNodeAnimated(OZSimSystemMoToFoBehavior *this, OZSceneNode *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ((*(v2[152] + 560))() & 1) != 0 || ((*(v3[263] + 560))(v3 + 263))
  {
    return 1;
  }

  v4 = 1;
  if (OZBehavior::IsChannelAffectedByBehaviors((v3 + 169), 1) & 1) != 0 || (OZBehavior::IsChannelAffectedByBehaviors((v3 + 188), 1) & 1) != 0 || (OZBehavior::IsChannelAffectedByBehaviors((v3 + 244), 1) & 1) != 0 || (OZBehavior::IsChannelAffectedByBehaviors((v3 + 280), 1) & 1) != 0 || (OZBehavior::IsChannelAffectedByBehaviors((v3 + 299), 1))
  {
    return v4;
  }

  return OZBehavior::IsChannelAffectedByBehaviors((v3 + 318), 1);
}

uint64_t OZSimSystemMoToFoBehavior::updateCache(OZSimSystemMoToFoBehavior *this)
{
  *(this + 344) = 1;
  *(this + 416) = 1;
  result = (*(*this + 336))(this);
  if (result)
  {
    *(this + 51) = *(result + 368);
    v3 = *(this + 42);
    if (v3 || (result = (*(*this + 720))(this), v3 = result, (*(this + 42) = result) != 0))
    {
      result = OZSimSystemMoToFoBehavior::isSceneNodeAnimated(result, v3);
      if ((result & 1) == 0)
      {
        *(this + 344) = 0;
      }

      v4 = v3;
      while (v4)
      {
        v4 = *(v4 + 120);
        result = OZSimSystemMoToFoBehavior::isSceneNodeAnimated(result, v4);
        if (result)
        {
          *(this + 416) = 1;
          goto LABEL_13;
        }
      }

      *(this + 416) = 0;
      OZRenderState::OZRenderState(&v9);
      result = *(v3 + 120);
      *(this + 68) = 0x3FF0000000000000;
      *(this + 63) = 0x3FF0000000000000;
      *(this + 58) = 0x3FF0000000000000;
      *(this + 53) = 0x3FF0000000000000;
      *(this + 27) = 0u;
      *(this + 28) = 0u;
      *(this + 472) = 0u;
      *(this + 488) = 0u;
      *(this + 32) = 0u;
      *(this + 33) = 0u;
      if (result)
      {
        if (result)
        {
          result = (*(*result + 1256))(result, this + 424, &v9);
        }
      }

LABEL_13:
      v5 = xmmword_260343E00;
      v6 = this + 720;
      v7 = vdupq_n_s64(2uLL);
      v8 = 6;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v5)).u8[0])
        {
          *(v6 - 88) = 0;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v5)).i32[1])
        {
          *v6 = 0;
        }

        v5 = vaddq_s64(v5, v7);
        v6 += 176;
        v8 -= 2;
      }

      while (v8);
      *(this + 270) = 0;
    }
  }

  return result;
}

uint64_t OZPolygonAA::getInstance(OZPolygonAA *this)
{
  if (OZPolygonAA::getInstance(void)::once != -1)
  {
    OZPolygonAA::getInstance();
  }

  return OZPolygonAA::_instance;
}

void OZPolygonAA::~OZPolygonAA(OZPolygonAA *this)
{
  *this = &unk_28727CE50;
  PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(v4);
  v2 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(v4);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  PCSingleton::~PCSingleton(this);
}

{
  OZPolygonAA::~OZPolygonAA(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZPolygonAA::getEdgeAATexture(OZPolygonAA *this)
{
  result = *(this + 1);
  if (!result)
  {
    PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(v3);
    OZPolygonAA::createEdgeAATexture(this);
  }

  return result;
}

void sub_2600943D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(va);
  _Unwind_Resume(a1);
}

void sub_2600944E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void OZPolygonAA::generateEdgeAAData(OZPolygonAA *this, unsigned __int8 *a2)
{
  v2 = *(this + 3);
  v3 = v2 - 1;
  if (v2 >= 1)
  {
    v6 = *(this + 4) / v3;
    do
    {
      v7 = v6 * v3;
      v8 = 0.0;
      if (v7 < 2.0)
      {
        v8 = (exp(fabs(v7 * v7) * -1.5) + -0.00247875218) / 0.997521248;
      }

      v9 = *(this + 3);
      if (v9 >= 1)
      {
        v10 = v9 + 1;
        do
        {
          v11 = v6 * (v10 - 2);
          v12 = 0.0;
          if (v11 >= 2.0 || (v12 = (exp(fabs(v11 * v11) * -1.5) + -0.00247875218) / 0.997521248, v13 = 0.0, v12 >= 0.0))
          {
            v13 = pow(v12, 1.0 / *(this + 5));
          }

          *a2++ = vcvtmd_s64_f64(v8 * v13 * 255.0 + 0.5 + 0.0000001);
          --v10;
        }

        while (v10 > 1);
      }
    }

    while (v3-- > 0);
  }
}

void OZDocument::OZDocument(OZDocument *this)
{
  *this = &unk_28727CE98;
  *(this + 1) = &unk_28727CEF0;
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 4);
  *(this + 5) = this + 40;
  *(this + 6) = this + 40;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  PCSharedCount::PCSharedCount(this + 11);
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0;
  *(this + 108) = 0;
  *(this + 28) = 3;
  PCSharedCount::PCSharedCount(this + 15);
  PCSharedCount::PCSharedCount(this + 16);
  *(this + 34) = 0;
  PCString::PCString(this + 18, "");
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 256) = 0;
  *(this + 22) = 0;
  *(this + 184) = 0;
  *(this + 260) = 0xD00000005;
  PCSharedCount::PCSharedCount(this + 34);
  *(this + 280) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 313) = 0u;
  PCURL::PCURL((this + 344), "", 0);
  if (OZDocument::OZDocument(BOOL)::onceToken != -1)
  {
    OZDocument::OZDocument();
  }

  *(this + 42) = atomic_fetch_add(&OZDocument::_nextTransientDocumentID, 1uLL);
  operator new();
}

void sub_260094924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCString *a10)
{
  MEMORY[0x2666E9F00](v13, 0x10A1C40A4A8B666);
  PCURL::~PCURL(&v10[43]);
  a10 = v10 + 37;
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  PCString::~PCString(v14 + 13);
  PCString::~PCString(v10 + 18);
  PCString::~PCString(v10 + 16);
  PCString::~PCString(v10 + 15);
  PCString::~PCString(v10 + 11);
  a10 = v10 + 8;
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__list_imp<unsigned int>::clear(v12);
  PCString::~PCString(v10 + 4);
  v10[1].var0 = v11;
  var0 = v10[2].var0;
  if (var0)
  {
    var0->info = 0;
    v10[2].var0 = 0;
  }

  _Unwind_Resume(a1);
}

void OZDocument::postNotification(OZDocument *this, int a2)
{
  v2 = *(this + 21);
  if (v2)
  {
    OZNotificationManager::postNotification(v2, a2);
  }
}

void OZDocument::OZDocument(OZDocument *this, const OZDocument *a2, int a3)
{
  *this = &unk_28727CE98;
  *(this + 1) = &unk_28727CEF0;
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 4);
  *(this + 5) = this + 40;
  *(this + 6) = this + 40;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  PCSharedCount::PCSharedCount(this + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 50) = *(a2 + 50);
  *(this + 26) = *(a2 + 26);
  *(this + 108) = *(a2 + 108);
  *(this + 28) = *(a2 + 28);
  PCSharedCount::PCSharedCount(this + 15);
  PCSharedCount::PCSharedCount(this + 16);
  *(this + 34) = *(a2 + 34);
  PCString::PCString(this + 18, a2 + 18);
  v6 = *(a2 + 19);
  v7 = *(a2 + 160);
  *(this + 21) = 0;
  *(this + 19) = v6;
  *(this + 160) = v7;
  *(this + 184) = 0;
  *(this + 22) = 0;
  *(this + 256) = *(a2 + 256);
  *(this + 65) = *(a2 + 65);
  *(this + 66) = *(a2 + 66);
  PCSharedCount::PCSharedCount(this + 34);
  *(this + 280) = *(a2 + 280);
  v8 = *(a2 + 36);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 36) = v8;
  *(this + 37) = 0;
  *(this + 40) = *(a2 + 40);
  *(this + 42) = atomic_fetch_add(&OZDocument::_nextTransientDocumentID, 1uLL);
  PCURL::PCURL((this + 344), (a2 + 344));
  if (a3)
  {
    operator new();
  }

  if (*(a2 + 29))
  {
    operator new();
  }

  *(this + 29) = 0;
  if (*(theApp + 80))
  {
    *(this + 30) = 0;
    operator new();
  }

  operator new();
}

void sub_260094DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCString *a10)
{
  MEMORY[0x2666E9F00](v13, 0x10A1C40A4A8B666);
  PCURL::~PCURL(&v10[43]);
  a10 = v10 + 37;
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  PCString::~PCString(v14 + 13);
  PCString::~PCString(v10 + 18);
  PCString::~PCString(v10 + 16);
  PCString::~PCString(v10 + 15);
  PCString::~PCString(v10 + 11);
  a10 = v10 + 8;
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__list_imp<unsigned int>::clear(v12);
  PCString::~PCString(v10 + 4);
  v10[1].var0 = v11;
  var0 = v10[2].var0;
  if (var0)
  {
    var0->info = 0;
    v10[2].var0 = 0;
  }

  _Unwind_Resume(a1);
}

void OZDocument::copyScene(OZDocument *this, OZScene *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  *(this + 3) = 0;
  operator new();
}

void sub_260095280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v26 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a26);
  _Unwind_Resume(a1);
}

void OZDocument::~OZDocument(PCString *this)
{
  this->var0 = &unk_28727CE98;
  this[1].var0 = &unk_28727CEF0;
  if (theApp)
  {
    OZApplication::documentWillDie(theApp, this);
  }

  var0 = this[3].var0;
  if (var0)
  {
    (*(var0->isa + 1))(var0);
  }

  this[3].var0 = 0;
  v3 = this[21].var0;
  if (v3)
  {
    OZNotificationManager::~OZNotificationManager(v3);
    MEMORY[0x2666E9F00]();
  }

  this[21].var0 = 0;
  v4 = this[29].var0;
  if (v4)
  {
    (*(v4->isa + 1))(v4);
  }

  this[29].var0 = 0;
  v5 = this[30].var0;
  if (v5)
  {
    (*(v5->isa + 1))(v5);
  }

  this[30].var0 = 0;
  v6 = this[28].var0;
  if (v6)
  {
    (*(v6->isa + 1))(v6);
  }

  this[28].var0 = 0;
  v7 = this[31].var0;
  if (v7)
  {
    (*(v7->isa + 1))(v7);
  }

  this[31].var0 = 0;
  for (i = 24; i != 28; ++i)
  {
    v9 = this[i].var0;
    if (v9)
    {
      (*(v9->isa + 1))(v9);
    }

    this[i].var0 = 0;
  }

  PCURL::~PCURL(&this[43]);
  v11 = this + 37;
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&v11);
  PCString::~PCString(this + 34);
  PCString::~PCString(this + 18);
  PCString::~PCString(this + 16);
  PCString::~PCString(this + 15);
  PCString::~PCString(this + 11);
  v11 = this + 8;
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::__list_imp<unsigned int>::clear(&this[5].var0);
  PCString::~PCString(this + 4);
  this[1].var0 = &unk_28727CFF0;
  v10 = this[2].var0;
  if (v10)
  {
    v10->info = 0;
    this[2].var0 = 0;
  }
}

{
  OZDocument::~OZDocument(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZDocument::~OZDocument(PCString *this)
{
  OZDocument::~OZDocument(this - 1);
}

{
  OZDocument::~OZDocument(this - 1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZScene::begin_t<OZCamera,false,true>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1208);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 1200;
  *(a2 + 24) = 0;
  if (v3 != result + 1200)
  {
    v4 = *(v3 + 16);
    {
      do
      {
        OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a2);
        result = OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::typeCheck(a2);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

uint64_t OZDocument::addCPPObserver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 168);
  if (result)
  {
    OZNotificationManager::addCPPObserver(result, a2, a3);
  }

  return result;
}

uint64_t OZDocument::removeCPPObserver(uint64_t a1)
{
  result = *(a1 + 168);
  if (result)
  {
    return OZNotificationManager::removeCPPObserver();
  }

  return result;
}

uint64_t OZDocument::startCaptureModifiedChannels(uint64_t this, const PCString *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (!v4 || (*(v4 + 1576) & 1) == 0)
  {
    v5 = *(this + 96);
    if (!v5)
    {
      PCString::set((this + 88), a2);
      v7 = *(v3 + 64);
        ;
      }

      *(v3 + 72) = v7;
      this = OZChannelBase::setRangeName(v3, a2);
      v5 = *(v3 + 96);
    }

    *(v3 + 96) = v5 + 1;
  }

  return this;
}

OZChannelBase *OZDocument::endCaptureModifiedChannels(OZChannelBase *this, const PCString *a2)
{
  v2 = this;
  v3 = *&this->var3;
  if (!v3 || (*(v3 + 1576) & 1) == 0)
  {
    v4 = LODWORD(this->var12) - 1;
    LODWORD(this->var12) = v4;
    if (!v4)
    {
      var8 = this->var8;
        ;
      }

      v2->var9 = var8;

      return OZChannelBase::setRangeName(v2, a2);
    }
  }

  return this;
}

void OZDocument::willModifyChannel(OZDocument *this, OZChannelBase *a2, int a3)
{
  v6 = *(this + 36);
  if (v6)
  {
    OZRigWidget::willModifyChannel(v6, a2);
  }

  v7 = *(this + 21);
  if (v7)
  {
    OZNotificationManager::willModifyChannel(v7, a2, a3);
  }

  v8 = *(*(this + 3) + 1504);
  if (v8 && (*(this + 280) & 1) == 0)
  {
    OZChannelBase::setRangeName(v8, 0);
  }

  if (a2 && *(this + 24))
  {
    OZChannelRef::OZChannelRef(v18, a2, 0);
    v9 = *(this + 8);
    v10 = *(this + 9);
    if (v9 != v10)
    {
      while (!OZChannelRef::operator==(v9, v18))
      {
        v9 += 3;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v10 = *(this + 9);
    }

    if (v9 == v10)
    {
      v11 = !OZChannelBase::testFlag(a2, 8);
      if (v11 || OZChannelBase::testFlag(a2, 0x2000) && (ObjectManipulator = OZChannelBase::getObjectManipulator(a2), (v13 = ObjectManipulator) != 0) && (*(*ObjectManipulator + 256))(ObjectManipulator) && ((v14 = *((*(*v13 + 256))(v13) + 8), v19 = xmmword_26084FA50, (OZFactory::isKindOfClass(v14, &v19) & 1) != 0) || (v15 = *((*(*v13 + 256))(v13) + 8), v19 = xmmword_260348A10, ((OZFactory::isKindOfClass(v15, &v19) | v11) & 1) != 0)))
      {
        (*(a2->var0 + 43))(a2, this + 88);
        v16 = *(this + 9);
        if (v16 >= *(this + 10))
        {
          v17 = std::vector<OZChannelRef>::__emplace_back_slow_path<OZChannelRef const&>(this + 64, v18);
        }

        else
        {
          OZChannelRef::OZChannelRef(*(this + 9), v18);
          v17 = v16 + 24;
          *(this + 9) = v16 + 24;
        }

        *(this + 9) = v17;
      }
    }

    OZChannelRef::~OZChannelRef(v18);
  }
}

void sub_2600959EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 72) = v3;
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

void OZDocument::writeBody(const PCString *this, PCSerializerWriteStream *a2, BOOL a3, uint64_t a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZDocumentScope);
  if (!PCString::empty(&this[16]) || LODWORD(this[17].var0))
  {
    (*(*a2 + 16))(a2, 21);
    PCSerializerWriteStream::pushScope(a2, &TemplateScope);
    if (!PCString::empty(&this[16]))
    {
      PCString::PCString(&v30, this + 16);
      (*(*a2 + 16))(a2, 35);
      (*(*a2 + 104))(a2, &v30);
      (*(*a2 + 24))(a2);
      PCString::~PCString(&v30);
    }

    var0_low = LODWORD(this[17].var0);
    if (var0_low)
    {
      (*(*a2 + 16))(a2, 37);
      (*(*a2 + 56))(a2, var0_low);
      (*(*a2 + 24))(a2);
    }

    PCSerializerWriteStream::popScope(a2);
    (*(*a2 + 24))(a2);
    (*(*a2 + 224))(a2);
  }

  if (PCString::size(&this[18]))
  {
    PCString::PCString(&v29, this + 18);
    (*(*a2 + 16))(a2, 39);
    (*(*a2 + 104))(a2, &v29);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v29);
    (*(*a2 + 224))(a2);
  }

  var0 = this[19].var0;
  if (var0)
  {
    (*(*a2 + 16))(a2, 22);
    (*(*a2 + 72))(a2, var0);
    (*(*a2 + 24))(a2);
  }

  if (LOBYTE(this[20].var0) == 1)
  {
    (*(*a2 + 16))(a2, 38);
    (*(*a2 + 48))(a2, 1);
    (*(*a2 + 24))(a2);
  }

  MainBundle = CFBundleGetMainBundle();
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"Build");
  PCURL::PCURL(&v28, ValueForInfoDictionaryKey);
  PCString::PCString(&v27, &v28);
  (*(*a2 + 16))(a2, 24);
  (*(*a2 + 104))(a2, &v27);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v27);
  (*(*a2 + 224))(a2);
  PCString::PCString(&v26, this + 4);
  (*(*a2 + 16))(a2, 93);
  (*(*a2 + 104))(a2, &v26);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v26);
  v13 = (*(*a2 + 224))(a2);
  v14 = OZPreferenceManager::Instance(v13);
  v15 = TXParagraphStyleFolder_Factory::version(v14);
  if (v15)
  {
    v16 = this[28].var0;
    if (v16)
    {
      (*(v16->isa + 2))(this[28].var0, a2, 1);
      (*(v16->isa + 3))(v16, a2, 1, a4, 1);
      (*(*a2 + 24))(a2);
      v15 = (*(*a2 + 224))(a2);
    }
  }

  v17 = 0;
  v18 = 0;
  do
  {
    while (1)
    {
      v19 = this[v17 + 24].var0;
      if (!v19 || BYTE1(v19[8].isa) != 1)
      {
        break;
      }

      (*(v19->isa + 2))(this[v17 + 24].var0, a2, 1);
      (*(v19->isa + 3))(v19, a2, 1, a4, 1);
      v15 = (*(*a2 + 24))(a2);
      v18 = 1;
      if (v17++ == 3)
      {
        goto LABEL_26;
      }
    }

    ++v17;
  }

  while (v17 != 4);
  if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  v15 = (*(*a2 + 224))(a2);
LABEL_27:
  v21 = OZPreferenceManager::Instance(v15);
  if (TXParagraphStyleFolder_Factory::version(v21))
  {
    v22 = this[29].var0;
    if (v22)
    {
      (*(v22->isa + 2))(this[29].var0, a2, 1);
      (*(v22->isa + 3))(v22, a2, 1, a4, 1);
      (*(*a2 + 24))(a2);
      (*(*a2 + 224))(a2);
    }

    v23 = this[30].var0;
    if (v23)
    {
      (*(v23->isa + 2))(this[30].var0, a2, 1);
      (*(v23->isa + 3))(v23, a2, 1, a4, 1);
      (*(*a2 + 24))(a2);
      (*(*a2 + 224))(a2);
    }

    v24 = this[31].var0;
    if (v24)
    {
      (*(v24->isa + 2))(this[31].var0, a2, 1);
      (*(v24->isa + 3))(v24, a2, 1, a4, 1);
      (*(*a2 + 24))(a2);
      (*(*a2 + 224))(a2);
    }
  }

  v25 = this[3].var0;
  if (v25)
  {
    (*(v25->isa + 2))(v25, a2, 1);
    (*(v25->isa + 3))(v25, a2, 1, a4, a5);
    (*(*a2 + 24))(a2);
  }

  PCSerializerWriteStream::popScope(a2);
  PCString::~PCString(&v28);
}

uint64_t DocTemplateParser::parseEnd(DocTemplateParser *this, PCSerializerReadStream *a2)
{
  if (this)
  {
    (*(*this + 8))(this, a2);
  }

  return 1;
}

uint64_t DocTemplateParser::parseElement(DocTemplateParser *this, const PCString *a2, PCStreamElement *a3)
{
  v11 = 0;
  PCSharedCount::PCSharedCount(&v10);
  v6 = *(a3 + 2);
  switch(v6)
  {
    case ' ':
      (*(*a3 + 32))(a3, &v11 + 4);
      v8 = *(this + 1);
      *(v8 + 112) = HIDWORD(v11);
      *(v8 + 108) = 0;
      break;
    case '#':
      (*(*a3 + 16))(a3, &v10);
      PCString::set((*(this + 1) + 128), &v10);
      break;
    case '%':
      (*(*a3 + 32))(a3, &v11);
      v7 = *(this + 1);
      v7[1].var3 = v11;
      OZChannelBase::setRangeName(v7, a2);
      break;
  }

  PCString::~PCString(&v10);
  return 1;
}

uint64_t OZDocument::parseBegin(OZDocument *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZDocumentScope);
  OZFactories::clearFactoryLoadIDs(*(theApp + 32));
  *(theApp + 48) = *(theApp + 40);
  v3 = *(this + 3);
  *(v3 + 344) = 0;
  *(v3 + 352) = 0;
  OZSceneSettings::setFrameRate(v3 + 336, 0.0, 0);
  *(v3 + 384) = 0;
  *(this + 260) = 0;
  v4 = *(this + 3);
  v5 = MEMORY[0x277CC08F0];
  v8 = *MEMORY[0x277CC08F0];
  v9 = *(MEMORY[0x277CC08F0] + 16);
  v10 = v8;
  v11 = v9;
  OZScene::setTimeRange(v4, &v8);
  v6 = *(this + 3);
  v8 = *v5;
  v9 = *(v5 + 2);
  v10 = v8;
  v11 = v9;
  OZScene::setPlayRange(v6, &v8);
  *(this + 26) = 0;
  return 1;
}

uint64_t OZDocument::parseEnd(OZDocument *this, PCSerializerReadStream *a2)
{
  v2 = this;
  v3 = (this + 260);
  if (!*(this + 65) && !*(this + 66))
  {
    *v3 = 0xD00000005;
  }

  v4 = *(this + 3);
  if (!*(v4 + 344) || !*(v4 + 348) || *(v4 + 368) == 0.0 || *(v4 + 384) == 0.0)
  {
    *(v4 + 344) = 0x1E6000002D0;
    OZSceneSettings::setFrameRate(v4 + 336, 30.0, 0);
    *(v4 + 384) = 0x3FED1745D1745D17;
    this = OZSceneSettings::setFieldRenderingMode(v4 + 336, 2);
  }

  v5 = 432000;
  if ((*(theApp + 80) & 1) == 0)
  {
    v6 = OZPreferenceManager::Instance(this);
    OZPreferenceManager::getDefaultProjectDurInFrames(v6, *(v4 + 368));
    v5 = v7;
  }

  if (v5 >= 0x69780)
  {
    v8 = 432000;
  }

  else
  {
    v8 = v5;
  }

  if (!*(v4 + 352))
  {
    *(v4 + 352) = v8;
  }

  time1 = *(*(v2 + 3) + 1376);
  v9 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  if (!CMTimeCompare(&time1, &time2))
  {
    v10 = *(v2 + 3);
    OZSceneSettings::getFrameDuration((v10 + 336), &v28);
    operator*(&v28, v8, &time2);
    time1 = *v9;
    v30 = time2;
    OZScene::setTimeRange(v10, &time1);
  }

  time1 = *(OZScene::getPlayRange(*(v2 + 3)) + 24);
  time2 = *v9;
  if (!CMTimeCompare(&time1, &time2))
  {
    OZScene::setPlayRange(*(v2 + 3), (*(v2 + 3) + 1352));
  }

  v11 = *(v2 + 26);
  switch(v11)
  {
    case 3:
      OZDocument::makeFCPv3Corrections(v2);
      break;
    case 2:
      OZDocument::makeFCPv2Corrections(v2);
      break;
    case 1:
      OZDocument::makeFCPv1Corrections(v2);
      break;
  }

  if (*v3 > 2u)
  {
    if (*v3 != 3)
    {
      return 1;
    }

    v18 = 0;
    v19 = v2 + 192;
    do
    {
      v20 = *&v19[v18];
      v21 = *(v20 + 64);
      v22 = v21 == 6;
      if (v21 == 6)
      {
        v23 = 6;
      }

      else
      {
        v23 = 2;
      }

      v24 = v21 == 0;
      if (v21)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      *(v20 + 68) = v25;
      v26 = !v24;
      LiGrid::setGroundPlane(v20, v22);
      METimeRemap::setIsOutroOptional(*&v19[v18], v26);
      HGRenderQueue::SetRelaxRenderSerializationForPriorityInversionsFlag(*&v19[v18], v22);
      v18 += 8;
    }

    while (v18 != 32);
  }

  else
  {
    v12 = 0;
    v13 = *(*(v2 + 3) + 544);
    if (v13 == 6)
    {
      v14 = 6;
    }

    else
    {
      v14 = 2;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v2 + 192;
    do
    {
      v17 = *&v16[v12];
      *(v17 + 64) = v15;
      *(v17 + 68) = v15;
      LiGrid::setGroundPlane(v17, v13 == 6);
      METimeRemap::setIsOutroOptional(*&v16[v12], v13 != 0);
      HGRenderQueue::SetRelaxRenderSerializationForPriorityInversionsFlag(*&v16[v12], v13 == 6);
      v12 += 8;
    }

    while (v12 != 32);
  }

  if (*v3 <= 3u)
  {
    *(*(v2 + 3) + 564) = 2;
  }

  return 1;
}

uint64_t OZDocument::makeFCPv1Corrections(OZDocument *this)
{
  OZScene::begin_t<OZElement,false,true>(*(this + 3), &__p);
  v2 = *(this + 3);
  v3 = v2 + 1200;
  v4 = *(v2 + 1208);
  memset(v57, 0, sizeof(v57));
  v58 = 1065353216;
  v54[0] = v3;
  v54[1] = v4;
  v55 = v3;
  v56 = 0;
  var0 = __p.var0.var0;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v57);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&__p.var2);
  OZScene::begin_t<OZFootage,false,true>(*(this + 3), v54);
  v6 = *(this + 3);
  v7 = v6 + 1200;
  v8 = *(v6 + 1208);
  memset(v52, 0, sizeof(v52));
  v53 = 1065353216;
  v48 = v7;
  v49 = v8;
  v50 = v7;
  v51 = 0;
  v9 = MEMORY[0x277CC08F0];
  while (v54[0] != v48)
  {
    if (v54[0] == v55)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v54[0] + 16);
      if (v10)
      {
      }
    }

    if (var0 != v3)
    {
      OZChannel::setValue((v10 + 3144), v9, 0.0, 0);
    }

    OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(v54);
  }

  v11 = OZScene::begin_t<OZTransformNode,false,true>(*(this + 3), v46);
  v12 = *(this + 3);
  v13 = *(v12 + 1208);
  memset(v44, 0, sizeof(v44));
  v45 = 1065353216;
  v40 = v12 + 1200;
  v41 = v13;
  v42 = v12 + 1200;
  v43 = 0;
  if (*(v12 + 344) == 1280 && *(v12 + 348) == 1080 && fabs(*(v12 + 384) + -1.33333333) < 0.0000001)
  {
    *(v12 + 384) = 0x3FF8000000000000;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v34 = _Q0;
  while (v46[0] != v40)
  {
    if (v46[0] == v46[2] || (v19 = *(v46[0] + 16)) == 0)
    {
      v20 = 0;
    }

    else
    {
    }

    v21 = (*(*(v20 + 318) + 832))(v20 + 2544);
    if (v21)
    {
      OZChannel::getKeyframes((v20 + 2544), 0, &__p);
      v22 = 0;
      v23 = 8 * v21;
      do
      {
        v39 = 0.0;
        OZChannel::getKeyframe((v20 + 2544), *(__p.var0.var0 + v22), &v36, &v39);
        OZChannel::setKeyframe((v20 + 2544), *(__p.var0.var0 + v22), &v36, -v39);
        v22 += 8;
      }

      while (v23 != v22);
      if (__p.var0.var0)
      {
        *&__p.var0.var1 = __p.var0.var0;
        operator delete(__p.var0.var0);
      }
    }

    InitialValue = OZChannel::getInitialValue((v20 + 2544));
    OZChannel::setInitialValue((v20 + 2544), -InitialValue, 0);
    DefaultValue = OZChannel::getDefaultValue((v20 + 2544));
    OZChannel::setDefaultValue((v20 + 2544), -DefaultValue);
    if (v20)
    {
      if (v26)
      {
        v27 = v26;
        if ((*(*v26 + 1600))(v26))
        {
          v36 = 0.0;
          v37 = 0.0;
          v38 = v34;
          OZRenderState::OZRenderState(&__p);
          v28 = (*(*v27 + 1560))(v27, &v36, &__p);
          v29 = OZDocument::correct4CornerChannel(v28, (v27 + 14704), v36, v37);
          v30 = OZDocument::correct4CornerChannel(v29, (v27 + 15408), v36 + *&v38, v37);
          v31 = OZDocument::correct4CornerChannel(v30, (v27 + 16112), v36 + *&v38, v37 + *(&v38 + 1));
          OZDocument::correct4CornerChannel(v31, (v27 + 16816), v36, v37 + *(&v38 + 1));
        }
      }
    }

    if (*(v12 + 344) == 1280 && *(v12 + 348) == 1080 && fabs((*(*v20 + 1328))(v20) + -1.33333333) < 0.0000001)
    {
      (*(*v20 + 1344))(v20, 1.5);
    }

    v11 = OZObject::iterator_t<OZTransformNode,false,true,OZObject::defaultValidator>::operator++(v46);
  }

  v32 = OZPreferenceManager::Instance(v11);
  OZPreferenceManager::setCompensateAspectRatio(v32, 1);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v44);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v47);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v52);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v57);
}

void sub_260096FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v59 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v60 - 144);
  _Unwind_Resume(a1);
}

uint64_t OZDocument::makeFCPv2Corrections(OZDocument *this)
{
  v2 = OZPreferenceManager::Instance(this);
  OZPreferenceManager::setCompensateAspectRatio(v2, 1);
  OZScene::begin_t<OZElement,false,true>(*(this + 3), v43);
  v3 = *(this + 3);
  v4 = v3 + 1200;
  v5 = *(v3 + 1208);
  v40 = 0u;
  v41 = 0u;
  v42 = 1065353216;
  v36 = v4;
  v37 = v5;
  v38 = v4;
  v39 = 0;
  v6 = v43[0];
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v40);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v44);
  OZScene::begin_t<OZFootage,false,true>(*(this + 3), v43);
  v7 = *(this + 3);
  v8 = v7 + 1200;
  v9 = *(v7 + 1208);
  v40 = 0u;
  v41 = 0u;
  v42 = 1065353216;
  v36 = v8;
  v37 = v9;
  v38 = v8;
  v39 = 0;
  v10 = MEMORY[0x277CC08F0];
  while (v43[0] != v36)
  {
    if (v43[0] != v43[2])
    {
      v11 = *(v43[0] + 16);
      if (v11)
      {
        if (v12)
        {
          v13 = v6 == v4;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          OZChannel::setValue((v12 + 3144), v10, 0.0, 0);
        }
      }
    }

    OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(v43);
  }

  OZScene::begin_t<OZTransformNode,false,true>(*(this + 3), v34);
  v14 = *(this + 3);
  v15 = v14 + 1200;
  v16 = *(v14 + 1208);
  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  v28 = v15;
  v29 = v16;
  v30 = v15;
  v31 = 0;
  while (v34[0] != v28)
  {
    if (v34[0] == v34[2])
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v34[0] + 16);
      if (v17)
      {
      }
    }

    v18 = (v17 + 318);
    v19 = (*(v17[318] + 832))(v17 + 318);
    if (v19)
    {
      OZChannel::getKeyframes(v18, 0, __p);
      v20 = 0;
      v21 = 8 * v19;
      do
      {
        v26 = 0.0;
        OZChannel::getKeyframe(v18, *(__p[0] + v20), &v25, &v26);
        OZChannel::setKeyframe(v18, *(__p[0] + v20), &v25, -v26);
        v20 += 8;
      }

      while (v21 != v20);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    InitialValue = OZChannel::getInitialValue(v18);
    OZChannel::setInitialValue(v18, -InitialValue, 0);
    DefaultValue = OZChannel::getDefaultValue(v18);
    OZChannel::setDefaultValue(v18, -DefaultValue);
    OZObject::iterator_t<OZTransformNode,false,true,OZObject::defaultValidator>::operator++(v34);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v35);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v40);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v44);
}

void sub_260097390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v26 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v27 - 104);
  _Unwind_Resume(a1);
}

uint64_t OZDocument::makeFCPv3Corrections(OZDocument *this)
{
  v2 = OZPreferenceManager::Instance(this);
  OZPreferenceManager::setCompensateAspectRatio(v2, 1);
  OZScene::begin_t<OZElement,false,true>(*(this + 3), v15);
  v3 = *(this + 3) + 1200;
  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  v4 = v15[0];
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v12);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v16);
  OZScene::begin_t<OZFootage,false,true>(*(this + 3), v15);
  v5 = *(this + 3) + 1200;
  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  v11 = v5;
  v6 = MEMORY[0x277CC08F0];
  while (v15[0] != v11)
  {
    if (v15[0] != v15[2])
    {
      v7 = *(v15[0] + 16);
      if (v7)
      {
        if (v8)
        {
          v9 = v4 == v3;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          OZChannel::setValue((v8 + 3144), v6, 0.0, 0);
        }
      }
    }

    OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(v15);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v12);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v16);
}

void sub_260097570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v14 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZDocument::parseElement(PCString *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  *v19 = 0;
  v6 = *(a3 + 2);
  if (v6 > 80)
  {
    if (v6 <= 84)
    {
      switch(v6)
      {
        case 'Q':
          if (*(theApp + 80) != 1)
          {
            var0 = this[30].var0;
            if (!var0)
            {
              operator new();
            }

            goto LABEL_48;
          }

          goto LABEL_53;
        case 'S':
          if (PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 9, &v19[1]))
          {
            if (v19[1] > 3)
            {
              goto LABEL_53;
            }

            v10 = this[v19[1] + 24].var0;
          }

          else
          {
            v10 = this[24].var0;
          }

          break;
        case 'T':
          v10 = this[28].var0;
          break;
        default:
          return 1;
      }

      goto LABEL_55;
    }

    if (v6 <= 91)
    {
      if (v6 != 85)
      {
        if (v6 != 91)
        {
          return 1;
        }

        PCSharedCount::PCSharedCount(&v18);
        PCSerializerReadStream::getAttributeAsString(a2, a3, 116, &v18);
        v17 = 0;
        CStr = PCString::createCStr(&v18);
        sscanf(CStr, "%d.%d", &v17 + 4, &v17);
        v9 = v17;
        v8 = HIDWORD(v17);
        *(a2 + 26) = HIDWORD(v17);
        *(a2 + 27) = v9;
        free(CStr);
        HIDWORD(this[32].var0) = v8;
        LODWORD(this[33].var0) = v9;
        OZDocument::checkVersionForReadStream(this, a2);
        goto LABEL_37;
      }

      if (*(theApp + 80) != 1)
      {
        var0 = this[31].var0;
        if (!var0)
        {
          operator new();
        }

        goto LABEL_48;
      }

LABEL_53:
      (*(*a2 + 40))(a2);
      return 1;
    }

    if (v6 != 92)
    {
      if (v6 != 93)
      {
        return 1;
      }

      PCSharedCount::PCSharedCount(&v18);
      if (PCSerializerReadStream::getAsString(a2, a3, &v18))
      {
        PCString::set(this + 4, &v18);
      }

      goto LABEL_37;
    }

    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v19[1]);
    AttributeAsUUID = PCSerializerReadStream::getAttributeAsUUID(a2, a3, 117);
    if (AttributeAsUUID)
    {
      Factory = OZFactories::findFactory(*(theApp + 32), AttributeAsUUID);
    }

    else
    {
      Factory = 0;
    }

    OZFactories::setFactoryLoadID(*(theApp + 32), v19[1], Factory);
    (*(*a2 + 40))(a2);
    if (AttributeAsUUID)
    {
      MEMORY[0x2666E9F00](AttributeAsUUID, 0x1000C40451B5BE8);
    }
  }

  else
  {
    if (v6 > 35)
    {
      if (v6 <= 59)
      {
        if (v6 != 36)
        {
          if (v6 == 38)
          {
            v16 = 0;
            PCSerializerReadStream::getAsUInt32(a2, a3, &v16);
            LOBYTE(this[20].var0) = v16 != 0;
          }

          return 1;
        }

        PCString::PCString(&v18, this + 34);
        if (PCString::empty(&v18) && PCSerializerReadStream::getAsString(a2, a3, &v18))
        {
          PCString::set(this + 34, &v18);
        }

        OZDocument::checkVersionForReadStream(this, a2);
LABEL_37:
        PCString::~PCString(&v18);
        return 1;
      }

      if (v6 != 60)
      {
        if (v6 != 80)
        {
          return 1;
        }

        if (*(theApp + 80) != 1)
        {
          var0 = this[29].var0;
          if (!var0)
          {
            operator new();
          }

LABEL_48:
          v14 = a2;
          v10 = var0;
LABEL_56:
          PCSerializerReadStream::pushHandler(v14, v10);
          return 1;
        }

        goto LABEL_53;
      }

      v10 = this[3].var0;
LABEL_55:
      v14 = a2;
      goto LABEL_56;
    }

    switch(v6)
    {
      case 21:
        operator new();
      case 22:
        PCSerializerReadStream::getAsUInt64(a2, a3, &this[19]);
        break;
      case 25:
        PCSerializerReadStream::getAsUInt32(a2, a3, v19);
        if (this[3].var0)
        {
          if (v19[0] == 3 || v19[0] == 2 || v19[0] == 1)
          {
            LODWORD(this[13].var0) = v19[0];
          }
        }

        break;
    }
  }

  return 1;
}

void OZDocument::checkVersionForReadStream(OZDocument *this, PCSerializerReadStream *a2)
{
  v4 = *(this + 65);
  v5 = *(this + 66);
  PCString::PCString(_8, this + 34);
  if (!PCString::empty(_8) && (v4 > 5 || v4 == 5 && v5 >= 0xE))
  {
    if ((*(theApp + 80) & 1) == 0)
    {
      OZChannelBase::setRangeName(_8, v6);
    }

    (*(*a2 + 24))(a2);
  }

  PCString::PCString(&v7, "older version");
  if (!PCString::compare(_8, &v7) || !v4)
  {
    goto LABEL_15;
  }

  if (v4 < 5)
  {
    PCString::~PCString(&v7);
LABEL_14:
    PCString::PCString(&v7, "older version");
    PCString::set(this + 34, &v7);
LABEL_15:
    PCString::~PCString(&v7);
    goto LABEL_16;
  }

  PCString::~PCString(&v7);
  if (v4 == 5 && v5 < 0xD)
  {
    goto LABEL_14;
  }

LABEL_16:
  PCString::~PCString(_8);
}

void sub_260097B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZScene::begin_t<OZElement,false,true>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1208);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 1200;
  *(a2 + 24) = 0;
  if (v3 != result + 1200)
  {
    v4 = *(v3 + 16);
    {
      do
      {
        OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a2);
        result = OZObject::iterator_t<OZElement,false,true,OZObject::defaultValidator>::typeCheck(a2);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

uint64_t *OZScene::begin_t<OZFootage,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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
      return OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t *OZScene::begin_t<OZTransformNode,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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
      return OZObject::iterator_t<OZTransformNode,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZTransformNode,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZTransformNode,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZDocument::correct4CornerChannel(OZDocument *this, OZChannelPosition *a2, double a3, double a4)
{
  v7 = (a2 + 136);
  v8 = (*(*(a2 + 17) + 832))(a2 + 136);
  if (v8)
  {
    v9 = v8;
    OZChannel::getKeyframes(v7, 0, &__p);
    v10 = 0;
    v11 = 8 * v9;
    do
    {
      v23 = 0.0;
      OZChannel::getKeyframe(v7, *(__p + v10), &v22, &v23);
      OZChannel::setKeyframe(v7, *(__p + v10), &v22, v23 - a3);
      v10 += 8;
    }

    while (v11 != v10);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  v12 = (a2 + 288);
  v13 = (*(*(a2 + 36) + 832))(a2 + 288);
  if (v13)
  {
    v14 = v13;
    OZChannel::getKeyframes(v12, 0, &__p);
    v15 = 0;
    v16 = 8 * v14;
    do
    {
      v23 = 0.0;
      OZChannel::getKeyframe(v12, *(__p + v15), &v22, &v23);
      OZChannel::setKeyframe(v12, *(__p + v15), &v22, v23 - a4);
      v15 += 8;
    }

    while (v16 != v15);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  InitialValue = OZChannel::getInitialValue(v7);
  OZChannel::setInitialValue(v7, InitialValue - a3, 0);
  DefaultValue = OZChannel::getDefaultValue(v7);
  OZChannel::setDefaultValue(v7, DefaultValue - a3);
  v19 = OZChannel::getInitialValue(v12);
  OZChannel::setInitialValue(v12, v19 - a4, 0);
  v20 = OZChannel::getDefaultValue(v12);
  return OZChannel::setDefaultValue(v12, v20 - a4);
}

void sub_260098130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZDocument::open(OZChannelBase *this, const PCURL *a2)
{
  v4 = PCXMLReadStream::PCXMLReadStream(v13, a2);
  v14 = *(theApp + 16);
  *(OZCoreGlobals::getInstance(v4) + 8) = 0;
  if (!this[1].var7)
  {
    operator new();
  }

  PCSerializerReadStream::pushHandler(v13, this);
  v5 = PCXMLReadStream::parse(v13);
  if (v5)
  {
    OZChannelBase::setRangeName(this, a2);
    AnimateFlag = OZSceneSettings::getAnimateFlag((*&this->var3 + 336));
    v7 = AnimateFlag;
    if (AnimateFlag)
    {
      HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
      AnimateFlag = OZHostApplicationDelegateHandler::wantsToAssertThatLoadedSceneHasAnimateFlagDisabled(HostApplicationDelegate);
      if (AnimateFlag)
      {
        PCURL::getAsFileSystemString(a2, &v12);
        v9 = PCString::createUTF8Str(&v12);
        PCString::~PCString(&v12);
        printf("WARNING: document has animate flag enabled: %s\n", v9);
        free(v9);
      }
    }

    *(OZCoreGlobals::getInstance(AnimateFlag) + 8) = v7;
    var7 = this[1].var7;
    if (var7)
    {
      OZNotificationManager::postNotification(var7, 51);
    }

    PCURL::operator=(&this[3].var1, a2);
  }

  else
  {
    puts("parse failed");
  }

  PCXMLReadStream::~PCXMLReadStream(v13);
  return v5;
}

void sub_2600982E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, char a12)
{
  PCString::~PCString(&a11);
  PCXMLReadStream::~PCXMLReadStream(&a12);
  _Unwind_Resume(a1);
}

void *OZScene::begin_t<OZProjectNode,false,false>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  v4 = result + 150;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    result = v3[2];
    {
      for (i = v3[1]; i != v4; i = i[1])
      {
        result = i[2];
        if (result)
        {
          if (result)
          {
            break;
          }
        }
      }

      *a2 = i;
    }
  }

  return result;
}

void PCSafe::~PCSafe(PCSafe *this)
{
  *this = &unk_28727CFF0;
  v1 = *(this + 1);
  if (v1)
  {
    *(v1 + 8) = 0;
    *(this + 1) = 0;
  }
}

{
  *this = &unk_28727CFF0;
  v1 = *(this + 1);
  if (v1)
  {
    *(v1 + 8) = 0;
    *(this + 1) = 0;
  }

  JUMPOUT(0x2666E9F00);
}

void std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        OZChannelRef::~OZChannelRef(v4 - 3);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::typeCheck(void *a1)
{
  if (*a1 == a1[2])
  {
    return 1;
  }

  result = *(*a1 + 16);
  if (result)
  {
  }

  return result;
}

void *OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(void *result)
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

uint64_t std::vector<OZChannelRef>::__emplace_back_slow_path<OZChannelRef const&>(uint64_t a1, const OZChannelRef *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  OZChannelRef::OZChannelRef((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = (24 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZChannelRef>,OZChannelRef*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OZChannelRef>::~__split_buffer(&v13);
  return v12;
}

void sub_260098A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OZChannelRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZChannelRef>,OZChannelRef*>(int a1, void **a2, OZChannelRef *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      OZChannelRef::OZChannelRef(this, v8);
      v8 = (v8 + 24);
      ++this;
      v7 -= 24;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      OZChannelRef::~OZChannelRef(v6);
      v6 += 3;
    }
  }
}

void sub_260098AA0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 24);
    do
    {
      OZChannelRef::~OZChannelRef(v4);
      v4 = (v5 - 24);
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<OZChannelRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    OZChannelRef::~OZChannelRef((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t OZObject::iterator_t<OZElement,false,true,OZObject::defaultValidator>::typeCheck(void *a1)
{
  if (*a1 == a1[2])
  {
    return 1;
  }

  result = *(*a1 + 16);
  if (result)
  {
  }

  return result;
}

unint64_t OZInsertLayerBelowGroupAffectedByBump(LiLayeredMaterial *a1, PCSharedCount *a2)
{
  v4 = (*(a1 + 84) - *(a1 + 83)) >> 4;
  while (1)
  {
    v5 = v4;
    v6 = __OFSUB__(v4, 1);
    LODWORD(v4) = v4 - 1;
    if (v4 < 0 != v6)
    {
      return LiLayeredMaterial::insertLayer(a1, v5, a2);
    }

    LiLayeredMaterial::getLayer(a1, v4, &v13);
    var0 = v13.var0;
    PCSharedCount::~PCSharedCount(&v14);
    if (*(var0 + 25) == 1)
    {
      LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(var0);
      if (v4)
      {
        v9 = LUTEnd;
        v10 = v4 - 1;
        while (1)
        {
          LODWORD(v4) = v4 - 1;
          LiLayeredMaterial::getLayer(a1, v4, &v13);
          v11 = v13.var0;
          PCSharedCount::~PCSharedCount(&v14);
          if (*(v11 + 25) != 1)
          {
            break;
          }

          if (PCICCTransferFunctionLUT::getLUTEnd(v11) != v9)
          {
            v10 = v4;
            break;
          }

          --v10;
          if (v4 <= 0)
          {
            v10 = -1;
            break;
          }
        }

        v5 = v10 + 1;
      }

      else
      {
        v5 = 0;
      }

      return LiLayeredMaterial::insertLayer(a1, v5, a2);
    }
  }
}

void sub_260098EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260098EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  JUMPOUT(0x260098ED8);
}

uint64_t getWorkingGamut(OZChannelBase *a1)
{
  if (OZChannelBase::isObjectRef(a1))
  {
    v2 = (*(a1->var0 + 3))(a1);
    if (v2)
    {
      v3 = (*(*v2 + 272))(v2);
      if (v3)
      {
        (*(*v3 + 136))(&v9);
        CGColorSpace = FxColorDescription::getCGColorSpace(&v9);
        v5 = CGColorSpace == PCGetWorkingColorSpace(1);
        PCCFRef<CGColorSpace *>::~PCCFRef(&v9._pcColorDesc._colorSpaceRef._obj);
        return v5;
      }
    }

    return 0;
  }

  var0 = a1->var4.var0;
  if (!var0)
  {
    return 0;
  }

  v7 = [(__CFString *)var0 contextManager];
  if (!v7)
  {
    return 0;
  }

  OZFxRenderContextAgentSentry::OZFxRenderContextAgentSentry(&v9, v7);
  if (OZFxRenderContextAgentSentry::getAgent(&v9, a1))
  {
    v5 = (*(a1->var0 + 22))(a1);
  }

  else
  {
    v5 = 0;
  }

  OZFxRenderContextAgentSentry::~OZFxRenderContextAgentSentry(&v9);
  return v5;
}

void sub_260099138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260099158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  JUMPOUT(0x260099150);
}

void sub_2600991EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::OZSceneNodeFile(OZSceneNodeFile *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  *v5 = &unk_28727D018;
  v5[2] = &unk_28727D638;
  v5[6] = &unk_28727D890;
  PCURL::PCURL(&v6, @"Footage Inspector Linked Objects");
  OZChannelFolder::OZChannelFolder((this + 1088), &v6, (this + 448), 0x6Cu, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Do Footage Replace");
  OZChannelButton::OZChannelButton((this + 1216), OZSceneNodeFile::replaceCallbackStub, this, &v6, (this + 448), 0x76u, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Footage Inspector Summary");
  OZChannelFolder::OZChannelFolder((this + 1408), &v6, (this + 448), 0x6Du, 0, 0);
  PCString::~PCString(&v6);
  *(this + 384) = 0;
  *(this + 770) = 256;
  *(this + 1544) = 0u;
  *(this + 780) = 256;
  PCSharedCount::PCSharedCount(this + 196);
  OZChannelBase::setFlag((this + 1088), 8, 0);
  OZChannelFolder::setFoldFlag((this + 1088), 0x800000);
  OZChannelBase::resetFlag((this + 1088), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1088));
  OZChannelBase::setFlag((this + 1408), 8, 0);
  OZChannelFolder::setFoldFlag((this + 1408), 0x800000);
  OZChannelBase::resetFlag((this + 1408), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1408));
  OZChannelBase::resetFlag((this + 1216), 16, 0);
}

void sub_260099440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelFolder::~OZChannelFolder((v10 + 1408));
  OZChannelButton::~OZChannelButton((v10 + 1216));
  OZChannelFolder::~OZChannelFolder((v10 + 1088));
  OZSceneNode::~OZSceneNode(v10);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::OZSceneNodeFile(OZSceneNodeFile *this, OZSceneNodeFile *a2, char a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  *v5 = &unk_28727D018;
  *(v5 + 16) = &unk_28727D638;
  *(v5 + 48) = &unk_28727D890;
  OZChannelFolder::OZChannelFolder((v5 + 1088), (a2 + 1088), (this + 448));
  OZChannelButton::OZChannelButton((this + 1216), (a2 + 1216), (this + 448));
  OZChannelFolder::OZChannelFolder((this + 1408), (a2 + 1408), (this + 448));
  *(this + 384) = *(a2 + 384);
  *(this + 770) = *(a2 + 770);
  *(this + 1544) = 0u;
  *(this + 780) = *(a2 + 780);
  PCString::PCString(this + 196, a2 + 196);
  OZChannelButton::setPrivateData((this + 1216), this);
  v6 = *(a2 + 13);
  v7 = *(a2 + 28);
  v8 = *(a2 + 232);
  v9 = *(a2 + 31);
  OZChannelObjectRootBase::setTimeExtent((this + 56), &v6, 0);
  if (*(a2 + 193))
  {
    operator new();
  }

  if (*(a2 + 194))
  {
    operator new();
  }
}

void sub_26009965C(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x60C4044C4A2DFLL);
  PCString::~PCString((v1 + 1568));
  OZChannelFolder::~OZChannelFolder((v1 + 1408));
  OZChannelButton::~OZChannelButton((v1 + 1216));
  OZChannelFolder::~OZChannelFolder((v1 + 1088));
  OZSceneNode::~OZSceneNode(v1);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::~OZSceneNodeFile(OZSceneNodeFile *this)
{
  *this = &unk_28727D018;
  *(this + 2) = &unk_28727D638;
  *(this + 6) = &unk_28727D890;
  v2 = *(this + 193);
  if (v2)
  {
    PCURL::~PCURL(v2);
    MEMORY[0x2666E9F00]();
  }

  *(this + 193) = 0;
  v3 = *(this + 194);
  if (v3)
  {
    PCURL::~PCURL(v3);
    MEMORY[0x2666E9F00]();
  }

  *(this + 194) = 0;
  PCString::~PCString(this + 196);
  OZChannelFolder::~OZChannelFolder((this + 1408));
  OZChannelButton::~OZChannelButton((this + 1216));
  OZChannelFolder::~OZChannelFolder((this + 1088));

  OZSceneNode::~OZSceneNode(this);
}

void OZSceneNodeFile::operator=(uint64_t a1, const void *a2)
{
  OZSceneNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelFolder::operator=(a1 + 1088);
  OZChannelBase::operator=(a1 + 1216, &v5[152]);
  *(a1 + 1368) = v5[171];
  PCString::set((a1 + 1376), v5 + 172);
  *(a1 + 1384) = v5[173];
  PCString::set((a1 + 1392), v5 + 174);
  *(a1 + 1400) = v5[175].var0;
  OZChannelFolder::operator=(a1 + 1408);
  OZChannelButton::setPrivateData((a1 + 1216), a1);
  *(a1 + 1561) = BYTE1(v5[195].var0);
  PCString::set((a1 + 1568), v5 + 196);
  *(a1 + 1560) = v5[195].var0;
  if (v5[193].var0)
  {
    operator new();
  }

  if (v5[194].var0)
  {
    operator new();
  }
}

OZScene *OZSceneNodeFile::canDelete(OZSceneNodeFile *this)
{
  result = *(this + 121);
  if (result)
  {
    DependantNodes = OZScene::getDependantNodes(result, *(this + 20));
    if (!DependantNodes)
    {
      return ((*(*(this + 2) + 56))(this + 16, 1) ^ 1);
    }

    v4 = DependantNodes + 1;
    v5 = *DependantNodes;
    if (*DependantNodes == DependantNodes + 1)
    {
      return ((*(*(this + 2) + 56))(this + 16, 1) ^ 1);
    }

    else
    {
      while (1)
      {
        Node = OZScene::getNode(*(this + 121), *(v5 + 7));
        if (Node)
        {
          if ((*(Node[2] + 56))())
          {
            break;
          }
        }

        v7 = v5[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
        if (v8 == v4)
        {
          return ((*(*(this + 2) + 56))(this + 16, 1) ^ 1);
        }
      }

      return 0;
    }
  }

  return result;
}

void OZSceneNodeFile::getAssociatedFileURLs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void OZSceneNodeFile::setAbsoluteFileURL(OZSceneNodeFile *this, PCURL *a2)
{
  v3 = *(this + 193);
  if (v3)
  {
    PCURL::~PCURL(v3);
    MEMORY[0x2666E9F00]();
  }

  *(this + 193) = 0;
  operator new();
}

void OZSceneNodeFile::setRelativeFileURL(OZSceneNodeFile *this, PCURL *a2)
{
  v3 = *(this + 194);
  if (v3)
  {
    PCURL::~PCURL(v3);
    MEMORY[0x2666E9F00]();
  }

  *(this + 194) = 0;
  operator new();
}

PCURL *OZSceneNodeFile::getURL@<X0>(OZSceneNodeFile *this@<X0>, PCURL *a2@<X8>)
{
  if (*(this + 1561) == 1)
  {
    return PCURL::PCURL(a2, this + 196, 0);
  }

  else
  {
    return PCURL::PCURL(a2, *(this + 193));
  }
}

uint64_t OZSceneNodeFile::isAssociatedFileMissing(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 1512))(&v15);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = v15;
  v5 = v16;
  if (v15 == v16)
  {
    v7 = 0;
  }

  else
  {
    v6 = v3;
    v7 = 0;
    do
    {
      PCURL::PCURL(&v17, v4);
      PCURL::getAsFileSystemString(&v17, &v14);
      v8 = PCString::ns_str(&v14);
      PCString::~PCString(&v14);
      v9 = [v6 fileExistsAtPath:v8];
      if (a2)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v7 |= v9 ^ 1;
      }

      else
      {
        v11 = *(a2 + 8);
        if (v11 >= *(a2 + 16))
        {
          v12 = std::vector<PCURL>::__emplace_back_slow_path<PCURL const&>(a2, &v17);
        }

        else
        {
          PCURL::PCURL(*(a2 + 8), &v17);
          v12 = v11 + 8;
          *(a2 + 8) = v11 + 8;
        }

        *(a2 + 8) = v12;
        v7 = 1;
      }

      PCURL::~PCURL(&v17);
      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }

  v17 = &v15;
  std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v7 & 1;
}

void sub_260099D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11, uint64_t a12, uint64_t a13, char *a14)
{
  a14 = &a11;
  std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::getFilename(OZSceneNodeFile *this@<X0>, PCSharedCount *a2@<X8>)
{
  if (*(this + 1561) == 1)
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {
    (*(*this + 1232))(&v3);
    PCURL::getFilename(&v3, a2);
    PCURL::~PCURL(&v3);
  }
}

void sub_260099E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::getShortFilename(OZSceneNodeFile *this@<X0>, PCSharedCount *a2@<X8>)
{
  if (*(this + 1561) == 1)
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {
    (*(*this + 1232))(&v3);
    PCURL::getShortFilename(&v3, a2);
    PCURL::~PCURL(&v3);
  }
}

void sub_260099EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::getExtension(OZSceneNodeFile *this@<X0>, PCSharedCount *a2@<X8>)
{
  if (*(this + 1561) == 1)
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {
    (*(*this + 1232))(&v3);
    PCURL::getExtension(&v3, a2);
    PCURL::~PCURL(&v3);
  }
}

void sub_260099F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::getAsFileSystemString(OZSceneNodeFile *this@<X0>, PCSharedCount *a2@<X8>)
{
  if (*(this + 1561) == 1)
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {
    (*(*this + 1232))(&v3);
    PCURL::getAsFileSystemString(&v3, a2);
    PCURL::~PCURL(&v3);
  }
}

void sub_26009A014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

void OZSceneNodeFile::getAsURLString(const PCString *this@<X0>, PCString *a2@<X8>)
{
  if (BYTE1(this[195].var0) == 1)
  {

    PCString::PCString(a2, this + 196);
  }

  else
  {
    (this->var0[38].data)(&v3);
    PCURL::getAsURLString(&v3, a2);
    PCURL::~PCURL(&v3);
  }
}

void sub_26009A0C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

uint64_t OZSceneNodeFile::fileSize(OZSceneNodeFile *this)
{
  (*(*this + 1264))(&v4);
  v1 = [(__CFString *)PCString::ns_str(&v4) stringByResolvingSymlinksInPath];
  PCString::~PCString(&v4);
  v2 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  return [objc_msgSend(v2 objectForKey:{*MEMORY[0x277CCA1C0]), "unsignedLongLongValue"}];
}

uint64_t OZSceneNodeFile::calcHashForState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 1561);
  (*(*a2 + 16))(a2, 0);
  (*(*a2 + 48))(a2, v8);
  (*(*a2 + 24))(a2);
  if (*(a1 + 1561) != 1)
  {
    (*(*a1 + 1264))(&v10, a1);
    (*(*a2 + 104))(a2, &v10);
    PCString::~PCString(&v10);
  }

  (*(*a2 + 56))(a2, *(a1 + 1536));
  return (*(*a1 + 536))(a1, a2, a3, a4, 1);
}

void OZSceneNodeFile::replaceCallback(OZChannelBase **this)
{
  ((*this)[12].var11)(this);
  OZChannelBase::setRangeName(this[121], v2);
  var2 = this[121][14].var2;

  OZDocument::postNotification(var2, 524336);
}

uint64_t OZSceneNodeFile::isInUse(OZSceneNodeFile *this)
{
  result = *(this + 121);
  if (result)
  {
    result = OZScene::getDependantNodes(result, *(this + 20));
    if (result)
    {
      v3 = (result + 8);
      v4 = *result;
      if (*result == result + 8)
      {
        return 0;
      }

      else
      {
        while (1)
        {
          if (OZScene::getObject(*(this + 121), *(v4 + 7)))
          {
            Object = OZScene::getObject(*(this + 121), *(v4 + 7));
            {
              break;
            }
          }

          v6 = v4[1];
          if (v6)
          {
            do
            {
              v7 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = v4[2];
              v8 = *v7 == v4;
              v4 = v7;
            }

            while (!v8);
          }

          v4 = v7;
          if (v7 == v3)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

void std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        PCURL::~PCURL((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<PCURL>::__emplace_back_slow_path<PCURL const&>(uint64_t a1, const PCURL *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  PCURL::PCURL((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCURL>,PCURL*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<PCURL>::~__split_buffer(&v14);
  return v13;
}

void sub_26009A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PCURL>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCURL>,PCURL*>(int a1, PCURL *a2, PCURL *a3, PCURL *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      PCURL::PCURL(this, v8);
      v8 = (v8 + 8);
      this = (this + 8);
      v7 -= 8;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      PCURL::~PCURL(v6);
      v6 = (v6 + 8);
    }
  }
}

void sub_26009A888(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      PCURL::~PCURL(v4);
      v4 = (v5 - 8);
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<PCURL>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    PCURL::~PCURL((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void OZLocking::OZLocking(OZLocking *this)
{
  *this = &unk_2872018B0;
  PCSharedMutex::PCSharedMutex((this + 8));
  *(this + 14) = 0;
  *(this + 120) = 0;
  PCMutex::PCMutex((this + 128), 1);
  *(this + 16) = &unk_2871D83A0;
}

char *OZLocking::getLockDependenciesForElement(char *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = result;
    v26 = result;
    if (result)
    {
      for (i = *(a4 + 8); i; i = *i)
      {
        v10 = i[4];
        if (result >= v10)
        {
          if (v10 >= result)
          {
            return result;
          }

          ++i;
        }
      }

      if (a2)
      {
        PCDirectedGraph<OZLocking *>::addEdge(a3, a2, result);
      }

      else
      {
        v27[0] = result;
        v27[2] = v27;
        std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::__emplace_unique_key_args<OZLocking *,std::piecewise_construct_t const&,std::tuple<OZLocking * const&>,std::tuple<>>(a3, v27);
      }

      std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a4, &v26);
    }

    else
    {
      v26 = a2;
    }

    v11 = v7;
    do
    {
      for (j = *(v11 + 126); j != v11 + 1000; j = *(j + 1))
      {
        v13 = *(j + 2);
        if (v13)
        {
          if (v14)
          {
            for (k = *(a4 + 8); k; k = *k)
            {
              v16 = k[4];
              if (v14 >= v16)
              {
                if (v16 >= v14)
                {
                  goto LABEL_24;
                }

                ++k;
              }
            }

            (*(*v14 + 48))(v14, v26, a3, a4);
          }
        }

LABEL_24:
        ;
      }

      v11 = *(v11 + 120);
    }

    while (v11);
    if (v17)
    {
      v18 = v17;
      v19 = (*(*v17 + 1024))(v17);
      v20 = (*(*v18 + 1032))(v18);
      if (v19 != v20)
      {
        v21 = v20;
        do
        {
          v22 = *(v19 + 16);
          if (v22)
          {
            if (v23)
            {
              OZLocking::getLockDependenciesForElement(v23, a2, a3, a4);
            }
          }

          v19 = *(v19 + 8);
        }

        while (v19 != v21);
      }
    }

    v24 = v26;
    v25 = (*(*v7 + 272))(v7);
    result = OZLocking::addLockDependenciesForDependents(v24, v25, a3, a4);
    if (v8 && v26)
    {
      return std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, &v26);
    }
  }

  return result;
}