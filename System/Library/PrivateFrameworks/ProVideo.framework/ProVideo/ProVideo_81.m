char *OZLocking::addLockDependenciesForDependents(char *result, OZScene *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a2)
    {
      v7 = result;
      if (result)
      {
        v8 = (*(*result + 256))(result);
        v9 = (*(*v8 + 56))(v8);
        result = OZScene::getDependantNodes(a2, v9);
        if (result)
        {
          v10 = result + 8;
          v11 = *result;
          if (*result != result + 8)
          {
            do
            {
              result = OZScene::getObject(a2, *(v11 + 7));
              if (result)
              {
                if (result)
                {
                  result = (*(*result + 48))(result, v7, a3, a4);
                }
              }

              v12 = v11[1];
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
                  v13 = v11[2];
                  v14 = *v13 == v11;
                  v11 = v13;
                }

                while (!v14);
              }

              v11 = v13;
            }

            while (v13 != v10);
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZLocking::reset(OZLocking *this)
{
  PCMutex::lock((this + 128));
  *(this + 14) = 0;
  *(this + 120) = 0;
  return PCMutex::unlock((this + 128));
}

uint64_t OZLocking::removeFromLockingGroup(OZLocking *this)
{
  v2 = (this + 128);
  PCMutex::lock((this + 128));
  v3 = *(this + 14);
  if (v3)
  {
    v4 = (*(*this + 32))(this);
    OZLockingGroup::remove(v3, v4);
  }

  OZLocking::reset(this);
  return PCMutex::unlock(v2);
}

void OZLockingGroup::remove(OZScene **this, unsigned int a2)
{
  Object = OZScene::getObject(this[3], a2);
  if (Object)
  {
    {
      v5 = this[1];
      if (v5)
      {
        v6 = (this + 1);
        do
        {
          v7 = *(v5 + 8);
          v8 = v7 >= a2;
          v9 = v7 < a2;
          if (v8)
          {
            v6 = v5;
          }

          v5 = *(v5 + v9);
        }

        while (v5);
        if (v6 != (this + 1) && *(v6 + 8) <= a2)
        {
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this, v6);

          operator delete(v6);
        }
      }
    }
  }
}

uint64_t OZLockingGroup::OZLockingGroup(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *result = result + 8;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  return result;
}

void OZLockingGroup::~OZLockingGroup(OZScene **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      Object = OZScene::getObject(this[3], *(v3 + 8));
      if (Object)
      {
        if (v5)
        {
          OZLocking::reset(v5);
        }
      }

      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this, this[1]);
}

uint64_t *OZLockingGroup::add(OZScene **this, unsigned int a2)
{
  result = OZScene::getObject(this[3], a2);
  if (result)
  {
    if (result)
    {
      v5[1] = result;
      v5[0] = a2;
      return std::__tree<OZLockingGroup::LockEntry,OZLockingGroup::LockEntryCompare,std::allocator<OZLockingGroup::LockEntry>>::__emplace_unique_key_args<OZLockingGroup::LockEntry,OZLockingGroup::LockEntry const&>(this, v5);
    }
  }

  return result;
}

void OZLockingGroup::acquireLocks(OZLockingGroup *this)
{
  OZScene::willAcquireLockingGroup(*(this + 3));
  v2 = *this;
  if (*this != (this + 8))
  {
    do
    {
      Object = OZScene::getObject(*(this + 3), *(v2 + 8));
      if (Object)
      {
        if (v4)
        {
          (**v4)(v4);
        }
      }

      v5 = *(v2 + 1);
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
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (this + 8));
  }

  atomic_fetch_add(this + 8, 1u);
}

void OZLockingGroup::releaseLocks(OZLockingGroup *this)
{
  v2 = (this + 8);
  if ((this + 8) != *this)
  {
    do
    {
      v3 = *v2;
      v4 = v2;
      if (*v2)
      {
        do
        {
          v5 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        do
        {
          v5 = v4[2];
          v6 = *v5 == v4;
          v4 = v5;
        }

        while (v6);
      }

      Object = OZScene::getObject(*(this + 3), *(v5 + 32));
      if (Object)
      {
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }

      v9 = *v2;
      if (*v2)
      {
        do
        {
          v10 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v6 = *v10 == v2;
          v2 = v10;
        }

        while (v6);
      }

      v2 = v10;
    }

    while (v10 != *this);
  }

  atomic_fetch_add(this + 8, 0xFFFFFFFF);
  v11 = *(this + 3);

  OZScene::didReleaseLockingGroup(v11);
}

void OZLockingGroup::acquireReadLocks(OZLockingGroup *this)
{
  OZScene::willAcquireLockingGroup(*(this + 3));
  v2 = *this;
  if (*this != (this + 8))
  {
    do
    {
      Object = OZScene::getObject(*(this + 3), *(v2 + 8));
      if (Object)
      {
        if (v4)
        {
          (*(*v4 + 16))(v4);
        }
      }

      v5 = *(v2 + 1);
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
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (this + 8));
  }

  atomic_fetch_add(this + 8, 1u);
}

void OZLockingGroup::releaseReadLocks(OZLockingGroup *this)
{
  v2 = (this + 8);
  if ((this + 8) != *this)
  {
    do
    {
      v3 = *v2;
      v4 = v2;
      if (*v2)
      {
        do
        {
          v5 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        do
        {
          v5 = v4[2];
          v6 = *v5 == v4;
          v4 = v5;
        }

        while (v6);
      }

      Object = OZScene::getObject(*(this + 3), *(v5 + 32));
      if (Object)
      {
        if (v8)
        {
          (*(*v8 + 24))(v8);
        }
      }

      v9 = *v2;
      if (*v2)
      {
        do
        {
          v10 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v6 = *v10 == v2;
          v2 = v10;
        }

        while (v6);
      }

      v2 = v10;
    }

    while (v10 != *this);
  }

  atomic_fetch_add(this + 8, 0xFFFFFFFF);
  v11 = *(this + 3);

  OZScene::didReleaseLockingGroup(v11);
}

OZLockingGroup::WriteSentry *OZLockingGroup::WriteSentry::WriteSentry(OZLockingGroup::WriteSentry *this, OZLockingGroup *a2)
{
  *this = a2;
  if (a2)
  {
    OZLockingGroup::acquireLocks(a2);
  }

  return this;
}

void OZLockingGroup::WriteSentry::~WriteSentry(OZLockingGroup **this)
{
  v1 = *this;
  if (v1)
  {
    OZLockingGroup::releaseLocks(v1);
  }
}

OZLockingGroup::ReadSentry *OZLockingGroup::ReadSentry::ReadSentry(OZLockingGroup::ReadSentry *this, OZLockingGroup *a2)
{
  *this = a2;
  if (a2)
  {
    OZLockingGroup::acquireReadLocks(a2);
  }

  return this;
}

void OZLockingGroup::ReadSentry::~ReadSentry(OZLockingGroup **this)
{
  v1 = *this;
  if (v1)
  {
    OZLockingGroup::releaseReadLocks(v1);
  }
}

uint64_t *std::__tree<OZLockingGroup::LockEntry,OZLockingGroup::LockEntryCompare,std::allocator<OZLockingGroup::LockEntry>>::__emplace_unique_key_args<OZLockingGroup::LockEntry,OZLockingGroup::LockEntry const&>(uint64_t a1, unsigned int *a2)
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

void OZSceneNode::OZSceneNode(OZSceneNode *this, OZFactory *a2, const PCString *a3, unsigned int NextUniqueID)
{
  *this = &unk_28727E108;
  *(this + 1) = a2;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *this = &unk_28727D900;
  *(this + 2) = &unk_28727DDC0;
  *(this + 6) = &unk_28727E018;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v7);
  }

  OZChannelSceneNode::OZChannelSceneNode((this + 56), a3, 0, NextUniqueID, 0);
  PCURL::PCURL(&v8, @"Channel Properties");
  OZChannelFolder::OZChannelFolder((this + 320), &v8, (this + 56), 1u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Object");
  OZChannelFolder::OZChannelFolder((this + 448), &v8, (this + 56), 2u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Effects");
  OZChannelFolder::OZChannelFolder((this + 576), &v8, (this + 56), 3u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Behaviors");
  OZChannelFolder::OZChannelFolder((this + 704), &v8, (this + 56), 4u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Channel Styles");
  OZChannelFolder::OZChannelFolder((this + 832), &v8, (this + 56), 5u, 0, 0);
  PCString::~PCString(&v8);
  *(this + 60) = 0u;
  *(this + 122) = this + 976;
  *(this + 123) = this + 976;
  *(this + 124) = 0;
  *(this + 125) = this + 1000;
  *(this + 126) = this + 1000;
  *(this + 127) = 0;
  *(this + 129) = 0x4014000000000000;
  PCWorkingColorVector::PCWorkingColorVector((this + 1040));
  *(this + 270) = 0;
  *(this + 134) = 0;
  *(this + 66) = 0u;
  OZChannelSceneNode::setSceneNode(this + 56, this);
  OZChannelBase::setFlag((this + 56), 0x80000, 0);
  OZChannelFolder::saveStateAsDefault((this + 56));
  *(this + 256) = 0;
  *(this + 1028) = 0;
  OZChannelBase::setFlag((this + 576), 2, 0);
  OZChannelFolder::saveStateAsDefault((this + 576));
  OZChannelBase::setFlag((this + 704), 2, 0);
  OZChannelFolder::saveStateAsDefault((this + 704));
  OZChannelBase::setFlag((this + 832), 2, 0);
  OZChannelFolder::setFoldFlag((this + 832), 0x80000);
  OZChannelFolder::saveStateAsDefault((this + 832));
}

void sub_26009BB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  std::__list_imp<unsigned int>::clear(v12);
  std::__list_imp<unsigned int>::clear(v11);
  OZChannelFolder::~OZChannelFolder((v10 + 832));
  OZChannelFolder::~OZChannelFolder((v10 + 704));
  OZChannelFolder::~OZChannelFolder((v10 + 576));
  OZChannelFolder::~OZChannelFolder((v10 + 448));
  OZChannelFolder::~OZChannelFolder((v10 + 320));
  OZChannelSceneNode::~OZChannelSceneNode((v10 + 56));
  *(v10 + 16) = &unk_28727CFF0;
  v14 = *(v10 + 24);
  if (v14)
  {
    *(v14 + 8) = 0;
    *(v10 + 24) = 0;
  }

  _Unwind_Resume(a1);
}

void OZSceneNode::OZSceneNode(OZSceneNode *this, const OZSceneNode *a2, char a3)
{
  v6 = *(a2 + 1);
  *this = &unk_28727E108;
  *(this + 1) = v6;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *this = &unk_28727D900;
  *(this + 2) = &unk_28727DDC0;
  *(this + 6) = &unk_28727E018;
  OZChannelSceneNode::OZChannelSceneNode((this + 56), (a2 + 56), 0);
  OZChannelFolder::OZChannelFolder((this + 320), (a2 + 320), (this + 56));
  OZChannelFolder::OZChannelFolder((this + 448), (a2 + 448), (this + 56));
  OZChannelFolder::OZChannelFolder((this + 576), (a2 + 576), (this + 56));
  OZChannelFolder::OZChannelFolder((this + 704), (a2 + 704), (this + 56));
  OZChannelFolder::OZChannelFolder((this + 832), (a2 + 832), (this + 56));
  *(this + 60) = 0u;
  *(this + 122) = this + 976;
  *(this + 123) = this + 976;
  *(this + 124) = 0;
  *(this + 125) = this + 1000;
  *(this + 126) = this + 1000;
  *(this + 127) = 0;
  *(this + 129) = *(a2 + 129);
  PCWorkingColorVector::PCWorkingColorVector((this + 1040));
  *(this + 134) = 0;
  *(this + 66) = 0u;
  *(this + 270) = *(a2 + 270) + 1;
  v7 = OZChannelSceneNode::setSceneNode(this + 56, this);
  *(this + 256) = *(a2 + 256);
  *(this + 1028) = *(a2 + 1028);
  if ((a3 & 2) != 0)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v7);
    OZChannelBase::setID((this + 56), NextUniqueID);
  }
}

void sub_26009BE7C(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v3);
  std::__list_imp<unsigned int>::clear(v2);
  OZChannelFolder::~OZChannelFolder((v1 + 832));
  OZChannelFolder::~OZChannelFolder((v1 + 704));
  OZChannelFolder::~OZChannelFolder((v1 + 576));
  OZChannelFolder::~OZChannelFolder((v1 + 448));
  OZChannelFolder::~OZChannelFolder((v1 + 320));
  OZChannelSceneNode::~OZChannelSceneNode((v1 + 56));
  *(v1 + 16) = &unk_28727CFF0;
  v5 = *(v1 + 24);
  if (v5)
  {
    *(v5 + 8) = 0;
    *(v1 + 24) = 0;
  }

  _Unwind_Resume(a1);
}

void OZSceneNode::~OZSceneNode(OZSceneNode *this)
{
  *this = &unk_28727D900;
  *(this + 2) = &unk_28727DDC0;
  *(this + 6) = &unk_28727E018;
  isSolo = OZChannelBase::isSolo((this + 56));
  while (1)
  {
    v3 = *(this + 124);
    if (!v3)
    {
      break;
    }

    v4 = *(this + 123);
    v5 = v4[1];
    v6 = v4[2];
    v7 = *v4;
    *(v7 + 8) = v5;
    *v5 = v7;
    *(this + 124) = v3 - 1;
    operator delete(v4);
    v8 = *(this + 121);
    if (v8)
    {
      if (v6)
      {
        v9 = (v6 + 12);
      }

      else
      {
        v9 = 0;
      }

      OZScene::unregisterObject(v8, v9);
      OZScene::removeAllDependencies(*(this + 121), v6[28]);
LABEL_9:
      (*(*v6 + 8))(v6);
    }

    else if (v6)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v16 = *(this + 127);
    if (!v16)
    {
      break;
    }

    v10 = *(this + 126);
    v11 = v10[1];
    v12 = v10[2];
    v13 = *v10;
    *(v13 + 8) = v11;
    *v11 = v13;
    *(this + 127) = v16 - 1;
    operator delete(v10);
    v14 = *(this + 121);
    if (v14)
    {
      if (v12)
      {
        v15 = (v12 + 4);
      }

      else
      {
        v15 = 0;
      }

      OZScene::unregisterObject(v14, v15);
      OZScene::removeAllDependencies(*(this + 121), v12[20]);
    }

    else if (!v12)
    {
      continue;
    }

    (*(*v12 + 8))(v12);
  }

  OZSceneNode::removeFromParent(this);
  OZSceneNode::removeFromLinked(this);
  (*(*this + 760))(this);
  v17 = *(this + 121);
  if (v17)
  {
    if (v17[153] == this)
    {
      OZScene::setCurrentObject(v17, 0);
      v17 = *(this + 121);
    }

    if (v17[154] == this)
    {
      OZScene::setActiveLayer(v17, 0);
      v17 = *(this + 121);
    }

    OZScene::unregisterNode(v17, this);
    if (isSolo)
    {
      memset(v34, 0, sizeof(v34));
      memset(v33, 0, 24);
      v35 = 1065353216;
      v30 = 0u;
      v31 = 0u;
      memset(v29, 0, 24);
      v32 = 1065353216;
      memset(v27, 0, sizeof(v27));
      memset(v26, 0, 24);
      v28 = 1065353216;
      OZScene::begin(*(this + 121), v22);
      *v29 = *v22;
      *&v29[9] = *&v22[9];
      v32 = v25;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(&v30, v24, 0);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v23);
      OZScene::end_sel(*(this + 121), v22);
      *v26 = *v22;
      *&v26[9] = *&v22[9];
      v28 = v25;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v27, v24, 0);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v23);
      *v33 = *v29;
      *&v33[9] = *&v29[9];
      v35 = v32;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v34, v31, 0);
      while (*v33 != *v26)
      {
        if (*v33 != *&v33[16])
        {
          v19 = *(*v33 + 16);
          if (v19)
          {
            if ((*(*v19 + 712))(v19))
            {
              if (*v33 != *v26)
              {
                goto LABEL_32;
              }

              break;
            }
          }
        }

        OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v33);
      }

      OZScene::updateSoloFlag(*(this + 121), v18);
LABEL_32:
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v27);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v30);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v34);
    }
  }

  v20 = *(this + 132);
  if (v20)
  {
    *(this + 133) = v20;
    operator delete(v20);
  }

  std::__list_imp<unsigned int>::clear(this + 125);
  std::__list_imp<unsigned int>::clear(this + 122);
  OZChannelFolder::~OZChannelFolder((this + 832));
  OZChannelFolder::~OZChannelFolder((this + 704));
  OZChannelFolder::~OZChannelFolder((this + 576));
  OZChannelFolder::~OZChannelFolder((this + 448));
  OZChannelFolder::~OZChannelFolder((this + 320));
  OZChannelSceneNode::~OZChannelSceneNode((this + 56));
  *(this + 2) = &unk_28727CFF0;
  v21 = *(this + 3);
  if (v21)
  {
    *(v21 + 8) = 0;
    *(this + 3) = 0;
  }
}

{
  OZSceneNode::~OZSceneNode(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSceneNode::removeFromParent(OZSceneNode *this)
{
  v2 = *(this + 120);
  if (v2)
  {
    (*(*v2 + 496))(v2);
    v3 = **(this + 120);
    if ((*(this + 1024) & 8) != 0)
    {
      (*(v3 + 1096))();
    }

    else
    {
      (*(v3 + 1000))();
    }
  }

  else
  {
    v4 = *(this + 121);
    if (v4)
    {
      OZScene::removeRootNode(v4, this);
    }
  }

  v5 = *(*this + 280);

  return v5(this, 0);
}

void *OZSceneNode::removeFromLinked(void *this)
{
  if (this[121])
  {
    v1 = this;
    v2 = this[132];
    v3 = this[133];
    while (v2 != v3)
    {
      this = OZScene::getNode(v1[121], *(v3 - 4));
      if (this)
      {
        this = OZSceneNode::removeLinkedID(this, *(v1 + 20));
      }

      v3 = v1[133] - 4;
      v1[133] = v3;
      v2 = v1[132];
    }
  }

  return this;
}

void non-virtual thunk toOZSceneNode::~OZSceneNode(OZSceneNode *this)
{
  OZSceneNode::~OZSceneNode((this - 16));
}

{
  OZSceneNode::~OZSceneNode((this - 48));
}

{
  OZSceneNode::~OZSceneNode((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSceneNode::~OZSceneNode((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSceneNode::operator=(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1000);
  for (i = *(a1 + 1008); v4 != i; i = *(a1 + 1008))
  {
    (*(**(*v4 + 16) + 120))(*(*v4 + 16));
    v4 = *v4;
  }

  while (1)
  {
    v13 = *(a1 + 1016);
    if (!v13)
    {
      break;
    }

    v6 = *(a1 + 1008);
    v7 = v6[1];
    v8 = v6[2];
    v9 = *v6;
    *(v9 + 8) = v7;
    *v7 = v9;
    *(a1 + 1016) = v13 - 1;
    operator delete(v6);
    v10 = *(a1 + 968);
    if (v10)
    {
      if (v8)
      {
        v11 = (v8 + 4);
      }

      else
      {
        v11 = 0;
      }

      OZScene::unregisterObject(v10, v11);
      OZScene::removeAllDependencies(*(a1 + 968), v8[20]);
    }

    v12 = (*(*v8 + 312))(v8);
    OZChannelFolder::removeDescendant((a1 + 704), v12);
    (*(*v8 + 8))(v8);
  }

  while (*(a1 + 992))
  {
    v14 = *(*(a1 + 984) + 16);
    (*(*v14 + 448))(v14);
    v15 = *(a1 + 984);
    v17 = *v15;
    v16 = v15[1];
    *(v17 + 8) = v16;
    *v16 = v17;
    --*(a1 + 992);
    operator delete(v15);
    v18 = *(a1 + 968);
    if (v18)
    {
      OZScene::unregisterObject(v18, (v14 + 12));
      OZScene::removeAllDependencies(*(a1 + 968), v14[28]);
    }

    v19 = (*(*v14 + 240))(v14);
    OZChannelFolder::removeDescendant((a1 + 576), v19);
    (*(*v14 + 8))(v14);
  }

  (*(*a1 + 208))(a1, a2, 0);
  OZChannelFolder::operator=(a1 + 56);
  OZChannelFolder::operator=(a1 + 320);
  OZChannelFolder::operator=(a1 + 448);
  OZChannelFolder::operator=(a1 + 576);
  OZChannelFolder::operator=(a1 + 704);
  result = OZChannelFolder::operator=(a1 + 832);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1028) = *(a2 + 1028);
  ++*(a1 + 1080);
  return result;
}

char *OZSceneNode::cloneBehaviorsEffects(char *this, const OZSceneNode *a2, uint64_t a3)
{
  v5 = this;
  v6 = a2 + 1000;
  if ((a2 + 1000) != *(a2 + 126))
  {
    do
    {
      this = (*(**(*(*v6 + 16) + 8) + 24))(*(*(*v6 + 16) + 8), *(*v6 + 16), a3);
      if (this)
      {
        if (this)
        {
          v7 = (*(*this + 312))(this);
          OZChannelFolder::push_front((v5 + 704), v7);
          operator new();
        }
      }

      v6 = *v6;
    }

    while (v6 != *(a2 + 126));
  }

  if (v5)
  {
  }

  v8 = a2 + 976;
  if ((a2 + 976) != *(a2 + 123))
  {
    do
    {
      this = (*(**(*(*v8 + 16) + 40) + 24))(*(*(*v8 + 16) + 40), *(*v8 + 16) + 32, a3);
      if (this)
      {
        if (this)
        {
          v9 = (*(*this + 240))(this);
          OZChannelFolder::push_front((v5 + 576), v9);
          operator new();
        }
      }

      v8 = *v8;
    }

    while (v8 != *(a2 + 123));
  }

  for (i = v5 + 1000; i != *(v5 + 126); i = *i)
  {
    this = (*(**(*i + 16) + 96))(*(*i + 16), v5);
  }

  return this;
}

void OZSceneNode::copyLinkedIDs(const void **this, const OZSceneNode *a2)
{
  v2 = *(a2 + 132);
  v3 = *(a2 + 133);
  while (v2 != v3)
  {
    v5 = *v2++;
    v6 = v5;
    std::vector<int>::push_back[abi:ne200100](this + 132, &v6);
  }
}

void OZSceneNode::copyLinkedObjects(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PCPrint("File %s, line %d should not have been reached:\n\t", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZSceneNode.cpp");

  pcAbortImpl();
}

uint64_t OZSceneNode::hitCheck()
{
  return 0;
}

{
  return 0;
}

uint64_t OZSceneNode::getDescendantAtIndex(OZSceneNode *this, int a2)
{
  if (*(this + 124))
  {
    v3 = this + 976;
    i = *(this + 123);
    v5 = i != this + 976;
    v6 = 0;
    if (i != this + 976 && a2 != 0)
    {
      do
      {
        i = *(i + 1);
        v5 = i != v3;
      }

      while (i != v3 && a2 - 1 != v6++);
    }

    if (v5)
    {
      v9 = 48;
      goto LABEL_23;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!*(this + 127))
  {
    return 0;
  }

  v10 = this + 1000;
  for (i = *(this + 126); i != v10 && v6 != a2; i = *(i + 1))
  {
    v12 = (*(**(i + 2) + 312))(*(i + 2));
    v6 += !OZChannelBase::testFlag(v12, 2);
  }

  if (i == v10)
  {
    return 0;
  }

  v9 = 16;
LABEL_23:
  v13 = *(i + 2);
  v14 = v13 + v9;
  if (v13)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t OZSceneNode::writeHeader(OZFactory **this, PCSerializerWriteStream *a2)
{
  v4 = *this;
  if (v5)
  {
    v6 = (*(v5[2423] + 208))();
    v4 = *this;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v4 + 61))(this);
  PCSerializerWriteStream::pushScope(a2, &OZSceneNodeWriteScope);
  if ((this[128] & 8) != 0)
  {
    (*(*a2 + 16))(a2, 70);
    v8 = 0;
  }

  else
  {
    {
      (*(*a2 + 16))(a2, 61);
LABEL_17:
      v8 = 0;
      v9 = 0;
      goto LABEL_18;
    }

    {
      (*(*a2 + 16))(a2, 63);
      goto LABEL_17;
    }

    {
      (*(*a2 + 16))(a2, 66);
      goto LABEL_17;
    }

    {
      (*(*a2 + 16))(a2, 67);
      goto LABEL_17;
    }

    v11 = *(*a2 + 16);
    if (v10)
    {
      v11(a2, 64);
      goto LABEL_17;
    }

    v11(a2, 62);
    v8 = 1;
  }

  v9 = 1;
LABEL_18:
  Name = OZObjectManipulator::getName((this + 2));
  (*(*a2 + 200))(a2, 110, Name);
  (*(*a2 + 144))(a2, 111, *(this + 20));
  if (v9 && ((*(*a2 + 232))(a2) & 1) == 0)
  {
    v14 = OZFactory::fileRefID(this[1], v13);
    (*(*a2 + 144))(a2, 113, v14);
  }

  if (v5)
  {
    OZFxPlugSharedBase::getPluginUUID(v15 + 2423, &v22);
    (*(*a2 + 200))(a2, 7, &v22);
    PCString::~PCString(&v22);
    v17 = (*(v16[2423] + 192))(v16 + 2423);
    (*(*a2 + 152))(a2, 8, v17);
  }

  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

LABEL_29:
    {
      InternalName = OZFxGenerator::getInternalName(v20);
    }

    else
    {
      InternalName = OZObjectManipulator::getInternalName((this + 2));
    }

    (*(*a2 + 200))(a2, 118, InternalName);
    if (v8)
    {
      goto LABEL_26;
    }

    return PCSerializerWriteStream::popScope(a2);
  }

  v19 = (*(v5[2423] + 208))();
  (*(*a2 + 152))(a2, 9, v19);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (v8)
  {
LABEL_26:
    (*(*this + 146))(this);
    (*(*a2 + 184))(a2, 116);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZSceneNode::writeBody(unsigned int **this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZSceneNodeWriteScope);
  if (this)
  {
    if (v10)
    {
      v11 = v10;
      v12 = (v10 + 2423);
      if ((*(v10[2423] + 26))(v10 + 2423))
      {
        RootChannelFolder = OZFxGenerator::getRootChannelFolder(v11);
        OZFxPlugSharedBase::writeDynamicParams(v12, a2, RootChannelFolder);
      }
    }
  }

  v14 = *(this + 256);
  (*(*a2 + 16))(a2, 200);
  (*(*a2 + 56))(a2, v14);
  (*(*a2 + 24))(a2);
  v15 = this[133];
  v16 = this[132];
  while (v16 != v15)
  {
    (*(*a2 + 16))(a2, 201);
    v17 = *v16++;
    (*(*a2 + 56))(a2, v17);
    (*(*a2 + 24))(a2);
    v15 = this[133];
  }

  OZChannelObjectRoot::serializeSelfOnly((this + 7), a2, a3);
  (*(this[42] + 2))(this + 336, a2, 0);
  (*(this[42] + 3))(this + 336, a2, 0, 1, a5);
  (*(*a2 + 24))(a2);
  (*(this[58] + 2))(this + 464, a2, 0);
  (*(this[58] + 3))(this + 464, a2, 0, 1, a5);
  (*(*a2 + 24))(a2);
  if (a4)
  {
    for (i = this[123]; i != this + 122; i = i[1])
    {
      v19 = i[2];
      if (!OZChannelBase::testFlag((v19 + 22), 8))
      {
        v21 = *(v19 + 10);
        v20 = v19 + 20;
        (*(v21 + 16))(v20, a2, 0);
        (*(*v20 + 24))(v20, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }
    }

    for (j = this[126]; j != this + 125; j = j[1])
    {
      v23 = j[2];
      if (!OZChannelBase::testFlag((v23 + 14), 8))
      {
        v25 = *(v23 + 6);
        v24 = v23 + 12;
        (*(v25 + 16))(v24, a2, 0);
        (*(*v24 + 24))(v24, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }
    }
  }

  result = PCSerializerWriteStream::popScope(a2);
  *(this + 1028) = 1;
  return result;
}

uint64_t OZSceneNode::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  {
    OZFactory::setNeedsSaving(this[1], 1);
  }

  if (v4)
  {
    v5 = (v4 + 19384);
    if ((*(*(v4 + 2423) + 208))(v4 + 19384))
    {
      OZFxPlugSharedBase::markDynamicParameterFactoriesForSerialization(v5);
    }
  }

  for (i = this[126]; i != this + 125; i = i[1])
  {
    v7 = i[2];
    if (!OZChannelBase::testFlag((v7 + 56), 8))
    {
      (*(*v7 + 576))(v7, a2, 0);
    }
  }

  for (j = this[123]; j != this + 122; j = j[1])
  {
    v9 = j[2];
    if (!OZChannelBase::testFlag((v9 + 88), 8))
    {
      (*(*v9 + 552))(v9, a2, 0);
    }
  }

  if ((*(*this + 120))(this))
  {
    v10 = (*(*this + 128))(this);
    v11 = (*(*this + 129))(this);
    if (v10 != v11)
    {
      v12 = v11;
      do
      {
        (*(**(v10 + 16) + 456))(*(v10 + 16), a2, 0);
        v10 = *(v10 + 8);
      }

      while (v10 != v12);
    }
  }

  if ((*(*this + 132))(this))
  {
    v13 = (*(*this + 138))(this);
    v14 = (*(*this + 139))(this);
    if (v13 != v14)
    {
      v15 = v14;
      do
      {
        (*(**(v13 + 16) + 456))(*(v13 + 16), a2, 0);
        v13 = *(v13 + 8);
      }

      while (v13 != v15);
    }
  }

  return OZChannelObjectRoot::markChannelFactoriesForSerialization((this + 7), a2);
}

uint64_t OZSceneNode::parseBegin(OZSceneNode *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZSceneNodeReadScope);
  OZChannelObjectRoot::parseBegin((this + 56), a2);
  *(this + 133) = *(this + 132);
  return 1;
}

uint64_t non-virtual thunk toOZSceneNode::parseBegin(OZSceneNode *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZSceneNodeReadScope);
  OZChannelObjectRoot::parseBegin((this + 8), a2);
  *(this + 127) = *(this + 126);
  return 1;
}

uint64_t OZSceneNode::parseEnd(OZSceneNode *this, PCSerializerReadStream *a2)
{
  OZChannelObjectRoot::parseEnd((this + 56), a2);
  for (i = this + 1000; i != *(this + 126); i = *i)
  {
    (*(**(*i + 16) + 128))(*(*i + 16));
  }

  (*(*this + 88))(this);
  return 1;
}

uint64_t OZSceneNode::parseElement(OZSceneNode *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v41 = 0;
  v40 = 0;
  PCSharedCount::PCSharedCount(&v39);
  PCSharedCount::PCSharedCount(&v38);
  PCSharedCount::PCSharedCount(&v37);
  v36 = 0.0;
  v35 = 0;
  v34 = 0;
  if (this)
  {
    if (v6)
    {
      v7 = (v6 + 2423);
      if ((*(v6[2423] + 208))(v6 + 2423))
      {
        OZFxPlugSharedBase::parseDynamicParamElement(v7, a2, a3);
      }
    }
  }

  OZChannelObjectRoot::parseElement(this + 7, a2, a3);
  v8 = *(a3 + 2);
  if (v8 > 199)
  {
    if (v8 == 201)
    {
      v33.i32[0] = 0;
      PCSerializerReadStream::getAsUInt32(a2, a3, &v33);
      std::vector<int>::push_back[abi:ne200100](this + 132, &v33);
    }

    else if (v8 == 200)
    {
      (*(*a3 + 32))(a3, this + 1024);
    }
  }

  else
  {
    if (v8 != 68)
    {
      if (v8 == 69)
      {
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, &v40);
        PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v39);
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v41);
        if (*(this + 127))
        {
          v9 = *(*(this + 125) + 16);
        }

        else
        {
          v9 = 0;
        }

        v18 = OZFactories::lookupFactory(*(theApp + 32), v40);
        {
          v20 = v19;
          v21 = (*(*v19 + 168))(v19, &v39, v41);
          if (v21)
          {
            v33 = xmmword_2603473C0;
            if (OZFactory::isKindOfClass(v20, &v33))
            {
              v9 = 0;
            }

            v22 = (*(*v21 + 312))(v21);
            OZChannelBase::resetFlag(v22, 64, 0);
            OZSceneNode::insertBehaviorBefore(this, v21, v9);
          }
        }

        else
        {
          v33 = xmmword_26084FAC0;
          Factory = OZFactories::findFactory(*(theApp + 32), &v33);
          if (Factory)
          {
          }

          v24 = (*(*Factory + 168))(Factory, &v39, v41);
          v25 = v24;
          if (v24)
          {
            v26 = (*(*v24 + 312))(v24);
            OZChannelBase::resetFlag(v26, 64, 0);
            OZSceneNode::insertBehaviorBefore(this, v25, v9);
          }
        }
      }

      goto LABEL_43;
    }

    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, &v40);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v39);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v41);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 7, &v38);
    if ((PCSerializerReadStream::getAttributeAsString(a2, a3, 118, &v37) & 1) == 0)
    {
      PCString::set(&v37, &v39);
    }

    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 116, &v36);
    PCSerializerReadStream::getAttributeAsInt32(a2, a3, 8, &v35);
    PCSerializerReadStream::getAttributeAsBool(a2, a3, 9, &v34);
    v10 = OZFactories::lookupFactory(*(theApp + 32), v40);
    if (v10)
    {
      if (v11)
      {
        v12 = v11;
        if (v13)
        {
          v14 = v13;
          v15 = PCString::empty(&v38);
          v16 = *(*v14 + 200);
          if (!v15)
          {
            v29 = v16(v14, &v38, v41, v35, v34);
            v28 = v29;
            if (v29)
            {
            }

            else
            {
              v30 = 0;
            }

            OZFxFilter::setInternalName(v30, &v37);
LABEL_41:
            if (v28)
            {
              (*(*v28 + 624))(v28, v36);
              (*(v28[6] + 120))(v28 + 6, &v39, 0);
              v31 = (*(*v28 + 240))(v28);
              OZChannelBase::resetFlag(v31, 64, 0);
              (*(*this + 344))(this, v28, 0);
              PCSerializerReadStream::pushHandler(a2, (v28 + 10));
            }

            goto LABEL_43;
          }

          v17 = v16(v14, &v37, v41, v35, v34);
        }

        else
        {
          if (PCString::empty(&v38))
          {
            v27 = &v37;
          }

          else
          {
            v27 = &v38;
          }

          v17 = (*(*v12 + 168))(v12, v27, v41);
        }

        v28 = v17;
        goto LABEL_41;
      }
    }
  }

LABEL_43:
  PCString::~PCString(&v37);
  PCString::~PCString(&v38);
  PCString::~PCString(&v39);
  return 1;
}

void sub_26009E5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, PCString a14, PCString a15)
{
  PCString::~PCString(&a13);
  PCString::~PCString(&a14);
  PCString::~PCString(&a15);
  _Unwind_Resume(a1);
}

void OZSceneNode::insertBehaviorBefore(OZSceneNode *this, OZBehavior *a2, OZBehavior *a3)
{
  if (((*(*(a2 + 2) + 48))(a2 + 16) & 1) == 0)
  {
    if (a3 && !(*(*(a3 + 2) + 48))())
    {
      goto LABEL_9;
    }

    v5 = this + 1000;
    if ((this + 1000) != *(this + 126))
    {
      while (1)
      {
        v6 = *(*v5 + 16);
        if (!(*(*(v6 + 2) + 48))())
        {
          break;
        }

        a3 = v6;
        v5 = *v5;
        if (v5 == *(this + 126))
        {
          goto LABEL_9;
        }
      }
    }
  }

  if (!a3)
  {
    operator new();
  }

LABEL_9:
    ;
  }

  operator new();
}

void OZSceneNode::setStartTime(OZSceneNode *this, const CMTime *a2)
{
  (*(*this + 1128))(&v24);
  *&v21.value = *&a2->value;
  epoch = a2->epoch;
  v22 = v25;
  v21.epoch = epoch;
  v23 = v26;
  v20 = *a2;
  (*(*this + 1136))(this, &v21, 0);
  v17 = v20;
  (*(*this + 1120))(this, &v17, 0);
  for (i = *(this + 126); i != (this + 1000); i = i[1])
  {
    v6 = i[2];
    v7 = *v6;
    v6 = (v6 + 56);
    (*(v7 + 608))(&v17);
    memset(&v16, 0, sizeof(v16));
    v12 = v17;
    v27 = v24;
    PC_CMTimeSaferSubtract(&v12, &v27, &v16);
    memset(&v15, 0, sizeof(v15));
    v12 = v21;
    v27 = v16;
    PC_CMTimeSaferAdd(&v12, &v27, &v15);
    v13 = v18;
    v14 = v19;
    v12 = v15;
    OZChannelObjectRootBase::setTimeExtent(v6, &v12, 0);
    v27 = v15;
    OZChannelObjectRootBase::setTimeOffset(v6, &v27, 0);
  }

  v8 = this + 976;
  v9 = *(this + 123);
  if (v9 != this + 976)
  {
    do
    {
      v10 = *(v9 + 2);
      v11 = *v10;
      v10 = (v10 + 88);
      (*(v11 + 592))(&v17);
      memset(&v16, 0, sizeof(v16));
      v12 = v17;
      v27 = v24;
      PC_CMTimeSaferSubtract(&v12, &v27, &v16);
      memset(&v15, 0, sizeof(v15));
      v12 = v21;
      v27 = v16;
      PC_CMTimeSaferAdd(&v12, &v27, &v15);
      v13 = v18;
      v14 = v19;
      v12 = v15;
      OZChannelObjectRootBase::setTimeExtent(v10, &v12, 0);
      v27 = v15;
      OZChannelObjectRootBase::setTimeOffset(v10, &v27, 0);
      v9 = *(v9 + 1);
    }

    while (v9 != v8);
  }
}

double OZSceneNode::begin@<D0>(OZSceneNode *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  return result;
}

double OZSceneNode::end@<D0>(OZSceneNode *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  return result;
}

uint64_t OZSceneNode::setScene(void *a1, uint64_t a2)
{
  a1[121] = a2;
  v4 = (*(*a1 + 1104))(a1);
  v5 = (*(*a1 + 1112))(a1);
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      (*(**(v4 + 16) + 280))(*(v4 + 16), a2);
      v4 = *(v4 + 8);
    }

    while (v4 != v6);
  }

  v7 = (*(*a1 + 1024))(a1);
  v8 = (*(*a1 + 1032))(a1);
  v20 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v15 = v7;
  v16 = v7;
  v17 = v8;
  v18 = 0;
  (*(*a1 + 1024))(a1);
  v9 = (*(*a1 + 1032))(a1);
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v12 = v9;
  for (i = v7; i != v12; v15 = i)
  {
    (*(**(i + 16) + 280))(*(i + 16), a2);
    i = *(v15 + 8);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v13);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v19);
}

uint64_t OZSceneNode::dirty(OZSceneNode *this)
{
  OZObjectManipulator::dirty((this + 16));
  result = *(this + 120);
  if (result)
  {
    result = (*(*result + 496))(result);
  }

  for (i = *(this + 123); i != (this + 976); i = *(i + 8))
  {
    result = (*(**(i + 16) + 320))(*(i + 16));
  }

  v4 = this + 1000;
  for (j = *(this + 126); j != v4; j = *(j + 8))
  {
    result = (*(**(j + 16) + 352))(*(j + 16));
  }

  return result;
}

double OZSceneNode::invalidateStaticHash(OZSceneNode *this)
{
  OZObjectManipulator::invalidateStaticHash((this + 16));
  result = 0.0;
  *(this + 65) = 0u;
  return result;
}

double non-virtual thunk toOZSceneNode::invalidateStaticHash(OZSceneNode *this)
{
  OZObjectManipulator::invalidateStaticHash(this);
  result = 0.0;
  *(this + 64) = 0u;
  return result;
}

int8x8_t *OZSceneNode::getStaticHashWithoutEffects(int8x8_t *a1, const void *a2, uint64_t a3)
{
  v3 = a1 + 130;
  if (!*&vorr_s8(a1[130], *&vextq_s8(*a1[130].i8, *a1[130].i8, 8uLL)))
  {
    (*(*a2 + 40))(a2);
    (*(*a1 + 528))(a1, a2, a3, 0);
    if (!v7)
    {
      __cxa_bad_cast();
    }

    *v3->i8 = *PCHashWriteStream::getHash(v7)->i8;
  }

  return v3;
}

void OZSceneNode::getHashForStateWithoutEffects(OZCacheManager *a1, uint64_t a2, OZRenderParams *a3)
{
  {
    if (a1)
    {
      PCString::PCString(&v6, "This is a scene node hash without effects.");
      PCHash128::PCHash128(&OZSceneNode::getHashForStateWithoutEffects(PCSerializerWriteStream &,OZRenderParams const&,std::list<OZObjectManipulator *> &)::withoutEffectsHash, &v6);
      PCString::~PCString(&v6);
    }
  }

  OZCacheManager::Instance(a1);
  std::list<OZObjectManipulator *>::list(&v6, 10);
  (*(*a2 + 40))(a2);
  v5 = *OZRenderParams::getHash(a3);
  OZObjectManipulator::getStaticHash();
}

void sub_26009F614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, PCString a14)
{
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

double OZSceneNode::calcHashForState(uint64_t a1, void *lpsrc, CMTime *a3, uint64_t a4, int a5)
{
  if (!v10)
  {
    __cxa_bad_cast();
  }

  v11 = v10;
  v28 = *a3;
  v12 = (*(*(a1 + 16) + 104))(a1 + 16, &v28, 1, 1, 1);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 48))(lpsrc, v12);
  (*(*lpsrc + 24))(lpsrc);
  v13 = *(a1 + 1024);
  (*(*lpsrc + 16))(lpsrc, 0);
  (*(*lpsrc + 56))(lpsrc, v13);
  (*(*lpsrc + 24))(lpsrc);
  v28 = *a3;
  OZChannelObjectRootBase::calcHashForStateSelfOnly((a1 + 56), lpsrc, &v28);
  v28 = *a3;
  OZChannelFolder::calcHashForState((a1 + 320), lpsrc, &v28);
  v28 = *a3;
  OZChannelFolder::calcHashForState((a1 + 448), lpsrc, &v28);
  v28 = *a3;
  OZChannelFolder::calcHashForState((a1 + 832), lpsrc, &v28);
  v27 = *PCHashWriteStream::getHash(v11)->i8;
  if (a5)
  {
    for (i = *(a1 + 984); i != a1 + 976; i = *(i + 8))
    {
      v15 = *(i + 16);
      v28 = *a3;
      if ((*(*v15 + 280))(v15, &v28, 0, 1, 1))
      {
        OZObjectManipulator::getHashForState();
      }
    }
  }

  if ((*(*a1 + 1008))(a1))
  {
    for (j = *(a1 + 1008); j != a1 + 1000; j = *(j + 8))
    {
      if ((*(*(*(j + 16) + 16) + 24))(*(j + 16) + 16, 0, 1))
      {
        OZObjectManipulator::getHashForState();
      }
    }
  }

  v17 = *(a1 + 968);
  if (v17)
  {
    *&v28.timescale = 0;
    v28.epoch = 0;
    v28.value = &v28.timescale;
    OZScene::getImmediatelyReferencedNodes(v17, *(a1 + 80), &v28);
    value = v28.value;
    if (v28.value != &v28.timescale)
    {
      do
      {
        Node = OZScene::getNode(*(a1 + 968), *(value + 28));
        v20 = Node;
        if (Node)
        {
          if (Node[120] != a1 || (epoch = a3->epoch, v25 = *&a3->value, ((*(Node[2] + 104))(Node + 2, &v25, 0) & 1) != 0))
          {
            if (!OZObjectManipulator::isInObjectList((v20 + 2), a4))
            {
              OZObjectManipulator::getHashForState();
            }
          }
        }

        v21 = *(value + 8);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = v21->value;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = *(value + 16);
            v23 = v22->value == value;
            value = v22;
          }

          while (!v23);
        }

        value = v22;
      }

      while (v22 != &v28.timescale);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v28, *&v28.timescale);
  }

  *&result = PCHashWriteStream::setHash(v11, &v27).n128_u64[0];
  return result;
}

void OZSceneNode::calcStaticHash(uint64_t a1, void *lpsrc, uint64_t a3, int a4)
{
  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  (*(*v7 + 40))(v7);
  (*(*a1 + 448))(a1, v8, 0, 0, 1);
  v18 = *PCHashWriteStream::getHash(v8)->i8;
  if (a4 && *(a1 + 984) != a1 + 976)
  {
    OZObjectManipulator::getStaticHash();
  }

  if (*(a1 + 1008) != a1 + 1000)
  {
    OZObjectManipulator::getStaticHash();
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v9 = *(a1 + 968);
  if (v9)
  {
    OZScene::getImmediatelyReferencedNodes(v9, *(a1 + 80), &v16);
    v10 = v16;
    if (v16 != v17)
    {
      do
      {
        v11 = *(a1 + 968);
        if (v11)
        {
          Node = OZScene::getNode(v11, *(v10 + 7));
          if (Node)
          {
            if (!OZObjectManipulator::isInObjectList(Node + 16, a3))
            {
              OZObjectManipulator::getStaticHash();
            }
          }
        }

        v13 = v10[1];
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
            v14 = v10[2];
            v15 = *v14 == v10;
            v10 = v14;
          }

          while (!v15);
        }

        v10 = v14;
      }

      while (v14 != v17);
    }
  }

  PCHashWriteStream::setHash(v8, &v18);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v16, v17[0]);
}

BOOL OZSceneNode::areStaticHashesInvalid(OZSceneNode *this)
{
  if (vorr_s8(*(this + 32), *&vextq_s8(*(this + 2), *(this + 2), 8uLL)))
  {
    for (i = *(this + 123); i != (this + 976); i = i[1])
    {
      if (!*&vorr_s8(*(i[2] + 64), *&vextq_s8(*(i[2] + 64), *(i[2] + 64), 8uLL)))
      {
        return 1;
      }
    }

    v3 = this + 1000;
    v4 = *(this + 126);
    if (v4 == (this + 1000))
    {
      return 0;
    }

    else
    {
      do
      {
        v5 = vorr_s8(*(v4[2] + 32), *&vextq_s8(*(v4[2] + 32), *(v4[2] + 32), 8uLL));
        result = *&v5 == 0;
        if (!*&v5)
        {
          break;
        }

        v4 = v4[1];
      }

      while (v4 != v3);
    }
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t OZSceneNode::getSuccessor(OZSceneNode *this)
{
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, 24);
  v41 = 1065353216;
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, 24);
  v37 = 1065353216;
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, 24);
  v34 = 1065353216;
  v2 = *(this + 120);
  if (v2)
  {
    v3 = (*(*v2 + 1024))(*(this + 120));
    v4 = (*(*v2 + 1032))(v2);
    v30 = 0u;
    v29 = 0u;
    v31 = 1065353216;
    *v28 = v3;
    *&v28[8] = v3;
    *&v28[16] = v4;
    v28[24] = 0;
    *v38 = *v28;
    *&v38[9] = *&v28[9];
    v41 = 1065353216;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(&v39, 0, 0);
    *v32 = *v38;
    *&v32[9] = *&v28[9];
    v34 = v41;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v33, v40, 0);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v29);
    v5 = *(this + 120);
    v6 = (*(*v5 + 1024))(v5);
    v7 = (*(*v5 + 1032))(v5);
    v30 = 0u;
    v29 = 0u;
    v31 = 1065353216;
    *v28 = v7;
    *&v28[8] = v6;
    *&v28[16] = v7;
    v28[24] = 0;
    *v35 = *v28;
    *&v35[9] = *&v28[9];
    v37 = 1065353216;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v36, 0, 0);
  }

  else
  {
    v8 = *(this + 121);
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = v8 + 1200;
    v10 = *(v8 + 1208);
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 1065353216;
    *v28 = v10;
    *&v28[8] = v10;
    *&v28[16] = v9;
    v28[24] = 0;
    *v38 = *v28;
    *&v38[9] = *&v28[9];
    v41 = 1065353216;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(&v39, 0, 0);
    *v32 = *v38;
    *&v32[9] = *&v28[9];
    v34 = v41;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v33, v40, 0);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v29);
    v11 = *(this + 121);
    v12 = v11 + 1200;
    v13 = *(v11 + 1208);
    v29 = 0u;
    v30 = 0u;
    v31 = 1065353216;
    *v28 = v12;
    *&v28[8] = v13;
    *&v28[16] = v12;
    v28[24] = 0;
    *v35 = *v28;
    *&v35[9] = *&v28[9];
    v37 = 1065353216;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v36, 0, 0);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v29);
  for (i = *v32; *v32 != *v35; i = *v32)
  {
    if (i == *&v32[16])
    {
      v15 = 0;
    }

    else
    {
      v15 = *(i + 16);
    }

    if (v15 == this)
    {
      break;
    }

    memset(v26, 0, sizeof(v26));
    v27 = 1065353216;
    v22 = i;
    v23 = *&v32[8];
    v24 = *&v32[16];
    v25 = v32[24];
    *v32 = *(i + 8);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v26);
  }

  if (i == *&v32[16])
  {
    v16 = 0;
  }

  else
  {
    v16 = *(i + 16);
  }

  if (v16 == this)
  {
    memset(v20, 0, sizeof(v20));
    v21 = 1065353216;
    *v32 = *(i + 8);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
    if (*v32 == *v35)
    {
      v19 = *(this + 120);
      if (v19)
      {
        Successor = OZSceneNode::getSuccessor(v19);
        goto LABEL_16;
      }
    }

    else if (*v32 != *&v32[16])
    {
      Successor = *(*v32 + 16);
      goto LABEL_16;
    }
  }

LABEL_15:
  Successor = 0;
LABEL_16:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v33);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v36);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v39);
  return Successor;
}

void sub_2600A02B0(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  _Unwind_Resume(a1);
}

OZSceneNode *OZSceneNode::getRootAncestor(OZSceneNode *this)
{
  do
  {
    v1 = this;
    this = *(this + 120);
  }

  while (this);
  return v1;
}

OZSceneNode *OZSceneNode::getCommonAncestor(OZSceneNode *this, OZSceneNode *a2, int a3)
{
  v3 = a2;
  if (a2)
  {
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    if (a3)
    {
      this = *(this + 120);
    }

    for (i = this; i; i = *(i + 120))
    {
      std::deque<OZSceneNode *>::push_back(v13, &i);
    }

    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    if (a3)
    {
      v3 = *(v3 + 120);
    }

    for (i = v3; i; i = *(i + 120))
    {
      std::deque<OZSceneNode *>::push_back(v10, &i);
    }

    v5 = *(&v14 + 1);
    if (*(&v14 + 1) && (v6 = *(&v11 + 1)) != 0)
    {
      v7 = 0;
      do
      {
        v3 = v7;
        v8 = v5 - 1;
        v7 = *(*(*(&v13[0] + 1) + (((v14 + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + v8) & 0x1FF));
        if (v7 != *(*(*(&v10[0] + 1) + (((v6 + v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v6 + v11 - 1) & 0x1FF)))
        {
          break;
        }

        *(&v14 + 1) = v8;
        std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](v13, 1);
        --*(&v11 + 1);
        std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](v10, 1);
        v5 = *(&v14 + 1);
        if (!*(&v14 + 1))
        {
          v3 = v7;
          break;
        }

        v6 = *(&v11 + 1);
        v3 = v7;
      }

      while (*(&v11 + 1));
    }

    else
    {
      v3 = 0;
    }

    std::deque<unsigned long>::~deque[abi:ne200100](v10);
    std::deque<unsigned long>::~deque[abi:ne200100](v13);
  }

  return v3;
}

void sub_2600A047C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  std::deque<unsigned long>::~deque[abi:ne200100](&a9);
  std::deque<unsigned long>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

BOOL OZSceneNode::isDescendantOf(OZSceneNode *this, const OZSceneNode *a2)
{
  do
  {
    this = *(this + 120);
  }

  while (this != a2 && this != 0);
  return this != 0;
}

uint64_t OZSceneNode::isDescendantOf360Group(uint64_t this)
{
  if (this)
  {
    v1 = this;
    while (1)
    {
      if (v2)
      {
        if (OZGroup::is360Group(v2))
        {
          break;
        }
      }

      v1 = v1[120];
      if (!v1)
      {
        return 0;
      }
    }

    return 1;
  }

  return this;
}

uint64_t OZSceneNode::getSourceOperationMask(OZSceneNode *this, OZChannelBase *a2, int a3)
{
  v3 = *(this + 86);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*v4 == a2)
      {
        return 3;
      }

      ++v4;
    }
  }

  v6 = *(this + 102);
  if (v6)
  {
    v7 = *v6;
    v8 = v6[1];
    while (v7 != v8)
    {
      if (*v7 == a2)
      {
        return 3;
      }

      ++v7;
    }
  }

  return OZObjectManipulator::getSourceOperationMask((this + 16), a2, a3);
}

void OZSceneNode::allowDrag(OZSceneNode *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  *a5 = 0;
  if (lpsrc)
  {
    if (v12 && *a6 == 1)
    {
      if ((*(*this + 640))(this) == a3)
      {
        v16 = (*(*v12 + 272))(v12);
        v17 = (*(*this + 272))(this);
        if (a7 == 1 && v16 == v17)
        {
          v18 = (*(*this + 640))(this);
          if (OZChannelObjectRoot::findNodeRefDescendant(v18, v12, v18))
          {
            if ((*(*this + 592))(this))
            {
              *a6 = 1;
              v19 = a4 & 8;
LABEL_58:
              *a5 = v19;
              return;
            }
          }
        }
      }

      return;
    }

    if (v13)
    {
      {
        if (*a6 - 1 <= 2)
        {
          v24 = (*(*v13 + 296))(v13);
          v25 = *v13;
          if (v24)
          {
            if ((*(v25 + 240))(v13) == a3 || !(*(*v13 + 528))(v13, this))
            {
              goto LABEL_46;
            }

            goto LABEL_31;
          }

          if (!(*(v25 + 528))(v13, this))
          {
            goto LABEL_46;
          }

LABEL_42:
          v32 = a4 & 1;
LABEL_43:
          *a5 = v32;
          if (v32)
          {
            return;
          }

          goto LABEL_47;
        }
      }
    }

    {
      v30 = (*(*v14 + 336))(v14);
      v31 = *v14;
      if (!v30)
      {
        if (!(*(v31 + 512))(v14, this))
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      if ((*(v31 + 312))(v14) != a3 && (*(*v14 + 512))(v14, this))
      {
LABEL_31:
        if (*a6 == 1 && (*(*this + 640))(this) != a3)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }
    }

    else if (v15 && ((*a6 | 2) == 3 || a4 == 1 || *a6 == 2))
    {
      if ((*(*v15 + 128))(v15))
      {
LABEL_37:
        v32 = a4 & 2;
        goto LABEL_43;
      }

      if (!(*(*v15 + 104))(v15, this))
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }
  }

LABEL_46:
  if (*a5)
  {
    return;
  }

LABEL_47:
  if (lpsrc)
  {
  }

  else
  {
    v33 = 0;
  }

  v34 = (*(*this + 640))(this) != a3 || v33 == 0;
  if (v34 || (v35 = (*(*this + 640))(this), OZChannelBase::isDescendantOf(v33, v35)))
  {
    OZObjectManipulator::allowDrag((this + 16), lpsrc, a3, a4, a5, a6);
    return;
  }

  v36 = (*(*this + 640))(this);
  if (OZChannelFolder::findMatchingDescendant(v36, v33))
  {
    v19 = a4 & 1;
    goto LABEL_58;
  }
}

uint64_t OZSceneNode::deleteThis(OZSceneNode *this, OZChannelBase *a2)
{
  if ((*(*this + 640))(this) == a2)
  {
    if (*(this + 121))
    {
      (*(*this + 928))(this);
    }

    OZSceneNode::removeFromParent(this);
    v5 = *(this + 121);
    if (v5)
    {
      OZScene::unregisterNode(v5, this);
    }

    (*(*this + 8))(this);
    return 1;
  }

  for (i = *(this + 123); ; i = *(i + 8))
  {
    if (i == (this + 976))
    {
      goto LABEL_15;
    }

    if ((*(**(i + 16) + 240))(*(i + 16)) == a2)
    {
      break;
    }
  }

  v6 = *(i + 16);
  if (!v6)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  for (j = *(this + 126); j != (this + 1000); j = *(j + 8))
  {
    (*(**(j + 16) + 152))(*(j + 16), v6 + 48);
  }

  OZSceneNode::removeEffect(this, v6);
  (*(*v6 + 8))(v6);
  v23 = *(this + 121);
  if (v23)
  {
    OZDocument::postNotification(*(v23 + 1584), 16);
  }

  v8 = 1;
LABEL_16:
  v9 = this + 1000;
  for (k = *(this + 126); ; k = *(k + 1))
  {
    if (k == v9)
    {
      if (v8)
      {
        goto LABEL_39;
      }

      return 0;
    }

    if ((*(**(k + 2) + 312))(*(k + 2)) == a2)
    {
      break;
    }
  }

  v12 = *(k + 2);
  if (!v12)
  {
    if (v8)
    {
      goto LABEL_39;
    }

    return 0;
  }

  v13 = *(this + 126);
  v14 = *(k + 2);
  if (v13 != v9)
  {
    do
    {
      v15 = *(v13 + 16);
      if (v12 != v15)
      {
        v16 = *(k + 2);
        if (v16)
        {
          v17 = v16 + 16;
        }

        else
        {
          v17 = 0;
        }

        (*(*v15 + 152))(v15, v17);
      }

      v13 = *(v13 + 8);
    }

    while (v13 != v9);
    v14 = *(k + 2);
  }

  (*(*v14 + 120))(v14);
  v19 = *k;
  v18 = *(k + 1);
  *(v19 + 8) = v18;
  *v18 = v19;
  --*(this + 127);
  operator delete(k);
  v20 = (*(*v12 + 312))(v12);
  OZChannelFolder::removeDescendant((this + 704), v20);
  v21 = *(this + 121);
  if (v21)
  {
    OZScene::unregisterObject(v21, (v12 + 4));
    OZScene::removeAllDependencies(*(this + 121), v12[20]);
  }

  (*(*v12 + 8))(v12);
  v22 = *(this + 121);
  if (v22)
  {
    OZDocument::postNotification(*(v22 + 1584), 16);
  }

LABEL_39:
  (*(*this + 496))(this);
  return 1;
}

void OZSceneNode::removeEffect(OZSceneNode *this, OZEffect *a2)
{
  (*(*a2 + 448))(a2);
  v4 = *(this + 123);
  if (v4 != this + 976)
  {
    while (1)
    {
      v5 = *(v4 + 1);
      if (*(v4 + 2) == a2)
      {
        break;
      }

      v4 = *(v4 + 1);
      if (v5 == (this + 976))
      {
        goto LABEL_7;
      }
    }

    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    --*(this + 124);
    operator delete(v4);
    OZSceneNode::_sequenceEffectInputs(this);
    v7 = (*(*a2 + 240))(a2);
    OZChannelFolder::removeDescendant((this + 576), v7);
    v8 = *(this + 121);
    if (v8)
    {
      OZScene::unregisterObject(v8, (a2 + 48));
      OZScene::removeAllDependencies(*(this + 121), *(a2 + 28));
    }
  }

LABEL_7:
  (*(*this + 496))(this);
  v9 = *(this + 121);
  if (v9)
  {
    v10 = *(v9 + 1584);

    OZDocument::postNotification(v10, 16);
  }
}

BOOL OZSceneNode::isSelected(OZSceneNode *this)
{
  if (OZChannelBase::testFlag((this + 56), 1))
  {
    return 1;
  }

  return OZChannelFolder::testFoldFlag((this + 56), 0x2000);
}

OZChannelFolder *OZSceneNode::deselect(OZSceneNode *this)
{
  OZChannelBase::resetFlag((this + 56), 1, 0);
  OZChannelBase::resetFlag((this + 56), 0x10000000, 0);

  return OZSceneNode::deselectEffectsAndBehaviors(this);
}

OZChannelFolder *OZSceneNode::deselectEffectsAndBehaviors(OZSceneNode *this)
{
  result = OZChannelFolder::resetFoldFlag((this + 56), 0x2000);
  for (i = *(this + 123); i != (this + 976); i = *(i + 8))
  {
    result = (*(**(i + 16) + 496))(*(i + 16));
  }

  v4 = this + 1000;
  for (j = *(this + 126); j != v4; j = *(j + 8))
  {
    result = (*(**(j + 16) + 496))(*(j + 16));
  }

  return result;
}

uint64_t OZSceneNode::isAnyParentSelected(OZSceneNode *this)
{
  v2 = *(this + 120);
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

  v5 = *(**(this + 120) + 704);

  return v5();
}

uint64_t OZSceneNode::setSolo(OZSceneNode *this, uint64_t a2)
{
  OZChannelBase::solo((this + 56), a2);
  result = (*(*this + 960))(this);
  if (result)
  {
    v5 = (*(*this + 1032))(this);
    result = (*(*this + 1024))(this);
    if (result != v5)
    {
      v6 = result;
      do
      {
        result = (*(**(v6 + 16) + 720))(*(v6 + 16), a2);
        v6 = *(v6 + 8);
      }

      while (v6 != v5);
    }
  }

  return result;
}

void *OZSceneNode::removeLinkedID(void *this, int a2)
{
  v2 = this[132];
  v3 = this[133];
  if (v2 != v3)
  {
    v4 = this;
    v5 = this[132];
    while (*v5 != a2)
    {
      if (++v5 == v3)
      {
        return this;
      }
    }

    if (v5 != v3)
    {
      v6 = this[132];
      while (*v2 != a2)
      {
        ++v2;
        v6 += 4;
        if (v2 == v3)
        {
          v6 = this[133];
          break;
        }
      }

      v7 = v3 - v6 - 4;
      if (v3 != (v6 + 4))
      {
        this = memmove(v6, (v6 + 4), v3 - v6 - 4);
      }

      v4[133] = &v7[v6];
    }
  }

  return this;
}

uint64_t OZSceneNode::isLinked(OZSceneNode *this)
{
  result = (*(*this + 736))(this);
  if (result)
  {

    return OZChannelFolder::testFoldFlag((this + 56), 0x4000);
  }

  return result;
}

uint64_t OZSceneNode::link(OZSceneNode *this)
{
  result = OZChannelFolder::testFoldFlag((this + 56), 0x4000);
  if ((result & 1) == 0)
  {
    result = OZChannelFolder::setFoldFlag((this + 56), 0x4000);
    if (*(this + 121))
    {
      for (i = *(this + 132); i != *(this + 133); ++i)
      {
        result = OZScene::getNode(*(this + 121), *i);
        if (result)
        {
          v4 = result;
          result = (*(*result + 744))(result);
          if ((result & 1) == 0)
          {
            result = OZChannelFolder::setFoldFlag((v4 + 56), 0x4000);
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZSceneNode::unlink(OZSceneNode *this)
{
  result = OZChannelFolder::testFoldFlag((this + 56), 0x4000);
  if (result)
  {
    result = OZChannelFolder::resetFoldFlag((this + 56), 0x4000);
    if (*(this + 121))
    {
      for (i = *(this + 132); i != *(this + 133); ++i)
      {
        result = OZScene::getNode(*(this + 121), *i);
        if (result)
        {
          v4 = result;
          result = (*(*result + 744))(result);
          if (result)
          {
            result = OZChannelFolder::resetFoldFlag((v4 + 56), 0x4000);
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZSceneNode::lock(OZSceneNode *this)
{
  result = OZObjectManipulator::lock((this + 16));
  if (*(this + 121))
  {
    for (i = *(this + 132); i != *(this + 133); ++i)
    {
      result = OZScene::getNode(*(this + 121), *i);
      if (result)
      {
        v4 = result;
        result = (*(*(result + 16) + 56))();
        if ((result & 1) == 0)
        {
          result = OZChannelFolder::lock((v4 + 56), 1, 1);
        }
      }
    }
  }

  return result;
}

uint64_t OZSceneNode::unlock(OZSceneNode *this)
{
  result = OZObjectManipulator::unlock((this + 16));
  if (*(this + 121))
  {
    for (i = *(this + 132); i != *(this + 133); ++i)
    {
      result = OZScene::getNode(*(this + 121), *i);
      if (result)
      {
        v4 = result;
        result = (*(*(result + 16) + 56))();
        if (result)
        {
          result = OZChannelFolder::lock((v4 + 56), 0, 1);
        }
      }
    }
  }

  return result;
}

uint64_t OZSceneNode::freeze(OZSceneNode *this)
{
  result = OZChannelFolder::testFoldFlag((this + 56), 0x8000);
  if ((result & 1) == 0)
  {
    OZChannelFolder::setFoldFlag((this + 56), 0x8000);
    v3 = *(*this + 768);

    return v3(this);
  }

  return result;
}

uint64_t OZSceneNode::unfreeze(OZSceneNode *this)
{
  result = OZChannelFolder::testFoldFlag((this + 56), 0x8000);
  if (result)
  {
    OZChannelFolder::resetFoldFlag((this + 56), 0x8000);
    v3 = *(*this + 776);

    return v3(this);
  }

  return result;
}

unsigned int *OZSceneNode::updateLinkedIDs(uint64_t a1, uint64_t a2)
{
  result = std::remove_if[abi:ne200100]<std::__wrap_iter<unsigned int *>,removePred>(*(a1 + 1056), *(a1 + 1064), a2);
  v5 = *(a1 + 1064);
  v6 = *(a1 + 1056);
  if (result != v5)
  {
    v5 = result;
    *(a1 + 1064) = result;
  }

  if (v6 != v5)
  {
    v9 = *(a2 + 8);
    v8 = a2 + 8;
    v7 = v9;
    do
    {
      if (v7)
      {
        v10 = *v6;
        v11 = v8;
        v12 = v7;
        do
        {
          v13 = *(v12 + 28);
          v14 = v13 >= v10;
          v15 = v13 < v10;
          if (v14)
          {
            v11 = v12;
          }

          v12 = *(v12 + 8 * v15);
        }

        while (v12);
        if (v11 != v8 && v10 >= *(v11 + 28))
        {
          *v6 = *(v11 + 32);
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

unsigned int *std::remove_if[abi:ne200100]<std::__wrap_iter<unsigned int *>,removePred>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    v7 = *(a3 + 8);
    v5 = (a3 + 8);
    v6 = v7;
    result = a1;
    while (v6)
    {
      v8 = *result;
      v9 = v5;
      v10 = v6;
      do
      {
        v11 = *(v10 + 28);
        v12 = v11 >= v8;
        v13 = v11 < v8;
        if (v12)
        {
          v9 = v10;
        }

        v10 = *(v10 + 8 * v13);
      }

      while (v10);
      if (v9 == v5 || *(v9 + 7) > v8)
      {
        goto LABEL_14;
      }

      if (++result == a2)
      {
        result = a2;
        goto LABEL_14;
      }
    }

    result = a1;
LABEL_14:
    if (result != a2)
    {
      v14 = result + 1;
      if (result + 1 != a2)
      {
        v15 = *v5;
        do
        {
          if (v15)
          {
            v16 = *v14;
            v17 = v5;
            v18 = v15;
            do
            {
              v19 = *(v18 + 28);
              v12 = v19 >= v16;
              v20 = v19 < v16;
              if (v12)
              {
                v17 = v18;
              }

              v18 = *(v18 + 8 * v20);
            }

            while (v18);
            if (v17 != v5 && *(v17 + 7) <= v16)
            {
              *result++ = v16;
            }
          }

          ++v14;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t OZSceneNode::didFinishLoadingIntoScene(OZSceneNode *this)
{
  v2 = this + 1000;
  for (i = *(this + 126); v2 != i; i = *(this + 126))
  {
    (*(*(*(*v2 + 16) + 16) + 368))();
    v2 = *v2;
  }

  for (j = this + 976; j != *(this + 123); j = *j)
  {
    (*(*(*(*j + 16) + 48) + 368))();
  }

  v5 = (*(*this + 1024))(this);
  v6 = (*(*this + 1032))(this);
  if (v5 != v6)
  {
    v7 = v6;
    do
    {
      (*(**(v5 + 16) + 848))(*(v5 + 16));
      v5 = *(v5 + 8);
    }

    while (v5 != v7);
  }

  v8 = (*(*this + 1104))(this);
  result = (*(*this + 1112))(this);
  if (v8 != result)
  {
    v10 = result;
    do
    {
      result = (*(**(v8 + 16) + 848))(*(v8 + 16));
      v8 = *(v8 + 8);
    }

    while (v8 != v10);
  }

  return result;
}

uint64_t OZSceneNode::didFinishLoadingIntoMotionEffect(uint64_t this)
{
  v1 = this;
  v2 = (this + 1000);
  for (i = *(this + 1008); v2 != i; i = *(v1 + 1008))
  {
    this = (*(*(*(*v2 + 16) + 16) + 384))();
    v2 = *v2;
  }

  for (j = v1 + 976; j != *(v1 + 984); j = *j)
  {
    this = (*(*(*(*j + 16) + 48) + 384))();
  }

  return this;
}

char *OZSceneNode::didAddToScene(OZSceneNode *this, OZScene *a2)
{
  v4 = this + 1000;
  for (i = *(this + 126); v4 != i; i = *(this + 126))
  {
    (*(**(*v4 + 16) + 136))(*(*v4 + 16), a2);
    v4 = *v4;
  }

  for (j = this + 976; j != *(this + 123); j = *j)
  {
    (*(**(*j + 16) + 456))(*(*j + 16), a2);
  }

  ComputedWorkingGamut = OZScene::getComputedWorkingGamut(a2);
  v8 = OZScene::dynamicRangeTrackingEnabled(a2);
  v9 = (*(*this + 640))(this);

  return OZScene::updateColorChannelsForWorkingGamut(a2, ComputedWorkingGamut, v8, v9);
}

uint64_t OZSceneNode::willRemoveFromScene(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = result + 1000;
  for (i = *(result + 1008); i != v4; i = *(i + 8))
  {
    result = (*(**(i + 16) + 144))(*(i + 16), a2);
  }

  for (j = v3 + 976; j != *(v3 + 984); j = *j)
  {
    result = (*(**(*j + 16) + 464))(*(*j + 16), a2);
  }

  return result;
}

uint64_t OZSceneNode::didUndoDeleteOfObject(uint64_t this, OZObjectManipulator *a2)
{
  v2 = this + 1000;
  v3 = *(this + 1008);
  if (v3 != this + 1000)
  {
    do
    {
      this = (*(**(v3 + 16) + 168))(*(v3 + 16), a2);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t OZSceneNode::didUndoLastChange(uint64_t this)
{
  v1 = this + 1000;
  for (i = *(this + 1008); i != v1; i = *(i + 8))
  {
    this = (*(**(i + 16) + 176))(*(i + 16));
  }

  return this;
}

void *OZSceneNode::willDeleteChannel(void *this, OZChannelBase *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    v4 = (this + 125);
    v5 = this[126];
    if (v5 != (this + 125))
    {
      do
      {
        v6 = *(v5 + 2);
        v7 = v6[1];
        v13 = xmmword_26084FAF0;
        if (OZFactory::isKindOfClass(v7, &v13))
        {
          (*(*v8 + 208))(v8, lpsrc);
        }

        v5 = *(v5 + 1);
      }

      while (v5 != v4);
    }

    if (this)
    {
      v9 = this[14];
      if (v9)
      {
        v10 = *v9;
        v11 = v9[1];
        while (v10 != v11)
        {
          v12 = *v10++;
          this = (*(*v3 + 888))(v3, v12);
        }
      }
    }
  }

  return this;
}

void *OZSceneNode::didUndoDeleteChannel(void *this, OZChannelBase *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    v4 = (this + 125);
    for (i = this[126]; i != v4; i = *(i + 8))
    {
      (*(**(i + 16) + 216))(*(i + 16), lpsrc);
    }

    if (this)
    {
      v6 = this[14];
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        while (v7 != v8)
        {
          v9 = *v7++;
          this = (*(*v3 + 896))(v3, v9);
        }
      }
    }
  }

  return this;
}

void *OZSceneNode::_sequenceEffectInputs(void *this)
{
  v1 = this;
  if (this)
  {
  }

  v2 = v1 + 122;
  v3 = v1[123];
  while (v2 != v3)
  {
    v2 = *v2;
    *(v2[2] + 24) = this;
    this = v2[2];
  }

  return this;
}

uint64_t OZSceneNode::addEffect(OZSceneNode *this, OZEffect *a2, OZEffect *a3)
{
  if (*(this + 124) <= 0x3FuLL)
  {
    v6 = (*(*a2 + 240))(a2);
    v10 = *(this + 208);
    v11 = *(this + 232);
    (*(v6->n128_u64[0] + 712))(&v8);
    time1 = v9;
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      (*(v6->n128_u64[0] + 712))(&v8, v6);
      v11 = v9;
    }

    v8 = v10;
    OZChannelObjectRootBase::setTimeOffset(v6, &v8, 0);
    OZChannelObjectRootBase::setTimeExtent(v6, &v10, 0);
    OZSceneNode::_internalInsertEffectAfter(this, a2, a3);
  }

  return 0;
}

void OZSceneNode::_internalInsertEffectAfter(OZSceneNode *this, OZEffect *a2, OZEffect *a3)
{
  (*(*a2 + 296))(a2);
  if (a3)
  {
      ;
    }

    operator new();
  }

  operator new();
}

void OZSceneNode::insertEffectBefore(OZSceneNode *this, OZEffect *a2, OZEffect *a3)
{
  (*(*a2 + 296))(a2);
  if (a3)
  {
      ;
    }

    operator new();
  }

  operator new();
}

uint64_t OZSceneNode::getEffect(OZSceneNode *this, int a2)
{
  v2 = this + 976;
  for (i = *(this + 123); i != v2; i = *(i + 8))
  {
    result = *(i + 16);
    if (*(result + 112) == a2)
    {
      return result;
    }
  }

  return 0;
}

uint64_t OZSceneNode::hasEnabledEffects(OZSceneNode *this)
{
  if (*(this + 1024))
  {
    return 0;
  }

  v1 = this + 976;
  v2 = *(this + 123);
  if (v2 == (this + 976))
  {
    return 0;
  }

  do
  {
    result = (*(**(v2 + 16) + 272))(*(v2 + 16), 0, 1);
    if (result)
    {
      break;
    }

    v2 = *(v2 + 8);
  }

  while (v2 != v1);
  return result;
}

void OZSceneNode::addBehavior(OZSceneNode *this, OZBehavior *a2, OZBehavior *a3)
{
  v6 = (*(*a2 + 312))(a2);
  v13 = *(this + 208);
  v14 = *(this + 232);
  (*(v6->n128_u64[0] + 712))(&v11);
  time1 = v12;
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    (*(v6->n128_u64[0] + 712))(&v11, v6);
    v14 = v12;
  }

  v11 = v13;
  OZChannelObjectRootBase::setTimeOffset(v6, &v11, 0);
  OZChannelObjectRootBase::setTimeExtent(v6, &v13, 0);
  if (a3)
  {
      ;
    }

    v9 = (*(*a3 + 312))(a3);
    v10 = (*(*a2 + 312))(a2);
    OZChannelFolder::insertDescendantAfter((this + 704), v9, v10);
    operator new();
  }

  v8 = (*(*a2 + 312))(a2);
  OZChannelFolder::push_front((this + 704), v8);
  operator new();
}

void OZSceneNode::removeBehavior(OZSceneNode *this, OZBehavior *a2)
{
  v2 = this + 1000;
  v3 = *(this + 126);
  if (v3 != this + 1000)
  {
    while (*(v3 + 2) != a2)
    {
      v3 = *(v3 + 1);
      if (v3 == v2)
      {
        return;
      }
    }

    if (v3 != v2)
    {
      (*(*a2 + 120))(a2);
      v7 = *v3;
      v6 = *(v3 + 1);
      *(v7 + 8) = v6;
      *v6 = v7;
      --*(this + 127);
      operator delete(v3);
      v8 = (*(*a2 + 312))(a2);
      OZChannelFolder::removeDescendant((this + 704), v8);
      v9 = *(this + 121);
      if (v9)
      {
        OZScene::unregisterObject(v9, (a2 + 16));
        OZScene::removeAllDependencies(*(this + 121), *(a2 + 20));
      }

      (*(*this + 496))(this);
      v10 = *(this + 121);
      if (v10)
      {
        v11 = *(v10 + 1584);

        OZDocument::postNotification(v11, 16);
      }
    }
  }
}

void OZSceneNode::insertBehaviorAfter(OZSceneNode *this, OZBehavior *a2, OZBehavior *a3)
{
  v5 = (*(*(a2 + 2) + 48))(a2 + 16);
  if (!a3 || (v5 & 1) != 0)
  {
    if (!a3)
    {
      operator new();
    }
  }

  else if ((*(*(a3 + 2) + 48))())
  {
    for (i = this + 1000; i != *(this + 126); i = *i)
    {
      a3 = *(*i + 16);
      if (!(*(*(a3 + 2) + 48))())
      {
        break;
      }
    }
  }

    ;
  }

  operator new();
}

uint64_t OZSceneNode::getBehavior(OZSceneNode *this, int a2)
{
  v2 = this + 1000;
  for (i = *(this + 126); i != v2; i = *(i + 8))
  {
    result = *(i + 16);
    if (*(result + 80) == a2)
    {
      return result;
    }
  }

  return 0;
}

uint64_t OZSceneNode::isAffectedByBehaviors(OZSceneNode *this)
{
  if ((*(this + 1024) & 2) != 0)
  {
    return 0;
  }

  v1 = this + 1000;
  v2 = *(this + 126);
  if (v2 == (this + 1000))
  {
    return 0;
  }

  do
  {
    result = (*(*(v2[2] + 16) + 24))();
    if (result)
    {
      break;
    }

    v2 = v2[1];
  }

  while (v2 != v1);
  return result;
}

uint64_t OZSceneNode::isAffectedByBakeableBehaviors(OZSceneNode *this)
{
  if ((*(this + 1024) & 2) != 0)
  {
    return 0;
  }

  v1 = this + 1000;
  for (i = *(this + 126); ; i = *(i + 8))
  {
    if (i == v1)
    {
      return 0;
    }

    v3 = *(i + 16);
    if ((*(v3[2] + 24))())
    {
      if ((*(*v3 + 272))(v3))
      {
        break;
      }
    }
  }

  return 1;
}

void OZSceneNode::bake(OZSceneNode *this)
{
  *&v29.value = *MEMORY[0x277CC08F0];
  v2 = *(MEMORY[0x277CC08F0] + 16);
  *&v30.value = *&v29.value;
  v29.epoch = v2;
  v30.epoch = v2;
  PCURL::PCURL(&v27, @"Undo Convert To Keyframes");
  (*(*(this + 2) + 176))(this + 16, &v27, 0);
  PCString::~PCString(&v27);
  v3 = *(this + 126);
  v4 = this + 1000;
  if (v3 == this + 1000)
  {
    return;
  }

  do
  {
    v5 = *(v3 + 2);
    if (v3 == *(this + 126))
    {
      (*(*v5 + 608))(&v27, *(v3 + 2));
      v29 = v27;
      *&v30.value = *&v28.value;
      epoch = v28.epoch;
    }

    else
    {
      (*(*v5 + 608))(&v27, *(v3 + 2));
      v26 = v27;
      v24 = 0uLL;
      v25 = 0;
      time1 = v27;
      time2 = v28;
      PC_CMTimeSaferAdd(&time1, &time2, &v24);
      v23 = v29;
      memset(&v22, 0, sizeof(v22));
      time1 = v29;
      time2 = v30;
      PC_CMTimeSaferAdd(&time1, &time2, &v22);
      time1 = v26;
      *&time2.value = v24;
      time2.epoch = v25;
      if (!CMTimeCompare(&time1, &time2))
      {
        goto LABEL_11;
      }

      time1 = v23;
      time2 = v26;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        v23 = v26;
      }

      time1 = v22;
      *&time2.value = v24;
      time2.epoch = v25;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        *&v22.value = v24;
        v22.epoch = v25;
      }

      v29 = v23;
      time1 = v22;
      time2 = v23;
      PC_CMTimeSaferSubtract(&time1, &time2, &v20);
      *&v30.value = v20;
      epoch = v21;
    }

    v30.epoch = epoch;
LABEL_11:
    v26 = v30;
    OZSceneSettings::getFrameDuration((*(this + 121) + 336), &v24);
    v27 = v26;
    *&time1.value = v24;
    time1.epoch = v25;
    PC_CMTimeSaferAdd(&v27, &time1, &time2);
    v30 = time2;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v5[1] + 8), xmmword_26084F810)))))
    {
      (*(*v5 + 256))(v5, &v29);
    }

    else
    {
      (*(v7 + 728))();
    }

    v3 = *(v3 + 1);
  }

  while (v3 != v4);
  v8 = (*(*this + 272))(this);
  FrameDuration = OZSceneSettings::getFrameDuration((v8 + 336), &v27);
  (*(*this + 320))(this, &v29, &v27, FrameDuration);
  v27.value = &v27;
  *&v27.timescale = &v27;
  v27.epoch = 0;
  v10 = *(this + 126);
  if (v10 != v4)
  {
    do
    {
      v11 = *(v10 + 16);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v11[1] + 8), xmmword_26084F810)))))
      {
        (*(*v11 + 264))(v11);
        if ((*(*v11 + 272))(v11))
        {
          operator new();
        }
      }

      else
      {
        OZChannelBase::setRangeName(v12, v13);
        (*(v12->var0 + 33))(v12);
      }

      v10 = *(v10 + 8);
    }

    while (v10 != v4);
    v14 = *&v27.timescale;
    if (*&v27.timescale != &v27)
    {
      do
      {
        v15 = *(v14 + 16);
        v16 = *(this + 126);
        if (v16 != v4)
        {
          if (v15)
          {
            v17 = v15 + 16;
          }

          else
          {
            v17 = 0;
          }

          do
          {
            v18 = *(v16 + 16);
            if (v15 != v18)
            {
              (*(*v18 + 152))(v18, v17);
            }

            v16 = *(v16 + 8);
          }

          while (v16 != v4);
        }

        (*(*this + 368))(this, v15);
        v14 = *(v14 + 8);
      }

      while (v14 != &v27);
      v14 = *&v27.timescale;
    }

    for (; v14 != &v27; v14 = *(v14 + 8))
    {
      v19 = *(v14 + 16);
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }
  }

  (*(*this + 496))(this);
  std::__list_imp<unsigned int>::clear(&v27);
}

OZChannelFolder *OZSceneNode::bakeChannels(OZSceneNode *this, const PCTimeRange *a2, const CMTime *a3)
{
  OZChannelFolder::bake((this + 320), a2, a3);
  OZChannelFolder::bake((this + 448), a2, a3);
  OZChannelFolder::bake((this + 576), a2, a3);

  return OZChannelFolder::bake((this + 832), a2, a3);
}

uint64_t OZSceneNode::addStyle(uint64_t a1, OZScene **a2)
{
  v4 = (*(**a2 + 112))();
  OZChannelFolder::push_front((a1 + 832), v4);
  v5 = *(a1 + 968);
  if (v5)
  {
    if (*a2)
    {
      v6 = (*a2 + 16);
    }

    else
    {
      v6 = 0;
    }

    OZScene::registerObject(v5, v6);
    OZScene::addNodeDependency(*(a1 + 968), *(*a2 + 24), *(a1 + 80));
    OZStyle::registerAllMaterials(*a2);
    OZScene::addAllDependencies(*(a1 + 968), v4, *(*a2 + 24));
  }

  (*(*a1 + 1128))(v9, a1);
  OZChannelObjectRootBase::setTimeExtent(v4, v9, 0);
  OZChannelObjectRootBase::getTimeOffset((a1 + 56), v9);
  v7 = OZChannelObjectRootBase::setTimeOffset(v4, v9, 0);
  return (*(*a1 + 496))(a1, v7);
}

uint64_t OZSceneNode::removeStyle(uint64_t a1, OZStyle **a2)
{
  v4 = (*(**a2 + 112))();
  OZChannelFolder::removeDescendant((a1 + 832), v4);
  if (*(a1 + 968))
  {
    OZStyle::unregisterAllMaterials(*a2);
    if (*a2)
    {
      v5 = (*a2 + 16);
    }

    else
    {
      v5 = 0;
    }

    OZScene::unregisterObject(*(a1 + 968), v5);
    OZScene::removeAllDependencies(*(a1 + 968), *(*a2 + 24));
  }

  v6 = *(*a1 + 496);

  return v6(a1);
}

uint64_t OZSceneNode::openMedia(OZSceneNode *this)
{
  v1 = this + 976;
  v2 = *(this + 123);
  if (v2 == (this + 976))
  {
    return 0;
  }

  do
  {
    result = (*(**(v2 + 16) + 704))(*(v2 + 16));
    v2 = *(v2 + 8);
  }

  while (v2 != v1 && result == 0);
  return result;
}

uint64_t OZSceneNode::prerollBegin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = a1 + 976;
  v6 = *(a1 + 984);
  if (v6 == a1 + 976)
  {
    return 0;
  }

  do
  {
    result = (*(**(v6 + 16) + 744))(*(v6 + 16), a2, a3, a4, a5);
    v6 = *(v6 + 8);
  }

  while (v6 != v5 && result == 0);
  return result;
}

uint64_t OZSceneNode::prerollEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 976;
  v4 = *(a1 + 984);
  if (v4 == a1 + 976)
  {
    return 0;
  }

  do
  {
    result = (*(**(v4 + 16) + 752))(*(v4 + 16), a2, a3);
    v4 = *(v4 + 8);
  }

  while (v4 != v3 && result == 0);
  return result;
}

uint64_t OZSceneNode::setRate(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1 + 976;
  v5 = *(a1 + 984);
  if (v5 == a1 + 976)
  {
    return 0;
  }

  do
  {
    result = (*(**(v5 + 16) + 760))(*(v5 + 16), a2, a3, a4);
    v5 = *(v5 + 8);
  }

  while (v5 != v4 && result == 0);
  return result;
}

uint64_t OZSceneNode::scheduleTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 976;
  v6 = *(a1 + 984);
  if (v6 != a1 + 976)
  {
    do
    {
      (*(**(v6 + 16) + 720))(*(v6 + 16), a2, a3, a4, a5);
      v6 = *(v6 + 8);
    }

    while (v6 != v5);
  }

  return 0;
}

uint64_t OZSceneNode::remapTokens(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result + 976;
  v5 = *(result + 984);
  if (v5 != result + 976)
  {
    do
    {
      result = (*(**(v5 + 16) + 712))(*(v5 + 16), a2, a3, a4);
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t OZSceneNode::hintTokensWillImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 976;
  v5 = *(a1 + 984);
  if (v5 == a1 + 976)
  {
    return 0;
  }

  do
  {
    result = (*(**(v5 + 16) + 728))(*(v5 + 16), a2, a3, a4);
    v5 = *(v5 + 8);
  }

  while (v5 != v4 && result == 0);
  return result;
}

uint64_t OZSceneNode::getTokensImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 976;
  v5 = *(a1 + 984);
  if (v5 == a1 + 976)
  {
    return 0;
  }

  do
  {
    result = (*(**(v5 + 16) + 736))(*(v5 + 16), a2, a3, a4);
    v5 = *(v5 + 8);
  }

  while (v5 != v4 && result == 0);
  return result;
}

uint64_t OZSceneNode::pruneTokensAtTime(uint64_t this, CMTime *a2, const char *a3)
{
  v3 = this + 976;
  v4 = *(this + 984);
  if (v4 != this + 976)
  {
    do
    {
      this = (*(**(v4 + 16) + 768))(*(v4 + 16), a2, a3);
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
  }

  return this;
}

uint64_t OZSceneNode::pruneTokensExceptAtTime(uint64_t this, CMTime *a2, const char *a3)
{
  v3 = this + 976;
  v4 = *(this + 984);
  if (v4 != this + 976)
  {
    do
    {
      this = (*(**(v4 + 16) + 776))(*(v4 + 16), a2, a3);
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
  }

  return this;
}

uint64_t OZSceneNode::pruneAllTokens(uint64_t this, const char *a2)
{
  v2 = this + 976;
  v3 = *(this + 984);
  if (v3 != this + 976)
  {
    do
    {
      this = (*(**(v3 + 16) + 784))(*(v3 + 16), a2);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t OZSceneNode::getWorkingColorDescription@<X0>(OZSceneNode *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 121);
  if (v2)
  {
    return (*(*v2 + 136))();
  }

  else
  {
    return FxGetDefaultWorkingColorDescription(a2);
  }
}

float OZSceneNode::getBlendingGamma(OZSceneNode *this)
{
  v1 = *(this + 121);
  if (!v1)
  {
    return PCRenderModel::getDefaultBlendingGamma(0);
  }

  (*(*v1 + 144))();
  return result;
}

double OZSceneNode::getScenePixelAspectRatio(OZSceneNode *this)
{
  v1 = *(this + 121);
  if (v1)
  {
    return *(v1 + 384);
  }

  else
  {
    return 1.0;
  }
}

void *OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(void *result)
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

uint64_t *OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::decrement(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  if (*result == result[1])
  {
    v5 = result[2];
    goto LABEL_8;
  }

  if (v2 == result[2])
  {
    goto LABEL_11;
  }

  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(result + 24);
  result = *(v3 + 960);
  if (v4 != 1)
  {
    if (result)
    {
      result = (*(*result + 1024))(result);
      v2 = *v1;
      if (*v1 == result)
      {
        v12 = *(v3 + 960);
        v15 = v12;
        result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v15);
        v13 = (result + 3);
        if (!result)
        {
          v13 = v1 + 2;
        }

        *v1 = *v13;
        if (!v12)
        {
          return result;
        }

        result = (*(*v12 + 1056))(v12);
        if (!result)
        {
          return result;
        }

        result = (*(*v12 + 1112))(v12);
        goto LABEL_17;
      }
    }

LABEL_11:
    v6 = *v2;
    *v1 = v6;
    v7 = v6[2];
    if (!v7)
    {
      return result;
    }

    while ((*(*v7 + 960))(v7))
    {
      v8 = *v1;
      v14 = v7;
      v15 = &v14;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v14)[3] = v8;
      result = (*(*v7 + 1032))(v7);
      *v1 = result;
      v9 = *result;
      *v1 = *result;
      v7 = v9[2];
      if (!v7)
      {
        return result;
      }
    }

    result = (*(*v7 + 1056))(v7);
    if (!result)
    {
      return result;
    }

    v10 = *v1;
    v14 = v7;
    v15 = &v14;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v14)[3] = v10;
    result = (*(*v7 + 1112))(v7);
LABEL_17:
    *v1 = result;
    *v1 = *result;
    *(v1 + 24) = 1;
    return result;
  }

  result = (*(*result + 1104))(result);
  if (*v1 != result)
  {
    v5 = **v1;
LABEL_8:
    *v1 = v5;
    return result;
  }

  v15 = *(v3 + 960);
  result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v15);
  v11 = (result + 3);
  if (!result)
  {
    v11 = v1 + 2;
  }

  *v1 = *v11;
  *(v1 + 24) = 0;
  return result;
}

void *std::list<OZObjectManipulator *>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

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

void *std::deque<OZSceneNode *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<OZSceneNode *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<OZSceneNode *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **&>(a1, &v10);
}

void sub_2600A5284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL OZRotoshape::canFourCorner(OZRotoshape *this)
{
  result = 0;
  if (OZElement::canFourCorner((this + 200)))
  {
    v2 = *(this + 4733);
    if (!v2 || !(*(*v2 + 64))(v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t OZRotoshape::canCrop(OZRotoshape *this)
{
  result = OZElement::canCrop((this + 200));
  if (result)
  {
    v3 = *(this + 4733);
    return (!v3 || ((*(*v3 + 64))(v3) & 1) == 0) && (*(this + 1224) & 8) == 0;
  }

  return result;
}

uint64_t OZRotoshape::updateHiddenChannels(OZRotoshape *this, char a2)
{
  v4 = this + 36864;
  v5 = *(this + 4732);
  if (v5 && OZChannelBase::testFlag((v5 + 56), 8) && OZChannelBase::isEnabled((this + 25776), 0, 1) && OZChannel::getValueAsInt((this + 25904), MEMORY[0x277CC08F0], 0.0) - 1 <= 1)
  {
    v6 = (*(**(v4 + 124) + 640))(*(v4 + 124));
    PCSharedCount::PCSharedCount(&v9);
    (*(v6->var0 + 43))(v6, &v9);
    PCString::~PCString(&v9);
    OZChannelBase::resetFlag(v6, 8, a2);
  }

  v7 = *(v4 + 125);
  if (v7 && (*(*v7 + 64))(v7))
  {
    OZChannelBase::setFlag((this + 12872), 2, a2);
  }

  else
  {
    OZChannelBase::resetFlag((this + 12872), 2, a2);
  }

  return OZElement::updateHiddenChannels((this + 200), a2);
}

uint64_t OZRotoshape::hitCheck(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 & 4) != 0 && ((*(*(a1 + 200) + 680))())
  {
    return 0;
  }

  if ((a6 & 2) != 0)
  {
    v19 = *a3;
    if (!(*(*a1 + 360))(a1, &v19, 1, 1, 1))
    {
      return 0;
    }
  }

  v12 = a1 + 200;
  if (((*(*(a1 + 200) + 416))(a1 + 200) & 1) != 0 || ((*(*a1 + 384))(a1) & 1) != 0 || OZChannelBase::isEnabled((a1 + 21760), 1, 1))
  {
    v13 = OZElement::hitCheck((a1 + 200), a2, a3, a4, a5, a6) != 0;
  }

  else
  {
    v15 = a2->f32[0];
    v28 = a2->f32[1];
    v29 = v15;
    v27 = 0;
    if ((*(*v12 + 1368))(a1 + 200, a4, &v29, &v28, &v27, a3, 0) && (OZShapeRenderState::OZShapeRenderState(&v19), v19 = *a3, v20[0] = *(a3 + 202), v20[2] = *(a3 + 220), *&v20[8] = *(a3 + 24), LODWORD(v21) = 1, v16 = OZShape::hitCheck(a1 + 18976, &v19), PCCFRef<CGColorSpace *>::~PCCFRef(&v23), v16))
    {
      v26 = 0x3FF0000000000000;
      v23 = 0x3FF0000000000000;
      *&v20[16] = 0x3FF0000000000000;
      v19.value = 0x3FF0000000000000;
      *&v19.timescale = 0u;
      *v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v24 = 0u;
      v25 = 0u;
      (*(*v12 + 1256))(v12, &v19, a3);
      v17 = v28;
      v18 = v27;
      *a5 = v29;
      *(a5 + 8) = v17;
      *(a5 + 16) = v18;
      PCMatrix44Tmpl<double>::transform<double>(&v19.value, a5, a5);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v13)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

CGColorSpace **OZRotoshape::createSnapSetForCamera(uint64_t a1, const LiCamera *a2, uint64_t a3, __int128 *a4, int a5, int a6)
{
  v33 = 0x3FF0000000000000;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v24 = 0x3FF0000000000000;
  v25 = 0u;
  v26 = 0u;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = a1 + 200;
  (*(*(a1 + 200) + 1256))(a1 + 200, &v24, a4);
  v13 = (*(*v12 + 272))(v12);
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v13, a2, v23);
  PCMatrix44Tmpl<double>::leftMult(&v24, v23);
  OZShapeRenderState::OZShapeRenderState(&v16);
  v17 = *(a4 + 2);
  v18 = *(a4 + 202);
  v19 = *(a4 + 220);
  v16 = *a4;
  v20 = *(a4 + 24);
  v21 = 1;
  v14 = (*(*v12 + 680))(v12);
  OZMoShape::createSnapSet(a1 + 18976, &v24, a3, &v16, a5, a6, v14);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v22);
}

void OZRotoshape::allowDrag(OZRotoshape *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  *a5 = 0;
  {
    {

      OZElement::allowDrag((this + 200), lpsrc, a3, a4, a5, a6, a7);
    }

    else
    {
      *a5 = a4 & 1;
      *a6 = 1;
    }
  }

  else if (v14 != a3)
  {
    *a5 = a4 & 1;
  }
}

void non-virtual thunk toOZRotoshape::allowDrag(OZRotoshape *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  OZRotoshape::allowDrag((this - 200), a2, a3, a4, a5, a6, a7);
}

{
  OZRotoshape::allowDrag((this - 216), a2, a3, a4, a5, a6, a7);
}

uint64_t non-virtual thunk toOZRotoshape::prepareForDragOperation()
{
  return 1;
}

{
  return 1;
}

uint64_t OZRotoshape::performDragOperation(OZRotoshape *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  if (lpsrc)
  {
    if (v16)
    {
      v17 = v16;
      if ((*(v16 + 1224) & 8) == 0 && !(*(this + 306) & 8 | a7 & 0x10))
      {
        PCURL::PCURL(&v32, @"Undo Drop");
        (*(*(this + 27) + 176))(this + 216, &v32, 0);
        PCString::~PCString(&v32);
        OZRotoshape::applyStyle(this, v17);
        return 1;
      }
    }

    if ((a7 & 0x10) == 0 && a6 == 1)
    {
      v19 = v18;
      if (v18)
      {
        if (a3)
        {
        }

        else
        {
          v20 = 0;
        }

        v22 = this + 200;
        v23 = *((*(*(this + 25) + 272))(this + 200) + 1584);
        PCURL::PCURL(&v32, @"Undo Gradient Change");
        OZDocument::startCaptureModifiedChannels(v23, &v32);
        PCString::~PCString(&v32);
        v24 = this + 23304;
        if (!v20 || v20 == v24)
        {
          PCSharedCount::PCSharedCount(&v32);
          (*(*v24 + 344))(this + 23304, &v32);
          PCString::~PCString(&v32);
          PCSharedCount::PCSharedCount(&v32);
          (*(*(this + 2736) + 344))(this + 21888, &v32);
          PCString::~PCString(&v32);
          v27 = *(this + 5856);
          OZChannelFolder::operator=(this + 23304);
          OZChannelFolder::operator=(this + 23432);
          OZChannelFolder::operator=(this + 23560);
          OZChannelBase::operator=(this + 23688, (v19 + 384));
          OZChannelBase::operator=(this + 23840, (v19 + 536));
          v28 = v19[796];
          *(this + 6024) = *(v19 + 198);
          *(this + 24100) = v28;
          OZChannelFolder::setFoldFlags((this + 23304), v27);
          v32 = *MEMORY[0x277CC08F0];
          v33 = *(MEMORY[0x277CC08F0] + 16);
          v29 = *(this + 146);
          if (v29)
          {
            OZScene::getCurrentTime(v29, &v32);
          }

          (*(*(this + 2736) + 712))(this + 21888, &v32, 0, 1.0);
        }

        else
        {
          v25 = *(v20 + 30);
          OZChannelFolder::operator=(v20);
          OZChannelFolder::operator=((v20 + 128));
          OZChannelFolder::operator=((v20 + 256));
          OZChannelBase::operator=((v20 + 384), (v19 + 384));
          OZChannelBase::operator=((v20 + 536), (v19 + 536));
          v26 = v19[796];
          *(v20 + 198) = *(v19 + 198);
          v20[796] = v26;
          OZChannelFolder::setFoldFlags(v20, v25);
        }

        v30 = (*(*v22 + 272))(v22);
        OZDocument::endCaptureModifiedChannels(*(v30 + 1584), v31);
        return 1;
      }
    }
  }

  return OZElement::performDragOperation((this + 200), lpsrc, a3, a4, a5, a6, a7, a8);
}

uint64_t non-virtual thunk toOZRotoshape::performDragOperation(OZRotoshape *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  return OZRotoshape::performDragOperation((this - 200), a2, a3, a4, a5, a6, a7, a8);
}

{
  return OZRotoshape::performDragOperation((this - 216), a2, a3, a4, a5, a6, a7, a8);
}

uint64_t OZRotoshape::getPreviewSceneNode(OZRotoshape *this)
{
  if ((*(this + 38097) & 1) != 0 || *(this + 38096) == 1)
  {
    v1 = PCString::PCString(&v6, "Preview Rotoshape");
    OZChannelBase::getNextUniqueID(v1);
    v7 = xmmword_26084F780;
    SceneNode = OZApplication::createSceneNode(theApp, &v7);
    if (SceneNode)
    {
      v3 = SceneNode - 200;
    }

    else
    {
      v3 = 0;
    }

    PCString::~PCString(&v6);
    OZChannel::setDefaultValue((v3 + 27320), 15.0);
    (*(*(v3 + 27320) + 288))(v3 + 27320, 0);
    OZRotoshape::setInterpolation(v3, 1u);
    OZFigTimeForChannelSeconds(&v9, 2.0, 0x40000);
    v4 = MEMORY[0x277CC08F0];
    v7 = *MEMORY[0x277CC08F0];
    v8 = *(MEMORY[0x277CC08F0] + 16);
    (*(*v3 + 336))(v3, &v7, 0);
    v6 = *v4;
    OZMoShape::initPPaintTime((v3 + 18976), &v6, &v7);
    v6 = *v4;
    OZRotoshape::addVertex(v3, &v6, -70.0, 0.0);
  }

  return 0;
}

uint64_t OZSceneNode::performDragOperation(OZSceneNode *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  if (!lpsrc)
  {
    v25 = 0;
    goto LABEL_27;
  }

  v20 = v19;
  v21 = a5 - 1;
  if (a5 != 1 || !v16)
  {
    if (v17 && v21 <= 2)
    {
      v26 = (*(*v17 + 248))(v17);
      if (v26)
      {
        PCURL::PCURL(v84, @"Undo Reorder Filter");
        (*(v17[6] + 176))(v17 + 6, v84, 3);
        PCString::~PCString(v84);
        v78 = v26 != this;
        if (v26 != this)
        {
          for (i = *(v26 + 126); i != (v26 + 1000); i = *(i + 8))
          {
            (*(**(i + 16) + 152))(*(i + 16), v17 + 6);
          }
        }

        OZSceneNode::removeEffect(v26, v17);
      }

      else
      {
        v78 = 1;
      }

      v48 = *(this + 123);
      if (v48 != (this + 976))
      {
        v49 = v48 + 2;
        if ((*(*v48[2] + 240))(v48[2]) == a3)
        {
          v50 = 0;
LABEL_73:
          if (a5 == 3)
          {
            v50 = *v49;
          }

LABEL_75:
          if (v26)
          {
            (*(*this + 352))(this, v17, v50);
            if (v26 == this)
            {
              v57 = v78;
            }

            else
            {
              v55 = *(this + 121);
              PCURL::PCURL(v84, @"Undo Reorder Filter");
              OZScene::startCaptureModifiedChannels(v55, v84);
              PCString::~PCString(v84);
              v56 = (*(*v17 + 240))(v17);
              *&v84[0].var0 = *(this + 13);
              v85 = *(this + 28);
              v86 = *(this + 232);
              (*(v56->n128_u64[0] + 712))(&v82);
              *&v90.value = *&v84[0].var0;
              v90.epoch = v85;
              *&time1.value = *&v84[0].var0;
              time1.epoch = v85;
              time2 = v86;
              PC_CMTimeSaferAdd(&time1, &time2, &v89);
              v88 = v82;
              time1 = v82;
              time2 = v83;
              PC_CMTimeSaferAdd(&time1, &time2, &v87);
              time1 = v87;
              time2 = v90;
              v57 = v78;
              if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v88, time2 = v89, CMTimeCompare(&time1, &time2) >= 1))
              {
                (*(v56->n128_u64[0] + 712))(&v82, v56);
                v86 = v83;
                (*(v56->n128_u64[0] + 320))(&v89, v56);
                (*(v56->n128_u64[0] + 712))(&v82, v56);
                time1 = v82;
                *&time2.value = *&v84[0].var0;
                time2.epoch = v85;
                PC_CMTimeSaferSubtract(&time1, &time2, &v88);
                time1 = v89;
                time2 = v88;
                PC_CMTimeSaferSubtract(&time1, &time2, &v90);
                OZChannelObjectRootBase::setTimeOffset(v56, &v90, 0);
                OZChannelObjectRootBase::setTimeExtent(v56, v84, 0);
              }

              v74 = *(this + 121);
              v75 = !v78;
              if (!v74)
              {
                v75 = 1;
              }

              if ((v75 & 1) == 0)
              {
                OZScene::selectObject(v74, (v17 + 6), a6 > 1, 0);
                v74 = *(this + 121);
              }

              OZScene::endCaptureModifiedChannels(v74, v58);
            }
          }

          else
          {
            v59 = *(*(this + 121) + 1584);
            PCURL::PCURL(v84, @"Undo Add Filter");
            OZDocument::startCaptureModifiedChannels(v59, v84);
            PCString::~PCString(v84);
            v57 = v78;
            if ((*(*this + 336))(this, v17, v50))
            {
              if ((a7 & 4) != 0)
              {
                v61 = (*(*v17 + 240))(v17);
                (*(v61->n128_u64[0] + 712))(v84);
                OZSceneSettings::getFrameDuration((*(this + 121) + 336), &v82);
                if (PCTimeRange::contains(v84, a8, &v82))
                {
                  OZSceneSettings::getFrameDuration((*(this + 121) + 336), &time1);
                  PCTimeRange::getEnd(v84, &time1, &v82);
                  OZSceneSettings::getFrameDuration((*(this + 121) + 336), &time2);
                  PCTimeRange::setOffsetEnd(v84, a8, &v82, &time2);
                  OZChannelObjectRootBase::setTimeOffset(v61, a8, 0);
                  OZChannelObjectRootBase::setTimeExtent(v61, v84, 0);
                }
              }

              OZDocument::endCaptureModifiedChannels(*(*(this + 121) + 1584), v60);
              v62 = *(this + 121);
              v63 = !v78;
              if (!v62)
              {
                v63 = 1;
              }

              if ((v63 & 1) == 0)
              {
                OZScene::selectObject(v62, (v17 + 6), a6 > 1, 0);
              }
            }

            else
            {
              (*(*v17 + 8))(v17);
              OZDocument::endCaptureModifiedChannels(*(*(this + 121) + 1584), v64);
              v17 = 0;
            }
          }

          (*(*v17 + 472))(v17, *(this + 121));
          v76 = *(this + 121);
          if (!v76)
          {
            goto LABEL_126;
          }

          OZDocument::postNotification(*(v76 + 1584), 16);
          if (!v57)
          {
            goto LABEL_126;
          }

          goto LABEL_124;
        }

        while (1)
        {
          v48 = v48[1];
          if (v48 == (this + 976))
          {
            break;
          }

          v50 = *v49;
          v49 = v48 + 2;
          if ((*(*v48[2] + 240))(v48[2]) == a3)
          {
            goto LABEL_73;
          }
        }
      }

      v50 = 0;
      goto LABEL_75;
    }

    if (v18 && v21 <= 2)
    {
      v28 = (*(*v18 + 320))(v18);
      if (v28)
      {
        PCURL::PCURL(v84, @"Undo Reorder Behavior");
        (*(v18[2] + 176))(v18 + 2, v84, 3);
        PCString::~PCString(v84);
        v29 = v28 != this;
        if (v28 != this)
        {
          for (j = *(v28 + 126); j != (v28 + 1000); j = j[1])
          {
            v31 = j[2];
            if (v31 != v18)
            {
              (*(*v31 + 152))(v31, v18 + 2);
            }
          }
        }

        (*(*v28 + 368))(v28, v18);
      }

      else
      {
        v29 = 1;
      }

      v51 = this + 1000;
      v52 = *(this + 126);
      if (v52 != (this + 1000))
      {
        v53 = (v52 + 16);
        if ((*(**(v52 + 16) + 312))(*(v52 + 16)) == a3)
        {
          v54 = 0;
LABEL_91:
          if (a5 == 3)
          {
            v54 = *v53;
          }

LABEL_93:
          v65 = v18[1];
          *&v84[0].var0 = xmmword_2603473C0;
          if (OZFactory::isKindOfClass(v65, v84))
          {
            if (*(this + 127))
            {
              v54 = *(*v51 + 16);
            }
          }

          else if (!this)
          {
            goto LABEL_101;
          }

          if (v66 && v67)
          {
            OZShape::isGeometricShape((v67 + 18976));
          }

LABEL_101:
          v68 = *(this + 121);
          v69 = *(v68 + 1584);
          if (v69)
          {
            if (v28)
            {
              PCURL::PCURL(v84, @"Undo Reorder Behavior");
              OZChannelBase::setRangeName(v69, v84);
              PCString::~PCString(v84);
              OZSceneNode::insertBehaviorAfter(this, v18, v54);
            }

            PCURL::PCURL(v84, @"Undo Add Behavior");
            OZChannelBase::setRangeName(v69, v84);
            PCString::~PCString(v84);
            (*(*this + 360))(this, v18, v54);
            if ((a7 & 4) != 0)
            {
              v70 = (*(*v18 + 312))(v18);
              (*(v70->n128_u64[0] + 712))(v84);
              v71 = *(this + 121);
              if (v71)
              {
                OZSceneSettings::getFrameDuration((v71 + 336), &v82);
                if (PCTimeRange::contains(v84, a8, &v82))
                {
                  OZSceneSettings::getFrameDuration((*(this + 121) + 336), &time1);
                  PCTimeRange::getEnd(v84, &time1, &v82);
                  OZSceneSettings::getFrameDuration((*(this + 121) + 336), &time2);
                  PCTimeRange::setOffsetEnd(v84, a8, &v82, &time2);
                  OZChannelObjectRootBase::setTimeOffset(v70, a8, 0);
                  OZChannelObjectRootBase::setTimeExtent(v70, v84, 0);
                }
              }
            }

            v72 = *(this + 121);
            v73 = !v29;
            if (!v72)
            {
              v73 = 1;
            }

            if ((v73 & 1) == 0)
            {
              OZScene::selectObject(v72, (v18 + 2), a6 > 1, 0);
            }

            PCURL::PCURL(v84, @"Undo Add Behavior");
            (*(v18[2] + 176))(v18 + 2, v84, 1);
            PCString::~PCString(v84);
            OZChannelBase::setRangeName(v69, v77);
            v68 = *(this + 121);
            if (!v68)
            {
              goto LABEL_126;
            }
          }

          OZDocument::postNotification(*(v68 + 1584), 16);
          if (!v29)
          {
            goto LABEL_126;
          }

LABEL_124:
          v43 = *(*(this + 121) + 1584);
          v44 = 32;
          goto LABEL_125;
        }

        while (1)
        {
          v52 = *(v52 + 8);
          if (v52 == v51)
          {
            break;
          }

          v54 = *v53;
          v53 = (v52 + 16);
          if ((*(**(v52 + 16) + 312))(*(v52 + 16)) == a3)
          {
            goto LABEL_91;
          }
        }
      }

      v54 = 0;
      goto LABEL_93;
    }

    v9 = a7;
    if (v19 && (a4 == 1 || v21 <= 2))
    {
      v41 = *(this + 121);
      if (v41 && !OZChannelBase::isObjectRef(v41))
      {
        PCURL::PCURL(v84, @"Undo Drop");
        (*(*(this + 2) + 176))(this + 16, v84, 0);
        PCString::~PCString(v84);
      }

      (*(*this + 376))(this, v20);
      goto LABEL_53;
    }

    v10 = a6;
    v8 = a8;
LABEL_27:
    if ((*(*this + 640))(this) == a3 && v25 != 0)
    {
      v33 = (*(*this + 640))(this);
      if (!OZChannelBase::isDescendantOf(v25, v33))
      {
        v34 = (*(*this + 640))(this);
        result = OZChannelFolder::findMatchingDescendant(v34, v25);
        if (!result)
        {
          return result;
        }

        v35 = result;
        if (!v25->var6)
        {
          if (v36)
          {
            if (v37)
            {
              OZChannel::setInfo(v36, v37[16]);
            }
          }
        }

        PCSharedCount::PCSharedCount(v84);
        (*(*v35 + 344))(v35, v84);
        PCString::~PCString(v84);
        if ((v9 & 2) != 0)
        {
          v45 = (*(*this + 272))(this);
          CurrentTime = OZScene::getCurrentTime(v45, v84);
          (*(*v35 + 304))(v35, v84, v25, CurrentTime);
        }

        else
        {
          OZChannelBase::operator=(v35, v25);
        }

        (*(*this + 496))(this);
        v47 = (*(*this + 272))(this);
        OZDocument::postNotification(*(v47 + 1584), 8);
        return 1;
      }
    }

    return OZObjectManipulator::performDragOperation((this + 16), lpsrc, a3, a4, a5, v10, v9, v8);
  }

  v22 = (*(*this + 640))(this);
  NodeRefDescendant = OZChannelObjectRoot::findNodeRefDescendant(v22, v16, v22);
  if ((*(*this + 640))(this) != a3)
  {
    return 0;
  }

  v38 = (*(*v16 + 272))(v16);
  v39 = (*(*this + 272))(this);
  result = 0;
  if (a6 == 1 && v38 == v39 && NodeRefDescendant != 0)
  {
    PCSharedCount::PCSharedCount(v84);
    (*(*NodeRefDescendant + 344))(NodeRefDescendant, v84);
    PCString::~PCString(v84);
    (*(*NodeRefDescendant + 864))(NodeRefDescendant, v16[20], 0);
LABEL_53:
    v42 = *(this + 121);
    if (!v42)
    {
LABEL_126:
      (*(*this + 496))(this);
      return 1;
    }

    v43 = *(v42 + 1584);
    v44 = 8;
LABEL_125:
    OZDocument::postNotification(v43, v44);
    goto LABEL_126;
  }

  return result;
}

uint64_t PCTimeRange::contains(PCTimeRange *this, const CMTime *a2, const CMTime *a3)
{
  time1 = *this;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    time1 = *this;
    time2 = *(this + 1);
    PC_CMTimeSaferAdd(&time1, &time2, &v9);
    time1 = v9;
    time2 = *a3;
    PC_CMTimeSaferSubtract(&time1, &time2, &v8);
    time1 = *a2;
    time2 = v8;
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      return 1;
    }

    v7 = *(this + 9);
    if (v7)
    {
      return (v7 >> 4) & 1;
    }
  }

  return 0;
}

double PCTimeRange::setOffsetEnd(PCTimeRange *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  v6 = *&a2->value;
  *(this + 2) = a2->epoch;
  *this = v6;
  v12 = *a3;
  v11 = *a2;
  PC_CMTimeSaferSubtract(&v12, &v11, &v8);
  v12 = v8;
  v11 = *a4;
  PC_CMTimeSaferAdd(&v12, &v11, &v9);
  result = *&v9;
  *(this + 24) = v9;
  *(this + 5) = v10;
  return result;
}

void OZLayeredMaterial::OZLayeredMaterial(OZLayeredMaterial *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZMaterialBase::OZMaterialBase(this, a2, a3, a4);
  *v5 = &unk_28727E168;
  *(v5 + 16) = &unk_28727E348;
  *(v5 + 48) = &unk_28727E5A0;
  *(v5 + 56) = &unk_28727E5F8;
  *(v5 + 1305) = 0;
  Instance = OZMaterialLayersFolder_Factory::getInstance(v5);
  PCURL::PCURL(&v8, @"Material Layers Folder");
  OZMaterialLayersFolder::OZMaterialLayersFolder((this + 1312), Instance, &v8, (this + 152), 0x64u, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Material Options");
  OZChannelFolder::OZChannelFolder((this + 1440), &v8, (this + 152), 0x6Bu, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Layer Shared Transform Channel");
  OZChannelMaterialMapTransform::OZChannelMaterialMapTransform((this + 1568), &v8, (this + 152), 0x6Au, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Global Placement Folder");
  OZChannelFolder::OZChannelFolder((this + 5472), &v8, (this + 152), 0x6Cu, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Randomize Selection Enum");
  PCURL::PCURL(&v7, @"Material Randomize Selection Channel");
  OZChannelEnum::OZChannelEnum((this + 5600), 1u, &v8, &v7, (this + 5472), 0x6Du, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  *(this + 5856) = 0;
  *(this + 5860) = 0;
  *(this + 5880) = 0u;
  *(this + 734) = this + 5880;
  *(this + 1474) = 0;
  OZLayeredMaterial::init(this);
}

void sub_2600A8044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  v17 = v13;
  PCSpinLock::~PCSpinLock((v12 + v16));
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(v12 + 5872, *v17);
  OZChannelEnum::~OZChannelEnum((v12 + v15));
  OZChannelFolder::~OZChannelFolder((v12 + v14));
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((v12 + 1568));
  OZChannelFolder::~OZChannelFolder((v12 + 1440));
  OZMaterialLayersFolder::~OZMaterialLayersFolder((v12 + 1312));
  OZMaterialBase::~OZMaterialBase(v12);
  _Unwind_Resume(a1);
}

uint64_t OZMaterialLayersFolder_Factory::getInstance(OZMaterialLayersFolder_Factory *this)
{
  if (atomic_load_explicit(&OZMaterialLayersFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMaterialLayersFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMaterialLayersFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMaterialLayersFolder_Factory::_instance;
}

OZChannelBase *OZLayeredMaterial::init(OZLayeredMaterial *this)
{
  v4 = *MEMORY[0x277D85DE8];
  OZChannelBase::setParameterCtlrClassName((this + 152), @"TXLayeredMaterialRootFolderController");
  OZChannelFolder::setFoldFlag((this + 1312), 4718592);
  OZChannelBase::setInspectorCtlrClassName((this + 1312), @"OZFolderGroupController");
  OZChannelBase::setFlag((this + 1696), 2, 0);
  OZChannelBase::setInspectorCtlrClassName((this + 1440), @"OZMaterialOptionsFolderGroupController");
  OZChannelBase::setFlag((this + 1440), 0x2000000000, 0);
  OZChannelFolder::setFoldFlag((this + 1440), 4);
  OZChannelFolder::setFoldFlag((this + 1440), 0x800000);
  OZChannelBase::setInspectorCtlrClassName((this + 5472), @"OZNonTruncatingFolderGroupController");
  OZChannelFolder::setFoldFlag((this + 5472), 0x400000);
  v3 = xmmword_260343780;
  OZChannelEnum::setTags((this + 5600), &v3, 4);
  OZLayeredMaterial::addDefaultLayer(this);
  return OZLayeredMaterial::updateSharedTransformUIState(this);
}

void OZLayeredMaterial::OZLayeredMaterial(OZLayeredMaterial *this, const OZLayeredMaterial *a2, char a3)
{
  OZMaterialBase::OZMaterialBase(this, a2, a3);
  *v5 = &unk_28727E168;
  *(v5 + 16) = &unk_28727E348;
  *(v5 + 48) = &unk_28727E5A0;
  *(v5 + 56) = &unk_28727E5F8;
  *(v5 + 1305) = 0;
  OZMaterialLayersFolder::OZMaterialLayersFolder((v5 + 1312), (a2 + 1312), (this + 152));
  OZChannelFolder::OZChannelFolder((this + 1440), (a2 + 1440), (this + 152));
  OZChannelMaterialMapTransform::OZChannelMaterialMapTransform((this + 1568), (a2 + 1568), (this + 152));
  OZChannelFolder::OZChannelFolder((this + 5472), (a2 + 5472), (this + 152));
  OZChannelEnum::OZChannelEnum((this + 5600), (a2 + 5600), (this + 5472));
  *(this + 5856) = *(a2 + 5856);
  *(this + 1465) = *(a2 + 1465);
  *(this + 1466) = 0;
  *(this + 5880) = 0u;
  *(this + 734) = this + 5880;
  *(this + 1474) = 0;
  OZLayeredMaterial::fixupImageChannelsOffsetChannel(this);
}

void sub_2600A8410(_Unwind_Exception *a1)
{
  v6 = v2;
  PCSpinLock::~PCSpinLock((v1 + v5));
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(v1 + 5872, *v6);
  OZChannelEnum::~OZChannelEnum((v1 + v4));
  OZChannelFolder::~OZChannelFolder((v1 + v3));
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((v1 + 1568));
  OZChannelFolder::~OZChannelFolder((v1 + 1440));
  OZMaterialLayersFolder::~OZMaterialLayersFolder((v1 + 1312));
  OZMaterialBase::~OZMaterialBase(v1);
  _Unwind_Resume(a1);
}

uint64_t OZLayeredMaterial::fixupImageChannelsOffsetChannel(uint64_t this)
{
  v1 = *(this + 1424);
  if (v1)
  {
    v2 = *v1;
    v3 = v1[1];
    if (*v1 != v3)
    {
      v4 = this;
      do
      {
        v5 = *v2++;
        this = (*(*v5 + 760))(v5, v4);
      }

      while (v2 != v3);
    }
  }

  return this;
}

uint64_t OZLayeredMaterial::operator=(uint64_t a1, void *lpsrc)
{
  ++*(a1 + 5864);
  {
    __cxa_bad_cast();
  }

  OZChannelFolder::assign((a1 + 5472), (v6 + 5472));
  result = OZMaterialBase::operator=(a1, lpsrc);
  --*(a1 + 5864);
  return result;
}

void OZLayeredMaterial::~OZLayeredMaterial(OZLayeredMaterial *this)
{
  *this = &unk_28727E168;
  *(this + 2) = &unk_28727E348;
  *(this + 6) = &unk_28727E5A0;
  *(this + 7) = &unk_28727E5F8;
  PCSpinLock::~PCSpinLock(this + 1474);
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(this + 5872, *(this + 735));
  OZChannelEnum::~OZChannelEnum((this + 5600));
  OZChannelFolder::~OZChannelFolder((this + 5472));
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((this + 1568));
  OZChannelFolder::~OZChannelFolder((this + 1440));
  OZMaterialLayersFolder::~OZMaterialLayersFolder((this + 1312));

  OZMaterialBase::~OZMaterialBase(this);
}

{
  OZLayeredMaterial::~OZLayeredMaterial(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZLayeredMaterial::~OZLayeredMaterial(OZLayeredMaterial *this)
{
  OZLayeredMaterial::~OZLayeredMaterial((this - 16));
}

{
  OZLayeredMaterial::~OZLayeredMaterial((this - 48));
}

{
  OZLayeredMaterial::~OZLayeredMaterial((this - 56));
}

{
  OZLayeredMaterial::~OZLayeredMaterial((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZLayeredMaterial::~OZLayeredMaterial((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZLayeredMaterial::~OZLayeredMaterial((this - 56));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZLayeredMaterial::setPresetFromMaterial(OZLayeredMaterial *this, OZMaterialBase *a2)
{
  OZMaterialBase::setPresetFromMaterial(this, a2);
  ++*(this + 1466);
  v4 = *(this + 44);
  (*(*this + 80))(this, a2);
  OZChannelBase::setID((this + 152), v4);
  OZChannelBase::setFlag((this + 152), 8, 0);
  if (a2)
  {
    if (v5)
    {
      v6 = v5;
      if (*(v5 + 5856) == 1)
      {
        v7 = *(this + 160);
        if (v7)
        {
          if (v8)
          {
            (*(v8[41] + 712))(v8 + 41, MEMORY[0x277CC08F0], 1, v6[1465]);
          }
        }
      }
    }
  }

  result = (*(*this + 360))(this);
  --*(this + 1466);
  return result;
}

OZChannelBase *OZLayeredMaterial::setTransformValuesAsDefaults(OZChannelBase *this)
{
  result = OZChannelMaterialMapTransform::setCurrentTransformValuesAsDefault(this + 14);
  var10 = this[12].var10;
  if (var10)
  {
    isa = var10->isa;
    info = var10->info;
    while (isa != info)
    {
      v6 = *isa++;
      result = (*(*v6 + 776))(v6);
    }
  }

  return result;
}

char *OZLayeredMaterial::addDefaultLayer(char *this)
{
  if (!*(this + 1466))
  {
    v1 = this;
    NextUniqueID = OZChannelBase::getNextUniqueID(this);
    Instance = OZMaterialSubstanceLayer_Factory::getInstance(NextUniqueID);
    PCURL::PCURL(&v5, @"Material Substance Layer");
    v4 = (*(*Instance + 16))(Instance, &v5, NextUniqueID);
    PCString::~PCString(&v5);
    (*(v4->var0 + 112))(v4, 3);
    LOBYTE(v4[1].var2) = 1;
    OZChannelBase::willBeModified((v1 + 1312), 1);
    return OZChannelFolder::push_front((v1 + 1312), v4);
  }

  return this;
}

OZChannelBase *OZLayeredMaterial::updateSharedTransformUIState(OZChannelBase *this)
{
  if (OZLayeredMaterial::doAnyLayersUseSharedTransform(this))
  {
    result = OZChannelBase::resetFlag(this + 14, 4227072, 0);
  }

  else
  {
    result = OZChannelBase::setFlag(this + 14, 4227072, 0);
  }

  var10 = this[12].var10;
  if (var10)
  {
    isa = var10->isa;
    info = var10->info;
    while (isa != info)
    {
      v6 = *isa++;
      result = (*(*v6 + 768))(v6);
    }
  }

  return result;
}

uint64_t OZMaterialSubstanceLayer_Factory::getInstance(OZMaterialSubstanceLayer_Factory *this)
{
  if (atomic_load_explicit(&OZMaterialSubstanceLayer_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMaterialSubstanceLayer_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMaterialSubstanceLayer_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMaterialSubstanceLayer_Factory::_instance;
}

OZChannelFolder *OZLayeredMaterial::deleteLayer(OZLayeredMaterial *this, unsigned int a2)
{
  v2 = **(this + 178);
  if (a2 >= ((*(*(this + 178) + 8) - v2) >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(v2 + 8 * a2);
  result = OZChannelFolder::removeDescendant((this + 1312), v3);
  if (v3)
  {
    v5 = *(v3->var0 + 1);

    return v5(v3);
  }

  return result;
}

const char *OZLayeredMaterial::envMapFilenameAndNormalization(OZLayeredMaterial *this, OZ3DExtrusionProperties *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 3944), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt <= 0xA)
  {
    return (&OZLayeredMaterial::envMapFilenameAndNormalization(OZ3DExtrusionProperties *)::envs)[2 * ValueAsInt];
  }

  else
  {
    return "";
  }
}

void OZLayeredMaterial::setupLayeredMaterialEnvironmentMap(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v28 = *MEMORY[0x277D85DE8];
  if (!*v2)
  {
    throw_PCNullPointerException(1);
  }

  LiLayeredMaterial::setUseEnvironmentMap(*v2, 0);
  v7 = *(v6 + 1280);
  if (v7)
  {
    if (*(v5 + 514) == 1 && v8 != 0)
    {
      v10 = (*(*v8 + 272))(v8);
      if (v10)
      {
        v11 = v10;
        if (OZChannelBase::isEnabled((v10 + 3560), 0, 1))
        {
          if (!*v3)
          {
            throw_PCNullPointerException(1);
          }

          LiLayeredMaterial::setUseEnvironmentMap(*v3, 1);
          WorkingColorSpace = OZRenderParams::getWorkingColorSpace(v5);
          OZ3DExtrusionProperties::environmentType(v11);
          if (OZ3DExtrusionProperties::environmentType(v11) == 1)
          {
            PCWorkingColorVector::PCWorkingColorVector(v19);
            PCWorkingColorVector::PCWorkingColorVector(&v21);
            PCWorkingColorVector::PCWorkingColorVector(&v23);
            PCWorkingColorVector::PCWorkingColorVector(&v25);
            OZChannelBase::getHash((v11 + 4744));
            v14 = LiGradientEnvCache::instance(v13);
            if ((LiGradientEnvCache::get(v14, v18, v19) & 1) == 0)
            {
              v17 = *v5;
              OZChannelGradient::getGradient((v11 + 4744), &v17, 1, WorkingColorSpace, v27, 0x100u, 0, &kPCNoToneMapMethod);
              v16 = LiGradientEnvCache::instance(v15);
              LiGradientEnvCache::add(v16, v18, v27);
            }

            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }
          }
        }
      }
    }
  }
}

void sub_2600A900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(va);
  _Unwind_Resume(a1);
}

void sub_2600A9418(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount((v2 - 112));
  PCLockSentry<PCMutex>::~PCLockSentry(v2 - 104);
  _Unwind_Resume(a1);
}

void OZLayeredMaterial::deleteDefaultLayers(OZLayeredMaterial *this)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v1 = *(this + 178);
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      if (*(*v2 + 128) == 1)
      {
        if (v5 >= v17)
        {
          v7 = (v5 - __p) >> 3;
          if ((v7 + 1) >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v8 = (v17 - __p) >> 2;
          if (v8 <= v7 + 1)
          {
            v8 = v7 + 1;
          }

          if (v17 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v9 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v9 = v8;
          }

          if (v9)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(&__p, v9);
          }

          v10 = (8 * v7);
          *v10 = v6;
          v5 = (8 * v7 + 8);
          v11 = v10 - (v16 - __p);
          memcpy(v11, __p, v16 - __p);
          v12 = __p;
          __p = v11;
          v16 = v5;
          v17 = 0;
          if (v12)
          {
            operator delete(v12);
          }
        }

        else
        {
          *v5 = v6;
          v5 += 8;
        }

        v16 = v5;
      }

      ++v2;
    }

    while (v2 != v3);
    v13 = __p;
    if (__p != v5)
    {
      do
      {
        v14 = *v13;
        OZChannelFolder::removeDescendant((this + 1312), *v13);
        if (v14)
        {
          (*(v14->var0 + 1))(v14);
        }

        ++v13;
      }

      while (v13 != v5);
      v13 = __p;
    }

    if (v13)
    {
      v16 = v13;
      operator delete(v13);
    }
  }
}

void sub_2600A961C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZLayeredMaterial::deleteThis(OZLayeredMaterial *this, OZChannelBase *a2)
{
  {
    v4 = *(**(this + 160) + 184);

    return v4();
  }

  else
  {

    return OZMaterialBase::deleteThis(this, a2);
  }
}

uint64_t OZLayeredMaterial::doAnyLayersUseSharedTransform(OZLayeredMaterial *this)
{
  v1 = *(this + 178);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (*v1 == v2)
  {
    return 0;
  }

  v3 = *v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 744))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

void *OZLayeredMaterial::layerThatOwnsChannel(OZLayeredMaterial *this, OZChannel *a2)
{
  while (1)
  {
    this = *(this + 6);
    if (!this)
    {
      break;
    }

    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t OZLayeredMaterial::channelValueWillBeSet(OZLayeredMaterial *this, OZChannel *a2, const CMTime *a3, double a4)
{
  v8 = OZLayeredMaterial::layerThatOwnsChannel(a2, a2);
  if (v8)
  {
    (*(*v8 + 720))(v8, a2, a3, a4);
  }

  return OZMaterialBase::channelValueWillBeSet(this, a2, a3, a4);
}

uint64_t OZLayeredMaterial::getImageNodeIDList(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1424);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v6 = *v3++;
        result = (*(*v6 + 728))(v6, a2);
      }

      while (v3 != v4);
    }
  }

  return result;
}

uint64_t OZLayeredMaterial::getImageAndFillChannelList(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1424);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v6 = *v3++;
        result = (*(*v6 + 736))(v6, a2);
      }

      while (v3 != v4);
    }
  }

  return result;
}

uint64_t OZLayeredMaterial::isSimilarToMaterial(uint64_t **this, OZMaterialBase *a2)
{
  isSimilarToMaterial = OZMaterialBase::isSimilarToMaterial(this, a2);
  result = 0;
  if (a2)
  {
    if (isSimilarToMaterial)
    {
      if (result)
      {
        v6 = this[178];
        if (v6)
        {
          v7 = (v6[1] - *v6) >> 3;
        }

        else
        {
          LODWORD(v7) = 0;
        }

        v8 = *(result + 1424);
        if (v8)
        {
          v9 = (v8[1] - *v8) >> 3;
        }

        else
        {
          LODWORD(v9) = 0;
        }

        if (v7 == v9)
        {
          if (v7)
          {
            v10 = 0;
            v11 = *v6;
            v12 = (v6[1] - *v6) >> 3;
            v13 = v7;
            do
            {
              {
                std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
              }

              result = *(*v8 + 8 * v10);
              if (!result)
              {
                break;
              }

              result = 0;
              if (!v15 || !v16)
              {
                break;
              }

              if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v15[1] + 8), *(v16[1] + 8))))))
              {
                return 0;
              }

              ++v10;
              result = 1;
            }

            while (v13 != v10);
          }

          else
          {
            return 1;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *OZLayeredMaterial::copyMaterial(void *this, OZMaterialBase *lpsrc)
{
  if (lpsrc)
  {
    v2 = this;
    if (this)
    {
      v3 = this;
      v4 = v2[178];
      if (v4)
      {
        v4 = ((v4[1] - *v4) >> 3);
      }

      v5 = this[178];
      if (v5)
      {
        v5 = ((v5[1] - *v5) >> 3);
      }

      if (v4 == v5 && v4)
      {
        v6 = 0;
        v7 = v4;
        do
        {
          v8 = *v2[178];
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          this = *(v11 + 8 * v6);
          if (this)
          {
            if (v10)
            {
              if (this)
              {
                var3 = v10->var3;
                (*(v10->var0 + 32))(v10, this);
                this = OZChannelBase::setID(v10, var3);
              }
            }
          }

          ++v6;
        }

        while (v7 != v6);
      }
    }
  }

  return this;
}

void OZLayeredMaterial::makeSequenceChannelFolder(OZLayeredMaterial *this, OZChannelFolder *a2)
{
  Name = OZObjectManipulator::getName((this + 16));
  PCString::PCString(&v3, Name);
  operator new();
}

void sub_2600A9EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  MEMORY[0x2666E9F00](v10, 0x10E1C40138C3426);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZLayeredMaterial::getSequenceChannelsForMaterialLayer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1280);
  if (v3)
  {
    v4 = (v3 - 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4[60];
  v6 = v4[61];
  if (v5 == v6)
  {
LABEL_8:
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
    while (*v5 != a1)
    {
      ++v5;
      v7 = (v7 + 1);
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = *(a1 + 1424);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*v8 == v10)
  {
LABEL_13:
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    while (*v9 != a2)
    {
      v11 = (v11 + 1);
      if (++v9 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  return (*(*v4 + 256))(v4, v11, v7);
}

char *OZLayeredMaterial::writeBody(OZLayeredMaterial *this, PCSerializerWriteStream *a2, _BOOL4 a3, BOOL a4, uint64_t a5)
{
  result = OZMaterialBase::writeBody(this, a2, a3, a4, a5);
  if (a3)
  {
    result = *(this + 160);
    if (result)
    {
      if (result)
      {
        v9 = result;
        PCSerializerWriteStream::pushScope(a2, &OZLayeredMaterialScope);
        ValueAsInt = OZChannel::getValueAsInt((v9 + 328), MEMORY[0x277CC08F0], 0.0);
        (*(*a2 + 16))(a2, 300);
        (*(*a2 + 48))(a2, ValueAsInt);
        (*(*a2 + 24))(a2);

        return PCSerializerWriteStream::popScope(a2);
      }
    }
  }

  return result;
}

uint64_t OZLayeredMaterial::parseBegin(OZLayeredMaterial *this, PCSerializerReadStream *a2)
{
  OZLayeredMaterial::deleteDefaultLayers(this);
  *(this + 5856) = 0;
  PCSerializerReadStream::pushScope(a2, &OZLayeredMaterialScope);

  return OZMaterialBase::parseBegin(this, a2);
}

uint64_t OZLayeredMaterial::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v5 = OZMaterialBase::parseElement(this, a2, a3);
  if (*(a3 + 2) == 300)
  {
    (*(*a3 + 24))(a3, this + 5860);
    *(this + 5856) = 1;
  }

  return v5;
}

uint64_t OZLayeredMaterial::parseEnd(OZLayeredMaterial *this, PCSerializerReadStream *a2)
{
  v3 = OZMaterialBase::parseEnd(this, a2);
  OZChannelBase::setFlag((this + 1696), 2, 0);
  OZChannelFolder::resetFoldFlag((this + 1568), 0x400000);
  OZChannelFolder::setFoldFlag((this + 5472), 0x400000);
  OZChannelFolder::setFoldFlag((this + 1312), 0x80000);
  OZLayeredMaterial::updateSharedTransformUIState(this);
  v4 = *(this + 178);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    *&v61[40] = 0x3FF0000000000000;
    *v61 = 0x3FF0000000000000;
    *&v58[40] = 0x3FF0000000000000;
    *v58 = 0x3FF0000000000000;
    memset(&v58[8], 0, 32);
    v59 = 0u;
    v60 = 0u;
    memset(&v61[8], 0, 32);
    if (v6 != v5)
    {
      v7 = MEMORY[0x277CC08F0];
      do
      {
        v9 = *--v6;
        v8 = v9;
        if (v9)
        {
          if (!v10)
          {
            goto LABEL_13;
          }

          v11 = v10;
          v12 = (v10 + 6480);
          ValueAsInt = OZChannel::getValueAsInt((v10 + 10024), v7, 0.0);
          v14 = (v11[42].var12[26].isa)(v12);
          MaterialTextureTransformer::composeTextureTransform(v7, v14, &v11[55].var18, &v11[53].var1, v57);
          if ((v11[43].var0 & 2) == 0 && OZChannel::getValueAsInt(v11 + 13, v7, 0.0) == 2)
          {
            if (ValueAsInt)
            {
              PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
              v60 = v53;
              *v61 = v54;
              *&v61[16] = v55;
              *&v61[32] = v56;
              *v58 = v49;
              *&v58[16] = v50;
              *&v58[32] = v51;
              v59 = v52;
            }

            else
            {
              *&v61[40] = 0x3FF0000000000000;
              *v61 = 0x3FF0000000000000;
              *&v58[40] = 0x3FF0000000000000;
              *v58 = 0x3FF0000000000000;
              memset(&v58[8], 0, 32);
              v59 = 0u;
              v60 = 0u;
              memset(&v61[8], 0, 32);
            }

            v15 = (*(v12->var0 + 104))(v12);
            OZLayeredMaterial::copyTransformDeprecatedImageChannels(v15, v12, &v11[69].var12, ValueAsInt != 0, v58, v15, &v11[55].var18, &v11[53].var1);
          }

          v8 = *v6;
          if (*v6)
          {
LABEL_13:
            if (!v16)
            {
              goto LABEL_20;
            }

            v17 = v16;
            v18 = (v16 + 1384);
            v19 = OZChannel::getValueAsInt((v16 + 4928), v7, 0.0);
            v20 = (*(*(v17 + 173) + 832))(v18);
            MaterialTextureTransformer::composeTextureTransform(v7, v20, (v17 + 3408), (v17 + 2968), v57);
            if ((v17[1440] & 2) == 0)
            {
              if (v19)
              {
                PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
                v60 = v53;
                *v61 = v54;
                *&v61[16] = v55;
                *&v61[32] = v56;
                *v58 = v49;
                *&v58[16] = v50;
                *&v58[32] = v51;
                v59 = v52;
              }

              else
              {
                *&v61[40] = 0x3FF0000000000000;
                *v61 = 0x3FF0000000000000;
                *&v58[40] = 0x3FF0000000000000;
                *v58 = 0x3FF0000000000000;
                memset(&v58[8], 0, 32);
                v59 = 0u;
                v60 = 0u;
                memset(&v61[8], 0, 32);
              }

              v21 = (*(*v17 + 912))(v17);
              v22 = (*(v18->var0 + 104))(v18);
              OZLayeredMaterial::copyTransformDeprecatedImageChannels(v22, v18, v21, v19 != 0, v58, v22, (v17 + 3408), (v17 + 2968));
            }

            v8 = *v6;
            if (*v6)
            {
LABEL_20:
              if (!v23)
              {
                goto LABEL_28;
              }

              v24 = v23;
              p_var13 = &v23[37].var13;
              v26 = OZChannel::getValueAsInt(v23 + 61, v7, 0.0);
              v27 = (*(v24[37].var13 + 104))(p_var13);
              MaterialTextureTransformer::composeTextureTransform(v7, v27, &v24[51], &v24[48].var2, v57);
              if ((v24[38].var1 & 2) == 0 && OZChannel::getValueAsInt((v24 + 1224), v7, 0.0) == 2)
              {
                if (v26)
                {
                  PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
                  v60 = v53;
                  *v61 = v54;
                  *&v61[16] = v55;
                  *&v61[32] = v56;
                  *v58 = v49;
                  *&v58[16] = v50;
                  *&v58[32] = v51;
                  v59 = v52;
                }

                else
                {
                  *&v61[40] = 0x3FF0000000000000;
                  *v61 = 0x3FF0000000000000;
                  *&v58[40] = 0x3FF0000000000000;
                  *v58 = 0x3FF0000000000000;
                  memset(&v58[8], 0, 32);
                  v59 = 0u;
                  v60 = 0u;
                  memset(&v61[8], 0, 32);
                }

                v28 = (*(p_var13->var0 + 104))(p_var13);
                OZLayeredMaterial::copyTransformDeprecatedImageChannels(v28, p_var13, &v24[64].var13, v26 != 0, v58, v28, &v24[51], &v24[48].var2);
              }

              v8 = *v6;
              if (*v6)
              {
LABEL_28:
                if (!v29)
                {
                  goto LABEL_36;
                }

                v30 = v29;
                v31 = (v29 + 5888);
                v32 = OZChannel::getValueAsInt((v29 + 9432), v7, 0.0);
                v33 = (*(*(v30 + 736) + 832))(v31);
                MaterialTextureTransformer::composeTextureTransform(v7, v33, (v30 + 7912), (v30 + 7472), v57);
                if ((v30[5944] & 2) == 0 && (*(*v30 + 912))(v30) == 2)
                {
                  if (v32)
                  {
                    PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
                    v60 = v53;
                    *v61 = v54;
                    *&v61[16] = v55;
                    *&v61[32] = v56;
                    *v58 = v49;
                    *&v58[16] = v50;
                    *&v58[32] = v51;
                    v59 = v52;
                  }

                  else
                  {
                    *&v61[40] = 0x3FF0000000000000;
                    *v61 = 0x3FF0000000000000;
                    *&v58[40] = 0x3FF0000000000000;
                    *v58 = 0x3FF0000000000000;
                    memset(&v58[8], 0, 32);
                    v59 = 0u;
                    v60 = 0u;
                    memset(&v61[8], 0, 32);
                  }

                  v34 = (*(v31->var0 + 104))(v31);
                  OZLayeredMaterial::copyTransformDeprecatedImageChannels(v34, v31, v30 + 1249, v32 != 0, v58, v34, (v30 + 7912), (v30 + 7472));
                }

                v8 = *v6;
                if (*v6)
                {
LABEL_36:
                  if (v35)
                  {
                    v36 = v35;
                    v37 = OZChannel::getValueAsInt(v35 + 326, v7, 0.0);
                    v38 = v37 != 0;
                    MaterialTextureTransformer::composeTextureTransform(v7, &v36[327].var13, &v36[335].var4, &v36[332].var6, v57);
                    if ((*((*(v36->var0 + 127))(v36) + 56) & 2) != 0 || (*(v36->var0 + 119))(v36) != 1)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      if (v37)
                      {
                        PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
                        v60 = v53;
                        *v61 = v54;
                        *&v61[16] = v55;
                        *&v61[32] = v56;
                        *v58 = v49;
                        *&v58[16] = v50;
                        *&v58[32] = v51;
                        v59 = v52;
                      }

                      else
                      {
                        *&v61[40] = 0x3FF0000000000000;
                        *v61 = 0x3FF0000000000000;
                        *&v58[40] = 0x3FF0000000000000;
                        *v58 = 0x3FF0000000000000;
                        memset(&v58[8], 0, 32);
                        v59 = 0u;
                        v60 = 0u;
                        memset(&v61[8], 0, 32);
                      }

                      v39 = (*(v36->var0 + 127))(v36);
                      v40 = (*(v36->var0 + 128))(v36);
                      OZLayeredMaterial::copyTransformDeprecatedImageChannels(v40, v39, v40, v37 != 0, v58, &v36[327].var13, &v36[335].var4, &v36[332].var6);
                    }

                    if ((*((*(v36->var0 + 129))(v36) + 56) & 2) == 0 && (*(v36->var0 + 120))(v36) == 1)
                    {
                      if (v37)
                      {
                        v41 = v38;
                      }

                      else
                      {
                        v41 = 1;
                      }

                      if (v41)
                      {
                        *&v61[40] = 0x3FF0000000000000;
                        *v61 = 0x3FF0000000000000;
                        *&v58[40] = 0x3FF0000000000000;
                        *v58 = 0x3FF0000000000000;
                        memset(&v58[8], 0, 32);
                        v59 = 0u;
                        v60 = 0u;
                        memset(&v61[8], 0, 32);
                      }

                      else
                      {
                        PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
                        v60 = v53;
                        *v61 = v54;
                        *&v61[16] = v55;
                        *&v61[32] = v56;
                        *v58 = v49;
                        *&v58[16] = v50;
                        v38 = 1;
                        *&v58[32] = v51;
                        v59 = v52;
                      }

                      v42 = (*(v36->var0 + 129))(v36);
                      v43 = (*(v36->var0 + 130))(v36);
                      OZLayeredMaterial::copyTransformDeprecatedImageChannels(v43, v42, v43, v37 != 0, v58, &v36[327].var13, &v36[335].var4, &v36[332].var6);
                    }

                    if ((v36[166].var10 & 2) == 0 && (*(v36->var0 + 121))(v36) == 2)
                    {
                      if (v37)
                      {
                        v44 = v38;
                      }

                      else
                      {
                        v44 = 1;
                      }

                      if (v44)
                      {
                        *&v61[40] = 0x3FF0000000000000;
                        *v61 = 0x3FF0000000000000;
                        *&v58[40] = 0x3FF0000000000000;
                        *v58 = 0x3FF0000000000000;
                        memset(&v58[8], 0, 32);
                        v59 = 0u;
                        v60 = 0u;
                        memset(&v61[8], 0, 32);
                      }

                      else
                      {
                        PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
                        v60 = v53;
                        *v61 = v54;
                        *&v61[16] = v55;
                        *&v61[32] = v56;
                        *v58 = v49;
                        *&v58[16] = v50;
                        v38 = 1;
                        *&v58[32] = v51;
                        v59 = v52;
                      }

                      v45 = (*(v36->var0 + 132))(v36);
                      OZLayeredMaterial::copyTransformDeprecatedImageChannels(v45, &v36[166].var3, v45, v37 != 0, v58, &v36[327].var13, &v36[335].var4, &v36[332].var6);
                    }

                    if ((v36[243].var11 & 2) == 0 && (*(v36->var0 + 123))(v36) == 2)
                    {
                      if (v37)
                      {
                        v46 = v38;
                      }

                      else
                      {
                        v46 = 1;
                      }

                      if (v46)
                      {
                        *&v61[40] = 0x3FF0000000000000;
                        *v61 = 0x3FF0000000000000;
                        *&v58[40] = 0x3FF0000000000000;
                        *v58 = 0x3FF0000000000000;
                        memset(&v58[8], 0, 32);
                        v59 = 0u;
                        v60 = 0u;
                        memset(&v61[8], 0, 32);
                      }

                      else
                      {
                        PCMatrix44Tmpl<double>::operator*(v57, v58, &v49);
                        v60 = v53;
                        *v61 = v54;
                        *&v61[16] = v55;
                        *&v61[32] = v56;
                        *v58 = v49;
                        *&v58[16] = v50;
                        *&v58[32] = v51;
                        v59 = v52;
                      }

                      v47 = (*(v36->var0 + 140))(v36);
                      OZLayeredMaterial::copyTransformDeprecatedImageChannels(v47, &v36[243].var4, v47, v37 != 0, v58, &v36[327].var13, &v36[335].var4, &v36[332].var6);
                    }
                  }
                }
              }
            }
          }
        }
      }

      while (v6 != v5);
    }

    return v3;
  }

  return v3;
}

uint64_t OZLayeredMaterial::copyTransformDeprecatedImageChannels(int a1, OZChannelBase *this, void *a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OZChannelBase::setFlag(this, 2, 0);
  v15 = (*(*a3 + 832))(a3);
  if (a4)
  {
    MaterialTextureTransformer::setTextureTransformChannels(MEMORY[0x277CC08F0], a5, v15, (a3 + 610), (a3 + 462));
  }

  else
  {
    (*(*(v15 + 17) + 256))(v15 + 17, a6 + 136);
    v16 = (*(*a3 + 832))(a3);
    (*(*(v16 + 288) + 256))(v16 + 288, a6 + 288);
    (*(a3[627] + 256))(a3 + 627, a7 + 136);
    (*(a3[646] + 256))(a3 + 646, a7 + 288);
    (*(a3[665] + 256))(a3 + 665, a7 + 440);
    (*(a3[479] + 256))(a3 + 479, a8 + 136);
    (*(a3[498] + 256))(a3 + 498, a8 + 288);
  }

  v18 = a3[17];
  v17 = a3 + 17;
  (*(v18 + 256))(v17, &this[1].var3);
  (*(v17[701] + 256))(v17 + 701, &this[25].var10);
  (*(v17[752] + 256))(v17 + 752, &this[33].var13);
  (*(v17[771] + 256))(v17 + 771, &this[35].var4);
  v19 = MEMORY[0x277CC08F0];
  OZChannel::setValue((v17 + 229), MEMORY[0x277CC08F0], 0.0, 0);
  (*(v17[325] + 256))(v17 + 325, &this[29].var5);
  v20 = *(v17[261] + 712);
  v21.n128_u64[0] = 0;

  return v20(v17 + 261, v19, 0, v21);
}

uint64_t OZLayeredMaterial::calcStaticHash(uint64_t a1, void *lpsrc)
{
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = (*(*a1 + 256))(a1, v4, 0, 0, 1);
  v6.n128_f32[0] = OZMaterialLayerBase::calcTextureScale(v5);
  v7 = *(*lpsrc + 80);

  return v7(lpsrc, v6);
}

uint64_t OZLayeredMaterial::calcHashForState(uint64_t a1, PCSerializerWriteStream *a2, CMTime *a3)
{
  v7 = *a3;
  v4 = OZChannelFolder::calcHashForState((a1 + 152), a2, &v7);
  v5 = OZMaterialLayerBase::calcTextureScale(v4);
  return (*(*a2 + 80))(a2, v5);
}

OZFactories *OZLayeredMaterial::markFactoriesForSerialization(OZLayeredMaterial *this, PCSerializerWriteStream *a2, int a3)
{
  OZMaterialBase::markFactoriesForSerialization(this, a2);

  return OZMaterialLayersFolder::markFactoriesForSerialization((this + 1312), a2, a3);
}

OZFactories *non-virtual thunk toOZLayeredMaterial::markFactoriesForSerialization(OZLayeredMaterial *this, PCSerializerWriteStream *a2, int a3)
{
  OZMaterialBase::markFactoriesForSerialization(this - 6, a2);

  return OZMaterialLayersFolder::markFactoriesForSerialization((this + 1264), a2, a3);
}

void OZLayeredMaterial::allowDrag(OZLayeredMaterial *this, OZFactoryBase *lpsrc, OZChannelBase *a3, char a4, unsigned int *a5, unsigned int *a6)
{
  *a5 = 0;
  {

    OZMaterialBase::allowDrag(this, lpsrc, a3, a4, a5, a6);
  }

  else
  {
    *a5 = 2;
  }
}

uint64_t OZLayeredMaterial::performDragOperation(OZLayeredMaterial *this, OZFactoryBase *lpsrc, OZChannelBase *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const CMTime *a8)
{
  if (lpsrc)
  {
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  if (!v16 || (v18 = v17) == 0)
  {
LABEL_9:

    return OZMaterialBase::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "WARNING: OZLayeredMaterial::performDragOperation: performing layer drag operation on a single material ", 103);
  Name = OZObjectManipulator::getName((this + 16));
  CStr = PCString::createCStr(Name);
  v22 = strlen(CStr);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, CStr, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ". Manipulation of Material Layers should be done by TXTextLayout so it's performed across all style runs. Please check that the UI action that triggered this console spew meant to modify this Material's Layers.\n", 211);
  if ((*(*this + 96))(this))
  {
    v24 = (*(*this + 96))(this);
  }

  else
  {
    v24 = *(OZApplication::getCurrentDoc(theApp) + 3);
  }

  v26 = *(v24 + 1584);
  PCURL::PCURL(&v28, @"Undo Material Change");
  OZDocument::startCaptureModifiedChannels(v26, &v28);
  PCString::~PCString(&v28);
  OZChannelFolder::removeDescendant((this + 1312), v16);
  if (a5 == 2)
  {
    OZChannelFolder::insertDescendantBefore((this + 1312), v18, v16);
  }

  else if (a5 == 3)
  {
    OZChannelFolder::insertDescendantAfter((this + 1312), v18, v16);
  }

  OZDocument::endCaptureModifiedChannels(*(v24 + 1584), v27);
  OZDocument::postNotification(*(v24 + 1584), 524300);
  return 1;
}

uint64_t OZLayeredMaterial::getSourceOperationMask(OZLayeredMaterial *this, OZChannelBase *a2, int a3)
{
  {
    if (a3)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ((this + 1440) == a2)
  {
    return 0;
  }

  else
  {

    return OZObjectManipulator::getSourceOperationMask((this + 16), a2, a3);
  }
}

char *OZLayeredMaterial::moveMaterialLayer(OZLayeredMaterial *this, unsigned int a2, unsigned int a3, int a4)
{
  v4 = **(this + 178);
  v5 = (*(*(this + 178) + 8) - v4) >> 3;
  if (v5 <= a2 || v5 <= a3)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = *(v4 + 8 * a2);
  v9 = *(v4 + 8 * a3);
  result = OZChannelFolder::removeDescendant((this + 1312), v8);
  if (a4 == 2)
  {

    return OZChannelFolder::insertDescendantBefore((this + 1312), v9, v8);
  }

  else if (a4 == 3)
  {

    return OZChannelFolder::insertDescendantAfter((this + 1312), v9, v8);
  }

  return result;
}

int64x2_t OZMaterialBase::getBounds(uint64_t a1, int64x2_t *a2)
{
  result = vdupq_n_s64(0xC044000000000000);
  *a2 = result;
  a2[1] = vdupq_n_s64(0x4054000000000000uLL);
  return result;
}

void OZMaterialLayersFolder_Factory::OZMaterialLayersFolder_Factory(OZMaterialLayersFolder_Factory *this)
{
  v3 = xmmword_260848530;
  v4 = xmmword_26084FB60;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28727E6E8;
  *(this + 16) = &unk_28727E7B8;
}

void OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform(OZChannelMaterialMapTransform *this)
{
  *this = &unk_28728BDC8;
  *(this + 2) = &unk_28728C0A8;
  OZChannelRotation3D::~OZChannelRotation3D((this + 3040));
  OZChannelMaterialMapScale::~OZChannelMaterialMapScale((this + 1856));
  OZChannelPosition::~OZChannelPosition((this + 1152));
  OZChannelEnum::~OZChannelEnum((this + 896));
  OZChannelEnum::~OZChannelEnum((this + 640));
  OZChannelEnum::~OZChannelEnum((this + 384));
  OZChannelEnum::~OZChannelEnum((this + 128));

  OZChannelFolder::~OZChannelFolder(this);
}

{
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelMaterialMapScale::~OZChannelMaterialMapScale(OZChannelMaterialMapScale *this)
{
  *this = &unk_287297B70;
  *(this + 2) = &unk_287297EC8;
  OZChannel2D::~OZChannel2D((this + 744));
  OZChannel::~OZChannel((this + 592));
  OZChannelBool::~OZChannelBool((this + 440));

  OZChannel2D::~OZChannel2D(this);
}

{
  OZChannelMaterialMapScale::~OZChannelMaterialMapScale(this);

  JUMPOUT(0x2666E9F00);
}

void OZMaterialSubstanceLayer_Factory::OZMaterialSubstanceLayer_Factory(OZMaterialSubstanceLayer_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_26084FB70;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28727E810;
  *(this + 16) = &unk_28727E8E0;
}

uint64_t OZMaterialLayerBase::LayeredMaterialInfo::LayeredMaterialInfo(uint64_t a1, const PCSharedCount *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, __int128 *a12, char a13, int a14, uint64_t a15)
{
  *a1 = a2->var0;
  PCSharedCount::PCSharedCount((a1 + 8), a2 + 1);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a9;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  *(a1 + 64) = a8;
  v25 = *a12;
  *(a1 + 88) = a12[1];
  *(a1 + 72) = v25;
  *(a1 + 104) = a10;
  *(a1 + 112) = a11;
  *(a1 + 120) = a13;
  *(a1 + 124) = OZMaterialLayerBase::calcTextureScale(v26);
  *(a1 + 128) = a15;
  *(a1 + 136) = a14;
  return a1;
}

void std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void OZTransformNode::OZTransformNode(OZTransformNode *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  *v5 = &unk_28727E938;
  v5[2] = &unk_28727EEE8;
  v5[6] = &unk_28727F140;
  PCURL::PCURL(&v9, @"Channel Motion");
  OZChannelFolder::OZChannelFolder((this + 1088), &v9, (this + 320), 0x64u, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 1216), &v9, (this + 1088), 0x65u, 0, 3u);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 2104), &v9, (this + 1088), 0x6Du, 0, 4u, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Velocity");
  OZChannelPosition3D::OZChannelPosition3D((this + 2960), &v9, (this + 1088), 0x67u, 0x10008u, 3u);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Rotational Velocity");
  OZChannel3D::OZChannel3D((this + 3848), &v9, (this + 1088), 0x6Eu, 0x10008u, 3u, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Scale");
  OZChannelScale3D::OZChannelScale3D((this + 4440), 1.0, 1.0, 1.0, &v9, (this + 1088), 0x69u, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Shear");
  OZChannelShear::OZChannelShear((this + 5032), &v9, (this + 1088), 0x6Au, 0, 2u);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Anchor Point");
  OZChannelPosition3D::OZChannelPosition3D((this + 5472), &v9, (this + 1088), 0x6Bu, 0, 3u);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Rotation");
  OZChannelAngle::OZChannelAngle((this + 6376), &v9, (this + 1088), 0x66u, 2, 0, 0);
  PCString::~PCString(&v9);
  *(this + 795) = 0;
  (*(*(this + 169) + 656))(this + 1352, 4);
  (*(*(this + 188) + 656))(this + 1504, 4);
  (*(*(this + 169) + 480))(this + 1352, 1);
  (*(*(this + 188) + 480))(this + 1504, 1);
  OZChannelBase::setFlag((this + 2960), 2, 0);
  OZChannelFolder::saveStateAsDefault((this + 2960));
  OZChannelBase::setFlag((this + 3848), 2, 0);
  OZChannelFolder::saveStateAsDefault((this + 3848));
  *(this + 1592) = 0;
  v9 = xmmword_26084F810;
  Behavior = OZApplication::createBehavior(theApp, &v9);
  v8 = OZSimulationBehavior::_MTF_IDGenerator--;
  OZChannelBase::setID((v7 + 56), v8);
  (*(*this + 360))(this, v7, 0);
}

void sub_2600AC9C4(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel((v1 + v5));
  OZChannelPosition3D::~OZChannelPosition3D((v1 + v4));
  OZChannelShear::~OZChannelShear((v1 + v3));
  OZChannelScale3D::~OZChannelScale3D((v1 + v2));
  OZChannel3D::~OZChannel3D((v1 + 3848));
  OZChannelPosition3D::~OZChannelPosition3D((v1 + 2960));
  OZChannelRotation3D::~OZChannelRotation3D((v1 + 2104));
  OZChannelPosition3D::~OZChannelPosition3D((v1 + 1216));
  OZChannelFolder::~OZChannelFolder((v1 + 1088));
  OZSceneNode::~OZSceneNode(v1);
  _Unwind_Resume(a1);
}

void OZTransformNode::OZTransformNode(OZTransformNode *this, const OZTransformNode *a2, char a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  *v5 = &unk_28727E938;
  *(v5 + 16) = &unk_28727EEE8;
  *(v5 + 48) = &unk_28727F140;
  OZChannelFolder::OZChannelFolder((v5 + 1088), (a2 + 1088), (this + 320));
  OZChannelPosition3D::OZChannelPosition3D((this + 1216), (a2 + 1216), (this + 1088));
  OZChannelRotation3D::OZChannelRotation3D((this + 2104), (a2 + 2104), (this + 1088));
  OZChannelPosition3D::OZChannelPosition3D((this + 2960), (a2 + 2960), (this + 1088));
  OZChannel3D::OZChannel3D((this + 3848), (a2 + 3848), (this + 1088));
  OZChannelScale3D::OZChannelScale3D((this + 4440), (a2 + 4440), (this + 1088));
  OZChannelShear::OZChannelShear((this + 5032), (a2 + 5032), (this + 1088));
  OZChannelPosition3D::OZChannelPosition3D((this + 5472), (a2 + 5472), (this + 1088));
  OZChannel::OZChannel((this + 6376), (a2 + 6376), (this + 1088));
  *(this + 797) = &unk_287246030;
  *(this + 799) = &unk_287246390;
  *(this + 795) = *(a2 + 795);
  *(this + 1592) = *(a2 + 1592);
}

void sub_2600ACC88(_Unwind_Exception *a1)
{
  OZChannelPosition3D::~OZChannelPosition3D((v1 + v4));
  OZChannelShear::~OZChannelShear((v1 + v3));
  OZChannelScale3D::~OZChannelScale3D((v1 + v2));
  OZChannel3D::~OZChannel3D((v1 + 3848));
  OZChannelPosition3D::~OZChannelPosition3D((v1 + 2960));
  OZChannelRotation3D::~OZChannelRotation3D((v1 + 2104));
  OZChannelPosition3D::~OZChannelPosition3D((v1 + 1216));
  OZChannelFolder::~OZChannelFolder((v1 + 1088));
  OZSceneNode::~OZSceneNode(v1);
  _Unwind_Resume(a1);
}

void OZTransformNode::~OZTransformNode(OZTransformNode *this)
{
  *this = &unk_28727E938;
  *(this + 2) = &unk_28727EEE8;
  *(this + 6) = &unk_28727F140;
  OZChannel::~OZChannel((this + 6376));
  OZChannelPosition3D::~OZChannelPosition3D((this + 5472));
  OZChannelShear::~OZChannelShear((this + 5032));
  *(this + 555) = &unk_2872557A8;
  *(this + 557) = &unk_287255B00;
  OZChannel::~OZChannel((this + 4880));
  OZChannel2D::~OZChannel2D((this + 4440));
  *(this + 481) = &unk_28724B1C8;
  *(this + 483) = &unk_28724B528;
  OZChannel::~OZChannel((this + 4288));
  OZChannel2D::~OZChannel2D((this + 3848));
  OZChannelPosition3D::~OZChannelPosition3D((this + 2960));
  OZChannelRotation3D::~OZChannelRotation3D((this + 2104));
  OZChannelPosition3D::~OZChannelPosition3D((this + 1216));
  OZChannelFolder::~OZChannelFolder((this + 1088));

  OZSceneNode::~OZSceneNode(this);
}

{
  OZTransformNode::~OZTransformNode(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZTransformNode::~OZTransformNode(OZTransformNode *this)
{
  OZTransformNode::~OZTransformNode((this - 16));
}

{
  OZTransformNode::~OZTransformNode((this - 48));
}

{
  OZTransformNode::~OZTransformNode((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZTransformNode::~OZTransformNode((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZTransformNode::operator=(uint64_t a1, const void *a2)
{
  OZSceneNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelFolder::operator=(a1 + 1088);
  OZChannelPosition::operator=(a1 + 1216, (v5 + 304));
  OZChannelPosition::operator=(a1 + 2104, (v5 + 526));
  OZChannelPosition::operator=(a1 + 2960, (v5 + 740));
  OZChannelFolder::operator=(a1 + 3848);
  OZChannelBase::operator=(a1 + 3984, (v5 + 996));
  OZChannelBase::operator=(a1 + 4136, (v5 + 1034));
  OZChannelBase::operator=(a1 + 4288, (v5 + 1072));
  OZChannelFolder::operator=(a1 + 4440);
  OZChannelBase::operator=(a1 + 4576, (v5 + 1144));
  OZChannelBase::operator=(a1 + 4728, (v5 + 1182));
  OZChannelBase::operator=(a1 + 4880, (v5 + 1220));
  OZChannelFolder::operator=(a1 + 5032);
  OZChannelBase::operator=(a1 + 5168, (v5 + 1292));
  OZChannelBase::operator=(a1 + 5320, (v5 + 1330));
  result = OZChannelPosition::operator=(a1 + 5472, (v5 + 1368));
  *(a1 + 6368) = v5[1592];
  return result;
}

double OZTransformNode::copyAtTime(OZTransformNode *this, const OZSceneNode *lpsrc, CMTime *a3)
{
  if (lpsrc)
  {
  }

  else
  {
    v5 = 0;
  }

  OZChannelBase::reset((this + 1216), 0);
  OZChannel::getValueAsDouble((v5 + 1352), a3, 0.0);
  v7 = v6;
  OZChannel::getValueAsDouble((v5 + 1504), a3, 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((v5 + 1952), a3, 0.0);
  v10 = MEMORY[0x277CC08F0];
  OZChannelPosition3D::setPosition((this + 1216), MEMORY[0x277CC08F0], v7, v9, v11);
  OZChannelBase::reset((this + 2104), 0);
  OZChannel::getValueAsDouble((v5 + 2240), a3, 0.0);
  (*(*(this + 280) + 712))(this + 2240, v10, 0);
  OZChannel::getValueAsDouble((v5 + 2392), a3, 0.0);
  (*(*(this + 299) + 712))(this + 2392, v10, 0);
  OZChannel::getValueAsDouble((v5 + 2544), a3, 0.0);
  (*(*(this + 318) + 712))(this + 2544, v10, 0);
  OZChannelBase::reset((this + 2960), 0);
  OZChannel::getValueAsDouble((v5 + 3096), a3, 0.0);
  v13 = v12;
  v25 = v12;
  OZChannel::getValueAsDouble((v5 + 3248), a3, 0.0);
  v15 = v14;
  v24 = v14;
  OZChannel::getValueAsDouble((v5 + 3696), a3, 0.0);
  v23 = v16;
  OZChannelPosition3D::setPosition((this + 2960), v10, v13, v15, v16);
  OZChannelBase::reset((this + 3848), 0);
  OZChannelScale3D::getValue((v5 + 3848), a3, &v25, &v24, &v23, 0.0);
  OZChannel3D::setValue((this + 3848), a3, v25, v24, v23);
  OZChannelBase::reset((this + 4440), 0);
  OZChannelScale3D::getValue((v5 + 4440), a3, &v25, &v24, &v23, 0.0);
  OZChannel3D::setValue((this + 4440), a3, v25, v24, v23);
  OZChannelBase::reset((this + 5032), 0);
  OZChannel::getValueAsDouble(v5 + 34, a3, 0.0);
  v25 = v17;
  OZChannel::getValueAsDouble(v5 + 35, a3, 0.0);
  v24 = v18;
  OZChannel::setValue(this + 34, a3, v25, 0);
  OZChannel::setValue(this + 35, a3, v24, 0);
  OZChannelBase::reset((this + 5472), 0);
  OZChannel::getValueAsDouble((v5 + 5608), a3, 0.0);
  v25 = v19;
  OZChannel::getValueAsDouble((v5 + 5760), a3, 0.0);
  v24 = v20;
  OZChannel::getValueAsDouble((v5 + 6208), a3, 0.0);
  v23 = v21;
  OZChannelPosition3D::setPosition((this + 5472), v10, v25, v24, v21);
  result = *(v5 + 795);
  *(this + 795) = result;
  return result;
}

uint64_t OZTransformNode::writeBody(OZTransformNode *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZTransformNodeScope);
  v10 = *(this + 795);
  (*(*a2 + 16))(a2, 300);
  (*(*a2 + 88))(a2, v10);
  (*(*a2 + 24))(a2);
  v11 = *(this + 1592);
  if (v11)
  {
    (*(*a2 + 16))(a2, 301);
    (*(*a2 + 56))(a2, v11);
    (*(*a2 + 24))(a2);
  }

  PCSerializerWriteStream::popScope(a2);

  return OZSceneNode::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZTransformNode::parseBegin(OZTransformNode *this, PCSerializerReadStream *a2)
{
  *(this + 1592) = 0;
  OZSceneNode::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZTransformNodeScope);
  return 1;
}

uint64_t non-virtual thunk toOZTransformNode::parseBegin(OZTransformNode *this, PCSerializerReadStream *a2)
{
  *(this + 1580) = 0;
  OZSceneNode::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZTransformNodeScope);
  return 1;
}

uint64_t OZTransformNode::parseEnd(OZTransformNode *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 2u)
  {
    OZChannelBase::operator=(this + 2544, this + 6376);
  }

  OZChannelBase::setFlag((this + 6376), 2, 0);
  OZSceneNode::parseEnd(this, a2);
  return 1;
}

uint64_t OZTransformNode::parseElement(OZTransformNode *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v9 = 0.0;
  v8 = 0;
  OZSceneNode::parseElement(this, a2, a3);
  v5 = *(a3 + 2);
  if (v5 == 301)
  {
    if ((*(*a3 + 32))(a3, &v8))
    {
      *(this + 1592) = v8;
    }
  }

  else if (v5 == 300)
  {
    if ((*(*a3 + 64))(a3, &v9))
    {
      v6 = v9;
      *(this + 795) = v9;
    }

    else
    {
      v6 = *(this + 795);
    }

    if (v6 == 0.0)
    {
      if ((*(*this + 272))(this))
      {
        *(this + 795) = *((*(*this + 272))(this) + 384);
      }

      else
      {
        *(this + 795) = 0x3FF0000000000000;
      }
    }
  }

  return 1;
}

void OZTransformNode::getTranslation(OZTransformNode *this, double *a2, double *a3, const CMTime *a4)
{
  if (a2)
  {
    OZChannel::getValueAsDouble((this + 1352), a4, 0.0);
    *a2 = v8;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 1504), a4, 0.0);
    *a3 = v9;
  }
}

void OZTransformNode::getTranslation(OZTransformNode *this, double *a2, double *a3, double *a4, const CMTime *a5)
{
  if (a2)
  {
    OZChannel::getValueAsDouble((this + 1352), a5, 0.0);
    *a2 = v10;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 1504), a5, 0.0);
    *a3 = v11;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 1952), a5, 0.0);
    *a4 = v12;
  }
}

void OZTransformNode::getTranslation(uint64_t a1, void *a2, CMTime *a3)
{
  if (a2)
  {
    OZChannel::getValueAsDouble((a1 + 1352), a3, 0.0);
    v7 = v6;
    OZChannel::getValueAsDouble((a1 + 1504), a3, 0.0);
    v9 = v8;
    OZChannel::getValueAsDouble((a1 + 1952), a3, 0.0);
    *a2 = v7;
    a2[1] = v9;
    a2[2] = v10;
  }
}

void OZTransformNode::getScale(OZTransformNode *this, double *a2, double *a3, double *a4, const CMTime *a5, int a6)
{
  if (*&a5[2].timescale == this)
  {
    if (a2)
    {
      *a2 = 1.0;
    }

    if (a3)
    {
      *a3 = 1.0;
    }

    if (a4)
    {
      *a4 = 1.0;
    }
  }

  else
  {
    OZChannelScale3D::getValue((this + 4440), a5, a2, a3, a4, 0.0);
    if (a6)
    {
      v12 = *(this + 120);
      if (v12)
      {
        if (v13)
        {
          v15 = 0.0;
          v16 = 0.0;
          v14 = 0.0;
          (*(*v13 + 1312))(v13, &v16, &v15, &v14, a5, 1);
          if (a2)
          {
            *a2 = v16 * *a2;
          }

          if (a3)
          {
            *a3 = v15 * *a3;
          }

          if (a4)
          {
            *a4 = v14 * *a4;
          }
        }
      }
    }
  }
}

void OZTransformNode::getRotation(uint64_t a1, void *a2, CMTime *a3)
{
  OZChannel::getValueAsDouble((a1 + 2240), a3, 0.0);
  v7 = v6;
  OZChannel::getValueAsDouble((a1 + 2392), a3, 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((a1 + 2544), a3, 0.0);
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v10;
}

uint64_t OZTransformNode::setRotation(OZTransformNode *this, double a2, double a3, double a4, const CMTime *a5)
{
  (*(*(this + 280) + 712))(a2);
  (*(*(this + 299) + 712))(this + 2392, a5, 0, a3);
  v9 = *(*(this + 318) + 712);
  v10.n128_f64[0] = a4;

  return v9(this + 2544, a5, 0, v10);
}

uint64_t OZTransformNode::setRotation(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a1[280] + 712))(*a2);
  v6.n128_u64[0] = *(a2 + 8);
  (*(a1[299] + 712))(a1 + 299, a3, 0, v6);
  v7.n128_u64[0] = *(a2 + 16);
  v8 = *(a1[318] + 712);

  return v8(a1 + 318, a3, 0, v7);
}

void OZTransformNode::getShear(OZTransformNode *this, double *a2, double *a3, const CMTime *a4)
{
  OZChannel::getValueAsDouble(this + 34, a4, 0.0);
  *a2 = v8;
  OZChannel::getValueAsDouble(this + 35, a4, 0.0);
  *a3 = v9;
}

uint64_t OZTransformNode::setShear(OZTransformNode *this, double a2, double a3, const CMTime *a4)
{
  OZChannel::setValue(this + 34, a4, a2, 0);

  return OZChannel::setValue(this + 35, a4, a3, 0);
}

void OZTransformNode::getPivot(OZTransformNode *this, double *a2, double *a3, double *a4, const CMTime *a5)
{
  if (a2)
  {
    OZChannel::getValueAsDouble((this + 5608), a5, 0.0);
    *a2 = v10;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 5760), a5, 0.0);
    *a3 = v11;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 6208), a5, 0.0);
    *a4 = v12;
  }
}

void OZTransformNode::getPivot(uint64_t a1, void *a2, CMTime *a3)
{
  if (a2)
  {
    OZChannel::getValueAsDouble((a1 + 5608), a3, 0.0);
    v7 = v6;
    OZChannel::getValueAsDouble((a1 + 5760), a3, 0.0);
    v9 = v8;
    OZChannel::getValueAsDouble((a1 + 6208), a3, 0.0);
    *a2 = v7;
    a2[1] = v9;
    a2[2] = v10;
  }
}

BOOL OZTransformNode::getCommonAncestorTransforms(OZSceneNode *a1, OZSceneNode *a2, const OZRenderState *a3, uint64_t a4, uint64_t a5)
{
  CommonAncestor = OZSceneNode::getCommonAncestor(a1, a2, 1);
  OZRenderState::OZRenderState(&v45, a3);
  v45.var4 = 1;
  v44 = 0x3FF0000000000000;
  v41 = 0x3FF0000000000000;
  v38 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v36 = 0u;
  v37 = 0u;
  v39 = 0u;
  v40 = 0u;
  v42 = 0u;
  v43 = 0u;
  if (!a4 || (*(a4 + 120) = 0x3FF0000000000000, *(a4 + 80) = 0x3FF0000000000000, *(a4 + 40) = 0x3FF0000000000000, *a4 = 0x3FF0000000000000, *(a4 + 8) = 0uLL, *(a4 + 24) = 0uLL, *(a4 + 48) = 0uLL, *(a4 + 64) = 0uLL, *(a4 + 88) = 0uLL, *(a4 + 104) = 0uLL, !a1))
  {
    v14 = 0;
    if (!a5)
    {
      return (v14 & 1) == 0;
    }

    goto LABEL_23;
  }

  v13 = 0;
  if (v11)
  {
    v12 = v11;
    if (!(*(*v11 + 1640))(v11) || (*(*v12 + 1632))(v12))
    {
      v13 = 1;
    }
  }

  v34 = v13;
  (*(*a1 + 1256))(a1, &v35, &v45);
  v15.n128_f64[0] = PCMatrix44Tmpl<double>::leftMult(a4, &v35);
  for (i = *(a1 + 120); i != CommonAncestor; i = v18[120])
  {
    if (i)
    {
      v18 = v17;
      if (v17)
      {
        if (v19)
        {
          v20 = v19;
          if (!(*(*v19 + 1640))(v19) || (*(*v20 + 1632))(v20))
          {
            v34 = 1;
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }

    (*(*v18 + 1256))(v18, &v35, &v45);
    v15.n128_f64[0] = PCMatrix44Tmpl<double>::leftMult(a4, &v35);
  }

  if (!CommonAncestor)
  {
    v14 = v34;
    if (!a5)
    {
      return (v14 & 1) == 0;
    }

    goto LABEL_23;
  }

  v21 = *((*(*a1 + 272))(a1, v15) + 384);
  v14 = v34;
  if (v21 != 1.0)
  {
    v22 = vmulq_n_f64(*a4, v21);
    v23 = vmulq_n_f64(*(a4 + 16), v21);
    *a4 = v22;
    *(a4 + 16) = v23;
  }

  if (a5)
  {
LABEL_23:
    *(a5 + 120) = 0x3FF0000000000000;
    *(a5 + 80) = 0x3FF0000000000000;
    *(a5 + 40) = 0x3FF0000000000000;
    *a5 = 0x3FF0000000000000;
    *(a5 + 8) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    if (a2)
    {
      if (v24)
      {
        v25 = v24;
        if (!(*(*v24 + 1640))(v24) || (*(*v25 + 1632))(v25))
        {
          v14 = 1;
        }
      }
    }

    (*(*a2 + 1264))(a2, &v35, &v45);
    v26.n128_f64[0] = PCMatrix44Tmpl<double>::rightMult(a5, &v35);
    for (j = *(a2 + 120); j != CommonAncestor; j = v29[120])
    {
      if (j)
      {
        v29 = v28;
        if (v28)
        {
          if (v30)
          {
            v31 = v30;
            if (!(*(*v30 + 1640))(v30) || (*(*v31 + 1632))(v31))
            {
              v14 = 1;
            }
          }
        }
      }

      else
      {
        v29 = 0;
      }

      (*(*v29 + 1264))(v29, &v35, &v45);
      v26.n128_f64[0] = PCMatrix44Tmpl<double>::rightMult(a5, &v35);
    }

    if (CommonAncestor)
    {
      v32 = 1.0 / *((*(*a1 + 272))(a1, v26) + 384);
      if (v32 != 1.0)
      {
        *a5 = v32 * *a5;
        *(a5 + 32) = v32 * *(a5 + 32);
        *(a5 + 64) = v32 * *(a5 + 64);
        *(a5 + 96) = v32 * *(a5 + 96);
      }
    }
  }

  return (v14 & 1) == 0;
}

double OZTransformNode::getParentPixelAspectRatio(OZTransformNode *this, const OZRenderState *a2, __n128 a3)
{
  v5 = *(this + 120);
  if (v5)
  {
    a3.n128_u64[0] = 1.0;
    if (a2->var9)
    {
      return a3.n128_f64[0];
    }

    if (v6)
    {
      a3.n128_f64[0] = (*(*v6 + 1328))(a3);
      goto LABEL_9;
    }
  }

  else
  {
    a3.n128_u64[0] = 1.0;
    if (a2->var9)
    {
      return a3.n128_f64[0];
    }
  }

  v7 = (*(*this + 272))(this, a3);
  if (v7)
  {
    a3.n128_u64[0] = *(v7 + 384);
  }

  else
  {
    a3.n128_f64[0] = (*(*this + 1328))(v8);
  }

LABEL_9:
  if (a3.n128_f64[0] == 0.0)
  {
    a3.n128_u64[0] = 1.0;
  }

  return a3.n128_f64[0];
}

void OZTransformNode::getTransformMatrix(OZTransformNode *this, uint64_t a2, CMTime *a3)
{
  v55 = 0.0;
  v56 = 0.0;
  v53 = 1.0;
  v54 = 0.0;
  v51 = 1.0;
  v52 = 1.0;
  v49 = 0.0;
  v50 = 0.0;
  v48 = 0.0;
  if (*&a3[2].timescale == this)
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    if ((a3[8].timescale & 0x100) != 0)
    {
      return;
    }

    v26 = (*(*this + 1328))(this) / *&a3[1].epoch;
    goto LABEL_60;
  }

  v6 = *&a3[10].timescale;
  if ((v6 & 0x3800) != 0)
  {
    OZTransformNode::getTranslation(this, &v56, &v55, &v54, a3);
    v6 = *&a3[10].timescale;
  }

  if ((v6 & 0x1C0) != 0)
  {
    (*(*this + 1312))(this, &v53, &v52, &v51, a3, 0);
    v6 = *&a3[10].timescale;
  }

  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if ((v6 & 0x38) != 0)
  {
    OZChannel::getValueAsDouble((this + 2240), a3, 0.0);
    v8 = v11;
    OZChannel::getValueAsDouble((this + 2392), a3, 0.0);
    v9 = v12;
    OZChannel::getValueAsDouble((this + 2544), a3, 0.0);
    v10 = v13;
    v6 = *&a3[10].timescale;
  }

  v14 = 0.0;
  if ((v6 & 0x600) != 0)
  {
    OZChannel::getValueAsDouble(this + 34, a3, 0.0);
    v7 = v15;
    OZChannel::getValueAsDouble(this + 35, a3, 0.0);
    v14 = v16;
    v6 = *&a3[10].timescale;
  }

  if ((v6 & 7) != 0)
  {
    OZTransformNode::getPivot(this, &v50, &v49, &v48, a3);
    v6 = *&a3[10].timescale;
  }

  if ((~v6 & 0x3FFF) == 0)
  {
    goto LABEL_35;
  }

  if (v6)
  {
    if ((v6 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v50 = 0.0;
    if ((v6 & 2) != 0)
    {
LABEL_15:
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v49 = 0.0;
  if ((v6 & 4) == 0)
  {
LABEL_16:
    v48 = 0.0;
  }

LABEL_17:
  if ((v6 & 8) == 0)
  {
    v8 = 0.0;
  }

  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  if ((v6 & 0x20) == 0)
  {
    v10 = 0.0;
  }

  if ((v6 & 0x40) != 0)
  {
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v53 = 1.0;
    if ((v6 & 0x80) != 0)
    {
LABEL_25:
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  v52 = 1.0;
  if ((v6 & 0x100) == 0)
  {
LABEL_26:
    v51 = 1.0;
  }

LABEL_27:
  if ((v6 & 0x200) == 0)
  {
    v7 = 0.0;
  }

  if ((v6 & 0x400) == 0)
  {
    v14 = 0.0;
  }

  if ((v6 & 0x800) != 0)
  {
    if ((v6 & 0x1000) != 0)
    {
      goto LABEL_33;
    }

LABEL_70:
    v55 = 0.0;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v56 = 0.0;
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_70;
  }

LABEL_33:
  if ((v6 & 0x2000) == 0)
  {
LABEL_34:
    v54 = 0.0;
  }

LABEL_35:
  v22.n128_f64[0] = (*(*this + 1328))(this);
  v23 = v22.n128_f64[0];
  v24 = *(this + 120);
  if (v24)
  {
  }

  else
  {
    v25 = 0;
  }

  v27 = 1.0;
  if ((a3[8].timescale & 0x100) == 0)
  {
    ParentPixelAspectRatio = OZTransformNode::getParentPixelAspectRatio(this, a3, v22);
    v27 = ParentPixelAspectRatio;
    if (v23 != 0.0)
    {
      ParentPixelAspectRatio = v23;
    }

    v53 = v53 * (ParentPixelAspectRatio / v27);
  }

  v29 = v56;
  if (fabs(v56) < 0.0000001)
  {
    v56 = 0.0;
    v29 = 0.0;
  }

  v30 = v55;
  if (fabs(v55) < 0.0000001)
  {
    v55 = 0.0;
    v30 = 0.0;
  }

  v31 = v54;
  if (fabs(v54) < 0.0000001)
  {
    v54 = 0.0;
    v31 = 0.0;
  }

  PCMatrix44Tmpl<double>::setTransformation(a2, 0, 4, v29, v30, v31, v8, v9, v10, v53, v52, v17, v18, v19, v20, v21, v51, v7, v14, v50, v49, v48, *&v27);
  if (BYTE4(a3[9].value) == 1)
  {
    v47 = 0x3FF0000000000000;
    v44 = 0x3FF0000000000000;
    v41 = 0x3FF0000000000000;
    v38 = 0x3FF0000000000000;
    v39 = 0u;
    v40 = 0u;
    v42 = 0u;
    v43 = 0u;
    v45 = 0u;
    v46 = 0u;
    (*(*this + 1280))(this, &v38, a3);
    PCMatrix44Tmpl<double>::rightMult(a2, &v38);
  }

  if (v25)
  {
    if (!LODWORD(a3[2].value))
    {
      v47 = 0x3FF0000000000000;
      v44 = 0x3FF0000000000000;
      v41 = 0x3FF0000000000000;
      v38 = 0x3FF0000000000000;
      v39 = 0u;
      v40 = 0u;
      v42 = 0u;
      v43 = 0u;
      v45 = 0u;
      v46 = 0u;
      (*(*v25 + 1256))(v25, &v38, a3);
      PCMatrix44Tmpl<double>::operator*(&v38, a2, v37);
      if (v37 != a2)
      {
        for (i = 0; i != 128; i += 32)
        {
          v33 = (a2 + i);
          v34 = *&v37[i + 16];
          *v33 = *&v37[i];
          v33[1] = v34;
        }
      }
    }

    return;
  }

  if ((a3[8].timescale & 0x100) != 0)
  {
    return;
  }

  v26 = v27 / *&a3[1].epoch;
LABEL_60:
  if (v26 != 1.0)
  {
    v35 = vmulq_n_f64(*a2, v26);
    v36 = vmulq_n_f64(*(a2 + 16), v26);
    *a2 = v35;
    *(a2 + 16) = v36;
  }
}

void OZTransformNode::getInvTransformMatrix(OZTransformNode *this, uint64_t a2, CMTime *a3)
{
  if (*&a3[2].timescale == this)
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    if ((a3[8].timescale & 0x100) != 0)
    {
      return;
    }

    v29 = *&a3[1].epoch;
    v30 = v29 / (*(*this + 1328))(this);
    goto LABEL_60;
  }

  v54 = 0.0;
  v55 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v47 = 0.0;
  OZTransformNode::getTranslation(this, &v55, &v54, &v53, a3);
  (*(*this + 1312))(this, &v52, &v51, &v50, a3, 0);
  OZChannel::getValueAsDouble((this + 2240), a3, 0.0);
  v7 = v6;
  OZChannel::getValueAsDouble((this + 2392), a3, 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((this + 2544), a3, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble(this + 34, a3, 0.0);
  v13 = v12;
  OZChannel::getValueAsDouble(this + 35, a3, 0.0);
  v15 = v14;
  OZTransformNode::getPivot(this, &v49, &v48, &v47, a3);
  v16 = *&a3[10].timescale;
  if ((~a3[10].timescale & 0x3FFFLL) == 0)
  {
    goto LABEL_25;
  }

  if (v16)
  {
    if ((v16 & 2) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v49 = 0.0;
    if ((v16 & 2) != 0)
    {
LABEL_5:
      if ((v16 & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v48 = 0.0;
  if ((v16 & 4) == 0)
  {
LABEL_6:
    v47 = 0.0;
  }

LABEL_7:
  if ((v16 & 8) == 0)
  {
    v7 = 0.0;
  }

  if ((v16 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  if ((v16 & 0x20) == 0)
  {
    v11 = 0.0;
  }

  if ((v16 & 0x40) != 0)
  {
    if ((v16 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_39:
    v51 = 1.0;
    if ((v16 & 0x100) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v52 = 1.0;
  if ((v16 & 0x80) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  if ((v16 & 0x100) == 0)
  {
LABEL_16:
    v50 = 1.0;
  }

LABEL_17:
  if ((v16 & 0x200) == 0)
  {
    v13 = 0.0;
  }

  if ((v16 & 0x400) == 0)
  {
    v15 = 0.0;
  }

  if ((v16 & 0x800) != 0)
  {
    if ((v16 & 0x1000) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v55 = 0.0;
    if ((v16 & 0x1000) != 0)
    {
LABEL_23:
      if ((v16 & 0x2000) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  v54 = 0.0;
  if ((v16 & 0x2000) == 0)
  {
LABEL_24:
    v53 = 0.0;
  }

LABEL_25:
  v22 = (*(*this + 1328))(this);
  v23 = *(this + 120);
  if (v23)
  {
    v25 = v24;
    v26 = &a3[8].timescale + 1;
    v27 = 1.0;
    if ((a3[8].timescale & 0x100) == 0)
    {
      if (v24)
      {
        (*(*v24 + 1328))(v24);
        goto LABEL_45;
      }

LABEL_33:
      v31 = (*(*this + 272))(this);
      v25 = 0;
      if (v31)
      {
        v28 = *(v31 + 384);
      }

      else
      {
        v28 = v22;
      }

LABEL_45:
      if (v28 == 0.0)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = v28;
      }

      if (v22 == 0.0)
      {
        v32 = v27;
      }

      else
      {
        v32 = v22;
      }

      v52 = v52 * (v32 / v27);
    }
  }

  else
  {
    v26 = &a3[8].timescale + 1;
    if ((a3[8].timescale & 0x100) == 0)
    {
      goto LABEL_33;
    }

    v25 = 0;
    v27 = 1.0;
  }

  PCMatrix44Tmpl<double>::setTransformation(a2, 0, 4, v55, v54, v53, v7, v9, v11, v52, v51, v17, v18, v19, v20, v21, v50, v13, v15, v49, v48, v47, *&v27);
  PCMatrix44Tmpl<double>::invert(a2, a2, 0.0);
  if (v25)
  {
    if (!LODWORD(a3[2].value))
    {
      v46 = 0x3FF0000000000000;
      v43 = 0x3FF0000000000000;
      v40 = 0x3FF0000000000000;
      v37 = 0x3FF0000000000000;
      v38 = 0u;
      v39 = 0u;
      v41 = 0u;
      v42 = 0u;
      v44 = 0u;
      v45 = 0u;
      (*(*v25 + 1264))(v25, &v37, a3);
      PCMatrix44Tmpl<double>::operator*(a2, &v37, v36);
      if (v36 != a2)
      {
        for (i = 0; i != 128; i += 32)
        {
          v34 = (a2 + i);
          v35 = *&v36[i + 16];
          *v34 = *&v36[i];
          v34[1] = v35;
        }
      }
    }

    return;
  }

  if (*v26)
  {
    return;
  }

  v30 = *&a3[1].epoch / v27;
LABEL_60:
  if (v30 != 1.0)
  {
    *a2 = v30 * *a2;
    *(a2 + 32) = v30 * *(a2 + 32);
    *(a2 + 64) = v30 * *(a2 + 64);
    *(a2 + 96) = v30 * *(a2 + 96);
  }
}

double OZTransformNode::getFlattenTransformMatrix(uint64_t a1, uint64_t a2)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return result;
}

double OZTransformNode::getEyeMatrix(void *a1, uint64_t a2, OZRenderState *a3)
{
  OZRenderState::OZRenderState(&v19, a3);
  v19.var4 = 1;
  (*(*a1 + 1256))(a1, a2, &v19);
  v6 = a1[120];
  {
    v18 = 0x3FF0000000000000;
    v15 = 0x3FF0000000000000;
    v12 = 0x3FF0000000000000;
    v9 = 0x3FF0000000000000;
    v10 = 0u;
    v11 = 0u;
    v13 = 0u;
    v14 = 0u;
    v16 = 0u;
    v17 = 0u;
    (*(*v7 + 1288))();
  }

  else
  {
    (*(*a3[4].var17 + 24))(&v9);
  }

  return PCMatrix44Tmpl<double>::leftMult(a2, &v9);
}

double OZTransformNode::getInvEyeMatrix(void *a1, uint64_t a2, OZRenderState *a3)
{
  OZRenderState::OZRenderState(&v20, a3);
  v20.var4 = 1;
  (*(*a1 + 1264))(a1, a2, &v20);
  v7 = a1[120];
  {
    v19 = 0x3FF0000000000000;
    v16 = 0x3FF0000000000000;
    v13 = 0x3FF0000000000000;
    v10 = 0x3FF0000000000000;
    v11 = 0u;
    v12 = 0u;
    v14 = 0u;
    v15 = 0u;
    v17 = 0u;
    v18 = 0u;
    (*(*v8 + 1296))();
  }

  else
  {
    var17 = a3[4].var17;
    if (!var17)
    {
      return result;
    }

    (*(*var17 + 16))(&v10);
  }

  return PCMatrix44Tmpl<double>::rightMult(a2, &v10);
}

uint64_t OZTransformNode::getFaceProjectionMatrix(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 1296))(a1);
  v4 = 0;
  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v5 = a2;
  v6 = 1.0 / *(a2 + 120);
  do
  {
    for (i = 0; i != 32; i += 16)
    {
      *(v5 + i) = vmulq_n_f64(*(v5 + i), v6);
    }

    ++v4;
    v5 += 32;
  }

  while (v4 != 4);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 16);
  v15 = *(a2 + 48);
  v16 = *(a2 + 80);
  v17 = sqrt(v14 * v14 + v15 * v15 + v16 * v16);
  v18 = v14 / v17;
  v19 = v15 / v17;
  v20 = v16 / v17;
  if (fabs(v17) < 0.0000001)
  {
    v18 = 0.0;
    v19 = 0.0;
    v20 = 1.0;
  }

  v60[0] = v18;
  v21 = v9 * v9 + v11 * v11 + v13 * v13;
  v22 = (v8 * v9 + v10 * v11 + v12 * v13) / (sqrt(v8 * v8 + v10 * v10 + v12 * v12) * v21);
  v23 = v8 - v9 * v22;
  v24 = v10 - v11 * v22;
  v25 = v12 - v13 * v22;
  v26 = v20 * v20;
  v27 = v18 * v18 + v19 * v19 + v20 * v20;
  v28 = (v23 * v18 + v24 * v19 + v25 * v20) / (sqrt(v25 * v25 + v23 * v23 + v24 * v24) * v27);
  v29 = v19 * v28;
  v30 = v20 * v28;
  v31 = v23 - v18 * v28;
  v32 = v24 - v29;
  v33 = v25 - v30;
  v34 = (v9 * v18 + v11 * v19 + v13 * v20) / (sqrt(v21) * v27);
  v35 = v9 - v18 * v34;
  v36 = v11 - v19 * v34;
  v37 = v13 - v20 * v34;
  v38 = sqrt(v37 * v37 + v35 * v35 + v36 * v36);
  if (fabs(v38) >= 0.0000001)
  {
    v45 = v35 / v38;
    v46 = v36 / v38;
    v47 = v37 / v38;
  }

  else
  {
    v39 = fabs(v19) > fabs(v18);
    if (fabs(v20) > fabs(v60[v39]))
    {
      v39 = 2;
    }

    if (v39 == 2)
    {
      v40 = v19 * v19;
      v44 = -v19;
      v42 = v20 * v20;
      v26 = v18 * v18;
      v43 = v18;
      v41 = v20;
    }

    else if (v39 == 1)
    {
      v40 = v20 * v20;
      v41 = -v18;
      v42 = v18 * v18;
      v26 = v19 * v19;
      v43 = v19;
      v44 = v20;
    }

    else
    {
      v43 = -v20;
      v40 = v18 * v18;
      v42 = v19 * v19;
      v41 = v19;
      v44 = v18;
    }

    v48 = (v18 * v43 + v19 * v41 + v20 * v44) / (v27 * sqrt(v26 + v42 + v40));
    v49 = v43 - v18 * v48;
    v50 = v41 - v19 * v48;
    v51 = v44 - v20 * v48;
    v52 = sqrt(v51 * v51 + v49 * v49 + v50 * v50);
    v45 = v49 / v52;
    v46 = v50 / v52;
    v47 = v51 / v52;
  }

  v53 = sqrt(v33 * v33 + v31 * v31 + v32 * v32);
  v54 = fabs(v53);
  v55 = v20 * v46 - v19 * v47;
  v56 = v31 / v53;
  v57 = v32 / v53;
  if (v54 < 0.0000001)
  {
    v58 = v18 * v47 - v20 * v45;
  }

  else
  {
    v55 = v56;
    v58 = v57;
  }

  *a2 = v55;
  *(a2 + 8) = v45;
  *(a2 + 32) = v58;
  *(a2 + 40) = v46;
  v59 = v33 / v53;
  if (v54 < 0.0000001)
  {
    v59 = v19 * v45 - v18 * v46;
  }

  *(a2 + 64) = v59;
  *(a2 + 72) = v47;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 16) = v18;
  *(a2 + 48) = v19;
  *(a2 + 80) = v20;
  *(a2 + 112) = 0;
  return result;
}

double OZTransformNode::transform(OZTransformNode *this, double *a2, double *a3, const OZRenderState *a4)
{
  v18 = 0x3FF0000000000000;
  v15 = 0x3FF0000000000000;
  v12 = 0x3FF0000000000000;
  v9 = 0x3FF0000000000000;
  v10 = 0u;
  v11 = 0u;
  v13 = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0u;
  (*(*this + 1256))(this, &v9, a4);
  v6 = *a3;
  v19 = *a2;
  v20 = v6;
  v21 = 0;
  PCMatrix44Tmpl<double>::transform<double>(&v9, &v19, &v19);
  result = v19;
  v8 = v20;
  *a2 = v19;
  *a3 = v8;
  return result;
}

double OZTransformNode::invTransform(OZTransformNode *this, double *a2, double *a3, const OZRenderState *a4)
{
  v18 = 0x3FF0000000000000;
  v15 = 0x3FF0000000000000;
  v12 = 0x3FF0000000000000;
  v9 = 0x3FF0000000000000;
  v10 = 0u;
  v11 = 0u;
  v13 = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0u;
  (*(*this + 1264))(this, &v9, a4);
  v6 = *a3;
  v19 = *a2;
  v20 = v6;
  v21 = 0;
  PCMatrix44Tmpl<double>::transform<double>(&v9, &v19, &v19);
  result = v19;
  v8 = v20;
  *a2 = v19;
  *a3 = v8;
  return result;
}

double OZTransformNode::transform(OZTransformNode *this, double *a2, double *a3, double *a4, const OZRenderState *a5)
{
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
  (*(*this + 1256))(this, &v12, a5);
  v8 = *a3;
  v9 = *a4;
  v22 = *a2;
  v23 = v8;
  v24 = v9;
  PCMatrix44Tmpl<double>::transform<double>(&v12, &v22, &v22);
  v10 = v23;
  *a2 = v22;
  *a3 = v10;
  result = v24;
  *a4 = v24;
  return result;
}

double OZTransformNode::invTransform(OZTransformNode *this, double *a2, double *a3, double *a4, const OZRenderState *a5)
{
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
  (*(*this + 1264))(this, &v12, a5);
  v8 = *a3;
  v9 = *a4;
  v22 = *a2;
  v23 = v8;
  v24 = v9;
  PCMatrix44Tmpl<double>::transform<double>(&v12, &v22, &v22);
  v10 = v23;
  *a2 = v22;
  *a3 = v10;
  result = v24;
  *a4 = v24;
  return result;
}

double *OZTransformNode::transform(uint64_t a1, double *a2)
{
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v4 = 0x3FF0000000000000;
  v5 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  (*(*a1 + 1256))(a1, &v4);
  return PCMatrix44Tmpl<double>::transform<double>(&v4, a2, a2);
}

double *OZTransformNode::invTransform(uint64_t a1, double *a2)
{
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v4 = 0x3FF0000000000000;
  v5 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  (*(*a1 + 1264))(a1, &v4);
  return PCMatrix44Tmpl<double>::transform<double>(&v4, a2, a2);
}

double OZTransformNode::computeSpin@<D0>(OZTransformNode *this@<X0>, CMTime *a2@<X1>, double *a3@<X8>)
{
  *a3 = 0.0;
  a3[1] = 0.0;
  a3[2] = 0.0;
  OZChannelRotation3D::getValueAsEulerAngles(this + 2104, a2, a3, 0.0);
  v7 = *(this + 120);
  if (v7)
  {
    if (v8)
    {
      *v9 = *&a2->value;
      *&v9[16] = a2->epoch;
      (*(*v8 + 1352))(&v18);
      v17 = 0x3FF0000000000000;
      v14 = 0x3FF0000000000000;
      v11 = 0x3FF0000000000000;
      *&v9[8] = 0u;
      v10 = 0u;
      v12 = 0u;
      v13 = 0u;
      v15 = 0u;
      v16 = 0u;
      *v9 = 0x3FF0000000000000;
      PCMatrix44Tmpl<double>::leftRotate(v9, 4, -v18.f64[0], -v18.f64[1], -v19);
      PCMatrix44Tmpl<double>::transform<double>(v9, a3, a3);
      *a3 = vaddq_f64(v18, *a3);
      result = v19 + a3[2];
      a3[2] = result;
    }
  }

  return result;
}

void *OZTransformNode::hitCheck(void *a1, float32x2_t *a2, __int128 *a3, uint64_t a4, float64x2_t *a5, char a6)
{
  if (a6 & 4) != 0 && ((*(*a1 + 680))(a1))
  {
    return 0;
  }

  if ((a6 & 2) != 0)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    if (!(*(a1[2] + 104))(a1 + 2, &v14, 1, 1, 1))
    {
      return 0;
    }
  }

  v16 = vcvtq_f64_f32(*a2);
  v17 = 0;
  (*(*a1 + 1384))(&v14, a1, &v16, a4, a3, 0);
  v13[1] = xmmword_2603429E0;
  v13[2] = xmmword_2603429E0;
  v13[0] = xmmword_2603429E0;
  (*(*a1 + 1360))(a1, v13, a3);
  if (PCRayIntersectsBox(&v14, v13, a5))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL OZTransformNode::hitCheck(uint64_t a1, double *a2, uint64_t a3, const LiCamera *a4)
{
  v47 = 0x3FF0000000000000;
  v44 = 0x3FF0000000000000;
  v41 = 0x3FF0000000000000;
  v38 = 0x3FF0000000000000;
  v39 = 0u;
  v40 = 0u;
  v42 = 0u;
  v43 = 0u;
  v45 = 0u;
  v46 = 0u;
  (*(*a1 + 1256))(a1, &v38);
  v8 = (*(*a1 + 272))(a1);
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v8, a4, v37);
  PCMatrix44Tmpl<double>::leftMult(&v38, v37);
  v35 = xmmword_2603429E0;
  v36 = xmmword_2603429E0;
  v34 = xmmword_2603429E0;
  (*(*a1 + 1360))(a1, &v34, a3);
  *&v32.f64[0] = v34;
  *&v32.f64[1] = v35;
  v33 = v36;
  v30.f64[0] = *(&v34 + 1);
  v30.f64[1] = *(&v35 + 1);
  v31 = *(&v36 + 1);
  v28 = __PAIR128__(v35, *(&v34 + 1));
  v29 = v36;
  *&v26.f64[0] = v34;
  v26.f64[1] = *(&v35 + 1);
  v27 = v36;
  v24.f64[0] = *(&v34 + 1);
  v24.f64[1] = *(&v35 + 1);
  v25 = v36;
  *&v22.f64[0] = v34;
  *&v22.f64[1] = v35;
  v23 = *(&v36 + 1);
  v20 = __PAIR128__(v35, *(&v34 + 1));
  v21 = *(&v36 + 1);
  *&v18.f64[0] = v34;
  v18.f64[1] = *(&v35 + 1);
  v19 = *(&v36 + 1);
  PCMatrix44Tmpl<double>::transform<double>(&v38, v32.f64, v32.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v38, v30.f64, v30.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v38, &v28, &v28);
  PCMatrix44Tmpl<double>::transform<double>(&v38, v26.f64, v26.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v38, v24.f64, v24.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v38, v22.f64, v22.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v38, &v20, &v20);
  PCMatrix44Tmpl<double>::transform<double>(&v38, v18.f64, v18.f64);
  v16 = v28;
  v17 = v32;
  v14 = v24;
  v15 = v26;
  v12 = v20;
  v13 = v22;
  v10 = v30;
  v11 = v18;
  return PCRect<double>::clipLine(a2, &v13, &v12) || PCRect<double>::clipLine(a2, &v12, v10.f64) || PCRect<double>::clipLine(a2, &v10, v11.f64) || PCRect<double>::clipLine(a2, &v11, v13.f64) || PCRect<double>::clipLine(a2, &v17, &v16) || PCRect<double>::clipLine(a2, &v16, v14.f64) || PCRect<double>::clipLine(a2, &v14, v15.f64) || PCRect<double>::clipLine(a2, &v15, v17.f64) || PCRect<double>::clipLine(a2, &v17, v13.f64) || PCRect<double>::clipLine(a2, &v16, &v12) || PCRect<double>::clipLine(a2, &v14, v10.f64) || PCRect<double>::clipLine(a2, &v15, v11.f64);
}

float64_t OZTransformNode::calcTranslationRelativeToCamera(uint64_t a1, float64x2_t *a2, float64x2_t *a3, uint64_t a4, uint64_t a5, float64x2_t *a6)
{
  result = a3[1].f64[0] - a2[1].f64[0];
  *a6 = vsubq_f64(*a3, *a2);
  a6[1].f64[0] = result;
  return result;
}

BOOL OZTransformNode::invTransformRay(uint64_t a1, void *a2)
{
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v4 = 0x3FF0000000000000;
  v5 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  (*(*a1 + 1256))(a1, &v4);
  return PCRay3<double>::invTransform(a2, &v4);
}

void OZTransformNode::computeRay(OZTransformNode *a1@<X0>, uint64_t a2@<X2>, const OZRenderState *a3@<X3>, _OWORD *a4@<X4>, uint64_t a5@<X8>)
{
  (*(*a2 + 80))(a2);
  OZRenderState::OZRenderState(&v38, a3);
  v9 = 0;
  v38.var4 = 1;
  __p = 0;
  v36 = 0;
  v37 = 0;
  var5 = a3->var5;
  if (!a1 || var5 == a1)
  {
LABEL_22:
    if (!var5)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v9 = 0;
  v11 = a1;
  while (1)
  {
    if (v9 >= v37)
    {
      v12 = (v9 - __p) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v13 = (v37 - __p) >> 2;
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      if (v37 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(&__p, v14);
      }

      *(8 * v12) = v11;
      v9 = (8 * v12 + 8);
      v15 = (8 * v12 - (v36 - __p));
      memcpy(v15, __p, v36 - __p);
      v16 = __p;
      __p = v15;
      v36 = v9;
      v37 = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v9 = v11;
      v9 += 8;
    }

    v36 = v9;
    v17 = *(v11 + 120);
    if (!v17)
    {
      break;
    }

    var5 = a3->var5;
    if (v11)
    {
      v18 = v11 == var5;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_22;
    }
  }

  var5 = a3->var5;
  if (var5)
  {
LABEL_25:
    v19 = (*(*var5 + 1328))(var5);
    v34 = 0x3FF0000000000000;
    v31 = 0x3FF0000000000000;
    v28 = 0x3FF0000000000000;
    v25 = 0x3FF0000000000000;
    v26 = 0u;
    v27 = 0u;
    v29 = 0u;
    v30 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = a3->var3 / v19;
    if (v20 != 1.0)
    {
      v25 = *&v20;
      *&v26 = v20 * 0.0;
      *(&v26 + 1) = v20 * 0.0;
      *&v27 = v20 * 0.0;
    }

    PCRay3<double>::transform(a5, &v25);
    v9 = v36;
  }

LABEL_28:
  v21 = __p;
  do
  {
    if (v9 == v21)
    {
      break;
    }

    v23 = *(v9 - 1);
    v9 -= 8;
    v22 = v23;
    if (a4 && v22 == a1)
    {
      PCRay3<double>::invTransform(a5, a4);
    }

    else
    {
      (*(*v22 + 1392))(v22, a5, &v38);
    }

    v24 = vmulq_f64(*(a5 + 32), *(a5 + 32));
  }

  while (fabs(*(a5 + 24) * *(a5 + 24) + v24.f64[0] + v24.f64[1]) >= 0.0000001);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }
}

void sub_2600B090C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZTransformNode::setInitialTransform(uint64_t result, uint64_t a2, _OWORD *a3, const void *a4, uint64_t a5)
{
  if (a2)
  {
    v9 = result;
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
    if (a4)
    {
      (*(*a4 + 1264))(a4, &v48, a5);
      v10 = (*(*a4 + 1424))(a4);
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      if ((v10 & 1) == 0)
      {
        v44 = 1.0;
        v45 = 0.0;
        v46 = 0.0;
        v47 = 0.0;
        v41 = 0x3FF0000000000000uLL;
        v43 = 0.0;
        v42 = 0.0;
        memset(v31, 0, 48);
        LODWORD(v31[6]) = 4;
        memset(&v31[7], 0, 32);
        *&v32 = 0;
        Transformation = liSafeGetTransformation(&v48, v31, &v44);
        _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZTransformNode.cpp", 1425, v15, v16, v17, v18, v19);
        (*(*a2 + 472))(a2, &v41);
        v20 = v44 * *&v41 - (v45 * *(&v41 + 1) + v46 * v42 + v47 * v43);
        v21 = *&v41 * v45 + v44 * *(&v41 + 1);
        v22 = v46 * v43;
        v23 = v42 * v47;
        v24 = v45 * v42 - *(&v41 + 1) * v46;
        v46 = *&v41 * v46 + v44 * v42 + *(&v41 + 1) * v47 - v45 * v43;
        v47 = v24 + *&v41 * v47 + v44 * v43;
        v44 = v20;
        v45 = v21 + v22 - v23;
        v35.var7.var0[1][2] = 1.0;
        v35.var7.var0[0][1] = 1.0;
        v35.var3 = 1.0;
        v35.var0.var0 = 0x3FF0000000000000;
        memset(&v35.var0.var1, 0, 32);
        memset(&v35.var4, 0, 32);
        memset(&v35.var7.var0[0][2], 0, 32);
        PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v35, &v44);
        memset(v36, 0, sizeof(v36));
        v38 = 0u;
        v39 = 0u;
        v40 = 0;
        v37 = 4;
        PCMatrix44Tmpl<double>::getTransformation(&v35.var0.var0, v36);
        v12 = *(&v38 + 1);
        v11 = *&v38;
        v13 = *&v39;
      }

      OZTransformNode::setRotation(v9, v11, v12, v13, a5);
      if (v25 && OZGroup::shouldLockToCamera(v25, *(a5 + 242)))
      {
        *&v35.var0.var0 = *a3;
        v35.var0.var3 = 0;
        if ((*(*v9 + 1368))(v9, a2, &v35, &v35.var0.var1, &v35.var0.var3, a5, 0))
        {
          *&v30 = v35.var0.var0;
        }

        else
        {
          v30 = *a3;
          *&v35.var0.var0 = *a3;
          v35.var0.var3 = 0;
        }

        v29 = (*(*a4 + 1328))(a4);
        v27 = *&v35.var0.var1;
        v28 = *&v35.var0.var3;
        v26 = *&v30 / v29;
        return OZChannelPosition3D::setPosition((v9 + 1216), a5, v26, v27, v28);
      }
    }

    else
    {
      (*(*a2 + 408))(&v35, a2);
      OZTransformNode::setRotation(v9, *&v35.var0.var0, *&v35.var0.var1, *&v35.var0.var3, a5);
    }

    (*(*a2 + 352))(&v44, a2);
    (*(*a2 + 424))(v36, a2);
    PCMatrix44Tmpl<double>::transform<double>(v36, &v44, &v44);
    PCMatrix44Tmpl<double>::transform<double>(&v48, &v44, &v44);
    OZChannelPosition3D::setPosition((v9 + 1216), a5, v44, v45, v46);
    v41 = *a3;
    v42 = 0.0;
    (*(*v9 + 1368))(v9, a2, &v41, &v41 + 8, &v42, a5, 0);
    OZRenderState::OZRenderState(&v35, a5);
    v34 = 0x3FF0000000000000;
    v31[10] = 0x3FF0000000000000;
    v31[5] = 0x3FF0000000000000;
    v31[0] = 0x3FF0000000000000;
    memset(&v31[1], 0, 32);
    memset(&v31[6], 0, 32);
    v32 = 0u;
    v33 = 0u;
    v35.var4 = 1;
    (*(*v9 + 1256))(v9, v31, &v35);
    PCMatrix44Tmpl<double>::transform<double>(v31, &v41, &v41);
    v27 = *(&v41 + 1);
    v26 = *&v41;
    v28 = v42;
    return OZChannelPosition3D::setPosition((v9 + 1216), a5, v26, v27, v28);
  }

  return result;
}

__n128 OZTransformNode::clipOutline(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, int a5, uint64_t a6, uint64_t *a7)
{
  memset(v33, 0, sizeof(v33));
  if ((*(*a2 + 96))(a2, v33))
  {
    v32 = 0x3FF0000000000000;
    v29 = 0x3FF0000000000000;
    v26 = 0x3FF0000000000000;
    v23 = 0x3FF0000000000000;
    v24 = 0u;
    v25 = 0u;
    v27 = 0u;
    v28 = 0u;
    v30 = 0u;
    v31 = 0u;
    (*(*a1 + 1256))(a1, &v23, a3);
    v20 = *(&v33[1] + 8);
    v21 = *(&v33[2] + 1);
    v22 = -(*(&v33[1] + 1) * *v33 + *&v33[2] * *(v33 + 1) + *(&v33[2] + 1) * *&v33[1]);
    PCMatrix44Tmpl<double>::transform_row<double>(&v23, v20.f64, v20.f64);
    v13 = vaddvq_f64(vmulq_f64(v20, v20)) + v21 * v21;
    if (fabs(v13) >= 1.0e-24)
    {
      *(&v33[1] + 8) = v20;
      v33[0] = vdivq_f64(vmulq_n_f64(v20, -v22), vdupq_lane_s64(*&v13, 0));
      *(&v33[2] + 1) = v21;
      *&v33[1] = -(v22 * v21) / v13;
    }

    PCClipLinesToPlane2D(v33, a4, a5, a6, a7);
  }

  else
  {
    std::vector<BOOL>::resize(a7, a5, 0);
    if (a5 >= 1)
    {
      v15 = 0;
      v16 = (a6 + 16);
      v17 = a4;
      do
      {
        *(*a7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        v18 = *v17++;
        v16[-1] = v18;
        if (a5 - 1 == v15)
        {
          v19 = 0;
        }

        else
        {
          v19 = v15 + 1;
        }

        result = a4[v19];
        *v16 = result;
        v16 += 2;
        ++v15;
      }

      while (a5 != v15);
    }
  }

  return result;
}

double *OZTransformNode::clipPoints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  memset(v37, 0, sizeof(v37));
  v11 = *a4;
  v10 = a4[1];
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
  std::vector<BOOL>::resize(a5, v12, 0);
  result = (*(*a2 + 96))(a2, v37);
  if (result)
  {
    v36 = 0x3FF0000000000000;
    v33 = 0x3FF0000000000000;
    v30 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000;
    v28 = 0u;
    v29 = 0u;
    v31 = 0u;
    v32 = 0u;
    v34 = 0u;
    v35 = 0u;
    (*(*a1 + 1256))(a1, &v27, a3);
    v24 = *(&v37[1] + 8);
    v25 = *(&v37[2] + 1);
    v26 = -(*(&v37[1] + 1) * *v37 + *&v37[2] * *(v37 + 1) + *(&v37[2] + 1) * *&v37[1]);
    result = PCMatrix44Tmpl<double>::transform_row<double>(&v27, v24.f64, v24.f64);
    v14 = vaddvq_f64(vmulq_f64(v24, v24)) + v25 * v25;
    if (fabs(v14) >= 1.0e-24)
    {
      *(&v37[1] + 8) = v24;
      v37[0] = vdivq_f64(vmulq_n_f64(v24, -v26), vdupq_lane_s64(*&v14, 0));
      *(&v37[2] + 1) = v25;
      *&v37[1] = -(v26 * v25) / v14;
    }

    if (v10 != v11)
    {
      v15 = 0;
      v16 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        result = PCClipPointToPlane(v37, *a4 + v15);
        v17 = *a5;
        v18 = v16 >> 6;
        v19 = 1 << v16;
        if (result)
        {
          v20 = *(v17 + 8 * v18) | v19;
        }

        else
        {
          v20 = *(v17 + 8 * v18) & ~v19;
        }

        *(v17 + 8 * v18) = v20;
        ++v16;
        v15 += 24;
      }

      while (v12 != v16);
    }
  }

  else if (v10 != v11)
  {
    v21 = 0;
    v22 = *a5;
    if (v12 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v12;
    }

    do
    {
      *(v22 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      ++v21;
    }

    while (v23 != v21);
  }

  return result;
}

uint64_t OZTransformNode::isAffectedByBehaviors(OZTransformNode *this)
{
  ObjectSimulator = OZTransformNode::getObjectSimulator(this);
  if (*(ObjectSimulator + 208) != 1 || *(ObjectSimulator + 372) == 1)
  {
    if ((*(this + 1024) & 2) != 0)
    {
      return 0;
    }

    v3 = *(this + 126);
    if (v3 == (this + 1000))
    {
      return 0;
    }

    while (1)
    {
      v4 = *(v3 + 16);
      if ((*(v4[2] + 24))())
      {
        {
          break;
        }
      }

      v3 = *(v3 + 8);
      if (v3 == (this + 1000))
      {
        return 0;
      }
    }
  }

  return 1;
}

void *OZTransformNode::getObjectSimulator(OZTransformNode *this)
{
  v1 = (this + 1000);
  v2 = *(this + 126);
  if ((this + 1000) == v2)
  {
    return 0;
  }

  do
  {
    v1 = *v1;
    result = *(v1 + 2);
    if (result)
    {
      if (result)
      {
        result = result[43];
      }
    }
  }

  while (!result && v1 != v2);
  return result;
}

uint64_t OZTransformNode::isAffectedByBakeableBehaviors(OZTransformNode *this)
{
  ObjectSimulator = OZTransformNode::getObjectSimulator(this);
  if (*(ObjectSimulator + 208) != 1 || *(ObjectSimulator + 372) == 1)
  {
    if ((*(this + 1024) & 2) != 0)
    {
      return 0;
    }

    v3 = *(this + 126);
    if (v3 == (this + 1000))
    {
      return 0;
    }

    while (1)
    {
      v4 = *(v3 + 16);
      if ((*(v4[2] + 24))())
      {
        {
          break;
        }
      }

      v3 = *(v3 + 8);
      if (v3 == (this + 1000))
      {
        return 0;
      }
    }
  }

  return 1;
}

OZChannelBase *OZTransformNode::getChannelFromRefAndVersion(OZTransformNode *this, OZChannelRef *a2, double a3)
{
  result = OZObjectManipulator::getChannelFromRefAndVersion((this + 16), a2, a3);
  if (result == (this + 6376))
  {
    return (this + 2544);
  }

  return result;
}

OZChannelBase *non-virtual thunk toOZTransformNode::getChannelFromRefAndVersion(OZTransformNode *this, OZChannelRef *a2, double a3)
{
  result = OZObjectManipulator::getChannelFromRefAndVersion(this, a2, a3);
  if (result == (this + 6360))
  {
    return (this + 2528);
  }

  return result;
}

void OZTransformNode::didAddToScene(OZTransformNode *this, OZScene *a2)
{
  OZSceneNode::didAddToScene(this, a2);
  if ((*(*this + 1328))(this) == 0.0)
  {
    v4.n128_u64[0] = *(a2 + 48);
    v5 = *(*this + 1344);

    v5(this, v4);
  }
}

OZChannelBase *OZTransformNode::hideOrShowChannelsBasedOnOwner(OZTransformNode *this, const OZSceneNode *a2)
{
  isDescendantOf360Group = OZSceneNode::isDescendantOf360Group(a2);
  result = OZChannelBase::testFlag((this + 1088), 2);
  if (isDescendantOf360Group)
  {
    if ((result & 1) == 0)
    {
      OZChannelBase::setFlag((this + 1088), 2, 1);

      return OZChannelBase::setFlag((this + 1088), 0x8000, 1);
    }
  }

  else if (result)
  {
    OZChannelBase::resetFlag((this + 1088), 2, 1);

    return OZChannelBase::resetFlag((this + 1088), 0x8000, 1);
  }

  return result;
}

uint64_t OZTransformNode::bake(OZTransformNode *this)
{
  OZSceneNode::bake(this);
  result = OZChannelBase::getLastUsedUniqueID(v2);
  *(this + 1592) = result;
  return result;
}

uint64_t OZTransformNode::isInRootWorld(OZTransformNode *this)
{
  while (1)
  {
    v2 = *(this + 120);
    if (!v2)
    {
      break;
    }

    if (!v3)
    {
      break;
    }

    this = v3;
    if ((*(*v3 + 1424))(v3))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t OZTransformNode::getFourCornerMatrix(uint64_t a1, uint64_t a2)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return 1;
}

uint64_t OZFontCollection::getFontFamilyIndex(OZFontCollection *this, const PCString *a2)
{
  v2 = *(this + 2);
  v3 = (this + 24);
  if (v2 == (this + 24))
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = PCString::compare(v2 + 4, a2);
    v7 = v6 ? (v5 + 1) : v5;
    if (!v6)
    {
      break;
    }

    var0 = v2[1].var0;
    if (var0)
    {
      do
      {
        v9 = var0;
        var0 = var0->isa;
      }

      while (var0);
    }

    else
    {
      do
      {
        v9 = v2[2].var0;
        v10 = v9->isa == v2;
        v2 = v9;
      }

      while (!v10);
    }

    v5 = v7;
    v2 = v9;
    if (v9 == v3)
    {
      return 0;
    }
  }

  return v5;
}

void OZElement::OZElement(OZElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZTransformNode::OZTransformNode(this, a2, a3, a4);
  OZImageNode::OZImageNode((v5 + 6528));
  *this = &unk_28727F1B0;
  *(this + 2) = &unk_28727FA88;
  *(this + 6) = &unk_28727FCE0;
  *(this + 816) = &unk_28727FD38;
  PCURL::PCURL(&v53, @"Channel Blending");
  OZChannelFolder::OZChannelFolder((this + 6552), &v53, (this + 320), 0xC8u, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Opacity");
  OZChannelPercent::OZChannelPercent((this + 6680), 1.0, &v53, (this + 6552), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v53);
  v6 = PCBlend::modeMenuString(0);
  PCURL::PCURL(&v53, @"Channel Blend Mode");
  OZChannelBlendMode::OZChannelBlendMode((this + 6832), 0, v6, &v53, (this + 6552), 0xCBu, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Light Wrap");
  OZChannelFolder::OZChannelFolder((this + 7088), &v53, (this + 6552), 0xF1u, 2u, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel LR Amount");
  Instance = OZElement::OZElement_lrSizeImpl::getInstance(v7);
  v9 = OZElement::OZElement_lrSizeInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 7216), 10.0, &v53, (this + 7088), 0xEEu, 2, Instance, v9);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel LR Intensity");
  v11 = OZElement::OZElement_lrIntensityImpl::getInstance(v10);
  OZChannelPercent::OZChannelPercent((this + 7368), 1.0, &v53, (this + 7088), 0xEFu, 2u, v11, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel LR Intensity Scale");
  v13 = OZElement::OZElement_lrIntensityScaleImpl::getInstance(v12);
  OZChannelPercent::OZChannelPercent((this + 7520), 1.0, &v53, (this + 7088), 0xF2u, 2u, v13, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel LR Opacity");
  v15 = OZElement::OZElement_lrOpacityImpl::getInstance(v14);
  OZChannelPercent::OZChannelPercent((this + 7672), 1.0, &v53, (this + 7088), 0xF0u, 2u, v15, 0);
  PCString::~PCString(&v53);
  v17 = PCBlend::lightWrapModeMenuString(v16);
  PCURL::PCURL(&v53, @"Channel LR Blend Mode");
  OZChannelEnum::OZChannelEnum((this + 7824), 0, v17, &v53, (this + 7088), 0xEDu, 2, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflectivity");
  OZChannelPercent::OZChannelPercent((this + 8080), 0.0, &v53, (this + 6552), 0xDEu, 0xAu, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Preserve Transparency");
  OZChannelBool::OZChannelBool((this + 8232), 0, &v53, (this + 6552), 0xD9u, 0, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Lighting");
  OZLightingFolder::OZLightingFolder((this + 8384), &v53, (this + 320), 0xE6u, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Folder Element Shadows");
  OZFolderElementShadows::OZFolderElementShadows((this + 9352), &v53, (this + 320), 0xEAu, 2u);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflection");
  OZChannelFolder::OZChannelFolder((this + 9936), &v53, (this + 320), 0xDFu, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflectivity");
  v19 = OZElement::OZElement_reflectivityImpl::getInstance(v18);
  OZChannelPercent::OZChannelPercent((this + 10064), 0.8, &v53, (this + 9936), 0xE4u, 0, v19, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflection Blur");
  v21 = OZElement::OZElement_reflectionBlurImpl::getInstance(v20);
  OZChannelDouble::OZChannelDouble((this + 10216), 0.0, &v53, (this + 9936), 0xE5u, 0, v21, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflection Falloff");
  OZChannelFolder::OZChannelFolder((this + 10368), &v53, (this + 9936), 0xE0u, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflection Begin Falloff");
  v23 = OZElement::OZElement_reflectionBeginFalloffImpl::getInstance(v22);
  v24 = OZElement::OZElement_reflectionBeginFalloffInfo::getInstance(v23);
  OZChannelDouble::OZChannelDouble((this + 10496), 0.0, &v53, (this + 10368), 0xE1u, 0, v23, v24);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflection End Falloff");
  v26 = OZElement::OZElement_reflectionEndFalloffImpl::getInstance(v25);
  v27 = OZElement::OZElement_reflectionEndFalloffInfo::getInstance(v26);
  OZChannelDouble::OZChannelDouble((this + 10648), 500.0, &v53, (this + 10368), 0xE2u, 0, v26, v27);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Reflection Falloff Exponent");
  v29 = OZElement::OZElement_reflectionFalloffExponentImpl::getInstance(v28);
  v30 = OZElement::OZElement_reflectionFalloffExponentInfo::getInstance(v29);
  OZChannelDouble::OZChannelDouble((this + 10800), 1.8, &v53, (this + 10368), 0xEBu, 0, v29, v30);
  PCString::~PCString(&v53);
  v32 = PCBlend::reflectionModeMenuString(v31);
  PCURL::PCURL(&v53, @"Channel Reflection Blend Mode");
  OZChannelEnum::OZChannelEnum((this + 10952), v32, &v53, (this + 9936), 0xE3u, 0, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Casts Reflection Enum");
  PCURL::PCURL(&v52, @"Channel Casts Reflection");
  v34 = OZElement::OZElement_castsReflectionImpl::getInstance(v33);
  OZChannelEnum::OZChannelEnum((this + 11208), 0, &v53, &v52, (this + 6552), 0xECu, 0, v34, 0);
  PCString::~PCString(&v52);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Color Heading");
  OZChannelFolder::OZChannelFolder((this + 11464), &v53, (this + 320), 0xF3u, 0, 0);
  PCString::~PCString(&v53);
  PCString::PCString(&v53, "Hidden Channel");
  OZChannelDouble::OZChannelDouble((this + 11592), 1.0, &v53, (this + 11464), 0xF5u, 2, 0, 0);
  PCString::~PCString(&v53);
  PCString::PCString(&v53, "Hidden Channel");
  PCString::PCString(&v52, "Hidden Channel");
  OZChannelEnum::OZChannelEnum((this + 11744), 0, &v53, &v52, (this + 11464), 0xF4u, 138, 0, 0);
  PCString::~PCString(&v52);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Color Conversion Enum");
  PCURL::PCURL(&v52, @"Channel Color Conversion");
  v36 = OZElement::OZElement_conversionImpl::getInstance(v35);
  OZChannelEnum::OZChannelEnum((this + 12000), 0, &v53, &v52, (this + 11464), 0xF6u, 0, v36, 0);
  PCString::~PCString(&v52);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Color Conversion Type Enum");
  PCURL::PCURL(&v52, @"Channel Color Conversion Type");
  v38 = OZElement::OZElement_conversionTypeImpl::getInstance(v37);
  OZChannelEnum::OZChannelEnum((this + 12256), 3u, &v53, &v52, (this + 11464), 0xF7u, 0, v38, 0);
  PCString::~PCString(&v52);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Color Conversion Peak Nits");
  OZChannelDouble::OZChannelDouble((this + 12512), 1000.0, &v53, (this + 11464), 0xF8u, 0, 0, 0);
  PCString::~PCString(&v53);
  *(this + 3166) = -1;
  PCURL::PCURL(&v53, @"Channel Drop Shadow");
  OZChannelFolder::OZChannelFolder((this + 12672), &v53, (this + 320), 0xD0u, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Drop Shadow Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 12800), &v53, (this + 12672), 0xD2u, 0, 5u);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Drop Shadow Opacity");
  v40 = OZElement::OZElement_dropShadowOpacityImpl::getInstance(v39);
  OZChannelPercent::OZChannelPercent((this + 13808), 0.75, &v53, (this + 12672), 0xD3u, 0, v40, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Drop Shadow Blur");
  v42 = OZElement::OZElement_dropShadowBlurImpl::getInstance(v41);
  v43 = OZElement::OZElement_dropShadowBlurInfo::getInstance(v42);
  OZChannelDouble::OZChannelDouble((this + 13960), 5.0, &v53, (this + 12672), 0xD5u, 0, v42, v43);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Drop Shadow Distance");
  v45 = OZElement::OZElement_dropShadowDistanceImpl::getInstance(v44);
  OZChannelDouble::OZChannelDouble((this + 14112), 5.0, &v53, (this + 12672), 0xD4u, 0, v45, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Drop Shadow Angle");
  v47 = OZElement::OZElement_dropShadowAngleImpl::getInstance(v46);
  OZChannelAngle::OZChannelAngle((this + 14264), 5.49778714, &v53, (this + 12672), 0xD6u, 0, v47, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Drop Shadow Fixed Source");
  OZChannelBool::OZChannelBool((this + 14416), &v53, (this + 12672), 0xE8u, 0, 0, 0);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Four Corner");
  OZChannelQuad::OZChannelQuad((this + 14568), &v53, (this + 320), 0xCFu, 0, 4u);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Crop");
  v49 = OZElement::OZElement_cropInfo::getInstance(v48);
  OZChannelCrop::OZChannelCrop((this + 17520), &v53, (this + 320), 0xD8u, 0, 4u, 0, v49);
  PCString::~PCString(&v53);
  PCURL::PCURL(&v53, @"Channel Timing Group");
  OZChannelFolder::OZChannelFolder((this + 18264), &v53, (this + 320), 0xE9u, 2u, 0);
  PCString::~PCString(&v53);
  *(this + 2299) = 0;
  *(this + 2301) = this + 18408;
  *(this + 2302) = this + 18408;
  *(this + 2303) = 0;
  PCURL::PCURL(&v53, @"Channel Masks");
  OZChannelFolder::OZChannelFolder((this + 18432), &v53, (this + 56), 0xD7u, 0, 0);
  PCString::~PCString(&v53);
  PCString::PCString(&v53, "Channel Freeze Media");
  OZChanFootageRef::OZChanFootageRef((this + 18560), &v53, (this + 320), 0xDDu, 10);
  PCString::~PCString(&v53);
  PCWorkingColorVector::PCWorkingColorVector((this + 18720));
  *(this + 2342) = 0xD00000005;
  *(this + 9372) = 0;
  *(this + 2344) = 0;
  *(this + 2346) = 0;
  *(this + 2345) = 0;
  LODWORD(v53.var0) = 0;
  ElementBlendModes = PCBlend::getElementBlendModes(&v53, v50);
  OZChannelEnum::setTags((this + 6832), ElementBlendModes, v53.var0);
  OZChannelEnum::setTags((this + 10952), ElementBlendModes, v53.var0);
  OZChannelBase::enable((this + 9936), 0, 0);
  OZChannelFolder::setFoldFlag((this + 9936), 15);
  OZChannelFolder::saveStateAsDefault((this + 9936));
  OZChannelBase::enable((this + 10368), 0, 0);
  OZChannelFolder::setFoldFlag((this + 10368), 15);
  OZChannelFolder::saveStateAsDefault((this + 10368));
  OZChannelBase::resetFlag((this + 11464), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 11464));
  OZChannel::setKeyframable((this + 11592), 0);
  OZChannel::setValue((this + 11592), MEMORY[0x277CC08F0], 3.0, 0);
  OZChannelBase::saveStateAsDefault((this + 11744));
  OZChannelBase::enable((this + 12256), 0, 0);
  OZChannelBase::enable((this + 12512), 0, 0);
  OZChannel::setKeyframable((this + 12512), 0);
  OZChannel::setMin((this + 12512), 100.0);
  OZChannel::setMax((this + 12512), 10000.0);
  OZChannel::setSliderMin((this + 12512), 100.0);
  OZChannel::setSliderMax((this + 12512), 4000.0);
  OZChannelFolder::setFoldFlag((this + 12672), 15);
  OZChannelFolder::saveStateAsDefault((this + 12672));
  OZChannelBase::enable((this + 12672), 0, 0);
  OZChannelBase::resetFlag((this + 14568), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 14568));
  OZChannelBase::enable((this + 14568), 0, 0);
  OZChannelBase::enable((this + 17520), 0, 0);
  OZScene::setApplyMotionEffectScaleTo3DObjectRenders(this + 18560, 0);
  *(this + 18717) = 1;
  OZChannelFolder::setFoldFlag((this + 8384), 15);
  OZChannelFolder::saveStateAsDefault((this + 8384));
  OZChannelFolder::setFoldFlag((this + 9352), 15);
  OZChannelFolder::saveStateAsDefault((this + 9352));
  OZChannelFolder::setFoldFlag((this + 9936), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 9936));
  OZChannelFolder::setFoldFlag((this + 10368), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 10368));
  OZChannelFolder::setFoldFlag((this + 12672), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 12672));
  OZChannelFolder::setFoldFlag((this + 14568), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 14568));
  OZChannelFolder::setFoldFlag((this + 17520), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 17520));
}