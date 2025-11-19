void sub_26011EF6C(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v3, 0x10A1C40A4A8B666);
  PCString::~PCString(v1 + 31);
  std::__list_imp<unsigned int>::clear(v2);
  OZChannelObjectRootBase::~OZChannelObjectRootBase(v1);
  _Unwind_Resume(a1);
}

void OZChannelObjectRoot::OZChannelObjectRoot(OZChannelObjectRoot *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelObjectRootBase::OZChannelObjectRootBase(this, a2, a3, a4);
  v5->var0 = &unk_28728A5F0;
  v5[2].var0 = &unk_28728A988;
  v5[28].var0 = &v5[28];
  v5[29].var0 = &v5[28];
  v5[30].var0 = 0;
  PCSharedCount::PCSharedCount(v5 + 31);
  *(this + 26) = 0;
  *(this + 27) = 0;
}

void sub_26011F040(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v2);
  OZChannelObjectRootBase::~OZChannelObjectRootBase(v1);
  _Unwind_Resume(a1);
}

void OZChannelObjectRoot::~OZChannelObjectRoot(PCString *this)
{
  this->var0 = &unk_28728A5F0;
  this[2].var0 = &unk_28728A988;
  var0 = this[27].var0;
  if (var0)
  {
    (*(var0->isa + 1))(var0);
  }

  this[27].var0 = 0;
  PCString::~PCString(this + 31);
  std::__list_imp<unsigned int>::clear(&this[28].var0);

  OZChannelObjectRootBase::~OZChannelObjectRootBase(this);
}

{
  OZChannelObjectRoot::~OZChannelObjectRoot(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelObjectRoot::~OZChannelObjectRoot(PCString *this)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);
}

{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelObjectRoot::compare(OZChannelObjectRoot *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    v4 = result;
    if (*(this + 26) == *(result + 208) && OZChannelObjectRootBase::compare(this, result))
    {
      v5 = *(this + 27);
      v6 = *(v4 + 216);
      if (v5)
      {
        if (v6 && v5[3] == *(v6 + 24))
        {
          v7 = v5[1];
          v8 = v5 + 2;
          if (v7 != v5 + 2)
          {
            v9 = *(v6 + 8);
            while (OZTimeMarker::operator==((v7 + 4), (v9 + 4)))
            {
              v10 = v7[1];
              v11 = v7;
              if (v10)
              {
                do
                {
                  v7 = v10;
                  v10 = *v10;
                }

                while (v10);
              }

              else
              {
                do
                {
                  v7 = v11[2];
                  v12 = *v7 == v11;
                  v11 = v7;
                }

                while (!v12);
              }

              v13 = v9[1];
              if (v13)
              {
                do
                {
                  v14 = v13;
                  v13 = *v13;
                }

                while (v13);
              }

              else
              {
                do
                {
                  v14 = v9[2];
                  v12 = *v14 == v9;
                  v9 = v14;
                }

                while (!v12);
              }

              result = 1;
              v9 = v14;
              if (v7 == v8)
              {
                return result;
              }
            }

            return 0;
          }

          return 1;
        }
      }

      else if (!v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void OZChannelObjectRoot::copy(OZChannelObjectRoot *this, const OZChannelBase *a2)
{
  OZChannelObjectRootBase::copy(this, a2);
  if (a2)
  {
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 27);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      *(this + 27) = 0;
      if (v5[27])
      {
        operator new();
      }

      *(this + 27) = 0;
    }
  }
}

uint64_t OZChannelObjectRoot::recomputeTimeRangeFromChildren(OZChannelBase *this, int a2, int a3, char a4, BOOL a5, BOOL a6)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (ObjectManipulator)
  {
  }

  else
  {
    v13 = 1;
  }

  if ((OZChannelBase::isLocked(this, 1) & 1) == 0 && !OZChannelFolder::testFoldFlag(this, 0x10000) && !OZChannelFolder::testFoldFlag(this, 0x40000))
  {
    var0 = this[1].var0;
    if (var0)
    {
      v15 = *var0;
      v16 = var0[1];
      if (*var0 != v16)
      {
        *&v24.value = *MEMORY[0x277CC08B0];
        v24.epoch = *(MEMORY[0x277CC08B0] + 16);
        do
        {
          if (*v15)
          {
            if (v17)
            {
              v18 = v17;
              if (a2)
              {
                OZChannelObjectRoot::recomputeTimeRangeFromChildren(v17, 1, 0, v13 & a4, a5, a6);
              }

              v22 = *(v18 + 8);
              v23 = *(v18 + 18);
              time1 = v24;
              time2 = *(v18 + 128);
              if (CMTimeCompare(&time1, &time2) >= 1)
              {
                *&v24.value = v22;
                v24.epoch = v23;
              }
            }
          }

          ++v15;
        }

        while (v15 != v16);
      }
    }
  }

  if (a3)
  {
    var6 = this->var6;
    if (var6)
    {
      if (v20)
      {
        OZChannelObjectRoot::recomputeTimeRangeFromChildren(v20, 0, 1, 0, a5, a6);
      }
    }
  }

  return 0;
}

uint64_t OZChannelObjectRoot::resetTimeIndependentFlagIfNeeded(OZChannelObjectRoot *this, int a2, int a3)
{
  result = OZChannelBase::isLocked(this, 1);
  if (result)
  {
    return result;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  v7 = *(this + 6);
  if (v7)
  {
    result = (*(*v7 + 704))(v7, 0, 1);
LABEL_5:
    if (!a2)
    {
      return result;
    }
  }

  v8 = *(this + 14);
  if (!v8 || (v9 = *v8, v10 = v8[1], *v8 == v10))
  {
    result = OZChannelFolder::testFoldFlag(this, 0x10000);
    if (result)
    {

      return OZChannelFolder::resetFoldFlag(this, 0x10000);
    }
  }

  else
  {
    v11 = 0;
    v19 = **&MEMORY[0x277CC08B0];
    v18 = **&MEMORY[0x277CC08A0];
    v12 = MEMORY[0x277CC08F0];
    do
    {
      if (*v9)
      {
        if (v13)
        {
          (*(*v13 + 704))(v13, 1, 0);
          if (*v9)
          {
            if (v14)
            {
              if ((v14[56] & 2) == 0)
              {
                (*(*v14 + 712))(&v16);
                time1 = v17;
                time2 = *v12;
                if (CMTimeCompare(&time1, &time2) >= 1)
                {
                  time2 = v16;
                  time1 = v19;
                  if (CMTimeCompare(&time1, &time2) >= 1)
                  {
                    v19 = v16;
                  }

                  time1 = v16;
                  time2 = v17;
                  PC_CMTimeSaferAdd(&time1, &time2, &v15);
                  time1 = v18;
                  time2 = v15;
                  if (CMTimeCompare(&time1, &time2) < 0)
                  {
                    time1 = v16;
                    time2 = v17;
                    PC_CMTimeSaferAdd(&time1, &time2, &v18);
                  }

                  v11 = 1;
                }
              }
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
    if ((v11 & 1) == 0 || (v16 = *(this + 152), time1 = v19, result = CMTimeCompare(&v16, &time1), !result) && (v16 = *(this + 152), time1 = *(this + 176), PC_CMTimeSaferAdd(&v16, &time1, &time2), v16 = time2, time1 = v18, result = CMTimeCompare(&v16, &time1), !result))
    {
      result = OZChannelFolder::testFoldFlag(this, 0x10000);
      if (result)
      {
        return OZChannelFolder::resetFoldFlag(this, 0x10000);
      }
    }
  }

  return result;
}

uint64_t OZChannelObjectRoot::setTimeMarkers(void *a1, uint64_t a2)
{
  (*(*a1 + 464))(a1, 1);
  result = a1[27];
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  a1[27] = a2;
  return result;
}

void OZChannelObjectRoot::insertBehaviorAfter(OZChannelObjectRoot *this, OZSimulationBehavior *a2, OZSimulationBehavior *a3)
{
  if (a3)
  {
      ;
    }

    operator new();
  }

  operator new();
}

void OZChannelObjectRoot::removeBehavior(void *a1, uint64_t a2)
{
  v2 = a1 + 28;
  for (i = a1[29]; i != v2; i = i[1])
  {
    if (i[2] == a2)
    {
      if (v2 != i)
      {
        v5 = *i;
        v4 = i[1];
        *(v5 + 8) = v4;
        *v4 = v5;
        --a1[30];
        operator delete(i);
      }

      return;
    }
  }
}

void OZChannelObjectRoot::renumberIDs(OZChannelBase *a1, OZChannelBase *a2, int a3)
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  var3 = a1->var3;
  v9 = var3;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = &v10;
  }

  if (var3 >> 4 > 0x270)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(a1);
    OZChannelBase::setID(a1, NextUniqueID);
    v8 = a1->var3;
    v11[3] = &v9;
    *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v6, &v9) + 8) = v8;
  }

  enumerateIDs(v6, a1);
  if (a3)
  {
    updateReferenceIDsRecursive(v6, a1);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v10, v11[0]);
}

OZChannelBase *enumerateIDs(OZChannelBase *result, OZChannelBase *a2)
{
  var0 = a2[1].var0;
  if (var0)
  {
    v3 = result;
    result = OZChannelBase::getObjectManipulator(a2);
    v4 = *var0;
    if (*var0 != var0[1])
    {
      v5 = result;
      do
      {
        v6 = *v4;
        var3 = (*v4)->var3;
        v10 = var3;
        if (!v5 && var3 >> 4 > 0x270)
        {
          goto LABEL_8;
        }

        if (!v5)
        {
          goto LABEL_10;
        }

        result = (*(v5->var0 + 44))(v5, v6);
        v6 = *v4;
        if (result)
        {
LABEL_8:
          NextUniqueID = OZChannelBase::getNextUniqueID(result);
          OZChannelBase::setID(v6, NextUniqueID);
          v9 = (*v4)->var3;
          v11 = &v10;
          result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v3, &v10);
          LODWORD(result->var4.var0) = v9;
          v6 = *v4;
        }

        if (v6)
        {
LABEL_10:
          if (result)
          {
            result = enumerateIDs(v3, result);
          }
        }

        ++v4;
      }

      while (v4 != var0[1]);
    }
  }

  return result;
}

void *updateReferenceIDsRecursive(void *result, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (v2)
  {
    v3 = *v2;
    if (*v2 != v2[1])
    {
      v4 = result;
      v5 = result + 1;
      do
      {
        result = *v3;
        if (*v3)
        {
          if (v6)
          {
            v7 = v6;
            ObjectManipulator = OZChannelBase::getObjectManipulator(v6);
            if (ObjectManipulator && (*(*ObjectManipulator + 56))(ObjectManipulator, 0))
            {
              (*(v7->var0 + 12))(v7, 0, 0);
              v9 = 1;
            }

            else
            {
              v9 = 0;
            }

            ObjectID = OZChanObjectManipRef::getObjectID(v7);
            v12 = *v5;
            if (*v5)
            {
              v13 = v5;
              do
              {
                v14 = *(v12 + 28);
                v15 = v14 >= ObjectID;
                v16 = v14 < ObjectID;
                if (v15)
                {
                  v13 = v12;
                }

                v12 = *(v12 + 8 * v16);
              }

              while (v12);
              if (v13 != v5 && ObjectID >= *(v13 + 7))
              {
                LODWORD(v11) = *(v13 + 8);
                (*(v7->var0 + 89))(v7, MEMORY[0x277CC08F0], 0, v11);
              }
            }

            if (v9)
            {
              (*(v7->var0 + 12))(v7, 1, 0);
            }
          }

          result = *v3;
          if (*v3)
          {
            if (result)
            {
              v17 = result;
              if (v18)
              {
                v19 = OZChannelBase::getObjectManipulator(v18);
                result = (*(*v19 + 360))(v19, v4);
              }

              else
              {
                result = updateReferenceIDsRecursive(v4, v17);
              }
            }
          }
        }

        ++v3;
      }

      while (v3 != v2[1]);
    }
  }

  return result;
}

void *OZChannelObjectRoot::updateReferenceIDs(void *result, void *a2)
{
  if (a2)
  {
    return updateReferenceIDsRecursive(a2, result);
  }

  return result;
}

void *OZChannelObjectRoot::findNodeRefDescendant(OZChannelObjectRoot *this, OZSceneNode *a2, OZChannelFolder *a3)
{
  v3 = *(a3 + 14);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  if (a2)
  {
    v8 = a2 + 16;
  }

  else
  {
    v8 = 0;
  }

  while (1)
  {
    v9 = *v4;
    if (*v4)
    {
      if (!v10)
      {
        goto LABEL_18;
      }

      v11 = v10;
      if ((*(*v10 + 872))(v10, v8))
      {
        return v11;
      }

      v9 = *v4;
      if (*v4)
      {
LABEL_18:
        if (v12)
        {
          NodeRefDescendant = OZChannelObjectRoot::findNodeRefDescendant(this, a2, v12);
          if (NodeRefDescendant)
          {
            return NodeRefDescendant;
          }
        }
      }
    }

    if (++v4 == v5)
    {
      return 0;
    }
  }
}

OZChannelBehavior *OZChannelObjectRoot::rootUndoWillReplace(OZChannelObjectRoot *this, OZChannelBase *a2)
{
  result = OZChannelBehavior::GetSceneNodeFromChan(a2, a2);
  if (result)
  {
    v3 = *(*result + 888);

    return v3();
  }

  return result;
}

OZChannelBehavior *OZChannelObjectRoot::rootUndoDidReplace(OZChannelObjectRoot *this, OZChannelBase *a2)
{
  result = OZChannelBehavior::GetSceneNodeFromChan(a2, a2);
  if (result)
  {
    v3 = *(*result + 896);

    return v3();
  }

  return result;
}

void OZChannelObjectRoot::willModifyChannel(OZChannelObjectRoot *this, OZChannelBase *a2, int a3)
{
  v5 = (*(*this + 840))(this);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*v5 + 264))(v5);
    if (v7)
    {
      v8 = v7;
      if ((*(v7 + 1576) & 1) == 0)
      {
        (*(*v6 + 424))(v6);

        OZScene::willModifyChannel(v8, a2, a3);
      }
    }
  }
}

uint64_t OZChannelObjectRoot::checkSolo(OZChannelBase *this)
{
  result = OZChannelBase::getObjectManipulator(this);
  if (result)
  {
    v2 = (*(*result + 264))(result);
    return v2 && OZScene::testFlag(v2, 32);
  }

  return result;
}

uint64_t OZChannelObjectRoot::shouldAddKeypointAt0(OZChannelObjectRoot *this, const CMTime *a2)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  time1 = *(this + 152);
  v8 = *a2;
  v5 = CMTimeCompare(&time1, &v8);
  result = 0;
  if (v5 && ObjectManipulator)
  {
    result = (*(*ObjectManipulator + 264))(ObjectManipulator);
    if (result)
    {
      v7 = (*(*ObjectManipulator + 264))(ObjectManipulator);
      return !OZScene::testFlag(v7, 128);
    }
  }

  return result;
}

uint64_t OZChannelObjectRoot::isChannelAffectedBySelectedBehaviors(OZChannelObjectRoot *this, OZChannelBase *a2)
{
  v5 = &v5;
  v6 = &v5;
  v7 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(a2, &v5, 1);
  v2 = 0;
  v3 = v6;
  if (v7 && v6 != &v5)
  {
    do
    {
      v2 = (*(*v3[2] + 480))(v3[2]);
      v3 = v3[1];
    }

    while (!((v3 == &v5) | v2 & 1));
  }

  std::__list_imp<unsigned int>::clear(&v5);
  return v2;
}

void sub_260120768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

BOOL OZChannelObjectRoot::isObjectSelected(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  {
    v5 = (*(v4 + 232))(v3);
    v6 = (*(*v5 + 640))(v5);

    return OZChannelBase::testFlag(v6, 1);
  }

  else
  {

    return OZChannelObjectRootBase::isObjectSelected(this);
  }
}

uint64_t OZChannelObjectRoot::getDefaultParameterColorSpaceID(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (!ObjectManipulator)
  {
    return 3;
  }

  v2 = ObjectManipulator;
  if (!(*(*ObjectManipulator + 264))(ObjectManipulator))
  {
    return 3;
  }

  v3 = (*(*v2 + 264))(v2);
  OZScene::getComputedWorkingGamut(v3);

  return PCGetUIColorSpaceID();
}

uint64_t OZChannelObjectRoot::getWorkingGamut(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (!ObjectManipulator)
  {
    return 0;
  }

  v2 = ObjectManipulator;
  if (!(*(*ObjectManipulator + 264))(ObjectManipulator))
  {
    return 0;
  }

  v3 = (*(*v2 + 264))(v2);

  return OZScene::getComputedWorkingGamut(v3);
}

void OZChannelObjectRoot::getFrameDuration(OZChannelBase *this@<X0>, __n128 *a2@<X8>)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (ObjectManipulator && (v4 = ObjectManipulator, (*(*ObjectManipulator + 264))(ObjectManipulator)))
  {
    v5 = ((*(*v4 + 264))(v4) + 336);

    OZSceneSettings::getFrameDuration(v5, a2);
  }

  else
  {

    CMTimeMake(a2, 1, 30);
  }
}

double OZChannelObjectRoot::adjustToFrameDuration(OZChannelObjectRoot *this, const CMTime *a2)
{
  result = OZChannelObjectRootBase::adjustToFrameDuration(this, a2);
  if (*(this + 27))
  {
    operator new();
  }

  return result;
}

void OZChannelObjectRoot::getCurrentTime(OZChannelBase *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x277CC08F0];
  *a3 = *MEMORY[0x277CC08F0];
  *(a3 + 16) = *(v6 + 16);
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (ObjectManipulator)
  {
    v8 = ObjectManipulator;
    if ((*(*ObjectManipulator + 264))(ObjectManipulator))
    {
      v9 = (*(*v8 + 264))(v8);
      CurrentTime = OZScene::getCurrentTime(v9, &v11);
      if (a2)
      {
        *a3 = v11;
        *(a3 + 16) = v12;
      }

      else
      {
        (*(this->var0 + 41))(this, &v11, CurrentTime);
      }
    }
  }
}

__n128 OZChannelObjectRoot::getGlobalTimeRange@<Q0>(OZChannelBase *this@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CC08F0];
  v4 = *MEMORY[0x277CC08F0];
  *a2 = *MEMORY[0x277CC08F0];
  v5 = *(v3 + 16);
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 40) = v5;
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (ObjectManipulator)
  {
    v8 = ObjectManipulator;
    if ((*(*ObjectManipulator + 264))(ObjectManipulator))
    {
      v9 = (*(*v8 + 264))(v8);
      if (v9 + 1352 != a2)
      {
        v10 = *(v9 + 1352);
        *(a2 + 16) = *(v9 + 1368);
        *a2 = v10;
        result = *(v9 + 1376);
        *(a2 + 40) = *(v9 + 1392);
        *(a2 + 24) = result;
      }
    }
  }

  return result;
}

uint64_t OZChannelObjectRoot::wasChannelModified(OZChannelBase *this, OZChannelBase *a2, BOOL *a3)
{
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  v6 = ObjectManipulator;
  if (!ObjectManipulator)
  {
    goto LABEL_25;
  }

  if (!(*(*ObjectManipulator + 264))(ObjectManipulator))
  {
    goto LABEL_25;
  }

  v7 = *((*(*v6 + 264))(v6) + 1584);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = *(v7 + 168);
  v9 = (v7 + 296);
  if (v8)
  {
    v10 = (v8 + 48);
  }

  else
  {
    v10 = v9;
  }

  if (v8 && OZNotificationManager::wasChannelModified(v8, a2))
  {
    v11 = 1;
    goto LABEL_26;
  }

  if (!OZChannel::isChannelAffectedByBehaviors(a2, 1))
  {
    goto LABEL_25;
  }

  std::__list_imp<unsigned int>::clear(&v23);
  OZBehavior::GetBehaviorsAffectingChannel(a2, &v23, 1);
  v12 = (*(*v6 + 264))(v6) + 920;
  do
  {
    v13 = v12;
    v12 = *(v12 + 48);
  }

  while (v12);
  v14 = *v10;
  if (v10[1] == *v10)
  {
LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    Channel = OZChannelRef::getChannel((v14 + 24 * v15), v13);
    ChannelRootBase = OZChannelBase::getChannelRootBase(Channel);
    v19 = OZChannelBase::getObjectManipulator(ChannelRootBase);
    if (v19)
    {
      v21 = v24;
      if (v20)
      {
        if (v24 != &v23)
        {
          while (v21[2] != v20)
          {
            v21 = v21[1];
            if (v21 == &v23)
            {
              goto LABEL_24;
            }
          }

          if (v21 != &v23)
          {
            break;
          }
        }
      }
    }

LABEL_24:
    v14 = *v10;
    v15 = ++v16;
    if (0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3) <= v16)
    {
      goto LABEL_25;
    }
  }

  v11 = 1;
  if (a3)
  {
    *a3 = 1;
  }

LABEL_26:
  std::__list_imp<unsigned int>::clear(&v23);
  return v11;
}

void sub_260121068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelObjectRoot::writeBody(OZChannelObjectRoot *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelObjectRootScope);
  v10 = *(this + 27);
  if (v10)
  {
    (*(*v10 + 16))(*(this + 27), a2, a3);
    (*(*v10 + 24))(v10, a2, a3, 1, 1);
    (*(*a2 + 24))(a2);
  }

  PCSerializerWriteStream::popScope(a2);

  return OZChannelObjectRootBase::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZChannelObjectRoot::serializeSelfOnly(OZChannelObjectRoot *this, PCSerializerWriteStream *a2, uint64_t a3)
{
  OZChannelObjectRootBase::serializeSelfOnly(this, a2);
  PCSerializerWriteStream::pushScope(a2, &OZChannelObjectRootScope);
  v6 = *(this + 27);
  if (v6)
  {
    (*(*v6 + 16))(v6, a2, a3);
    (*(*v6 + 24))(v6, a2, a3, 1, 1);
    (*(*a2 + 24))(a2);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelObjectRoot::parseBegin(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  OZChannelObjectRootBase::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelObjectRootScope);
  return 1;
}

uint64_t non-virtual thunk toOZChannelObjectRoot::parseBegin(OZChannelObjectRoot *this, PCSerializerReadStream *a2)
{
  OZChannelObjectRootBase::parseBegin((this - 16), a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelObjectRootScope);
  return 1;
}

uint64_t OZChannelObjectRoot::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannelObjectRootBase::parseElement(this, a2, a3);
  if (*(a3 + 2) == 72)
  {
    v6 = this[27];
    if (!v6)
    {
      operator new();
    }

    v8 = *(v6 + 2);
    v7 = (v6 + 16);
    std::__tree<OZGuide>::destroy((v7 - 1), v8);
    *v7 = 0;
    v7[1] = 0;
    *(v7 - 1) = v7;
    PCSerializerReadStream::pushHandler(a2, this[27]);
  }

  return 1;
}

void OZChannelObjectRoot_Factory::OZChannelObjectRoot_Factory(OZChannelObjectRoot_Factory *this)
{
  v3 = xmmword_2608485A0;
  v4 = xmmword_260851370;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28728A9F8;
  *(this + 16) = &unk_28728AAC8;
}

OZChannelBase *OZMaterialSubstanceLayerSequenceFolder::init(OZMaterialSubstanceLayerSequenceFolder *this)
{
  OZChannelBase::enable((this + 1136), 0, 0);
  OZChannelBase::enable((this + 128), 0, 0);
  OZChannelBase::resetFlag((this + 1136), 16, 0);
  OZChannelBase::setFlag((this + 1136), 0x100000000, 0);
  OZChannelBase::saveStateAsDefault((this + 1136));
  OZChannelBase::resetFlag((this + 128), 16, 0);
  OZChannelBase::setFlag((this + 128), 0x100000000, 0);

  return OZChannelFolder::saveStateAsDefault((this + 128));
}

void OZMaterialSubstanceLayerSequenceFolder::OZMaterialSubstanceLayerSequenceFolder(OZMaterialSubstanceLayerSequenceFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZMaterialLayerSequenceFolder::OZMaterialLayerSequenceFolder(this, a2, a3, a4);
  *v5 = &unk_28728AB20;
  v5[2] = &unk_28728AE28;
  PCURL::PCURL(&v6, @"Material Plastic Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 128), 0.8, 0.8, 0.8, &v6, this, 1u, 2u, 5u);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Material Generic Alpha");
  OZChannelPercent::OZChannelPercent((this + 1136), 1.0, &v6, this, 2u, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Map Position Label");
  OZChannelPosition::OZChannelPosition((this + 1288), 0.0, 0.0, &v6, this, 3u, 2u, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Map Scale Label");
  OZChannelScale::OZChannelScale((this + 1992), 1.0, 1.0, &v6, this, 4u, 2u, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Map Rotation Label");
  OZChannelRotation3D::OZChannelRotation3D((this + 2432), 0.0, 0.0, 0.0, &v6, this, 5u, 2u, 4u, 0, 0);
  PCString::~PCString(&v6);
  OZMaterialSubstanceLayerSequenceFolder::init(this);
}

void sub_2601219E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 2432));
  OZChannel2D::~OZChannel2D((v10 + 1992));
  OZChannelPosition::~OZChannelPosition((v10 + 1288));
  OZChannelPercent::~OZChannelPercent((v10 + 1136));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v10 + 128));
  OZMaterialLayerSequenceFolder::~OZMaterialLayerSequenceFolder(v10);
  _Unwind_Resume(a1);
}

void OZMaterialSubstanceLayerSequenceFolder::OZMaterialSubstanceLayerSequenceFolder(OZMaterialSubstanceLayerSequenceFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZMaterialSubstanceLayerSequenceFolder_Factory::getInstance(this);
  OZMaterialLayerSequenceFolder::OZMaterialLayerSequenceFolder(this, Instance, a2, a3, a4, a5);
  *this = &unk_28728AB20;
  *(this + 2) = &unk_28728AE28;
  PCURL::PCURL(&v11, @"Material Plastic Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 128), 0.8, 0.8, 0.8, &v11, this, 1u, 2u, 5u);
  PCString::~PCString(&v11);
  PCURL::PCURL(&v11, @"Material Generic Alpha");
  OZChannelPercent::OZChannelPercent((this + 1136), 1.0, &v11, this, 2u, 2u, 0, 0);
  PCString::~PCString(&v11);
  PCURL::PCURL(&v11, @"Channel Map Position Label");
  OZChannelPosition::OZChannelPosition((this + 1288), 0.0, 0.0, &v11, this, 3u, 2u, 2u, 0, 0);
  PCString::~PCString(&v11);
  PCURL::PCURL(&v11, @"Channel Map Scale Label");
  OZChannelScale::OZChannelScale((this + 1992), 1.0, 1.0, &v11, this, 4u, 2u, 2u, 0, 0);
  PCString::~PCString(&v11);
  PCURL::PCURL(&v11, @"Channel Map Rotation Label");
  OZChannelRotation3D::OZChannelRotation3D((this + 2432), 0.0, 0.0, 0.0, &v11, this, 5u, 2u, 4u, 0, 0);
  PCString::~PCString(&v11);
  OZMaterialSubstanceLayerSequenceFolder::init(this);
}

void sub_260121CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 2432));
  OZChannel2D::~OZChannel2D((v10 + 1992));
  OZChannelPosition::~OZChannelPosition((v10 + 1288));
  OZChannelPercent::~OZChannelPercent((v10 + 1136));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v10 + 128));
  OZMaterialLayerSequenceFolder::~OZMaterialLayerSequenceFolder(v10);
  _Unwind_Resume(a1);
}

uint64_t OZMaterialSubstanceLayerSequenceFolder_Factory::getInstance(OZMaterialSubstanceLayerSequenceFolder_Factory *this)
{
  if (atomic_load_explicit(&OZMaterialSubstanceLayerSequenceFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMaterialSubstanceLayerSequenceFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMaterialSubstanceLayerSequenceFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMaterialSubstanceLayerSequenceFolder_Factory::_instance;
}

void OZMaterialSubstanceLayerSequenceFolder::OZMaterialSubstanceLayerSequenceFolder(OZMaterialSubstanceLayerSequenceFolder *this, const OZMaterialSubstanceLayerSequenceFolder *a2, OZChannelFolder *a3)
{
  OZMaterialLayerSequenceFolder::OZMaterialLayerSequenceFolder(this, a2, a3);
  *v5 = &unk_28728AB20;
  v5[2] = &unk_28728AE28;
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((v5 + 16), (a2 + 128), this);
  OZChannelPercent::OZChannelPercent((this + 1136), (a2 + 1136), this);
  OZChannelPosition::OZChannelPosition((this + 1288), (a2 + 1288), this);
  OZChannelScale::OZChannelScale((this + 1992), (a2 + 1992), this);
  OZChannelRotation3D::OZChannelRotation3D((this + 2432), (a2 + 2432), this);
}

void sub_260121EC0(_Unwind_Exception *a1)
{
  OZChannel2D::~OZChannel2D((v1 + 1992));
  OZChannelPosition::~OZChannelPosition((v1 + 1288));
  OZChannelPercent::~OZChannelPercent((v1 + 1136));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v1 + 128));
  OZMaterialLayerSequenceFolder::~OZMaterialLayerSequenceFolder(v1);
  _Unwind_Resume(a1);
}

void OZMaterialSubstanceLayerSequenceFolder::~OZMaterialSubstanceLayerSequenceFolder(OZMaterialSubstanceLayerSequenceFolder *this)
{
  OZMaterialSubstanceLayerSequenceFolder::~OZMaterialSubstanceLayerSequenceFolder(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_28728AB20;
  *(this + 2) = &unk_28728AE28;
  OZChannelRotation3D::~OZChannelRotation3D((this + 2432));
  OZChannel2D::~OZChannel2D((this + 1992));
  OZChannelPosition::~OZChannelPosition((this + 1288));
  OZChannelPercent::~OZChannelPercent((this + 1136));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 128));

  OZMaterialLayerSequenceFolder::~OZMaterialLayerSequenceFolder(this);
}

void OZMaterialSubstanceLayerSequenceFolder::getImagePosition(uint64_t a1, const CMTime *a2, void *a3, double a4)
{
  OZChannel::getValueAsDouble((a1 + 1424), a2, a4);
  v9 = v8;
  OZChannel::getValueAsDouble((a1 + 1576), a2, a4);
  *a3 = v9;
  a3[1] = v10;
}

void OZMaterialSubstanceLayerSequenceFolder::getImageScale(OZChannel *a1, const CMTime *a2, void *a3, double a4)
{
  if (a3)
  {
    OZChannel::getValueAsDouble(a1 + 14, a2, a4);
    v9 = v8;
    OZChannel::getValueAsDouble(a1 + 15, a2, a4);
    *a3 = v9;
    a3[1] = v10;
  }
}

void OZMaterialSubstanceLayerSequenceFolder::getImageRotation(uint64_t a1, const CMTime *a2, void *a3, double a4)
{
  OZChannel::getValueAsDouble((a1 + 2568), a2, a4);
  *a3 = v8;
  OZChannel::getValueAsDouble((a1 + 2720), a2, a4);
  a3[1] = v9;
  OZChannel::getValueAsDouble((a1 + 2872), a2, a4);
  a3[2] = v10;
}

void non-virtual thunk toOZMaterialSubstanceLayerSequenceFolder::~OZMaterialSubstanceLayerSequenceFolder(OZMaterialSubstanceLayerSequenceFolder *this)
{
  OZMaterialSubstanceLayerSequenceFolder::~OZMaterialSubstanceLayerSequenceFolder((this - 16));
}

{
  OZMaterialSubstanceLayerSequenceFolder::~OZMaterialSubstanceLayerSequenceFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZMaterialSubstanceLayerSequenceFolder_Factory::OZMaterialSubstanceLayerSequenceFolder_Factory(OZMaterialSubstanceLayerSequenceFolder_Factory *this)
{
  v3 = xmmword_260347AC0;
  v4 = xmmword_2608513C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28728AE98;
  *(this + 16) = &unk_28728AF68;
}

void OZTimeMarker::OZTimeMarker(OZTimeMarker *this)
{
  *this = &unk_28728AFC0;
  v2 = MEMORY[0x277CC08F0];
  v3 = *MEMORY[0x277CC08F0];
  *(this + 3) = *(MEMORY[0x277CC08F0] + 16);
  *(this + 8) = v3;
  *(this + 2) = *v2;
  *(this + 6) = *(v2 + 16);
  PCSharedCount::PCSharedCount(this + 7);
  PCSharedCount::PCSharedCount(this + 8);
  *(this + 9) = 1;
}

void OZTimeMarker::OZTimeMarker(OZTimeMarker *this, const OZTimeMarker *a2)
{
  *this = &unk_28728AFC0;
  v4 = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = v4;
  v5 = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 2) = v5;
  PCString::PCString(this + 7, a2 + 7);
  PCString::PCString(this + 8, a2 + 8);
  *(this + 9) = *(a2 + 9);
}

void OZTimeMarker::~OZTimeMarker(PCString *this)
{
  this->var0 = &unk_28728AFC0;
  v1 = this + 7;
  PCString::~PCString(this + 8);
  PCString::~PCString(v1);
}

{
  this->var0 = &unk_28728AFC0;
  v1 = this + 7;
  PCString::~PCString(this + 8);
  PCString::~PCString(v1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZTimeMarker::operator<(uint64_t a1, uint64_t a2)
{
  time1 = *(a1 + 8);
  v3 = *(a2 + 8);
  return CMTimeCompare(&time1, &v3) >> 31;
}

BOOL OZTimeMarker::operator==(uint64_t a1, uint64_t a2)
{
  time1 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (CMTimeCompare(&time1, &v5))
  {
    return 0;
  }

  time1 = *(a1 + 32);
  v5 = *(a2 + 32);
  return !CMTimeCompare(&time1, &v5) && !PCString::compare((a1 + 56), (a2 + 56)) && !PCString::compare((a1 + 64), (a2 + 64)) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76);
}

PCSharedCount *OZTimeMarker::getLabel(OZTimeMarker *this)
{
  v1 = *(this + 19);
  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        {
          PCSharedCount::PCSharedCount(&OZTimeMarker::getLabel(void)const::sBuildOutOptionalLabel);
          __cxa_atexit(PCString::~PCString, &OZTimeMarker::getLabel(void)const::sBuildOutOptionalLabel, &dword_25F8F0000);
        }

        v2 = &OZTimeMarker::getLabel(void)const::sBuildOutOptionalLabel;
        if (PCString::empty(&OZTimeMarker::getLabel(void)const::sBuildOutOptionalLabel))
        {
          PCURL::PCURL(&v4, @"Marker Build Out Optional");
          PCString::set(&OZTimeMarker::getLabel(void)const::sBuildOutOptionalLabel, &v4);
          goto LABEL_31;
        }
      }

      else
      {
        {
          PCSharedCount::PCSharedCount(&OZTimeMarker::getLabel(void)const::sLoopEndLabel);
          __cxa_atexit(PCString::~PCString, &OZTimeMarker::getLabel(void)const::sLoopEndLabel, &dword_25F8F0000);
        }

        v2 = &OZTimeMarker::getLabel(void)const::sLoopEndLabel;
        if (PCString::empty(&OZTimeMarker::getLabel(void)const::sLoopEndLabel))
        {
          PCURL::PCURL(&v4, @"Marker Project Loop End");
          PCString::set(&OZTimeMarker::getLabel(void)const::sLoopEndLabel, &v4);
LABEL_31:
          PCString::~PCString(&v4);
          return v2;
        }
      }

      return v2;
    }

    if (v1 == 8)
    {
      {
        PCSharedCount::PCSharedCount(&OZTimeMarker::getLabel(void)const::sPosterFrameLabel);
        __cxa_atexit(PCString::~PCString, &OZTimeMarker::getLabel(void)const::sPosterFrameLabel, &dword_25F8F0000);
      }

      v2 = &OZTimeMarker::getLabel(void)const::sPosterFrameLabel;
      if (PCString::empty(&OZTimeMarker::getLabel(void)const::sPosterFrameLabel))
      {
        PCURL::PCURL(&v4, @"Marker Project Poster Frame");
        PCString::set(&OZTimeMarker::getLabel(void)const::sPosterFrameLabel, &v4);
        goto LABEL_31;
      }

      return v2;
    }

    if (v1 == 9)
    {
      {
        PCSharedCount::PCSharedCount(&OZTimeMarker::getLabel(void)const::sTextEditLabel);
        __cxa_atexit(PCString::~PCString, &OZTimeMarker::getLabel(void)const::sTextEditLabel, &dword_25F8F0000);
      }

      v2 = &OZTimeMarker::getLabel(void)const::sTextEditLabel;
      if (PCString::empty(&OZTimeMarker::getLabel(void)const::sTextEditLabel))
      {
        PCURL::PCURL(&v4, @"Marker Text Edit");
        PCString::set(&OZTimeMarker::getLabel(void)const::sTextEditLabel, &v4);
        goto LABEL_31;
      }

      return v2;
    }

    return (this + 56);
  }

  if (v1 == 3)
  {
    {
      PCSharedCount::PCSharedCount(&OZTimeMarker::getLabel(void)const::sBuildInMandatoryLabel);
      __cxa_atexit(PCString::~PCString, &OZTimeMarker::getLabel(void)const::sBuildInMandatoryLabel, &dword_25F8F0000);
    }

    v2 = &OZTimeMarker::getLabel(void)const::sBuildInMandatoryLabel;
    if (PCString::empty(&OZTimeMarker::getLabel(void)const::sBuildInMandatoryLabel))
    {
      PCURL::PCURL(&v4, @"Marker Build In Mandatory");
      PCString::set(&OZTimeMarker::getLabel(void)const::sBuildInMandatoryLabel, &v4);
      goto LABEL_31;
    }

    return v2;
  }

  if (v1 == 4)
  {
    {
      PCSharedCount::PCSharedCount(&OZTimeMarker::getLabel(void)const::sBuildInOptionalLabel);
      __cxa_atexit(PCString::~PCString, &OZTimeMarker::getLabel(void)const::sBuildInOptionalLabel, &dword_25F8F0000);
    }

    v2 = &OZTimeMarker::getLabel(void)const::sBuildInOptionalLabel;
    if (PCString::empty(&OZTimeMarker::getLabel(void)const::sBuildInOptionalLabel))
    {
      PCURL::PCURL(&v4, @"Marker Build In Optional");
      PCString::set(&OZTimeMarker::getLabel(void)const::sBuildInOptionalLabel, &v4);
      goto LABEL_31;
    }

    return v2;
  }

  if (v1 != 5)
  {
    return (this + 56);
  }

  {
    PCSharedCount::PCSharedCount(&OZTimeMarker::getLabel(void)const::sBuildOutMandatoryLabel);
    __cxa_atexit(PCString::~PCString, &OZTimeMarker::getLabel(void)const::sBuildOutMandatoryLabel, &dword_25F8F0000);
  }

  v2 = &OZTimeMarker::getLabel(void)const::sBuildOutMandatoryLabel;
  if (PCString::empty(&OZTimeMarker::getLabel(void)const::sBuildOutMandatoryLabel))
  {
    PCURL::PCURL(&v4, @"Marker Build Out Mandatory");
    PCString::set(&OZTimeMarker::getLabel(void)const::sBuildOutMandatoryLabel, &v4);
    goto LABEL_31;
  }

  return v2;
}

uint64_t OZTimeMarker::writeHeader(OZTimeMarker *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZTimeMarkerScope);
  (*(*a2 + 16))(a2, 73);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZTimeMarker::writeBody(OZTimeMarker *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZTimeMarkerScope);
  time1 = *(this + 8);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 112))(a2, &time1);
  (*(*a2 + 24))(a2);
  time1 = *(this + 32);
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    time1 = *(this + 8);
    time2 = *(this + 32);
    v4 = PC_CMTimeSaferAdd(&time1, &time2, v10);
    (*(*a2 + 16))(a2, 2, v4);
    (*(*a2 + 112))(a2, v10);
    (*(*a2 + 24))(a2);
  }

  if (!PCString::empty(this + 7) && !*(this + 19))
  {
    PCString::PCString(&v9, this + 7);
    (*(*a2 + 16))(a2, 3);
    (*(*a2 + 104))(a2, &v9);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v9);
  }

  if (!PCString::empty(this + 8))
  {
    PCString::PCString(&v8, this + 8);
    (*(*a2 + 16))(a2, 4);
    (*(*a2 + 104))(a2, &v8);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v8);
  }

  v5 = *(this + 18);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 48))(a2, v5);
  (*(*a2 + 24))(a2);
  v6 = *(this + 19);
  (*(*a2 + 16))(a2, 6);
  (*(*a2 + 48))(a2, v6);
  (*(*a2 + 24))(a2);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZTimeMarker::parseElement(OZTimeMarker *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v4 = *(a3 + 2);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        (*(*a3 + 16))(a3, this + 64);
        break;
      case 5:
        LODWORD(v16.value) = 0;
        (*(*a3 + 24))(a3, &v16);
        *(this + 18) = v16.value;
        break;
      case 6:
        LODWORD(v15.value) = 0;
        (*(*a3 + 24))(a3, &v15);
        value = v15.value;
        *(this + 19) = v15.value;
        if (value == 1)
        {
          *(this + 19) = 0;
          PCURL::PCURL(&v16, @"Marker DVD Menu Loop Label");
          PCString::set(this + 7, &v16);
          PCString::~PCString(&v16);
          value = *(this + 19);
        }

        if (value == 2)
        {
          *(this + 19) = 0;
          PCURL::PCURL(&v16, @"Marker DVD Alpha Transition Label");
          PCString::set(this + 7, &v16);
          PCString::~PCString(&v16);
        }

        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        if (*(a2 + 26) < 5u)
        {
          v14.value = 0;
          (*(*a3 + 64))(a3, &v14);
          v15 = *(a2 + 112);
          operator*(&v15, &v16, *&v14.value);
        }

        else
        {
          (*(*a3 + 88))(a3, &v16);
        }

        *(this + 8) = v16;
        break;
      case 2:
        if (*(a2 + 26) < 5u)
        {
          v12 = 0.0;
          (*(*a3 + 64))(a3, &v12);
          v10 = *(a2 + 112);
          operator*(&v10, &v11, v12 + -1.0);
          *&v9.value = *(a2 + 7);
          v9.epoch = *(a2 + 16);
          v16 = v11;
          v15 = *(this + 8);
          PC_CMTimeSaferSubtract(&v16, &v15, &v13);
          v16 = v13;
          v15 = v9;
          PC_CMTimeSaferAdd(&v16, &v15, &v14);
          *(this + 2) = *&v14.value;
          epoch = v14.epoch;
        }

        else
        {
          (*(*a3 + 88))(a3, &v14);
          v15 = *(this + 8);
          v16 = v14;
          PC_CMTimeSaferSubtract(&v16, &v15, &v13);
          *(this + 2) = *&v13.value;
          epoch = v13.epoch;
        }

        *(this + 6) = epoch;
        break;
      case 3:
        (*(*a3 + 16))(a3, this + 56);
        break;
    }
  }

  return 0;
}

void OZTimeMarkerSet::OZTimeMarkerSet(OZTimeMarkerSet *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_28728B018;
  *(this + 1) = this + 16;
}

void *std::set<OZTimeMarker>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<OZTimeMarker>::insert[abi:ne200100]<std::__tree_const_iterator<OZTimeMarker,std::__tree_node<OZTimeMarker,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

char *OZTimeMarkerSet::findNextMarker(OZTimeMarkerSet *this, CMTime *a2)
{
  v2 = *(this + 1);
  v3 = this + 16;
  v8 = *a2;
  if (v2 != this + 16)
  {
    while (!ozTimeLessThanOffset::operator()(&v8, (v2 + 32)))
    {
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
      if (v5 == v3)
      {
        return v3;
      }
    }
  }

  return v2;
}

uint64_t OZTimeMarkerSet::writeHeader(OZTimeMarkerSet *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZTimeMarkerSetScope);
  (*(*a2 + 16))(a2, 72);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZTimeMarkerSet::writeBody(OZTimeMarkerSet *this, PCSerializerWriteStream *a2, uint64_t a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZTimeMarkerSetScope);
  v6 = *(this + 1);
  if (v6 != (this + 16))
  {
    do
    {
      (*(*(v6 + 4) + 16))(v6 + 4, a2, a3);
      (*(*(v6 + 4) + 24))(v6 + 4, a2, a3, 1, 1);
      (*(*a2 + 24))(a2);
      v7 = *(v6 + 1);
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
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != (this + 16));
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZTimeMarkerSet::parseEnd(OZTimeMarkerSet *this, PCSerializerReadStream *a2)
{
  if (OZTimeMarkerSet::_reading)
  {
    std::__tree<OZTimeMarker>::__emplace_unique_key_args<OZTimeMarker,OZTimeMarker const&>(this + 8, OZTimeMarkerSet::_reading);
    if (OZTimeMarkerSet::_reading)
    {
      (*(*OZTimeMarkerSet::_reading + 8))(OZTimeMarkerSet::_reading);
    }
  }

  OZTimeMarkerSet::_reading = 0;
  return 0;
}

uint64_t OZTimeMarkerSet::parseElement(OZTimeMarkerSet *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 73)
  {
    if (!OZTimeMarkerSet::_reading)
    {
      operator new();
    }

    std::__tree<OZTimeMarker>::__emplace_unique_key_args<OZTimeMarker,OZTimeMarker const&>(this + 8, OZTimeMarkerSet::_reading);
    PCSerializerReadStream::pushHandler(a2, OZTimeMarkerSet::_reading);
  }

  return 0;
}

void OZTimeMarkerSet::~OZTimeMarkerSet(OZTimeMarkerSet *this)
{
  std::__tree<OZGuide>::destroy(this + 8, *(this + 2));
}

{
  std::__tree<OZGuide>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x2666E9F00);
}

uint64_t std::set<OZTimeMarker>::insert[abi:ne200100]<std::__tree_const_iterator<OZTimeMarker,std::__tree_node<OZTimeMarker,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<OZTimeMarker>::__emplace_hint_unique_key_args<OZTimeMarker,OZTimeMarker const&>(v5, (v5 + 8), (v4 + 4));
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
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<OZTimeMarker>::__emplace_hint_unique_key_args<OZTimeMarker,OZTimeMarker const&>(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v3 = *std::__tree<OZTimeMarker>::__find_equal<OZTimeMarker>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<OZTimeMarker>::__construct_node<OZTimeMarker const&>();
  }

  return v3;
}

uint64_t *std::__tree<OZTimeMarker>::__find_equal<OZTimeMarker>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2)
  {
    time1 = *(a5 + 8);
    v20 = *(a2 + 5);
    if ((CMTimeCompare(&time1, &v20) & 0x80000000) == 0)
    {
      time1 = *(a2 + 5);
      v20 = *(a5 + 8);
      if ((CMTimeCompare(&time1, &v20) & 0x80000000) == 0)
      {
        *a3 = a2;
        *a4 = a2;
        return a4;
      }

      a4 = a2 + 1;
      v13 = a2[1];
      if (v13)
      {
        v14 = a2[1];
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v18 = a2;
        do
        {
          v15 = v18[2];
          v17 = *v15 == v18;
          v18 = v15;
        }

        while (!v17);
      }

      if (v15 == v9)
      {
        goto LABEL_27;
      }

      time1 = *(a5 + 8);
      v20 = *(v15 + 5);
      if (CMTimeCompare(&time1, &v20) < 0)
      {
        v13 = *a4;
LABEL_27:
        if (v13)
        {
          *a3 = v15;
          return v15;
        }

        else
        {
          *a3 = a2;
        }

        return a4;
      }

      return std::__tree<OZTimeMarker>::__find_equal<OZTimeMarker>(a1, a3, a5);
    }
  }

  if (*a1 == a2)
  {
    v12 = a2;
  }

  else
  {
    v11 = *a2;
    if (*a2)
    {
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v16 = a2;
      do
      {
        v12 = v16[2];
        v17 = *v12 == v16;
        v16 = v12;
      }

      while (v17);
    }

    time1 = *(v12 + 5);
    v20 = *(a5 + 8);
    if ((CMTimeCompare(&time1, &v20) & 0x80000000) == 0)
    {
      return std::__tree<OZTimeMarker>::__find_equal<OZTimeMarker>(a1, a3, a5);
    }
  }

  if (*a2)
  {
    *a3 = v12;
    return v12 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

BOOL ozTimeLessThanOffset::operator()(CMTime *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  time1 = *a1;
  if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  time1 = *a1;
  return CMTimeCompare(&time1, &v5) != 0;
}

void OZRenderState::OZRenderState(OZRenderState *this)
{
  v2 = *MEMORY[0x277CC08F0];
  this->var0.var3 = *(MEMORY[0x277CC08F0] + 16);
  *&this->var0.var0 = v2;
  __asm { FMOV            V0.2D, #1.0 }

  *&this->var1 = _Q0;
  this->var3 = 1.0;
  this->var4 = 0;
  this->var5 = 0;
  this->var6 = 0;
  this->var7.var0[3][3] = 1.0;
  this->var7.var0[2][2] = 1.0;
  this->var7.var0[1][1] = 1.0;
  this->var7.var0[0][0] = 1.0;
  *&this->var7.var0[0][1] = 0u;
  *&this->var7.var0[0][3] = 0u;
  *&this->var7.var0[1][2] = 0u;
  *&this->var7.var0[2][0] = 0u;
  *&this->var7.var0[2][3] = 0u;
  *&this->var7.var0[3][1] = 0u;
  this->var8 = 1;
  this->var14 = 0;
  this->var13 = 0;
  *&this->var9 = 0;
  this->var15 = 3;
  this->var16 = 0;
  this->var17 = 0;
  *&this->var18 = 257;
  this->var20 = 1;
  *&this->var21 = 0;
  *&this->var25 = 1;
  this->var29 = 3;
  OZRenderState::TransformSet::TransformSet(&this->var30);
  this->var31 = 0;
}

void OZRenderState::OZRenderState(OZRenderState *this, const OZRenderState *a2)
{
  v2 = *&a2->var0.var0;
  this->var0.var3 = a2->var0.var3;
  *&this->var0.var0 = v2;
  *&this->var1 = *&a2->var1;
  this->var3 = a2->var3;
  this->var4 = a2->var4;
  this->var5 = a2->var5;
  this->var6 = a2->var6;
  v3 = *&a2->var7.var0[0][0];
  v4 = *&a2->var7.var0[0][2];
  v5 = *&a2->var7.var0[1][0];
  *&this->var7.var0[1][2] = *&a2->var7.var0[1][2];
  *&this->var7.var0[1][0] = v5;
  *&this->var7.var0[0][2] = v4;
  *&this->var7.var0[0][0] = v3;
  v6 = *&a2->var7.var0[2][0];
  v7 = *&a2->var7.var0[2][2];
  v8 = *&a2->var7.var0[3][0];
  *&this->var7.var0[3][2] = *&a2->var7.var0[3][2];
  *&this->var7.var0[3][0] = v8;
  *&this->var7.var0[2][2] = v7;
  *&this->var7.var0[2][0] = v6;
  *&this->var8 = *&a2->var8;
  *&this->var12 = *&a2->var12;
  this->var14 = a2->var14;
  this->var15 = a2->var15;
  this->var16 = a2->var16;
  this->var17 = a2->var17;
  *&this->var18 = *&a2->var18;
  *&this->var26 = *&a2->var26;
  this->var28 = a2->var28;
  this->var29 = a2->var29;
  this->var30.var0 = a2->var30.var0;
  this->var31 = a2->var31;
}

double OZRenderState::operator=(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = *(a2 + 64);
  if (a2 != a1)
  {
    v3 = 0;
    v4 = a2 + 72;
    v5 = a1 + 72;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v5 + i) = *(v4 + i);
      }

      ++v3;
      v5 += 32;
      v4 += 32;
    }

    while (v3 != 4);
  }

  *(a1 + 200) = *(a2 + 50);
  *(a1 + 204) = *(a2 + 102);
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 216) = *(a2 + 54);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 28);
  result = *(a2 + 29);
  *(a1 + 232) = result;
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 242) = *(a2 + 242);
  *(a1 + 244) = *(a2 + 61);
  *(a1 + 248) = *(a2 + 31);
  *(a1 + 256) = *(a2 + 32);
  return result;
}

uint64_t *OZRenderState::TransformSet::pivot(uint64_t *this, int a2)
{
  v2 = *this | 7;
  if (!a2)
  {
    v2 = *this & 0x3FF8;
  }

  *this = v2;
  return this;
}

uint64_t *OZRenderState::TransformSet::rotation(uint64_t *this, int a2)
{
  v2 = *this | 0x38;
  if (!a2)
  {
    v2 = *this & 0x3FC7;
  }

  *this = v2;
  return this;
}

uint64_t *OZRenderState::TransformSet::scale(uint64_t *this, int a2)
{
  v2 = *this | 0x1C0;
  if (!a2)
  {
    v2 = *this & 0x3E3F;
  }

  *this = v2;
  return this;
}

uint64_t *OZRenderState::TransformSet::shear(uint64_t *this, int a2)
{
  v2 = *this | 0x600;
  if (!a2)
  {
    v2 = *this & 0x39FF;
  }

  *this = v2;
  return this;
}

uint64_t *OZRenderState::TransformSet::translation(uint64_t *this, int a2)
{
  v2 = *this | 0x3800;
  if (!a2)
  {
    v2 = *this & 0x7FF;
  }

  *this = v2;
  return this;
}

double OZRenderState::setEyeMatrix(OZRenderState *this, const LiCamera *a2)
{
  this->var6 = 1;
  (*(*a2 + 16))(v12, a2);
  p_var7 = &this->var7;
  if (v12 != p_var7)
  {
    for (i = 0; i != 16; i += 4)
    {
      v6 = (p_var7 + i * 8);
      v7 = *&v12[i + 2];
      *v6 = *&v12[i];
      v6[1] = v7;
    }
  }

  if (!(*(*a2 + 632))(a2))
  {
    v9 = (*(*a2 + 320))(a2);
    v8.n128_f64[0] = PCMatrix44Tmpl<double>::rightTranslate(p_var7, 0.0, 0.0, -v9);
  }

  v10 = (*(*a2 + 488))(a2, v8);
  return PCMatrix44Tmpl<double>::rightScale(p_var7, v10, v10, v10);
}

OZRenderState::TransformSet *OZRenderState::TransformSet::TransformSet(OZRenderState::TransformSet *this)
{
  *this = 0;
  v3 = this;
  v4 = 0;
  std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v3, 0xEuLL);
  return this;
}

void OZBehavior::OZBehavior(OZBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  *this = &unk_28727E108;
  *(this + 1) = a2;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *this = &unk_28728B0D0;
  *(this + 2) = &unk_28728B350;
  *(this + 6) = &unk_28728B5A8;
  OZChannelBehaviorRoot::OZChannelBehaviorRoot((this + 56), a3, 0, a4, 0);
  OZChannelSceneNode::setSceneNode(this + 56, this);
  *(this + 41) = 0;
  *(this + 160) = 0;
}

void sub_260124450(_Unwind_Exception *a1)
{
  OZChannelBehaviorRoot::~OZChannelBehaviorRoot((v1 + 7));
  v1[2] = &unk_28727CFF0;
  v3 = v1[3];
  if (v3)
  {
    *(v3 + 8) = 0;
    v1[3] = 0;
  }

  _Unwind_Resume(a1);
}

void OZBehavior::OZBehavior(OZBehavior *this, const OZBehavior *a2, char a3)
{
  v6 = *(a2 + 1);
  *this = &unk_28727E108;
  *(this + 1) = v6;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *this = &unk_28728B0D0;
  *(this + 2) = &unk_28728B350;
  *(this + 6) = &unk_28728B5A8;
  OZChannelBehaviorRoot::OZChannelBehaviorRoot((this + 56), (a2 + 56), 0);
  v7 = OZChannelSceneNode::setSceneNode(this + 56, this);
  *(this + 41) = 0;
  *(this + 160) = 0;
  if ((a3 & 2) != 0)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v7);
    OZChannelBase::setID((this + 56), NextUniqueID);
  }
}

void sub_2601245A8(_Unwind_Exception *exception_object)
{
  *(v1 + 16) = &unk_28727CFF0;
  v2 = *(v1 + 24);
  if (v2)
  {
    *(v2 + 8) = 0;
    *(v1 + 24) = 0;
  }

  _Unwind_Resume(exception_object);
}

void OZBehavior::~OZBehavior(OZBehavior *this)
{
  *this = &unk_28728B0D0;
  *(this + 2) = &unk_28728B350;
  *(this + 6) = &unk_28728B5A8;
  OZChannelBehaviorRoot::~OZChannelBehaviorRoot((this + 56));
  *(this + 2) = &unk_28727CFF0;
  v2 = *(this + 3);
  if (v2)
  {
    *(v2 + 8) = 0;
    *(this + 3) = 0;
  }
}

{
  OZBehavior::~OZBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZBehavior::~OZBehavior(OZBehavior *this)
{
  OZBehavior::~OZBehavior((this - 16));
}

{
  OZBehavior::~OZBehavior((this - 48));
}

{
  OZBehavior::~OZBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZBehavior::~OZBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZBehavior::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  result = OZChannelBehaviorRoot::operator=(a1 + 56, a2 + 56);
  *(a1 + 320) = 0;
  return result;
}

uint64_t OZBehavior::isActiveAtTime(OZBehavior *this, CMTime *a2, BOOL a3, BOOL a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a5 || (result = (*(*(this + 2) + 24))(), result))
  {
    v8 = *(this + 41);
    if (v8 && (*(v8 + 1024) & 2) != 0)
    {
      return 0;
    }

    else
    {
      v13 = 0uLL;
      v14 = 0;
      OZBehavior::getFrameDuration(this, &v13);
      v19 = *a2;
      *&time1.value = v13;
      time1.epoch = v14;
      PC_CMTimeFloorToSampleDuration(&v19, &time1, &time2);
      *a2 = time2;
      v9 = *(this + 29);
      v19.epoch = *(this + 28);
      v20 = v9;
      v10 = *(this + 61);
      v21 = *(this + 60);
      *&v19.value = *(this + 13);
      v11 = *(this + 13);
      v12 = *(this + 31);
      *&time1.value = v11;
      time1.epoch = v19.epoch;
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) <= 0 && ((time1 = v19, time2.value = v20, time2.timescale = v21, time2.flags = v10, time2.epoch = v12, PC_CMTimeSaferAdd(&time1, &time2, &v16), time1 = v16, *&time2.value = v13, time2.epoch = v14, PC_CMTimeSaferSubtract(&time1, &time2, &v15), time1 = *a2, time2 = v15, CMTimeCompare(&time1, &time2) <= 0) || (v10 & 1) != 0 && (v10 & 0x10) != 0))
      {
        return 1;
      }

      else
      {
        time1.value = v20;
        time1.timescale = v21;
        time1.flags = v10;
        time1.epoch = v12;
        time2 = **&MEMORY[0x277CC08F0];
        return CMTimeCompare(&time1, &time2) < 1;
      }
    }
  }

  return result;
}

__n128 OZBehavior::getFrameDuration@<Q0>(OZBehavior *this@<X0>, __n128 *a2@<X8>)
{
  v3 = (*(*this + 336))(this);
  if (v3)
  {
    v4 = (v3 + 336);

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

uint64_t OZBehavior::isActiveInTimeRange(OZBehavior *this, const PCTimeRange *a2, BOOL a3, BOOL a4, int a5)
{
  if (!a5 || (result = (*(*(this + 2) + 24))(), result))
  {
    v8 = *(this + 41);
    if (v8 && (*(v8 + 1024) & 2) != 0)
    {
      return 0;
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
      OZBehavior::getFrameDuration(this, &v11);
      PCTimeRange::getRangeEnclosingWholeFrames(a2, &v11, v10);
      *&v9.value = *(this + 232);
      v9.epoch = *(this + 31);
      v15 = *(this + 208);
      time1 = *(this + 208);
      time2 = *(this + 232);
      PC_CMTimeSaferAdd(&time1, &time2, &v14);
      v13 = v10[0];
      time1 = v10[0];
      time2 = v10[1];
      PC_CMTimeSaferAdd(&time1, &time2, &v12);
      time1 = v12;
      time2 = v15;
      if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v13, time2 = v14, CMTimeCompare(&time1, &time2) >= 1))
      {
        time1 = v9;
        time2 = **&MEMORY[0x277CC08F0];
        return CMTimeCompare(&time1, &time2) < 1;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t OZBehavior::getSceneNode(OZBehavior *this)
{
  return *(this + 41);
}

{
  return *(this + 41);
}

uint64_t OZBehavior::getScene(OZBehavior *this)
{
  result = *(this + 41);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

uint64_t non-virtual thunk toOZBehavior::getScene(OZBehavior *this)
{
  result = *(this + 39);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

uint64_t OZBehavior::getSourceOperationMask(OZBehavior *this, OZChannelBase *a2, int a3)
{
  if ((this + 56) == a2 && (v4 = *(this + 41)) != 0)
  {
    return (*(*v4 + 552))(*(this + 41));
  }

  else
  {
    return OZObjectManipulator::getSourceOperationMask((this + 16), a2, a3);
  }
}

void *OZBehavior::allowDrag(void *this, OZFactoryBase *lpsrc, OZChannelBase *a3, char a4, unsigned int *a5, unsigned int *a6, int a7)
{
  v13 = this;
  if (lpsrc)
  {
    *a5 = 0;
    if (this && a7 == 1 && *a6 == 1)
    {
      if (v13 + 7 == a3)
      {
        v14 = this;
        v15 = (*(*this + 272))(this);
        this = (*(*v13 + 336))(v13);
        if (v15 == this)
        {
          this = OZChannelObjectRoot::findNodeRefDescendant((v13 + 7), v14, (v13 + 7));
          if (this)
          {
            *a6 = 1;
            *a5 = a4 & 8;
          }
        }
      }

      return this;
    }

    if (v13 + 7 != a3)
    {
      return this;
    }

    if (this)
    {
      return this;
    }
  }

  else
  {
    *a5 = 0;
    if (this + 7 != a3)
    {
      return this;
    }
  }

  this = v13[41];
  if (this && (*a6 | 2) == 3)
  {
    v16 = *(*this + 568);

    return v16();
  }

  return this;
}

uint64_t OZBehavior::prepareForDragOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 + 56 == a3 && (v4 = *(a1 + 328)) != 0)
  {
    return (*(*v4 + 576))();
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toOZBehavior::prepareForDragOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 + 40 == a3 && (v4 = *(a1 + 312)) != 0)
  {
    return (*(*v4 + 576))();
  }

  else
  {
    return 0;
  }
}

uint64_t OZBehavior::performDragOperation(OZBehavior *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, int a5, int a6, unsigned int a7, const CMTime *a8)
{
  if (lpsrc)
  {
    if (a6 == 1 && a5 == 1)
    {
      v13 = v12;
      if (v12)
      {
        NodeRefDescendant = OZChannelObjectRoot::findNodeRefDescendant((this + 56), v12, (this + 56));
        if ((this + 56) == a3)
        {
          v15 = NodeRefDescendant;
          v16 = (*(*v13 + 272))(v13);
          if (v16 == (*(*this + 336))(this) && v15 != 0)
          {
            PCSharedCount::PCSharedCount(&v21);
            (*(*v15 + 344))(v15, &v21);
            PCString::~PCString(&v21);
            (*(*this + 352))(this);
            (*(*v15 + 864))(v15, v13[20], 0);
            if ((*(*this + 336))(this))
            {
              v18 = (*(*this + 336))(this);
              OZDocument::postNotification(*(v18 + 1584), 8);
            }

            return 1;
          }
        }

        return 0;
      }
    }
  }

  if ((this + 56) != a3)
  {
    return 0;
  }

  result = *(this + 41);
  if (result)
  {
    v20 = *(*result + 584);

    return v20();
  }

  return result;
}

uint64_t OZBehavior::deleteThis(OZBehavior *this, OZChannelBase *a2)
{
  if ((this + 56) == a2 && (v3 = *(this + 41)) != 0)
  {
    return (*(*v3 + 608))();
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toOZBehavior::deleteThis(OZBehavior *this, OZChannelBase *a2)
{
  if ((this + 40) == a2 && (v3 = *(this + 39)) != 0)
  {
    return (*(*v3 + 608))();
  }

  else
  {
    return 0;
  }
}

OZChannelBase *OZBehavior::deselect(OZBehavior *this)
{
  OZChannelBase::resetFlag((this + 56), 1, 0);

  return OZChannelBase::resetFlag((this + 56), 0x10000000, 0);
}

OZChannelBase *non-virtual thunk toOZBehavior::deselect(OZBehavior *this)
{
  OZChannelBase::resetFlag((this + 40), 1, 0);

  return OZChannelBase::resetFlag((this + 40), 0x10000000, 0);
}

uint64_t OZBehavior::isAnyParentSelected(OZBehavior *this)
{
  v2 = *(this + 41);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(*v2 + 640))(v2);
  v4 = 1;
  if (OZChannelBase::testFlag(v3, 1))
  {
    return v4;
  }

  v5 = *(**(this + 41) + 704);

  return v5();
}

int8x8_t *OZBehavior::dirty(OZBehavior *this)
{
  OZObjectManipulator::dirty((this + 16));
  result = *(this + 41);
  if (result && *&vorr_s8(result[4], *&vextq_s8(*result[4].i8, *result[4].i8, 8uLL)))
  {
    v3 = *(*result + 496);

    return v3();
  }

  return result;
}

double OZBehavior::calcStaticHash(uint64_t a1, void *lpsrc, uint64_t a3)
{
  if (!v6)
  {
    __cxa_bad_cast();
  }

  v7 = v6;
  (*(*v6 + 40))(v6);
  (*(*a1 + 568))(a1, lpsrc, 0, 0, 1);
  v18 = *PCHashWriteStream::getHash(v7)->i8;
  v8 = *(a1 + 328);
  if (v8 && (*(*v8 + 272))(v8))
  {
    v9 = (*(**(a1 + 328) + 272))(*(a1 + 328));
    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    OZScene::getImmediatelyReferencedNodes(v9, *(a1 + 80), &v16);
    v10 = v16;
    if (v16 != v17)
    {
      do
      {
        Node = OZScene::getNode(v9, *(v10 + 7));
        if (Node && !OZObjectManipulator::isInObjectList(Node + 16, a3))
        {
          OZObjectManipulator::getStaticHash();
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v17);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v16, v17[0]);
  }

  *&result = PCHashWriteStream::setHash(v7, &v18).n128_u64[0];
  return result;
}

double OZBehavior::calcHashForState(uint64_t a1, void *lpsrc, CMTime *a3, uint64_t a4)
{
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v23 = *a3;
  v10 = (*(*a1 + 296))(a1, &v23, 1, 1, 1);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 48))(lpsrc, v10);
  (*(*lpsrc + 24))(lpsrc);
  v23 = *a3;
  OZChannelFolder::calcHashForState((a1 + 56), lpsrc, &v23);
  v23 = *(a1 + 208);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 112))(lpsrc, &v23);
  (*(*lpsrc + 24))(lpsrc);
  v23 = *(a1 + 208);
  v22 = *(a1 + 232);
  v11 = PC_CMTimeSaferAdd(&v23, &v22, v21);
  (*(*lpsrc + 16))(lpsrc, 0, v11);
  (*(*lpsrc + 112))(lpsrc, v21);
  (*(*lpsrc + 24))(lpsrc);
  TimeOffset = OZChannelObjectRootBase::getTimeOffset((a1 + 56), &v23);
  (*(*lpsrc + 16))(lpsrc, 0, TimeOffset);
  (*(*lpsrc + 112))(lpsrc, &v23);
  (*(*lpsrc + 24))(lpsrc);
  v23 = *a3;
  (*(*lpsrc + 112))(lpsrc, &v23);
  v21[0] = *PCHashWriteStream::getHash(v9)->i8;
  v13 = *(a1 + 328);
  if (v13 && (*(*v13 + 272))(v13))
  {
    v14 = (*(**(a1 + 328) + 272))(*(a1 + 328));
    *&v22.timescale = 0;
    v22.epoch = 0;
    v22.value = &v22.timescale;
    OZScene::getImmediatelyReferencedNodes(v14, *(a1 + 80), &v22);
    value = v22.value;
    if (v22.value != &v22.timescale)
    {
      do
      {
        Node = OZScene::getNode(v14, *(value + 28));
        if (Node && !OZObjectManipulator::isInObjectList(Node + 16, a4))
        {
          OZObjectManipulator::getHashForState();
        }

        v17 = *(value + 8);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = v17->value;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(value + 16);
            v19 = v18->value == value;
            value = v18;
          }

          while (!v19);
        }

        value = v18;
      }

      while (v18 != &v22.timescale);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v22, *&v22.timescale);
  }

  *&result = PCHashWriteStream::setHash(v9, v21).n128_u64[0];
  return result;
}

unint64_t OZBehavior::CanAddToSceneNode(unsigned int *a1, uint64_t a2)
{
  Factory = OZFactories::findFactory(*(theApp + 32), a1);
  if (vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))
  {
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v4, xmmword_260348420)))) & 1) != 0 || (v8 = v4, isDescendantOf360Group = OZSceneNode::isDescendantOf360Group(a2), v4 = v8, (isDescendantOf360Group & 1) == 0))
    {
      v7 = *(a2 + 8);
      v9 = v4;
      return OZFactory::isKindOfClass(v7, &v9);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t OZBehavior::IsChannelAffectedByBehaviors(OZBehavior *this, const OZChannelBase *a2)
{
  if ((*(this + 7) & 0x1000) != 0)
  {
    if (v9 && *v9 != v9[1])
    {
      v10 = *v9 + 8;
      do
      {
        if (OZChannelBase::testFlag(*(v10 - 8), 2))
        {
          IsChannelAffectedByBehaviors = 0;
        }

        else
        {
          IsChannelAffectedByBehaviors = OZBehavior::IsChannelAffectedByBehaviors(*(v10 - 8), a2, v11);
        }

        if (v10 == v9[1])
        {
          break;
        }

        v10 += 8;
      }

      while ((IsChannelAffectedByBehaviors & 1) == 0);
      return IsChannelAffectedByBehaviors;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  OZChannel::enumerateCurveProcessingNodes(v3, &v13);
  v4 = v13;
  if (v13 == v14)
  {
    IsChannelAffectedByBehaviors = 0;
    if (!v13)
    {
      return IsChannelAffectedByBehaviors;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v5 = *v4;
    if (*v4)
    {
      if (v6)
      {
        if ((*(*(v6[1] + 16) + 24))())
        {
          break;
        }
      }

      if (a2)
      {
        if (v7)
        {
          if (OZSimulationCurveNode::anyAffectingBehaviors(v7))
          {
            break;
          }
        }
      }
    }

    if (++v4 == v14)
    {
      IsChannelAffectedByBehaviors = 0;
      goto LABEL_25;
    }
  }

  IsChannelAffectedByBehaviors = 1;
LABEL_25:
  v4 = v13;
  if (v13)
  {
LABEL_26:
    v14 = v4;
    operator delete(v4);
  }

  return IsChannelAffectedByBehaviors;
}

void sub_26012613C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZBehavior::GetBehaviorsAffectingChannel(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[7] & 0x1000) != 0)
  {
    if (v13)
    {
      for (i = *v13; i != v13[1]; ++i)
      {
        if (!a3 || !OZChannelBase::testFlag(*i, 2))
        {
          OZBehavior::GetBehaviorsAffectingChannel(*i, a2, a3);
        }
      }
    }
  }

  else
  {
    if (v5)
    {
      OZChannel::enumerateCurveProcessingNodes(v5, &v18);
      v6 = v18;
      if (v18 != v19)
      {
        do
        {
          v7 = *v6;
          if (*v6)
          {
            if (v8)
            {
              for (j = *(a2 + 8); ; j = *(j + 8))
              {
                if (j == a2)
                {
                  goto LABEL_11;
                }

                if (*(j + 16) == v8[1])
                {
                  break;
                }
              }

              if (j == a2)
              {
LABEL_11:
                operator new();
              }
            }

            if (v10)
            {
              v15 = &v15;
              v16 = &v15;
              v17 = 0;
              if (a3)
              {
                OZSimulationCurveNode::getVisibleAffectingBehaviors(v10, &v15);
              }

              else
              {
                OZSimulationCurveNode::getAllAffectingBehaviors(v10, &v15);
              }

              for (k = v16; k != &v15; k = k[1])
              {
                for (m = *(a2 + 8); ; m = *(m + 8))
                {
                  if (m == a2)
                  {
                    goto LABEL_23;
                  }

                  if (*(m + 16) == k[2])
                  {
                    break;
                  }
                }

                if (m == a2)
                {
LABEL_23:
                  operator new();
                }
              }

              std::__list_imp<unsigned int>::clear(&v15);
            }
          }

          ++v6;
        }

        while (v6 != v19);
        v6 = v18;
      }

      if (v6)
      {
        v19 = v6;
        operator delete(v6);
      }
    }
  }
}

void sub_260126428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZBehavior::isUltimatelyAffectedBy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OZObjectManipulator::isInObjectList(a1 + 16, a3))
  {
    operator new();
  }

  return 0;
}

void sub_2601266A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__list_imp<unsigned int>::clear(&a9);
  std::__list_imp<unsigned int>::clear(&a12);
  _Unwind_Resume(a1);
}

uint64_t OZBehavior::IsChanAAffectedByChanB(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((*(a2 + 57) & 0x10) == 0)
  {
    std::list<OZObjectManipulator *>::list(v13, a3);
    v10 = &v10;
    v11 = &v10;
    v12 = 0;
    OZBehavior::GetBehaviorsAffectingChannel(a1, &v10, 0);
    v6 = v11;
    if (v11 != &v10)
    {
      while ((OZBehavior::isUltimatelyAffectedBy(v6[2], a2, v13) & 1) == 0)
      {
        v6 = v6[1];
        if (v6 == &v10)
        {
          goto LABEL_6;
        }
      }

      std::__list_imp<unsigned int>::clear(&v10);
      std::__list_imp<unsigned int>::clear(v13);
      return 1;
    }

LABEL_6:
    std::__list_imp<unsigned int>::clear(&v10);
    std::__list_imp<unsigned int>::clear(v13);
    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (*v7 == v7[1])
  {
    return 0;
  }

  do
  {
    result = OZBehavior::IsChanAAffectedByChanB(a1, *v8, a3);
    if (result)
    {
      break;
    }

    ++v8;
  }

  while (v8 != v7[1]);
  return result;
}

void sub_26012681C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__list_imp<unsigned int>::clear(&a9);
  std::__list_imp<unsigned int>::clear(&a12);
  _Unwind_Resume(a1);
}

uint64_t OZBehavior::isUltimatelyAffectedBy(uint64_t a1, void *a2, uint64_t a3)
{
  if (OZObjectManipulator::isInObjectList(a1 + 16, a3))
  {
    return 0;
  }

  if ((a2[7] & 0x1000) != 0)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v9;
    if (*v9 == v9[1])
    {
      return 0;
    }

    do
    {
      result = OZBehavior::isUltimatelyAffectedBy(a1, *v10, a3);
      if (result)
      {
        break;
      }

      ++v10;
    }

    while (v10 != v9[1]);
  }

  else
  {
    v8 = *(*a1 + 536);

    return v8(a1, v7, a3);
  }

  return result;
}

double OZBehavior::getSceneFrameRate(OZBehavior *this)
{
  v1 = (*(*this + 336))(this);
  if (v1)
  {
    return *(v1 + 368);
  }

  else
  {
    return 0.0;
  }
}

__n128 OZBehavior::getNaturalDuration@<Q0>(OZBehavior *this@<X0>, __n128 *a2@<X8>)
{
  if ((*(*this + 336))(this))
  {
    v4 = ((*(*this + 336))(this) + 336);

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

uint64_t OZBehavior::isEnabledAndUseBehaviors(OZBehavior *this)
{
  v1 = *(this + 41);
  if (v1 && (*(v1 + 1024) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*(this + 2) + 24))();
  }
}

uint64_t OZBehavior::markFactoriesForSerialization(OZBehavior *this, PCSerializerWriteStream *a2)
{
  if (!OZChannelBase::testFlag((this + 56), 8))
  {
    OZFactory::setNeedsSaving(*(this + 1), 1);
  }

  return OZChannelObjectRoot::markChannelFactoriesForSerialization((this + 56), a2);
}

uint64_t OZBehavior::writeHeader(OZFactory **this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZBehaviorScope);
  (*(*a2 + 16))(a2, 69);
  (*(*a2 + 200))(a2, 110, this + 88);
  (*(*a2 + 144))(a2, 111, *(this + 20));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(this[1], v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZBehavior::writeBody(OZBehavior *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZBehaviorScope);
  OZChannelObjectRoot::writeBody((this + 56), a2, 0, 1, a5);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZBehavior::parseBegin(OZBehavior *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZBehaviorScope);

  return OZChannelObjectRoot::parseBegin((this + 56), a2);
}

uint64_t non-virtual thunk toOZBehavior::parseBegin(OZBehavior *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZBehaviorScope);

  return OZChannelObjectRoot::parseBegin((this + 8), a2);
}

uint64_t OZBehavior::parseEnd(OZBehavior *this, PCSerializerReadStream *a2)
{
  v3 = (this + 56);
  (*(*this + 88))(this);

  return OZChannelObjectRoot::parseEnd(v3, a2);
}

uint64_t non-virtual thunk toOZBehavior::parseEnd(OZBehavior *this, PCSerializerReadStream *a2)
{
  v3 = this - 48;
  (*(*(this - 6) + 88))(this - 48);

  return OZChannelObjectRoot::parseEnd((v3 + 56), a2);
}

uint64_t OZBehavior::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v8);
  v6 = OZChannelObjectRoot::parseElement(this + 7, a2, a3);
  PCString::~PCString(&v8);
  return v6;
}

uint64_t OZEffect_Base::areEffectsAppliedInScreenSpace(OZEffect_Base *this)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 144))();
  }

  return result;
}

void OZEffect::OZEffect(OZEffect *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZImageNode::OZImageNode(this);
  *v8 = &unk_28728BCF0;
  v8[3] = 0;
  v8[4] = &unk_28727E108;
  v8[5] = a2;
  v9 = v8 + 6;
  v8[6] = &unk_2872893D8;
  v8[7] = 0;
  PCWorkingColorVector::PCWorkingColorVector((v8 + 8));
  *this = &unk_28728B648;
  *(this + 4) = &unk_28728B970;
  *(this + 6) = &unk_28728B9D0;
  *(this + 10) = &unk_28728BC28;
  OZChannelObjectRoot::OZChannelObjectRoot((this + 88), a3, 0, a4, 0);
  *(this + 43) = 0x4014000000000000;
  *(this + 352) = 0;
  *(this + 37) = v9;
  *(this + 3) = 0;
  *(this + 45) = 0;
}

void sub_2601270F8(_Unwind_Exception *a1, const PCString *a2)
{
  v2->var6 = &unk_28727CFF0;
  var7 = v2->var7;
  if (var7)
  {
    *(var7 + 8) = 0;
    v2->var7 = 0;
  }

  OZChannelBase::setRangeName(v2, a2);
  _Unwind_Resume(a1);
}

void OZEffect::OZEffect(OZEffect *this, const OZEffect *a2, char a3)
{
  OZImageNode::OZImageNode(this);
  *v6 = &unk_28728BCF0;
  v6[3] = 0;
  v7 = *(a2 + 5);
  v6[4] = &unk_28727E108;
  v6[5] = v7;
  v8 = v6 + 6;
  v6[6] = &unk_2872893D8;
  v6[7] = 0;
  PCWorkingColorVector::PCWorkingColorVector((v6 + 8));
  *this = &unk_28728B648;
  *(this + 4) = &unk_28728B970;
  *(this + 6) = &unk_28728B9D0;
  *(this + 10) = &unk_28728BC28;
  v9 = OZChannelObjectRoot::OZChannelObjectRoot((this + 88), (a2 + 88), 0);
  *(this + 43) = *(a2 + 43);
  *(this + 352) = *(a2 + 352);
  *(this + 37) = v8;
  *(this + 3) = 0;
  *(this + 45) = 0;
  if ((a3 & 2) != 0)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v9);
    OZChannelBase::setID((this + 88), NextUniqueID);
  }
}

void sub_26012729C(_Unwind_Exception *a1)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(&v1->var11);
  v1->var6 = &unk_28727CFF0;
  var7 = v1->var7;
  if (var7)
  {
    *(var7 + 8) = 0;
    v1->var7 = 0;
  }

  OZChannelBase::setRangeName(v1, v3);
  _Unwind_Resume(a1);
}

void OZEffect::~OZEffect(OZChannelBase *this)
{
  this->var0 = &unk_28728B648;
  this->var4.var0 = &unk_28728B970;
  this->var6 = &unk_28728B9D0;
  this->var10 = &unk_28728BC28;
  OZChannelObjectRoot::~OZChannelObjectRoot(&this->var11);
  this->var6 = &unk_28727CFF0;
  var7 = this->var7;
  if (var7)
  {
    *(var7 + 8) = 0;
    this->var7 = 0;
  }

  OZChannelBase::setRangeName(this, v2);
}

{
  OZEffect::~OZEffect(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZEffect::~OZEffect(OZEffect *this)
{
  OZEffect::~OZEffect((this - 32));
}

{
  OZEffect::~OZEffect((this - 48));
}

{
  OZEffect::~OZEffect((this - 80));
}

{
  OZEffect::~OZEffect((this - 32));

  JUMPOUT(0x2666E9F00);
}

{
  OZEffect::~OZEffect((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZEffect::~OZEffect((this - 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZEffect::isActiveAtTime(OZEffect *this, CMTime *a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a5 || (result = (*(*this + 272))(this, a3, a4), result))
  {
    v8 = *(this + 45);
    if (!v8 || (*(v8 + 1024) & 1) == 0)
    {
      result = (*(*this + 296))(this);
      if (!result)
      {
        return result;
      }

      v9 = result;
      OZSceneSettings::getFrameDuration((result + 336), &v16);
      v20 = *a2;
      *&time1.value = v16;
      time1.epoch = v17;
      PC_CMTimeFloorToSampleDuration(&v20, &time1, &time2);
      *a2 = time2;
      *&v20.value = *(this + 15);
      v10 = *(this + 33);
      v20.epoch = *(this + 32);
      v21 = v10;
      v22 = *(this + 68);
      v11 = *(this + 69);
      v12 = *(this + 35);
      OZSceneSettings::getFrameDuration((v9 + 336), &v13);
      time1 = v20;
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        time1 = v20;
        time2.value = v21;
        time2.timescale = v22;
        time2.flags = v11;
        time2.epoch = v12;
        PC_CMTimeSaferAdd(&time1, &time2, &v16);
        *&time1.value = v16;
        time1.epoch = v17;
        *&time2.value = v13;
        time2.epoch = v14;
        PC_CMTimeSaferSubtract(&time1, &time2, &v15);
        time1 = *a2;
        time2 = v15;
        if (CMTimeCompare(&time1, &time2) < 1)
        {
          return 1;
        }

        if (v11)
        {
          return (v11 >> 4) & 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t OZEffect::isActiveInTimeRange(OZEffect *this, const PCTimeRange *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5 || (result = (*(*this + 272))(this, a3, a4), result))
  {
    v8 = *(this + 45);
    if (v8 && (*(v8 + 1024) & 1) != 0)
    {
      return 0;
    }

    memset(&v11, 0, sizeof(v11));
    v9 = (*(*this + 296))(this);
    OZSceneSettings::getFrameDuration((v9 + 336), &v11);
    PCTimeRange::getRangeEnclosingWholeFrames(a2, &v11, v10);
    v15 = *(this + 10);
    time1 = *(this + 10);
    time2 = *(this + 11);
    PC_CMTimeSaferAdd(&time1, &time2, &v14);
    v13 = v10[0];
    time1 = v10[0];
    time2 = v10[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v12);
    time1 = v12;
    time2 = v15;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      return 0;
    }

    else
    {
      time1 = v13;
      time2 = v14;
      return CMTimeCompare(&time1, &time2) < 1;
    }
  }

  return result;
}

__n128 OZEffect::getBounds(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 16))();
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    a2[1] = result;
  }

  return result;
}

uint64_t OZEffect::getResolution(OZEffect *this, double *a2, double *a3)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 112))(result, a2, a3);
  }

  *a2 = 1.0;
  *a3 = 1.0;
  return result;
}

uint64_t OZEffect::getWorkingColorDescription@<X0>(OZEffect *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*this + 256))(this);
  if (v3)
  {
    v4 = *(*v3 + 288);

    return v4();
  }

  else
  {

    return FxGetDefaultWorkingColorDescription(a2);
  }
}

float OZEffect::getBlendingGamma(OZEffect *this)
{
  v1 = (*(*this + 256))(this);
  if (v1)
  {
    v2 = *(*v1 + 296);

    v2();
  }

  else
  {

    return PCRenderModel::getDefaultBlendingGamma(0);
  }

  return result;
}

uint64_t OZEffect::getDimensions(OZEffect *this, float *a2, float *a3, const OZRenderState *a4)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 96))(result, a2, a3, a4);
  }

  *a2 = 0.0;
  *a3 = 0.0;
  return result;
}

uint64_t OZEffect::getSourceOperationMask(OZEffect *this, OZChannelBase *a2, int a3)
{
  if ((this + 88) == a2 && (v4 = *(this + 45)) != 0)
  {
    return (*(*v4 + 552))(*(this + 45));
  }

  else
  {
    return OZObjectManipulator::getSourceOperationMask((this + 48), a2, a3);
  }
}

OZEffect *OZEffect::allowDrag(OZEffect **this, OZFactoryBase *lpsrc, OZChannelBase *a3, char a4, unsigned int *a5, unsigned int *a6, int a7)
{
  if (lpsrc)
  {
    *a5 = 0;
    if (result && a7 == 1 && *a6 == 1)
    {
      if (this + 11 == a3)
      {
        v15 = result;
        v16 = (*(*result + 272))(result);
        result = (*(*this + 37))(this);
        if (v16 == result)
        {
          result = OZChannelObjectRoot::findNodeRefDescendant((this + 11), v15, (this + 11));
          if (result)
          {
            *a6 = 1;
            *a5 = a4 & 8;
          }
        }
      }

      return result;
    }
  }

  else
  {
    *a5 = 0;
  }

  if (this + 11 == a3 || (result = OZChannelBase::getChannelRootBase(a3), result == (this + 11)))
  {
    {
      result = this[45];
      if (result)
      {
        if ((*a6 | 2) == 3)
        {
          v17 = *(*result + 568);

          return v17();
        }
      }
    }
  }

  return result;
}

uint64_t OZEffect::prepareForDragOperation(uint64_t a1, int a2, OZChannelBase *this)
{
  if ((a1 + 88) != this && OZChannelBase::getChannelRootBase(this) != (a1 + 88))
  {
    return 0;
  }

  v4 = *(a1 + 360);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4 + 576);

  return v5();
}

uint64_t OZEffect::performDragOperation(OZEffect *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, int a5, int a6, unsigned int a7, const CMTime *a8)
{
  if (lpsrc)
  {
    if (a6 == 1 && a5 == 1)
    {
      v13 = v12;
      if (v12)
      {
        NodeRefDescendant = OZChannelObjectRoot::findNodeRefDescendant((this + 88), v12, (this + 88));
        if ((this + 88) == a3)
        {
          v15 = NodeRefDescendant;
          v16 = (*(*v13 + 272))(v13);
          if (v16 == (*(*this + 296))(this) && v15 != 0)
          {
            result = (*(*v15 + 872))(v15, v13 + 4);
            if (result)
            {
              PCSharedCount::PCSharedCount(&v21);
              (*(*v15 + 344))(v15, &v21);
              PCString::~PCString(&v21);
              (*(*this + 320))(this);
              (*(*v15 + 864))(v15, v13[20], 0);
              if ((*(*this + 296))(this))
              {
                v19 = (*(*this + 296))(this);
                OZDocument::postNotification(*(v19 + 1584), 8);
              }

              return 1;
            }

            return result;
          }
        }

        return 0;
      }
    }
  }

  if ((this + 88) != a3 && OZChannelBase::getChannelRootBase(a3) != this + 88)
  {
    return 0;
  }

  result = *(this + 45);
  if (result)
  {
    v20 = *(*result + 584);

    return v20();
  }

  return result;
}

uint64_t OZEffect::deleteThis(OZEffect *this, OZChannelBase *a2)
{
  if ((this + 88) == a2 && (v3 = *(this + 45)) != 0)
  {
    return (*(*v3 + 608))();
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toOZEffect::deleteThis(OZEffect *this, OZChannelBase *a2)
{
  if ((this + 40) == a2 && (v3 = *(this + 39)) != 0)
  {
    return (*(*v3 + 608))();
  }

  else
  {
    return 0;
  }
}

OZChannelBase *OZEffect::deselect(OZEffect *this)
{
  OZChannelBase::resetFlag((this + 88), 1, 0);

  return OZChannelBase::resetFlag((this + 88), 0x10000000, 0);
}

OZChannelBase *non-virtual thunk toOZEffect::deselect(OZEffect *this)
{
  OZChannelBase::resetFlag((this + 40), 1, 0);

  return OZChannelBase::resetFlag((this + 40), 0x10000000, 0);
}

uint64_t OZEffect::isAnyParentSelected(OZEffect *this)
{
  v2 = *(this + 45);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(*v2 + 640))(v2);
  v4 = 1;
  if (OZChannelBase::testFlag(v3, 1))
  {
    return v4;
  }

  v5 = *(**(this + 45) + 704);

  return v5();
}

uint64_t OZEffect::canAddToSceneNode(OZEffect *this, OZSceneNode *a2)
{
  v2 = *((*(*a2 + 664))(a2) + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = xmmword_260850040;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_260850790;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_260850ED0;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_2608514A0;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_2608514B0;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_26084FA40;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_2608507C0;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_26084FA30;
  if (OZFactory::isKindOfClass(v2, &v4))
  {
    return 0;
  }

  v4 = xmmword_2603473B0;
  return OZFactory::isKindOfClass(v2, &v4) ^ 1;
}

uint64_t OZEffect::getScene(OZEffect *this)
{
  result = *(this + 45);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

uint64_t non-virtual thunk toOZEffect::getScene(OZEffect *this)
{
  result = *(this + 39);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

int8x8_t *OZEffect::dirty(OZEffect *this)
{
  OZObjectManipulator::dirty((this + 48));
  result = *(this + 45);
  if (result && *&vorr_s8(result[4], *&vextq_s8(*result[4].i8, *result[4].i8, 8uLL)))
  {
    v3 = *(*result + 496);

    return v3();
  }

  return result;
}

__n128 OZEffect::getNaturalDuration@<Q0>(OZEffect *this@<X0>, __n128 *a2@<X8>)
{
  if ((*(*this + 296))(this))
  {
    v4 = ((*(*this + 296))(this) + 336);

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

double OZEffect::calcStaticHash(uint64_t a1, void *lpsrc, uint64_t a3)
{
  if (!v6)
  {
    __cxa_bad_cast();
  }

  v7 = v6;
  (*(*v6 + 40))(v6);
  (*(*a1 + 544))(a1, lpsrc, 0, 0, 1);
  v23 = *PCHashWriteStream::getHash(v7)->i8;
  v8 = *(a1 + 360);
  if (v8 && (*(*v8 + 272))(v8))
  {
    v9 = (*(**(a1 + 360) + 272))(*(a1 + 360));
    v22[0] = 0;
    v22[1] = 0;
    v21 = v22;
    OZScene::getImmediatelyReferencedNodes(v9, *(a1 + 112), &v21);
    v10 = v21;
    if (v21 != v22)
    {
      do
      {
        Node = OZScene::getNode(v9, *(v10 + 7));
        if (Node && !OZObjectManipulator::isInObjectList(Node + 16, a3))
        {
          OZObjectManipulator::getStaticHash();
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v22);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v21, v22[0]);
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = (*(*v15 + 104))(v15);
    if (*(a1 + 24))
    {
      if (v16)
      {
        v17 = *(a1 + 360);
        v18 = v17 + 16;
        if (!v17)
        {
          v18 = 0;
        }

        if (v16 != v18)
        {
          OZObjectManipulator::getStaticHash();
        }

        if (v17)
        {
          StaticHashWithoutEffects = OZSceneNode::getStaticHashWithoutEffects(*(a1 + 360), lpsrc, a3);
          PCHash128::operator+=(&v23, StaticHashWithoutEffects);
        }
      }
    }
  }

  *&result = PCHashWriteStream::setHash(v7, &v23).n128_u64[0];
  return result;
}

double OZEffect::calcHashForState(uint64_t a1, void *lpsrc, CMTime *a3, uint64_t a4)
{
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = v8;
  v25 = *a3;
  v10 = (*(*a1 + 280))(a1, &v25, 1, 1, 1);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 48))(lpsrc, v10);
  (*(*lpsrc + 24))(lpsrc);
  v25 = *a3;
  OZChannelFolder::calcHashForState((a1 + 88), lpsrc, &v25);
  TimeOffset = OZChannelObjectRootBase::getTimeOffset((a1 + 88), &v25);
  (*(*lpsrc + 16))(lpsrc, 0, TimeOffset);
  (*(*lpsrc + 112))(lpsrc, &v25);
  (*(*lpsrc + 24))(lpsrc);
  v24 = *PCHashWriteStream::getHash(v9)->i8;
  v12 = *(a1 + 360);
  if (v12 && (*(*v12 + 272))(v12))
  {
    v13 = (*(**(a1 + 360) + 272))(*(a1 + 360));
    *&v25.timescale = 0;
    v25.epoch = 0;
    v25.value = &v25.timescale;
    OZScene::getImmediatelyReferencedNodes(v13, *(a1 + 112), &v25);
    value = v25.value;
    if (v25.value != &v25.timescale)
    {
      do
      {
        Node = OZScene::getNode(v13, *(value + 28));
        if (Node && !OZObjectManipulator::isInObjectList(Node + 16, a4))
        {
          OZObjectManipulator::getHashForState();
        }

        v16 = *(value + 8);
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = v16->value;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = *(value + 16);
            v18 = v17->value == value;
            value = v17;
          }

          while (!v18);
        }

        value = v17;
      }

      while (v17 != &v25.timescale);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v25, *&v25.timescale);
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    v20 = (*(*v19 + 104))(v19);
    if (*(a1 + 24))
    {
      if (v20)
      {
        v21 = *(a1 + 360);
        v22 = v21 + 16;
        if (!v21)
        {
          v22 = 0;
        }

        if (v20 != v22)
        {
          OZObjectManipulator::getHashForState();
        }

        if (v21)
        {
          OZSceneNode::getHashForStateWithoutEffects(*(a1 + 360), lpsrc, a3);
        }
      }
    }
  }

  *&result = PCHashWriteStream::setHash(v9, &v24).n128_u64[0];
  return result;
}

uint64_t OZEffect::markFactoriesForSerialization(OZEffect *this, PCSerializerWriteStream *a2)
{
  if (!OZChannelBase::testFlag((this + 88), 8))
  {
    OZFactory::setNeedsSaving(*(this + 5), 1);
  }

  return OZChannelObjectRoot::markChannelFactoriesForSerialization((this + 88), a2);
}

uint64_t OZEffect::writeHeader(OZFactory **this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZEffectScope);
  (*(*a2 + 16))(a2, 68);
  (*(*a2 + 200))(a2, 110, this + 120);
  (*(*a2 + 144))(a2, 111, *(this + 28));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(this[5], v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  if ((*(*this + 73))(this))
  {
    if (this[16])
    {
      v6 = this[16];
    }

    else
    {
      v6 = (this + 15);
    }

    (*(*a2 + 200))(a2, 118, v6);
  }

  (*(*this + 79))(this);
  (*(*a2 + 184))(a2, 116);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZEffect::writeBody(OZEffect *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZEffectScope);
  OZChannelObjectRoot::writeBody((this + 88), a2, 0, 1, a5);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZEffect::parseBegin(OZEffect *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZEffectScope);

  return OZChannelObjectRoot::parseBegin((this + 88), a2);
}

uint64_t non-virtual thunk toOZEffect::parseBegin(OZEffect *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZEffectScope);

  return OZChannelObjectRoot::parseBegin((this + 8), a2);
}

uint64_t OZEffect::parseEnd(OZEffect *this, PCSerializerReadStream *a2)
{
  v3 = (this + 88);
  (*(*this + 200))(this);

  return OZChannelObjectRoot::parseEnd(v3, a2);
}

uint64_t non-virtual thunk toOZEffect::parseEnd(OZEffect *this, PCSerializerReadStream *a2)
{
  v3 = this - 80;
  (*(*(this - 10) + 200))(this - 80);

  return OZChannelObjectRoot::parseEnd((v3 + 88), a2);
}

uint64_t OZEffect::canBeAppliedToChildren(OZEffect *this, CMTime *a2)
{
  v4 = *a2;
  result = (*(*this + 664))(this, &v4);
  if (result)
  {
    return (*(*this + 672))(this);
  }

  return result;
}

__n128 OZEffect::getTimeExtent@<Q0>(OZEffect *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 15);
  *(a2 + 16) = *(this + 32);
  *(a2 + 40) = *(this + 35);
  result = *(this + 264);
  *(a2 + 24) = result;
  return result;
}

void *std::list<OZSimulationBehavior *>::list(void *result, uint64_t a2)
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

void *OZChannelMaterialMapTransform::init(OZChannelMaterialMapTransform *this)
{
  v5 = *MEMORY[0x277D85DE8];
  OZChannelFolder::setFoldFlag(this, 4);
  OZChannel::setSliderMin((this + 1992), 0.01);
  OZChannel::setSliderMin((this + 2144), 0.01);
  v4 = 2;
  *v3 = 0x100000000;
  return OZChannelEnum::setTags((this + 896), v3, 3);
}

void OZChannelMaterialMapTransform::OZChannelMaterialMapTransform(OZChannelMaterialMapTransform *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5);
  *v6 = &unk_28728BDC8;
  v6[2] = &unk_28728C0A8;
  PCURL::PCURL(&v8, @"Channel Map Transform Source Enum");
  PCURL::PCURL(&v7, @"Channel Map Transform Source Label");
  OZChannelEnum::OZChannelEnum((this + 128), 0, &v8, &v7, this, 3u, 0x10000, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Map Transform Mode Enum");
  PCURL::PCURL(&v7, @"Channel Map Transform Mode Label");
  OZChannelEnum::OZChannelEnum((this + 384), 0, &v8, &v7, this, 2u, 0x10000, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Map Placement Mode Enum");
  PCURL::PCURL(&v7, @"Channel Map Placement Mode Label");
  OZChannelEnum::OZChannelEnum((this + 640), 0, &v8, &v7, this, 4u, 65546, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Map Placement Mode Enum");
  PCURL::PCURL(&v7, @"Channel Map Placement Mode Label");
  OZChannelEnum::OZChannelEnum((this + 896), 0, &v8, &v7, this, 8u, 0x10000, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Map Position Label");
  OZChannelPosition::OZChannelPosition((this + 1152), 0.0, 0.0, &v8, this, 5u, 0, 2u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Map Scale Label");
  OZChannelMaterialMapScale::OZChannelMaterialMapScale((this + 1856), 1.0, 1.0, &v8, this, 6u, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Map Rotation Label");
  OZChannelRotation3D::OZChannelRotation3D((this + 3040), 0.0, 0.0, 0.0, &v8, this, 7u, 0, 4u, 0, 0);
  PCString::~PCString(&v8);
  OZChannelMaterialMapTransform::init(this);
}

void sub_2601299F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelRotation3D::~OZChannelRotation3D((v12 + 3040));
  OZChannelMaterialMapScale::~OZChannelMaterialMapScale((v12 + 1856));
  OZChannelPosition::~OZChannelPosition((v12 + 1152));
  OZChannelEnum::~OZChannelEnum((v12 + 896));
  OZChannelEnum::~OZChannelEnum((v12 + 640));
  OZChannelEnum::~OZChannelEnum((v12 + 384));
  OZChannelEnum::~OZChannelEnum((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void sub_260129AB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x260129A94);
}

void sub_260129ADC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x260129A9CLL);
}

void sub_260129B04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x260129AA4);
}

void OZChannelMaterialMapTransform::OZChannelMaterialMapTransform(OZChannelMaterialMapTransform *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelMaterialMapTransform_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, a6);
  *this = &unk_28728BDC8;
  *(this + 2) = &unk_28728C0A8;
  PCURL::PCURL(&v14, @"Channel Map Transform Source Enum");
  PCURL::PCURL(&v13, @"Channel Map Transform Source Label");
  OZChannelEnum::OZChannelEnum((this + 128), 0, &v14, &v13, this, 3u, 0x10000, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Channel Map Transform Mode Enum");
  PCURL::PCURL(&v13, @"Channel Map Transform Mode Label");
  OZChannelEnum::OZChannelEnum((this + 384), 0, &v14, &v13, this, 2u, 0x10000, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Channel Map Placement Mode Enum");
  PCURL::PCURL(&v13, @"Channel Map Placement Mode Label");
  OZChannelEnum::OZChannelEnum((this + 640), 0, &v14, &v13, this, 4u, 65546, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Channel Map Placement Mode Enum");
  PCURL::PCURL(&v13, @"Channel Map Placement Mode Label");
  OZChannelEnum::OZChannelEnum((this + 896), 0, &v14, &v13, this, 8u, 0x10000, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Channel Map Position Label");
  OZChannelPosition::OZChannelPosition((this + 1152), 0.0, 0.0, &v14, this, 5u, 0, 2u, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Channel Map Scale Label");
  OZChannelMaterialMapScale::OZChannelMaterialMapScale((this + 1856), 1.0, 1.0, &v14, this, 6u, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Channel Map Rotation Label");
  OZChannelRotation3D::OZChannelRotation3D((this + 3040), 0.0, 0.0, 0.0, &v14, this, 7u, 0, 4u, 0, 0);
  PCString::~PCString(&v14);
  OZChannelMaterialMapTransform::init(this);
}

void sub_260129E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelRotation3D::~OZChannelRotation3D((v12 + 3040));
  OZChannelMaterialMapScale::~OZChannelMaterialMapScale((v12 + 1856));
  OZChannelPosition::~OZChannelPosition((v12 + 1152));
  OZChannelEnum::~OZChannelEnum((v12 + 896));
  OZChannelEnum::~OZChannelEnum((v12 + 640));
  OZChannelEnum::~OZChannelEnum((v12 + 384));
  OZChannelEnum::~OZChannelEnum((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void sub_260129F54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x260129F34);
}

void sub_260129F7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x260129F3CLL);
}

void sub_260129FA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x260129F44);
}

uint64_t OZChannelMaterialMapTransform_Factory::getInstance(OZChannelMaterialMapTransform_Factory *this)
{
  if (atomic_load_explicit(&OZChannelMaterialMapTransform_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelMaterialMapTransform_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelMaterialMapTransform_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelMaterialMapTransform_Factory::_instance;
}

void OZChannelMaterialMapTransform::OZChannelMaterialMapTransform(OZChannelMaterialMapTransform *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_28728BDC8;
  v5[2] = &unk_28728C0A8;
  OZChannelEnum::OZChannelEnum((v5 + 16), &a2[1].var2, this);
  OZChannelEnum::OZChannelEnum((this + 384), &a2[3].var6, this);
  OZChannelEnum::OZChannelEnum((this + 640), &a2[5].var10, this);
  OZChannelEnum::OZChannelEnum((this + 896), &a2[8], this);
  OZChannelPosition::OZChannelPosition((this + 1152), &a2[10].var4, this);
  OZChannelMaterialMapScale::OZChannelMaterialMapScale((this + 1856), &a2[16].var8, this);
  OZChannelRotation3D::OZChannelRotation3D((this + 3040), &a2[27].var2, this);
  *(this + 487) = a2[34].var11;
  (*(*this + 232))(this, a2, 1);
}

void sub_26012A14C(_Unwind_Exception *a1)
{
  OZChannelRotation3D::~OZChannelRotation3D((v1 + 3040));
  OZChannelMaterialMapScale::~OZChannelMaterialMapScale((v1 + 1856));
  OZChannelPosition::~OZChannelPosition((v1 + 1152));
  OZChannelEnum::~OZChannelEnum((v1 + 896));
  OZChannelEnum::~OZChannelEnum((v1 + 640));
  OZChannelEnum::~OZChannelEnum((v1 + 384));
  OZChannelEnum::~OZChannelEnum((v1 + 128));
  OZChannelFolder::~OZChannelFolder(v1);
  _Unwind_Resume(a1);
}

void OZChannelMaterialMapTransform::copy(OZChannelMaterialMapTransform *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZChannelFolder::copy(this, a2);
  if (v4)
  {
  }

  OZChannelEnum::copy(this + 16, (v4 + 128), a3);
  OZChannelEnum::copy(this + 48, (v4 + 384), a3);
  OZChannelEnum::copy(this + 112, v4 + 8, a3);
  OZChannelPosition::copy((this + 1152), (v4 + 1152), a3);
  OZChannelMaterialMapScale::copy((this + 1856), (v4 + 1856), a3);

  OZChannelRotation3D::copy((this + 3040), (v4 + 3040), a3);
}

uint64_t OZChannelMaterialMapTransform::parseEnd(OZChannelMaterialMapTransform *this, PCSerializerReadStream *a2)
{
  v3 = OZChannelFolder::parseEnd(this, a2);
  if (!OZChannelBase::testFlag((this + 640), 2))
  {
    OZChannelBase::setFlag((this + 640), 10, 0);
    v4 = MEMORY[0x277CC08F0];
    ValueAsUint = OZChannel::getValueAsUint((this + 640), MEMORY[0x277CC08F0], 0.0);
    v6 = 2.0;
    if (ValueAsUint == 1)
    {
      v6 = 0.0;
    }

    if (!ValueAsUint)
    {
      v6 = 1.0;
    }

    OZChannel::setValue((this + 896), v4, v6, 0);
  }

  return v3;
}

void OZChannelMaterialMapTransform::getPreviewScale(OZChannelMaterialMapTransform *this@<X0>, const CMTime *a2@<X1>, double *a3@<X8>)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 2296), MEMORY[0x277CC08F0], 0.0);
  OZChannel::getValueAsDouble((this + 1992), a2, 0.0);
  v8 = v7;
  OZChannel::getValueAsDouble((this + 2144), a2, 0.0);
  v10 = v9;
  if (ValueAsInt)
  {
    OZChannel::getValueAsDouble(this + 18, a2, 0.0);
    v12 = v11;
    OZChannel::getValueAsDouble(this + 19, a2, 0.0);
    v13 = *(this + 487);
    v8 = v12 * (v8 * v13);
    v10 = v14 * (v10 * v13);
  }

  *a3 = v8;
  a3[1] = v10;
}

uint64_t OZChannelMaterialMapTransform::willSetScaleWithFontSize(OZChannelMaterialMapTransform *this, const CMTime *a2, int a3, double a4)
{
  *(this + 487) = a4 / OZChannel::getValueAsInt((this + 2448), MEMORY[0x277CC08F0], 0.0);
  if (a3)
  {
    OZChannel::setValue((this + 2448), MEMORY[0x277CC08F0], a4, 0);
    OZChannel::getValueAsDouble((this + 1992), a2, 0.0);
    v9 = v8;
    OZChannel::getValueAsDouble((this + 2144), a2, 0.0);
    v11 = v10;
    OZChannelMaterialMapScale::setBasisScale((this + 1856), v9, v10);
    (*(*(this + 249) + 776))(this + 1992, 1.0 / v9);
    v12.n128_f64[0] = 1.0 / v11;
    v13 = *(*(this + 268) + 776);
    v14 = this + 2144;
  }

  else
  {
    OZChannel::getValueAsDouble((this + 1288), a2, 0.0);
    OZChannel::getValueAsDouble((this + 1440), a2, 0.0);
    OZChannel::getValueAsDouble((this + 1992), a2, 0.0);
    OZChannel::getValueAsDouble((this + 2144), a2, 0.0);
    OZChannel::getValueAsDouble(this + 18, a2, 0.0);
    v16 = v15;
    OZChannel::getValueAsDouble(this + 19, a2, 0.0);
    v18 = v17;
    v19.n128_f64[0] = v16 * *(this + 487);
    (*(*(this + 249) + 776))(this + 1992, v19);
    v20.n128_f64[0] = v18 * *(this + 487);
    (*(*(this + 268) + 776))(this + 2144, v20);
    v21.n128_u64[0] = *(this + 487);
    (*(*(this + 161) + 776))(this + 1288, v21);
    v12.n128_u64[0] = *(this + 487);
    v13 = *(*(this + 180) + 776);
    v14 = this + 1440;
  }

  return v13(v14, v12);
}

OZChannelBase *OZChannelMaterialMapTransform::updateLocalTransformChannelsVisibility(OZChannelMaterialMapTransform *this)
{
  if (OZChannel::getValueAsInt((this + 128), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannelBase::setFlag((this + 1152), 0x400000, 0);
    OZChannelBase::setFlag((this + 1856), 0x400000, 0);
    OZChannelBase::setFlag((this + 3040), 0x400000, 0);
    OZChannelBase::setFlag((this + 384), 0x400000, 0);

    return OZChannelBase::setFlag(this + 8, 0x400000, 0);
  }

  else
  {
    OZChannelBase::resetFlag((this + 1152), 0x400000, 0);
    OZChannelBase::resetFlag((this + 1856), 0x400000, 0);
    OZChannelBase::resetFlag((this + 3040), 0x400000, 0);
    OZChannelBase::resetFlag((this + 384), 0x400000, 0);

    return OZChannelBase::resetFlag(this + 8, 0x400000, 0);
  }
}

OZChannelBase *SetSaveWhenAtDefaultStateFlagOnDescendants(OZChannelBase *result)
{
  var0 = result[1].var0;
  v2 = *var0;
  v3 = var0[1];
  if (*var0 != v3)
  {
    do
    {
      v4 = *v2;
      result = OZChannelBase::setFlag(*v2, 0x100000000, 0);
      if ((v4->var7 & 0x1000) != 0)
      {
        result = SetSaveWhenAtDefaultStateFlagOnDescendants(v5);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

OZChannelBase *OZChannelMaterialMapTransform::setCurrentTransformValuesAsDefault(OZChannelBase *this)
{
  (*(this->var0 + 17))(this);
  OZChannelBase::setFlag(this, 0x100000000, 0);

  return SetSaveWhenAtDefaultStateFlagOnDescendants(this);
}

void non-virtual thunk toOZChannelMaterialMapTransform::~OZChannelMaterialMapTransform(OZChannelMaterialMapTransform *this)
{
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((this - 16));
}

{
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelMaterialMapTransform_Factory::OZChannelMaterialMapTransform_Factory(OZChannelMaterialMapTransform_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_260348A00;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28728C118;
  *(this + 16) = &unk_28728C1E8;
}

void OZPublishSettings::OZPublishSettings(OZPublishSettings *this, OZScene *a2)
{
  *this = &unk_28728C240;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  PCString::PCString(&v4, "Published Folder");
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 32), &v4, 0, 1u, 8u);
  PCString::~PCString(&v4);
  *(this + 20) = a2;
  *(this + 84) = 0;
  *(this + 24) = 0;
  *(this + 23) = 0;
  *(this + 22) = this + 184;
}

void sub_26012ADAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 16) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void OZPublishSettings::copyPublishedParameters(OZPublishSettings *this, const OZPublishSettings *a2)
{
  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }
}

void OZPublishSettings::OZPublishSettings(OZPublishSettings *this, const OZPublishSettings *a2, OZScene *a3)
{
  *this = &unk_28728C240;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 32), (a2 + 32), 0);
  *(this + 20) = a3;
  *(this + 84) = *(a2 + 84);
  *(this + 23) = 0;
  *(this + 22) = this + 184;
  *(this + 24) = 0;
  OZPublishSettings::copyPublishedParameters(this, a2);
}

void sub_26012AF3C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *v4);
  OZChannelVaryingFolder::~OZChannelVaryingFolder((v1 + 32));
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void OZPublishSettings::~OZPublishSettings(OZPublishSettings *this)
{
  *this = &unk_28728C240;
  OZPublishSettings::clearAll(this);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 176, *(this + 23));
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this + 32));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  OZPublishSettings::~OZPublishSettings(this);

  JUMPOUT(0x2666E9F00);
}

void OZPublishSettings::clearAll(OZPublishSettings *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        OZChannelRef::~OZChannelRef((v4 + 8));
        MEMORY[0x2666E9F00](v4, 0x1012C40849EBCB1);
      }

      *v2++ = 0;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  *(this + 2) = v2;

  OZChannelBase::reset((this + 32), 0);
}

void OZPublishSettings::operator=(uint64_t a1, uint64_t a2)
{
  OZPublishSettings::clearAll(a1);
  OZChannelVaryingFolder::copy((a1 + 32), (a2 + 32));
  *(a1 + 168) = *(a2 + 168);
  if (*(a2 + 8) != *(a2 + 16))
  {
    operator new();
  }
}

uint64_t OZPublishSettings::addChannel(OZPublishSettings *this, OZChannelBase *a2)
{
  v4 = *(this + 18);
  if (v4)
  {
    v5 = *(*(v4 + 8) - 8);
  }

  else
  {
    v5 = 0;
  }

  result = OZPublishSettings::isChannelPublished(this, a2);
  if ((result & 1) == 0)
  {

    return OZPublishSettings::addChannelRec(this, a2, v5);
  }

  return result;
}

uint64_t OZPublishSettings::isChannelPublished(OZPublishSettings *this, OZChannelBase *a2)
{
  v2 = a2;
  v3 = *(this + 1);
  v4 = *(this + 2);
  ChannelRootBase = OZChannelBase::getChannelRootBase(a2);
  if (v2)
  {
    v6 = ChannelRootBase;
    var3 = ChannelRootBase->var3;
    v8 = 1;
    while (v2 != v6->var6)
    {
      {
        OZChannelRef::OZChannelRef(v13, v2, v6);
        if (v3 != v4)
        {
          v10 = v3;
          while (**v10 != var3 || !OZChannelRef::operator==((*v10 + 8), v13))
          {
            v10 += 8;
            if (v10 == v4)
            {
              goto LABEL_10;
            }
          }

          OZChannelRef::~OZChannelRef(v13);
          return 1;
        }

LABEL_10:
        OZChannelRef::~OZChannelRef(v13);
      }

      v8 = 0;
      result = 0;
      v2 = v2->var6;
      if (!v2)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_26012B3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

const OZChannelBase *OZPublishSettings::addChannelRec(OZPublishSettings *this, const OZChannelBase *a2, const OZChannelBase *a3)
{
  var0 = a2->var0;
  if (!v7)
  {
LABEL_4:
    if ((var0[15])(a2))
    {
      for (i = *v10; i != v10[1]; ++i)
      {
        v12 = *i;
        OZPublishSettings::removeChannelRec(this, v12);
      }
    }

    operator new();
  }

  v9 = v7;
  if (OZPublishSettings::TreatTargetFolderAsUnit(v7, v8))
  {
    var0 = a2->var0;
    goto LABEL_4;
  }

  v13 = *(v9 + 14);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13 == *(v13 + 8))
  {
    return 0;
  }

  v15 = 0;
  do
  {
    v16 = *v14;
    if (((*v14)->var7 & 2) == 0 && (OZPublishSettings::isChannelPublished(this, *v14) & 1) == 0)
    {
      a3 = OZPublishSettings::addChannelRec(this, v16, a3);
      v15 = a3;
    }

    ++v14;
  }

  while (v14 != *(v13 + 8));
  return v15;
}

void sub_26012B6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  MEMORY[0x2666E9F00](v9, 0x10E1C409BAC03F7);
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

BOOL OZPublishSettings::TreatTargetFolderAsUnit(OZChannelFolder *this, const OZChannelFolder *a2)
{
  {
    return 1;
  }

  return OZChannelFolder::testFoldFlag(this, 0x20000);
}

void OZPublishSettings::publishedNameForChannel(OZPublishSettings *this, OZChannelBase *a2, PCString *a3)
{
  PCString::set(a3, &a2->var4);
  if ((*(*a2->var6 + 120))(a2->var6))
  {
    PCURL::PCURL(&v10, @"Publish Channel Separator");
    PCString::PCString(&v11, a3);
    PCString::append(&v11, &v10);
    var6 = a2->var6;
    PCString::PCString(&v12, &v11);
    PCString::append(&v12, var6 + 4);
    PCString::set(a3, &v12);
    PCString::~PCString(&v12);
    PCString::~PCString(&v11);
    PCString::~PCString(&v10);
  }

  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(a2);
    if (ObjectManipulator)
    {
      if (v7)
      {
        v8 = v7;
        if (OZImageElement::isDropZone(v7))
        {
          Name = OZObjectManipulator::getName((v8 + 16));

          PCString::set(a3, Name);
        }
      }
    }
  }
}

void sub_26012B9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  PCString::~PCString(&a11);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void OZPublishSettings::removeChannelRec(OZPublishSettings *this, OZChannelBase *a2)
{
  {
    v17 = *(v6 + 14);
    if (v17)
    {
      for (i = *v17; i != v17[1]; ++i)
      {
        v19 = *i;
        OZPublishSettings::removeChannelRec(this, v19);
      }
    }
  }

  else
  {
    v7 = *(this + 1);
    v8 = *(this + 2);
    ChannelRootBase = OZChannelBase::getChannelRootBase(a2);
    var3 = ChannelRootBase->var3;
    OZChannelRef::OZChannelRef(v27, a2, ChannelRootBase);
    if (v7 == v8)
    {
LABEL_9:
      var6 = a2->var6;
      if (var6 && (*(*var6 + 120))(var6))
      {
        v15 = a2->var6;
        ProxyChannelForTarget = OZPublishSettings::getProxyChannelForTarget(this, v16);
        if (ProxyChannelForTarget)
        {
          var0 = v16[1].var0;
          for (j = var0[1]; j != *var0; j -= 8)
          {
            v26 = *(j - 1);
            v25 = v26;
            if (v26 != a2 && !OZChannelBase::testFlag(v25, 2))
            {
              OZPublishSettings::addChannelRec(this, v25, ProxyChannelForTarget);
            }
          }

          OZPublishSettings::removeChannelRec(this, v16);
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = (v7 + 1);
      while (1)
      {
        v13 = *v7;
        if (**v7 == var3 && OZChannelRef::operator==(v13 + 1, v27))
        {
          break;
        }

        ++v7;
        ++v11;
        v12 += 8;
        if (v7 == v8)
        {
          goto LABEL_9;
        }
      }

      v20 = *(this + 2);
      v21 = v20 - v12;
      if (v20 != v12)
      {
        memmove(v12 - 8, v12, v20 - v12);
      }

      *(this + 2) = &v12[v21 - 8];
      OZChannelRef::~OZChannelRef(v13 + 1);
      MEMORY[0x2666E9F00](v13, 0x1012C40849EBCB1);
      OZPublishSettings::removeProxyChannelWithValue(this, (this + 32), v11);
    }

    OZChannelRef::~OZChannelRef(v27);
  }
}

void sub_26012BC80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

OZChannelFolder *OZPublishSettings::removeProxyChannelWithValue(OZChannelFolder *this, OZChannelFolder *a2, unsigned int a3)
{
  v3 = *(a2 + 14);
  if (!v3)
  {
    return this;
  }

  v4 = *v3;
  if (*v3 == *(v3 + 8))
  {
    return this;
  }

  v6 = this;
  v7 = 0;
  v8 = MEMORY[0x277CC08F0];
  do
  {
    v9 = v7;
    v7 = *v4;
    if (((*v4)->var7 & 0x1000) != 0 && ((*(v7->var0 + 15))(*v4) & 1) == 0)
    {
      OZPublishSettings::removeProxyChannelWithValue(v6, v13, a3);
    }

    else
    {
      if (v10)
      {
        v11 = v10;
        ValueAsInt = OZChannel::getValueAsInt(v10, v8, 0.0);
        if (ValueAsInt == a3)
        {
          goto LABEL_12;
        }

        if (ValueAsInt > a3)
        {
          OZChannel::setDefaultValue(v11, (ValueAsInt - 1));
          (*(v11->var0 + 35))(v11, 0);
        }
      }
    }

    v7 = v9;
LABEL_12:
    ++v4;
  }

  while (v4 != *(v3 + 8));
  this = a2;
  if (v7)
  {
    OZChannelFolder::removeDescendant(a2, v7);
    v14 = *(v7->var0 + 1);

    return v14(v7);
  }

  return this;
}

OZChannelBase *OZPublishSettings::getProxyChannelForTarget(OZPublishSettings *this, OZChannelBase *a2)
{
  ChannelWithValue = a2;
  if (a2 && ((a2->var7 & 0x1000) == 0 || (OZChannelFolder::hasDescendant((this + 32), a2) & 1) == 0))
  {
    ChannelRootBase = OZChannelBase::getChannelRootBase(ChannelWithValue);
    var3 = ChannelRootBase->var3;
    OZChannelRef::OZChannelRef(v10, ChannelWithValue, ChannelRootBase);
    v6 = *(this + 1);
    v7 = *(this + 2);
    if (v6 == v7)
    {
LABEL_9:
      ChannelWithValue = 0;
    }

    else
    {
      v8 = 0;
      while (var3 != **v6 || !OZChannelRef::operator==(v10, (*v6 + 8)))
      {
        v6 += 8;
        ++v8;
        if (v6 == v7)
        {
          goto LABEL_9;
        }
      }

      ChannelWithValue = OZPublishSettings::findChannelWithValue(this, (this + 32), v8);
    }

    OZChannelRef::~OZChannelRef(v10);
  }

  return ChannelWithValue;
}

void sub_26012BFB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZPublishSettings::getHighestChanID(OZPublishSettings *this, OZChannelFolder *a2)
{
  v2 = *(a2 + 14);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*v2 == *(v2 + 8))
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    v6 = *v3;
    v7 = *(*v3 + 24);
    if (v7 <= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v7;
    }

    if ((v6[57] & 0x10) != 0 && ((*(*v6 + 120))(*v3) & 1) == 0)
    {
      HighestChanID = OZPublishSettings::getHighestChanID(this, v8);
      if (HighestChanID <= v5)
      {
        v5 = v5;
      }

      else
      {
        v5 = HighestChanID;
      }
    }

    ++v3;
  }

  while (v3 != *(v2 + 8));
  return v5;
}

OZChannelBase *OZPublishSettings::getChannelAtIndex(OZPublishSettings *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    return 0;
  }

  v3 = *(v2 + 8 * a2);
  Object = OZScene::getObject(*(this + 20), *v3);
  if (!Object)
  {
    return 0;
  }

  v5 = (*(*Object + 216))(Object);

  return OZChannelRef::getChannel((v3 + 2), v5);
}

OZChannelBase *OZPublishSettings::getTargetChannelForProxy(OZPublishSettings *this, OZChannelBase *a2)
{
  hasDescendant = OZChannelFolder::hasDescendant((this + 32), a2);
  {
    return a2;
  }

  ValueAsInt = OZChannel::getValueAsInt(a2, MEMORY[0x277CC08F0], 0.0);

  return OZPublishSettings::getChannelAtIndex(this, ValueAsInt);
}

OZChannel *OZPublishSettings::findChannelWithValue(OZPublishSettings *this, OZChannelFolder *a2, unsigned int a3)
{
  v3 = *(a2 + 14);
  if (v3)
  {
    v4 = *v3;
    if (*v3 != v3[1])
    {
      v7 = MEMORY[0x277CC08F0];
      do
      {
        v8 = *v4;
        if ((*(*v4 + 57) & 0x10) != 0 && ((*(*v8 + 120))(*v4) & 1) == 0)
        {
          ChannelWithValue = OZPublishSettings::findChannelWithValue(this, v11, a3);
          if (ChannelWithValue)
          {
            return ChannelWithValue;
          }
        }

        else
        {
          if (v9)
          {
            v10 = v9;
            if (OZChannel::getValueAsInt(v9, v7, 0.0) == a3)
            {
              return v10;
            }
          }
        }

        ++v4;
      }

      while (v4 != v3[1]);
    }
  }

  return 0;
}

void *OZPublishSettings::cleanUpMissingChannels(void *this)
{
  v1 = *(this + 1);
  if (v1 != *(this + 2))
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = *v1;
      Object = OZScene::getObject(*(v2 + 160), **v1);
      if (Object && (v6 = (*(*Object + 216))(Object), (this = OZChannelRef::getChannel((v4 + 2), v6)) != 0))
      {
        ++v3;
        ++v1;
      }

      else
      {
        v7 = *(v2 + 16);
        v8 = v7 - (v1 + 1);
        if (v7 != v1 + 1)
        {
          memmove(v1, v1 + 1, v7 - (v1 + 1));
        }

        *(v2 + 16) = v1 + v8;
        OZChannelRef::~OZChannelRef(v4 + 1);
        MEMORY[0x2666E9F00](v4, 0x1012C40849EBCB1);
        this = OZPublishSettings::removeProxyChannelWithValue(v2, (v2 + 32), v3);
      }
    }

    while (v1 != *(v2 + 16));
  }

  return this;
}

uint64_t OZPublishSettings::writeHeader(OZPublishSettings *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZPublishSettingsScope);
  (*(*a2 + 16))(a2, 34);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZPublishSettings::writeBody(OZPublishSettings *this, PCSerializerWriteStream *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  PCSerializerWriteStream::pushScope(a2, &OZPublishSettingsScope);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 48))(a2, 2);
  v4 = (*(*a2 + 24))(a2);
  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v5 != v6)
  {
    v27[1] = v27;
    MEMORY[0x28223BE20](v4);
    v8 = v27 - v7;
    v9 = 0;
    do
    {
      v10 = *v6;
      Object = OZScene::getObject(*(this + 20), **v6);
      v13 = 0;
      if (Object)
      {
        v12 = (*(*Object + 216))(Object);
        if (OZChannelRef::getChannel((v10 + 2), v12))
        {
          v13 = 1;
        }
      }

      v8[v9] = v13;
      ++v6;
      ++v9;
    }

    while (v6 != v5);
    v14 = *(this + 18);
    if (v14)
    {
      v15 = *v14;
      v16 = v14[1];
      if (*v14 != v16)
      {
        v17 = MEMORY[0x277CC08F0];
        do
        {
          v18 = *v15;
          v19 = OZChannelBase::testFlag(*v15, 8);
          if (v18)
          {
            v20 = v19;
          }

          else
          {
            v20 = 1;
          }

          if ((v20 & 1) == 0)
          {
            if (v21)
            {
              v22 = v21;
              ValueAsInt = OZChannel::getValueAsInt(v21, v17, 0.0);
              if (v8[ValueAsInt] == 1)
              {
                v24 = *(*(this + 1) + 8 * ValueAsInt);
                v25 = (v24 + 2);
                if (*(v24 + 31) < 0)
                {
                  v25 = *v25;
                }

                PCString::PCString(&v28, v25);
                (*(*a2 + 16))(a2, 2);
                (*(*a2 + 144))(a2, 2, *v24);
                (*(*a2 + 200))(a2, 1, &v28);
                (*(*a2 + 200))(a2, 3, &v22->var4);
                (*(*a2 + 24))(a2);
                PCString::~PCString(&v28);
              }
            }
          }

          ++v15;
        }

        while (v15 != v16);
      }
    }
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZPublishSettings::parseBegin(OZPublishSettings *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZPublishSettingsScope);
  OZChannelVaryingFolder::parseBegin((this + 32), a2);
  OZPublishSettings::clearAll(this);
  *(this + 169) = 1;
  return 1;
}

uint64_t OZPublishSettings::parseElement(OZPublishSettings *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v11 = 0;
  PCSharedCount::PCSharedCount(&v10);
  v9 = 0;
  PCSharedCount::PCSharedCount(&v8);
  OZChannelFolder::parseElement((this + 32), a2, a3);
  v6 = *(a3 + 2);
  if (v6 == 1)
  {
    (*(*a3 + 32))(a3, &v11);
  }

  else if (v6 == 2)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 2, &v9);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 1, &v10);
    if (PCSerializerReadStream::getAttributeAsString(a2, a3, 3, &v8))
    {
      OZPublishSettings::getHighestChanID(this, (this + 32));
      operator new();
    }

    operator new();
  }

  PCString::~PCString(&v8);
  PCString::~PCString(&v10);
  return 1;
}

void sub_26012CB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, uint64_t a14, PCString a15)
{
  MEMORY[0x2666E9F00](v15, 0x10E1C409BAC03F7);
  PCString::~PCString(&a13);
  PCString::~PCString(&a15);
  _Unwind_Resume(a1);
}

void *OZPublishSettings::didFinishLoadingIntoScene(OZPublishSettings *this)
{
  OZChannelBase::setFlag((this + 32), 8, 1);

  return OZPublishSettings::cleanUpMissingChannels(this);
}

void OZInspectorState::OZInspectorState(OZInspectorState *this)
{
  *this = &unk_28728C2D0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  v1 = (this + 8);
  *(this + 3) = 0;
  PCString::PCString(&v4, "./1/100");
  PCString::PCString(&v3, "./1/200");
  v5 = &v4;
  LOBYTE(std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(v1, &v4)[1].info) = 1;
  v5 = &v3;
  LOBYTE(std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(v1, &v3)[1].info) = 1;
  PCString::PCString(&v2, "./1/344");
  v5 = &v2;
  LOBYTE(std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(v1, &v2)[1].info) = 1;
  PCString::~PCString(&v2);
  PCString::~PCString(&v3);
  PCString::~PCString(&v4);
}

void sub_26012CD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy(v12, *v13);
  _Unwind_Resume(a1);
}

uint64_t OZInspectorState::writeHeader(uint64_t this, PCSerializerWriteStream *a2)
{
  if (*(this + 24))
  {
    PCSerializerWriteStream::pushScope(a2, &OZInspectorScope);
    (*(*a2 + 16))(a2, 85);

    return PCSerializerWriteStream::popScope(a2);
  }

  return this;
}

void OZInspectorState::writeBody(OZInspectorState *this, PCSerializerWriteStream *a2)
{
  PCString::PCString(&v10, "./1/100");
  PCString::PCString(&v9, "./1/200");
  if (*(this + 3))
  {
    PCSerializerWriteStream::pushScope(a2, &OZInspectorScope);
    v4 = *(this + 1);
    v5 = this + 16;
    if (v4 != v5)
    {
      do
      {
        if ((v4[5].var0 & 1) != 0 || PCString::compare(v4 + 4, &v10) && PCString::compare(v4 + 4, &v9))
        {
          (*(*a2 + 16))(a2, 1);
          (*(*a2 + 200))(a2, 1, &v4[4].var0);
          (*(*a2 + 152))(a2, 2, LOBYTE(v4[5].var0));
          (*(*a2 + 24))(a2);
        }

        var0 = v4[1].var0;
        if (var0)
        {
          do
          {
            v7 = var0;
            var0 = var0->isa;
          }

          while (var0);
        }

        else
        {
          do
          {
            v7 = v4[2].var0;
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v5);
    }

    PCSerializerWriteStream::popScope(a2);
  }

  PCString::~PCString(&v9);
  PCString::~PCString(&v10);
}

uint64_t OZInspectorState::parseElement(PCString *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v8);
  v7 = 0;
  if (*(a3 + 2) == 1)
  {
    (*(*a3 + 96))(a3, 1, &v8);
    (*(*a3 + 152))(a3, 2, &v7);
    v5 = v7;
    v9 = &v8;
    LOBYTE(std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(this + 1, &v8)[1].info) = v5;
  }

  PCString::~PCString(&v8);
  return 0;
}

void OZInspectorState::~OZInspectorState(PCString **this)
{
  *this = &unk_28728C2D0;
  std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy((this + 1), this[2]);
}

{
  *this = &unk_28728C2D0;
  std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy((this + 1), this[2]);

  JUMPOUT(0x2666E9F00);
}

__CFString *std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(PCString *a1, PCString *this)
{
  var0 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__find_equal<PCString>(a1, &v4, this)->var0;
  if (!var0)
  {
    std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>();
  }

  return var0;
}

__CFString *std::map<PCString,BOOL>::map[abi:ne200100](__CFString *a1, uint64_t a2)
{
  a1->data = 0;
  a1->info = 0;
  a1->isa = &a1->info;
  std::map<PCString,BOOL>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<PCString,BOOL>,std::__tree_node<std::__value_type<PCString,BOOL>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

__CFString *std::map<PCString,BOOL>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<PCString,BOOL>,std::__tree_node<std::__value_type<PCString,BOOL>,void *> *,long>>>(__CFString *result, PCString *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString const,BOOL> const&>(v5, v5 + 1, v4 + 4);
      var0 = v4[1].var0;
      if (var0)
      {
        do
        {
          v7 = var0;
          var0 = var0->isa;
        }

        while (var0);
      }

      else
      {
        do
        {
          v7 = v4[2].var0;
          v8 = v7->isa == v4;
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

__CFString *std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString const,BOOL> const&>(PCString *a1, PCString *a2, PCString *a3)
{
  var0 = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__find_equal<PCString>(a1, a2, &v6, &v5, a3)->var0;
  if (!var0)
  {
    std::__tree<std::__value_type<PCString,BOOL>,std::__map_value_compare<PCString,std::__value_type<PCString,BOOL>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,BOOL>>>::__construct_node<std::pair<PCString const,BOOL> const&>();
  }

  return var0;
}

uint64_t OZGuide::writeHeader(OZGuide *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZGuideScope);
  (*(*a2 + 16))(a2, 76);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZGuide::writeBody(OZGuide *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZGuideScope);
  v4 = *(this + 2);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 80))(a2, v4);
  (*(*a2 + 24))(a2);
  v5 = *(this + 12);
  (*(*a2 + 16))(a2, 2);
  (*(*a2 + 48))(a2, v5);
  v6 = *(*a2 + 24);

  return v6(a2);
}

uint64_t OZGuide::parseElement(OZGuide *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v3 = *(a3 + 2);
  if (v3 == 2)
  {
    (*(*a3 + 72))(a3, this + 12);
  }

  else if (v3 == 1)
  {
    (*(*a3 + 56))(a3, this + 8);
  }

  return 0;
}

void OZGuideSet::OZGuideSet(OZGuideSet *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_28728C340;
  *(this + 1) = this + 16;
}

uint64_t OZGuideSet::writeHeader(OZGuideSet *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZGuideSetScope);
  (*(*a2 + 16))(a2, 75);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZGuideSet::writeBody(OZGuideSet *this, PCSerializerWriteStream *a2, uint64_t a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZGuideSetScope);
  v6 = *(this + 1);
  if (v6 != (this + 16))
  {
    do
    {
      (*(*(v6 + 4) + 16))(v6 + 4, a2, a3);
      (*(*(v6 + 4) + 24))(v6 + 4, a2, a3, 1, 1);
      (*(*a2 + 24))(a2);
      v7 = *(v6 + 1);
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
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != (this + 16));
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZGuideSet::parseEnd(OZGuideSet *this, PCSerializerReadStream *a2)
{
  if (OZGuideSet::_reading)
  {
    std::__tree<OZGuide>::__emplace_unique_key_args<OZGuide,OZGuide const&>(this + 8, OZGuideSet::_reading);
    if (OZGuideSet::_reading)
    {
      (*(*OZGuideSet::_reading + 8))(OZGuideSet::_reading);
    }
  }

  OZGuideSet::_reading = 0;
  return 0;
}

uint64_t OZGuideSet::parseElement(OZGuideSet *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 76)
  {
    if (!OZGuideSet::_reading)
    {
      operator new();
    }

    std::__tree<OZGuide>::__emplace_unique_key_args<OZGuide,OZGuide const&>(this + 8, OZGuideSet::_reading);
    PCSerializerReadStream::pushHandler(a2, OZGuideSet::_reading);
  }

  return 0;
}

uint64_t *std::__tree<OZGuide>::__find_equal<OZGuide>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(a3 + 8);
    while (1)
    {
      v7 = v4;
      v8 = *(v4 + 44);
      if (*(a3 + 12))
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_7:
        v9 = *(v7 + 10);
        if (v6 >= v9)
        {
          if (v9 >= v6)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }

LABEL_8:
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_11:
        result = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v7 = result;
LABEL_14:
  *a2 = v7;
  return result;
}

uint64_t std::__tree<OZGuide>::__emplace_unique_key_args<OZGuide,OZGuide const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<OZGuide>::__find_equal<OZGuide>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void OZRig::OZRig(OZRig *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  *v5 = &unk_28728C498;
  v5[2] = &unk_28728C960;
  v5[6] = &unk_28728CBB8;
  PCString::PCString(&v6, "Channel Widgets");
  OZChannelFolder::OZChannelFolder((this + 1088), &v6, (this + 56), 0x64u, 2u, 0);
  PCString::~PCString(&v6);
  *(this + 152) = this + 1216;
  *(this + 153) = this + 1216;
  *(this + 154) = 0;
  OZChannelBase::resetFlag((this + 56), 0x80000, 0);
}

void sub_26012DCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  v12 = v11;
  std::__list_imp<unsigned int>::clear(v12);
  OZChannelFolder::~OZChannelFolder((v10 + 1088));
  OZSceneNode::~OZSceneNode(v10);
  _Unwind_Resume(a1);
}

void OZRig::OZRig(OZRig *this, const OZRig *a2, uint64_t a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  *v6 = &unk_28728C498;
  *(v6 + 16) = &unk_28728C960;
  *(v6 + 48) = &unk_28728CBB8;
  OZChannelFolder::OZChannelFolder((v6 + 1088), (a2 + 1088), (this + 56));
  *(this + 152) = this + 1216;
  *(this + 153) = this + 1216;
  *(this + 154) = 0;
  if ((a3 & 1) == 0)
  {
    v7 = a2 + 1216;
    if ((a2 + 1216) != *(a2 + 153))
    {
      do
      {
        v8 = (*(**(*(*v7 + 16) + 8) + 24))(*(*(*v7 + 16) + 8), *(*v7 + 16), a3);
        if (v8)
        {
          if (v9)
          {
            v10 = v9;
            if ((a3 & 8) == 0)
            {
              OZObjectManipulator::appendCopyToName((v9 + 16));
              v11 = (*(*v10 + 640))(v10);
              OZChannelBase::setNameUnset(v11, 1);
            }

            (*(*this + 984))(this, v10, 0);
          }
        }

        v7 = *v7;
      }

      while (v7 != *(a2 + 153));
    }
  }
}

void OZRig::~OZRig(OZRig *this)
{
  *this = &unk_28728C498;
  *(this + 2) = &unk_28728C960;
  *(this + 6) = &unk_28728CBB8;
  for (i = *(this + 154); i; i = *(this + 154))
  {
    v3 = *(this + 153);
    v4 = v3[1];
    v5 = v3[2];
    v6 = *v3;
    *(v6 + 8) = v4;
    *v4 = v6;
    *(this + 154) = i - 1;
    operator delete(v3);
    v7 = (*(*v5 + 640))(v5);
    OZChannelFolder::removeDescendant((this + 1088), v7);
    (*(*v5 + 256))(v5, 0);
    v8 = *(this + 121);
    if (v8)
    {
      OZScene::unregisterNode(v8, v5);
      OZScene::removeAllDependencies(*(this + 121), v5);
    }

    (*(*v5 + 8))(v5);
  }

  std::__list_imp<unsigned int>::clear(this + 152);
  OZChannelFolder::~OZChannelFolder((this + 1088));

  OZSceneNode::~OZSceneNode(this);
}

{
  OZRig::~OZRig(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZRig::~OZRig(OZRig *this)
{
  OZRig::~OZRig((this - 16));
}

{
  OZRig::~OZRig((this - 48));
}

{
  OZRig::~OZRig((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRig::~OZRig((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZRig::getDescendantAtIndex(OZRig *this, int a2)
{
  v2 = this + 1216;
  v3 = *(this + 153);
  v4 = v3 != this + 1216;
  if (v3 != this + 1216 && a2 != 0)
  {
    v6 = a2 - 1;
    do
    {
      v3 = *(v3 + 1);
      v8 = v6-- != 0;
      v4 = v3 != v2;
    }

    while (v3 != v2 && v8);
  }

  if (!v4)
  {
    return 0;
  }

  v9 = *(v3 + 2);
  if (v9)
  {
    return v9 + 16;
  }

  else
  {
    return 0;
  }
}

void OZRig::addDescendantAfter(OZRig *this, OZSceneNode *lpsrc, OZSceneNode *a3)
{
  if (lpsrc)
  {
  }

  {
    v5 = this + 1216;
    for (i = *(this + 153); ; i = *(i + 8))
    {
      if (i == v5)
      {
        goto LABEL_12;
      }

      if (*(i + 16) == a3)
      {
        break;
      }
    }

    if (i != v5)
    {
      operator new();
    }
  }

LABEL_12:
  operator new();
}

void OZRig::addDescendantBefore(OZRig *this, OZSceneNode *lpsrc, OZSceneNode *a3)
{
  if (lpsrc)
  {
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else if (!a3)
  {
    goto LABEL_9;
  }

  {
      ;
    }
  }

LABEL_9:
  operator new();
}

OZChannelFolder *OZRig::removeDescendant(OZRig *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = this + 1216;
  for (i = *(this + 153); i != v5; i = i[1])
  {
    if (i[2] == v4)
    {
      if (i != v5)
      {
        (*(*v4 + 256))(v4, 0);
        v8 = *i;
        v7 = i[1];
        *(v8 + 8) = v7;
        *v7 = v8;
        --*(this + 154);
        operator delete(i);
        (*(*this + 496))(this);
        if ((*(*this + 272))(this))
        {
          v9 = (*(*this + 272))(this);
          OZScene::unregisterNode(v9, v4);
          v10 = (*(*this + 272))(this);
          OZScene::removeAllDependencies(v10, v4);
        }
      }

      break;
    }
  }

  v11 = (*(*lpsrc + 640))(lpsrc);

  return OZChannelFolder::removeDescendant((this + 1088), v11);
}

uint64_t OZRig::writeBody(unsigned int **this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
    PCSerializerWriteStream::pushScope(a2, &OZRigScope);
    v10 = (*(*this + 128))(this);
    v11 = (*(*this + 129))(this);
    if (v10 != v11)
    {
      v12 = v11;
      do
      {
        v13 = *(v10 + 16);
        if (!OZChannelBase::testFlag((v13 + 56), 8))
        {
          v15 = *(v13 + 48);
          v14 = v13 + 48;
          (*(v15 + 16))(v14, a2, 0);
          (*(*v14 + 24))(v14, a2, 0, 1, 1);
          (*(*a2 + 24))(a2);
        }

        v10 = *(v10 + 8);
      }

      while (v10 != v12);
    }

    PCSerializerWriteStream::popScope(a2);
  }

  return OZSceneNode::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZRig::parseBegin(OZRig *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZRigScope);
  return 1;
}

uint64_t non-virtual thunk toOZRig::parseBegin(OZRig *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZRigScope);
  return 1;
}

uint64_t OZRig::parseElement(OZRig *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZSceneNode::parseElement(this, a2, a3);
  if (*(a3 + 2) == 62)
  {
    PCSharedCount::PCSharedCount(&v12);
    *v11 = 0;
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v11);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v12);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v11[1]);
    v6 = OZFactories::lookupFactory(*(theApp + 32), v11[0]);
    if (v6)
    {
      if (v7)
      {
        v8 = (*(*v7 + 168))(v7, &v12, v11[1]);
        if (v8)
        {
        }

        else
        {
          v9 = 0;
        }

        OZChannelBase::setID((v9 + 56), v11[1]);
        (*(*v9 + 256))(v9, this);
        operator new();
      }
    }

    PCString::~PCString(&v12);
  }

  return 1;
}

void OZRig::allowDrag(OZRig *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  *a5 = 0;
  if (lpsrc)
  {
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = *(lpsrc + 1);
  v28 = xmmword_260848360;
  if (OZFactory::isKindOfClass(v16, &v28) && (*(*this + 640))(this) == a3)
  {
    if (*a6 == 1)
    {
      if (OZRigWidget::CanRigChannel(v19, v20))
      {
        *(this + 310) = 3;
        *a5 = a4 & 1;
        v21 = 1;
LABEL_36:
        *a6 = v21;
      }
    }
  }

  else
  {
    if (!v15)
    {
      OZSceneNode::allowDrag(this, lpsrc, a3, a4, a5, a6, a7);
      return;
    }

    v17 = this + 1216;
    for (i = *(this + 153); ; i = *(i + 8))
    {
      if (i == v17)
      {
        goto LABEL_17;
      }

      if (*(i + 16) == v15)
      {
        break;
      }
    }

    if (i == v17 || (*(*this + 640))(this) != a3)
    {
LABEL_17:
      if (!(*(*v15 + 272))(v15) || (v22 = (*(*v15 + 272))(v15), v22 == (*(*this + 272))(this)))
      {
        v23 = *(this + 153);
        if (v23 == v17)
        {
          goto LABEL_33;
        }

        v27 = a4;
        v24 = 0;
        v25 = -1;
        v26 = -1;
        do
        {
          if ((*(**(v23 + 16) + 640))(*(v23 + 16)) == a3)
          {
            v25 = v24;
          }

          if (*(v23 + 16) == v14)
          {
            v26 = v24;
          }

          if ((v26 & 0x8000000000000000) == 0 && (v25 & 0x8000000000000000) == 0)
          {
            break;
          }

          ++v24;
          v23 = *(v23 + 8);
        }

        while (v23 != v17);
        if (v26 != v25 && ((v25 | v26) & 0x8000000000000000) == 0)
        {
          *a5 = v27 & 2;
          if (v26 <= v25)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          goto LABEL_36;
        }

        LOBYTE(a4) = v27;
        if (v25 < 0)
        {
LABEL_33:
          if ((*(*this + 640))(this) != a3)
          {
            return;
          }
        }

        *a5 = a4 & 1;
      }
    }
  }
}

uint64_t OZRig::performDragOperation(OZRig *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  v16 = (*(*this + 272))(this);
  if (v16)
  {
    v17 = *(v16 + 1584);
  }

  else
  {
    v17 = 0;
  }

  if (*(this + 1244) == 1)
  {
    if (a2)
    {
    }

    else
    {
      v18 = 0;
    }

    if (*(this + 312))
    {
      v22 = *(*(this + 153) + 16);
      if (v22)
      {
      }

      else
      {
        v23 = 0;
      }

      OZRigWidget::addChannel(v23, v18, 0);
    }

    if (v17)
    {
      PCURL::PCURL(&v28, @"Undo Add Widget to Rig");
      OZChannelBase::setRangeName(v17, &v28);
      PCString::~PCString(&v28);
    }

    OZRig::createWidget(this, *(this + 310));
  }

  if (*(this + 1245) == 1)
  {
    v20 = v19[120];
    if (v20)
    {
      if (!*(this + 312))
      {
        PCURL::PCURL(&v28, @"Undo Reorder");
        (*(v19[2] + 176))(v19 + 2, &v28, 3);
        PCString::~PCString(&v28);
      }

      (*(*v20 + 1000))(v20, v19);
    }

    else
    {
      PCURL::PCURL(&v28, @"Undo Drop");
      (*(*(this + 2) + 176))(this + 16, &v28, 3);
      PCString::~PCString(&v28);
    }

    v24 = *(this + 153);
    if (v24 != (this + 1216))
    {
      v25 = v24 + 2;
      if ((*(*v24[2] + 640))(v24[2]) == a3)
      {
        v26 = 0;
LABEL_32:
        if (a5 == 3)
        {
          v26 = *v25;
        }

        goto LABEL_34;
      }

      while (1)
      {
        v24 = v24[1];
        if (v24 == (this + 1216))
        {
          break;
        }

        v26 = *v25;
        v25 = v24 + 2;
        if ((*(*v24[2] + 640))(v24[2]) == a3)
        {
          goto LABEL_32;
        }
      }
    }

    v26 = 0;
LABEL_34:
    (*(*this + 984))(this, v19, v26);
    v27 = *(this + 312) + 1;
    *(this + 312) = v27;
    if (v27 == a6)
    {
      (*(*this + 496))(this);
      if (v17)
      {
        OZDocument::postNotification(v17, 16);
      }
    }

    return 1;
  }

  return OZSceneNode::performDragOperation(this, a2, a3, a4, a5, a6, a7, a8);
}

void OZRig::createWidget(OZRig *this, const PCString *a2)
{
  PCSharedCount::PCSharedCount(&v13);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      PCURL::PCURL(&v12, @"Widget Type Slider");
      PCString::set(&v13, &v12);
      PCString::~PCString(&v12);
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_8;
      }

      PCURL::PCURL(&v12, @"Widget Type Aspect Ratio");
      PCString::set(&v13, &v12);
      PCString::~PCString(&v12);
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        PCURL::PCURL(&v12, @"Widget Type Pop Up");
        PCString::set(&v13, &v12);
        PCString::~PCString(&v12);
        goto LABEL_11;
      }

LABEL_8:
      PCPrint("File %s, line %d should not have been reached:\n\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZRig.cpp");
      pcAbortImpl();
    }

    PCURL::PCURL(&v12, @"Widget Type Checkbox");
    PCString::set(&v13, &v12);
    PCString::~PCString(&v12);
  }

LABEL_11:
  v11 = OZRigWidget::create(&v13, a2);
  OZRig::addWidget(this, v11);
}

void sub_26012FA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a13);
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

void OZRig::addWidget(OZRig *this, OZRigWidget *a2)
{
  v4 = (*(*a2 + 640))(a2);
  OZChannelFolder::push_front((this + 1088), v4);
  (*(*a2 + 256))(a2, this);
  v5 = (*(*this + 272))(this);
  if (v5)
  {
    v6 = v5;
    OZScene::registerNode(v5, a2);
    OZScene::addAllDependencies(v6, a2);
    OZDocument::postNotification(*(v6 + 1584), 16);
    (*(*a2 + 280))(a2, v6);
  }

  operator new();
}

void OZLiCachingDelegate::OZLiCachingDelegate(OZLiCachingDelegate *this)
{
  *this = &unk_28728CCE0;
  PCSingleton::PCSingleton((this + 8), 0);
  *this = &unk_28728CC28;
  *(this + 1) = &unk_28728CC78;
  LiSetCachingDelegate(this);
}

uint64_t OZLiCachingDelegate::instance(OZLiCachingDelegate *this)
{
  {
    operator new();
  }

  return OZLiCachingDelegate::instance(void)::inst;
}

void sub_26012FDA0(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x81C40803F642BLL);
  _Unwind_Resume(a1);
}

uint64_t OZLiCachingDelegate::addTexture(int a1, ProGL::TextureHandle *a2, int a3, PCHash128 *a4)
{
  v7 = PGCreateTextureFromPGLTexture(a2, &v11);
  v8 = OZCacheManager::Instance(v7);
  v9 = OZCacheManager::addTexture(v8, &v11, a2 + 1, a3, a4);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v9;
}

void sub_26012FE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL OZLiCachingDelegate::getTextureForKey(OZCacheManager *a1, int a2, const PCHash128 *a3, uint64_t a4)
{
  v7 = OZCacheManager::Instance(a1);
  OZCacheManager::getTextureForKey(v7, a2, a3, (a4 + 16), &v13);
  v8 = v13;
  if (v13)
  {
    PGTexture::getPGLTexture(v13, &v12);
    v9 = v12;
    v12 = 0uLL;
    v10 = *(a4 + 8);
    *a4 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }
    }
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v8 != 0;
}

void sub_26012FF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void OZLiCachingDelegate::disableLimits(OZLiCachingDelegate *this)
{
  v1 = PGTextureCache::instance(this);

  PGTextureCache::disableLimits(v1);
}

void OZLiCachingDelegate::enableLimits(OZLiCachingDelegate *this)
{
  v1 = PGTextureCache::instance(this);

  PGTextureCache::enableLimits(v1);
}

void OZLiCachingDelegate::addBitmap(OZCacheManager *a1, void *a2, PCHash128 *a3, double a4)
{
  OZCacheManager::Instance(a1);
  OZCacheManager::addImage(a2, a3, &v7, a4);
  ProCore_Impl::PCNSRefImpl::release(&v7);
}

void OZLiCachingDelegate::getBitmapForKey(OZLiCachingDelegate *this@<X0>, const PCHash128 *a2@<X1>, void *a3@<X8>)
{
  OZCacheManager::Instance(this);

  OZCacheManager::getImageForKey(a2, a3);
}

void OZLiCachingDelegate::~OZLiCachingDelegate(OZLiCachingDelegate *this)
{
  PCSingleton::~PCSingleton((this + 8));
}

{
  PCSingleton::~PCSingleton((this + 8));

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZLiCachingDelegate::~OZLiCachingDelegate(OZLiCachingDelegate *this)
{
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t AbsoluteNSURL(NSString *a1, NSString *a2)
{
  v3 = a1;
  if ([objc_msgSend(objc_msgSend(MEMORY[0x277CBEBC0] URLWithString:{a1), "path"), "characterAtIndex:", 0}] != 47)
  {
    v3 = [(NSString *)a2 stringByAppendingPathComponent:v3];
  }

  v4 = MEMORY[0x277CBEBC0];

  return [v4 fileURLWithPath:v3];
}

id LoadSCNSceneFromFile(NSURL *a1)
{
  result = [MEMORY[0x277CDBB00] sceneSourceWithURL:a1 options:0];
  if (result)
  {
    v2 = result;
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v4 forKey:*MEMORY[0x277CDBC00]];
    [v3 setObject:*MEMORY[0x277CDBBF8] forKey:*MEMORY[0x277CDBBF0]];
    v5 = [v2 sceneWithOptions:v3 error:0];

    return v5;
  }

  return result;
}

uint64_t New3DEngineSceneFileImpl(OZ3DEngineSceneFile *a1, const __CFURL **this)
{
  PCURL::getExtension(this, &v8);
  PCString::PCString(&v7, "usdz");
  v2 = PCString::caseInsensitiveCompare(&v8, &v7);
  PCString::~PCString(&v7);
  if (!v2)
  {
    operator new();
  }

  PCString::PCString(&v7, "scn");
  v3 = PCString::caseInsensitiveCompare(&v8, &v7);
  PCString::~PCString(&v7);
  if (!v3)
  {
    operator new();
  }

  PCString::PCString(&v7, "arface");
  v4 = PCString::caseInsensitiveCompare(&v8, &v7);
  PCString::~PCString(&v7);
  if (!v4)
  {
    operator new();
  }

  PCString::PCString(&v7, "obj");
  v5 = PCString::caseInsensitiveCompare(&v8, &v7);
  PCString::~PCString(&v7);
  if (!v5)
  {
    operator new();
  }

  PCString::~PCString(&v8);
  return 0;
}

void sub_260130450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  MEMORY[0x2666E9F00](v10, 0x10E1C400C931945);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZ3DEngineSceneFile::willDoCollectOperation(OZ3DEngineSceneFile *this, NSString *a2)
{
  FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
  if ((*(*FileImpl + 64))(FileImpl))
  {
    v5 = OZ3DEngineSceneFile::getFileImpl(this);
    (*(*v5 + 104))(v5, a2);
  }

  return 1;
}

uint64_t OZ3DEngineSceneFile::didDoCollectOperation(OZ3DEngineSceneFile *this, OZCopyFootageInfo *a2)
{
  FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
  result = (*(*FileImpl + 64))(FileImpl);
  if (result)
  {
    v5 = *(*OZ3DEngineSceneFile::getFileImpl(this) + 112);

    return v5();
  }

  return result;
}

uint64_t OZ3DEngineSceneFile::clearLoadedFile(OZ3DEngineSceneFile *this)
{
  result = *(this + 216);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 216) = 0;
  return result;
}

uint64_t OZ3DEngineSceneFile::openMedia(OZ3DEngineSceneFile *this)
{
  if (*(this + 1560))
  {
    return 0;
  }

  if (*(this + 193))
  {
    FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
    OZ3DEngineSceneFileImpl::readFile(FileImpl);
    v4 = *(OZ3DEngineSceneFile::getFileImpl(this) + 256) != 1;
    OZSceneNodeFile::setIsFileMissing(this, v4);
  }

  if ((*(*this + 1432))(this) && *(this + 194))
  {
    v5 = OZ3DEngineSceneFile::getFileImpl(this);
    OZ3DEngineSceneFileImpl::readFile(v5);
    v6 = *(OZ3DEngineSceneFile::getFileImpl(this) + 256) != 1;
    OZSceneNodeFile::setIsFileMissing(this, v6);
  }

  v7 = (*(*this + 1408))(this);
  if (v7)
  {
    PCURL::getAsFileSystemString(v7, &v8);
    PCString::set(this + 196, &v8);
    PCString::~PCString(&v8);
  }

  LODWORD(result) = (*(*this + 1432))(this);
  if ((result & 1) == 0)
  {
    *(this + 1560) = 1;
  }

  return result;
}

uint64_t OZ3DEngineSceneFileImpl::readFile(OZ3DEngineSceneFileImpl *this)
{
  v2 = (this + 280);
  PCMutex::lock((this + 280));
  if (!*(this + 64))
  {
    v3 = (*(*this + 136))(this);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if (*(this + 64) != v4)
    {
      *(this + 64) = v4;
      if (v3)
      {
        OZ3DEngineSceneFile::didReadSceneFile(*(this + 33), 1);
      }
    }
  }

  return PCMutex::unlock(v2);
}

uint64_t OZ3DEngineSceneFile::isSceneFileValid(OZ3DEngineSceneFile *this, NSString *a2)
{
  if (([-[OZ3DEngineSceneFile pathExtension](this "pathExtension")] & 1) == 0)
  {
    result = LoadSCNSceneFromFile([MEMORY[0x277CBEBC0] fileURLWithPath:this]);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t OZ3DEngineSceneFile::get3DScene(OZ3DEngineSceneFile *this)
{
  FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
  OZ3DEngineSceneFileImpl::readFile(FileImpl);
  return FileImpl + 8;
}

uint64_t OZ3DEngineSceneFile::getBounds(OZ3DEngineSceneFile *a1, double *a2, __int128 *a3)
{
  result = (*(*a1 + 1432))(a1);
  if (result)
  {
    v7 = 0.0;
    v8 = -1.0;
    v9 = 0.0;
    v10 = -1.0;
    if (!a2)
    {
      return result;
    }

LABEL_11:
    *a2 = v7;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v8;
    return result;
  }

  result = OZ3DEngineSceneFile::getFileImpl(a1);
  if (result)
  {
    if (*(a3 + 202))
    {
      v11 = MEMORY[0x277CC08F0];
    }

    else
    {
      v11 = a3;
    }

    v14 = *v11;
    v15 = *(v11 + 2);
    result = (*(*result + 128))(v16);
    v7 = *v16;
    v12 = *&v16[1];
    v9 = *&v16[2];
    v13 = *&v16[3];
  }

  else
  {
    v9 = 1.0;
    v13 = -1.0;
    v12 = -1.0;
    v7 = 1.0;
  }

  v10 = v12 - v7;
  v8 = v13 - v9;
  if (a2)
  {
    goto LABEL_11;
  }

  return result;
}

double OZ3DEngineSceneFile::getPreviewBounds(uint64_t a1, double *a2)
{
  (*(*a1 + 1576))(a1);
  v4 = a2[2];
  result = a2[3];
  if (v4 <= result)
  {
    if (v4 < result)
    {
      *a2 = result / v4 * *a2;
      a2[2] = result;
      v4 = result;
    }
  }

  else
  {
    a2[1] = v4 / result * a2[1];
    a2[3] = v4;
    result = v4;
  }

  if (v4 < 1.0 && v4 > 0.0)
  {
    v5 = vcvtmd_s64_f64(v4 + 0.5 + 0.0000001);
    *a2 = v5 / v4 * *a2;
    a2[2] = v5;
  }

  if (result < 1.0 && result > 0.0)
  {
    v6 = vcvtmd_s64_f64(result + 0.5 + 0.0000001);
    result = v6 / result * a2[1];
    a2[1] = result;
    a2[3] = v6;
  }

  return result;
}

float OZ3DEngineSceneFile::getDimensions(OZ3DEngineSceneFile *this, float *a2, float *a3, const OZRenderState *a4)
{
  v14[0] = 0;
  v14[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  (*(*this + 1576))(this, v14, a4);
  v11 = *(&v15 + 1);
  v12 = *&v15;
  *a2 = v12;
  result = v11;
  *a3 = result;
  return result;
}

float non-virtual thunk toOZ3DEngineSceneFile::getDimensions(OZ3DEngineSceneFile *this, float *a2, float *a3, const OZRenderState *a4)
{
  v14[0] = 0;
  v14[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  (*(*(this - 197) + 1576))(this - 1576, v14, a4);
  v11 = *(&v15 + 1);
  v12 = *&v15;
  *a2 = v12;
  result = v11;
  *a3 = result;
  return result;
}

void OZ3DEngineSceneFile::getHeliumGraph(OZ3DEngineSceneFile *a1, uint64_t a2, uint64_t a3, FxColorDescription *a4, uint64_t a5)
{
  LiRenderingTechnology::getLogLithium((a2 + 1316));
  FxColorDescription::setDynamicRange(a4, 0);
  BlendingGamma = OZRenderParams::getBlendingGamma(a2);
  RenderNodeList = HGRenderJob::GetRenderNodeList(a2);
  LiRenderParameters::LiRenderParameters(v15, a4, RenderNodeList, BlendingGamma);
  LiAgent::LiAgent(v14, v15, a5, 0);
  v11 = HGObject::operator new(0x2C0uLL);
  LiHe3DEngineNode::LiHe3DEngineNode(v11);
  CGColorSpace = FxColorDescription::getCGColorSpace(a4);
  *(v11 + 86) = CGColorSpace;
  *(v11 + 87) = PCColorSpaceCache::cgRec709Linear(CGColorSpace);
  FileImpl = OZ3DEngineSceneFile::getFileImpl(a1);
  OZ3DEngineSceneFileImpl::readFile(FileImpl);
  std::recursive_mutex::lock((FileImpl + 8));
  operator new();
}

void sub_2601312AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HGObject::operator delete(v11);
  HGTransform::~HGTransform(&a9);
  PCSharedCount::~PCSharedCount(v12 + 1);
  if (STACK[0x260])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x260]);
  }

  std::recursive_mutex::unlock((v10 + 8));
  (*(*v9 + 24))(v9);
  LiAgent::~LiAgent(&STACK[0x268]);
  LiRenderParameters::~LiRenderParameters(&STACK[0x438]);
  _Unwind_Resume(a1);
}

double OZ3DEngineSceneFile::getSceneVolume(OZ3DEngineSceneFile *a1, _OWORD *a2)
{
  FileImpl = OZ3DEngineSceneFile::getFileImpl(a1);
  if (FileImpl)
  {
    (*(*FileImpl + 128))(v6);
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void OZ3DEngineSceneFileImpl::OZ3DEngineSceneFileImpl(OZ3DEngineSceneFileImpl *this, OZ3DEngineSceneFile *a2, const PCURL *a3)
{
  *this = &unk_28728CD20;
  Li3DEngineScene::Li3DEngineScene((this + 8));
  *(this + 22) = 0;
  *(this + 23) = 0;
  PCURL::PCURL((this + 192), a3);
  *(this + 25) = 0xBFF0000000000000;
  *(this + 14) = xmmword_2603429E0;
  *(this + 15) = xmmword_2603429E0;
  *(this + 13) = xmmword_2603429E0;
  *(this + 64) = 0;
  *(this + 33) = a2;
  PCSharedCount::PCSharedCount(this + 34);
  PCMutex::PCMutex((this + 280), 1);
  *(this + 35) = &unk_2871D83A0;
  operator new();
}

void sub_26013164C(_Unwind_Exception *a1)
{
  PCString::~PCString(v2 + 34);
  PCURL::~PCURL((v3 + 16));
  Li3DEngineScene::~Li3DEngineScene(v1);
  _Unwind_Resume(a1);
}

void OZ3DEngineSceneFileImpl::~OZ3DEngineSceneFileImpl(OZ3DEngineSceneFileImpl *this)
{
  *this = &unk_28728CD20;
  v2 = (this + 8);
  Li3DEngineScene::set((this + 8), 0);
  v3 = *(this + 22);
  if (v3)
  {
    v5 = *(this + 22);
    std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x2666E9F00](v3, 0x20C40960023A9);
  }

  *(this + 22) = 0;
  v4 = *(this + 23);
  if (v4)
  {
    if (*v4)
    {
      operator delete(*v4);
    }

    MEMORY[0x2666E9F00](v4, 0x1010C40113C0ABBLL);
  }

  *(this + 23) = 0;
  PCMutex::~PCMutex((this + 280));
  PCString::~PCString(this + 34);
  PCURL::~PCURL((this + 192));
  std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::destroy(this + 152, *(this + 20));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 128, *(this + 17));
  ProCore_Impl::PCNSRefImpl::release(this + 15);
  std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(this + 88, *(this + 12));
  ProCore_Impl::PCNSRefImpl::release(this + 9);
  std::recursive_mutex::~recursive_mutex(v2);
}

void OZ3DEngineSceneFileImpl::setURL(uint64_t **this, const __CFURL **a2)
{
  v4 = (this + 24);
  if (!CFEqual(*a2, this[24]))
  {
    PCURL::operator=(v4, a2);
    ((*this)[2])(this);
    Li3DEngineScene::set((this + 1), 0);
    v5 = this[22];
    v7 = *v5;
      ;
    }

    v5[1] = v7;
    this[23][1] = 0;
    if (*(this + 64))
    {
      *(this + 64) = 0;
    }
  }
}

double OZ3DEngineSceneFileImpl::getOriginalFileDurationInSeconds(OZ3DEngineSceneFileImpl *this)
{
  OZ3DEngineSceneFileImpl::readFile(this);
  std::recursive_mutex::lock((this + 8));
  Representation = PCBitmap::getRepresentation((this + 8));
  v3 = Representation;
  if (Representation)
  {
    v4 = [Representation attributeForKey:*MEMORY[0x277CDBBE8]];
    v5 = [v3 attributeForKey:*MEMORY[0x277CDBC08]];
    [v4 doubleValue];
    v7 = v6;
    [v5 doubleValue];
    v9 = v7 - v8;
  }

  else
  {
    v9 = 1.0;
  }

  std::recursive_mutex::unlock((this + 8));
  return v9;
}

uint64_t OZ3DEngineSceneFileImpl::getNumPolygons(OZ3DEngineSceneFileImpl *this)
{
  v24 = *MEMORY[0x277D85DE8];
  OZ3DEngineSceneFileImpl::readFile(this);
  std::recursive_mutex::lock((this + 8));
  Representation = PCBitmap::getRepresentation((this + 8));
  if (Representation && (v3 = [objc_msgSend(Representation "rootNode")], v20 = 0u, v21 = 0u, v18 = 0u, v19 = 0u, (v4 = objc_msgSend(v3, "countByEnumeratingWithState:objects:count:", &v18, v23, 16)) != 0))
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [objc_msgSend(v8 geometry];
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = *v15;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v5 = v5 + [*(*(&v14 + 1) + 8 * j) primitiveCount];
            }

            v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  std::recursive_mutex::unlock((this + 8));
  return v5;
}

uint64_t OZ3DEngineSceneFileImpl::getAssociatedFileURLs@<X0>(uint64_t **this@<X0>, void *a2@<X8>)
{
  OZ3DEngineSceneFileImpl::readFile(this);
  v4 = this[22];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v5 = *v4;
  v6 = v4[1];
  v7 = (v6 - *v4) >> 3;

  return std::vector<PCURL>::__init_with_size[abi:ne200100]<PCURL*,PCURL*>(a2, v5, v6, v7);
}

void OZ3DEngineSceneFile::didReadSceneFile(OZ3DEngineSceneFile *this, char a2)
{
  if (a2)
  {
    if ((*(**(this + 216) + 48))(*(this + 216)))
    {
      OZChannelBase::resetFlag((this + 1600), 2, 1);
    }

    else
    {
      OZChannelBase::setFlag((this + 1600), 2, 1);
    }

    OriginalFileDurationInSeconds = OZ3DEngineSceneFile::getOriginalFileDurationInSeconds(this);
    if (fabs(OriginalFileDurationInSeconds) >= 0.0000001)
    {
      CMTimeMakeWithSeconds(&v12, OriginalFileDurationInSeconds, 60);
    }

    else
    {
      v4 = *(this + 121);
      if (v4 || OZApplication::getCurrentDoc(theApp) && (v4 = *(OZApplication::getCurrentDoc(theApp) + 3)) != 0)
      {
        v9 = 0uLL;
        v10 = 0;
        OZSceneSettings::getFrameDuration((v4 + 336), &v9);
        *&v12.value = v9;
        v12.epoch = v10;
      }
    }

    v9 = *MEMORY[0x277CC08F0];
    v10 = *(MEMORY[0x277CC08F0] + 16);
    v11 = v12;
    v5 = (*(*this + 640))(this);
    OZChannelObjectRootBase::setTimeExtent(v5, &v9, [MEMORY[0x277CCACC8] isMainThread] ^ 1);
  }

  if ((*(*this + 272))(this))
  {
    v6 = (*(*this + 272))(this);
    OZScene::recalcDependencies(v6);
  }

  OZ3DEngineSceneFile::get3DEngineSceneElements(this, &v9);
  v8 = v9.n128_u64[1];
  v7 = v9.n128_u64[0];
  if (v9.n128_u64[0] != v9.n128_u64[1])
  {
    do
    {
      OZ3DEngineSceneElement::didReadSceneFile(*v7++);
    }

    while (v7 != v8);
    v7 = v9.n128_u64[0];
  }

  if (v7)
  {
    v9.n128_u64[1] = v7;
    operator delete(v7);
  }
}

void sub_260131DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double getSceneBoundingBox@<D0>(SCNScene *a1@<X0>, double *a2@<X8>)
{
  [(SCNNode *)[(SCNScene *)a1 rootNode] getBoundingBoxMin:&v9 max:&v7];
  v3 = v10;
  v4 = v8;
  v11.val[1] = vcvtq_f64_f32(v7);
  v11.val[0] = vcvtq_f64_f32(v9);
  v5 = a2;
  vst2q_f64(v5, v11);
  v5 += 4;
  result = v3;
  *v5 = v3;
  a2[5] = v4;
  return result;
}

uint64_t OZ3DEngineSceneFileImpl::setSCNScenePointerFromFile(const __CFURL **this)
{
  Li3DEngineScene::set((this + 1), 0);
  PCURL::getAsFileSystemString(this + 24, &v15);
  v2 = PCString::ns_str(&v15);
  PCString::~PCString(&v15);
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = v2;
    goto LABEL_7;
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [(__CFString *)v2 rangeOfString:@"Motion.app"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  result = -[__CFString stringByReplacingCharactersInRange:withString:](v2, "stringByReplacingCharactersInRange:withString:", 0, v6 + v7, [v5 bundlePath]);
  if (result)
  {
    v4 = result;
    v3 = MEMORY[0x277CBEBC0];
LABEL_7:
    result = LoadSCNSceneFromFile([v3 fileURLWithPath:v4]);
    if (result)
    {
      v9 = result;
      [objc_msgSend(result "rootNode")];
      v10 = v16;
      v11 = v14;
      v12 = (this + 26);
      v17.val[1] = vcvtq_f64_f32(v13);
      v17.val[0] = vcvtq_f64_f32(v15.var0);
      vst2q_f64(v12, v17);
      *(this + 30) = v10;
      *(this + 31) = v11;
      Li3DEngineScene::set((this + 1), v9);
      postProcessLoadedSCNScene((this + 1));
      (*(*this + 15))(this);
      return 1;
    }
  }

  return result;
}

void postProcessLoadedSCNScene(std::recursive_mutex *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(a1);
  v14 = a1;
  Representation = PCBitmap::getRepresentation(a1);
  [objc_msgSend(Representation "rootNode")];
  v3 = [objc_msgSend(Representation "rootNode")];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    v6 = *MEMORY[0x277CDBBA0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [objc_msgSend(v8 "geometry")];
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = *v16;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v15 + 1) + 8 * j);
              [v13 setLitPerPixel:1];
              [v13 setLightingModelName:v6];
            }

            v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  Li3DEngineScene::didLoad_NoLock(v14);
  std::recursive_mutex::unlock(v14);
}

__darwin_time_t OZ3DEngineSceneFileImpl::getModificationDate(const __CFURL **this)
{
  PCURL::getFilename(this + 24, &v14);
  v2 = PCString::createUTF8Str(&v14);
  PCString::~PCString(&v14);
  v3 = stat(v2, &v15);
  free(v2);
  if (v3)
  {
    tv_sec = 0;
  }

  else
  {
    tv_sec = v15.st_mtimespec.tv_sec;
  }

  v5 = this[22];
  if (v5)
  {
    v6 = *v5;
    if (*(v5 + 1) != *v5)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        PCURL::getFilename((v6 + v7), &v14);
        v9 = PCString::createUTF8Str(&v14);
        PCString::~PCString(&v14);
        v10 = stat(v9, &v15);
        free(v9);
        v11 = v15.st_mtimespec.tv_sec;
        if (v15.st_mtimespec.tv_sec <= tv_sec)
        {
          v11 = tv_sec;
        }

        if (!v10)
        {
          tv_sec = v11;
        }

        ++v8;
        v12 = this[22];
        v6 = *v12;
        v7 += 8;
      }

      while (v8 < (*(v12 + 1) - *v12) >> 3);
    }
  }

  return tv_sec;
}

__n128 OZ3DEngineSceneFileImpl::getBoundingBox@<Q0>(OZ3DEngineSceneFileImpl *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 14);
  *a2 = *(this + 13);
  *(a2 + 16) = v3;
  result = *(this + 15);
  *(a2 + 32) = result;
  return result;
}

uint64_t OZ3DEngineSceneFileImpl::updateAssociatedResourcesAvailable(OZ3DEngineSceneFileImpl *this)
{
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (*(this + 22))
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = *(this + 22);
    v4 = *v3;
    if (v3[1] != *v3)
    {
      v5 = v2;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = MEMORY[0x277CBEBC0];
        PCURL::getAsURLString((v4 + v6), &v21);
        v9 = [v8 URLWithString:PCString::ns_str(&v21)];
        PCString::~PCString(&v21);
        LOBYTE(v21.var0) = [v5 fileExistsAtPath:{objc_msgSend(v9, "path")}];
        std::vector<BOOL>::push_back(&__p, &v21);
        ++v7;
        v10 = *(this + 22);
        v4 = *v10;
        v6 += 8;
      }

      while (v7 < (v10[1] - *v10) >> 3);
    }
  }

  v11 = *(this + 23);
  if (v23 == *(v11 + 8))
  {
    v12 = __p;
    v13 = v23 & 0x3F;
    if (v23 <= 0x3F && v13 == 0)
    {
LABEL_20:
      v19 = 0;
      if (!__p)
      {
        return v19;
      }

      goto LABEL_23;
    }

    v15 = 0;
    v16 = 0;
    v17 = *v11;
    v18 = __p;
    while (((*v18 >> v15) & 1) != (((*v17 >> v16) & 1) == 0))
    {
      v18 += v15 == 63;
      if (v15 == 63)
      {
        v15 = 0;
      }

      else
      {
        ++v15;
      }

      v17 += v16 == 63;
      if (v16 == 63)
      {
        v16 = 0;
      }

      else
      {
        ++v16;
      }

      if (v15 == v13 && v18 == (__p + 8 * (v23 >> 6)))
      {
        goto LABEL_20;
      }
    }
  }

  std::vector<BOOL>::operator=(*(this + 23), &__p);
  v19 = 1;
  v12 = __p;
  if (__p)
  {
LABEL_23:
    operator delete(v12);
  }

  return v19;
}

void sub_2601324EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZ3DEngineSceneFileImplOBJ::~OZ3DEngineSceneFileImplOBJ(id *this)
{
  *this = &unk_28728CDE8;

  this[44] = 0;
  this[45] = 0;

  this[46] = 0;
  this[47] = 0;

  this[49] = 0;
  this[48] = 0;

  OZ3DEngineSceneFileImpl::~OZ3DEngineSceneFileImpl(this);
}

{
  OZ3DEngineSceneFileImplOBJ::~OZ3DEngineSceneFileImplOBJ(this);

  JUMPOUT(0x2666E9F00);
}

void OZ3DEngineSceneFileImplOBJ::dirty(id *this)
{
  this[44] = 0;

  this[45] = 0;
  this[46] = 0;

  this[47] = 0;
  this[49] = 0;

  this[48] = 0;
}

NSString *OZ3DEngineSceneFileImplOBJ::willDoCollectOperation(id *this, NSString *a2)
{
  this[49] = a2;

  return a2;
}

uint64_t OZ3DEngineSceneFileImplOBJ::processLinesInOBJorMTLFile(int a1, const __CFURL **this, int a3, const __CFURL **a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  PCURL::getAsFileSystemString(this, &v28);
  v23 = PCString::ns_str(&v28);
  PCString::~PCString(&v28);
  PCURL::getAsFileSystemString(a4, &v28);
  v7 = PCString::ns_str(&v28);
  PCString::~PCString(&v28);
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v23;
  }

  v21 = [(__CFString *)v8 stringByDeletingLastPathComponent];
  v28.var0 = 0;
  v9 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v23 encoding:1 error:&v28];
  if (!v9)
  {
    return 0;
  }

  v10 = [v9 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v11)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  v14 = *v25;
LABEL_7:
  v15 = 0;
  while (1)
  {
    if (*v25 != v14)
    {
      objc_enumerationMutation(v10);
    }

    v16 = *(*(&v24 + 1) + 8 * v15);
    v17 = [v16 length];
    v18 = [v16 rangeOfString:@"#"];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v16 substringToIndex:v18];
    }

    v19 = [v16 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet", v18)}];
    if ([v19 length])
    {
      result = std::function<BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::operator()(a5, v21, [(__CFString *)v23 lastPathComponent], v12, v13, v19);
      if (!result)
      {
        return result;
      }
    }

    v13 += v17 + 1;
    ++v12;
    if (v11 == ++v15)
    {
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      result = 1;
      if (v11)
      {
        goto LABEL_7;
      }

      return result;
    }
  }
}

uint64_t std::function<BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v12 = a2;
  v11 = a3;
  v9 = a5;
  v10 = a4;
  v8 = a6;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v12, &v11, &v10, &v9, &v8);
}

uint64_t OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(OZ3DEngineSceneFileImplOBJ *this, char a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v18 = a2;
  v4 = *(this + 22);
  v6 = *v4;
    ;
  }

  v4[1] = v6;
  PCURL::PCURL(&v17, (this + 192));

  *(this + 47) = objc_opt_new();
  *(this + 48) = objc_opt_new();

  *(this + 44) = objc_opt_new();
  *(this + 45) = objc_opt_new();

  v7 = objc_opt_new();
  *(this + 46) = v7;
  v16 = 0;
  v21[0] = &unk_28728D190;
  v21[1] = this;
  v21[3] = v21;
  OZ3DEngineSceneFileImplOBJ::processLinesInOBJorMTLFile(v7, &v17, 0, &v17, v21);
  std::__function::__value_func<BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::~__value_func[abi:ne200100](v21);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = *(this + 22);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    do
    {
      std::vector<PCURL>::push_back[abi:ne200100](&v13, v9);
      v9 = (v9 + 8);
    }

    while (v9 != v10);
    if (v13 != v14)
    {
      v20 = 0;
      operator new();
    }
  }

  if ((a2 & 1) != 0 && HIDWORD(v16) == v16 && v16 >= 1)
  {
    PCURL::getAsFileSystemString(&v17, &v19);
    v11 = PCString::ns_str(&v19);
    PCString::~PCString(&v19);
    [(__CFString *)v11 lastPathComponent];
  }

  v19.var0 = &v13;
  std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](&v19);
  PCURL::~PCURL(&v17);
  return 1;
}

void sub_260132C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, PCString a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a15.var0 = &a9;
  std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](&a15);
  PCURL::~PCURL(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PCURL>::push_back[abi:ne200100](uint64_t a1, const PCURL *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<PCURL>::__emplace_back_slow_path<PCURL const&>(a1, a2);
  }

  else
  {
    PCURL::PCURL(*(a1 + 8), a2);
    result = v3 + 8;
    *(a1 + 8) = v3 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

void OZ3DEngineSceneFileImplUSDZ::~OZ3DEngineSceneFileImplUSDZ(OZ3DEngineSceneFileImplUSDZ *this)
{
  *this = &unk_28728CE90;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 440, *(this + 56));
  PCMutex::~PCMutex((this + 368));

  OZ3DEngineSceneFileImpl::~OZ3DEngineSceneFileImpl(this);
}

{
  OZ3DEngineSceneFileImplUSDZ::~OZ3DEngineSceneFileImplUSDZ(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZ3DEngineSceneFileImplUSDZ::populateAssociatedURLs(OZ3DEngineSceneFileImplUSDZ *this)
{
  if (!*(this + 22))
  {
    operator new();
  }

  return 1;
}

void OZ3DEngineSceneFileImplSCN::~OZ3DEngineSceneFileImplSCN(OZ3DEngineSceneFileImplSCN *this)
{
  OZ3DEngineSceneFileImpl::~OZ3DEngineSceneFileImpl(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZ3DEngineSceneFileImplSCN::populateAssociatedURLs(OZ3DEngineSceneFileImplSCN *this)
{
  if (!*(this + 22))
  {
    operator new();
  }

  return 1;
}

void OZ3DEngineSceneFileImplARFace::~OZ3DEngineSceneFileImplARFace(OZ3DEngineSceneFileImplARFace *this)
{
  OZ3DEngineSceneFileImpl::~OZ3DEngineSceneFileImpl(this);

  JUMPOUT(0x2666E9F00);
}

BOOL OZ3DEngineSceneFileImplARFace::setSCNScenePointerFromFile(OZ3DEngineSceneFileImplARFace *this)
{
  Li3DEngineScene::set((this + 8), 0);
  v2 = objc_alloc_init(MEMORY[0x277CDBAF8]);
  v3 = objc_alloc_init(MEMORY[0x277CDBAA8]);
  [(SCNNode *)[(SCNScene *)v2 rootNode] addChildNode:v3];

  if (v2)
  {
    Li3DEngineScene::set((this + 8), v2);
    postProcessLoadedSCNScene((this + 8));
  }

  return v2 != 0;
}

uint64_t OZ3DEngineSceneFileImplARFace::populateAssociatedURLs(OZ3DEngineSceneFileImplARFace *this)
{
  if (!*(this + 22))
  {
    operator new();
  }

  return 1;
}

PCMutex *OZ3DEngineSceneFileImplUSDZ::getBoundingBox@<X0>(PCMutex *this@<X0>, CMTime *a2@<X1>, double *a3@<X8>)
{
  v3 = this;
  v198 = *MEMORY[0x277D85DE8];
  if (this[4]._Mutex.__opaque[52] & 1) != 0 || (this[4]._Mutex.__opaque[53])
  {
    *time = *a2;
    Seconds = CMTimeGetSeconds(time);
    v181 = (v3 + 368);
    PCMutex::lock((v3 + 368));
    v182 = 1;
    v6 = (Seconds / 0.0166666667);
    v180 = v6;
    v7 = *v3[6]._Mutex.__opaque;
    if (!v7)
    {
      goto LABEL_10;
    }

    opaque = v3[6]._Mutex.__opaque;
    do
    {
      if (*(v7 + 8) >= v6)
      {
        opaque = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < v6)];
    }

    while (v7);
    if (opaque != v3[6]._Mutex.__opaque && *(opaque + 8) <= v6)
    {
      v147 = *(opaque + 56);
      *a3 = *(opaque + 40);
      *(a3 + 1) = v147;
      *(a3 + 2) = *(opaque + 72);
      return PCMutex::unlock((v3 + 368));
    }

    else
    {
LABEL_10:
      memset(__p, 0, sizeof(__p));
      v178 = 0u;
      v177 = 0u;
      v176 = 0u;
      v175 = 0u;
      v174 = 0u;
      v173 = 0u;
      v172 = Seconds;
      v170 = vdupq_n_s32(0xF149F2CA);
      v171 = vdupq_n_s32(0x7149F2CAu);
      v148 = a3;
      v150 = v3;
      if (v3[4]._Mutex.__opaque[52] == 1)
      {
        *&v173 = [objc_msgSend(v3[5]._vptr$PCMutex childObjectsOfClass:{objc_opt_class()), "objectAtIndexedSubscript:", 0}];
        v9 = [objc_msgSend(v173 "jointBindTransforms")];
        *(&v173 + 1) = [v173 jointPaths];
        std::vector<simd_float4x4>::resize(&v174, v9);
        v10 = [v173 jointBindTransforms];
        [v10 getFloat4x4Array:v174 maxCount:v9];
        v11 = MEMORY[0x277D860B8];
        v153 = *(MEMORY[0x277D860B8] + 16);
        v154 = *MEMORY[0x277D860B8];
        v151 = *(MEMORY[0x277D860B8] + 48);
        v152 = *(MEMORY[0x277D860B8] + 32);
        for (i = v173; i; i = [i parent])
        {
          v13 = [i transform];
          if (v13)
          {
            [v13 localTransformAtTime:Seconds];
            v18 = 0;
            *v193 = v154;
            *&v193[16] = v153;
            *&v193[32] = v152;
            *&v193[48] = v151;
            do
            {
              *&time[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*&v193[v18])), v15, *&v193[v18], 1), v16, *&v193[v18], 2), v17, *&v193[v18], 3);
              v18 += 16;
            }

            while (v18 != 64);
            v153 = *&time[16];
            v154 = *time;
            v151 = *&time[48];
            v152 = *&time[32];
          }
        }

        for (j = 0; ; j = v149 + 1)
        {
          if (j >= [objc_msgSend(v150[5]._vptr$PCMutex "animations")])
          {
            goto LABEL_26;
          }

          [objc_msgSend(v150[5]._vptr$PCMutex "animations")];
          objc_opt_class();
          v149 = j;
          if (objc_opt_isKindOfClass())
          {
            break;
          }

LABEL_110:
          ;
        }

        v32 = [objc_msgSend(v150[5]._vptr$PCMutex "animations")];
        if (v32)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *&v177 = [v32 jointPaths];
            v33 = [v177 count];
            v34 = [v32 translations];
            v35 = [v32 rotations];
            v36 = [v32 scales];
            _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8ne200100Em(v169, v33);
            std::vector<simd_quatd>::vector[abi:ne200100](v168, v33);
            _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8ne200100Em(v167, v33);
            [v36 getDouble3Array:v169[0] maxCount:v33 atTime:Seconds];
            [v35 getDoubleQuaternionArray:v168[0] maxCount:v33 atTime:Seconds];
            [v34 getDouble3Array:v167[0] maxCount:v33 atTime:Seconds];
            std::vector<simd_float4x4>::resize(&v177 + 1, v33);
            v38 = MEMORY[0x277D860A0];
            if (v33)
            {
              for (k = 0; k != v33; ++k)
              {
                v40 = 0;
                v41 = (v169[0] + 32 * k);
                v42 = (v168[0] + 32 * k);
                v44 = *v42;
                v43 = v42[1];
                v45 = vmuld_n_f64(v44.f64[0], v44.f64[0]);
                v46 = vmuld_lane_f64(v44.f64[1], v44, 1);
                v47 = vmuld_n_f64(v43.f64[0], v43.f64[0]);
                v48 = vmuld_lane_f64(v43.f64[1], v43, 1);
                v53.f64[0] = v48 + v45 - v46 - v47;
                v49 = vmuld_lane_f64(v44.f64[0], v44, 1);
                v50 = vmuld_lane_f64(v43.f64[0], v43, 1);
                v51 = vmuld_n_f64(v42->f64[0], v43.f64[0]);
                v52 = vmuld_lane_f64(v42->f64[1], v43, 1);
                v53.f64[1] = v49 + v50 + v49 + v50;
                v54.f64[1] = 0.0;
                v54.f64[0] = v51 - v52 + v51 - v52;
                v56.f64[0] = v49 - v50 + v49 - v50;
                v55 = vmuld_lane_f64(v43.f64[0], *v42, 1);
                v43.f64[0] = vmuld_lane_f64(v42->f64[0], v43, 1);
                v56.f64[1] = v48 + v46 - v47 - v45;
                v57.f64[1] = 0.0;
                v57.f64[0] = v55 + v43.f64[0] + v55 + v43.f64[0];
                v58.f64[0] = v51 + v52 + v51 + v52;
                v58.f64[1] = v55 - v43.f64[0] + v55 - v43.f64[0];
                v59.f64[1] = 0.0;
                v59.f64[0] = v47 + v48 - v45 - v46;
                *&v60 = 0;
                *(&v60 + 1) = v41[1];
                *&v37.f64[0] = v41[2];
                v62 = *v38;
                v61 = v38[1];
                v64 = v38[2];
                v63 = v38[3];
                v66 = v38[4];
                v65 = v38[5];
                v67 = (v167[0] + 32 * k);
                v69 = *v67;
                v68 = v67[1];
                *__src = *v41;
                v184 = 0u;
                v185 = v60;
                v186 = 0u;
                v187 = 0u;
                v188 = v37;
                v189 = 0u;
                v190 = xmmword_260342700;
                do
                {
                  v71 = *&__src[v40];
                  v70 = *&__src[v40 + 2];
                  v37 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v54, v71.f64[0]), v57, v71, 1), v59, v70.f64[0]), xmmword_260342700, v70, 1);
                  v72 = &v193[v40 * 8];
                  *v72 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v53, v71.f64[0]), v56, v71, 1), v58, v70.f64[0]), 0, v70, 1);
                  v72[1] = v37;
                  v40 += 4;
                }

                while (v40 != 16);
                v73 = 0;
                v196 = 0uLL;
                v197 = 0uLL;
                v195 = 0uLL;
                memset(time, 0, sizeof(time));
                v68.f64[1] = 1.0;
                do
                {
                  v75 = *&v193[v73];
                  v74 = *&v193[v73 + 16];
                  v76 = &time[v73];
                  *v76 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v62, v75.f64[0]), v64, v75, 1), v66, v74.f64[0]), v69, v74, 1);
                  v76[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v61, v75.f64[0]), v63, v75, 1), v65, v74.f64[0]), v68, v74, 1);
                  v73 += 32;
                }

                while (v73 != 128);
                for (m = 0; m != 4; ++m)
                {
                  *&v193[16 * m] = vcvt_hight_f32_f64(vcvt_f32_f64(*&time[32 * m]), *&time[32 * m + 16]);
                }

                v78 = *&v193[16];
                v79 = *&v193[32];
                v80 = *&v193[48];
                v81 = (*(&v177 + 1) + (k << 6));
                *v81 = *v193;
                v81[1] = v78;
                v81[2] = v79;
                v81[3] = v80;
              }
            }

            if (v167[0])
            {
              v167[1] = v167[0];
              operator delete(v167[0]);
            }

            if (v168[0])
            {
              v168[1] = v168[0];
              operator delete(v168[0]);
            }

            if (v169[0])
            {
              v169[1] = v169[0];
              operator delete(v169[0]);
            }
          }
        }

        v83 = *(&v177 + 1);
        v82 = v178;
        v84 = v177;
        v85 = (v178 - *(&v177 + 1)) >> 6;
        std::vector<simd_float4x4>::resize(__p, v85);
        __src[1] = 0;
        __src[0] = 0;
        *&v184 = 0;
        if (v82 == v83)
        {
          v91 = 0;
          v99 = 0;
        }

        else
        {
          v86 = 0;
          if (v85 <= 1)
          {
            v87 = 1;
          }

          else
          {
            v87 = v85;
          }

          do
          {
            v88 = [objc_msgSend(v84 objectAtIndexedSubscript:{v86), "stringByDeletingLastPathComponent"}];
            v89 = 0;
            while (v86 == v89 || ([objc_msgSend(v84 objectAtIndexedSubscript:{v89), "isEqualToString:", v88}] & 1) == 0)
            {
              if (v87 == ++v89)
              {
                LODWORD(v89) = -1;
                break;
              }
            }

            v90 = __src[1];
            if (__src[1] >= v184)
            {
              v92 = __src[0];
              v93 = __src[1] - __src[0];
              v94 = 0xAAAAAAAAAAAAAAABLL * ((__src[1] - __src[0]) >> 2);
              v95 = v94 + 1;
              if (v94 + 1 > 0x1555555555555555)
              {
                std::vector<double>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v184 - __src[0]) >> 2) > v95)
              {
                v95 = 0x5555555555555556 * ((v184 - __src[0]) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v184 - __src[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v95 = 0x1555555555555555;
              }

              if (v95)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<Vec3f>>(__src, v95);
              }

              v96 = (4 * ((__src[1] - __src[0]) >> 2));
              *v96 = v86;
              v96[1] = v89;
              v96[2] = 0;
              v91 = (12 * v94 + 12);
              v97 = (12 * v94 - v93);
              memcpy(v96 - v93, v92, v93);
              v98 = __src[0];
              __src[0] = v97;
              __src[1] = v91;
              *&v184 = 0;
              if (v98)
              {
                operator delete(v98);
              }
            }

            else
            {
              *__src[1] = v86;
              v90[1] = v89;
              v91 = v90 + 3;
              v90[2] = 0;
            }

            __src[1] = v91;
            ++v86;
          }

          while (v86 != v87);
          v99 = __src[0];
          v100 = __src[0];
          if (__src[0] != v91)
          {
            do
            {
              v100[2] = 0;
              v101 = v100[1];
              if ((v101 & 0x80000000) == 0)
              {
                v102 = 0;
                do
                {
                  LODWORD(v101) = v99[3 * v101 + 1];
                  ++v102;
                }

                while ((v101 & 0x80000000) == 0);
                v100[2] = v102;
              }

              v100 += 3;
            }

            while (v100 != v91);
            v103 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v91 - v99));
            goto LABEL_88;
          }
        }

        v103 = 0;
LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *,false>(v99, v91, v103, 1);
        v104 = __src[0];
        v105 = __src[1];
        if (__src[0] != __src[1])
        {
          do
          {
            if (v104[2] < 1)
            {
              v122 = *v104;
              v123 = (*(&v177 + 1) + (v122 << 6));
              v124 = __p[0] + 64 * v122;
              v125 = *v123;
              v126 = v123[1];
              v127 = v123[3];
              v124[2] = v123[2];
              v124[3] = v127;
              *v124 = v125;
              v124[1] = v126;
            }

            else
            {
              v106 = 0;
              v107 = *v104;
              v108 = __p[0];
              v109 = (__p[0] + 64 * v104[1]);
              v110 = *v109;
              v111 = v109[1];
              v112 = v109[2];
              v113 = v109[3];
              v114 = (*(&v177 + 1) + (v107 << 6));
              v115 = v114[1];
              v116 = v114[2];
              v117 = v114[3];
              *v193 = *v114;
              *&v193[16] = v115;
              *&v193[32] = v116;
              *&v193[48] = v117;
              do
              {
                *&time[v106] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, COERCE_FLOAT(*&v193[v106])), v111, *&v193[v106], 1), v112, *&v193[v106], 2), v113, *&v193[v106], 3);
                v106 += 16;
              }

              while (v106 != 64);
              v118 = *&time[16];
              v119 = *&time[32];
              v120 = *&time[48];
              v121 = &v108[64 * v107];
              *v121 = *time;
              *(v121 + 1) = v118;
              *(v121 + 2) = v119;
              *(v121 + 3) = v120;
            }

            v104 += 3;
          }

          while (v104 != v105);
          v104 = __src[0];
        }

        if (v104)
        {
          __src[1] = v104;
          operator delete(v104);
        }

        v128 = __p[0];
        if (__p[1] != __p[0])
        {
          v129 = 0;
          do
          {
            v130 = 0;
            v131 = &v128[64 * v129];
            v132 = *(v131 + 1);
            v133 = *(v131 + 2);
            v134 = *(v131 + 3);
            *v193 = *v131;
            *&v193[16] = v132;
            *&v193[32] = v133;
            *&v193[48] = v134;
            do
            {
              *&time[v130] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v154, COERCE_FLOAT(*&v193[v130])), v153, *&v193[v130], 1), v152, *&v193[v130], 2), v151, *&v193[v130], 3);
              v130 += 16;
            }

            while (v130 != 64);
            v135 = *&time[16];
            v136 = *&time[32];
            v137 = *&time[48];
            *v131 = *time;
            *(v131 + 1) = v135;
            *(v131 + 2) = v136;
            *(v131 + 3) = v137;
            ++v129;
            v128 = __p[0];
          }

          while (v129 < (__p[1] - __p[0]) >> 6);
        }

        std::vector<simd_float4x4>::__assign_with_size[abi:ne200100]<simd_float4x4*,simd_float4x4*>(&v175 + 1, v174, *(&v174 + 1), (*(&v174 + 1) - v174) >> 6);
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v138 = v150[5]._vptr$PCMutex;
        v139 = [v138 countByEnumeratingWithState:&v163 objects:v192 count:16];
        if (v139)
        {
          v140 = *v164;
          do
          {
            for (n = 0; n != v139; ++n)
            {
              if (*v164 != v140)
              {
                objc_enumerationMutation(v138);
              }

              v142 = *(*(&v163 + 1) + 8 * n);
              v143 = v11[1];
              *&v193[15] = *v11;
              *&v193[31] = v143;
              v144 = v11[3];
              *&v193[47] = v11[2];
              *&v193[63] = v144;
              time[0] = 1;
              *&time[33] = *&v193[32];
              *&time[49] = *&v193[48];
              *&time[64] = v144;
              *&time[1] = *v193;
              *&time[17] = *&v193[16];
              *&v195 = &v172;
              getBounds(v142, time, v170.i8);
            }

            v139 = [v138 countByEnumeratingWithState:&v163 objects:v192 count:16];
          }

          while (v139);
        }

        goto LABEL_110;
      }

      if (v3[4]._Mutex.__opaque[53] == 1)
      {
        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v19 = v3[5]._vptr$PCMutex;
        v20 = [v19 countByEnumeratingWithState:&v159 objects:v191 count:16];
        if (v20)
        {
          v21 = *v160;
          v22 = MEMORY[0x277D860B8];
          do
          {
            for (ii = 0; ii != v20; ++ii)
            {
              if (*v160 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v159 + 1) + 8 * ii);
              v25 = v22[1];
              *&v193[15] = *v22;
              *&v193[31] = v25;
              v26 = v22[3];
              *&v193[47] = v22[2];
              *&v193[63] = v26;
              time[0] = 0;
              *&time[33] = *&v193[32];
              *&time[49] = *&v193[48];
              *&time[64] = v26;
              *&time[1] = *v193;
              *&time[17] = *&v193[16];
              *&v195 = &v172;
              getBounds(v24, time, v170.i8);
            }

            v20 = [v19 countByEnumeratingWithState:&v159 objects:v191 count:16];
          }

          while (v20);
        }
      }

LABEL_26:
      v155 = v170;
      v157 = v171;
      *time = &v180;
      v27 = std::__tree<std::__value_type<int,PCBox<double>>,std::__map_value_compare<int,std::__value_type<int,PCBox<double>>,std::less<int>,true>,std::allocator<std::__value_type<int,PCBox<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v150[6]._Mutex, &v180);
      v28 = *v157.i32;
      v29 = *v155.i32;
      v30 = vcvtq_f64_f32(vzip2_s32(*v157.i8, *v155.i8));
      *(v27 + 5) = *v157.i32;
      *(v27 + 6) = *v155.i32;
      v156 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v157, v157, 8uLL), *&vextq_s8(v155, v155, 8uLL)));
      v158 = v30;
      *(v27 + 7) = v30;
      *(v27 + 9) = v156;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*(&v177 + 1))
      {
        *&v178 = *(&v177 + 1);
        operator delete(*(&v177 + 1));
      }

      if (*(&v175 + 1))
      {
        *&v176 = *(&v175 + 1);
        operator delete(*(&v175 + 1));
      }

      if (v174)
      {
        *(&v174 + 1) = v174;
        operator delete(v174);
      }

      this = v181;
      if (v181 && v182 == 1)
      {
        this = PCMutex::unlock(v181);
      }

      *v148 = v28;
      v148[1] = v29;
      *(v148 + 1) = v158;
      *(v148 + 2) = v156;
    }
  }

  else
  {
    v145 = *&this[3]._Mutex.__sig;
    v146 = *&this[3]._Mutex.__opaque[8];
    *a3 = *&this[2]._Mutex.__opaque[48];
    *(a3 + 1) = v145;
    *(a3 + 2) = v146;
  }

  return this;
}

void sub_260133D14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<simd_float4x4>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<simd_float4x4>::__append(a1, a2 - v2);
  }
}

void *getBounds(void *a1, uint64_t a2, __int128 *a3)
{
  v5 = a1;
  v163 = *MEMORY[0x277D85DE8];
  v6 = [a1 transform];
  if (v6)
  {
    [v6 localTransformAtTime:**(a2 + 80)];
    v7 = 0;
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 64);
    v155.columns[0] = v12;
    v155.columns[1] = v13;
    v155.columns[2] = v14;
    v155.columns[3] = v15;
    do
    {
      *(&v157 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*&v155.columns[v7])), v9, *v155.columns[v7].f32, 1), v10, v155.columns[v7], 2), v11, v155.columns[v7], 3);
      ++v7;
    }

    while (v7 != 4);
    v16 = v158;
    v17 = v159;
    v18 = v160;
    *(a2 + 16) = v157;
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 64) = v18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v5 vertexCount];
    v20 = [v5 vertexBuffers];
    v21 = [v5 vertexDescriptor];
    v22 = [objc_msgSend(objc_msgSend(v20 objectAtIndexedSubscript:{objc_msgSend(objc_msgSend(v21, "attributeNamed:", *MEMORY[0x277CD7AB0]), "bufferIndex")), "map"), "bytes"}];
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v19);
    if (v19)
    {
      v23 = 0;
      v24 = vdupq_n_s32(0xF149F2CA);
      v25 = vdupq_n_s32(0x7149F2CAu);
      v130 = v25;
      v25.i32[0] = 1.0;
      do
      {
        v26 = 0;
        v27 = v22 + 12 * v23;
        *&v28 = *v27;
        DWORD2(v28) = *(v27 + 8);
        HIDWORD(v28) = 1.0;
        v29 = v130;
        do
        {
          v30 = v24;
          v31 = v29.i32[3];
          v145 = v28;
          v32 = (&v147 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3)));
          v33 = *(&v145 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3)));
          v34 = (&v146 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3)));
          v146 = v29;
          v35 = *v34;
          if (*v34 >= v33)
          {
            v35 = v33;
          }

          *v34 = v35;
          v29 = v146;
          v29.i32[3] = v31;
          v147 = v30;
          v36 = *v32;
          if (v33 >= *v32)
          {
            v36 = v33;
          }

          *v32 = v36;
          v24 = v147;
          v24.i32[3] = v30.i32[3];
          ++v26;
        }

        while (v26 != 3);
        v130 = v29;
        *(__p[0] + v23++) = v28;
      }

      while (v23 != v19);
    }

    else
    {
      v25 = vdupq_n_s32(0x7149F2CAu);
      v130 = v25;
      v24 = vdupq_n_s32(0xF149F2CA);
    }

    v128 = v24;
    v37 = [v5 componentConformingToProtocol:{&unk_28736D7F0, *v25.i64}];
    if (!v37)
    {
      goto LABEL_36;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }

    v38 = [v37 jointPaths];
    v39 = v38;
    if (!v38 || ![v38 count])
    {
      v40 = [v37 skeleton];
      if (v40)
      {
        v39 = [v40 jointPaths];
      }
    }

    [v37 geometryBindTransform];
    for (i = 0; i != 4; ++i)
    {
      v155.columns[i] = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v157 + 2 * i)), *(&v157 + 2 * i + 1));
    }

    if (v39 && (*a2 & 1) != 0)
    {
      v122 = v155.columns[1];
      v123 = v155.columns[0];
      v120 = v155.columns[3];
      v121 = v155.columns[2];
      v42 = [v5 vertexAttributeDataForAttributeNamed:*MEMORY[0x277CD7A88]];
      v43 = [v5 vertexAttributeDataForAttributeNamed:*MEMORY[0x277CD7A90]];
      v44 = v43;
      if (v42)
      {
        v45 = v43 == 0;
      }

      else
      {
        v45 = 1;
      }

      if (!v45)
      {
        v46 = [v42 format];
        v129 = [v42 dataStart];
        v126 = [v44 dataStart];
        std::vector<unsigned long>::vector[abi:ne200100](v153, [v39 count]);
        v117 = v5;
        v118 = v19;
        std::vector<unsigned long>::vector[abi:ne200100](v152, [v39 count]);
        v47 = 0;
        v48 = v46 & 0xFFF;
        while (v47 < [v39 count])
        {
          StringInArray = findStringInArray([v39 objectAtIndexedSubscript:v47], *(*(a2 + 80) + 72));
          *(v153[0] + v47) = StringInArray;
          if (*(*(a2 + 80) + 8))
          {
            v50 = findStringInArray([v39 objectAtIndexedSubscript:v47], objc_msgSend(*(*(a2 + 80) + 8), "jointPaths"));
            *(v152[0] + v47) = v50;
          }

          ++v47;
        }

        if (v118)
        {
          v124 = 0;
          v119 = *(a2 + 80);
          v90 = MEMORY[0x277D860B8];
          v127 = v39;
          do
          {
            if (v48)
            {
              v91 = 0;
              v92 = v124 * v48;
              v93 = 0uLL;
              do
              {
                v131 = v93;
                v94 = *(v129 + 2 * (v91 + v92));
                v95 = [v127 count];
                v93 = v131;
                if (v95 > v94 && *(v126 + 4 * (v91 + v92)) != 0.0)
                {
                  v125 = *(v126 + 4 * (v91 + v92));
                  v96 = *(v152[0] + v94);
                  v97 = v119[6];
                  v98 = v119[7] - v97;
                  v99 = (v97 + (v96 << 6));
                  if (v96 >= v98 >> 6)
                  {
                    v100 = v90;
                  }

                  else
                  {
                    v100 = v99;
                  }

                  v101 = *(v153[0] + v94);
                  v102 = v119[13];
                  v103 = (v119[14] - v102) >> 6;
                  v164 = __invert_f4(*v100);
                  v104 = 0;
                  v155 = v164;
                  do
                  {
                    *(&v157 + v104 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v123, COERCE_FLOAT(*&v155.columns[v104])), v122, *v155.columns[v104].f32, 1), v121, v155.columns[v104], 2), v120, v155.columns[v104], 3);
                    ++v104;
                  }

                  while (v104 != 4);
                  v105 = (v102 + (v101 << 6));
                  v106 = v101 >= v103;
                  v90 = MEMORY[0x277D860B8];
                  if (v106)
                  {
                    v105 = MEMORY[0x277D860B8];
                  }

                  v107 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v157, COERCE_FLOAT(*(__p[0] + v124))), v158, *(__p[0] + 16 * v124), 1), v159, *(__p[0] + v124), 2), v160, *(__p[0] + v124), 3);
                  v93 = vaddq_f32(v131, vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v105, v107.f32[0]), v105[1], *v107.f32, 1), v105[2], v107, 2), v105[3], v107, 3), v125));
                }

                ++v91;
              }

              while (v91 != v48);
            }

            else
            {
              v93 = 0uLL;
            }

            for (j = 0; j != 3; ++j)
            {
              v142 = v93;
              v109 = (&v144 & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              v110 = *(&v142 & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              v144 = a3[1];
              v111 = *v109;
              if (*v109 >= v110)
              {
                v111 = v110;
              }

              *v109 = v111;
              v112 = (&v143 & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              v113 = v144;
              *(a3 + 6) = DWORD2(v144);
              v114 = *a3;
              *(a3 + 2) = v113;
              v143 = v114;
              v115 = *v112;
              if (v110 >= *v112)
              {
                v115 = v110;
              }

              *v112 = v115;
              v116 = v143;
              *(a3 + 2) = DWORD2(v143);
              *a3 = v116;
            }

            ++v124;
          }

          while (v124 != v118);
        }

        if (v152[0])
        {
          v152[1] = v152[0];
          operator delete(v152[0]);
        }

        v5 = v117;
        if (v153[0])
        {
          v153[1] = v153[0];
          operator delete(v153[0]);
        }
      }
    }

    else
    {
LABEL_36:
      v51 = 0;
      v53 = v128;
      v52 = v130;
      v52.i32[0] = v130.i32[2];
      v53.i32[0] = v128.i32[2];
      v54 = vdupq_n_s32(0xF149F2CA);
      v55 = *(a2 + 16);
      v56 = *(a2 + 32);
      v57 = vdupq_n_s32(0x7149F2CAu);
      v58 = *(a2 + 48);
      v59 = *(a2 + 64);
      do
      {
        v60 = 0;
        v61 = *v130.i32;
        if ((v51 & 1) == 0)
        {
          v61 = *v128.i32;
        }

        if ((v51 & 2) != 0)
        {
          v62 = *&v130.i32[1];
        }

        else
        {
          v62 = *&v128.i32[1];
        }

        if (v51 >= 4)
        {
          v63 = *&v130.i32[2];
        }

        else
        {
          v63 = *&v128.i32[2];
        }

        v64 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v55, v61), v56, v62), v58, v63);
        do
        {
          v65 = v57.i32[3];
          v66 = v54;
          v139 = v59;
          v67 = (&v140 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v68 = *(&v139 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v138 = v64;
          v69 = v68 + *(&v138 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v140 = v57;
          v70 = *v67;
          if (*v67 >= v69)
          {
            v70 = v69;
          }

          *v67 = v70;
          v71 = v140;
          v57 = v140;
          v57.i32[3] = v65;
          v72 = (&v141 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v141 = v66;
          v73 = *v72;
          if (v69 >= *v72)
          {
            v73 = v69;
          }

          *v72 = v73;
          v74 = v141;
          v54 = v141;
          v54.i32[3] = v66.i32[3];
          ++v60;
        }

        while (v60 != 3);
        ++v51;
      }

      while (v51 != 8);
      v75 = 0;
      v77 = *a3;
      v76 = a3[1];
      do
      {
        v135 = v76;
        v78 = (&v132 & 0xFFFFFFFFFFFFFFF3 | (4 * (v75 & 3)));
        v79 = *(&v135 & 0xFFFFFFFFFFFFFFF3 | (4 * (v75 & 3)));
        v134 = v71;
        if (*(&v134 & 0xFFFFFFFFFFFFFFF3 | (4 * (v75 & 3))) < v79)
        {
          v79 = *(&v134 & 0xFFFFFFFFFFFFFFF3 | (4 * (v75 & 3)));
        }

        v137 = v52;
        *(&v137 & 0xFFFFFFFFFFFFFFF3 | (4 * (v75 & 3))) = v79;
        v52 = v137;
        v133 = v77;
        v80 = *(&v133 & 0xFFFFFFFFFFFFFFF3 | (4 * (v75 & 3)));
        v132 = v74;
        if (v80 < *v78)
        {
          v80 = *v78;
        }

        v136 = v53;
        *(&v136 & 0xFFFFFFFFFFFFFFF3 | (4 * (v75 & 3))) = v80;
        v53 = v136;
        ++v75;
      }

      while (v75 != 3);
      *(a3 + 2) = v136.i32[2];
      *a3 = v53.i64[0];
      *(a3 + 6) = v52.i32[2];
      *(a3 + 2) = v52.i64[0];
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  result = [v5 children];
  if (result)
  {
    result = [result objects];
    v82 = result;
    if (result)
    {
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      result = [result countByEnumeratingWithState:&v148 objects:v156 count:16];
      v83 = result;
      if (result)
      {
        v84 = *v149;
        do
        {
          v85 = 0;
          do
          {
            if (*v149 != v84)
            {
              objc_enumerationMutation(v82);
            }

            v86 = *(*(&v148 + 1) + 8 * v85);
            v87 = *(a2 + 48);
            v159 = *(a2 + 32);
            v160 = v87;
            v88 = *(a2 + 80);
            v161 = *(a2 + 64);
            v162 = v88;
            v89 = *(a2 + 16);
            v157 = *a2;
            v158 = v89;
            getBounds(v86, &v157, a3);
            v85 = v85 + 1;
          }

          while (v83 != v85);
          result = [v82 countByEnumeratingWithState:&v148 objects:v156 count:16];
          v83 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void sub_2601346A8(_Unwind_Exception *a1)
{
  v2 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t OZ3DEngineSceneFileImplUSDZ::postReadMedia(OZ3DEngineSceneFileImplUSDZ *this)
{
  v2 = *(this + 24);
  *(this + 178) = 0;
  result = [objc_alloc(MEMORY[0x277CD7AD0]) initWithURL:v2];
  *(this + 45) = result;
  if (result)
  {
    result = [result count];
    if (result)
    {
      v4 = [*(this + 45) childObjectsOfClass:objc_opt_class()];
      if (v4)
      {
        if ([v4 count])
        {
          *(this + 356) = 1;
        }
      }

      result = 1;
      *(this + 357) = 1;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v9 = (a2 - 24);
  v10 = (a2 - 36);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 4) < *(v11 + 8))
        {
          v209 = *(v11 + 8);
          v182 = *v11;
          v89 = *(a2 - 12);
          *(v11 + 8) = *(a2 - 4);
          *v11 = v89;
          *(a2 - 4) = v209;
          *(a2 - 12) = v182;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v95 = *(v11 + 20);
      v96 = *(v11 + 32);
      if (v95 >= *(v11 + 8))
      {
        if (v96 < v95)
        {
          v149 = *(v11 + 20);
          v150 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v150;
          *(v11 + 32) = v149;
          if (*(v11 + 20) < *(v11 + 8))
          {
            v213 = *(v11 + 8);
            v186 = *v11;
            *v11 = *(v11 + 12);
            *(v11 + 8) = *(v11 + 20);
            *(v11 + 12) = v186;
            *(v11 + 20) = v213;
          }
        }
      }

      else
      {
        if (v96 < v95)
        {
          v211 = *(v11 + 8);
          v184 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 8) = *(v11 + 32);
          *(v11 + 24) = v184;
          v97 = v211;
          goto LABEL_191;
        }

        v215 = *(v11 + 8);
        v188 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v188;
        *(v11 + 20) = v215;
        if (v96 < *(v11 + 20))
        {
          v97 = *(v11 + 20);
          v157 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v157;
LABEL_191:
          *(v11 + 32) = v97;
        }
      }

      if (*(a2 - 4) >= *(v11 + 32))
      {
        return result;
      }

      v158 = *(v11 + 24);
      v159 = *(v11 + 32);
      v160 = *(a2 - 4);
      *(v11 + 24) = *v8;
      *(v11 + 32) = v160;
      *(a2 - 4) = v159;
      *v8 = v158;
      if (*(v11 + 32) >= *(v11 + 20))
      {
        return result;
      }

      v161 = *(v11 + 20);
      v162 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v162;
      *(v11 + 32) = v161;
LABEL_195:
      if (*(v11 + 20) < *(v11 + 8))
      {
        v216 = *(v11 + 8);
        v189 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v189;
        *(v11 + 20) = v216;
      }

      return result;
    }

    if (v13 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *,0>(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

LABEL_10:
    if (v12 <= 287)
    {
      v98 = v11 + 12;
      v100 = v11 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v11;
          do
          {
            v103 = *(v102 + 20);
            v104 = *(v102 + 8);
            v102 = v98;
            if (v103 < v104)
            {
              v105 = *v98;
              v106 = v101;
              while (1)
              {
                v107 = v11 + v106;
                *(v107 + 12) = *(v11 + v106);
                *(v107 + 20) = *(v11 + v106 + 8);
                if (!v106)
                {
                  break;
                }

                v106 -= 12;
                if (v103 >= *(v107 - 4))
                {
                  v108 = v11 + v106 + 12;
                  goto LABEL_131;
                }
              }

              v108 = v11;
LABEL_131:
              *v108 = v105;
              *(v108 + 8) = v103;
            }

            v98 = v102 + 12;
            v101 += 12;
          }

          while (v102 + 12 != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v151 = *(v7 + 20);
          v152 = *(v7 + 8);
          v7 = v98;
          if (v151 < v152)
          {
            v153 = *v98;
            do
            {
              v154 = v98;
              v155 = *(v98 - 12);
              v98 -= 12;
              *v154 = v155;
              *(v154 + 8) = *(v154 - 4);
            }

            while (v151 < *(v154 - 16));
            *v98 = v153;
            *(v98 + 8) = v151;
          }

          v98 = v7 + 12;
        }

        while (v7 + 12 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v109 = (v13 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = v11 + 12 * v112;
            if (2 * v111 + 2 < v13)
            {
              v114 = *(v113 + 8);
              v115 = *(v113 + 20);
              v116 = v114 < v115;
              v117 = v114 >= v115 ? 0 : 12;
              v113 += v117;
              if (v116)
              {
                v112 = 2 * v111 + 2;
              }
            }

            v118 = v11 + 12 * v111;
            v119 = *(v118 + 8);
            if (*(v113 + 8) >= v119)
            {
              v120 = *v118;
              do
              {
                v121 = v118;
                v118 = v113;
                v122 = *v113;
                *(v121 + 8) = *(v118 + 8);
                *v121 = v122;
                if (v109 < v112)
                {
                  break;
                }

                v123 = (2 * v112) | 1;
                v113 = v11 + 12 * v123;
                v124 = 2 * v112 + 2;
                if (v124 < v13)
                {
                  v125 = *(v113 + 8);
                  v126 = *(v113 + 20);
                  v127 = v125 < v126;
                  v128 = v125 >= v126 ? 0 : 12;
                  v113 += v128;
                  if (v127)
                  {
                    v123 = v124;
                  }
                }

                v112 = v123;
              }

              while (*(v113 + 8) >= v119);
              *v118 = v120;
              *(v118 + 8) = v119;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v129 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v130 = 0;
          v212 = *(v11 + 8);
          v185 = *v11;
          v131 = v11;
          do
          {
            v132 = v131 + 12 * v130;
            v133 = v132 + 12;
            result = 2 * v130;
            v134 = (2 * v130) | 1;
            v130 = 2 * v130 + 2;
            if (v130 >= v129)
            {
              v130 = v134;
            }

            else
            {
              result = *(v132 + 20);
              v135 = *(v132 + 32);
              v136 = v132 + 24;
              if (result >= v135)
              {
                v130 = v134;
              }

              else
              {
                v133 = v136;
              }
            }

            v137 = *v133;
            *(v131 + 8) = *(v133 + 8);
            *v131 = v137;
            v131 = v133;
          }

          while (v130 <= ((v129 - 2) >> 1));
          a2 -= 12;
          if (v133 == a2)
          {
            *(v133 + 8) = v212;
            *v133 = v185;
          }

          else
          {
            v138 = *a2;
            *(v133 + 8) = *(a2 + 8);
            *v133 = v138;
            *(a2 + 8) = v212;
            *a2 = v185;
            v139 = v133 - v11 + 12;
            if (v139 >= 13)
            {
              v140 = (-2 - 0x5555555555555555 * (v139 >> 2)) >> 1;
              v141 = v11 + 12 * v140;
              v142 = *(v133 + 8);
              if (*(v141 + 8) < v142)
              {
                v143 = *v133;
                do
                {
                  v144 = v133;
                  v133 = v141;
                  v145 = *v141;
                  result = *(v133 + 8);
                  *(v144 + 8) = result;
                  *v144 = v145;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = v11 + 12 * v140;
                }

                while (*(v141 + 8) < v142);
                *v133 = v143;
                *(v133 + 8) = v142;
              }
            }
          }

          v116 = v129-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *(a2 - 4);
    if (v12 >= 0x601)
    {
      v17 = *(v15 + 8);
      if (v17 >= *(v11 + 8))
      {
        if (v16 < v17)
        {
          v192 = *(v15 + 8);
          v165 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v21;
          *(a2 - 4) = v192;
          *v8 = v165;
          if (*(v15 + 8) < *(v11 + 8))
          {
            v193 = *(v11 + 8);
            v166 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v193;
            *v15 = v166;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v190 = *(v11 + 8);
          v163 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v18;
          goto LABEL_27;
        }

        v196 = *(v11 + 8);
        v169 = *v11;
        v25 = *v15;
        *(v11 + 8) = *(v15 + 8);
        *v11 = v25;
        *(v15 + 8) = v196;
        *v15 = v169;
        if (*(a2 - 4) < v196)
        {
          v190 = *(v15 + 8);
          v163 = *v15;
          v26 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v26;
LABEL_27:
          *(a2 - 4) = v190;
          *v8 = v163;
        }
      }

      v27 = v11 + 12 * v14;
      v28 = v27 - 12;
      v29 = *(v27 - 4);
      v30 = *(a2 - 16);
      if (v29 >= *(v11 + 20))
      {
        if (v30 < v29)
        {
          v197 = *(v28 + 8);
          v170 = *v28;
          v34 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v34;
          *(a2 - 16) = v197;
          *v9 = v170;
          if (*(v28 + 8) < *(v11 + 20))
          {
            v35 = *(v11 + 12);
            v36 = *(v11 + 20);
            v37 = *(v28 + 8);
            *(v11 + 12) = *v28;
            *(v11 + 20) = v37;
            *(v28 + 8) = v36;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *(v11 + 12);
          v32 = *(v11 + 20);
          v33 = *(a2 - 16);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v33;
          goto LABEL_39;
        }

        v40 = *(v11 + 12);
        v41 = *(v11 + 20);
        v42 = *(v28 + 8);
        *(v11 + 12) = *v28;
        *(v11 + 20) = v42;
        *(v28 + 8) = v41;
        *v28 = v40;
        if (*(a2 - 16) < v41)
        {
          v199 = *(v28 + 8);
          v172 = *v28;
          v43 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v43;
          v31 = v172;
          v32 = v199;
LABEL_39:
          *(a2 - 16) = v32;
          *v9 = v31;
        }
      }

      v44 = v11 + 12 * v14;
      v45 = *(v44 + 20);
      v46 = *(a2 - 28);
      if (v45 >= *(v11 + 32))
      {
        if (v46 < v45)
        {
          v200 = *(v44 + 20);
          v173 = *(v44 + 12);
          v50 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v50;
          *(a2 - 28) = v200;
          *v10 = v173;
          if (*(v44 + 20) < *(v11 + 32))
          {
            v51 = *(v11 + 24);
            v52 = *(v11 + 32);
            v53 = *(v44 + 20);
            *(v11 + 24) = *(v44 + 12);
            *(v11 + 32) = v53;
            *(v44 + 20) = v52;
            *(v44 + 12) = v51;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *(v11 + 24);
          v48 = *(v11 + 32);
          v49 = *(a2 - 28);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v49;
          goto LABEL_48;
        }

        v54 = *(v11 + 24);
        v55 = *(v11 + 32);
        v56 = *(v44 + 20);
        *(v11 + 24) = *(v44 + 12);
        *(v11 + 32) = v56;
        *(v44 + 20) = v55;
        *(v44 + 12) = v54;
        if (*(a2 - 28) < v55)
        {
          v201 = *(v44 + 20);
          v174 = *(v44 + 12);
          v57 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v57;
          v47 = v174;
          v48 = v201;
LABEL_48:
          *(a2 - 28) = v48;
          *v10 = v47;
        }
      }

      v58 = *(v15 + 8);
      v59 = *(v44 + 20);
      if (v58 >= *(v28 + 8))
      {
        if (v59 < v58)
        {
          v203 = *(v15 + 8);
          v176 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
          *(v44 + 20) = v203;
          *(v44 + 12) = v176;
          if (*(v15 + 8) < *(v28 + 8))
          {
            v204 = *(v28 + 8);
            v177 = *v28;
            *v28 = *v15;
            *(v28 + 8) = *(v15 + 8);
            *(v15 + 8) = v204;
            *v15 = v177;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v202 = *(v28 + 8);
          v175 = *v28;
          *v28 = *(v44 + 12);
          *(v28 + 8) = *(v44 + 20);
          goto LABEL_57;
        }

        v205 = *(v28 + 8);
        v178 = *v28;
        *v28 = *v15;
        *(v28 + 8) = *(v15 + 8);
        *(v15 + 8) = v205;
        *v15 = v178;
        if (*(v44 + 20) < v205)
        {
          v202 = *(v15 + 8);
          v175 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
LABEL_57:
          *(v44 + 20) = v202;
          *(v44 + 12) = v175;
        }
      }

      v206 = *(v11 + 8);
      v179 = *v11;
      v60 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v60;
      *(v15 + 8) = v206;
      *v15 = v179;
      goto LABEL_59;
    }

    v19 = *(v11 + 8);
    if (v19 >= *(v15 + 8))
    {
      if (v16 < v19)
      {
        v194 = *(v11 + 8);
        v167 = *v11;
        v23 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v23;
        *(a2 - 4) = v194;
        *v8 = v167;
        if (*(v11 + 8) < *(v15 + 8))
        {
          v195 = *(v15 + 8);
          v168 = *v15;
          v24 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v24;
          *(v11 + 8) = v195;
          *v11 = v168;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v19)
    {
      v191 = *(v15 + 8);
      v164 = *v15;
      v20 = *v8;
      *(v15 + 8) = *(a2 - 4);
      *v15 = v20;
LABEL_36:
      *(a2 - 4) = v191;
      *v8 = v164;
      goto LABEL_59;
    }

    v198 = *(v15 + 8);
    v171 = *v15;
    v38 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v38;
    *(v11 + 8) = v198;
    *v11 = v171;
    if (*(a2 - 4) < v198)
    {
      v191 = *(v11 + 8);
      v164 = *v11;
      v39 = *v8;
      *(v11 + 8) = *(a2 - 4);
      *v11 = v39;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v61 = *(v11 + 8);
LABEL_62:
      v62 = 0;
      v63 = *v11;
      do
      {
        v64 = *(v11 + v62 + 20);
        v62 += 12;
      }

      while (v64 < v61);
      v65 = v11 + v62;
      v66 = a2;
      if (v62 == 12)
      {
        v69 = a2;
        while (v65 < v69)
        {
          v67 = v69 - 12;
          v70 = *(v69 - 4);
          v69 -= 12;
          if (v70 < v61)
          {
            goto LABEL_72;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 12;
          v68 = *(v66 - 4);
          v66 -= 12;
        }

        while (v68 >= v61);
      }

LABEL_72:
      v11 = v65;
      if (v65 < v67)
      {
        v71 = v67;
        do
        {
          v207 = *(v11 + 8);
          v180 = *v11;
          v72 = *v71;
          *(v11 + 8) = *(v71 + 8);
          *v11 = v72;
          *(v71 + 8) = v207;
          *v71 = v180;
          do
          {
            v73 = *(v11 + 20);
            v11 += 12;
          }

          while (v73 < v61);
          do
          {
            v74 = *(v71 - 4);
            v71 -= 12;
          }

          while (v74 >= v61);
        }

        while (v11 < v71);
      }

      if (v11 - 12 != v7)
      {
        v75 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v75;
      }

      *(v11 - 12) = v63;
      *(v11 - 4) = v61;
      if (v65 < v67)
      {
        goto LABEL_83;
      }

      v76 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *>(v7, v11 - 12);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *>(v11, a2);
      if (result)
      {
        a2 = v11 - 12;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *,false>(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v61 = *(v11 + 8);
      if (*(v11 - 4) < v61)
      {
        goto LABEL_62;
      }

      if (v61 >= *(a2 - 4))
      {
        v79 = v11 + 12;
        do
        {
          v11 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v80 = *(v79 + 8);
          v79 += 12;
        }

        while (v61 >= v80);
      }

      else
      {
        v77 = v11;
        do
        {
          v11 = v77 + 12;
          v78 = *(v77 + 20);
          v77 += 12;
        }

        while (v61 >= v78);
      }

      v81 = a2;
      if (v11 < a2)
      {
        v82 = a2;
        do
        {
          v81 = v82 - 12;
          v83 = *(v82 - 4);
          v82 -= 12;
        }

        while (v61 < v83);
      }

      v84 = *v7;
      while (v11 < v81)
      {
        v208 = *(v11 + 8);
        v181 = *v11;
        v85 = *v81;
        *(v11 + 8) = *(v81 + 8);
        *v11 = v85;
        *(v81 + 8) = v208;
        *v81 = v181;
        do
        {
          v86 = *(v11 + 20);
          v11 += 12;
        }

        while (v61 >= v86);
        do
        {
          v87 = *(v81 - 4);
          v81 -= 12;
        }

        while (v61 < v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v84;
      *(v11 - 4) = v61;
    }
  }

  v90 = *(v11 + 20);
  v91 = *(a2 - 4);
  if (v90 >= *(v11 + 8))
  {
    if (v91 >= v90)
    {
      return result;
    }

    v146 = *(v11 + 12);
    v147 = *(v11 + 20);
    v148 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v148;
    *(a2 - 4) = v147;
    *v8 = v146;
    goto LABEL_195;
  }

  if (v91 >= v90)
  {
    v214 = *(v11 + 8);
    v187 = *v11;
    *v11 = *(v11 + 12);
    *(v11 + 8) = *(v11 + 20);
    *(v11 + 12) = v187;
    *(v11 + 20) = v214;
    if (*(a2 - 4) >= *(v11 + 20))
    {
      return result;
    }

    v93 = *(v11 + 12);
    v94 = *(v11 + 20);
    v156 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v156;
  }

  else
  {
    v210 = *(v11 + 8);
    v183 = *v11;
    v92 = *v8;
    *(v11 + 8) = *(a2 - 4);
    *v11 = v92;
    v93 = v183;
    v94 = v210;
  }

  *(a2 - 4) = v94;
  *v8 = v93;
  return result;
}