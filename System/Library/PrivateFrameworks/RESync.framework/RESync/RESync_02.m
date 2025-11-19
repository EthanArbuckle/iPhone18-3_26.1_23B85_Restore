uint64_t ___ZN2re17SyncObjectManager7receiveEU13block_pointerFbP13RESyncSessionPK12RESyncCommitERNS_21SyncObjectReadContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = &v5[3 * v4];
    do
    {
      if ((*(*v5 + 128) & 4) != 0)
      {
        re::SyncObjectManager::destroyObject(v5);
      }

      if ((v5[2] & 4) == 0)
      {
        goto LABEL_32;
      }

      (*(***(a1 + 48) + 32))(buf);
      v7 = re::Session::peerID(*buf);
      if (*buf)
      {
      }

      v8 = *v5;
      v9 = *(*v5 + 136);
      if (v9)
      {
        v10 = v9 == v7;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v19 = *(v8 + 80);
        v20 = *v5;
        if (v19)
        {
          v21 = *v5;
          do
          {
            v20 = v21;
            v21 = v19;
            if (*(*(*(v20 + 88) + 16) + 73))
            {
              break;
            }

            v19 = *(v19 + 80);
            v20 = v21;
          }

          while (v19);
        }

        v22 = *(v20 + 160);
        v23 = *(v8 + 144);
        *(v8 + 136) = 0;
        *(v8 + 160) = 0;
        *(v8 + 168) = v23;
        *(v8 + 170) = 1;
        v24 = v3[73];
        re::SyncObjectManager::gatherObjectsWithChildren(v5, v3 + 71);
        while (v24 < v3[73])
        {
          v25 = *(v3[75] + 8 * v24);
          v26 = *(v25 + 80);
          v27 = v25;
          if (v26)
          {
            v28 = *(v3[75] + 8 * v24);
            do
            {
              v27 = v28;
              v28 = v26;
              if (*(*(*(v27 + 88) + 16) + 73))
              {
                break;
              }

              v26 = *(v26 + 80);
              v27 = v28;
            }

            while (v26);
          }

          v29 = *(v27 + 136);
          v30 = *(v27 + 152);
          *(v25 + 168) = *(v27 + 168);
          *(v25 + 152) = v30;
          *(v25 + 136) = v29;
          ++v24;
        }

        v31 = re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove((v3 + 64), *v5);
        v32 = v3[54];
        if (v31)
        {
          if (!v32)
          {
            goto LABEL_32;
          }

          v33 = (*(*v32 + 56))(v32);
          re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long,re::OwnershipResponseResult>::raise(v33, v3);
          v35 = *re::networkLogObjects(v34);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_32;
          }

          v36 = *(*v5 + 24);
          *buf = 134217984;
          *&buf[4] = v36;
          v17 = v35;
          v18 = "[Ownership] Received ownership granted response for: %llu";
        }

        else
        {
          if (!v32)
          {
            goto LABEL_32;
          }

          v37 = (*(*v32 + 64))(v32);
          re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::raise(v37, v3);
          v39 = *re::networkLogObjects(v38);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_32;
          }

          v40 = *(*v5 + 24);
          *buf = 134217984;
          *&buf[4] = v40;
          v17 = v39;
          v18 = "[Ownership] Received ownership handoff for: %llu";
        }
      }

      else
      {
        v11 = v3[54];
        if (!v11)
        {
          goto LABEL_32;
        }

        v12 = (*(*v11 + 72))(v11);
        v13 = *(*v5 + 160);
        re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::raise(v12, v3);
        v15 = *re::networkLogObjects(v14);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_32;
        }

        v16 = *(*v5 + 24);
        *buf = 134217984;
        *&buf[4] = v16;
        v17 = v15;
        v18 = "[Ownership] Received ownership change: %llu";
      }

      _os_log_debug_impl(&dword_26168F000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0xCu);
LABEL_32:
      v5 += 3;
    }

    while (v5 != v6);
  }

  result = (*(*(a1 + 32) + 16))();
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void re::SyncObjectManager::destroyObject(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 200);
  if (v3)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *(*a1 + 200);
      if (v5 <= v4)
      {
        v12[1] = 0;
        memset(v21, 0, sizeof(v21));
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        v13 = 136315906;
        v14 = "operator[]";
        v15 = 1024;
        v16 = 789;
        v17 = 2048;
        v18 = v4;
        v19 = 2048;
        v20 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(*(*a1 + 216) + 8 * v4);
      *&v21[0] = v6;
      if (v6)
      {
        v7 = (v6 + 8);
        re::SyncObjectManager::destroyObject(v21);
      }

      else
      {
        re::SyncObjectManager::destroyObject(v21);
      }

      --v4;
    }

    while (v4 != -1);
    v2 = *a1;
  }

  v8 = v2[11];
  if (*(*(v8 + 16) + 74))
  {
    v9 = v2[12];
    if (v9)
    {
      re::SyncView::removeObject(v9, (v2 + 12));
      v2 = *a1;
      v8 = *(*a1 + 88);
    }
  }

  v12[0] = v2;
  v10 = v2 + 1;
  re::SyncObjectTypedStore::removeObject(v8, v12);
  if (v12[0])
  {
  }

  v11 = *MEMORY[0x277D85DE8];
}

void re::SyncObjectManager::gatherObjectsWithChildren(uint64_t *a1, void *a2)
{
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::add(a2, a1);
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(*a1 + 216);
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      v9 = v7;
      if (v7)
      {
        v8 = (v7 + 8);
      }

      re::SyncObjectManager::gatherObjectsWithChildren(&v9, a2);
      if (v9)
      {
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(v12, a1, a2, v3 ^ (v3 >> 31));
  v4 = v14;
  if (v14 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 32 * v14);
    v7 = *v6 & 0x7FFFFFFF;
    if (v15 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v13) = v7;
    }

    else
    {
      *(v5 + 32 * v15) = *(v5 + 32 * v15) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      v8 &= ~0x80000000;
      *v6 = v8;
      v9 = *(v6 + 1);
      if (v9)
      {

        *(v6 + 1) = 0;
        v5 = *(a1 + 16);
        v8 = *(v5 + 32 * v4);
      }
    }

    v10 = *(a1 + 40);
    *(v5 + 32 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v10 + 1;
  }

  return v4 != 0x7FFFFFFF;
}

void re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long,re::OwnershipResponseResult>::raise(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v24, 0, sizeof(v24));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          v19 = 789;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v14[0] = *v10;
        v14[1] = v12;
        v15 = v11;
        if (LOBYTE(v14[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if ((v24[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v14 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if (LOBYTE(v24[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v24[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::raise(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v24, 0, sizeof(v24));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          v19 = 789;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v14[0] = *v10;
        v14[1] = v12;
        v15 = v11;
        if (LOBYTE(v14[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if ((v24[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v14 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if (LOBYTE(v24[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v24[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void re::SyncObjectManager::send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  *(a4 + 8) = a1;
  v41 = a2;
  v42 = a3;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v40, 6018, a1);
  if (v5)
  {
    v8 = v6;
    do
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        v10 = *(v8 + 64);
        v11 = &v10[3 * v9];
        do
        {
          v12 = *v10;
          v13 = *(*v10 + 80);
          v14 = *v10;
          if (v13)
          {
            v15 = *v10;
            do
            {
              v14 = v15;
              v15 = v13;
              if (*(*(*(v14 + 88) + 16) + 73))
              {
                break;
              }

              v13 = *(v13 + 80);
              v14 = v15;
            }

            while (v13);
          }

          if (((*(v14 + 170) & 1) != 0 || *(a1 + 400) == 1) && (*(v12 + 128) & 4) != 0 && *(*(*(v12 + 88) + 16) + 74) == 1)
          {
            v18 = *(v12 + 96);
            v17 = v12 + 96;
            v16 = v18;
            if (v18)
            {
              re::SyncView::removeObject(v16, v17);
            }
          }

          v10 += 3;
        }

        while (v10 != v11);
      }

      v8 += 72;
    }

    while (v8 != v6 + 72 * v5);
  }

  v19 = *(a1 + 480);
  if (v19)
  {
    v20 = *(a1 + 496);
    v21 = &v20[8 * v19];
    do
    {
      v22 = *v20;
      v23 = *(*v20 + 152);
      if (!v23 || ((*(*v23 + 48))(v23) & 1) == 0)
      {
        *(a4 + 16) = *(v22 + 24);
        *(a4 + 32) = *(v22 + 72);
        v24 = v20[1];
        v25 = *(a1 + 584);
        v38 = *(a1 + 600);
        v39 = v25;
        (*(*v24 + 32))(v24, &v41, &v38, v20[7], a4);
        v26 = v20[1];
        v27 = v20[4];
        v38 = v20[6];
        v39 = v27;
        (*(*v26 + 48))(v26, &v38);
        v28 = v20[4];
        v20[4] = 0;
        if (v28)
        {
          v29 = 80 * v28;
          v30 = v20[6] + 24;
          do
          {
            re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v30);
            v30 += 80;
            v29 -= 80;
          }

          while (v29);
        }

        ++*(v20 + 10);
        re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::clear(v20[7] + 64);
      }

      v20 += 8;
    }

    while (v20 != v21);
    v6 = v41;
    v5 = v42;
  }

  if (v5)
  {
    v31 = v6 + 72 * v5;
    do
    {
      v32 = *(v6 + 48);
      if (v32)
      {
        v33 = *(v6 + 64);
        v34 = v33 + 24 * v32;
        do
        {
          v35 = *(*v33 + 80);
          v36 = *v33;
          if (v35)
          {
            v37 = *v33;
            do
            {
              v36 = v37;
              v37 = v35;
              if (*(*(*(v36 + 88) + 16) + 73))
              {
                break;
              }

              v35 = *(v35 + 80);
              v36 = v37;
            }

            while (v35);
          }

          if (((*(v36 + 170) & 1) != 0 || *(a1 + 400) == 1) && (*(*v33 + 128) & 4) != 0)
          {
            re::SyncObjectManager::destroyObject(v33);
          }

          v33 += 24;
        }

        while (v33 != v34);
      }

      v6 += 72;
    }

    while (v6 != v31);
  }

  re::DynamicArray<re::SharedPtr<re::SyncObject>>::clear(a1 + 568);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v40);
}

void re::DynamicArray<re::SharedPtr<re::SyncObject>>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void *re::SyncObjectManager::session@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[51];
  *a2 = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return this;
}

void *re::DynamicArray<re::SharedPtr<re::SyncObject>>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::SharedPtr<re::SyncObject>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = *a2;
  *(v3[4] + 8 * v4) = *a2;
  if (v5)
  {
    this = (v5 + 8);
    v4 = v3[2];
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

re *re::SyncObjectManager::requestOwnership(re *result, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = result;
  v52 = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(*a2 + 80);
  if (v13)
  {
    do
    {
      v14 = v12;
      v12 = v13;
      if (*(*(*(v14 + 88) + 16) + 73))
      {
        break;
      }

      v13 = *(v13 + 80);
      v14 = v12;
    }

    while (v13);
  }

  else
  {
    v14 = *a2;
  }

  if (*(v14 + 160))
  {
    v15.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    memset(buf, 0, sizeof(buf));
    v45 = 0;
    v16 = *a2;
    v17 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
    result = re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(buf, v11 + 512, *a2, (0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31));
    if (*&buf[12] == 0x7FFFFFFF)
    {
      v18 = v15.__d_.__rep_ + (a6 * 1000000000.0);
      result = re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(v11 + 512, *&buf[8], *buf);
      v19 = result;
      v20 = *a2;
      *(result + 1) = *a2;
      if (v20)
      {
        result = (v20 + 8);
        v16 = *a2;
      }

      else
      {
        v16 = 0;
      }

      *(v19 + 2) = v18;
      ++*(v11 + 138);
    }

    v21 = *(v16 + 80);
    if (v21)
    {
      do
      {
        v22 = v16;
        v16 = v21;
        if (*(*(*(v22 + 88) + 16) + 73))
        {
          break;
        }

        v21 = *(v21 + 80);
        v22 = v16;
      }

      while (v21);
    }

    else
    {
      v22 = v16;
    }

    v23 = *(v11 + 60);
    if (v23)
    {
      v24 = *(v22 + 160);
      v25 = (*(v11 + 62) + 48);
      v26 = v23 << 6;
      while (*(*(v25 - 6) + 24) != v24)
      {
        v25 += 8;
        v26 -= 64;
        if (!v26)
        {
          goto LABEL_38;
        }
      }

      v27 = *re::networkLogObjects(result);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(*a2 + 24);
        *buf = 134217984;
        *&buf[4] = v28;
        _os_log_impl(&dword_26168F000, v27, OS_LOG_TYPE_INFO, "[Ownership] Requesting ownership for: %llu", buf, 0xCu);
      }

      v29 = *(*a2 + 24);
      *buf = *(*(*(*a2 + 88) + 16) + 32);
      *&buf[8] = v29;
      LOBYTE(v45) = a3;
      v43[0] = a4;
      v43[1] = a5;
      v30 = re::DynamicArray<unsigned char>::DynamicArray(&v46, v43);
      *&v51 = v50;
      *(&v51 + 1) = v48;
      v31 = *(v25 - 3);
      v32 = *(v25 - 2);
      if (v32 >= v31)
      {
        v33 = v32 + 1;
        if (v31 < v32 + 1)
        {
          if (*(v25 - 4))
          {
            v34 = 2 * v31;
            v35 = v31 == 0;
            v36 = 8;
            if (!v35)
            {
              v36 = v34;
            }

            if (v36 <= v33)
            {
              v37 = v33;
            }

            else
            {
              v37 = v36;
            }

            re::DynamicArray<re::SyncOwnershipRequest>::setCapacity(v25 - 4, v37);
          }

          else
          {
            re::DynamicArray<re::SyncOwnershipRequest>::setCapacity(v25 - 4, v33);
            ++*(v25 - 2);
          }
        }

        v32 = *(v25 - 2);
      }

      v38 = *v25 + 80 * v32;
      v39 = *buf;
      *(v38 + 16) = v45;
      *v38 = v39;
      *(v38 + 56) = 0;
      *(v38 + 32) = 0;
      *(v38 + 40) = 0;
      *(v38 + 24) = 0;
      *(v38 + 48) = 0;
      *(v38 + 24) = v46;
      v46 = 0;
      *(v38 + 32) = v47;
      v47 = 0;
      v40 = *(v38 + 40);
      *(v38 + 40) = v48;
      v48 = v40;
      v41 = *(v38 + 56);
      *(v38 + 56) = v50;
      v50 = v41;
      ++v49;
      ++*(v38 + 48);
      *(v38 + 64) = v51;
      ++*(v25 - 2);
      ++*(v25 - 2);
      result = v46;
      if (v46 && v50)
      {
        result = (*(*v46 + 40))();
      }
    }
  }

LABEL_38:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

double re::SyncObjectManager::adjustTimeForSender(re::SyncObjectManager *this, double a2, uint64_t a3)
{
  v4 = *(this + 60);
  if (v4)
  {
    v5 = *(this + 62);
    v6 = v4 << 6;
    while (*(*v5 + 24) != a3)
    {
      v5 += 64;
      v6 -= 64;
      if (!v6)
      {
        return a2;
      }
    }

    re::Transport::connectionStats((*(this + 51) + 2320), *(*v5 + 32), v9);
    if (v9[0] == 1)
    {
      LODWORD(v7) = v10;
      return a2 + v7 / 1000.0 * 0.5;
    }
  }

  return a2;
}

uint64_t re::SyncObjectManager::pausePeer(uint64_t this, uint64_t a2)
{
  v2 = *(this + 480);
  if (v2)
  {
    v3 = *(this + 496) + 8;
    v4 = v2 << 6;
    while (*(*(v3 - 8) + 24) != a2)
    {
      v3 += 64;
      v4 -= 64;
      if (!v4)
      {
        return this;
      }
    }

    return (*(**v3 + 64))();
  }

  return this;
}

uint64_t re::SyncObjectManager::resumePeer(uint64_t this, uint64_t a2)
{
  v2 = *(this + 480);
  if (v2)
  {
    v3 = *(this + 496) + 8;
    v4 = v2 << 6;
    while (*(*(v3 - 8) + 24) != a2)
    {
      v3 += 64;
      v4 -= 64;
      if (!v4)
      {
        return this;
      }
    }

    return (*(**v3 + 72))();
  }

  return this;
}

void *re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(void *a1)
{
  if (*a1)
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(a1);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit((a1 + 5));
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(a1);
  return a1;
}

void re::internal::Callable<re::SyncObjectManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[60];
  if (v3)
  {
    v4 = *a2;
    v5 = v2[62];
    v6 = v5 + (v3 << 6);
    do
    {
      v7 = *(v5 + 56);
      if (v7)
      {
        if (*(v7 + 7) == *(v4 + 24))
        {
          v8 = *(v4 + 104);
          if (v8)
          {
            v9 = 8 * v8;
            v10 = *(v4 + 120);
            while (*v10 != v7)
            {
              ++v10;
              v9 -= 8;
              if (!v9)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            v10 = *(v4 + 120);
          }

          if (v10 != (*(v4 + 120) + 8 * v8))
          {
            goto LABEL_32;
          }
        }

        else
        {
          v11 = v2[76];
          if (!v11)
          {
            v16 = *(v4 + 104);
            if (v16)
            {
              v17 = 8 * v16;
              v18 = *(v4 + 120);
              while (*v18 != v7)
              {
                ++v18;
                v17 -= 8;
                if (!v17)
                {
                  goto LABEL_32;
                }
              }
            }

            else
            {
              v18 = *(v4 + 120);
            }

            if (v18 == (*(v4 + 120) + 8 * v16))
            {
              goto LABEL_32;
            }

LABEL_31:
            re::SyncView::removeViewer(v4, v7);
            goto LABEL_32;
          }

          v12 = (*(v11 + 16))(v11, v2);
          v13 = *(v4 + 104);
          if (v13)
          {
            v14 = 8 * v13;
            v15 = *(v4 + 120);
            while (*v15 != v7)
            {
              ++v15;
              v14 -= 8;
              if (!v14)
              {
                if (v12)
                {
                  goto LABEL_28;
                }

                goto LABEL_32;
              }
            }
          }

          else
          {
            v15 = *(v4 + 120);
          }

          if (v12 == (v15 != (*(v4 + 120) + 8 * v13)))
          {
            goto LABEL_32;
          }

          if (!v12)
          {
            goto LABEL_31;
          }
        }

LABEL_28:
        re::SyncView::addViewer(v4, v7);
      }

LABEL_32:
      v5 += 64;
    }

    while (v5 != v6);
  }
}

void *re::internal::Callable<re::SyncObjectManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F42A8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::SyncObjectManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F42A8;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::SyncView *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void re::internal::Callable<re::SyncObjectManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::operator()(uint64_t a1, re::SyncViewer **a2)
{
  v3 = *(a1 + 8);
  v4 = v3[60];
  if (v4)
  {
    v6 = *a2;
    v7 = *(*a2 + 7);
    v8 = v3[62];
    v9 = v4 << 6;
    while (*(*v8 + 24) != v7)
    {
      v8 += 64;
      v9 -= 64;
      if (!v9)
      {
        return;
      }
    }

    v10 = *(a1 + 16);
    if (v7 != *(v10 + 24) && v7 != *(v10 + 32))
    {
      v11 = v3[76];
      if (!v11 || !(*(v11 + 16))())
      {
        return;
      }

      v10 = *(a1 + 16);
    }

    re::SyncView::addViewer(v10, v6);
  }
}

uint64_t re::internal::Callable<re::SyncObjectManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F4300;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SyncObjectManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F4300;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::SyncViewer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::SyncOwnershipRequest>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 80 * v4;
        v6 = v3 + 24;
        do
        {
          re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v6);
          v6 += 80;
          v5 -= 80;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::SyncOwnershipRequest>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::SyncOwnershipRequest>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      re::DynamicArray<re::SyncOwnershipRequest>::setCapacity(a1, a2[2]);
      v14 = a2[4];
      v15 = *(a1 + 16);
      v16 = *(a1 + 32);
      if (v15)
      {
        v17 = &v14[5 * v15];
        do
        {
          v18 = *v14;
          *(v16 + 16) = *(v14 + 16);
          *v16 = v18;
          re::DynamicArray<unsigned char>::operator=(v16 + 24, v14 + 3);
          *(v16 + 64) = v14[4];
          v14 += 5;
          v16 += 80;
        }

        while (v14 != v17);
        v16 = *(a1 + 32);
        v15 = *(a1 + 16);
        v14 = a2[4];
      }

      if (v15 != v6)
      {
        v19 = 80 * v15 + 24;
        v20 = v14 + v19;
        v21 = v16 + v19;
        do
        {
          v22 = *(v20 - 24);
          *(v21 - 8) = *(v20 - 8);
          *(v21 - 24) = v22;
          v23 = re::DynamicArray<unsigned char>::DynamicArray(v21, v20);
          *(v23 + 40) = *(v20 + 40);
          v24 = (v20 + 56);
          v20 += 80;
          v21 = v23 + 80;
        }

        while (v24 != &v14[5 * v6]);
      }
    }

    else
    {
      v8 = *(a1 + 32);
      if (v6)
      {
        v9 = a2[4];
        v10 = &v9[5 * v6];
        do
        {
          v11 = *v9;
          *(v8 + 16) = *(v9 + 16);
          *v8 = v11;
          re::DynamicArray<unsigned char>::operator=(v8 + 24, v9 + 3);
          *(v8 + 64) = v9[4];
          v9 += 5;
          v8 += 80;
        }

        while (v9 != v10);
        v8 = *(a1 + 32);
        v7 = *(a1 + 16);
      }

      if (v6 != v7)
      {
        v12 = 80 * v7 - 80 * v6;
        v13 = v8 + 80 * v6 + 24;
        do
        {
          re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v13);
          v13 += 80;
          v12 -= 80;
        }

        while (v12);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

void *re::DynamicArray<re::SyncOwnershipRequest>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SyncOwnershipRequest>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 80 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 16) = *(v8 + 16);
          *v11 = v12;
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v13 = *(v8 + 24);
          v14 = *(v8 + 32);
          v15 = v8 + 24;
          v11[3] = v13;
          v11[4] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[5];
          v11[5] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[7];
          v11[7] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 12);
          *(v11 + 4) = *(v15 + 40);
          re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v15);
          v11 += 10;
          v8 = v15 + 56;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<unsigned char>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<unsigned char>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<unsigned char>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<unsigned char>::copy(a1, a2);
    }
  }

  return a1;
}

void **re::DynamicArray<unsigned char>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<unsigned char>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), v5);
      v6 = v3[2];
    }

    else
    {
      v6 = 0;
    }

    result = memcpy(&v6[v3[4]], &v6[*(a2 + 32)], v4 - v6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<unsigned char>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, a2, 1);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<unsigned char>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<unsigned char>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<unsigned char>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<unsigned char>::copy(a1, a2);
  }

  return a1;
}

void *re::internal::Callable<re::SyncObjectManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::~Callable(void *a1)
{
  *a1 = &unk_2873F4358;
  re::DynamicArray<re::SyncOwnershipRequest>::deinit((a1 + 4));
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::SyncObjectManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::~Callable(void *a1)
{
  *a1 = &unk_2873F4358;
  re::DynamicArray<re::SyncOwnershipRequest>::deinit((a1 + 4));
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::SyncObjectManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 72);
  if (*(v3 + 7) != *(v2 + 24))
  {
    if (!(*(*(*(a1 + 8) + 608) + 16))())
    {
      return;
    }

    v3 = *(a1 + 72);
  }

  re::SyncView::addViewer(v2, v3);
}

void *re::internal::Callable<re::SyncObjectManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::cloneInto(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2873F4358;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  v7 = a1[3];
  a2[3] = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  re::DynamicArray<re::SyncOwnershipRequest>::DynamicArray((a2 + 4), a1 + 4);
  a2[9] = a1[9];
  return a2;
}

uint64_t re::internal::Callable<re::SyncObjectManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F4358;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 16) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  v2 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v3 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v3;
  v4 = *(a2 + 64);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = v4;
  ++*(a1 + 56);
  ++*(a2 + 56);
  *(a2 + 72) = *(a1 + 72);
  return a2;
}

re::internal::AriadneSignpostScopeGuard *re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this, int a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    v4 = *this;
    kdebug_trace();
  }

  return this;
}

uint64_t re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::internal::SyncSnapshotEntry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::internal::SyncSnapshotEntry>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 24 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 24;
      v4 -= 24;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this)
{
  if (re::internal::enableSignposts(0, 0))
  {
    v2 = (4 * *this + 4) & 0xFFFC;
    v3 = *(this + 1);
    kdebug_trace();
  }
}

void re::internal::Callable<re::SyncObjectManager::receiveOwnershipRequests(re::SyncObjectManager::PeerState &)::$_0,void ()(re::SyncOwnershipRequest const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  Object = re::SyncObjectStore::findObject(*(v4 + 416), *a2, *(a2 + 8), v40);
  v6 = v40[0];
  if (!v40[0])
  {
    goto LABEL_53;
  }

  if (*(*(*(v40[0] + 11) + 16) + 73) != 1)
  {
    goto LABEL_52;
  }

  v7 = *(v40[0] + 10);
  v8 = v40[0];
  if (v7)
  {
    v9 = *(v40[0] + 10);
    v10 = v40[0];
    do
    {
      v8 = v10;
      v10 = v9;
      if (*(*(*(v8 + 11) + 16) + 73))
      {
        break;
      }

      v9 = *(v9 + 10);
      v8 = v10;
    }

    while (v9);
  }

  if (*(v8 + 20) || !*(v40[0] + 20) && *(v40[0] + 17))
  {
    goto LABEL_52;
  }

  if (v7)
  {
    v11 = *(v40[0] + 10);
    v12 = v40[0];
    do
    {
      v13 = v12;
      v12 = v11;
      if (*(*(*(v13 + 11) + 16) + 73))
      {
        break;
      }

      v11 = *(v11 + 10);
      v13 = v12;
    }

    while (v11);
    v14 = *(v13 + 152);
    v39 = v14 ^ 1;
    do
    {
      v15 = v6;
      v6 = v7;
      if (*(*(*(v15 + 11) + 16) + 73))
      {
        break;
      }

      v7 = *(v7 + 10);
      v15 = v6;
    }

    while (v7);
    if ((*(v15 + 152) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v14 = *(v40[0] + 152);
    v39 = v14 ^ 1;
    if ((v14 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v4 + 432);
  if (v16)
  {
    Object = (*(*v16 + 48))(v16);
    v17 = Object;
    v18 = *(a1 + 16);
    v19 = *(a2 + 72);
    v40[2] = *(a2 + 64);
    v40[3] = v18;
    v40[1] = v19;
    v20 = *(Object + 80);
    *(Object + 80) = v20 + 1;
    if (*(Object + 16))
    {
      v21 = 0;
      do
      {
        Object = (*(*(v17 + 32) + 32 * v21 + 24))(v4);
        if (Object == 1)
        {
          Object = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v17, v21);
        }

        else
        {
          ++v21;
        }
      }

      while (v21 < *(v17 + 16));
      v20 = *(v17 + 80) - 1;
    }

    *(v17 + 80) = v20;
    if (!v20)
    {
      v22 = *(v17 + 56);
      if (v22)
      {
        v23 = 0;
        for (i = 0; i != v22; ++i)
        {
          v25 = *(v17 + 56);
          if (v25 <= i)
          {
            v40[4] = 0;
            memset(buf, 0, sizeof(buf));
            v38 = v25;
            os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            v43 = 136315906;
            v44 = "operator[]";
            v45 = 1024;
            v46 = 789;
            v47 = 2048;
            v48 = i;
            v49 = 2048;
            v50 = v38;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v26 = *(v17 + 72) + v23;
          v27 = *(v26 + 32);
          v28 = *(v26 + 16);
          v41[0] = *v26;
          v41[1] = v28;
          v42 = v27;
          if (LOBYTE(v41[0]) == 1)
          {
            Object = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v17, v41 + 1, buf);
            if ((buf[0] & 1) == 0)
            {
              re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(v17, v41 + 8);
            }
          }

          else
          {
            Object = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v17, v41 + 1, buf);
            if (LOBYTE(buf[0]) == 1)
            {
              Object = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v17, *(&buf[0] + 1));
            }
          }

          v23 += 40;
        }
      }
    }

    if (v39)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  v32 = *re::networkLogObjects(0);
  Object = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  if (Object)
  {
    LOWORD(buf[0]) = 0;
    _os_log_error_impl(&dword_26168F000, v32, OS_LOG_TYPE_ERROR, "[Ownership] No NetworkSyncManager found, ownership request not forwarded.", buf, 2u);
    if ((v14 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_43:
  if ((v14 & 1) == 0)
  {
LABEL_44:
    v33 = *re::networkLogObjects(Object);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v37 = *a2;
      v36 = *(a2 + 8);
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v36;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = v37;
      _os_log_debug_impl(&dword_26168F000, v33, OS_LOG_TYPE_DEBUG, "[Ownership] Granted request for object %llu (%llu)", buf, 0x16u);
    }

    v34 = v40[0];
    if (!*(v40[0] + 20) && !*(v40[0] + 17))
    {
      *(v40[0] + 152) = *(a2 + 16);
    }

    if (re::SyncObject::handOff(v34, *(a1 + 16)))
    {
      re::DynamicArray<re::SharedPtr<re::SyncObject>>::add((v4 + 568), v40);
    }

    goto LABEL_51;
  }

LABEL_40:
  v29 = *re::networkLogObjects(Object);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v31 = *a2;
    v30 = *(a2 + 8);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = v30;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v31;
    _os_log_debug_impl(&dword_26168F000, v29, OS_LOG_TYPE_DEBUG, "[Ownership] Rejected request for locked object %llu (%llu)", buf, 0x16u);
  }

LABEL_51:
  v6 = v40[0];
  if (v40[0])
  {
LABEL_52:
  }

LABEL_53:
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t re::internal::Callable<re::SyncObjectManager::receiveOwnershipRequests(re::SyncObjectManager::PeerState &)::$_0,void ()(re::SyncOwnershipRequest const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F43B0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SyncObjectManager::receiveOwnershipRequests(re::SyncObjectManager::PeerState &)::$_0,void ()(re::SyncOwnershipRequest const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F43B0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 8 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 8;
          v5 -= 8;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::Event<re::Session>::addSubscription(_DWORD *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, a2, v6);
  if ((v6[0] & 1) == 0)
  {
    if (a1[20])
    {
      v6[0] = 1;
      v4 = *(a2 + 16);
      v7 = *a2;
      v8 = v4;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a1 + 10), v6);
    }

    else
    {
      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, a2);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

__n128 re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 32);
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 40 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::Event<re::Session>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

uint64_t re::Event<re::Session,re::SessionError>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v9 = v5(v6, a1, &v11);
  if (v11)
  {
  }

  return v9;
}

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>,re::ParticipantError))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&,re::ParticipantError&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3, unsigned int *a4)
{
  v7 = a2[1];
  v6 = a2[2];
  v8 = (*a2 + (v6 >> 1));
  if (v6)
  {
    v7 = *(*v8 + v7);
  }

  v9 = *a3;
  v13 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  v11 = v7(v8, a1, &v13, *a4);
  if (v13)
  {
  }

  return v11;
}

uint64_t re::Event<re::Session,unsigned long long>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::PacketStatsFilter*,re::CongestionEventData const&))::{lambda(re::PacketStatsFilter*,re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::Subscription const&,re::CongestionEventData const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

uint64_t re::Event<re::SyncViewManager,re::SyncView *>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::SyncViewManager*,re::SyncView *))::{lambda(re::SyncViewManager*,re::Event<re::SyncViewManager,re::SyncView *>::Subscription const&,re::SyncView *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

void re::Event<re::SyncViewManager,re::SyncView *>::removeSubscription(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, a2, v6);
  if (v6[0] == 1)
  {
    if (*(a1 + 80))
    {
      v6[0] = 0;
      v4 = a2[1];
      v7 = *a2;
      v8 = v4;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a1 + 40), v6);
    }

    else
    {
      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStable(a1, a2);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void *re::DynamicArray<re::SyncObjectManager::PeerState>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SyncObjectManager::PeerState>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 32;
        v11 = v9 << 6;
        v12 = v7;
        do
        {
          *v12 = *(v10 - 32);
          *(v10 - 32) = 0u;
          v12[6] = 0;
          v12[2] = 0;
          *(v12 + 3) = 0u;
          *(v12 + 10) = 0;
          v13 = *(v10 - 8);
          v12[2] = *(v10 - 16);
          *(v10 - 16) = 0;
          v12[3] = v13;
          *(v10 - 8) = 0;
          v14 = v12[4];
          v12[4] = *v10;
          *v10 = v14;
          v15 = v12[6];
          v12[6] = *(v10 + 16);
          *(v10 + 16) = v15;
          ++*(v10 + 8);
          ++*(v12 + 10);
          v12[7] = *(v10 + 24);
          re::DynamicArray<re::SyncOwnershipRequest>::deinit(v10 - 16);
          v16 = *(v10 - 24);
          if (v16)
          {

            *(v10 - 24) = 0;
          }

          v17 = *(v10 - 32);
          if (v17)
          {

            *(v10 - 32) = 0;
          }

          v12 += 8;
          v10 += 64;
          v11 -= 64;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 32 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

void *re::DynamicArray<re::SharedPtr<re::SyncObject>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 8 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11++ = *v12;
          *v12++ = 0;
          v10 -= 8;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v17 - 1) = 0;
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void re::MultipeerManager::applySessionConfigDefaults(uint64_t a1, const char *a2)
{
  re::Defaults::intValue("network.multipeerservice.sessionInitTimeOutMs", a2, v25);
  re::Defaults::intValue("network.multipeerservice.sessionHandshakeTimeOutMs", v3, v23);
  re::Defaults::BOOLValue("network.multipeerservice.sessionIsLeader", v4, v22);
  re::Defaults::BOOLValue("network.multipeerservice.sessionForceAuthorityOverIncomingObjects", v5, v21);
  re::Defaults::BOOLValue("network.multipeerservice.sessionShutdownOnVersionMismatch", v6, v20);
  re::Defaults::BOOLValue("network.multipeerservice.sessionUseReliableSync", v7, v19);
  re::Defaults::BOOLValue("network.multipeerservice.enableThrottling", v8, v18);
  re::Defaults::BOOLValue("network.multipeerservice.enableMessageFragmentation", v9, v17);
  re::Defaults::intValue("network.multipeerservice.sessionResendPeriodMs", v10, v15);
  re::Defaults::intValue("network.multipeerservice.syncPacketSizeLimit", v11, v13);
  if (v25[0] == 1)
  {
    *(a1 + 24) = v26;
  }

  if (v23[0] == 1)
  {
    *(a1 + 28) = v24;
  }

  if (v22[0] == 1)
  {
    *(a1 + 40) = v22[1];
  }

  if (v21[0] == 1)
  {
    *(a1 + 72) = v21[1];
  }

  if (v20[0] == 1)
  {
    *(a1 + 78) = v20[1];
  }

  if (v19[0])
  {
    v12 = v19[1];
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 79) = v12;
  if (v18[0] == 1)
  {
    *(a1 + 76) = v18[1];
  }

  if (v17[0] == 1)
  {
    *(a1 + 77) = v17[1];
  }

  if (v15[0] == 1)
  {
    *(a1 + 80) = v16;
  }

  if (v13[0] == 1)
  {
    *(a1 + 84) = v14;
  }
}

BOOL re::MultipeerManager::initView(uint64_t *a1, id *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 248, 8);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0;
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 24) = 0;
  *v5 = &unk_2873F6430;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 112) = 0;
  *(v5 + 136) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  *(v5 + 176) = 0;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 240) = 0;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0;
  v17 = *a2;
  v6.var0 = &v17;
  v7 = re::MultipeerDiscoveryView::init(v5, v6);

  if (v7)
  {
    re::SharedPtr<re::SyncObject>::reset(a1 + 8, v5);
  }

  else
  {
    v9 = *re::networkLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v13 = v9;
      v14 = [v12 myPeerID];
      v15 = [v14 displayName];
      v16 = [v15 UTF8String];
      *buf = 136315138;
      v19 = v16;
      _os_log_error_impl(&dword_26168F000, v13, OS_LOG_TYPE_ERROR, "Failed to initiate RE discovery with MCSession (%s).", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void re::MultipeerManager::~MultipeerManager(id *this)
{
  *this = &unk_2873F44E8;
  if (*(this + 24) == 1)
  {
    re::MultipeerManager::stopSync(this);
    v2 = this[4];
    if (v2)
    {

      this[4] = 0;
    }

    *(this + 24) = 0;
  }

  else
  {
    v3 = this[4];
    if (v3)
    {

      this[4] = 0;
    }
  }

  v4 = this[1];
  this[1] = 0;
}

{
  re::MultipeerManager::~MultipeerManager(this);

  JUMPOUT(0x266708EC0);
}

uint64_t re::MultipeerManager::setHandshakeTimeoutAndCountMs(uint64_t this, int a2, int a3)
{
  *(this + 40) = a2;
  *(this + 44) = a3;
  return this;
}

BOOL re::MultipeerManager::createSessionAndStartSync(uint64_t a1, uint64_t a2)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 64);
  if (v2 && (v5 = *(v2 + 200), v5, v5))
  {
    if (*(a1 + 32))
    {
      v6 = *re::networkLogObjects(a1);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v22) = 0;
        v8 = "Already syncing over another session. Stop it first.";
LABEL_8:
        _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, v8, &v22, 2u);
        result = 0;
      }
    }

    else
    {
      v22 = *a2;
      v23 = *(a2 + 8);
      v9 = *(a2 + 32);
      v24 = *(a2 + 24);
      v25 = v9;
      if (v9)
      {
        v10 = (v9 + 8);
      }

      v26 = *(a2 + 40);
      v11 = *(a2 + 64);
      v27 = *(a2 + 56);
      v28 = v11;
      if (v11)
      {
        v12 = (v11 + 8);
      }

      v29 = *(a2 + 72);
      v13 = *(a2 + 104);
      v30 = *(a2 + 88);
      v32 = v13;
      if (v13)
      {
        v14 = (v13 + 8);
      }

      v15 = *(a2 + 112);
      v33 = v15;
      if (v15)
      {
        v16 = (v15 + 8);
      }

      v34 = *(a2 + 120);
      v17 = *(a1 + 40);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      HIDWORD(v24) = *(a1 + 44);
      v31 = v17;
      v22 = *(a1 + 8);

      v18 = *(a1 + 16);
      (*(*v18 + 104))(v35, v18, &v22);
      v19 = *(a1 + 32);
      *(a1 + 32) = v35[0];
      v35[0] = v19;
      if (v19)
      {
      }

      v20 = (*(*v18 + 40))(v18);
      v35[0] = a1;
      v35[1] = re::MultipeerManager::sessionRemovedFromSync;
      v35[2] = 0;
      v35[3] = re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::createSubscription<re::MultipeerManager>(re::MultipeerManager *,REEventHandlerResult (re::MultipeerManager::*)(re::NetworkSyncService*,re::SharedPtr<re::Session>))::{lambda(re::NetworkSyncService*,re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::Subscription const&,re::SharedPtr<re::Session>&&)#1}::__invoke;
      re::Event<re::Session>::addSubscription(v20, v35);
      if (v33)
      {

        v33 = 0;
      }

      if (v32)
      {

        v32 = 0;
      }

      if (v28)
      {

        v28 = 0;
      }

      if (v25)
      {
      }

      result = 1;
    }
  }

  else
  {
    v6 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v22) = 0;
      v8 = "No MCSession object provided.";
      goto LABEL_8;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::MultipeerManager::sessionRemovedFromSync(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (*a3 != v3)
  {
    return 0;
  }

  if (v3)
  {

    *(a1 + 32) = 0;
  }

  return 1;
}

void re::MultipeerManager::stopSync(re::MultipeerManager *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 2);
    v12 = *(this + 4);
    v4 = (v1 + 8);
    (*(*v3 + 112))(v3, &v12);
    if (v12)
    {

      v12 = 0;
    }

    v5 = (*(*v3 + 40))(v3);
    if (*(v5 + 16))
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = (*(v6 + 32) + 32 * v7);
        if (*v8 == this)
        {
          if (!*(v6 + 80))
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v6, v7);
            continue;
          }

          v13[0] = 0;
          v9 = *v8;
          v15 = *(v8 + 1);
          v14 = v9;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v6 + 40), v13);
        }

        ++v7;
      }

      while (v7 < *(v6 + 16));
    }

    v10 = *(this + 4);
    if (v10)
    {

      *(this + 4) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void re::MultipeerManager::session(re::MultipeerManager *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 + 2208);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    *a2 = *(v4 + 200);
  }

  else
  {
    *a2 = 0;
  }
}

void *re::MultipeerManager::internalSession@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[4];
  *a2 = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return this;
}

void re::MultipeerManager::mcPeerID(re::MultipeerManager *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 4);
  v6 = v5[276];
  if (v6)
  {
    v8 = v6 + 8;

    v5 = *(this + 4);
  }

  v9 = v5[287];
  if (v9)
  {
    v10 = v5[289];
    v11 = 8 * v9;
    while (1)
    {
      v12 = *v10;
      if (*(*v10 + 24) == a2)
      {
        break;
      }

      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    v13 = (v12 + 8);
    if ((*(*v6 + 48))(v6))
    {
      v14 = 0;
      do
      {
        (*(*v6 + 56))(&v16, v6, v14);
        (*(*v16 + 40))(v17);
        v15 = re::DynamicString::operator==(v12 + 40, v17);
        if (*&v17[0])
        {
          if (BYTE8(v17[0]))
          {
            (*(**&v17[0] + 40))();
          }

          memset(v17, 0, sizeof(v17));
        }

        if (v16)
        {
        }

        if (v15)
        {
          re::MultipeerDiscoveryView::multipeerIdAtIndex(v6, v14, a3);
          if (v12)
          {
          }

          return;
        }

        ++v14;
      }

      while (v14 < (*(*v6 + 48))(v6));
      if (!v12)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  *a3 = 0;
}

uint64_t re::MultipeerManager::internalPeerID(re::MultipeerManager *this, ObjCObject a2)
{
  v5 = *(*(this + 4) + 2208);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  if ((*(*v5 + 48))(v5))
  {
    v7 = 0;
    while (1)
    {
      re::MultipeerDiscoveryView::multipeerIdAtIndex(v5, v7, &v15);
      v8 = *a2.var0;
      v9 = v15;
      LODWORD(v8) = [v9 isEqual:v8];

      if (v8)
      {
        break;
      }

LABEL_13:
      if (++v7 >= (*(*v5 + 48))(v5))
      {
        return 0;
      }
    }

    (*(*v5 + 56))(&v15, v5, v7);
    v10 = (*(**(this + 4) + 40))(*(this + 4));
    if (v11)
    {
      v12 = 8 * v11;
      while (*(*v10 + 152) != v15)
      {
        v10 += 8;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      v13 = 0;
      v2 = *(*v10 + 24);
      if (!v15)
      {
LABEL_12:
        if (!v13)
        {
          return v2;
        }

        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
      v13 = 1;
      if (!v15)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::createSubscription<re::MultipeerManager>(re::MultipeerManager *,REEventHandlerResult (re::MultipeerManager::*)(re::NetworkSyncService*,re::SharedPtr<re::Session>))::{lambda(re::NetworkSyncService*,re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::Subscription const&,re::SharedPtr<re::Session>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v9 = v5(v6, a1, &v11);
  if (v11)
  {
  }

  return v9;
}

uint64_t RESyncBitReaderConstructNoAlloc(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a2 >= 0x20)
  {
    *a1 = a3;
    *(a1 + 8) = a4;
    *(a1 + 12) = 0;
    v4 = a1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return v4;
}

uint64_t RESyncBitReaderReadData(uint64_t a1, void *__dst, size_t __n)
{
  if (*(a1 + 12))
  {
    return 0;
  }

  v4 = __n;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 - v7 >= __n)
  {
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    memcpy(__dst, (*a1 + v7), __n);
    *(a1 + 16) += v4;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 12) = 1;
    *(a1 + 16) = v6;
    *(a1 + 20) = 0;
  }

  return result;
}

uint64_t RESyncBitReaderDataPtr(uint64_t a1)
{
  if (*(a1 + 12))
  {
    return 0;
  }

  else
  {
    return *a1 + *(a1 + 16);
  }
}

uint64_t RESyncBitReaderSkipData(uint64_t result, int a2)
{
  if ((*(result + 12) & 1) == 0)
  {
    *(result + 24) = 0;
    v2 = *(result + 16) + a2;
    *(result + 16) = v2;
    if (v2 > *(result + 8))
    {
      *(result + 12) = 1;
    }
  }

  return result;
}

uint64_t *RESyncBitReaderReadUInt8(uint64_t *a1, _BYTE *a2)
{
  v4 = 0;
  result = re::BitReader::readUInt32Bits(a1, 8u, &v4);
  *a2 = v4;
  return result;
}

uint64_t *RESyncBitReaderReadUInt16(uint64_t *a1, _WORD *a2)
{
  v4 = 0;
  result = re::BitReader::readUInt32Bits(a1, 0x10u, &v4);
  *a2 = v4;
  return result;
}

uint64_t *RESyncBitReaderReadUInt32(uint64_t *a1, unsigned int *a2)
{
  v4 = 0;
  result = re::BitReader::readUInt32Bits(a1, 0x20u, &v4);
  *a2 = v4;
  return result;
}

uint64_t *RESyncBitReaderReadBool(uint64_t *a1, BOOL *a2)
{
  v4 = 0;
  result = re::BitReader::readUInt32Bits(a1, 1u, &v4);
  *a2 = v4 != 0;
  return result;
}

float RESyncBitReaderReadFloat(uint64_t *a1, unsigned int *a2)
{
  re::BitReader::readUInt32Bits(a1, 0x20u, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t RESyncBitReaderAlignToByte(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t RESyncBitReaderMakeMarker(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = (8 - v1);
  v3 = v1 == 0;
  v4 = v1 != 0;
  v5 = v2 << 32;
  if (v3)
  {
    v5 = 0;
  }

  return v5 | (*(a1 + 16) - v4);
}

uint64_t RESyncBitReaderBytesRead(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 20))
  {
    return v1 + 1;
  }

  else
  {
    return v1;
  }
}

nw_protocol_definition_t re::NWProtocolFramer::create(re::NWProtocolFramer *this)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN2re16NWProtocolFramer6createEv_block_invoke_3;
  v4[3] = &unk_279AE3B98;
  v5 = &__block_literal_global;
  v6 = &__block_literal_global_8;
  v1 = _Block_copy(v4);
  definition = nw_framer_create_definition("re-net-header", 0, v1);

  return definition;
}

uint64_t ___ZN2re16NWProtocolFramer6createEv_block_invoke(uint64_t a1, void *a2)
{
  value_4[5] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = 8;
  while (1)
  {
    *temp_buffer = 0;
    value = 0;
    if (!nw_framer_parse_input(v2, 8uLL, 8uLL, temp_buffer, &__block_literal_global_3))
    {
      break;
    }

    *temp_buffer = bswap32(*temp_buffer);
    v4 = re::internal::enableSignposts(0, 0);
    if (v4)
    {
      v4 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (v4)
      {
        v4 = kdebug_trace();
      }
    }

    if (value >= 0xAu)
    {
      v7 = *re::networkLogObjects(v4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(value_4[0]) = 67109120;
        HIDWORD(value_4[0]) = value;
        _os_log_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEFAULT, "Message received on unknown channel %d", value_4, 8u);
      }

      value_4[0] = MEMORY[0x277D85DD0];
      value_4[1] = 3221225472;
      value_4[2] = ___Z20nw_framer_skip_bytesPU23objcproto12OS_nw_framer8NSObjectm_block_invoke;
      value_4[3] = &__block_descriptor_40_e14_Q28__0_8Q16B24l;
      value_4[4] = *temp_buffer;
      nw_framer_parse_input(v2, 0, 0, 0, value_4);
LABEL_12:
      v3 = 0;
      break;
    }

    v5 = nw_framer_message_create(v2);
    nw_framer_message_set_value(v5, "channel", value, 0);
    v6 = nw_framer_deliver_input_no_copy(v2, *temp_buffer, v5, 1);

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ___ZN2re16NWProtocolFramer6createEv_block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 8 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

void ___ZN2re16NWProtocolFramer6createEv_block_invoke_5(uint64_t a1, void *a2, NSObject *a3, size_t a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  access_value[0] = MEMORY[0x277D85DD0];
  access_value[1] = 3221225472;
  access_value[2] = ___ZN2re16NWProtocolFramer6createEv_block_invoke_2_9;
  access_value[3] = &unk_279AE3B70;
  access_value[4] = &v10;
  v6 = a2;
  nw_framer_message_access_value(a3, "channel", access_value);
  v7 = bswap32(a4);
  v8 = *(v11 + 24);
  nw_framer_write_output(v6, &v7, 8uLL);
  nw_framer_write_output_no_copy(v6, a4);

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    kdebug_trace();
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t ___ZN2re16NWProtocolFramer6createEv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  nw_framer_set_input_handler(v4, v3);
  nw_framer_set_output_handler(v4, *(a1 + 40));

  return 1;
}

id re::NWProtocolFramer::definition(re::NWProtocolFramer *this)
{
  v2 = &re::introspect_int(BOOL)::isInitialized;
  {
    v2 = &re::introspect_int(BOOL)::isInitialized;
    if (v5)
    {
      re::NWProtocolFramer::definition(void)::definition = re::NWProtocolFramer::create(v5);
      v2 = &re::introspect_int(BOOL)::isInitialized;
    }
  }

  v3 = *(v2 + 112);

  return v3;
}

void *RESyncMCServiceConfigCreateNoAlloc(void *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0x10)
    {
      v4 = MEMORY[0x277D85CD0];
      v5 = MEMORY[0x277D85CD0];
      *a1 = v4;
      return a1;
    }
  }

  return result;
}

void RESyncMCServiceConfigDestroyNoDealloc(void **a1)
{
  v2 = *a1;
  *a1 = 0;

  v3 = *a1;
}

uint64_t RESyncMCServiceCreate(re *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 48, 8);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0u;
  *v3 = &unk_2873F44E8;
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  *(v3 + 8) = v4;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0x61A800000002;
  objc_storeStrong((v3 + 8), *a1);
  *(v3 + 16) = *(a1 + 1);
  *(v3 + 24) = 1;
  return v3;
}

re *RESyncMCServiceDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void RESyncMCServiceConfigSetDispatchQueue(id *a1, void *a2)
{
  v4 = a2;
  if (a1 && v4)
  {
    v5 = v4;
    objc_storeStrong(a1, a2);
    v4 = v5;
  }
}

uint64_t RESyncMCServiceConfigSetSyncService(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t RESyncMCServiceStartSyncWithMCSession(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[1] = 0x7B61A86B3;
  v13[3] = 0x61A800000000;
  v13[0] = MEMORY[0x277D85CD0];
  v13[2] = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0u;
  v19 = 16777473;
  v20 = 500;
  v21 = 10485760;
  v22 = 257;
  v23 = 10;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  re::MultipeerManager::applySessionConfigDefaults(v13, v4);
  re::make::shared::object<re::LeaderElectionLowestPeerID>(v5, &v12);
  v6 = v12;
  v12 = 0;
  v7 = v14;
  v14 = v6;
  if (v7)
  {

    if (v12)
    {
    }
  }

  v8 = v3;
  v11 = v8;
  if (re::MultipeerManager::initView(v13, &v11))
  {
    v9 = (*(*a1 + 24))(a1, v13);
  }

  else
  {
    v9 = 0;
  }

  if (v25)
  {

    v25 = 0;
  }

  if (v24)
  {

    v24 = 0;
  }

  if (*(&v17 + 1))
  {

    *(&v17 + 1) = 0;
  }

  if (v14)
  {
  }

  return v9;
}

id RESyncMCServiceGetMCSession(uint64_t a1)
{
  (*(*a1 + 40))(&v3);
  v1 = v3;

  return v1;
}

uint64_t RESyncMCServiceGetInternalSession(uint64_t a1)
{
  (*(*a1 + 48))(&v3);
  v1 = v3;
  if (v3)
  {
  }

  return v1;
}

id RESyncMCServiceGetMCPeerID(uint64_t a1)
{
  (*(*a1 + 56))(&v3);
  v1 = v3;

  return v1;
}

uint64_t RESyncMCServiceGetInternalPeerID(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*a1 + 64);

  v4 = v3(a1, &v6);
  return v4;
}

void re::make::shared::object<re::LeaderElectionLowestPeerID>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 40, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_2873F5C10;
  *a2 = v4;
}

uint64_t re::SyncHistoryResetRequest::write(re::SyncHistoryResetRequest *this, re::BitWriter *a2)
{
  v4 = *(this + 1);
  re::BitWriter::writeUInt32Bits(a2, *this, 0x20u);
  re::BitWriter::writeUInt32Bits(a2, v4, 0x20u);
  v5 = *(this + 3);
  re::BitWriter::writeUInt32Bits(a2, *(this + 2), 0x20u);

  return re::BitWriter::writeUInt32Bits(a2, v5, 0x20u);
}

void *re::SyncOpaqueTypeInfo::make@<X0>(re::SyncOpaqueTypeInfo *this@<X0>, uint64_t a2@<X8>)
{
  re::SyncObjectTypeInfo::SyncObjectTypeInfo(a2);
  *(a2 + 72) = 1;
  *(a2 + 32) = this;
  v5[0] = "Opaque";
  v5[1] = 6;
  re::DynamicString::operator=((a2 + 40), v5);
  re::SyncObjectTypeInfo::setReadSnapshotCb(a2, &__block_literal_global_0);
  re::SyncObjectTypeInfo::setWriteSnapshotCb(a2, &__block_literal_global_5);
  re::SyncObjectTypeInfo::setReadPayloadCb(a2, &__block_literal_global_9);

  return re::SyncObjectTypeInfo::setWritePayloadCb(a2, &__block_literal_global_13);
}

BOOL ___ZN2re18SyncOpaqueTypeInfo4makeEy_block_invoke_3(int a1, uint64_t a2, re::BitWriter *this)
{
  if (*(a2 + 12) == 1)
  {
    v5 = 0;
    LODWORD(v6) = *(a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
    v5 = (*a2 + v6);
  }

  re::BitWriter::writeData(this, v5, (*(a2 + 8) - v6));
  if ((*(a2 + 12) & 1) == 0)
  {
    v7 = *(a2 + 8);
    *(a2 + 24) = 0;
    *(a2 + 16) = v7;
  }

  return (*(this + 20) & 1) == 0;
}

uint64_t ___ZN2re18SyncOpaqueTypeInfo4makeEy_block_invoke_4(int a1, uint64_t a2, re::BitWriter *this)
{
  if (*(a2 + 12) == 1)
  {
    v3 = 0;
    LODWORD(v4) = *(a2 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
    v3 = (*a2 + v4);
  }

  return re::BitWriter::writeData(this, v3, (*(a2 + 8) - v4));
}

re::SyncObjectTypeInfo *re::SyncObjectTypeInfo::SyncObjectTypeInfo(re::SyncObjectTypeInfo *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F69B0;
  *(this + 24) = 1;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  re::DynamicString::setCapacity(this + 5, 0);
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  return this;
}

double RESyncProtocolLayerObserverCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 168, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_2873F4648;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  return result;
}

void RESyncProtocolLayerObserverOnCreate(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnCreate";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnCreate";
    v8 = 2080;
    v9 = "protocolLayerCreate != __null";
    goto LABEL_9;
  }

  _Block_release(a1[3]);
  a1[3] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnDestroy(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnDestroy";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnDestroy";
    v8 = 2080;
    v9 = "protocolLayerDestroy != __null";
    goto LABEL_9;
  }

  _Block_release(a1[4]);
  a1[4] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnInit(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnInit";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnInit";
    v8 = 2080;
    v9 = "protocolLayerInit != __null";
    goto LABEL_9;
  }

  _Block_release(a1[5]);
  a1[5] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnInitWithConfig(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnInitWithConfig";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnInitWithConfig";
    v8 = 2080;
    v9 = "protocolLayerInitWithConfig != __null";
    goto LABEL_9;
  }

  _Block_release(a1[6]);
  a1[6] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnDeinit(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnDeinit";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnDeinit";
    v8 = 2080;
    v9 = "protocolLayerDeinit != __null";
    goto LABEL_9;
  }

  _Block_release(a1[7]);
  a1[7] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnOpen(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnOpen";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnOpen";
    v8 = 2080;
    v9 = "protocolLayerOpen != __null";
    goto LABEL_9;
  }

  _Block_release(a1[8]);
  a1[8] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnOpenNullable(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnOpenNullable";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnOpenNullable";
    v8 = 2080;
    v9 = "protocolLayerOpenNullable != __null";
    goto LABEL_9;
  }

  _Block_release(a1[9]);
  a1[9] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnClose(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnClose";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnClose";
    v8 = 2080;
    v9 = "protocolLayerClose != __null";
    goto LABEL_9;
  }

  _Block_release(a1[10]);
  a1[10] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnDisconnect(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnDisconnect";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnDisconnect";
    v8 = 2080;
    v9 = "protocolLayerDisconnect != __null";
    goto LABEL_9;
  }

  _Block_release(a1[11]);
  a1[11] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnSend(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnSend";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnSend";
    v8 = 2080;
    v9 = "protocolLayerSend != __null";
    goto LABEL_9;
  }

  _Block_release(a1[12]);
  a1[12] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnUpdate(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnUpdate";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnUpdate";
    v8 = 2080;
    v9 = "protocolLayerUpdate != __null";
    goto LABEL_9;
  }

  _Block_release(a1[13]);
  a1[13] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnWait(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnWait";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnWait";
    v8 = 2080;
    v9 = "protocolLayerWait != __null";
    goto LABEL_9;
  }

  _Block_release(a1[14]);
  a1[14] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnWakeup(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnWakeup";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnWakeup";
    v8 = 2080;
    v9 = "protocolLayerWakeup != __null";
    goto LABEL_9;
  }

  _Block_release(a1[15]);
  a1[15] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnLocalAddresses(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnLocalAddresses";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnLocalAddresses";
    v8 = 2080;
    v9 = "protocolLayerLocalAddresses != __null";
    goto LABEL_9;
  }

  _Block_release(a1[16]);
  a1[16] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnHostStats(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnHostStats";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnHostStats";
    v8 = 2080;
    v9 = "protocolLayerHostStats != __null";
    goto LABEL_9;
  }

  _Block_release(a1[17]);
  a1[17] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnSetDisconnectTimeout(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnSetDisconnectTimeout";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnSetDisconnectTimeout";
    v8 = 2080;
    v9 = "protocolLayerSetDisconnectTimeout != __null";
    goto LABEL_9;
  }

  _Block_release(a1[18]);
  a1[18] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnPreferredPacketSize(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnPreferredPacketSize";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnPreferredPacketSize";
    v8 = 2080;
    v9 = "protocolLayerPreferredPacketSize != __null";
    goto LABEL_9;
  }

  _Block_release(a1[19]);
  a1[19] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

void RESyncProtocolLayerObserverOnSetListener(const void **a1, const void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnSetListener";
    v8 = 2080;
    v9 = "observer != __null";
LABEL_9:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    goto LABEL_4;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v6 = 136315394;
    v7 = "RESyncProtocolLayerObserverOnSetListener";
    v8 = 2080;
    v9 = "protocolLayerSetListener != __null";
    goto LABEL_9;
  }

  _Block_release(a1[20]);
  a1[20] = _Block_copy(a2);
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncProtocolLayerConfigGetPacketPool(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 24);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncProtocolLayerConfigGetPacketPool";
      v6 = 2080;
      v7 = "config != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncProtocolLayerConfigGetNetworkQueue(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 32);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncProtocolLayerConfigGetNetworkQueue";
      v6 = 2080;
      v7 = "config != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncCreateDefaultProtocolLayerTCP(_anonymous_namespace_ *a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0x10000)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) listenPort %u exceeds numeric limits of type Port", "!overflow", "RESyncCreateDefaultProtocolLayerTCP", 513, a1);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v7 = 128;
    v10 = v2;
    v4 = re::globalAllocators(v3);
    v5 = (*(*v4[2] + 32))(v4[2], 208, 8);
    re::TcpProtocolLayer::TcpProtocolLayer(v5, &v7);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }

    return v5;
  }

  return result;
}

uint64_t RESyncCreateDefaultProtocolLayerNW(_anonymous_namespace_ *a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0x10000)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) listenPort %u exceeds numeric limits of type Port", "!overflow", "RESyncCreateDefaultProtocolLayerNW", 524, a1);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    re::DynamicString::setCapacity(&v7, 0);
    v12 = 0;
    v13 = 0;
    v6[0] = 1;
    v11 = v2;
    re::make::shared::object<re::NWProtocolLayer,re::NWProtocolLayer::Config &>(&v5, v6);
    v3 = v5;
    if (v7)
    {
      if (v8)
      {
        (*(*v7 + 40))();
      }
    }

    return v3;
  }

  return result;
}

uint64_t RESyncCreateProtocolLayerNWWithoutListener(_anonymous_namespace_ *a1)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  re::DynamicString::setCapacity(&v5, 0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v4[0] = 0;
  re::make::shared::object<re::NWProtocolLayer,re::NWProtocolLayer::Config &>(&v3, v4);
  v1 = v3;
  if (v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  return v1;
}

uint64_t RESyncCustomProtocolLayerCreate(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1 + 1;
    if ((a1[5] == 0) == (a1[6] != 0))
    {
      if (a1[7])
      {
        if ((a1[8] == 0) == (a1[9] != 0))
        {
          if (a1[10])
          {
            if (a1[11])
            {
              if (!a1[12] && !a1[13])
              {
                v11 = *re::networkLogObjects(v2);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  v12 = 136315394;
                  v13 = "RESyncCustomProtocolLayerCreate";
                  v14 = 2080;
                  v15 = "RESyncProtocolLayerObserverOnUpdate() observer implementation is required.";
                  goto LABEL_44;
                }

                goto LABEL_45;
              }

              if ((a1[14] == 0) == (a1[15] == 0))
              {
                if (a1[16])
                {
                  if (a1[17])
                  {
                    if (a1[18])
                    {
                      if (a1[19])
                      {
                        v3 = re::globalAllocators(v2);
                        v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
                        ArcSharedObject::ArcSharedObject(v4, 0);
                        *(v4 + 24) = a1;
                        *v4 = &unk_2873F4690;
                        v5 = a1 + 1;
                        v6 = *(v4 + 24);
                        *(v4 + 32) = 0;
                        *(v4 + 40) = 0;
                        *(v4 + 48) = 850045863;
                        *(v4 + 88) = 0u;
                        *(v4 + 72) = 0u;
                        *(v4 + 56) = 0u;
                        *(v4 + 104) = 0;
                        *(v4 + 112) = 1018212795;
                        *(v4 + 120) = 0u;
                        *(v4 + 136) = 0u;
                        *(v4 + 152) = 0;
                        v7 = *(v6 + 24);
                        if (v7)
                        {
                          (*(v7 + 16))();
                        }

                        goto LABEL_17;
                      }

                      v11 = *re::networkLogObjects(v2);
                      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                      {
                        v12 = 136315394;
                        v13 = "RESyncCustomProtocolLayerCreate";
                        v14 = 2080;
                        v15 = "RESyncProtocolLayerObserverOnPreferredPacketSize() observer implementation is required.";
                        goto LABEL_44;
                      }

LABEL_45:
                      v4 = 0;
LABEL_17:

                      goto LABEL_18;
                    }

                    v11 = *re::networkLogObjects(v2);
                    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_45;
                    }

                    v12 = 136315394;
                    v13 = "RESyncCustomProtocolLayerCreate";
                    v14 = 2080;
                    v15 = "RESyncProtocolLayerObserverOnSetDisconnectTimeout() observer implementation is required.";
                  }

                  else
                  {
                    v11 = *re::networkLogObjects(v2);
                    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_45;
                    }

                    v12 = 136315394;
                    v13 = "RESyncCustomProtocolLayerCreate";
                    v14 = 2080;
                    v15 = "RESyncProtocolLayerObserverOnHostStats() observer implementation is required.";
                  }
                }

                else
                {
                  v11 = *re::networkLogObjects(v2);
                  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_45;
                  }

                  v12 = 136315394;
                  v13 = "RESyncCustomProtocolLayerCreate";
                  v14 = 2080;
                  v15 = "RESyncProtocolLayerObserverOnLocalAddresses() observer implementation is required.";
                }
              }

              else
              {
                v11 = *re::networkLogObjects(v2);
                if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_45;
                }

                v12 = 136315394;
                v13 = "RESyncCustomProtocolLayerCreate";
                v14 = 2080;
                v15 = "None or both RESyncProtocolLayerObserverOnWait() and RESyncProtocolLayerObserverOnWakeup() observer implementations are required.";
              }
            }

            else
            {
              v11 = *re::networkLogObjects(v2);
              if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_45;
              }

              v12 = 136315394;
              v13 = "RESyncCustomProtocolLayerCreate";
              v14 = 2080;
              v15 = "RESyncProtocolLayerObserverOnDisconnect() observer implementation is required.";
            }
          }

          else
          {
            v11 = *re::networkLogObjects(v2);
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_45;
            }

            v12 = 136315394;
            v13 = "RESyncCustomProtocolLayerCreate";
            v14 = 2080;
            v15 = "RESyncProtocolLayerObserverOnClose() observer implementation is required.";
          }
        }

        else
        {
          v11 = *re::networkLogObjects(v2);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          v12 = 136315394;
          v13 = "RESyncCustomProtocolLayerCreate";
          v14 = 2080;
          v15 = "Either RESyncProtocolLayerObserverOnOpen() or RESyncProtocolLayerObserverOnOpenNullable() observer implementation is required.";
        }
      }

      else
      {
        v11 = *re::networkLogObjects(v2);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        v12 = 136315394;
        v13 = "RESyncCustomProtocolLayerCreate";
        v14 = 2080;
        v15 = "RESyncProtocolLayerObserverOnDeinit() observer implementation is required.";
      }
    }

    else
    {
      v11 = *re::networkLogObjects(v2);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v12 = 136315394;
      v13 = "RESyncCustomProtocolLayerCreate";
      v14 = 2080;
      v15 = "Either RESyncProtocolLayerObserverOnInit() or RESyncProtocolLayerObserverOnInitWithConfig() observer implementation is required.";
    }

LABEL_44:
    _os_log_error_impl(&dword_26168F000, v11, OS_LOG_TYPE_ERROR, "%s: %s", &v12, 0x16u);
    goto LABEL_45;
  }

  v10 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "RESyncCustomProtocolLayerCreate";
    v14 = 2080;
    v15 = "observer != __null";
    _os_log_error_impl(&dword_26168F000, v10, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v12, 0x16u);
  }

  v4 = 0;
LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void RESyncCustomProtocolLayerSetThreadModeDispatchTransport(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 40) = 2;
  }

  else
  {
    v2 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "RESyncCustomProtocolLayerSetThreadModeDispatchTransport";
      v5 = 2080;
      v6 = "protocolLayer != __null";
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

void RESyncCustomProtocolLayerOnConnected(re *a1, uint64_t a2, const char *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    *&buf[4] = "RESyncCustomProtocolLayerOnConnected";
    *&buf[12] = 2080;
    *&buf[14] = "protocolLayer != __null";
LABEL_16:
    _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    goto LABEL_11;
  }

  if (!a2)
  {
    v8 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    *&buf[4] = "RESyncCustomProtocolLayerOnConnected";
    *&buf[12] = 2080;
    *&buf[14] = "handle != __null";
    goto LABEL_16;
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    re::DynamicString::DynamicString(buf, &v9);
    (**v5)(v5, a1, a2, buf);
    if (*buf)
    {
      if (buf[8])
      {
        (*(**buf + 40))();
      }

      memset(buf, 0, 32);
    }

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
}

void RESyncCustomProtocolLayerOnDisconnected(re *a1, uint64_t a2, const char *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    *&buf[4] = "RESyncCustomProtocolLayerOnDisconnected";
    *&buf[12] = 2080;
    *&buf[14] = "protocolLayer != __null";
LABEL_16:
    _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    goto LABEL_11;
  }

  if (!a2)
  {
    v8 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    *&buf[4] = "RESyncCustomProtocolLayerOnDisconnected";
    *&buf[12] = 2080;
    *&buf[14] = "handle != __null";
    goto LABEL_16;
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    re::DynamicString::DynamicString(buf, &v9);
    (*(*v5 + 8))(v5, a1, a2, buf);
    if (*buf)
    {
      if (buf[8])
      {
        (*(**buf + 40))();
      }

      memset(buf, 0, 32);
    }

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
}

void RESyncCustomProtocolLayerOnError(re *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = 136315394;
    v8 = "RESyncCustomProtocolLayerOnError";
    v9 = 2080;
    v10 = "protocolLayer != __null";
LABEL_12:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v7, 0x16u);
    goto LABEL_10;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = 136315394;
    v8 = "RESyncCustomProtocolLayerOnError";
    v9 = 2080;
    v10 = "handle != __null";
    goto LABEL_12;
  }

  v2 = *(a1 + 4);
  if (!v2)
  {
LABEL_10:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = *(*v2 + 16);
  v4 = *MEMORY[0x277D85DE8];

  v3();
}

void RESyncCustomProtocolLayerOnReceiveData(re *a1, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = 136315394;
    v9 = "RESyncCustomProtocolLayerOnReceiveData";
    v10 = 2080;
    v11 = "protocolLayer != __null";
LABEL_15:
    _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v8, 0x16u);
    goto LABEL_13;
  }

  if (!a2)
  {
    v6 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = 136315394;
    v9 = "RESyncCustomProtocolLayerOnReceiveData";
    v10 = 2080;
    v11 = "fromHandle != __null";
    goto LABEL_15;
  }

  if (a3 >= 0xA)
  {
    v6 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = 136315394;
    v9 = "RESyncCustomProtocolLayerOnReceiveData";
    v10 = 2080;
    v11 = "channel < kRESyncChannelIdMaxChannels";
    goto LABEL_15;
  }

  v3 = *(a1 + 4);
  if (!v3)
  {
LABEL_13:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(*v3 + 24);
  v5 = *MEMORY[0x277D85DE8];

  v4();
}

void RESyncCustomProtocolLayerOnReceiveDataNoAsync(re *a1, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = 136315394;
    v9 = "RESyncCustomProtocolLayerOnReceiveDataNoAsync";
    v10 = 2080;
    v11 = "protocolLayer != __null";
LABEL_15:
    _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v8, 0x16u);
    goto LABEL_13;
  }

  if (!a2)
  {
    v6 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = 136315394;
    v9 = "RESyncCustomProtocolLayerOnReceiveDataNoAsync";
    v10 = 2080;
    v11 = "fromHandle != __null";
    goto LABEL_15;
  }

  if (a3 >= 0xA)
  {
    v6 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = 136315394;
    v9 = "RESyncCustomProtocolLayerOnReceiveDataNoAsync";
    v10 = 2080;
    v11 = "channel < kRESyncChannelIdMaxChannels";
    goto LABEL_15;
  }

  v3 = *(a1 + 4);
  if (!v3)
  {
LABEL_13:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(*v3 + 32);
  v5 = *MEMORY[0x277D85DE8];

  v4();
}

void RESyncCustomProtocolLayerOnUnresponsive(re *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = 136315394;
    v8 = "RESyncCustomProtocolLayerOnUnresponsive";
    v9 = 2080;
    v10 = "protocolLayer != __null";
LABEL_12:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v7, 0x16u);
    goto LABEL_10;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = 136315394;
    v8 = "RESyncCustomProtocolLayerOnUnresponsive";
    v9 = 2080;
    v10 = "handle != __null";
    goto LABEL_12;
  }

  v2 = *(a1 + 4);
  if (!v2)
  {
LABEL_10:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = *(*v2 + 40);
  v4 = *MEMORY[0x277D85DE8];

  v3();
}

void RESyncCustomProtocolLayerOnResponsive(re *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = 136315394;
    v8 = "RESyncCustomProtocolLayerOnResponsive";
    v9 = 2080;
    v10 = "protocolLayer != __null";
LABEL_12:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v7, 0x16u);
    goto LABEL_10;
  }

  if (!a2)
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v7 = 136315394;
    v8 = "RESyncCustomProtocolLayerOnResponsive";
    v9 = 2080;
    v10 = "handle != __null";
    goto LABEL_12;
  }

  v2 = *(a1 + 4);
  if (!v2)
  {
LABEL_10:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = *(*v2 + 48);
  v4 = *MEMORY[0x277D85DE8];

  v3();
}

char *RESyncPacketPoolAllocPacket(re::PacketPool *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *MEMORY[0x277D85DE8];

    return re::PacketPool::allocate(a1, a2);
  }

  else
  {
    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "RESyncPacketPoolAllocPacket";
      v8 = 2080;
      v9 = "pool != __null";
      _os_log_error_impl(&dword_26168F000, v4, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    }

    v5 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

void RESyncPacketPoolFreePacket(re *a1, re::Packet *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v4 = *MEMORY[0x277D85DE8];
      return;
    }

    v5 = 136315394;
    v6 = "RESyncPacketPoolFreePacket";
    v7 = 2080;
    v8 = "pool != __null";
LABEL_11:
    _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v5, 0x16u);
    goto LABEL_9;
  }

  if (!a2)
  {
    v3 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v5 = 136315394;
    v6 = "RESyncPacketPoolFreePacket";
    v7 = 2080;
    v8 = "packet != __null";
    goto LABEL_11;
  }

  v2 = *MEMORY[0x277D85DE8];

  re::PacketPool::free(a1, a2);
}

_anonymous_namespace_::AddressList *RESyncAddressListCreate(re *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 && a2)
  {
    v8 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "RESyncAddressListCreate";
      v11 = 2080;
      v12 = "addresses != __null || addressesCount == 0";
      _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v9, 0x16u);
    }

    result = 0;
  }

  else
  {
    v4 = re::globalAllocators(a1);
    v5 = (*(*v4[2] + 32))(v4[2], 64, 8);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

_anonymous_namespace_::AddressList *RESyncAddressListCreateWithAddress(char *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a1;
  if (a1)
  {
    v1 = re::globalAllocators(a1);
    v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  }

  else
  {
    v5 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "RESyncAddressListCreateWithAddress";
      v9 = 2080;
      v10 = "address != __null";
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    }

    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncAddressListGetAddressAtIndex(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "RESyncAddressListGetAddressAtIndex";
      v8 = 2080;
      v9 = "addressList != __null";
      _os_log_error_impl(&dword_26168F000, v4, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v6, 0x16u);
    }

    goto LABEL_8;
  }

  if (*(a1 + 40) <= a2)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v2 = *(a1 + 56) + 32 * a2;
  if (*(v2 + 8))
  {
    result = *(v2 + 16);
  }

  else
  {
    result = v2 + 9;
  }

LABEL_9:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncAddressListGetSize(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 40);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncAddressListGetSize";
      v6 = 2080;
      v7 = "addressList != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncPacketGetData(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 16);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncPacketGetData";
      v6 = 2080;
      v7 = "packet != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncPacketGetSize(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 24);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4 = 136315394;
      v5 = "RESyncPacketGetSize";
      v6 = 2080;
      v7 = "packet != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
      result = 0;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncPacketSetSize(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 24) = a2;
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncPacketSetSize";
      v6 = 2080;
      v7 = "packet != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncPacketGetCapacity(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 28);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4 = 136315394;
      v5 = "RESyncPacketGetCapacity";
      v6 = 2080;
      v7 = "packet != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
      result = 0;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncPacketGetDeliveryMethod(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 32);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4 = 136315394;
      v5 = "RESyncPacketGetDeliveryMethod";
      v6 = 2080;
      v7 = "packet != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
      result = 0;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

re::ProtocolHandle *RESyncProtocolHandleCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 1768, 8);
  bzero(v2, 0x6E8uLL);

  return re::ProtocolHandle::ProtocolHandle(v2);
}

uint64_t RESyncProtocolHandleGetConnection(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 24);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncProtocolHandleGetConnection";
      v6 = 2080;
      v7 = "handle != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncProtocolHandleConnectionSetStats(uint64_t a1, int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v7 = *MEMORY[0x277D85DE8];
      return;
    }

    *buf = 136315394;
    v10 = "RESyncProtocolHandleConnectionSetStats";
    v11 = 2080;
    v12 = "handle != __null";
LABEL_11:
    _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    goto LABEL_9;
  }

  if (!a2)
  {
    v6 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315394;
    v10 = "RESyncProtocolHandleConnectionSetStats";
    v11 = 2080;
    v12 = "stats != __null";
    goto LABEL_11;
  }

  v3 = *a2;
  v4 = a2[1];
  v8 = *(a2 + 2);
  os_unfair_lock_lock((a1 + 1760));
  *(a1 + 1736) = v3;
  *(a1 + 1740) = v4;
  *(a1 + 1744) = v8;
  v5 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock((a1 + 1760));
}

void RESyncProtocolHandleConnectionGetStats(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 1760));
    v4 = *(a1 + 1736);
    v5 = *(a1 + 1740);
    v8 = *(a1 + 1744);
    os_unfair_lock_unlock((a1 + 1760));
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v8;
  }

  else
  {
    v7 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "RESyncProtocolHandleConnectionGetStats";
      v11 = 2080;
      v12 = "handle != __null";
      _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncProtocolHandleGetUserData(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 1728);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncProtocolHandleGetUserData";
      v6 = 2080;
      v7 = "handle != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncProtocolHandleSetUserData(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 1728) = a2;
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncProtocolHandleSetUserData";
      v6 = 2080;
      v7 = "handle != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncProtocolHandleQueueDeqeue(re *a1, unsigned int a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "RESyncProtocolHandleQueueDeqeue";
      v10 = 2080;
      v11 = "handle != __null";
      goto LABEL_17;
    }

LABEL_15:
    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (a3 >= 0xA)
  {
    v6 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "RESyncProtocolHandleQueueDeqeue";
      v10 = 2080;
      v11 = "channelId < kRESyncChannelIdMaxChannels";
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a2 >= 2)
  {
    v6 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = 136315394;
    v9 = "RESyncProtocolHandleQueueDeqeue";
    v10 = 2080;
    v11 = "type == kRESyncPacketQueueTypeSend || type == kRESyncPacketQueueTypeReceive";
LABEL_17:
    _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v8, 0x16u);
    goto LABEL_15;
  }

  v3 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = (a1 + 40 * a3 + 1312);
  }

  else
  {
    v4 = (a1 + 40 * a3 + 912);
  }

  return re::PacketQueue::dequeue(v4);
}

void RESyncProtocolHandleQueueEnqeue(re *a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v8 = 136315394;
    v9 = "RESyncProtocolHandleQueueEnqeue";
    v10 = 2080;
    v11 = "handle != __null";
LABEL_17:
    _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v8, 0x16u);
    goto LABEL_8;
  }

  if (a3 >= 0xA)
  {
    v7 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v8 = 136315394;
    v9 = "RESyncProtocolHandleQueueEnqeue";
    v10 = 2080;
    v11 = "channelId < kRESyncChannelIdMaxChannels";
    goto LABEL_17;
  }

  if (a2 >= 2)
  {
    v7 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v8 = 136315394;
    v9 = "RESyncProtocolHandleQueueEnqeue";
    v10 = 2080;
    v11 = "type == kRESyncPacketQueueTypeSend || type == kRESyncPacketQueueTypeReceive";
    goto LABEL_17;
  }

  if (!a4)
  {
    v7 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v8 = 136315394;
    v9 = "RESyncProtocolHandleQueueEnqeue";
    v10 = 2080;
    v11 = "_packet != __null";
    goto LABEL_17;
  }

  v4 = *(a4 + 24);
  v5 = a1 + 40 * a3;
  if (a2)
  {
    atomic_fetch_add_explicit(v5 + 334, v4, memory_order_release);
    atomic_fetch_add_explicit(v5 + 168, *(a4 + 28), memory_order_release);
    atomic_fetch_add_explicit(v5 + 166, 1uLL, memory_order_release);
    atomic_store(a4, *(v5 + 164));
    *(v5 + 164) = a4;
  }

  else
  {
    atomic_fetch_add_explicit(v5 + 234, v4, memory_order_release);
    atomic_fetch_add_explicit(v5 + 118, *(a4 + 28), memory_order_release);
    atomic_fetch_add_explicit(v5 + 116, 1uLL, memory_order_release);
    atomic_store(a4, *(v5 + 114));
    *(v5 + 114) = a4;
  }

LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncProtocolHandleQueueGetSizeInBytes(re *a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      result = 0;
      goto LABEL_9;
    }

    v9 = 136315394;
    v10 = "RESyncProtocolHandleQueueGetSizeInBytes";
    v11 = 2080;
    v12 = "handle != __null";
LABEL_15:
    _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v9, 0x16u);
    goto LABEL_13;
  }

  if (a2 >= 2)
  {
    v8 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v9 = 136315394;
    v10 = "RESyncProtocolHandleQueueGetSizeInBytes";
    v11 = 2080;
    v12 = "type == kRESyncPacketQueueTypeSend || type == kRESyncPacketQueueTypeReceive";
    goto LABEL_15;
  }

  v3 = 0;
  result = 0;
  if (a2)
  {
    v5 = a1 + 1336;
    do
    {
      result += atomic_load_explicit(&v5[v3], memory_order_acquire);
      v3 += 40;
    }

    while (v3 != 400);
  }

  else
  {
    v6 = a1 + 936;
    do
    {
      result += atomic_load_explicit(&v6[v3], memory_order_acquire);
      v3 += 40;
    }

    while (v3 != 400);
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncProtocolHandleQueueGetCapacityInBytes(re *a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      result = 0;
      goto LABEL_9;
    }

    v9 = 136315394;
    v10 = "RESyncProtocolHandleQueueGetCapacityInBytes";
    v11 = 2080;
    v12 = "handle != __null";
LABEL_15:
    _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v9, 0x16u);
    goto LABEL_13;
  }

  if (a2 >= 2)
  {
    v8 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v9 = 136315394;
    v10 = "RESyncProtocolHandleQueueGetCapacityInBytes";
    v11 = 2080;
    v12 = "type == kRESyncPacketQueueTypeSend || type == kRESyncPacketQueueTypeReceive";
    goto LABEL_15;
  }

  v3 = 0;
  result = 0;
  if (a2)
  {
    v5 = a1 + 1344;
    do
    {
      result += atomic_load_explicit(&v5[v3], memory_order_acquire);
      v3 += 40;
    }

    while (v3 != 400);
  }

  else
  {
    v6 = a1 + 944;
    do
    {
      result += atomic_load_explicit(&v6[v3], memory_order_acquire);
      v3 += 40;
    }

    while (v3 != 400);
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t RESyncProtocolHandleQueueGetSize(re *a1, unsigned int a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "RESyncProtocolHandleQueueGetSize";
      v10 = 2080;
      v11 = "handle != __null";
      goto LABEL_16;
    }

LABEL_14:
    result = 0;
    goto LABEL_8;
  }

  if (a3 >= 0xA)
  {
    v7 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "RESyncProtocolHandleQueueGetSize";
      v10 = 2080;
      v11 = "channelId < kRESyncChannelIdMaxChannels";
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (a2 >= 2)
  {
    v7 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v8 = 136315394;
    v9 = "RESyncProtocolHandleQueueGetSize";
    v10 = 2080;
    v11 = "type == kRESyncPacketQueueTypeSend || type == kRESyncPacketQueueTypeReceive";
LABEL_16:
    _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v8, 0x16u);
    goto LABEL_14;
  }

  v3 = a1 + 40 * a3;
  if (a2)
  {
    v4 = (v3 + 1328);
  }

  else
  {
    v4 = (v3 + 928);
  }

  result = atomic_load_explicit(v4, memory_order_acquire);
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

re::ProtocolHandle *re::ProtocolHandle::ProtocolHandle(re::ProtocolHandle *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_2873F4818;
  for (i = 32; i != 432; i += 40)
  {
    re::PacketQueue::PacketQueue((this + i));
  }

  for (j = 0; j != 480; j += 48)
  {
    v4 = this + j;
    *(v4 + 116) = 0;
    *(v4 + 27) = 0uLL;
    *(v4 + 28) = 0uLL;
    *(this + j + 468) = 0x7FFFFFFFLL;
  }

  for (k = 912; k != 1312; k += 40)
  {
    re::PacketQueue::PacketQueue((this + k));
  }

  do
  {
    re::PacketQueue::PacketQueue((this + k));
    k += 40;
  }

  while (k != 1712);
  *(this + 220) = 0;
  *(this + 214) = 0;
  *(this + 216) = 0;
  *(this + 215) = 0;
  return this;
}

void re::ProtocolHandle::~ProtocolHandle(re::ProtocolHandle *this)
{
  re::ProtocolHandle::~ProtocolHandle(this);

  JUMPOUT(0x266708EC0);
}

{
  *this = &unk_2873F4818;
  for (i = 1672; i != 1272; i -= 40)
  {
    re::PacketQueue::~PacketQueue((this + i));
  }

  do
  {
    re::PacketQueue::~PacketQueue((this + i));
    i -= 40;
  }

  while (i != 872);
  for (j = 864; j != 384; j -= 48)
  {
    re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit((this + j));
  }

  for (k = 392; k != -8; k -= 40)
  {
    re::PacketQueue::~PacketQueue((this + k));
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

double re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit((v6 + v4 + 32));
          re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit((v8 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 80;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void anonymous namespace::ProtocolLayerObserver::~ProtocolLayerObserver(const void **this)
{
  *this = &unk_2873F4648;
  _Block_release(this[3]);
  _Block_release(this[4]);
  _Block_release(this[5]);
  _Block_release(this[6]);
  _Block_release(this[7]);
  _Block_release(this[8]);
  _Block_release(this[9]);
  _Block_release(this[10]);
  _Block_release(this[11]);
  _Block_release(this[12]);
  _Block_release(this[13]);
  _Block_release(this[14]);
  _Block_release(this[15]);
  _Block_release(this[16]);
  _Block_release(this[17]);
  _Block_release(this[18]);
  _Block_release(this[19]);
  _Block_release(this[20]);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);
}

{

  JUMPOUT(0x266708EC0);
}

uint64_t re::make::shared::object<re::NWProtocolLayer,re::NWProtocolLayer::Config &>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 224, 8);
  result = re::NWProtocolLayer::NWProtocolLayer(v5, a2);
  *a1 = result;
  return result;
}

re::DebugProtocolLayer *re::make::shared::object<re::DebugProtocolLayer>@<X0>(re *a1@<X0>, re::DebugProtocolLayer **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::DebugProtocolLayer::DebugProtocolLayer(v4);
  *a2 = result;
  return result;
}

void anonymous namespace::SyncCustomProtocolLayer::~SyncCustomProtocolLayer(_anonymous_namespace_::SyncCustomProtocolLayer *this)
{
  v2 = *(*(this + 3) + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  std::condition_variable::~condition_variable((this + 112));
  std::mutex::~mutex((this + 48));
  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

uint64_t anonymous namespace::SyncCustomProtocolLayer::init(re *a1, int8x16_t *a2)
{
  v3 = *(a1 + 3);
  if (*(v3 + 48))
  {
    v5 = re::globalAllocators(a1);
    v6 = (*(*v5[2] + 32))(v5[2], 40, 8);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;
    ArcSharedObject::ArcSharedObject(v6, 0);
    *v6 = &unk_2873F4758;
    *(v6 + 24) = vextq_s8(*a2, *a2, 8uLL);
    v7 = (*(*(*(a1 + 3) + 48) + 16))();

    return v7;
  }

  else
  {
    v9 = a2->i64[1];
    v10 = *(*(v3 + 40) + 16);

    return v10();
  }
}

uint64_t anonymous namespace::SyncCustomProtocolLayer::deinit(_anonymous_namespace_::SyncCustomProtocolLayer *this)
{
  result = (*(*(*(this + 3) + 56) + 16))();
  *(this + 4) = 0;
  return result;
}

char *anonymous namespace::SyncCustomProtocolLayer::open@<X0>(_anonymous_namespace_::SyncCustomProtocolLayer *this@<X0>, const Address *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 3);
  v5 = *(v4 + 64);
  if (!v5)
  {
    v5 = *(v4 + 72);
  }

  if (a2->var0.var1.var0.var0.var1)
  {
    var1 = a2->var0.var1.var0.var1;
  }

  else
  {
    var1 = a2->var0.var1.var1.var2;
  }

  result = (*(v5 + 16))(v5, var1);
  *a3 = result;
  if (result)
  {
    v8 = result + 8;

    return v8;
  }

  return result;
}

uint64_t anonymous namespace::SyncCustomProtocolLayer::send(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 24) + 96);
  v5 = MEMORY[0x277D85DD0];
  v6 = 0x40000000;
  v7 = ___ZN12_GLOBAL__N_123SyncCustomProtocolLayer4sendEPN2re14ProtocolHandleERNS2_10PacketSinkE_block_invoke;
  v8 = &__block_descriptor_tmp_2;
  v9 = a3;
  return (*(v3 + 16))();
}

uint64_t anonymous namespace::SyncCustomProtocolLayer::update(_anonymous_namespace_::SyncCustomProtocolLayer *this)
{
  result = *(*(this + 3) + 104);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void anonymous namespace::SyncCustomProtocolLayer::wait(_anonymous_namespace_::SyncCustomProtocolLayer *this)
{
  v2 = *(*(this + 3) + 112);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    v4.__m_ = (this + 48);
    v4.__owns_ = 1;
    std::mutex::lock((this + 48));
    std::condition_variable::wait((this + 112), &v4);
    if (v4.__owns_)
    {
      std::mutex::unlock(v4.__m_);
    }
  }
}

void anonymous namespace::SyncCustomProtocolLayer::wakeup(_anonymous_namespace_::SyncCustomProtocolLayer *this)
{
  v2 = *(*(this + 3) + 120);
  if (v2)
  {
    (*(v2 + 16))();
  }

  else
  {
    std::condition_variable::notify_all((this + 112));
  }
}

uint64_t anonymous namespace::SyncCustomProtocolLayer::setListener(_anonymous_namespace_::SyncCustomProtocolLayer *this, ProtocolLayerListener *a2)
{
  *(this + 4) = a2;
  result = *(*(this + 3) + 160);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

unint64_t anonymous namespace::SyncCustomProtocolLayer::localAddresses(_anonymous_namespace_::SyncCustomProtocolLayer *this, re::Address *a2, unint64_t a3)
{
  v5 = (*(*(*(this + 3) + 128) + 16))();
  Size = RESyncAddressListGetSize(v5);
  v7 = Size;
  if (a2)
  {
    if (Size >= a3)
    {
      v7 = a3;
    }

    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        AddressAtIndex = RESyncAddressListGetAddressAtIndex(v5, i);
        re::DynamicString::DynamicString(v13, &v11);
        re::DynamicString::operator=(a2, v13);
        if (*&v13[0])
        {
          if (BYTE8(v13[0]))
          {
            (*(**&v13[0] + 40))();
          }

          memset(v13, 0, sizeof(v13));
        }

        if (v11 && (v12 & 1) != 0)
        {
          (*(*v11 + 40))();
        }

        a2 = (a2 + 32);
      }
    }
  }

  return v7;
}

double anonymous namespace::SyncCustomProtocolLayer::hostStats(uint64_t a1, uint64_t a2)
{
  v5 = 0uLL;
  v4 = 0;
  if ((*(*(*(a1 + 24) + 136) + 16))())
  {
    *a2 = v4;
    result = *&v5;
    *(a2 + 8) = v5;
  }

  return result;
}

void anonymous namespace::CustomProtocolLayerConfig::~CustomProtocolLayerConfig(_anonymous_namespace_::CustomProtocolLayerConfig *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void ___ZN12_GLOBAL__N_123SyncCustomProtocolLayer4sendEPN2re14ProtocolHandleERNS2_10PacketSinkE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2 != *(v2 + 1))
  {
    do
    {
      v5 = atomic_load(*(v3 + 8));
      explicit = atomic_load_explicit((*v2 + 16), memory_order_acquire);
      if (v5)
      {
        v7 = explicit + 1;
        do
        {
          if (!--v7)
          {
            break;
          }

          if (!(*(a2 + 16))(a2, v2[16], *(v5 + 16), *(v5 + 24), *(v5 + 32)))
          {
            return;
          }

          v8 = re::PacketQueue::dequeue(*v2);
          re::PacketPool::free(v8[7], v8);
          v5 = atomic_load(*(*v2 + 8));
        }

        while (v5);
      }

      v9 = *(v2 + 1);
      v3 = *v2 + 40;
      *v2 = v3;
      ++v2[16];
    }

    while (v3 != v9);
  }
}

_anonymous_namespace_::AddressList *anonymous namespace::AddressList::AddressList(_anonymous_namespace_::AddressList *this, const char **a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F47A0;
  *(this + 3) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  for (*(this + 12) = 0; a3; --a3)
  {
    v7 = *a2;
    if (*a2)
    {
      v9 = *(this + 4);
      v10 = *(this + 5);
      if (v10 >= v9)
      {
        v11 = v10 + 1;
        if (v9 < v10 + 1)
        {
          if (*(this + 3))
          {
            if (v9)
            {
              v12 = 2 * v9;
            }

            else
            {
              v12 = 8;
            }

            if (v12 <= v11)
            {
              v13 = v10 + 1;
            }

            else
            {
              v13 = v12;
            }

            re::DynamicArray<re::DynamicString>::setCapacity(this + 3, v13);
          }

          else
          {
            re::DynamicArray<re::DynamicString>::setCapacity(this + 3, v11);
            ++*(this + 12);
          }
        }

        v10 = *(this + 5);
      }

      v14 = *(this + 7) + 32 * v10;
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 24) = v23;
      v15 = v21;
      *v14 = v20;
      v16 = v22;
      v20 = 0;
      v23 = 0;
      v17 = *(v14 + 8);
      v18 = *(v14 + 16);
      *(v14 + 8) = v15;
      *(v14 + 16) = v16;
      v21 = v17;
      v22 = v18;
      ++*(this + 5);
      ++*(this + 12);
      v6 = v20;
      if (v20 && (v17 & 1) != 0)
      {
        v6 = (*(*v20 + 40))();
      }
    }

    ++a2;
  }

  return this;
}

void anonymous namespace::AddressList::~AddressList(_anonymous_namespace_::AddressList *this)
{
  *this = &unk_2873F47A0;
  re::DynamicArray<re::DynamicString>::deinit(this + 24);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F47A0;
  re::DynamicArray<re::DynamicString>::deinit(this + 24);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void *re::DynamicArray<re::DynamicString>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::DynamicString>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 32 * v9);
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 3);
          v12 = *(v8 + 1);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 2);
          *(v8 + 3) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 1) = v15;
          *(v8 + 2) = v14;
          re::DynamicString::deinit(v8);
          v8 = (v8 + 32);
          v11 += 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::DynamicString>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 32 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 32);
          v5 -= 32;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::SharedAppSyncManager::~SharedAppSyncManager(re::SharedAppSyncManager *this)
{
  v38 = *MEMORY[0x277D85DE8];
  *this = &unk_2873F4880;
  if (*(this + 448) != 1)
  {
    goto LABEL_47;
  }

  *(this + 448) = 0;
  v2 = *(this + 63);
  if (v2)
  {
    _Block_release(v2);
    *(this + 63) = 0;
  }

  v3 = *(this + 53);
  if (v3)
  {
    v35 = this;
    *&v36 = re::SharedAppSyncManager::onViewAdded;
    *(&v36 + 1) = 0;
    *&v37 = re::Event<re::SyncViewManager,re::SyncView *>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::SyncViewManager*,re::SyncView *))::{lambda(re::SyncViewManager*,re::Event<re::SyncViewManager,re::SyncView *>::Subscription const&,re::SyncView *&&)#1}::__invoke;
    re::Event<re::SyncViewManager,re::SyncView *>::removeSubscription(v3 + 24, &v35);
  }

  v4 = *(this + 51);
  if (v4[2272] != 1)
  {
    goto LABEL_47;
  }

  v5 = (*(*v4 + 40))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = (v9 + 8);
        v32 = v9;
        v11 = (v9 + 8);
        re::SharedAppSyncManager::removePeerStateForParticipant(this, &v32);

        v32 = 0;
      }

      else
      {
        v32 = 0;
        re::SharedAppSyncManager::removePeerStateForParticipant(this, &v32);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  v12 = *(this + 51);
  v13 = *(v12 + 7520);
  if (v13)
  {
    *&v33 = this;
    *(&v33 + 1) = re::SharedAppSyncManager::handleCongestionEvent;
    *&v34 = 0;
    *(&v34 + 1) = re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::PacketStatsFilter*,re::CongestionEventData const&))::{lambda(re::PacketStatsFilter*,re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::Subscription const&,re::CongestionEventData const&)#1}::__invoke;
    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v13 + 224, &v33, &v35);
    if (v35 == 1)
    {
      if (*(v13 + 304))
      {
        LOBYTE(v35) = 0;
        v36 = v33;
        v37 = v34;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v13 + 264), &v35);
      }

      else
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStable((v13 + 224), &v33);
      }
    }

    v12 = *(this + 51);
  }

  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(v12 + 2056, this);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(*(this + 51) + 1968, this);
  v14 = *(this + 51);
  if (*(v14 + 400))
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(v14 + 416) + 32 * v15);
      if (*v16 == this)
      {
        if (!*(v14 + 464))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v14 + 384), v15);
          goto LABEL_25;
        }

        LOBYTE(v35) = 0;
        v17 = *v16;
        v37 = *(v16 + 1);
        v36 = v17;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v14 + 424), &v35);
      }

      ++v15;
LABEL_25:
      if (v15 >= *(v14 + 400))
      {
        v14 = *(this + 51);
        break;
      }
    }
  }

  if (!*(v14 + 312))
  {
    goto LABEL_37;
  }

  v18 = 0;
  do
  {
    v19 = *(v14 + 328) + 32 * v18;
    if (*v19 != this)
    {
      goto LABEL_33;
    }

    if (*(v14 + 376))
    {
      LOBYTE(v35) = 0;
      v20 = *v19;
      v37 = *(v19 + 16);
      v36 = v20;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v14 + 336), &v35);
LABEL_33:
      ++v18;
      continue;
    }

    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v14 + 296), v18);
  }

  while (v18 < *(v14 + 312));
  v14 = *(this + 51);
LABEL_37:
  if (!*(v14 + 224))
  {
    goto LABEL_46;
  }

  v21 = 0;
  while (2)
  {
    v22 = (*(v14 + 240) + 32 * v21);
    if (*v22 == this)
    {
      if (*(v14 + 288))
      {
        LOBYTE(v35) = 0;
        v23 = *v22;
        v37 = *(v22 + 1);
        v36 = v23;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v14 + 248), &v35);
        goto LABEL_42;
      }

      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v14 + 208), v21);
    }

    else
    {
LABEL_42:
      ++v21;
    }

    if (v21 < *(v14 + 224))
    {
      continue;
    }

    break;
  }

  v14 = *(this + 51);
LABEL_46:
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(v14 + 120, this);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(*(this + 51) + 32, this);
LABEL_47:
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 512);
  v24 = *(this + 57);
  if (v24)
  {
    v25 = *(this + 61);
    if (v25)
    {
      v26 = *(this + 59);
      if (v26)
      {
        v27 = 8 * v26;
        do
        {
          std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>::~unique_ptr[abi:nn200100](v25);
          v25 = (v25 + 8);
          v27 -= 8;
        }

        while (v27);
        v24 = *(this + 57);
        v25 = *(this + 61);
      }

      (*(*v24 + 40))(v24, v25);
    }

    *(this + 61) = 0;
    *(this + 58) = 0;
    *(this + 59) = 0;
    *(this + 57) = 0;
    ++*(this + 120);
  }

  v28 = *(this + 53);
  if (v28)
  {

    *(this + 53) = 0;
  }

  v29 = *(this + 52);
  if (v29)
  {

    *(this + 52) = 0;
  }

  v30 = *(this + 51);
  if (v30)
  {

    *(this + 51) = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  re::SyncSession::~SyncSession(this);
}

{
  re::SharedAppSyncManager::~SharedAppSyncManager(this);

  JUMPOUT(0x266708EC0);
}

void re::SharedAppSyncManager::init(uint64_t a1, __int128 *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 4);
  v5 = *(v4 + 2832);
  v6 = *(a2 + 5);
  if (v6 >= v5)
  {
    v6 = *(v4 + 2832);
  }

  if (v5 >= *(a2 + 4))
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a2 + 4);
  }

  *(a1 + 496) = v7;
  *(a1 + 500) = *(v4 + 2232);
  v8 = *a2;
  *(a1 + 385) = *(a2 + 9);
  *(a1 + 376) = v8;
  re::SharedPtr<re::SyncObject>::reset((a1 + 408), *(a2 + 4));
  re::SharedPtr<re::SyncObject>::reset((a1 + 416), *(a2 + 5));
  re::SharedPtr<re::SyncObject>::reset((a1 + 424), *(a2 + 6));
  v9 = *(a2 + 7);
  *(a1 + 440) = *(a2 + 16);
  *(a1 + 432) = v9;
  v10 = (*(**(a1 + 408) + 40))(*(a1 + 408));
  if (v11)
  {
    v12 = v10;
    v13 = 8 * v11;
    do
    {
      v14 = *v12;
      if (*v12)
      {
        v15 = (v14 + 8);
      }

      v16 = *(v14 + 152);
      if (v16 && ((*(*v16 + 48))(v16) & 1) == 0)
      {
        v28 = v14;
        v17 = (v14 + 8);
        re::SharedAppSyncManager::addPeerStateForParticipant(a1, &v28);

        v28 = 0;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v18 = *(a1 + 408);
  v29 = a1;
  v30 = re::SharedAppSyncManager::onSessionWillDeinit;
  v31 = 0;
  v32 = re::Event<re::Session>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v18 + 32), &v29);
  v19 = *(a1 + 408);
  v29 = a1;
  v30 = re::SharedAppSyncManager::onSessionStarted;
  v31 = 0;
  v32 = re::Event<re::Session>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v19 + 120), &v29);
  v20 = *(a1 + 408);
  v29 = a1;
  v30 = re::SharedAppSyncManager::onSessionStopped;
  v31 = 0;
  v32 = re::Event<re::Session,re::SessionError>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v20 + 208), &v29);
  v21 = *(a1 + 408);
  v29 = a1;
  v30 = re::SharedAppSyncManager::onPeerJoined;
  v31 = 0;
  v32 = re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v21 + 296), &v29);
  v22 = *(a1 + 408);
  v29 = a1;
  v30 = re::SharedAppSyncManager::onPeerLeft;
  v31 = 0;
  v32 = re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>,re::ParticipantError))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&,re::ParticipantError&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v22 + 384), &v29);
  v23 = *(a1 + 408);
  v29 = a1;
  v30 = re::SharedAppSyncManager::onPeerPaused;
  v31 = 0;
  v32 = re::Event<re::Session,unsigned long long>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v23 + 1968), &v29);
  v24 = *(a1 + 408);
  v29 = a1;
  v30 = re::SharedAppSyncManager::onPeerResumed;
  v31 = 0;
  v32 = re::Event<re::Session,unsigned long long>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v24 + 2056), &v29);
  v25 = *(*(a1 + 408) + 7520);
  if (v25)
  {
    v29 = a1;
    v30 = re::SharedAppSyncManager::handleCongestionEvent;
    v31 = 0;
    v32 = re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::PacketStatsFilter*,re::CongestionEventData const&))::{lambda(re::PacketStatsFilter*,re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::Subscription const&,re::CongestionEventData const&)#1}::__invoke;
    re::Event<re::Session>::addSubscription((v25 + 224), &v29);
  }

  v26 = *(a1 + 424);
  if (v26)
  {
    v29 = a1;
    v30 = re::SharedAppSyncManager::onViewAdded;
    v31 = 0;
    v32 = re::Event<re::SyncViewManager,re::SyncView *>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::SyncViewManager*,re::SyncView *))::{lambda(re::SyncViewManager*,re::Event<re::SyncViewManager,re::SyncView *>::Subscription const&,re::SyncView *&&)#1}::__invoke;
    re::Event<re::Session>::addSubscription((v26 + 24), &v29);
  }

  *(a1 + 448) = 1;
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t (***re::SharedAppSyncManager::setViewFilter(uint64_t a1, void *aBlock))(void)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 504);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = _Block_copy(aBlock);
  *(a1 + 504) = v5;
  v6 = *(a1 + 424);
  v7 = re::globalAllocators(v5)[2];
  v10[0] = &unk_2873F4948;
  v10[1] = a1;
  v10[3] = v7;
  v10[4] = v10;
  re::SyncViewManager::forEachView(v6, v10);
  result = re::FunctionBase<24ul,void ()(re::SyncView *)>::destroyCallable(v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

re *re::SharedAppSyncManager::addPeerStateForParticipant(uint64_t a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *(*a2 + 24);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Adding new peer state. PeerID=%llu.", buf, 0xCu);
  }

  v7 = re::globalAllocators(v5);
  v8 = (*(*v7[2] + 32))(v7[2], 296, 8);
  v9 = *a2;
  if (*a2)
  {
    v10 = (v9 + 8);
  }

  *(v8 + 32) = 0;
  *(v8 + 16) = 0u;
  *(v8 + 40) = 0;
  *(v8 + 48) = a1;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 100) = 0x7FFFFFFFLL;
  *v8 = &unk_2873F4848;
  *(v8 + 8) = 0;
  *(v8 + 112) = v9;
  v11 = v8 + 112;
  objc_initWeak(buf, (a1 + 8));
  objc_initWeak(&location, (*(a1 + 408) + 2328));
  v13 = *(*(v8 + 112) + 24);
  v12 = *(*(v8 + 112) + 32);
  v14 = re::Session::peerID(*(a1 + 408));
  v15 = *(a1 + 416);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  objc_initWeak(&v30, v16);
  re::SharedAppUnicast::SharedAppUnicast(v8 + 120, buf, &location, v12, v13, v14, &v30, *(a1 + 400), (*(*v11 + 72) & 2) != 0);
  objc_destroyWeak(&v30);
  v30 = 0;
  objc_destroyWeak(&location);
  location = 0;
  objc_destroyWeak(buf);
  v17 = *v11;
  *(v8 + 232) = *(*v11 + 24);
  *(v8 + 240) = 0;
  *(v8 + 248) = 0;
  *(v8 + 252) = 0;
  *(v8 + 288) = 0;
  *(v8 + 264) = 0;
  *(v8 + 272) = 0;
  *(v8 + 256) = 0;
  *(v8 + 280) = 0;
  *(v8 + 56) = *(v17 + 24);
  *(v8 + 224) = 1;
  *buf = v8;
  re::SharedPtr<re::SyncObject>::reset((v8 + 112), *a2);
  v18 = *(a1 + 424);
  if (v18)
  {
    v18 = re::SyncViewManager::addViewer(v18, v8);
    v19 = *(a1 + 424);
    if (v19)
    {
      if (*(a1 + 504))
      {
        v20 = re::globalAllocators(v18)[2];
        v32[0] = &unk_2873F49F8;
        v32[1] = a1;
        v32[2] = buf;
        v32[3] = v20;
        v32[4] = v32;
        re::SyncViewManager::forEachView(v19, v32);
        v18 = re::FunctionBase<24ul,void ()(re::SyncView *)>::destroyCallable(v32);
      }
    }
  }

  v22 = *(a1 + 464);
  v21 = *(a1 + 472);
  if (v21 >= v22)
  {
    v23 = v21 + 1;
    if (v22 < v21 + 1)
    {
      if (*(a1 + 456))
      {
        v24 = 2 * v22;
        if (!v22)
        {
          v24 = 8;
        }

        if (v24 <= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        re::DynamicArray<std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>>::setCapacity((a1 + 456), v25);
      }

      else
      {
        re::DynamicArray<std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>>::setCapacity((a1 + 456), v23);
        ++*(a1 + 480);
      }
    }

    v21 = *(a1 + 472);
  }

  v26 = *(a1 + 488);
  v27 = *buf;
  *buf = 0;
  *(v26 + 8 * v21) = v27;
  *(a1 + 472) = v21 + 1;
  ++*(a1 + 480);
  result = std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>::~unique_ptr[abi:nn200100](buf);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SharedAppSyncManager::onSessionStarted(re::SharedAppSyncManager *this, re::Session *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "SharedAppSyncManager: session started (%p).", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SharedAppSyncManager::onSessionStopped(re *a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a2;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "SharedAppSyncManager: session stopped (%p) with error: %d.", &v8, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SharedAppSyncManager::onPeerJoined(re *a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a3;
    if (*(*a3 + 48))
    {
      v7 = v6[7];
    }

    else
    {
      v7 = v6 + 49;
    }

    v8 = v6[3];
    v9 = v6[19];
    if (v9)
    {
      v10 = (*(*v9 + 32))(v9);
    }

    else
    {
      v10 = "nullptr";
    }

    *buf = 134218498;
    v17 = v8;
    v18 = 2080;
    v19 = v7;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "New peer joined object syncing. PeerID=%llu. Address='%s'. Identity='%s'.", buf, 0x20u);
  }

  v11 = *a3;
  v15 = v11;
  if (v11)
  {
    v12 = (v11 + 8);
    re::SharedAppSyncManager::addPeerStateForParticipant(a1, &v15);
  }

  else
  {
    re::SharedAppSyncManager::addPeerStateForParticipant(a1, &v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SharedAppSyncManager::onPeerLeft(re *a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a3;
    if (*(*a3 + 48))
    {
      v7 = v6[7];
    }

    else
    {
      v7 = v6 + 49;
    }

    v8 = v6[3];
    v9 = v6[19];
    if (v9)
    {
      v10 = (*(*v9 + 32))(v9);
    }

    else
    {
      v10 = "nullptr";
    }

    *buf = 134218498;
    v17 = v8;
    v18 = 2080;
    v19 = v7;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Peer left syncing. PeerID=%llu. Address='%s'. Identity='%s'.", buf, 0x20u);
  }

  v11 = *a3;
  v15 = v11;
  if (v11)
  {
    v12 = (v11 + 8);
    re::SharedAppSyncManager::removePeerStateForParticipant(a1, &v15);
  }

  else
  {
    re::SharedAppSyncManager::removePeerStateForParticipant(a1, &v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SharedAppSyncManager::onPeerPaused(re::SharedAppSyncManager *this, re::Session *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Pausing peerID %llu.", &v8, 0xCu);
  }

  (*(*this + 120))(this, a3);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SharedAppSyncManager::onPeerResumed(re::SharedAppSyncManager *this, re::Session *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Resuming peerID %llu", &v8, 0xCu);
  }

  (*(*this + 128))(this, a3);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SharedAppSyncManager::handleCongestionEvent(re *a1, uint64_t a2, void *a3)
{
  v4 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEBUG, "Emiting congestion event.", v9, 2u);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    v6 = a3[2];
    v5 = a3[3];
    v7 = a3[1];
    kdebug_trace();
  }

  return 0;
}

void re::SharedAppSyncManager::removePeerStateForParticipant(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*a2 + 24);
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Removing peer state. PeerID=%llu.", buf, 0xCu);
  }

  v6 = *(a1 + 472);
  if (v6)
  {
    v7 = 0;
    v8 = *(*a2 + 24);
    while (*(*(*(a1 + 488) + 8 * v7) + 56) != v8)
    {
      if (v6 == ++v7)
      {
        goto LABEL_56;
      }
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      if ((*(a1 + 449) & 1) == 0)
      {
        re::SyncObjectStore::types(*(a1 + 416), buf);
        if (*&buf[16])
        {
          v9 = 0;
          v10 = v47;
          v44 = (v47 + 8 * *&buf[16]);
          do
          {
            v11 = *v10;
            if (*(*(*v10 + 16) + 73) == 1)
            {
              v12 = *(v11 + 64);
              if (v12)
              {
                v13 = *(v11 + 80);
                v14 = &v13[v12];
                do
                {
                  v15 = re::SyncObject::fromPeerID(*v13);
                  v16 = *v13;
                  if (v15 == v8)
                  {
                    goto LABEL_21;
                  }

                  v17 = *(v16 + 10);
                  v18 = *v13;
                  if (v17)
                  {
                    v19 = *v13;
                    do
                    {
                      v18 = v19;
                      v19 = v17;
                      if (*(*(*(v18 + 11) + 16) + 73))
                      {
                        break;
                      }

                      v17 = *(v17 + 10);
                      v18 = v19;
                    }

                    while (v17);
                  }

                  if (*(v18 + 20) == v8)
                  {
LABEL_21:
                    v20 = re::SyncObject::latestStateHandle(v16);
                    if (v20 == -1)
                    {
                      v23 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
                      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                      {
                        v24 = *(*v13 + 3);
                        v25 = *(*(*v13 + 11) + 16);
                        v26 = v25[4];
                        v27 = v25[6];
                        v28 = v25[7];
                        v29 = v25 + 49;
                        if (v27)
                        {
                          v29 = v28;
                        }

                        *v45 = 134218498;
                        *&v45[4] = v24;
                        *&v45[12] = 2048;
                        *&v45[14] = v26;
                        *&v45[22] = 2080;
                        *&v45[24] = v29;
                        _os_log_error_impl(&dword_26168F000, v23, OS_LOG_TYPE_ERROR, "Sync object without snapshot while gathering orphans (id: %llu, type: %llu[%s]).", v45, 0x20u);
                      }
                    }

                    else
                    {
                      *(*v13 + 128) |= 4u;
                      v21 = *v13;
                      *v45 = v21;
                      if (v21)
                      {
                        v22 = v21 + 8;
                      }

                      *&v45[8] = v20;
                      v45[16] = 2;
                      re::DynamicArray<re::internal::SyncSnapshotEntry>::add((a1 + 512), v45);
                      if (*v45)
                      {
                      }
                    }

                    if (v20 != -1)
                    {
                      ++v9;
                    }
                  }

                  ++v13;
                }

                while (v13 != v14);
              }
            }

            ++v10;
          }

          while (v10 != v44);
        }

        else
        {
          v9 = 0;
        }

        v30 = *buf;
        if (*buf && v47)
        {
          v30 = (*(**buf + 40))();
        }

        v31 = *(a1 + 528);
        if (v31)
        {
          v32 = *(a1 + 544);
          v33 = 24 * v31;
          do
          {
            if ((*(*v32 + 128) & 4) != 0)
            {
              re::SyncObjectManager::destroyObject(v32);
            }

            v32 += 24;
            v33 -= 24;
          }

          while (v33);
        }

        if (v9)
        {
          v34 = *re::networkLogObjects(v30);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = re::Session::peerID(*(a1 + 408));
            *buf = 134218240;
            *&buf[4] = v9;
            *&buf[12] = 2048;
            *&buf[14] = v35;
            _os_log_impl(&dword_26168F000, v34, OS_LOG_TYPE_DEFAULT, "Found %zu orphaned objects. localPeerID=%llu. ", buf, 0x16u);
          }
        }
      }

      v36 = *(a1 + 424);
      v37 = *(a1 + 472);
      if (v36)
      {
        if (v37 <= v7)
        {
          goto LABEL_58;
        }

        v36 = re::SyncViewManager::removeViewer(v36, *(*(a1 + 488) + 8 * v7), 0);
        v37 = *(a1 + 472);
      }

      if (v37 > v7)
      {
        v38 = *(a1 + 488);
        if (v37 - 1 > v7)
        {
          v39 = v38 + 8 * v37;
          v40 = *(v39 - 8);
          *(v39 - 8) = 0;
          v41 = *(v38 + 8 * v7);
          *(v38 + 8 * v7) = v40;
          if (v41)
          {
            v42 = re::globalAllocators(v36)[2];
            (**v41)(v41);
            (*(*v42 + 40))(v42, v41);
            v37 = *(a1 + 472);
            v38 = *(a1 + 488);
          }
        }

        std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>::~unique_ptr[abi:nn200100]((v38 + 8 * v37 - 8));
        --*(a1 + 472);
        ++*(a1 + 480);
        goto LABEL_56;
      }

      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v45 = 136315906;
      *&v45[4] = "removeAt";
      *&v45[12] = 1024;
      *&v45[14] = 931;
      *&v45[18] = 2048;
      *&v45[20] = v7;
      *&v45[28] = 2048;
      *&v45[30] = v37;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v45 = 136315906;
      *&v45[4] = "operator[]";
      *&v45[12] = 1024;
      *&v45[14] = 789;
      *&v45[18] = 2048;
      *&v45[20] = v7;
      *&v45[28] = 2048;
      *&v45[30] = v37;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_56:
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t re::SharedAppSyncManager::onViewAdded(re::SharedAppSyncManager *this, re::SyncViewManager *a2, re::SyncView *a3)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v6 = re::globalAllocators(this)[2];
  v9[2] = a3;
  v9[3] = v6;
  v9[0] = &unk_2873F49A0;
  v9[1] = this;
  v9[4] = v9;
  re::SyncViewManager::forEachViewer(a2, v9);
  re::FunctionBase<24ul,void ()(re::SyncViewer *)>::destroyCallable(v9);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

re *std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>::~unique_ptr[abi:nn200100](re *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = re::globalAllocators(a1)[2];
    (**v2)(v2);
    (*(*v3 + 40))(v3, v2);
  }

  return a1;
}

uint64_t re::SharedAppSyncManager::findPeer(re::SharedAppSyncManager *this, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + 59);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = 0;
  v4 = *(this + 61);
  while (*(*(v4 + 8 * v3) + 56) != a2)
  {
    if (v2 == ++v3)
    {
      goto LABEL_9;
    }
  }

  if (v3 < 0)
  {
LABEL_9:
    result = 0;
  }

  else
  {
    if (v2 <= v3)
    {
      v7 = *(this + 59);
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = *(v4 + 8 * v3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL re::SharedAppSyncManager::receive(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  *(a1 + 449) = 1;
  v3 = *(a1 + 472);
  if (v3)
  {
    v5 = *(a1 + 488);
    v6 = &v5[v3];
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 128);
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      if (*(v7 + 163) == 1)
      {
        v9 = *(v7 + 112);
        *(v7 + 163) = 0;
        while (1)
        {
          v10 = (*(**(v7 + 128) + 56))(*(v7 + 128));
          if (!v10)
          {
            break;
          }

          v11 = v10;
          v12 = (*(a2 + 16))(a2, v9, *(v10 + 16), *(v10 + 24));
          (*(**(v7 + 128) + 40))(*(v7 + 128), v11);
          if ((v12 & 1) == 0)
          {
            return 0;
          }
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return v2;
}

void re::SharedAppSyncManager::receive(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v20, 6008, a1);
  *a3 = a1;
  v6 = a1[59];
  if (v6)
  {
    v7 = a1[61];
    v8 = MEMORY[0x277D85DD0];
    v9 = 8 * v6;
    while (1)
    {
      v10 = *v7;
      v11 = *(*v7 + 112);
      *(a3 + 8) = *(v11 + 24);
      *(a3 + 24) = *(v11 + 72);
      v19[0] = v8;
      v19[1] = 0x40000000;
      v19[2] = ___ZN2re20SharedAppSyncManager7receiveEU13block_pointerFbP13RESyncSessionPK12RESyncCommitERNS_21SyncObjectReadContextE_block_invoke;
      v19[3] = &unk_279AE3C60;
      v19[4] = a2;
      v19[5] = a1;
      v12 = re::SharedAppUnicast::receive((v10 + 120), a3, v19);
      if (!v12)
      {
        break;
      }

      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v13 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (*(v11 + 48))
      {
        v15 = *(v11 + 56);
      }

      else
      {
        v15 = v11 + 49;
      }

      v16 = *(v11 + 24);
      v17 = *(v11 + 152);
      if (v17)
      {
        v18 = (*(*v17 + 32))(v17);
      }

      else
      {
        v18 = "nullptr";
      }

      *buf = 134218498;
      *v22 = v16;
      *&v22[8] = 2082;
      *&v22[10] = v15;
      *&v22[18] = 2082;
      *&v22[20] = v18;
      _os_log_error_impl(&dword_26168F000, v13, OS_LOG_TYPE_ERROR, "Failed to parse incoming packet. Will drop peer.(peerID=%llu, address=%{public}s, identity=%{public}s)", buf, 0x20u);
    }

    re::Transport::disconnect((a1[51] + 2320), *(v11 + 32), 0);
  }

LABEL_8:
  if (a1[66])
  {
    buf[0] = 0;
    v25 = 0;
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    *&v22[4] = 0;
    *&v22[12] = 0;
    *&v22[17] = 0;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v23, a1 + 64);
    (*(a2 + 16))(a2, a1, buf);
    re::DynamicArray<re::internal::SyncSnapshotEntry>::clear((a1 + 64));
    re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v23);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v20);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN2re20SharedAppSyncManager7receiveEU13block_pointerFbP13RESyncSessionPK12RESyncCommitERNS_21SyncObjectReadContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = 24 * v4;
    do
    {
      if ((*(*v5 + 128) & 4) != 0)
      {
        re::SyncObjectManager::destroyObject(v5);
      }

      v5 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void re::SharedAppSyncManager::send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = a1;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v85, 6018, a1);
  v8 = a2 + 72 * a3;
  if (a3)
  {
    v9 = a2;
    do
    {
      v10 = *(v9 + 48);
      if (v10)
      {
        v11 = *(v9 + 64);
        v12 = &v11[3 * v10];
        do
        {
          v13 = *v11;
          v14 = *(*v11 + 80);
          v15 = *v11;
          if (v14)
          {
            v16 = *v11;
            do
            {
              v15 = v16;
              v16 = v14;
              if (*(*(*(v15 + 88) + 16) + 73))
              {
                break;
              }

              v14 = *(v14 + 80);
              v15 = v16;
            }

            while (v14);
          }

          if (((*(v15 + 170) & 1) != 0 || *(a1 + 400) == 1) && (*(v13 + 128) & 4) != 0 && *(*(*(v13 + 88) + 16) + 74) == 1)
          {
            v19 = *(v13 + 96);
            v18 = v13 + 96;
            v17 = v19;
            if (v19)
            {
              re::SyncView::removeObject(v17, v18);
            }
          }

          v11 += 3;
        }

        while (v11 != v12);
      }

      v9 += 72;
    }

    while (v9 != v8);
  }

  v83 = a4;
  v20 = *(a1 + 472);
  if (v20)
  {
    v21 = *(a1 + 488);
    v22 = &v21[v20];
    do
    {
      v90 = 0;
      v87 = 0;
      v88 = 0;
      v86 = 0;
      v89 = 0;
      v23 = *v21;
      v24 = *(*v21 + 96);
      if (v24)
      {
        v25 = 0;
        v26 = *(v23 + 80);
        while (1)
        {
          v27 = *v26;
          v26 += 8;
          if (v27 < 0)
          {
            break;
          }

          if (v24 == ++v25)
          {
            LODWORD(v25) = *(*v21 + 96);
            break;
          }
        }
      }

      else
      {
        LODWORD(v25) = 0;
      }

      if (v25 != v24)
      {
        do
        {
          v28 = *(v23 + 80) + 32 * v25;
          v31 = *(v28 + 8);
          v29 = v28 + 8;
          v30 = v31;
          v32 = *(v31 + 10);
          v33 = v31;
          if (v32)
          {
            v34 = v30;
            do
            {
              v33 = v34;
              v34 = v32;
              if (*(*(*(v33 + 11) + 16) + 73))
              {
                break;
              }

              v32 = *(v32 + 10);
              v33 = v34;
            }

            while (v32);
          }

          v35 = *v21;
          if ((*(v33 + 170) & 1) != 0 || (*(v35 + 160) & 1) != 0 || *(v35 + 161) == 1)
          {
            if (*(v29 + 8))
            {
              v84[0] = v30;
              re::DynamicArray<re::Allocator const*>::add(&v86, v84);
            }

            else
            {
              addToViewRecursive(v29, v35 + 224, *(v35 + 56));
            }
          }

          v36 = *(v23 + 96);
          if (v36 <= v25 + 1)
          {
            v36 = v25 + 1;
          }

          while (v36 - 1 != v25)
          {
            LODWORD(v25) = v25 + 1;
            if ((*(*(v23 + 80) + 32 * v25) & 0x80000000) != 0)
            {
              goto LABEL_43;
            }
          }

          LODWORD(v25) = v36;
LABEL_43:
          ;
        }

        while (v25 != v24);
        if (v88)
        {
          v37 = v90;
          v38 = 8 * v88;
          do
          {
            v39 = *v37;
            v84[0] = v39;
            if (v39)
            {
              v40 = (v39 + 8);
            }

            removeFromViewRecursive(v84, *v21 + 224, *(*v21 + 56));
            if (v84[0])
            {
            }

            ++v37;
            v38 -= 8;
          }

          while (v38);
        }
      }

      if (v86 && v90)
      {
        (*(*v86 + 40))();
      }

      ++v21;
    }

    while (v21 != v22);
  }

  v90 = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v89 = 0;
  if (a3)
  {
    v82 = a3;
    v41 = a2;
    do
    {
      if (*(v41 + 28))
      {
        v42 = *(v41 + 48);
        if (v42)
        {
          v43 = *(v41 + 64);
          v44 = &v43[3 * v42];
          do
          {
            v45 = *v43;
            if (*v43)
            {
              while ((*(*(v45[11] + 16) + 74) & 1) == 0)
              {
                v45 = v45[10];
                if (!v45)
                {
                  goto LABEL_83;
                }
              }

              v46 = v45[12];
              if (v46)
              {
                v47 = *(v46 + 104);
                if (v47)
                {
                  v48 = *(v46 + 120);
                  v49 = &v48[v47];
                  do
                  {
                    v50 = *v48;
                    if (*(*v48 + 48) == a1 && (*(v41 + 28) != 1 || *(v41 + 8) != *(v50 + 56)))
                    {
                      v52 = *v43;
                      v53 = *(*v43 + 80);
                      if (v53)
                      {
                        do
                        {
                          v54 = v52;
                          v52 = v53;
                          if (*(*(*(v54 + 88) + 16) + 73))
                          {
                            break;
                          }

                          v53 = *(v53 + 80);
                          v54 = v52;
                        }

                        while (v53);
                      }

                      else
                      {
                        v54 = *v43;
                      }

                      if (((*(v54 + 170) & 1) != 0 || (*(v50 + 160) & 1) != 0 || *(v50 + 161) == 1) && entryIsAddable(v43, *v48))
                      {
                        re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v50 + 256), v43);
                      }
                    }

                    ++v48;
                  }

                  while (v48 != v49);
                }
              }
            }

LABEL_83:
            v43 += 3;
          }

          while (v43 != v44);
        }
      }

      else
      {
        v84[0] = v41;
        re::DynamicArray<re::Allocator const*>::add(&v86, v84);
      }

      v41 += 72;
    }

    while (v41 != v8);
    if (v88)
    {
      v55 = v90;
      v56 = &v90[v88];
      do
      {
        v57 = *(*v55 + 48);
        if (v57)
        {
          v58 = *(*v55 + 64);
          v59 = &v58[3 * v57];
          do
          {
            v60 = *v58;
            if (*v58)
            {
              while ((*(*(v60[11] + 16) + 74) & 1) == 0)
              {
                v60 = v60[10];
                if (!v60)
                {
                  goto LABEL_110;
                }
              }

              v61 = v60[12];
              if (v61)
              {
                v62 = *(v61 + 104);
                if (v62)
                {
                  v63 = *(v61 + 120);
                  v64 = &v63[v62];
                  do
                  {
                    v65 = *v63;
                    if (*(*v63 + 48) == a1)
                    {
                      v66 = *v58;
                      v67 = *(*v58 + 80);
                      if (v67)
                      {
                        do
                        {
                          v68 = v66;
                          v66 = v67;
                          if (*(*(*(v68 + 88) + 16) + 73))
                          {
                            break;
                          }

                          v67 = *(v67 + 80);
                          v68 = v66;
                        }

                        while (v67);
                      }

                      else
                      {
                        v68 = *v58;
                      }

                      if (((*(v68 + 170) & 1) != 0 || (*(v65 + 160) & 1) != 0 || *(v65 + 161) == 1) && entryIsAddable(v58, *v63))
                      {
                        re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v65 + 256), v58);
                      }
                    }

                    ++v63;
                  }

                  while (v63 != v64);
                }
              }
            }

LABEL_110:
            v58 += 3;
          }

          while (v58 != v59);
        }

        ++v55;
      }

      while (v55 != v56);
    }

    a3 = v82;
    if (v86 && v90)
    {
      (*(*v86 + 40))();
    }
  }

  v69 = *(a1 + 472);
  if (v69)
  {
    v70 = *(a1 + 488);
    v71 = 8 * v69;
    do
    {
      v72 = *v70;
      v73 = *(*v70 + 112);
      v74 = *(v73 + 152);
      if (v74 && (v75 = (*(*v74 + 48))(v74), v72 = *v70, v75))
      {
        re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(v72 + 256);
      }

      else
      {
        if (*(v72 + 272))
        {
          *(v83 + 16) = *(v73 + 24);
          *(v83 + 32) = *(v73 + 72);
          v86 = v72 + 224;
          v87 = 1;
          v84[0] = 0;
          v84[1] = 0;
          re::SharedAppUnicast::send((v72 + 120), &v86, v84, v72, v83);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(*v70 + 256);
          v72 = *v70;
        }

        re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::clear(v72 + 64);
      }

      ++v70;
      v71 -= 8;
    }

    while (v71);
  }

  if (a3)
  {
    do
    {
      v76 = *(a2 + 48);
      if (v76)
      {
        v77 = *(a2 + 64);
        v78 = v77 + 24 * v76;
        do
        {
          v79 = *(*v77 + 80);
          v80 = *v77;
          if (v79)
          {
            v81 = *v77;
            do
            {
              v80 = v81;
              v81 = v79;
              if (*(*(*(v80 + 88) + 16) + 73))
              {
                break;
              }

              v79 = *(v79 + 80);
              v80 = v81;
            }

            while (v79);
          }

          if (((*(v80 + 170) & 1) != 0 || *(a1 + 400) == 1) && (*(*v77 + 128) & 4) != 0)
          {
            re::SyncObjectManager::destroyObject(v77);
          }

          v77 += 24;
        }

        while (v77 != v78);
      }

      a2 += 72;
    }

    while (a2 != v8);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v85);
}

BOOL re::SharedAppSyncManager::send(re::SharedAppSyncManager *a1, uint64_t a2, const void *a3, size_t a4)
{
  *(a1 + 449) = 1;
  Peer = re::SharedAppSyncManager::findPeer(a1, a2);
  v7 = Peer;
  if (Peer)
  {
    if (a4)
    {
      v8 = (*(**(Peer + 128) + 32))(*(Peer + 128), a4);
      if (v8)
      {
        v9 = v8;
        memcpy(*(v8 + 16), a3, a4);
        *(v9 + 24) = a4;
        (*(**(v7 + 128) + 48))(*(v7 + 128), v9);
      }
    }
  }

  return v7 != 0;
}

void removeFromViewRecursive(re::SyncObject **a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*(v4 + 8) == *(v4 + 9))
  {
    v5 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*a1 + 3);
      v7 = *(*(*a1 + 11) + 16);
      v8 = v7[4];
      v9 = v7[6];
      v10 = v7[7];
      v11 = v7 + 49;
      if (v9)
      {
        v11 = v10;
      }

      *v21 = 134218498;
      *&v21[4] = v6;
      v22 = 2048;
      v23 = v8;
      v24 = 2080;
      v25 = v11;
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "Sync object without snapshot while removing view (id: %llu, type: %llu[%s]).", v21, 0x20u);
    }
  }

  else
  {
    if ((*(v4 + 128) & 4) == 0 || (LatestState = re::SyncObject::getLatestState(v4)) == 0 || *(LatestState + 88) != a3)
    {
      re::SyncSnapshot::removeFromView((a2 + 32), a1);
    }

    v15 = *(*a1 + 25);
    if (v15)
    {
      v16 = *(*a1 + 27);
      v17 = 8 * v15;
      do
      {
        v18 = *v16;
        *v21 = v18;
        if (v18)
        {
          v19 = (v18 + 8);
        }

        removeFromViewRecursive(v21, a2, a3);
        if (*v21)
        {
        }

        ++v16;
        v17 -= 8;
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

re::SyncObject *entryIsAddable(re::SyncObject **a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = result;
    while ((*(*(*(v4 + 11) + 16) + 74) & 1) == 0)
    {
      v4 = *(v4 + 10);
      if (!v4)
      {
        return 0;
      }
    }

    v5 = *(v4 + 12);
    if (!v5)
    {
      return 0;
    }

    v6 = *(v5 + 120);
    v7 = *(v5 + 104);
    if (v7)
    {
      v8 = 8 * v7;
      for (i = v6; *i != a2; ++i)
      {
        v8 -= 8;
        if (!v8)
        {
          return 0;
        }
      }
    }

    else
    {
      i = v6;
    }

    if (i == &v6[v7])
    {
      return 0;
    }

    v10 = *(a2 + 56);
    LatestState = re::SyncObject::getLatestState(result);
    if (LatestState)
    {
      if (*(LatestState + 88) == v10)
      {
        return 0;
      }
    }

    return !re::SyncObjectViewer::isViewChangePending(a2, v4);
  }

  return result;
}

void *re::DynamicArray<re::internal::SyncSnapshotEntry>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::internal::SyncSnapshotEntry>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 24 * v4;
  v6 = *a2;
  *v5 = *a2;
  if (v6)
  {
    this = (v6 + 8);
  }

  v7 = a2[1];
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 8) = v7;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::SharedAppSyncManager::session@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[51];
  *a2 = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return this;
}

void re::SharedAppSyncManager::requestOwnership(re *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*a2 + 24);
    v6 = 134217984;
    v7 = v5;
    _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "[Ownership] Requesting ownership when using Shared App Sync (guid: %llu)", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

double re::SharedAppSyncManager::adjustTimeForSender(re::SharedAppSyncManager *this, double a2, uint64_t a3)
{
  Peer = re::SharedAppSyncManager::findPeer(this, a3);
  if (Peer)
  {
    v6 = *(Peer + 112);
    if (v6)
    {
      re::Transport::connectionStats((*(this + 51) + 2320), *(v6 + 32), v9);
      if (v9[0] == 1)
      {
        LODWORD(v7) = v10;
        return a2 + v7 / 1000.0 * 0.5;
      }
    }
  }

  return a2;
}

uint64_t re::SharedAppSyncManager::pausePeer(re::SharedAppSyncManager *this, uint64_t a2)
{
  result = re::SharedAppSyncManager::findPeer(this, a2);
  if (result)
  {
    if (*(result + 112))
    {
      *(result + 162) = 1;
    }
  }

  return result;
}

uint64_t re::SharedAppSyncManager::resumePeer(re::SharedAppSyncManager *this, uint64_t a2)
{
  result = re::SharedAppSyncManager::findPeer(this, a2);
  if (result)
  {
    if (*(result + 112))
    {
      *(result + 162) = 0;
    }
  }

  return result;
}

void re::SharedAppSyncManager::PeerState::~PeerState(re::SharedAppSyncManager::PeerState *this)
{
  *this = &unk_2873F4848;
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 256);
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 21);
  objc_destroyWeak(this + 19);
  *(this + 19) = 0;
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  objc_destroyWeak(this + 15);
  *(this + 15) = 0;
  v3 = *(this + 14);
  if (v3)
  {

    *(this + 14) = 0;
  }

  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);

  re::SyncViewer::~SyncViewer(this);
}

{
  *this = &unk_2873F4848;
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 256);
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 21);
  objc_destroyWeak(this + 19);
  *(this + 19) = 0;
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  objc_destroyWeak(this + 15);
  *(this + 15) = 0;
  v3 = *(this + 14);
  if (v3)
  {

    *(this + 14) = 0;
  }

  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);
  re::SyncViewer::~SyncViewer(this);

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::SharedAppSyncManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[59];
  if (v3)
  {
    v4 = *a2;
    v5 = v2[61];
    v6 = &v5[v3];
    do
    {
      v7 = *v5;
      if (*(*v5 + 7) == *(v4 + 24))
      {
        v8 = *(v4 + 104);
        if (v8)
        {
          v9 = 8 * v8;
          v10 = *(v4 + 120);
          while (*v10 != v7)
          {
            ++v10;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v10 = *(v4 + 120);
        }

        if (v10 != (*(v4 + 120) + 8 * v8))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v11 = v2[63];
        if (!v11)
        {
          v16 = *(v4 + 104);
          if (v16)
          {
            v17 = 8 * v16;
            v18 = *(v4 + 120);
            while (*v18 != v7)
            {
              ++v18;
              v17 -= 8;
              if (!v17)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            v18 = *(v4 + 120);
          }

          if (v18 == (*(v4 + 120) + 8 * v16))
          {
            goto LABEL_31;
          }

LABEL_30:
          re::SyncView::removeViewer(v4, v7);
          goto LABEL_31;
        }

        v12 = (*(v11 + 16))(v11, v2);
        v7 = *v5;
        v13 = *(v4 + 104);
        if (v13)
        {
          v14 = 8 * v13;
          v15 = *(v4 + 120);
          while (*v15 != v7)
          {
            ++v15;
            v14 -= 8;
            if (!v14)
            {
              if (v12)
              {
                goto LABEL_27;
              }

              goto LABEL_31;
            }
          }
        }

        else
        {
          v15 = *(v4 + 120);
        }

        if (v12 == (v15 != (*(v4 + 120) + 8 * v13)))
        {
          goto LABEL_31;
        }

        if (!v12)
        {
          goto LABEL_30;
        }
      }

LABEL_27:
      re::SyncView::addViewer(v4, v7);
LABEL_31:
      ++v5;
    }

    while (v5 != v6);
  }
}

void *re::internal::Callable<re::SharedAppSyncManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F4948;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::SharedAppSyncManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F4948;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::SharedAppSyncManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::operator()(uint64_t a1, re::SyncViewer **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (re::SharedAppSyncManager::findPeer(v4, *(*a2 + 7)))
  {
    v5 = *(v3 + 7);
    v6 = *(a1 + 16);
    if (v5 != *(v6 + 24) && v5 != *(v6 + 32))
    {
      v7 = *(v4 + 63);
      if (!v7 || !(*(v7 + 16))(v7, v4))
      {
        return;
      }

      v6 = *(a1 + 16);
    }

    re::SyncView::addViewer(v6, v3);
  }
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49A0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49A0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::SharedAppSyncManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = **(a1 + 16);
  if (*(v3 + 7) != *(v2 + 24))
  {
    if (!(*(*(*(a1 + 8) + 504) + 16))())
    {
      return;
    }

    v3 = **(a1 + 16);
  }

  re::SyncView::addViewer(v2, v3);
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

BOOL re::SyncObjectViewer::isViewChangePending(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  if (*(a1 + 64) && (v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27)), v6 = *(*(a1 + 72) + 4 * ((v5 ^ (v5 >> 31)) % *(a1 + 88))), v6 != 0x7FFFFFFF))
  {
    v9 = *(a1 + 80);
    v10 = 0x7FFFFFFFLL;
    while (*(v9 + 32 * v6 + 8) != a2)
    {
      v6 = *(v9 + 32 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }
    }

    v10 = v6;
LABEL_13:
    v7 = v10 != 0x7FFFFFFF;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a2)
    {
LABEL_6:
    }
  }

  return v7;
}

uint64_t re::Event<re::Session>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

uint64_t re::Event<re::Session,re::SessionError>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v9 = v5(v6, a1, &v11);
  if (v11)
  {
  }

  return v9;
}

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>,re::ParticipantError))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&,re::ParticipantError&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3, unsigned int *a4)
{
  v7 = a2[1];
  v6 = a2[2];
  v8 = (*a2 + (v6 >> 1));
  if (v6)
  {
    v7 = *(*v8 + v7);
  }

  v9 = *a3;
  v13 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  v11 = v7(v8, a1, &v13, *a4);
  if (v13)
  {
  }

  return v11;
}

uint64_t re::Event<re::Session,unsigned long long>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::PacketStatsFilter*,re::CongestionEventData const&))::{lambda(re::PacketStatsFilter*,re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::Subscription const&,re::CongestionEventData const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

uint64_t re::Event<re::SyncViewManager,re::SyncView *>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::SyncViewManager*,re::SyncView *))::{lambda(re::SyncViewManager*,re::Event<re::SyncViewManager,re::SyncView *>::Subscription const&,re::SyncView *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

void *re::DynamicArray<std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 8 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = *v8;
          *v12 = 0;
          v12 = (v12 + 8);
          *v11++ = v13;
          std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>::~unique_ptr[abi:nn200100](v8);
          v8 = v12;
          v10 -= 8;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void addToViewRecursive(re::SyncObject **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(v4 + 8) != *(v4 + 9))
  {
    LatestState = re::SyncObject::getLatestState(v4);
    if ((!LatestState || *(LatestState + 88) != a3) && (*(*a1 + 128) & 4) == 0)
    {
      re::SyncSnapshot::addToView((a2 + 32), a1);
    }

    v8 = *(*a1 + 25);
    if (v8)
    {
      v9 = *(*a1 + 27);
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        v13 = v11;
        if (v11)
        {
          v12 = (v11 + 8);
        }

        addToViewRecursive(&v13, a2, a3);
        if (v13)
        {
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }
}

void *re::DynamicArray<re::internal::SyncSnapshotEntry>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

double RESyncDiscoveryViewObserverCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 80, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_2873F4AB8;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  return result;
}

void *RESyncDiscoveryViewObserverOnCreate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 24) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnDestroy(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 32) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnGetIdentitiesCount(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 40) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnGetIdentityAtIndex(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 48) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnGetAuthData(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 56) = result;
  return result;
}