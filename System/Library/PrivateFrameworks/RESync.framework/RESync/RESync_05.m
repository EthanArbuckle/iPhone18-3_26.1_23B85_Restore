void *re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5220;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5220;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(**(a1 + 16) + 32))(*(a1 + 16));
    *v8 = 136315138;
    *&v8[4] = v4;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "Discovered new peer: %s", v8, 0xCu);
  }

  v5 = *(a1 + 16);
  *v8 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
    re::Session::addIdentity(v2, v8);
  }

  else
  {
    re::Session::addIdentity(v2, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void *re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F5220;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5220;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(void)>::destroyCallable(uint64_t a1))(void)
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

void *re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5278;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5278;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::operator()(re *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  v3 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(**(a1 + 2) + 32))(*(a1 + 2));
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "Lost peer: %s", buf, 0xCu);
  }

  v5 = *(a1 + 2);
  v24 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
    v32 = 0;
    v35 = re::globalAllocators((v5 + 8))[2];
    v36 = 0;
    *buf = &unk_2873F52D0;
    *&buf[8] = v5;
    v7 = (v5 + 8);
    v36 = buf;
    BacklogItem = re::Session::findBacklogItem(v2, buf, &v32);
    re::FunctionBase<24ul,BOOL ()(re::Session::BacklogItem const&)>::destroyCallable(buf);

    if (BacklogItem)
    {
      v9 = *BacklogItem;
      re::DynamicArray<re::Session::BacklogItem>::removeAt((v2 + 393), v32);
      if (v9)
      {
        v11 = *re::networkLogObjects(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          re::Transport::connectionAddress((v2 + 290), v9, &v28);
          if (v29)
          {
            v12 = v31;
          }

          else
          {
            v12 = v30;
          }

          v13 = (*(*v5 + 32))(v5);
          (*(*v5 + 40))(&v25, v5);
          if (v26)
          {
            v14 = *&v27[7];
          }

          else
          {
            v14 = v27;
          }

          *buf = 136315650;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          v34 = 2080;
          v35 = v14;
          _os_log_impl(&dword_26168F000, v11, OS_LOG_TYPE_DEFAULT, "Dropping pending connection %s. because its identity '%s (%s)' left.", buf, 0x20u);
          if (v25 && (v26 & 1) != 0)
          {
            (*(*v25 + 40))();
          }

          if (v28 && (v29 & 1) != 0)
          {
            (*(*v28 + 40))();
          }
        }

        re::Transport::disconnect((v2 + 290), v9, 1);
        re::Session::removePendingPeerHelloForConnection(v2, v9);
      }
    }

    re::Session::findParticipantWithIdentity(v2, &v24, &v25);
    if (v25)
    {
      v16 = *re::networkLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = (*(v25 + 48) & 1) != 0 ? *(v25 + 56) : v25 + 49;
        v18 = (*(*v24 + 32))(v24);
        (*(*v24 + 40))(&v28);
        v19 = (v29 & 1) != 0 ? v31 : v30;
        *buf = 136315650;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        v34 = 2080;
        v35 = v19;
        _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, "Deleting participant '%s' for identity '%s (%s)'.", buf, 0x20u);
        if (v28)
        {
          if (v29)
          {
            (*(*v28 + 40))();
          }
        }
      }

      v20 = v25;
      v21 = *(v25 + 32);
      *buf = v25;
      v22 = (v25 + 8);
      re::Session::removeParticipant(v2, buf);

      re::Transport::disconnect((v2 + 290), v21, 1);
      re::Session::removePendingPeerHelloForConnection(v2, v21);
      if (v25)
      {
      }
    }

    if (v24)
    {
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void *re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F5278;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5278;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

void *re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::~Callable(void *a1)
{
  *a1 = &unk_2873F52D0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::~Callable(void *a1)
{
  *a1 = &unk_2873F52D0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void *re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_2873F52D0;
  a2[1] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  return a2;
}

void *re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::moveInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_2873F52D0;
  a2[1] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  return a2;
}

void *re::Session::findParticipant<re::Session::findParticipantWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&)::{lambda(re::SessionParticipant const*)#1}>@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = result[287];
  if (v3)
  {
    v4 = result[289];
    v5 = 8 * v3;
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 152) == *a2)
      {
        break;
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    *a3 = v6;
    return (v6 + 8);
  }

  else
  {
LABEL_5:
    *a3 = 0;
  }

  return result;
}

uint64_t re::Event<re::Session>::~Event(uint64_t a1)
{
  if (*a1)
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(a1 + 72))
    {
      (*(*v2 + 40))(v2);
    }

    *(a1 + 72) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    ++*(a1 + 64);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(a1);
  return a1;
}

void re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::addSubscription(_anonymous_namespace_ *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, a2, v6);
  if ((v6[0] & 1) == 0)
  {
    if (*(a1 + 20))
    {
      v6[0] = 1;
      v4 = *(a2 + 16);
      v7 = *a2;
      v8 = v4;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(a1 + 40, v6);
    }

    else
    {
      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, a2);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

__n128 re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 40 * v5;
  result = *a2;
  v13 = *(a2 + 16);
  *(v11 + 32) = *(a2 + 32);
  *v11 = result;
  *(v11 + 16) = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::createSubscription<re::Session>(re::Session *,REEventHandlerResult (re::Session::*)(re::DiscoveryView*,re::SharedPtr<re::DiscoveryIdentity>))::{lambda(re::DiscoveryView*,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription const&,re::SharedPtr<re::DiscoveryIdentity>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
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

re::RoutingTable *re::make::shared::object<re::RoutingTable>@<X0>(re *a1@<X0>, re::RoutingTable **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  result = re::RoutingTable::RoutingTable(v4);
  *a2 = result;
  return result;
}

uint64_t re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(uint64_t result, uint64_t a2, char *a3, void *a4)
{
  v4 = a3;
  if (a2)
  {
    v5 = 32 * a2;
    v4 = a3;
    while (*v4 != *a4 || *(v4 + 1) != a4[1] || *(v4 + 2) != a4[2])
    {
      v4 += 32;
      v5 -= 32;
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  if (v4 == &a3[32 * a2])
  {
LABEL_12:
    v7 = 0;
  }

  else
  {
    *(result + 8) = (v4 - a3) >> 5;
    v7 = 1;
  }

  *result = v7;
  return result;
}

__n128 re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, __n128 *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::init(v24, v11, v10);
          v13 = *v24;
          *v24 = *a1;
          *a1 = v13;
          v14 = *&v24[16];
          v15 = *(a1 + 16);
          *&v24[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v16 = *&v24[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = v15 + 16;
            do
            {
              if ((*(v19 - 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::addAsMove(a1, *(v19 - 16) % *(a1 + 24), *(v19 - 16), v19);
              }

              v19 += 32;
              --v18;
            }

            while (v18);
          }

          re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  *(v20 + 32 * v7 + 8) = v21 | 0x80000000;
  *(*(a1 + 16) + 32 * v7 + 8) = *(*(a1 + 16) + 32 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v7) = a3;
  result = *a4;
  *(*(a1 + 16) + 32 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return result;
}

void *re::DynamicArray<re::Session::BacklogItem>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Session::BacklogItem>::setCapacity(v5, a2);
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
              goto LABEL_18;
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 80 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          *v12 = *(v8 + v10);
          v12[2] = *(v8 + v10 + 16);
          *(v13 + 16) = 0;
          *(v12 + 3) = *(v8 + v10 + 24);
          v12[9] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[5] = 0;
          *(v12 + 16) = 0;
          v14 = (v8 + v10 + 40);
          v15 = *(v8 + v10 + 48);
          v12[5] = *v14;
          *v14 = 0;
          v12[6] = v15;
          *(v13 + 48) = 0;
          v16 = v7[v10 / 8 + 7];
          v12[7] = *(v8 + v10 + 56);
          *(v13 + 56) = v16;
          v17 = v7[v10 / 8 + 9];
          v12[9] = *(v8 + v10 + 72);
          *(v13 + 72) = v17;
          *(v13 + 64) = *(v8 + v10 + 64) + 1;
          *(v12 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v14);
          v18 = *(v8 + v10 + 16);
          if (v18)
          {

            *(v13 + 16) = 0;
          }

          v10 += 80;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void re::StaticPacketBitWriter::~StaticPacketBitWriter(re::StaticPacketBitWriter *this)
{
  if (*(this + 6))
  {
    (*(**(this + 5) + 40))(*(this + 5));
    *(this + 6) = 0;
  }
}

{
  if (*(this + 6))
  {
    (*(**(this + 5) + 40))(*(this + 5));
    *(this + 6) = 0;
  }

  JUMPOUT(0x266708EC0);
}

uint64_t re::StaticPacketBitWriter::grow(uint64_t this)
{
  if (!*(this + 48))
  {
    v1 = this;
    this = (*(**(this + 40) + 32))(*(this + 40), *(this + 56));
    *(v1 + 48) = this;
    *(v1 + 8) = *(this + 16);
    *(v1 + 16) = *(v1 + 56);
  }

  return this;
}

void re::SyncSnapshotDump::log(NSObject *a1, char *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*a3)
  {
    v10 = (v5 + 8);
    v11 = *(v5 + 80);
    v12 = *(*(v5 + 88) + 16);
    v13 = *(v12 + 48);
    v14 = *(v12 + 56);
    v15 = v12 + 49;
    if (v13)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v17)
      {
        v18 = *(v5 + 24);
        v19 = *(v5 + 176);
        v20 = *(v11 + 24);
        v21 = *(a3 + 16);
        v22 = "";
        v23 = "(new)";
        if ((v21 & 1) == 0)
        {
          v23 = "";
        }

        v24 = "(data)";
        v25 = *a2;
        if ((a3[2] & 8) == 0)
        {
          v24 = "";
        }

        v26 = a2[28];
        v27 = "(destroyed)";
        v28 = *(a2 + 1);
        if ((a3[2] & 2) == 0)
        {
          v27 = "";
        }

        v51 = 136318210;
        if ((v21 & 4) != 0)
        {
          v29 = "(ownerChange)";
        }

        else
        {
          v29 = "";
        }

        v52 = v16;
        v53 = 2048;
        v54 = v18;
        if (a5)
        {
          v30 = a5;
        }

        else
        {
          v30 = "Commit";
        }

        v55 = 1024;
        v56 = v19;
        if (v25)
        {
          v31 = "(Atomic)";
        }

        else
        {
          v31 = "";
        }

        v57 = 2048;
        v58 = v20;
        v59 = 2080;
        if ((v25 & 2) != 0)
        {
          v32 = "(Held)";
        }

        else
        {
          v32 = "";
        }

        v60 = v23;
        v61 = 2080;
        if (v26)
        {
          v22 = "(Fwd)";
        }

        v62 = v24;
        v63 = 2080;
        v64 = v27;
        v65 = 2080;
        v66 = v29;
        v67 = 2080;
        v68 = v30;
        v69 = 2080;
        v70 = v31;
        v71 = 2080;
        v72 = v32;
        v73 = 2080;
        v74 = v22;
        v75 = 2048;
        v76 = v28;
        v33 = "\t%s Id=%llu(v#%u) Parent=%llu %s%s%s%s \t%s %s%s%s Peer=%llu";
        v34 = a1;
        v35 = 128;
LABEL_50:
        _os_log_debug_impl(&dword_26168F000, v34, OS_LOG_TYPE_DEBUG, v33, &v51, v35);
      }
    }

    else if (v17)
    {
      v37 = *(v5 + 24);
      v38 = *(v5 + 176);
      v39 = *(a3 + 16);
      v40 = "";
      v41 = "(new)";
      if ((v39 & 1) == 0)
      {
        v41 = "";
      }

      v42 = *a2;
      v43 = "(data)";
      v44 = a2[28];
      if ((a3[2] & 8) == 0)
      {
        v43 = "";
      }

      v45 = *(a2 + 1);
      v46 = "(destroyed)";
      if ((a3[2] & 2) == 0)
      {
        v46 = "";
      }

      v51 = 136317954;
      v47 = "(ownerChange)";
      v52 = v16;
      v53 = 2048;
      if ((v39 & 4) == 0)
      {
        v47 = "";
      }

      v54 = v37;
      v48 = "Commit";
      v55 = 1024;
      if (a5)
      {
        v48 = a5;
      }

      v56 = v38;
      v57 = 2080;
      v58 = v41;
      if (v42)
      {
        v49 = "(Atomic)";
      }

      else
      {
        v49 = "";
      }

      v59 = 2080;
      v60 = v43;
      if ((v42 & 2) != 0)
      {
        v50 = "(Held)";
      }

      else
      {
        v50 = "";
      }

      v61 = 2080;
      v62 = v46;
      if (v44)
      {
        v40 = "(Fwd)";
      }

      v63 = 2080;
      v64 = v47;
      v65 = 2080;
      v66 = v48;
      v67 = 2080;
      v68 = v49;
      v69 = 2080;
      v70 = v50;
      v71 = 2080;
      v72 = v40;
      v73 = 2048;
      v74 = v45;
      v33 = "\t%s Id=%llu(v#%u) %s%s%s%s \t%s %s%s%s Peer=%llu";
      v34 = a1;
      v35 = 118;
      goto LABEL_50;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t re::SyncSnapshotDump::log(NSObject *a1, uint64_t a2, const char *a3)
{
  re::DynamicArray<re::internal::SyncSnapshotEntry>::DynamicArray(v10, (a2 + 32));
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      v7 = re::SyncSnapshot::readAt(v10, i);
      re::SyncSnapshotDump::log(a1, a2, v7, v8, a3);
    }
  }

  return re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v10);
}

uint64_t re::SyncSelectiveAckedUnicast::SyncSelectiveAckedUnicast(uint64_t a1, id *a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, id *a7, char a8, char a9, char a10, int a11)
{
  v80 = a4;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F5378;
  *(v19 + 24) = 0;
  objc_copyWeak((v19 + 24), a2);
  *(a1 + 32) = 0u;
  v77 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  re::make::shared::object<re::SyncObjectShortIDManagerImpl>(v20, &to);
  *(a1 + 72) = to;
  *(a1 + 96) = 0;
  *(a1 + 80) = a5;
  *(a1 + 88) = a6;
  objc_copyWeak((a1 + 96), a7);
  *(a1 + 104) = a8;
  *(a1 + 105) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  v22 = re::globalAllocators(v21);
  v23 = (*(*v22[2] + 32))(v22[2], 208, 8);
  to = 0;
  objc_copyWeak(&to, a3);
  re::UnreliableAckedUnicastStream::UnreliableAckedUnicastStream(v23, &to, a4, 1, 4, 0);
  objc_destroyWeak(&to);
  if (*a3)
  {
    v24 = (*a3 - 8);
  }

  else
  {
    v24 = 0;
  }

  WeakRetained = objc_loadWeakRetained(a2);
  if (WeakRetained)
  {
    v26 = WeakRetained - 8;
  }

  else
  {
    v26 = 0;
  }

  (*(*v26 + 32))(&to, v26);
  v27 = *(to + 820);
  v28 = re::Transport::registerStream(v24, v23, 4uLL, a4);
  if (to)
  {

    to = 0;
  }

  if (v28)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = v23;
    v23 = v29;
  }

  LODWORD(location) = 0;
  v79 = 1;
  v78 = 5;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(&to, a3, &v80, &location, &v79, &v78);
  v30 = to;
  if (*a3)
  {
    v31 = (*a3 - 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = v80;
  v33 = objc_loadWeakRetained(a2);
  if (v33)
  {
    v34 = v33 - 8;
  }

  else
  {
    v34 = 0;
  }

  (*(*v34 + 32))(&to, v34);
  v35 = *(to + 820);
  v36 = re::Transport::registerStream(v31, v30, 5uLL, v32);
  if (to)
  {

    to = 0;
  }

  if (v36)
  {
    v38 = *(a1 + 48);
    *(a1 + 48) = v30;
    v30 = v38;
  }

  if (a10)
  {
    re::make::shared::object<re::SyncAckedStateBuffer>(v37, &to);
    v39 = *v77;
    *v77 = to;
    to = v39;
    if (v39)
    {
    }

    LODWORD(location) = 0;
    v79 = 1;
    v78 = 3;
    re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(&to, a3, &v80, &location, &v79, &v78);
    v40 = to;
    if (*a3)
    {
      v41 = (*a3 - 8);
    }

    else
    {
      v41 = 0;
    }

    v42 = v80;
    v43 = objc_loadWeakRetained(a2);
    if (v43)
    {
      v44 = v43 - 8;
    }

    else
    {
      v44 = 0;
    }

    (*(*v44 + 32))(&to, v44);
    v45 = *(to + 820);
    v46 = re::Transport::registerStream(v41, v40, 3uLL, v42);
    if (to)
    {

      to = 0;
    }

    if (v46)
    {
      v48 = re::globalAllocators(v47);
      v49 = (*(*v48[2] + 32))(v48[2], 32, 8);
      ArcSharedObject::ArcSharedObject(v49, 0);
      *(v49 + 3) = v40;
      *v49 = &unk_2873F54B8;
      if (v40)
      {
        v50 = v40 + 8;
      }

      v40 = *(a1 + 40);
      *(a1 + 40) = v49;
    }

    if (v40)
    {
    }
  }

  LODWORD(location) = 0;
  v79 = 1;
  v78 = 2;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(&to, a3, &v80, &location, &v79, &v78);
  v51 = to;
  if (*a3)
  {
    v52 = (*a3 - 8);
  }

  else
  {
    v52 = 0;
  }

  v53 = v80;
  v54 = objc_loadWeakRetained(a2);
  if (v54)
  {
    v55 = v54 - 8;
  }

  else
  {
    v55 = 0;
  }

  (*(*v55 + 32))(&to, v55);
  v56 = *(to + 820);
  v57 = re::Transport::registerStream(v52, v51, 2uLL, v53);
  if (to)
  {

    to = 0;
  }

  if (v57)
  {
    v59 = re::globalAllocators(v58);
    v60 = (*(*v59[2] + 32))(v59[2], 32, 8);
    to = v51;
    v58 = re::MessageStreamer<re::SyncOwnershipRequest>::MessageStreamer(v60, &to);
    if (to)
    {
    }

    v61 = *(a1 + 64);
    *(a1 + 64) = v60;
    if (v61)
    {
    }

    v51 = 0;
  }

  v62 = *(a1 + 72);
  v63 = *(a1 + 32);
  if (*a3)
  {
    v64 = *a3 - 8;
  }

  else
  {
    v64 = 0;
  }

  v65 = *(v64 + 568);
  v66 = re::globalAllocators(v58);
  v67 = (*(*v66[2] + 32))(v66[2], 312, 8);
  if (v62)
  {
    v68 = (v62 + 8);
  }

  else
  {
    v68 = 0;
  }

  objc_initWeak(&to, v68);
  if (v63)
  {
    v69 = (v63 + 8);
  }

  else
  {
    v69 = 0;
  }

  objc_initWeak(&location, v69);
  re::SyncSendBuffer::SyncSendBuffer(v67, &to, &location, v65);
  objc_destroyWeak(&location);
  location = 0;
  objc_destroyWeak(&to);
  v70 = *(a1 + 280);
  *(a1 + 280) = v67;
  if (v70)
  {

    v67 = *(a1 + 280);
  }

  *(v67 + 216) = *(a1 + 80);
  *(v67 + 304) = a11;
  to = 0;
  v71 = v80;
  if (*a3)
  {
    v72 = *a3 - 8;
  }

  else
  {
    v72 = 0;
  }

  if (re::Transport::receive(v72, v80, 1u, &to))
  {
    do
    {
      if (*a3)
      {
        v73 = (*a3 - 8);
      }

      else
      {
        v73 = 0;
      }

      if (re::Transport::dispatchPacketToStream(v73, to, v71))
      {
        if (*a3)
        {
          v74 = *a3 - 8;
        }

        else
        {
          v74 = 0;
        }

        re::PacketPool::free(*(v74 + 384), to);
      }

      if (*a3)
      {
        v75 = *a3 - 8;
      }

      else
      {
        v75 = 0;
      }
    }

    while (re::Transport::receive(v75, v71, 1u, &to));
  }

  if (v51)
  {
  }

  if (v30)
  {
  }

  if (v23)
  {
  }

  return a1;
}

void re::SyncSelectiveAckedUnicast::send(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) && (v6 = *(a1 + 56)) != 0 && *(a1 + 72))
  {
    *(a1 + 112) = 0;
    v11 = *(v6 + 32);
    if (v11)
    {
      v12 = v11 - 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 512);
    if (v13 >= 0x10000)
    {
      v13 = 0x10000;
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v47 = &unk_2873F5338;
    v48 = 0;
    v53 = v6;
    v54 = 0;
    v55 = v13;
    v46 = 0;
    v43[1] = 0;
    v44 = 0;
    v43[0] = 0;
    v45 = 0;
    v14 = *(a1 + 104);
    v57 = a4;
    v60 = *(a4 + 56);
    v64 = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    v67 = v60;
    v71 = 0;
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    v74 = v60;
    v78 = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    v81 = v60;
    v85 = 0;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v86 = 0;
    v87 = v60;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v95 = 0;
    v91 = 0;
    v92 = 0;
    v94 = 0;
    v93 = 0;
    *buf = v14;
    v59 = 1;
    v58 = 1;
    v66 = 0;
    v65 = 2;
    v80 = 0;
    v79 = 2;
    v73 = 0;
    v72 = 0;
    re::SyncCommitBuilder::begin(buf);
    v15 = *(a4 + 96);
    if (v15)
    {
      v16 = 0;
      v17 = *(a4 + 80);
      while (1)
      {
        v18 = *v17;
        v17 += 8;
        if (v18 < 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          LODWORD(v16) = *(a4 + 96);
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

LABEL_39:
    while (v16 != v15)
    {
      v24 = *(a4 + 80) + 32 * v16;
      v27 = *(v24 + 8);
      v25 = v24 + 8;
      v26 = v27;
      v28 = *(v27 + 80);
      if (v28)
      {
        do
        {
          v29 = v26;
          v26 = v28;
          if (*(*(*(v29 + 88) + 16) + 73))
          {
            break;
          }

          v28 = *(v28 + 80);
          v29 = v26;
        }

        while (v28);
      }

      else
      {
        v29 = v26;
      }

      if ((*(v29 + 170) & 1) != 0 || (buf[0] & 1) != 0 || buf[1] == 1)
      {
        if (*(v25 + 8))
        {
          re::SyncCommitBuilder::buildViewRemoval(buf, v25);
        }

        else
        {
          re::SyncCommitBuilder::buildViewAdd(buf, v25);
        }
      }

      v30 = *(a4 + 96);
      if (v30 <= v16 + 1)
      {
        v30 = v16 + 1;
      }

      while (v30 - 1 != v16)
      {
        LODWORD(v16) = v16 + 1;
        if ((*(*(a4 + 80) + 32 * v16) & 0x80000000) != 0)
        {
          goto LABEL_39;
        }
      }

      LODWORD(v16) = v30;
    }

    v31 = a2[1];
    if (v31)
    {
      v32 = *a2;
      v33 = 72 * v31;
      do
      {
        re::SyncCommitBuilder::buildUpdate(buf, v32);
        v32 += 72;
        v33 -= 72;
      }

      while (v33);
    }

    re::SyncCommitBuilder::buildOwnershipChanges(buf, *a3, *(a3 + 8));
    re::SyncCommitBuilder::end(buf, v43);
    re::SyncCommitBuilder::~SyncCommitBuilder(buf);
    v35 = v46;
    if (v44)
    {
      v36 = 72 * v44;
      do
      {
        re::SyncSelectiveAckedUnicast::sendCommit(a1, v35, &v47, a5);
        v35 += 72;
        v36 -= 72;
      }

      while (v36);
      v35 = v46;
      v37 = v44;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a1 + 280);
    v39 = *(a1 + 56);
    v97 = re::globalAllocators(v34)[2];
    v40 = (*(*v97 + 32))(v97, 32, 0);
    *v40 = &unk_2873F5408;
    v40[1] = a1;
    v40[2] = &v47;
    v40[3] = a5;
    v98 = v40;
    re::SyncSendBuffer::resend(v38, v35, v37, (v39 + 152), v96);
    if (v98)
    {
      (**v98)(v98);
      if (v98 != v96)
      {
        (*(*v97 + 40))(v97);
      }

      v98 = 0;
    }

    v41 = v51;
    if (HIDWORD(v51))
    {
      v41 = v51 + 1;
    }

    if (v41)
    {
      v42 = *(a1 + 56);
      *(v54 + 24) = v41;
      v51 = 0;
      v52 = 0;
      v48 = 0;
      v49 = 0;
      v54 = 0;
      (*(*v42 + 48))(v42);
    }

    re::UnreliableAckedUnicastStream::update(*(a1 + 56));
    re::DynamicArray<re::SyncCommit>::deinit(v43);
    if (v54)
    {
      (*(*v53 + 40))(v53);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v20 = WeakRetained - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 + 8;
    (*(*v20 + 32))(buf);
    v22 = *(*buf + 3272);

    *buf = 0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v22, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to send.", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void re::SyncSelectiveAckedUnicast::sendCommit(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 < 0)
  {
    v8 = "ReSendCommit";
  }

  else
  {
    v8 = "SendCommit";
  }

  re::SyncCommitDump::log(a2, 1, v8);
  if (*a2)
  {

    re::SyncSelectiveAckedUnicast::sendCommitReliable(a1, a2, a4);
  }

  else
  {
    v9 = a1[4];
    v19[0] = a1[9];
    v19[1] = v9;
    v20 = 1;
    if (*(a2 + 6))
    {
      v10 = 0;
      do
      {
        v11 = re::SyncPacker::packCommit(v19, a2, a3, a4, v10);
        v13 = a1[14] + v11;
        a1[14] = v13;
        if (v13)
        {
          v14 = v11;
          re::SyncSendBuffer::objectsSent(a1[35], *(a2 + 8) + 24 * v10, v11, *(a1[7] + 192));
          v10 += v14;
          if (v10 < *(a2 + 6))
          {
            v15 = a1[7];
            v16 = *(a3 + 24);
            if (*(a3 + 28))
            {
              ++v16;
            }

            *(*(a3 + 48) + 24) = v16;
            *(a3 + 24) = 0;
            *(a3 + 32) = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 48) = 0;
            (*(*v15 + 48))(v15);
            a1[14] = 0;
          }
        }

        else
        {
          v17 = *(a2 + 6);
          if (v17 <= v10)
          {
            re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v17);
            _os_crash();
            __break(1u);
            return;
          }

          v18 = *(a2 + 8);
          v30 = 0;
          memset(v28, 0, sizeof(v28));
          v29 = 0;
          re::DynamicArray<re::internal::SyncSnapshotEntry>::add(v28, (v18 + 24 * v10));
          v27 = 0;
          memset(v25, 0, sizeof(v25));
          v26 = 0;
          v22 = *(a2 + 8);
          v23 = *(a2 + 6);
          v21[0] = *a2;
          v24 = a2[28];
          re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v25, v28);
          re::SyncSelectiveAckedUnicast::sendCommitReliable(a1, v21, a4);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v25);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v28);
          ++v10;
        }
      }

      while (v10 < *(a2 + 6));
    }
  }
}

uint64_t re::SyncSelectiveAckedUnicast::sendCommitReliable(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[6] + 24;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v14 = &unk_2873F4D10;
  v15 = 0;
  v20 = v5;
  v21 = 0;
  v12[0] = a1[9];
  v12[1] = 0;
  v13 = 0;
  result = re::SyncPacker::packCommit(v12, a2, &v14, a3, 0);
  v7 = *(a2 + 48);
  if (v7)
  {
    v8 = *(a2 + 64);
    v9 = 24 * v7;
    do
    {
      result = re::SyncSendBuffer::addAck(a1[35], v8);
      v8 += 3;
      v9 -= 24;
    }

    while (v9);
  }

  v10 = v18;
  if (HIDWORD(v18))
  {
    v10 = v18 + 1;
  }

  if (v10)
  {
    v11 = a1[6];
    *(v21 + 24) = v10;
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v16 = 0;
    v21 = 0;
    result = (*(*v11 + 48))(v11);
  }

  if (v21)
  {
    return (*(*v20 + 24))(v20);
  }

  return result;
}

uint64_t re::SyncSelectiveAckedUnicast::receive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  if (!v5 || !*(a1 + 56) || !*(a1 + 72))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v13 = WeakRetained - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 + 8;
    (*(*v13 + 32))(buf);
    v15 = *(*buf + 3272);

    *buf = 0;
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v15, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to receive.", buf, 2u);
      result = 0;
    }

    goto LABEL_16;
  }

  result = re::SyncSelectiveAckedUnicast::receiveFromStream(a1, v5, a2);
  if (!result)
  {
    goto LABEL_16;
  }

  result = re::SyncSelectiveAckedUnicast::receiveFromStream(a1, *(a1 + 56), a2);
  if (!result)
  {
    goto LABEL_16;
  }

  buf[0] = 0;
  v74 = 0;
  v71[1] = 0;
  v72 = 0;
  v71[0] = 0;
  v73 = 0;
  v69 = *(a1 + 80);
  v70[0] = 0;
  *(v70 + 5) = 0;
  v8 = *(a1 + 224);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 208);
    while (1)
    {
      v11 = *v10;
      v10 += 18;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a1 + 224);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v67 = a3;
  if (v9 != v8)
  {
    v17 = 0;
    while (1)
    {
      v51 = *(a1 + 208) + 72 * v9;
      if (!*(v51 + 24))
      {
        break;
      }

      if ((*(v51 + 48) & 2) != 0)
      {
        goto LABEL_86;
      }

      v52 = objc_loadWeakRetained((a1 + 96));
      v53 = v52;
      if (v52)
      {
        v54 = (v52 - 8);
      }

      else
      {
        v54 = 0;
      }

      re::SyncObjectStore::findObject(v54, *(v51 + 16), *(v51 + 24), &v77);
      if (v53)
      {
      }

      v55 = v77;
      if (v77)
      {
        v56 = *(v51 + 8);
        if (*(v56 + 10))
        {
          v57 = objc_loadWeakRetained((a1 + 24));
          if (v57)
          {
            v58 = v57 - 8;
          }

          else
          {
            v58 = 0;
          }

          v59 = v58 + 8;
          (*(*v58 + 32))(v83);
          v60 = *(*v83 + 3272);

          *v83 = 0;
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
          v55 = v77;
          if (v61)
          {
            v62 = *(v51 + 8);
            v63 = *(v62 + 24);
            v64 = *(*(v62 + 80) + 24);
            v65 = *(v77 + 3);
            *v83 = 134218496;
            *&v83[4] = v63;
            *v84 = 2048;
            *&v84[2] = v64;
            v85 = 2048;
            v86 = v65;
            _os_log_impl(&dword_26168F000, v60, OS_LOG_TYPE_DEFAULT, "Parent already bound for object: %llu, current parent: %llu, attempted new parent: %llu", v83, 0x20u);
          }
        }

        else
        {
          re::SyncObject::bindWithParent(v56, v77);
        }

        re::DynamicArray<re::internal::SyncSnapshotEntry>::add(v71, v51 + 32);
        re::DynamicArray<re::SharedPtr<re::SyncObject>>::add((a1 + 240), (v51 + 8));
        if (v55)
        {
        }
      }

LABEL_87:
      v66 = *(a1 + 224);
      if (v66 <= v9 + 1)
      {
        v66 = v9 + 1;
      }

      while (v66 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(*(a1 + 208) + 72 * v9) & 0x80000000) != 0)
        {
          goto LABEL_93;
        }
      }

      LODWORD(v9) = v66;
LABEL_93:
      if (v9 == v8)
      {
        goto LABEL_20;
      }
    }

    if (*(v51 + 56) & 1) == 0 && (*(v51 + 48))
    {
      goto LABEL_87;
    }

    v17 = *(v51 + 56) | v17 & 1;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::add(v71, v51 + 32);
LABEL_86:
    re::DynamicArray<re::SharedPtr<re::SyncObject>>::add((a1 + 240), (v51 + 8));
    goto LABEL_87;
  }

  v17 = 0;
LABEL_20:
  v18 = *(a1 + 256);
  if (v18)
  {
    v19 = 8 * v18;
    v20 = *(a1 + 272);
    do
    {
      v21 = 0xBF58476D1CE4E5B9 * (*v20 ^ (*v20 >> 30));
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(v83, a1 + 192, *v20, (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31));
      v22 = *v84;
      if (*v84 != 0x7FFFFFFF)
      {
        v23 = *(a1 + 208);
        v24 = (v23 + 72 * *v84);
        v25 = *v24 & 0x7FFFFFFF;
        if (*&v84[4] == 0x7FFFFFFF)
        {
          *(*(a1 + 200) + 4 * *&v83[8]) = v25;
        }

        else
        {
          *(v23 + 72 * *&v84[4]) = *(v23 + 72 * *&v84[4]) & 0x80000000 | v25;
        }

        re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::EntryBase::free(v24);
        *(*(a1 + 208) + 72 * v22) = *(*(a1 + 208) + 72 * v22) & 0x80000000 | *(a1 + 228);
        --*(a1 + 220);
        v26 = *(a1 + 232) + 1;
        *(a1 + 228) = v22;
        *(a1 + 232) = v26;
      }

      ++v20;
      v19 -= 8;
    }

    while (v19);
  }

  if (((v72 != 0) & v17) != 0)
  {
    buf[0] |= 1u;
  }

  re::DynamicArray<re::SharedPtr<re::SyncObject>>::clear(a1 + 240);
  v27 = *(a1 + 40);
  if (v27)
  {
    v28 = (*(**(v27 + 24) + 56))(*(v27 + 24));
    if (v28)
    {
      v29 = v28;
      while (1)
      {
        v30 = *(v29 + 24);
        v77 = *(v29 + 16);
        v78 = v30;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        if (v30)
        {
          break;
        }

LABEL_65:
        (*(**(v27 + 24) + 40))(*(v27 + 24), v29);
        v29 = (*(**(v27 + 24) + 56))(*(v27 + 24));
        if (!v29)
        {
          goto LABEL_66;
        }
      }

      while (1)
      {
        v75 = 0;
        v76 = 0;
        re::BitReader::readUInt64(&v77, &v75);
        re::BitReader::readUInt64(&v77, &v76);
        if (v79)
        {
          break;
        }

        v31 = objc_loadWeakRetained((a1 + 96));
        v32 = v31;
        if (v31)
        {
          v33 = (v31 - 8);
        }

        else
        {
          v33 = 0;
        }

        re::SyncObjectStore::findObject(v33, v75, v76, &v82);
        if (v32)
        {
        }

        v34 = v82;
        if (v82)
        {
          while ((*(*(v34[11] + 2) + 74) & 1) == 0)
          {
            v34 = v34[10];
            if (!v34)
            {
              goto LABEL_54;
            }
          }

          v42 = v34[12];
          if (v42)
          {
            v43 = *(v42 + 13);
            if (v43)
            {
              v44 = *(v42 + 15);
              v45 = 8 * v43;
              while (*(*v44 + 56) != *(a1 + 80))
              {
                v44 += 8;
                v45 -= 8;
                if (!v45)
                {
                  goto LABEL_54;
                }
              }

              re::SyncSendBuffer::resetAcks(*(a1 + 280), &v82);
              goto LABEL_60;
            }
          }

LABEL_54:
          v46 = objc_loadWeakRetained((a1 + 24));
          if (v46)
          {
            v47 = v46 - 8;
          }

          else
          {
            v47 = 0;
          }

          v48 = v47 + 8;
          (*(*v47 + 32))(v83);
          v49 = *(*v83 + 3272);

          *v83 = 0;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = *(a1 + 80);
            *v83 = 134218496;
            *&v83[4] = v75;
            *v84 = 2048;
            *&v84[2] = v76;
            v85 = 2048;
            v86 = v50;
            v39 = v49;
            v40 = "Received history reset request for object {%llu, %llu}.But the object is not viewed by peer %llu.";
            v41 = 32;
            goto LABEL_59;
          }
        }

        else
        {
          v35 = objc_loadWeakRetained((a1 + 24));
          if (v35)
          {
            v36 = v35 - 8;
          }

          else
          {
            v36 = 0;
          }

          v37 = v36 + 8;
          (*(*v36 + 32))(v83);
          v38 = *(*v83 + 3272);

          *v83 = 0;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *v83 = 134218240;
            *&v83[4] = v75;
            *v84 = 2048;
            *&v84[2] = v76;
            v39 = v38;
            v40 = "Received history reset request for object {%llu, %llu}.But the object does not exist.";
            v41 = 22;
LABEL_59:
            _os_log_impl(&dword_26168F000, v39, OS_LOG_TYPE_DEFAULT, v40, v83, v41);
          }
        }

LABEL_60:
        if (v82)
        {
        }

        HIDWORD(v80) = 0;
        v81 = 0;
        if (v78 == v80)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  (*(v67 + 16))(v67, buf, a2);
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v71);
  result = 1;
LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncSelectiveAckedUnicast::receiveFromStream(uint64_t a1, void *a2, uint64_t a3)
{
  v86 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) && *(a1 + 56) && (v4 = *(a1 + 72)) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v7 = *(a1 + 104);
    v8 = WeakRetained - 8;
    if (!WeakRetained)
    {
      v8 = 0;
    }

    *buf = v4;
    v64 = v8;
    v65 = *(a1 + 80);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
    v69 = 0x7FFFFFFFLL;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v73 = 0;
    v75 = v7;
    if (WeakRetained)
    {
    }

    v9 = (*(*a2 + 56))(a2);
    if (v9)
    {
      v11 = v9;
      do
      {
        v12 = *(v11 + 24);
        v76 = *(v11 + 16);
        LODWORD(v77) = v12;
        BYTE4(v77) = 0;
        v78 = 0;
        v79 = 0;
        if (v12)
        {
          v55 = v10;
          v56 = v11;
          v13 = 2;
          do
          {
            v14 = re::SyncUnpacker::unpackCommit(buf, &v76, a1 + 120, a3);
            if (v14 < v13)
            {
              v13 = v14;
            }

            if (!v13)
            {
              v45 = a2[4];
              if (v45)
              {
                v46 = (v45 - 8);
              }

              else
              {
                v46 = 0;
              }

              re::Transport::connectionAddress(v46, a2[5], &v60);
              v47 = objc_loadWeakRetained((a1 + 24));
              if (v47)
              {
                v48 = v47 - 8;
              }

              else
              {
                v48 = 0;
              }

              v49 = v48 + 8;
              (*(*v48 + 32))(v83);
              v50 = *(*v83 + 3272);

              *v83 = 0;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v53 = *(a1 + 80);
                if (v61)
                {
                  v54 = v62;
                }

                else
                {
                  v54 = &v61 + 1;
                }

                *v83 = 134218242;
                *&v83[4] = v53;
                v84 = 2082;
                v85 = v54;
                _os_log_error_impl(&dword_26168F000, v50, OS_LOG_TYPE_ERROR, "Failed to parse incoming packet. Will drop peer.(peerID=%llu, address=%{public}s)", v83, 0x16u);
              }

              re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(a1 + 152);
              (*(*a2 + 40))(a2, v56);
              if (v60 && (v61 & 1) != 0)
              {
                (*(*v60 + 40))();
              }

              v40 = 0;
              goto LABEL_63;
            }

            v58 = v13;
            re::SyncCommitDump::log((a1 + 120), 1, "RecvCommit");
            v15 = *(a1 + 168);
            if (v15)
            {
              v16 = *(a1 + 120) & 1;
              v17 = *(a1 + 184);
              v18 = 24 * v15;
              do
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(&v66, v17, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31), &v60);
                v20 = 0uLL;
                if (HIDWORD(v61) != 0x7FFFFFFF)
                {
                  v20 = *(v67 + 40 * HIDWORD(v61) + 16);
                }

                v59 = v20;
                v21 = *v17;
                if (*v17)
                {
                  v22 = (v21 + 8);
                  v23 = *v17;
                }

                else
                {
                  v23 = 0;
                }

                *v83 = v17[1];
                v83[8] = *(v17 + 16);
                v60 = 0;
                v61 = 0;
                v62 = 0;
                v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
                re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(&v60, a1 + 192, v23, v24 ^ (v24 >> 31));
                if (HIDWORD(v61) == 0x7FFFFFFF)
                {
                  v25 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1 + 192, v61, v60);
                  v26 = *v17;
                  *(v25 + 8) = *v17;
                  if (v26)
                  {
                    v27 = (v26 + 8);
                  }

                  *(v25 + 16) = v59;
                  v28 = v25 + 16;
                  v29 = *v83;
                  *(v28 + 16) = v21;
                  *(v28 + 24) = v29;
                  *(v28 + 32) = v83[8];
                  *(v28 + 40) = v16;
                  ++*(a1 + 232);
                }

                else
                {
                  v28 = *(a1 + 208) + 72 * HIDWORD(v61) + 16;
                  if (v21)
                  {
                  }
                }

                *(v28 + 40) |= v16;
                v30 = *(v28 + 32);
                v31 = v17[2] & 1 | v30;
                *(v28 + 32) = v31;
                v32 = v31 & 0xFFFFFFFD | (2 * (((*(v17 + 16) | v30) >> 1) & 1));
                *(v28 + 32) = v32;
                LOBYTE(v32) = v32 & 0xFB | (4 * (((*(v17 + 16) | v30) & 4) != 0));
                *(v28 + 32) = v32;
                *(v28 + 32) = v32 & 0xF7 | (*(v17 + 16) | v30) & 8;
                if ((v17[2] & 8) != 0)
                {
                  *(v28 + 24) = v17[1];
                }

                v17 += 3;
                v18 -= 24;
              }

              while (v18);
            }

            re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(a1 + 152);
            v13 = v58;
          }

          while (v77 != v78);
          v10 = v55;
          v11 = v56;
          if (v58 != 2)
          {
            goto LABEL_34;
          }
        }

        (*(*a2 + 64))(a2, v10);
LABEL_34:
        (*(*a2 + 40))(a2, v11);
        v11 = (*(*a2 + 56))(a2);
      }

      while (v11);
    }

    v33 = *(a1 + 40);
    if (v33)
    {
      v34 = v74;
      v35 = *(v33 + 24) + 24;
      LODWORD(v78) = 0;
      BYTE4(v78) = 0;
      v79 = 0;
      v80 = 0;
      v76 = &unk_2873F4D10;
      v77 = 0;
      v81 = v35;
      v82 = 0;
      if (v72)
      {
        v36 = 16 * v72;
        do
        {
          re::SyncHistoryResetRequest::write(v34, &v76);
          re::BitWriter::alignToByte(&v76);
          v34 = (v34 + 16);
          v36 -= 16;
        }

        while (v36);
        v37 = v79;
        v38 = v82;
        if (HIDWORD(v79))
        {
          v37 = v79 + 1;
        }

        if (v37)
        {
          v39 = *(v33 + 24);
          *(v82 + 24) = v37;
          v79 = 0;
          v80 = 0;
          v77 = 0;
          LODWORD(v78) = 0;
          v82 = 0;
          (*(*v39 + 48))(v39);
          v38 = v82;
        }

        if (v38)
        {
          (*(*v81 + 24))(v81);
        }
      }
    }

    v40 = 1;
LABEL_63:
    if (v70)
    {
      if (v74)
      {
        (*(*v70 + 40))();
      }

      v74 = 0;
      v71 = 0;
      v72 = 0;
      v70 = 0;
      ++v73;
    }

    re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(&v66);
  }

  else
  {
    v41 = objc_loadWeakRetained((a1 + 24));
    if (v41)
    {
      v42 = v41 - 8;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 + 8;
    (*(*v42 + 32))(buf);
    v44 = *(*buf + 3272);

    *buf = 0;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v44, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to receive.", buf, 2u);
    }

    v40 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v40;
}

_DWORD *re::MessageStreamer<re::SyncOwnershipRequest>::send(_DWORD *result, re::SyncOwnershipRequest *this, uint64_t a3)
{
  v3 = *(result + 3) + 24;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = &unk_2873F4D10;
  v11 = 0;
  v16 = v3;
  v17 = 0;
  if (a3)
  {
    v5 = result;
    v6 = 80 * a3;
    do
    {
      re::SyncOwnershipRequest::write(this, &v10);
      result = re::BitWriter::alignToByte(&v10);
      this = (this + 80);
      v6 -= 80;
    }

    while (v6);
    v7 = v14;
    v8 = v17;
    if (HIDWORD(v14))
    {
      v7 = v14 + 1;
    }

    if (v7)
    {
      v9 = *(v5 + 3);
      *(v17 + 24) = v7;
      v14 = 0;
      v15 = 0;
      v11 = 0;
      v12 = 0;
      v17 = 0;
      result = (*(*v9 + 48))(v9);
      v8 = v17;
    }

    if (v8)
    {
      return (*(*v16 + 24))(v16);
    }
  }

  return result;
}

uint64_t re::SyncSelectiveAckedUnicast::receiveOwnershipRequests(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v12 = *(a2 + 24);
  v13 = 0;
  if (v11 != a2)
  {
    re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v11);
    v4 = *(a2 + 32);
    if (v12 != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        if (v6 >= 0x19)
        {
          if (v12)
          {
            v7 = (*(*v12 + 32))(v12, v6, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = v11;
        }

        v13 = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(a2);
      }
    }

    else
    {
      v13 = *(a2 + 32);
      *(a2 + 32) = 0;
    }
  }

  v8 = re::MessageStreamer<re::SyncOwnershipRequest>::receive<re::Function<void ()(re::SyncOwnershipRequest const&)>>(v2, v11);
  re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t re::MessageStreamer<re::SyncOwnershipRequest>::receive<re::Function<void ()(re::SyncOwnershipRequest const&)>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    v6 = *(v5 + 24);
    v17 = *(v5 + 16);
    v18 = v6;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (v6)
    {
      break;
    }

LABEL_10:
    (*(**(a1 + 24) + 40))(*(a1 + 24), v5);
    v5 = (*(**(a1 + 24) + 56))(*(a1 + 24));
    if (!v5)
    {
      return 1;
    }
  }

  while (1)
  {
    v10 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    if (!re::SyncOwnershipRequest::read(v8, &v17) || (v19 & 1) != 0)
    {
      break;
    }

    (*(**(a2 + 32) + 16))(*(a2 + 32), v8);
    HIDWORD(v20) = 0;
    v21 = 0;
    if (v10)
    {
      if (v14)
      {
        (*(*v10 + 40))();
      }
    }

    if (v18 == v20)
    {
      goto LABEL_10;
    }
  }

  if (v10 && v14)
  {
    (*(*v10 + 40))();
  }

  return 0;
}

void re::SyncSelectiveAckedUnicast::~SyncSelectiveAckedUnicast(re::SyncSelectiveAckedUnicast *this)
{
  re::SyncSelectiveAckedUnicast::~SyncSelectiveAckedUnicast(this);

  JUMPOUT(0x266708EC0);
}

{
  v2 = *(this + 35);
  if (v2)
  {

    *(this + 35) = 0;
  }

  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 240);
  re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 24);
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 152);
  objc_destroyWeak(this + 12);
  *(this + 12) = 0;
  v3 = *(this + 9);
  if (v3)
  {

    *(this + 9) = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {

    *(this + 8) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  v6 = *(this + 6);
  if (v6)
  {

    *(this + 6) = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {

    *(this + 5) = 0;
  }

  v8 = *(this + 4);
  if (v8)
  {

    *(this + 4) = 0;
  }

  objc_destroyWeak(this + 3);
  *(this + 3) = 0;
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

uint64_t re::internal::Callable<re::SyncSelectiveAckedUnicast::send(re::Slice<re::SyncCommit> const&,re::Slice<re::SharedPtr<re::SyncObject>> const&,re::SyncObjectViewer *,re::SyncObjectWriteContext &)::$_0,void ()(re::SyncCommit const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5408;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::SyncSelectiveAckedUnicast::send(re::Slice<re::SyncCommit> const&,re::Slice<re::SharedPtr<re::SyncObject>> const&,re::SyncObjectViewer *,re::SyncObjectWriteContext &)::$_0,void ()(re::SyncCommit const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5408;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

double re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 72;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = *(a1 + 8);
    if (v2)
    {

      *(a1 + 8) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {

      *(a1 + 32) = 0;
    }
  }
}

re::SyncObjectShortIDManagerImpl *re::make::shared::object<re::SyncObjectShortIDManagerImpl>@<X0>(re *a1@<X0>, re::SyncObjectShortIDManagerImpl **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 232, 8);
  result = re::SyncObjectShortIDManagerImpl::SyncObjectShortIDManagerImpl(v4);
  *a2 = result;
  return result;
}

void re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(re *a1, id *a2, uint64_t *a3, int *a4, char *a5, unsigned int *a6)
{
  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 112, 8);
  to = 0;
  objc_copyWeak(&to, a2);
  re::UnicastStream::UnicastStream(v13, &to, *a3, *a4, *a5, *a6, 0);
  *a1 = v13;
  objc_destroyWeak(&to);
}

double re::make::shared::object<re::SyncAckedStateBuffer>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 72, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_2873F5470;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v4 + 60) = 0x7FFFFFFFLL;
  *a2 = v4;
  return result;
}

void re::SyncAckedStateBuffer::~SyncAckedStateBuffer(re::SyncAckedStateBuffer *this)
{
  *this = &unk_2873F5470;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 24);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F5470;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 24);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void *re::MessageStreamer<re::SyncHistoryResetRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F54B8;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::MessageStreamer<re::SyncHistoryResetRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F54B8;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x266708EC0);
}

_anonymous_namespace_ *re::MessageStreamer<re::SyncOwnershipRequest>::MessageStreamer(_anonymous_namespace_ *a1, uint64_t *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F5500;
  v4 = *a2;
  *(a1 + 3) = *a2;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  return a1;
}

void *re::MessageStreamer<re::SyncOwnershipRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F5500;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::MessageStreamer<re::SyncOwnershipRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F5500;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x266708EC0);
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 72 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 72 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 72 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
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

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v26, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 24);
                *(v17 - 24) = 0;
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 32) = *v17;
                *v17 = 0;
                v19 = *(v17 + 16);
                *(v18 + 40) = *(v17 + 8);
                *(v18 + 48) = v19;
                *(v18 + 56) = *(v17 + 24);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v26);
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
    v21 = *(v20 + 72 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 72 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 72 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 64) = a3;
  ++*(a1 + 28);
  return v20 + 72 * v5;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::SyncReliableOrderedUnicast::SyncReliableOrderedUnicast(uint64_t a1, id *a2, re *a3, unint64_t a4, uint64_t a5, uint64_t a6, id *a7, char a8, char a9, char a10)
{
  v54 = a4;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F5548;
  *(a1 + 24) = 0;
  v17 = (a1 + 24);
  *(v18 + 32) = 0;
  objc_copyWeak((v18 + 32), a2);
  *(a1 + 40) = 0;
  v19 = (a1 + 40);
  *(a1 + 48) = 0;
  re::make::shared::object<re::SyncObjectShortIDManagerImpl>(v20, &v55);
  *(a1 + 56) = v55;
  *(a1 + 64) = a5;
  *(a1 + 72) = a6;
  *(a1 + 80) = 0;
  objc_copyWeak((a1 + 80), a7);
  *(a1 + 88) = a8;
  *(a1 + 89) = a9;
  *(a1 + 90) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0x8000000000000000;
  v53 = 0;
  v52 = 1;
  v51 = 1;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 0x40000000;
  v49[2] = ___ZN2re26SyncReliableOrderedUnicastC2ENS_10ArcWeakPtrINS_11SyncSessionEEENS1_INS_9TransportEEEyyyNS1_INS_15SyncObjectStoreEEEbbb_block_invoke;
  v49[3] = &__block_descriptor_tmp_4;
  v49[4] = a1;
  v50 = v49;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},void({block_pointer})(unsigned long long)>(a3, &v54, &v53, &v52, &v51, &v50, &v55);
  v21 = v55;
  if (*a3)
  {
    v22 = (*a3 - 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = v54;
  WeakRetained = objc_loadWeakRetained(a2);
  if (WeakRetained)
  {
    v25 = WeakRetained - 8;
  }

  else
  {
    v25 = 0;
  }

  (*(*v25 + 32))(&v55, v25);
  v26 = *(v55 + 820);
  v27 = re::Transport::registerStream(v22, v21, 1uLL, v23);
  if (v55)
  {

    v55 = 0;
  }

  if (v27)
  {
    v29 = *v19;
    *v19 = v21;
    v21 = v29;
  }

  if (a10)
  {
    re::make::shared::object<re::SyncAckedStateBuffer>(v28, &v55);
    v30 = *v17;
    *v17 = v55;
    v55 = v30;
    if (v30)
    {
    }
  }

  v53 = 0;
  v52 = 1;
  v51 = 2;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 0x40000000;
  v48[2] = ___ZN2re26SyncReliableOrderedUnicastC2ENS_10ArcWeakPtrINS_11SyncSessionEEENS1_INS_9TransportEEEyyyNS1_INS_15SyncObjectStoreEEEbbb_block_invoke_2;
  v48[3] = &__block_descriptor_tmp_1;
  v48[4] = a1;
  v50 = v48;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},void({block_pointer})(unsigned long long)>(a3, &v54, &v53, &v52, &v51, &v50, &v55);
  v31 = v55;
  if (*a3)
  {
    v32 = (*a3 - 8);
  }

  else
  {
    v32 = 0;
  }

  v33 = v54;
  v34 = objc_loadWeakRetained(a2);
  if (v34)
  {
    v35 = v34 - 8;
  }

  else
  {
    v35 = 0;
  }

  (*(*v35 + 32))(&v55, v35);
  v36 = *(v55 + 820);
  v37 = re::Transport::registerStream(v32, v31, 2uLL, v33);
  if (v55)
  {

    v55 = 0;
  }

  if (v37)
  {
    v39 = re::globalAllocators(v38);
    v40 = (*(*v39[2] + 32))(v39[2], 32, 8);
    v55 = v31;
    if (v31)
    {
      v41 = v31 + 8;
    }

    re::MessageStreamer<re::SyncOwnershipRequest>::MessageStreamer(v40, &v55);
    if (v55)
    {
    }

    v42 = *(a1 + 48);
    *(a1 + 48) = v40;
    if (v42)
    {
    }
  }

  v55 = 0;
  if (*a3)
  {
    v43 = *a3 - 8;
  }

  else
  {
    v43 = 0;
  }

  if (re::Transport::receive(v43, v54, 1u, &v55))
  {
    do
    {
      if (*a3)
      {
        v44 = (*a3 - 8);
      }

      else
      {
        v44 = 0;
      }

      if (re::Transport::dispatchPacketToStream(v44, v55, v54))
      {
        if (*a3)
        {
          v45 = *a3 - 8;
        }

        else
        {
          v45 = 0;
        }

        re::PacketPool::free(*(v45 + 384), v55);
      }

      if (*a3)
      {
        v46 = *a3 - 8;
      }

      else
      {
        v46 = 0;
      }
    }

    while (re::Transport::receive(v46, v54, 1u, &v55));
  }

  if (v31)
  {
  }

  if (v21)
  {
  }

  return a1;
}

void re::SyncReliableOrderedUnicast::send(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v184 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) && *(a1 + 56))
  {
    memset(v166, 0, 28);
    *v178 = 0;
    v175 = 0;
    v176 = 0;
    v174 = 0;
    v177 = 0;
    v9 = *a3;
    v8 = *(a3 + 8);
    *&v167 = 0;
    v10 = *(a4 + 56);
    if (v8)
    {
      v11 = &v9[v8];
      do
      {
        v12 = *v9;
        if (*v9)
        {
          while ((*(*(*(v12 + 11) + 16) + 74) & 1) == 0)
          {
            v12 = *(v12 + 10);
            if (!v12)
            {
              goto LABEL_35;
            }
          }

          v13 = *(v12 + 12);
          if (v13)
          {
            v14 = *(v13 + 120);
            v15 = *(v13 + 104);
            if (v15)
            {
              v16 = 8 * v15;
              v17 = v14;
              while (*v17 != a4)
              {
                ++v17;
                v16 -= 8;
                if (!v16)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {
              v17 = v14;
            }

            if (v17 != &v14[v15])
            {
              WeakRetained = objc_loadWeakRetained((a1 + 32));
              if (WeakRetained)
              {
                v19 = WeakRetained - 8;
              }

              else
              {
                v19 = 0;
              }

              v20 = v19 + 8;
              (*(*v19 + 32))(buf);
              v21 = *(*buf + 3272);

              *buf = 0;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = *(*v9 + 3);
                *buf = 134217984;
                *&buf[4] = v22;
                _os_log_impl(&dword_26168F000, v21, OS_LOG_TYPE_INFO, "[Ownership] Adding ownership changes for: %llu", buf, 0xCu);
              }

              v23 = re::SyncObject::takeOverLatestState(*v9);
              if (v23)
              {
                if (v176)
                {
                  v24 = *v178 + 72 * v176;
                }

                else
                {
                  buf[0] = 0;
                  *&buf[8] = v10;
                  *&buf[16] = 0;
                  *&buf[24] = 0;
                  buf[28] = 0;
                  *&v183 = 0;
                  *&v182 = 0;
                  v181 = 0uLL;
                  DWORD2(v182) = 0;
                  re::DynamicArray<re::SyncCommit>::add(&v174, buf);
                  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v181);
                  v24 = *v178 + 72 * v176;
                  *(v24 - 72) = 1;
                }

                *buf = *v9;
                if (*buf)
                {
                  v32 = (*buf + 8);
                  v33 = *v9;
                }

                else
                {
                  v33 = 0;
                }

                *&buf[8] = re::SyncObject::latestStateHandle(v33);
                buf[16] &= 0xF0u;
                re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v24 - 40), buf);
                if (*buf)
                {
                }
              }

              else
              {
                v25 = *re::networkLogObjects(v23);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v26 = *(*v9 + 3);
                  v27 = *(*(*v9 + 11) + 16);
                  v28 = v27[4];
                  v29 = v27[6];
                  v30 = v27[7];
                  v31 = v27 + 49;
                  if (v29)
                  {
                    v31 = v30;
                  }

                  *buf = 134218498;
                  *&buf[4] = v26;
                  *&buf[12] = 2048;
                  *&buf[14] = v28;
                  *&buf[22] = 2080;
                  *&buf[24] = v31;
                  _os_log_error_impl(&dword_26168F000, v25, OS_LOG_TYPE_ERROR, "Sync object without snapshot while packing ownership broadcasts (id: %llu, type: %llu[%s]).", buf, 0x20u);
                }
              }
            }
          }
        }

LABEL_35:
        ++v9;
      }

      while (v9 != v11);
    }

    v34 = *(a4 + 96);
    if (v34)
    {
      v35 = 0;
      v36 = *(a4 + 80);
      while (1)
      {
        v37 = *v36;
        v36 += 8;
        if (v37 < 0)
        {
          break;
        }

        if (v34 == ++v35)
        {
          LODWORD(v35) = *(a4 + 96);
          break;
        }
      }
    }

    else
    {
      LODWORD(v35) = 0;
    }

    while (v35 != v34)
    {
      v42 = *(a4 + 80) + 32 * v35;
      v45 = *(v42 + 8);
      v44 = v42 + 8;
      v43 = v45;
      v46 = *(v45 + 80);
      v47 = v45;
      if (v46)
      {
        v48 = v43;
        do
        {
          v47 = v48;
          v48 = v46;
          if (*(*(*(v47 + 88) + 16) + 73))
          {
            break;
          }

          v46 = *(v46 + 80);
          v47 = v48;
        }

        while (v46);
      }

      if ((*(v47 + 170) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 89) == 1)
      {
        if (*(v44 + 8))
        {
          *buf = v43;
          re::DynamicArray<re::Allocator const*>::add(v166, buf);
        }

        else
        {
          if (v176)
          {
            v49 = *v178 + 72 * v176 - 72;
          }

          else
          {
            buf[0] = 0;
            *&buf[8] = v10;
            *&buf[16] = 0;
            *&buf[24] = 0;
            buf[28] = 0;
            *&v183 = 0;
            *&v182 = 0;
            v181 = 0uLL;
            DWORD2(v182) = 0;
            re::DynamicArray<re::SyncCommit>::add(&v174, buf);
            re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v181);
            v50 = *v178 + 72 * v176;
            *(v50 - 72) = 1;
            v49 = v50 - 72;
          }

          addToViewRecursive(v44, v49, *(a4 + 56));
        }
      }

      v51 = *(a4 + 96);
      if (v51 <= v35 + 1)
      {
        v51 = v35 + 1;
      }

      while (v51 - 1 != v35)
      {
        LODWORD(v35) = v35 + 1;
        if ((*(*(a4 + 80) + 32 * v35) & 0x80000000) != 0)
        {
          goto LABEL_68;
        }
      }

      LODWORD(v35) = v51;
LABEL_68:
      ;
    }

    if (*&v166[1])
    {
      v52 = v167;
      v53 = 8 * *&v166[1];
      do
      {
        v54 = *v52;
        *v179 = v54;
        if (v54)
        {
          v55 = (v54 + 8);
        }

        if (v176)
        {
          v56 = *v178 + 72 * v176 - 72;
        }

        else
        {
          buf[0] = 0;
          *&buf[8] = v10;
          *&buf[16] = 0;
          *&buf[24] = 0;
          buf[28] = 0;
          *&v183 = 0;
          *&v182 = 0;
          v181 = 0uLL;
          DWORD2(v182) = 0;
          re::DynamicArray<re::SyncCommit>::add(&v174, buf);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v181);
          v57 = *v178 + 72 * v176;
          *(v57 - 72) = 1;
          v56 = v57 - 72;
        }

        removeFromViewRecursive(v179, v56, *(a4 + 56));
        if (*v179)
        {
        }

        ++v52;
        v53 -= 8;
      }

      while (v53);
    }

    *&v179[32] = 0;
    memset(v179, 0, 28);
    v58 = a2[1];
    if (v58)
    {
      v59 = *a2;
      v60 = *a2 + 72 * v58;
      do
      {
        v61 = *(v59 + 28);
        if (v61 != 1 || *(v59 + 8) != *(a4 + 56))
        {
          if (v61)
          {
            v63 = *(v59 + 48);
            if (v63)
            {
              v64 = *(v59 + 64);
              v65 = &v64[3 * v63];
              do
              {
                v66 = *v64;
                v67 = *(*v64 + 80);
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
                  v68 = *v64;
                }

                if (((*(v68 + 170) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 89) == 1) && entryIsAddable(v64, a4))
                {
                  if (v176)
                  {
                    v69 = *v178 + 72 * v176;
                  }

                  else
                  {
                    buf[0] = 0;
                    *&buf[8] = v10;
                    *&buf[16] = 0;
                    *&buf[24] = 0;
                    buf[28] = 0;
                    *&v183 = 0;
                    *&v182 = 0;
                    v181 = 0uLL;
                    DWORD2(v182) = 0;
                    re::DynamicArray<re::SyncCommit>::add(&v174, buf);
                    re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v181);
                    v69 = *v178 + 72 * v176;
                    *(v69 - 72) = 1;
                  }

                  re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v69 - 40), v64);
                }

                v64 += 3;
              }

              while (v64 != v65);
            }
          }

          else
          {
            *buf = v59;
            re::DynamicArray<re::Allocator const*>::add(v179, buf);
          }
        }

        v59 += 72;
      }

      while (v59 != v60);
      if (*&v179[16])
      {
        v70 = *&v179[32];
        v71 = *&v179[32] + 8 * *&v179[16];
        do
        {
          v72 = *(*v70 + 48);
          if (v72)
          {
            v73 = *(*v70 + 64);
            v74 = &v73[3 * v72];
            do
            {
              v75 = *v73;
              v76 = *(*v73 + 80);
              if (v76)
              {
                do
                {
                  v77 = v75;
                  v75 = v76;
                  if (*(*(*(v77 + 88) + 16) + 73))
                  {
                    break;
                  }

                  v76 = *(v76 + 80);
                  v77 = v75;
                }

                while (v76);
              }

              else
              {
                v77 = *v73;
              }

              if (((*(v77 + 170) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 89) == 1) && entryIsAddable(v73, a4))
              {
                if (v176)
                {
                  v78 = *v178 + 72 * v176;
                }

                else
                {
                  buf[0] = 0;
                  *&buf[8] = v10;
                  *&buf[16] = 0;
                  *&buf[24] = 0;
                  buf[28] = 0;
                  *&v183 = 0;
                  *&v182 = 0;
                  v181 = 0uLL;
                  DWORD2(v182) = 0;
                  re::DynamicArray<re::SyncCommit>::add(&v174, buf);
                  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v181);
                  v78 = *v178 + 72 * v176;
                  *(v78 - 72) = 1;
                }

                re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v78 - 40), v73);
              }

              v73 += 3;
            }

            while (v73 != v74);
          }

          v70 += 8;
        }

        while (v70 != v71);
      }
    }

    if (*v179 && *&v179[32])
    {
      (*(**v179 + 40))();
    }

    if (*&v166[0] && v167)
    {
      (*(**&v166[0] + 40))();
    }

    re::SyncCommitDump::log(*v178, v176, "SendCommit");
    if (*(a1 + 90) == 1)
    {
      if (v176)
      {
        v79 = *v178;
        v80 = *v178 + 72 * v176;
        v81 = 1;
        do
        {
          v82 = *(v79 + 6);
          if (v82)
          {
            v83 = 24 * v82;
            v84 = (*(v79 + 8) + 16);
            do
            {
              v85 = (v84 - 16);
              if ((*v84 & 2) != 0)
              {
                re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace(a1 + 96, v85, v84);
              }

              else
              {
                v86 = re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(a1 + 96, v85, v84);
                if ((*v86 & 2) != 0)
                {
                  *v86 = *v84;
                }
              }

              v84 += 24;
              v83 -= 24;
            }

            while (v83);
            v81 = 0;
          }

          v79 = (v79 + 72);
        }

        while (v79 != v80);
      }

      else
      {
        v81 = 1;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= *(a1 + 144) && (v81 & 1) == 0)
      {
        v91.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        *(a1 + 144) = v91.__d_.__rep_ + 5000000000;
        LODWORD(v181) = 0;
        memset(buf, 0, sizeof(buf));
        *(&v181 + 4) = 0x7FFFFFFFLL;
        if (v176)
        {
          v92 = *v178;
          v163 = *v178 + 72 * v176;
          while (1)
          {
            v165 = v92;
            v93 = *(v92 + 6);
            if (v93)
            {
              break;
            }

LABEL_166:
            v92 = (v165 + 72);
            if ((v165 + 72) == v163)
            {
              goto LABEL_167;
            }
          }

          v94 = *(v92 + 8);
          v95 = v94 + 24 * v93;
          while (1)
          {
            v96 = *(*(*v94 + 88) + 16);
            v97 = re::Hash<re::DynamicString>::operator()(v166, v96 + 40);
            v98 = v97;
            if (*&buf[24])
            {
              v99 = v97 % *&buf[24];
              v100 = *(*&buf[8] + 4 * v99);
              if (v100 != 0x7FFFFFFF)
              {
                v101 = *&buf[16];
                do
                {
                  v91.__d_.__rep_ = re::DynamicString::operator==(v101 + 48 * v100 + 16, v96 + 40);
                  if (v91.__d_.__rep_)
                  {
                    goto LABEL_165;
                  }

                  v100 = *(v101 + 48 * v100 + 8) & 0x7FFFFFFF;
                }

                while (v100 != 0x7FFFFFFF);
              }
            }

            else
            {
              LODWORD(v99) = 0;
            }

            v91.__d_.__rep_ = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(buf, v99, v98, v96 + 40, (v96 + 40));
            ++DWORD2(v181);
LABEL_165:
            v94 += 24;
            if (v94 == v95)
            {
              goto LABEL_166;
            }
          }
        }

LABEL_167:
        memset(v166 + 8, 0, 24);
        re::DynamicString::setCapacity(v166, 0);
        v102 = v181;
        if (v181)
        {
          v103 = 0;
          v104 = (*&buf[16] + 8);
          while (1)
          {
            v105 = *v104;
            v104 += 12;
            if (v105 < 0)
            {
              break;
            }

            if (v181 == ++v103)
            {
              LODWORD(v103) = v181;
              break;
            }
          }
        }

        else
        {
          LODWORD(v103) = 0;
        }

        if (v103 != v181)
        {
          v139 = *&buf[16];
          do
          {
            v140 = v139 + 48 * v103;
            v141 = *(v140 + 24);
            v142 = *(v140 + 32);
            v143 = (v140 + 25);
            v144 = (v141 & 1) == 0;
            if (v141)
            {
              v145 = v142;
            }

            else
            {
              v145 = v143;
            }

            v146 = v141 >> 1;
            v147 = v141 >> 1;
            if (v144)
            {
              v148 = v147;
            }

            else
            {
              v148 = v146;
            }

            re::DynamicString::append(v166, v145, v148);
            re::DynamicString::append(v166, " ", 1uLL);
            v139 = *&buf[16];
            if (v181 <= v103 + 1)
            {
              v149 = v103 + 1;
            }

            else
            {
              v149 = v181;
            }

            while (v149 - 1 != v103)
            {
              LODWORD(v103) = v103 + 1;
              if ((*(*&buf[16] + 48 * v103 + 8) & 0x80000000) != 0)
              {
                goto LABEL_245;
              }
            }

            LODWORD(v103) = v149;
LABEL_245:
            ;
          }

          while (v103 != v102);
        }

        v150 = objc_loadWeakRetained((a1 + 32));
        if (v150)
        {
          v151 = v150 - 8;
        }

        else
        {
          v151 = 0;
        }

        v152 = v151 + 8;
        (*(*v151 + 32))(v179);
        v153 = *(*v179 + 3272);

        *v179 = 0;
        if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
        {
          v154 = objc_loadWeakRetained((a1 + 32));
          if (v154)
          {
            v155 = v154 - 8;
          }

          else
          {
            v155 = 0;
          }

          (*(*v155 + 32))(&v173, v155);
          v156 = re::Session::peerID(v173);
          v157 = *(a1 + 40);
          v158 = *(v157 + 32);
          if (v158)
          {
            v159 = (v158 - 8);
          }

          else
          {
            v159 = 0;
          }

          re::Transport::connectionAddress(v159, *(v157 + 40), &v170);
          if (v171)
          {
            v160 = *&v172[7];
          }

          else
          {
            v160 = v172;
          }

          if (BYTE8(v166[0]))
          {
            v161 = *&v166[1];
          }

          else
          {
            v161 = v166 + 9;
          }

          *v179 = 134218498;
          *&v179[4] = v156;
          *&v179[12] = 2080;
          *&v179[14] = v160;
          *&v179[22] = 2080;
          *&v179[24] = v161;
          _os_log_impl(&dword_26168F000, v153, OS_LOG_TYPE_INFO, "Sending sync data on paused connection to %llx ('%s'): %s", v179, 0x20u);
          if (v170 && (v171 & 1) != 0)
          {
            (*(*v170 + 40))();
          }

          if (v173)
          {

            v173 = 0;
          }
        }

        if (*&v166[0] && (BYTE8(v166[0]) & 1) != 0)
        {
          (*(**&v166[0] + 40))();
        }

        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
      }
    }

    else
    {
      if (*(a1 + 124))
      {
        v87 = *(a4 + 96);
        if (v87)
        {
          v88 = 0;
          v89 = *(a4 + 80);
          while (1)
          {
            v90 = *v89;
            v89 += 8;
            if (v90 < 0)
            {
              break;
            }

            if (v87 == ++v88)
            {
              LODWORD(v88) = *(a4 + 96);
              break;
            }
          }
        }

        else
        {
          LODWORD(v88) = 0;
        }

LABEL_179:
        while (v88 != v87)
        {
          re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(a1 + 96, (*(a4 + 80) + 32 * v88 + 8));
          v106 = *(a4 + 96);
          if (v106 <= v88 + 1)
          {
            v106 = v88 + 1;
          }

          while (v106 - 1 != v88)
          {
            LODWORD(v88) = v88 + 1;
            if ((*(*(a4 + 80) + 32 * v88) & 0x80000000) != 0)
            {
              goto LABEL_179;
            }
          }

          LODWORD(v88) = v106;
        }

        v169 = 0;
        v167 = 0u;
        v168 = 0u;
        memset(v166, 0, sizeof(v166));
        LOBYTE(v166[0]) = 1;
        v107 = *(a1 + 128);
        if (v107)
        {
          v108 = 0;
          v109 = *(a1 + 112);
          while (1)
          {
            v110 = *v109;
            v109 += 8;
            if (v110 < 0)
            {
              break;
            }

            if (v107 == ++v108)
            {
              LODWORD(v108) = *(a1 + 128);
              break;
            }
          }
        }

        else
        {
          LODWORD(v108) = 0;
        }

LABEL_187:
        while (v108 != v107)
        {
          v111 = *(a1 + 112) + 32 * v108;
          v114 = *(v111 + 8);
          v113 = v111 + 8;
          v112 = v114;
          *buf = v114;
          if (v114)
          {
            v115 = (v112 + 8);
            v116 = *v113;
          }

          else
          {
            v116 = 0;
          }

          *&buf[8] = re::SyncObject::latestStateHandle(v116);
          buf[16] = *(v113 + 8);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::add(&v167, buf);
          if (*buf)
          {
          }

          v117 = *(a1 + 128);
          if (v117 <= v108 + 1)
          {
            v117 = v108 + 1;
          }

          while (v117 - 1 != v108)
          {
            LODWORD(v108) = v108 + 1;
            if ((*(*(a1 + 112) + 32 * v108) & 0x80000000) != 0)
            {
              goto LABEL_187;
            }
          }

          LODWORD(v108) = v117;
        }

        re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::clear(a1 + 96);
        v118 = v176;
        if (v176 == -1)
        {
          v170 = 0;
          v182 = 0u;
          v183 = 0u;
          v181 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v179 = 136315906;
          *&v179[4] = "insert";
          *&v179[12] = 1024;
          *&v179[14] = 887;
          *&v179[18] = 2048;
          *&v179[20] = 0;
          *&v179[28] = 2048;
          *&v179[30] = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (v176 >= v175)
        {
          re::DynamicArray<re::SyncCommit>::growCapacity(&v174, v176 + 1);
          v118 = v176;
        }

        v119 = *v178 + 72 * v118;
        if (v118)
        {
          re::SyncCommit::SyncCommit(v119, v119 - 72);
          v120 = *v178;
          if (*v178 + 72 * v176 - 72 != *v178)
          {
            v121 = *v178 + 72 * v176 - 144;
            v122 = 72 - 72 * v176;
            do
            {
              *(v121 + 72) = *v121;
              *(v121 + 85) = *(v121 + 13);
              re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v121 + 104, (v121 + 32));
              v121 -= 72;
              v122 += 72;
            }

            while (v122);
            v120 = *v178;
          }

          v123 = v166[0];
          *(v120 + 13) = *(v166 + 13);
          *v120 = v123;
          re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v120 + 32, &v167);
        }

        else
        {
          v124 = v166[0];
          *(v119 + 13) = *(v166 + 13);
          *v119 = v124;
          *(v119 + 64) = 0;
          *(v119 + 40) = 0;
          *(v119 + 48) = 0;
          *(v119 + 32) = 0;
          *(v119 + 56) = 0;
          *(v119 + 32) = v167;
          *&v167 = 0;
          *(v119 + 40) = *(&v167 + 1);
          *(&v167 + 1) = 0;
          v125 = *(v119 + 48);
          *(v119 + 48) = v168;
          *&v168 = v125;
          v126 = *(v119 + 64);
          *(v119 + 64) = v169;
          v169 = v126;
          ++DWORD2(v168);
          ++*(v119 + 56);
        }

        ++v176;
        ++v177;
        re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v167);
      }

      v127 = *(a1 + 40) + 24;
      *&buf[16] = 0;
      buf[20] = 0;
      *&buf[24] = 0;
      *&v181 = 0;
      *buf = &unk_2873F4D10;
      *&buf[8] = 0;
      *(&v181 + 1) = v127;
      *&v182 = 0;
      v128 = *(a1 + 24);
      *&v166[0] = *(a1 + 56);
      *(&v166[0] + 1) = v128;
      LOBYTE(v166[1]) = 0;
      if (v176)
      {
        v129 = *v178;
        v130 = 72 * v176;
        do
        {
          re::SyncPacker::packCommit(v166, v129, buf, a5, 0);
          v129 = (v129 + 72);
          v130 -= 72;
        }

        while (v130);
        v131 = *&buf[24];
        if (*&buf[28])
        {
          v131 = *&buf[24] + 1;
        }

        if (v131)
        {
          v132 = *(a1 + 40);
          *(v182 + 24) = v131;
          *&buf[24] = 0;
          *&v181 = 0;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&v182 = 0;
          (*(*v132 + 48))(v132);
        }
      }

      if (*(a1 + 24) && v176)
      {
        v133 = *v178;
        v134 = *v178 + 72 * v176;
        do
        {
          v135 = *(v133 + 6);
          if (v135)
          {
            v136 = *(v133 + 8);
            v137 = 24 * v135;
            do
            {
              v138 = *(a1 + 24);
              if ((*(v136 + 16) & 2) != 0)
              {
                re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v138 + 24, v136);
              }

              else
              {
                re::SyncAckedStateBuffer::addAcked(v138, v136, *(v136 + 8), *(*v136 + 176));
              }

              v136 += 24;
              v137 -= 24;
            }

            while (v137);
          }

          v133 = (v133 + 72);
        }

        while (v133 != v134);
      }

      if (v182)
      {
        (*(**(&v181 + 1) + 24))(*(&v181 + 1));
      }
    }

    re::DynamicArray<re::SyncCommit>::deinit(&v174);
  }

  else
  {
    v38 = objc_loadWeakRetained((a1 + 32));
    if (v38)
    {
      v39 = v38 - 8;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39 + 8;
    (*(*v39 + 32))(buf);
    v41 = *(*buf + 3272);

    *buf = 0;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v41, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to send.", buf, 2u);
    }
  }

  v162 = *MEMORY[0x277D85DE8];
}

BOOL re::SyncReliableOrderedUnicast::receive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4 && *(a1 + 56))
  {
    if (*(a1 + 91) == 1 && (*(a1 + 91) = 0, (v6 = (*(*v4 + 56))(v4)) != 0))
    {
      v7 = v6;
      v59 = a2;
      do
      {
        v8 = *(v7 + 16);
        v58 = v7;
        v9 = *(v7 + 24);
        v83 = v8;
        v84 = v9;
        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (v84 != v86)
        {
          v10 = *(a1 + 56);
          WeakRetained = objc_loadWeakRetained((a1 + 80));
          v12 = *(a1 + 88);
          v13 = WeakRetained - 8;
          if (!WeakRetained)
          {
            v13 = 0;
          }

          *v70 = v10;
          v71 = v13;
          v72 = *(a1 + 64);
          v73 = 0u;
          v74 = 0u;
          v75 = 0;
          v76 = 0x7FFFFFFFLL;
          v81 = 0;
          v78 = 0;
          v79 = 0;
          v77 = 0;
          v80 = 0;
          v82 = v12;
          if (WeakRetained)
          {
          }

          v63[0] = 0;
          v69 = 0;
          v66[1] = 0;
          v67 = 0;
          v66[0] = 0;
          v68 = 0;
          v64 = 0;
          v65[0] = 0;
          *(v65 + 5) = 0;
          v14 = re::SyncUnpacker::unpackCommit(v70, &v83, v63, a2);
          v15 = v14;
          if (v14)
          {
            v61 = v14;
            v16 = v75;
            if (v75)
            {
              v17 = 0;
              v18 = v74;
              while (1)
              {
                v19 = *v18;
                v18 += 10;
                if (v19 < 0)
                {
                  break;
                }

                if (v75 == ++v17)
                {
                  LODWORD(v17) = v75;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v17) = 0;
            }

            if (v17 != v75)
            {
              v32 = v74;
              do
              {
                v33 = v32 + 40 * v17;
                v34 = *(v33 + 16);
                v35 = *(v33 + 24);
                v36 = objc_loadWeakRetained((a1 + 80));
                v37 = v36;
                if (v36)
                {
                  v38 = (v36 - 8);
                }

                else
                {
                  v38 = 0;
                }

                re::SyncObjectStore::findObject(v38, v34, v35, v88);
                if (v37)
                {
                }

                v39 = *v88;
                if (*v88)
                {
                  re::SyncObject::bindWithParent(*(v33 + 8), *v88);
                }

                else
                {
                  v41 = objc_loadWeakRetained((a1 + 80));
                  if (v41)
                  {
                    v42 = v41;
                    v43 = objc_loadWeakRetained((a1 + 80));
                    v44 = v43 - 8;
                    if (!v43)
                    {
                      v44 = 0;
                    }

                    v45 = *(v33 + 8);
                    *buf = *(v45 + 24);
                    v62 = *(*(*(v45 + 88) + 16) + 32);
                    v46 = re::SyncObjectTombstoneInfo::contains((v44 + 120), buf, &v62);
                    if (v43)
                    {
                    }

                    if (!v46)
                    {
                      v48 = *re::networkLogObjects(v47);
                      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                      {
                        v49 = *(*(v33 + 8) + 24);
                        *buf = 134218240;
                        *&buf[4] = v49;
                        v92 = 2048;
                        *v93 = v35;
                        _os_log_error_impl(&dword_26168F000, v48, OS_LOG_TYPE_ERROR, "BindFailure: Object %llu with parent %llu", buf, 0x16u);
                      }
                    }
                  }
                }

                if (v75 <= v17 + 1)
                {
                  v40 = v17 + 1;
                }

                else
                {
                  v40 = v75;
                }

                v32 = v74;
                while (v40 - 1 != v17)
                {
                  LODWORD(v17) = v17 + 1;
                  if ((*(v74 + 40 * v17) & 0x80000000) != 0)
                  {
                    goto LABEL_63;
                  }
                }

                LODWORD(v17) = v40;
LABEL_63:
                ;
              }

              while (v17 != v16);
            }

            a2 = v59;
            if (v67)
            {
              v27 = (v69 + 16);
              v28 = 24 * v67;
              do
              {
                v29 = *(v27 - 2);
                if ((*v27 & 2) != 0 || (*(v29 + 128) & 4) != 0)
                {
                  (*(**(a1 + 56) + 40))(*(a1 + 56), *(v29 + 24), *(*(*(v29 + 88) + 16) + 32));
                }

                v27 += 24;
                v28 -= 24;
              }

              while (v28);
            }

            if (*(a1 + 24) && v67)
            {
              v30 = v69;
              v31 = 24 * v67;
              do
              {
                re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(*(a1 + 24) + 24, v30);
                v30 += 3;
                v31 -= 24;
              }

              while (v31);
            }

            re::SyncCommitDump::log(v63, 1, "RecvCommit");
            (*(a3 + 16))(a3, v63, v59);
            v15 = v61;
          }

          else
          {
            v20 = *(a1 + 40);
            v21 = *(v20 + 32);
            if (v21)
            {
              v22 = (v21 - 8);
            }

            else
            {
              v22 = 0;
            }

            re::Transport::connectionAddress(v22, *(v20 + 40), buf);
            v23 = objc_loadWeakRetained((a1 + 32));
            if (v23)
            {
              v24 = v23 - 8;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24 + 8;
            (*(*v24 + 32))(v88);
            v26 = *(*v88 + 3272);

            *v88 = 0;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v50 = *(a1 + 64);
              v51 = &buf[9];
              if (buf[8])
              {
                v51 = *&v93[2];
              }

              *v88 = 134218242;
              *&v88[4] = v50;
              v89 = 2082;
              v90 = v51;
              _os_log_error_impl(&dword_26168F000, v26, OS_LOG_TYPE_ERROR, "Failed to parse incoming packet. Will drop peer.(peerID=%llu, address=%{public}s)", v88, 0x16u);
            }

            (*(**(a1 + 40) + 40))(*(a1 + 40), v58);
            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))();
            }
          }

          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v66);
          if (v77)
          {
            if (v81)
            {
              (*(*v77 + 40))();
            }

            v81 = 0;
            v78 = 0;
            v79 = 0;
            v77 = 0;
            ++v80;
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(&v73);
          if (!v15)
          {
            goto LABEL_83;
          }
        }

        (*(**(a1 + 40) + 40))(*(a1 + 40), v58);
        v7 = (*(**(a1 + 40) + 56))(*(a1 + 40));
        result = 1;
      }

      while (v7);
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    v53 = objc_loadWeakRetained((a1 + 32));
    if (v53)
    {
      v54 = v53 - 8;
    }

    else
    {
      v54 = 0;
    }

    v55 = v54 + 8;
    (*(*v54 + 32))(v70);
    v56 = *(*v70 + 3272);

    *v70 = 0;
    result = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v70 = 0;
      _os_log_error_impl(&dword_26168F000, v56, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to receive.", v70, 2u);
LABEL_83:
      result = 0;
    }
  }

  v57 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncReliableOrderedUnicast::receiveOwnershipRequests(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 92) == 1)
  {
    *(a1 + 92) = 0;
    v3 = *(a1 + 48);
    v11 = *(a2 + 24);
    v12 = 0;
    if (v10 != a2)
    {
      re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v10);
      v4 = *(a2 + 32);
      if (v4)
      {
        v5 = (*(*v4 + 40))(v4);
        if (v5 >= 0x19)
        {
          if (v11)
          {
            v6 = (*(*v11 + 32))(v11, v5, 0);
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = v10;
        }

        v12 = v6;
        (*(**(a2 + 32) + 24))(*(a2 + 32));
      }
    }

    v7 = re::MessageStreamer<re::SyncOwnershipRequest>::receive<re::Function<void ()(re::SyncOwnershipRequest const&)>>(v3, v10);
    re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v10);
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void re::SyncReliableOrderedUnicast::~SyncReliableOrderedUnicast(re::SyncReliableOrderedUnicast *this)
{
  re::SyncReliableOrderedUnicast::~SyncReliableOrderedUnicast(this);

  JUMPOUT(0x266708EC0);
}

{
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 12);
  objc_destroyWeak(this + 10);
  *(this + 10) = 0;
  v2 = *(this + 7);
  if (v2)
  {

    *(this + 7) = 0;
  }

  v3 = *(this + 6);
  if (v3)
  {

    *(this + 6) = 0;
  }

  v4 = *(this + 5);
  if (v4)
  {

    *(this + 5) = 0;
  }

  objc_destroyWeak(this + 4);
  *(this + 4) = 0;
  v5 = *(this + 3);
  if (v5)
  {

    *(this + 3) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

uint64_t RESyncParticipantListCount(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t RESyncParticipantListAtIndex(uint64_t result, unint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = *(result + 16);
    if (v2 >= a2)
    {
      if (v2 <= a2)
      {
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = *(*(result + 32) + 8 * a2);
    }

    else
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncNetSessionCreate(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v7 = 136315394;
    *&v7[4] = "RESyncNetSessionCreate";
    v8 = 2080;
    v9 = "configuration != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
LABEL_15:
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
    goto LABEL_7;
  }

  v1 = (a1 + 3);
  if (!a1[3])
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v7 = 136315394;
    *&v7[4] = "RESyncNetSessionCreate";
    v8 = 2080;
    v9 = "Use RESyncNetSessionConfigurationSetTransportQueue() to configure transport queue.";
    v6 = "%s: %s";
    goto LABEL_15;
  }

  if (!a1[11])
  {
    v5 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v7 = 136315394;
    *&v7[4] = "RESyncNetSessionCreate";
    v8 = 2080;
    v9 = "Use RESyncNetSessionConfigurationSetDiscoveryView() to configure discovery view.";
    v6 = "%s: %s";
    goto LABEL_15;
  }

  re::make::shared::object<re::Session>(a1, v7);
  v2 = re::Session::init(*v7, v1);
  result = *v7;
  if (!v2 && *v7)
  {

LABEL_7:
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncNetSessionConfigurationSetTransportQueue(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionIsInitialized(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 2272);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL RESyncNetSessionIsActive(_BOOL8 result)
{
  if (result)
  {
    return *(result + 3264) == 2;
  }

  return result;
}

re::Session *RESyncNetSessionPeerID(re::Session *result)
{
  if (result)
  {
    return re::Session::peerID(result);
  }

  return result;
}

uint64_t RESyncNetSessionLeader(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[392];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[287];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[289];
  v4 = 8 * v2;
  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 24) == v1)
    {
      break;
    }

    ++v3;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  v7 = (v5 + 8);

  return v5;
}

uint64_t RESyncNetSessionGetDiscoveryView(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 2208);
  if (v1)
  {
    v2 = (v1 + 8);
  }

  return v1;
}

double RESyncNetSessionObserverCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 144, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_2873F55C0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 100) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v2 + 116) = 0x7FFFFFFFLL;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  return result;
}

void RESyncNetSessionAddObserver(_DWORD *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 30, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 52, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 74, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 96, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 426, &v15);
    v4 = *(a2 + 112);
    if (v4)
    {
      v5 = 0;
      v6 = *(a2 + 96);
      while (1)
      {
        v7 = *v6;
        v6 += 6;
        if (v7 < 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          v5 = *(a2 + 112);
          break;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (v4 != v5)
    {
      LODWORD(v8) = v5;
      do
      {
        v9 = &a1[22 * *(*(a2 + 96) + 24 * v5 + 4) + 140];
        *&v13 = a2;
        *&v14 = 0;
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v9, &v13, &v15);
        if ((v15 & 1) == 0)
        {
          if (*(v9 + 20))
          {
            LOBYTE(v15) = 1;
            v16 = v13;
            v17 = v14;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(v9 + 40, &v15);
          }

          else
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(v9, &v13);
          }
        }

        v10 = *(a2 + 112);
        if (v10 <= v8 + 1)
        {
          v11 = (v8 + 1);
        }

        else
        {
          v11 = v10;
        }

        while (v11 - 1 != v8)
        {
          v8 = (v8 + 1);
          if ((*(*(a2 + 96) + 24 * v8) & 0x80000000) != 0)
          {
            v5 = v8;
            LODWORD(v11) = v8;
            goto LABEL_22;
          }
        }

        v5 = v11;
LABEL_22:
        LODWORD(v8) = v11;
      }

      while (v10 != v11);
    }

    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 448, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 470, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 492, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 514, &v15);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void RESyncNetSessionRemoveObserver(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    goto LABEL_65;
  }

  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(a1 + 2056, a2);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(a1 + 1968, a2);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(a1 + 1880, a2);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(a1 + 1792, a2);
  v4 = *(a2 + 112);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 96);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        v5 = *(a2 + 112);
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4 == v5)
  {
    goto LABEL_28;
  }

  LODWORD(v8) = v5;
  do
  {
    v9 = a1 + 560 + 88 * *(*(a2 + 96) + 24 * v5 + 4);
    if (!*(v9 + 16))
    {
      goto LABEL_20;
    }

    v10 = 0;
    do
    {
      v11 = *(v9 + 32) + 32 * v10;
      if (*v11 != a2)
      {
        goto LABEL_16;
      }

      if (*(v9 + 80))
      {
        v26[0] = 0;
        v27 = *v11;
        v28 = *(v11 + 16);
        re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(v9 + 40, v26);
LABEL_16:
        ++v10;
        continue;
      }

      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v9, v10);
    }

    while (v10 < *(v9 + 16));
    LODWORD(v4) = *(a2 + 112);
LABEL_20:
    if (v4 <= v8 + 1)
    {
      v12 = (v8 + 1);
    }

    else
    {
      v12 = v4;
    }

    while (v12 - 1 != v8)
    {
      v8 = (v8 + 1);
      if ((*(*(a2 + 96) + 24 * v8) & 0x80000000) != 0)
      {
        v5 = v8;
        LODWORD(v12) = v8;
        goto LABEL_27;
      }
    }

    v5 = v12;
LABEL_27:
    LODWORD(v8) = v12;
  }

  while (v4 != v12);
LABEL_28:
  if (*(a1 + 400))
  {
    v13 = 0;
    do
    {
      v14 = (*(a1 + 416) + 32 * v13);
      if (*v14 == a2)
      {
        if (!*(a1 + 464))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a1 + 384), v13);
          continue;
        }

        v26[0] = 0;
        v15 = *v14;
        v28 = v14[1];
        v27 = v15;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a1 + 424), v26);
      }

      ++v13;
    }

    while (v13 < *(a1 + 400));
  }

  if (*(a1 + 312))
  {
    v16 = 0;
    do
    {
      v17 = (*(a1 + 328) + 32 * v16);
      if (*v17 == a2)
      {
        if (!*(a1 + 376))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a1 + 296), v16);
          continue;
        }

        v26[0] = 0;
        v18 = *v17;
        v28 = v17[1];
        v27 = v18;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a1 + 336), v26);
      }

      ++v16;
    }

    while (v16 < *(a1 + 312));
  }

  if (*(a1 + 224))
  {
    v19 = 0;
    do
    {
      v20 = (*(a1 + 240) + 32 * v19);
      if (*v20 == a2)
      {
        if (!*(a1 + 288))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a1 + 208), v19);
          continue;
        }

        v26[0] = 0;
        v21 = *v20;
        v28 = v20[1];
        v27 = v21;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a1 + 248), v26);
      }

      ++v19;
    }

    while (v19 < *(a1 + 224));
  }

  if (*(a1 + 136))
  {
    v22 = 0;
    do
    {
      v23 = (*(a1 + 152) + 32 * v22);
      if (*v23 == a2)
      {
        if (!*(a1 + 200))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a1 + 120), v22);
          continue;
        }

        v26[0] = 0;
        v24 = *v23;
        v28 = v23[1];
        v27 = v24;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a1 + 160), v26);
      }

      ++v22;
    }

    while (v22 < *(a1 + 136));
  }

  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(a1 + 1704, a2);
LABEL_65:
  v25 = *MEMORY[0x277D85DE8];
}

void *RESyncNetSessionObserverOnStart(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 24));
  result = _Block_copy(a2);
  *(a1 + 24) = result;
  return result;
}

void *RESyncNetSessionObserverOnStop(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 32));
  result = _Block_copy(a2);
  *(a1 + 32) = result;
  return result;
}

void *RESyncNetSessionObserverOnParticipantJoin(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 40));
  result = _Block_copy(a2);
  *(a1 + 40) = result;
  return result;
}

void *RESyncNetSessionObserverOnParticipantLeave(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 48));
  result = _Block_copy(a2);
  *(a1 + 48) = result;
  return result;
}

uint64_t anonymous namespace::SessionObserverProxy::setOnReceiveData(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::tryGet(a1 + 80, a3);
  if (v6)
  {
    _Block_release(*v6);
  }

  v7 = _Block_copy(a2);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a3) ^ ((0xBF58476D1CE4E5B9 * a3) >> 27));
  result = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::findEntry<re::ChannelId>(&v11, a1 + 80, a3, v8 ^ (v8 >> 31));
  v10 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::allocEntry(a1 + 80, v12, v11);
    *(result + 4) = a3;
    *(result + 8) = v7;
    ++*(a1 + 120);
  }

  else
  {
    ++*(a1 + 120);
    *(*(a1 + 96) + 24 * v10 + 8) = v7;
  }

  return result;
}

void *RESyncNetSessionObserverOnLeaderChanged(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 56));
  result = _Block_copy(a2);
  *(a1 + 56) = result;
  return result;
}

void *RESyncNetSessionObserverOnConnectionConnected(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 64));
  result = _Block_copy(a2);
  *(a1 + 64) = result;
  return result;
}

void *RESyncNetSessionObserverOnConnectionDisconnected(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 72));
  result = _Block_copy(a2);
  *(a1 + 72) = result;
  return result;
}

void *RESyncNetSessionObserverOnPeerDidPause(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 128));
  result = _Block_copy(a2);
  *(a1 + 128) = result;
  return result;
}

void *RESyncNetSessionObserverOnPeerDidResume(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 136));
  result = _Block_copy(a2);
  *(a1 + 136) = result;
  return result;
}

uint64_t RESyncNetSessionParticipantsCount(uint64_t result)
{
  if (result)
  {
    (*(*result + 40))(result);
    return v1;
  }

  return result;
}

uint64_t RESyncNetSessionGetParticipantAtIndex(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v3 = (*(*result + 40))(result);
    if (v4 <= a2)
    {
      re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4);
      result = _os_crash();
      __break(1u);
    }

    else
    {
      return *(v3 + 8 * a2);
    }
  }

  return result;
}

uint64_t RESyncNetSessionGetParticipantWithIdentity(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v6 = a2;
    v4 = (a2 + 8);
    re::Session::findParticipantWithIdentity(a1, &v6, &v7);
    v2 = v7;
    if (v7)
    {

      v7 = 0;
    }

    if (v6)
    {
    }
  }

  return v2;
}

uint64_t RESyncNetSessionGetParticipantWithPeerID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 2296);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 2312);
  v4 = 8 * v2;
  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 24) == a2)
    {
      break;
    }

    ++v3;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  v7 = (v5 + 8);

  return v5;
}

void RESyncNetSessionDropParticipant(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      re::Transport::disconnect((a1 + 2320), *(a2 + 32), 1);
    }
  }
}

uint64_t (***RESyncNetSessionSetDisconnectTimeout(uint64_t (***result)(void), int a2))(void)
{
  if (result)
  {
    return re::Transport::setDisconnectTimeout((result + 290), a2);
  }

  return result;
}

uint64_t RESyncNetSessionGetIsLocalPeer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t RESyncNetSessionGetIsLocal(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 2219);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t RESyncNetSessionSetIsLocal(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 2219) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionSendData(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    return (*(*result + 64))(result, a2, a3, a4, a5, 1, 0);
  }

  return result;
}

uint64_t RESyncNetSessionSendDataUnreliableUnordered(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    return (*(*result + 64))(result, a2, a3, a4, a5, 1, 2);
  }

  return result;
}

uint64_t RESyncNetSessionIncomingUpdate(uint64_t result)
{
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t RESyncNetSessionOutgoingUpdate(uint64_t result)
{
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t RESyncNetSessionLastStatsAggregated@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = result + 32 * ((*(result + 7408) - 1) & 0x7F);
    v3 = *(v2 + 3308);
    *a2 = *(v2 + 3304);
    *(a2 + 4) = v3;
    *(a2 + 8) = *(v2 + 3312);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void RESyncNetSessionAveragedStatsAggregated(re::Session *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v4 = 0uLL;
    v5 = 0;
    re::Session::averagedStatsAggregated(a1, &v4, a3);
    *a2 = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

re *RESyncNetSessionCopyLocalAddresses(re *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 304);
  v2 = *(a1 + 302);
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 8 * v2, 0);
  v5 = v4;
  if (v2)
  {
    v6 = 0;
    v7 = (v1 + 16);
    do
    {
      if (*(v7 - 1))
      {
        v8 = *v7;
      }

      else
      {
        v8 = v7 - 7;
      }

      *(v4 + v6++) = v8;
      v7 += 4;
    }

    while (v2 != v6);
    v9 = RESyncAddressListCreate(v4, v2);
    v10 = v9;
    goto LABEL_11;
  }

  v9 = RESyncAddressListCreate(v4, 0);
  v10 = v9;
  if (v5)
  {
LABEL_11:
    v11 = re::globalAllocators(v9);
    (*(*v11[2] + 40))(v11[2], v5);
  }

  return v10;
}

uint64_t RESyncParticipantGetIdentity(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t RESyncParticipantGetPeerID(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t RESyncParticipantGetUserContext@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    *a2 = 0;
    v2 = *(result + 128);
    if (v2)
    {
      v3 = *(result + 144);
    }

    else
    {
      v3 = 0;
    }

    *(a2 + 8) = v3;
    *(a2 + 16) = v2;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t RESyncParticipantGetAddress(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      return *(result + 56);
    }

    else
    {
      result += 49;
    }
  }

  return result;
}

uint64_t RESyncParticipantHasForceAuthorityCapability(uint64_t result)
{
  if (result)
  {
    return (*(result + 72) >> 1) & 1;
  }

  return result;
}

BOOL RESyncParticipantHasCapability(_BOOL8 result, int a2)
{
  if (result)
  {
    return (a2 & ~*(result + 72)) == 0;
  }

  return result;
}

double RESyncNetSessionConfigurationCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 152, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 32) = 0x7B61A86B3;
  *(v2 + 48) = 0x61A800000000;
  *v2 = &unk_2873F5608;
  *(v2 + 24) = MEMORY[0x277D85CD0];
  *(v2 + 40) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 100) = 16777473;
  *&result = 500;
  *(v2 + 104) = 500;
  *(v2 + 112) = 10485760;
  *(v2 + 116) = 257;
  *(v2 + 120) = 10;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  return result;
}

uint64_t RESyncNetSessionConfigurationSetIsLeader(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

void RESyncNetSessionSetLeader(re::Session *this, uint64_t a2)
{
  if (this)
  {
    *(this + 392) = a2;
    re::Session::onLeaderChange(this, a2);
  }
}

void RESyncNetSessionConfigurationSetAllowLeaderMigration(re *a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      re::make::shared::object<re::LeaderElectionLowestPeerID>(a1, &v4);
      v3 = v4;
      RESyncNetSessionConfigurationSetLeaderElection(a1, v4);
      if (v3)
      {
      }
    }

    else
    {

      RESyncNetSessionConfigurationSetLeaderElection(a1, 0);
    }
  }
}

void RESyncNetSessionConfigurationSetLeaderElection(re *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      v4 = (a2 + 8);
    }

    else
    {
      v5 = re::globalAllocators(a1);
      v2 = (*(*v5[2] + 32))(v5[2], 40, 8);
      *v2 = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0;
      ArcSharedObject::ArcSharedObject(v2, 0);
      *v2 = &unk_2873F4140;
    }

    v6 = *(a1 + 7);
    *(a1 + 7) = v2;
    if (v6)
    {
    }
  }
}

void RESyncNetSessionConfigurationSetLeaderElectionPolicy(re *a1, int a2)
{
  if (a1)
  {
    if (a2 == 1)
    {
      re::make::shared::object<re::LeaderElectionLowestPeerID>(a1, &v4);
      v3 = v4;
      RESyncNetSessionConfigurationSetLeaderElection(a1, v4);
      if (v3)
      {
      }
    }

    else
    {

      RESyncNetSessionConfigurationSetLeaderElection(a1, 0);
    }
  }
}

uint64_t RESyncNetSessionConfigurationSetUserContext(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 16);
    *(result + 72) = *(a2 + 8);
    *(result + 80) = v2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetAllowTimeSync(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 97) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetAuthorityPolicy(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

void RESyncNetSessionConfigurationSetDiscoveryView(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = (a2 + 8);
    }

    v5 = *(a1 + 88);
    *(a1 + 88) = a2;
    if (v5)
    {
    }
  }
}

uint64_t RESyncNetSessionConfigurationSetIsPrivileged(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 98) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetUnreliableSyncEnabled(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 103) = a2 ^ 1;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetUnreliableResendTimeout(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetCompressionMethod(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 116) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetSyncDeltaCompression(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 117) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetInitTimeOutMs(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetHandshakeTimeOutMs(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 52) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetMaxHelloPacketsSendCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = a2;
    }

    *(result + 120) = v2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetShutdownOnVersionMismatch(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 102) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetMaxUnreliablePacketSize(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 108) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetIsLocal(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 99) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetTransportIsThrottled(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 100) = a2;
  }

  return result;
}

void RESyncNetSessionConfigurationSetTransportIsFragmented(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 101) = a2;
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncNetSessionConfigurationSetTransportIsFragmented";
      v6 = 2080;
      v7 = "configuration != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncNetSessionPublishBandwidthEvent(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_23:
    v15 = *re::networkLogObjects(a1);
    v12 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RESyncNetSessionPublishBandwidthEvent";
      *&buf[12] = 2080;
      *&buf[14] = "session != __null";
LABEL_27:
      _os_log_error_impl(&dword_26168F000, v15, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (a2)
  {
    v2 = a1;
    v3 = *(a1 + 7512);
    *(a1 + 7512) = v3 + 1;
    if (*(a1 + 7448))
    {
      v4 = 0;
      do
      {
        if ((*(*(v2 + 7464) + 32 * v4 + 24))(v2) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v2 + 7432), v4);
        }

        else
        {
          ++v4;
        }
      }

      while (v4 < *(v2 + 7448));
      v3 = *(v2 + 7512) - 1;
    }

    *(v2 + 7512) = v3;
    if (v3 || (v5 = *(v2 + 7488)) == 0)
    {
LABEL_20:
      v12 = 1;
      goto LABEL_21;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(v2 + 7488);
      if (v8 <= v7)
      {
        break;
      }

      v9 = *(v2 + 7504) + v6;
      v10 = *(v9 + 32);
      v11 = *(v9 + 16);
      v16[0] = *v9;
      v16[1] = v11;
      v17 = v10;
      if (LOBYTE(v16[0]) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v2 + 7432, v16 + 1, buf);
        if ((buf[0] & 1) == 0)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((v2 + 7432), v16 + 8);
        }
      }

      else
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v2 + 7432, v16 + 1, buf);
        if (buf[0] == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v2 + 7432), *&buf[8]);
        }
      }

      ++v7;
      v6 += 40;
      if (v5 == v7)
      {
        goto LABEL_20;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = v7;
    v24 = 2048;
    v25 = v8;
    _os_log_send_and_compose_impl();
    a1 = _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  v15 = *re::networkLogObjects(a1);
  v12 = 16;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "RESyncNetSessionPublishBandwidthEvent";
    *&buf[12] = 2080;
    *&buf[14] = "bwEvent != __null";
    goto LABEL_27;
  }

LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t RESyncNetSessionSetCapabilitiesIsLeader(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 3280) = *(result + 3280) & 0xFFFFFFFE | a2;
  }

  return result;
}

uint64_t anonymous namespace::SessionObserverProxy::didStart(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didStop(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didJoin(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, a2, *a3);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didLeave(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, a2, *a3);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didChangeLeader(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didReceiveCustomData(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::tryGet(a1 + 80, a3);
  if (v3)
  {
    (*(*v3 + 16))();
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didConnectConnection(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2, uint64_t a3)
{
  if (*(this + 8))
  {
    re::Transport::connectionAddress((a2 + 2320), a3, &v7);
    if (v8)
    {
      v5 = *&v9[7];
    }

    else
    {
      v5 = v9;
    }

    (*(*(this + 8) + 16))(*(this + 8), a2, v5);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didDisconnectConnection(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2, uint64_t a3)
{
  if (*(this + 9))
  {
    re::Transport::connectionAddress((a2 + 2320), a3, &v7);
    if (v8)
    {
      v5 = *&v9[7];
    }

    else
    {
      v5 = v9;
    }

    (*(*(this + 9) + 16))(*(this + 9), a2, v5);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::peerDidPause(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::peerDidResume(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 17);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t re::Event<re::Session>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t re::Event<re::Session,re::SessionError>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke(uint64_t a1, void *a2, unsigned int *a3)
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

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::SharedPtr<re::SessionParticipant>))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
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

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::SharedPtr<re::SessionParticipant>,re::ParticipantError))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&,re::ParticipantError&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3, unsigned int *a4)
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

uint64_t re::Event<re::Session,unsigned long long>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::Event<re::Session,re::ChannelId,unsigned long long,void const*,unsigned int>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::ChannelId,unsigned long long,void const*,unsigned int))::{lambda(re::Session*,re::Event<re::Session,re::ChannelId,unsigned long long,void const*,unsigned int>::Subscription const&,re::ChannelId&&,unsigned long long &&,void const*&&,unsigned int &&)#1}::__invoke(uint64_t a1, void *a2, unsigned __int8 *a3, void *a4, void *a5, unsigned int *a6)
{
  v7 = a2[1];
  v8 = a2[2];
  v9 = (*a2 + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  return v7(v9, a1, *a3, *a4, *a5, *a6);
}

uint64_t re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::tryGet(uint64_t a1, unsigned __int8 a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
  re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::findEntry<re::ChannelId>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 8;
  }
}

uint64_t re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::findEntry<re::ChannelId>(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 24 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 4) = *(v17 - 4);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

void re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

re::Session *re::make::shared::object<re::Session>@<X0>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 7656, 8);
  bzero(v4, 0x1DE8uLL);
  result = re::Session::Session(v4);
  *a2 = v4;
  return result;
}

re::Session *re::Session::Session(re::Session *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v2 = 0;
  *this = &unk_2873F5090;
  *(this + 3) = &unk_2873F5128;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 36) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 46) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 58) = 0;
  *(this + 28) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 80) = 0;
  *(this + 39) = 0;
  *(this + 46) = 0;
  *(this + 94) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 102) = 0;
  *(this + 50) = 0;
  *(this + 57) = 0;
  *(this + 116) = 0;
  *(this + 112) = 0;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 124) = 0;
  *(this + 61) = 0;
  *(this + 68) = 0;
  *(this + 138) = 0;
  *(this + 134) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  do
  {
    v3 = this + v2;
    *(v3 + 146) = 0;
    *(v3 + 72) = 0;
    *(v3 + 35) = 0uLL;
    *(v3 + 79) = 0;
    *(v3 + 160) = 0;
    *(v3 + 37) = 0uLL;
    *(v3 + 38) = 0uLL;
    v2 += 88;
    *(v3 + 156) = 0;
  }

  while (v2 != 880);
  *(this + 366) = 0;
  *(this + 182) = 0;
  *(this + 90) = 0u;
  *(this + 189) = 0;
  *(this + 380) = 0;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 376) = 0;
  *(this + 191) = 0;
  *(this + 96) = 0u;
  *(this + 388) = 0;
  *(this + 200) = 0;
  *(this + 402) = 0;
  *(this + 398) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 204) = 0;
  *(this + 410) = 0;
  *(this + 101) = 0u;
  *(this + 211) = 0;
  *(this + 424) = 0;
  *(this + 103) = 0u;
  *(this + 104) = 0u;
  *(this + 420) = 0;
  *(this + 215) = 0;
  *(this + 432) = 0;
  *(this + 1704) = 0u;
  *(this + 222) = 0;
  *(this + 446) = 0;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 442) = 0;
  *(this + 226) = 0;
  *(this + 454) = 0;
  *(this + 112) = 0u;
  *(this + 233) = 0;
  *(this + 468) = 0;
  *(this + 464) = 0;
  *(this + 115) = 0u;
  *(this + 114) = 0u;
  *(this + 1880) = 0u;
  *(this + 476) = 0;
  *(this + 237) = 0;
  *(this + 244) = 0;
  *(this + 490) = 0;
  *(this + 1912) = 0u;
  *(this + 1928) = 0u;
  *(this + 486) = 0;
  *(this + 123) = 0u;
  *(this + 498) = 0;
  *(this + 248) = 0;
  *(this + 255) = 0;
  *(this + 512) = 0;
  *(this + 125) = 0u;
  *(this + 126) = 0u;
  *(this + 508) = 0;
  *(this + 520) = 0;
  *(this + 259) = 0;
  *(this + 2056) = 0u;
  *(this + 266) = 0;
  *(this + 534) = 0;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 530) = 0;
  *(this + 268) = MEMORY[0x277D85CD0];
  *(this + 269) = 0x7B61A86B3;
  *(this + 270) = 0;
  *(this + 271) = 0x61A800000000;
  *(this + 272) = 0;
  *(this + 2184) = 0;
  *(this + 276) = 0;
  *(this + 554) = 0;
  *(this + 137) = 0u;
  *(this + 555) = 16777473;
  *(this + 278) = 500;
  *(this + 558) = 10485760;
  *(this + 1118) = 257;
  *(this + 560) = 10;
  *(this + 566) = 0;
  *(this + 2248) = 0u;
  *(this + 2272) = 0;
  *(this + 289) = 0;
  *(this + 576) = 0;
  *(this + 287) = 0;
  *(this + 2280) = 0u;
  re::Transport::Transport((this + 2320));
  *(this + 758) = 1;
  *(this + 190) = 0u;
  *(this + 191) = 0u;
  *(this + 768) = 0;
  *(this + 3080) = 0u;
  *(this + 3096) = 0u;
  *(this + 3108) = 0u;
  *(this + 3124) = 0x7FFFFFFFLL;
  *(this + 407) = 0;
  *(this + 816) = 0;
  *(this + 409) = 0;
  *(this + 820) = 0;
  *(this + 411) = 0;
  *(this + 196) = 0u;
  *(this + 197) = 0u;
  *(this + 792) = 0;
  *(this + 802) = 0;
  *(this + 3176) = 0u;
  *(this + 3192) = 0u;
  *(this + 812) = 0;
  *(this + 202) = 0u;
  *(this + 201) = 0u;
  *(this + 412) = 500;
  *(this + 938) = 0;
  *(this + 1878) = 0;
  *(this + 7464) = 0u;
  *(this + 7480) = 0u;
  *(this + 1874) = 0;
  *(this + 940) = 0;
  bzero(this + 3304, 0x103CuLL);
  *(this + 941) = &unk_2873F57D8;
  *(this + 942) = 0x100000000;
  *(this + 7544) = 0u;
  *(this + 7560) = 0u;
  *(this + 1894) = 0;
  *(this + 954) = 0;
  *(this + 1910) = 0;
  *(this + 474) = 0u;
  *(this + 475) = 0u;
  *(this + 7612) = 0u;
  *(this + 7648) = 0;
  return this;
}

void anonymous namespace::SessionObserverProxy::~SessionObserverProxy(_anonymous_namespace_::SessionObserverProxy *this)
{
  *this = &unk_2873F55C0;
  _Block_release(*(this + 3));
  _Block_release(*(this + 4));
  _Block_release(*(this + 5));
  _Block_release(*(this + 6));
  _Block_release(*(this + 7));
  _Block_release(*(this + 16));
  _Block_release(*(this + 17));
  v2 = *(this + 28);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 12);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        v3 = *(this + 28);
        break;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (v2 != v3)
  {
    LODWORD(v6) = v3;
    do
    {
      LODWORD(v7) = v6;
      _Block_release(*(*(this + 12) + 24 * v3 + 8));
      v8 = *(this + 28);
      if (v8 <= v7 + 1)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v6 = v8;
      }

      while (v6 - 1 != v7)
      {
        v7 = (v7 + 1);
        if ((*(*(this + 12) + 24 * v7) & 0x80000000) != 0)
        {
          v3 = v7;
          LODWORD(v6) = v7;
          goto LABEL_16;
        }
      }

      v3 = v6;
LABEL_16:
      ;
    }

    while (v8 != v6);
  }

  _Block_release(*(this + 8));
  _Block_release(*(this + 9));
  re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 10);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

void RESyncNetSessionConfig::~RESyncNetSessionConfig(RESyncNetSessionConfig *this)
{
  *this = &unk_2873F5608;
  v2 = *(this + 17);
  if (v2)
  {

    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {

    *(this + 16) = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {

    *(this + 11) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F5608;
  v2 = *(this + 17);
  if (v2)
  {

    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {

    *(this + 16) = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {

    *(this + 11) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::SyncObjectTypedStore::SyncObjectTypedStore(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2873F5650;
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  *a2 = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  v5 = *(a1 + 16);
  if (*(v5 + 104) && *(v5 + 120))
  {
    v6 = re::NetworkFeatureFlags::syncObjectStateHistoryBufferSize(a1);
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0x7FFFFFFFLL;
  return a1;
}

void re::SyncObjectTypedStore::~SyncObjectTypedStore(re::SyncObjectTypedStore *this)
{
  *this = &unk_2873F5650;
  if (*(this + 8) == 1)
  {
    *(this + 8) = 0;
  }

  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 11);
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 48);
  v2 = *(this + 2);
  if (v2)
  {

    *(this + 2) = 0;
  }
}

{
  re::SyncObjectTypedStore::~SyncObjectTypedStore(this);

  JUMPOUT(0x266708EC0);
}

void *re::SyncObjectTypedStore::createWithGuid@<X0>(re::SyncObjectTypedStore *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(this + 3);
  v7 = *(this + 4);
  v8 = *(this + 5);
  v9 = (*(*v6 + 32))(v6, 224, 8);
  v10 = re::SyncObject::SyncObject(v9, v6, a2, v7, v8);
  *a3 = v10;
  v11 = *(v10 + 3);
  v13 = *(this + 8);
  v14 = v11;
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 88, &v14, &v13);
  result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::add(this + 6, a3);
  *(*a3 + 88) = this;
  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

unint64_t *re::SyncObjectTypedStore::findObjectWithGuid(re::SyncObjectTypedStore *this, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 88, v7);
  if (result)
  {
    v4 = *result;
    v5 = *(this + 8);
    if (v5 <= *result)
    {
      v7[1] = 0;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      v11 = 797;
      v12 = 2048;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = *(*(this + 10) + 8 * v4);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void re::SyncObjectTypedStore::removeObject(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *&v14[0] = *(*a2 + 24);
  v4 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 88, v14);
  if (v4)
  {
    v5 = *(a1 + 64);
    v6 = *v4;
    if (v5 <= *v4)
    {
      memset(v14, 0, sizeof(v14));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v7 = *(a1 + 80);
    v8 = v7 + 8 * v5;
    v9 = *(v8 - 8);
    *(v8 - 8) = 0;
    *(v8 - 8) = *(v7 + 8 * v6);
    *(v7 + 8 * v6) = v9;
    *&v14[0] = *(*(*(a1 + 80) + 8 * v6) + 24);
    *re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 88, v14) = v6;
    *&v14[0] = *(*a2 + 24);
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 88, v14);
    v10 = *(a1 + 64);
    v11 = *(a1 + 80) + 8 * v10;
    v12 = *(v11 - 8);
    if (v12)
    {

      *(v11 - 8) = 0;
      v10 = *(a1 + 64);
    }

    *(a1 + 64) = v10 - 1;
    ++*(a1 + 72);
  }

  v13 = *MEMORY[0x277D85DE8];
}

re::SyncObjectStore *re::SyncObjectStore::SyncObjectStore(re::SyncObjectStore *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5670;
  re::Allocator::Allocator((this + 24), "SyncObject", 1);
  *(this + 3) = &unk_2873F3D28;
  re::Allocator::Allocator((this + 48), "SyncObjectStateHistory", 1);
  *(this + 6) = &unk_2873F3D28;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 15) = 0x20000000ALL;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 16) = 0;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0x7FFFFFFFLL;
  return this;
}

void re::SyncObjectStore::~SyncObjectStore(re::SyncObjectStore *this)
{
  *this = &unk_2873F5670;
  v2 = *(this + 26);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 11);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 26);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  LODWORD(v6) = *(this + 26);
LABEL_9:
  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::SyncObjectTypedStore>(*(*(this + 11) + 32 * v3 + 16));
    LODWORD(v6) = *(this + 26);
    if (v6 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    else
    {
      v7 = *(this + 26);
    }

    while (v7 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 11) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_9;
      }
    }

    LODWORD(v3) = v7;
  }

  if (*(this + 25))
  {
    v8 = *(this + 24);
    if (v8)
    {
      memset_pattern16(*(this + 10), &unk_261710510, 4 * v8);
      LODWORD(v6) = *(this + 26);
    }

    if (v6)
    {
      v9 = *(this + 11);
      v6 = v6;
      do
      {
        if ((*v9 & 0x80000000) != 0)
        {
          *v9 &= ~0x80000000;
        }

        v9 += 8;
        --v6;
      }

      while (v6);
    }

    *(this + 25) = 0;
    *(this + 26) = 0;
    v10 = *(this + 28) + 1;
    *(this + 27) = 0x7FFFFFFF;
    *(this + 28) = v10;
  }

  re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::clear(this + 168);
  *(this + 18) = 0;
  ++*(this + 38);
  re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::clear(this + 168);
  *(this + 18) = 0;
  ++*(this + 38);
  v11 = re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::deinit(this + 21);
  v12 = *(this + 16);
  if (v12)
  {
    if (*(this + 20))
    {
      (*(*v12 + 40))(v12, v11);
    }

    *(this + 20) = 0;
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 16) = 0;
    ++*(this + 38);
  }

  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::Allocator::~Allocator((this + 48));
  re::Allocator::~Allocator((this + 24));
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::SyncObjectStore::~SyncObjectStore(this);

  JUMPOUT(0x266708EC0);
}

re *re::internal::destroyPersistent<re::SyncObjectTypedStore>(re *result)
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

void re::SyncObjectTombstoneInfo::update(re::SyncObjectTombstoneInfo *this)
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(this + 3);
  if (v4)
  {
    v5 = Current;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(this + 5);
      LODWORD(v3) = *this;
      v3 = *&v3;
      if (v5 - *(v9 + v6) < v3)
      {
        break;
      }

      v10 = v9 + v6;
      v11 = *(v10 + 8);
      if (*(this + 1) <= v11)
      {
        re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::remove(this + 48, (v10 + 16));
        ++v8;
        v4 = *(this + 3);
      }

      else
      {
        *(v10 + 8) = v11 + 1;
      }

      ++v7;
      v6 += 40;
    }

    while (v7 < v4);
    if (v8)
    {

      re::DynamicArray<re::SyncObjectTombstoneInfo::LogEntry>::removeManyStableAt(this + 1, 0, v8);
    }
  }
}

void re::SyncObjectStore::addType(re::SyncObjectStore *this, const re::SyncObjectTypeInfo *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(a2 + 4) ^ (*(a2 + 4) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(a2 + 4) ^ (*(a2 + 4) >> 30))) >> 27));
  v5 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 72, a2 + 4, v4 ^ (v4 >> 31), buf);
  if (v19[0] == 0x7FFFFFFF)
  {
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 144, 8);
    v8 = re::SyncObjectTypeInfo::SyncObjectTypeInfo(v7, a2);
    v9 = re::globalAllocators(v8);
    v10 = (*(*v9[2] + 32))(v9[2], 136, 8);
    v17 = v7;
    if (v7)
    {
      v11 = (v7 + 8);
    }

    re::SyncObjectTypedStore::SyncObjectTypedStore(v10, &v17, this + 24, this + 48);
    *buf = v10;
    v12 = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(this + 72, (v7 + 32), buf);
    if (v17)
    {
    }

    v13 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (*(v7 + 48))
      {
        v14 = *(v7 + 56);
      }

      else
      {
        v14 = v7 + 49;
      }

      v15 = *(v7 + 32);
      *buf = 136380931;
      *&buf[4] = v14;
      LOWORD(v19[0]) = 2048;
      *(v19 + 2) = v15;
      _os_log_impl(&dword_26168F000, v13, OS_LOG_TYPE_INFO, "Registered sync object type %{private}s:%llu", buf, 0x16u);
    }

    else if (!v7)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    v8 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v8;
    ++*(a1 + 40);
  }

  return result;
}

void re::SyncObjectStore::addType(re::SyncObjectStore *this, re::SyncObjectTypeInfo *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = (a2 + 32);
    v5 = 0xBF58476D1CE4E5B9 * (*(a2 + 4) ^ (*(a2 + 4) >> 30));
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 72, a2 + 4, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), buf);
    if (v16[0] == 0x7FFFFFFF)
    {
      v6 = re::globalAllocators(a2 + 8);
      v7 = (*(*v6[2] + 32))(v6[2], 136, 8);
      v14 = a2;
      v8 = a2 + 8;
      re::SyncObjectTypedStore::SyncObjectTypedStore(v7, &v14, this + 24, this + 48);
      *buf = v7;
      v9 = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(this + 72, v4, buf);
      if (v14)
      {
      }

      v10 = *re::networkLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (*(a2 + 48))
        {
          v11 = *(a2 + 7);
        }

        else
        {
          v11 = a2 + 49;
        }

        v12 = *v4;
        *buf = 136380931;
        *&buf[4] = v11;
        LOWORD(v16[0]) = 2048;
        *(v16 + 2) = v12;
        _os_log_impl(&dword_26168F000, v10, OS_LOG_TYPE_INFO, "Registered sync object type %{private}s:%llu", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void *re::SyncObjectStore::create@<X0>(re::SyncObjectStore *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2;
  v4 = *re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 72, &v6);
  uuid_generate_random(out);
  return re::SyncObjectTypedStore::createWithGuid(v4, (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out, a3);
}

unint64_t re::SyncObjectStore::createIncomingObject@<X0>(re::SyncObjectStore *this@<X0>, const re::SyncOwnershipInfo *a2@<X3>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t *a5@<X8>)
{
  v13 = a3;
  v8 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 72, &v13);
  re::SyncObjectTypedStore::createWithGuid(*v8, a4, a5);
  v9 = *a5;
  v10 = *(a2 + 8);
  v11 = *(a2 + 1);
  *(v9 + 136) = *a2;
  *(v9 + 168) = v10;
  *(v9 + 152) = v11;
  return re::SyncObject::addState(v9, 0, *(a2 + 3));
}

re::SyncObjectTypedStore **re::SyncObjectStore::findObject@<X0>(re::SyncObjectStore *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, re::SyncObjectTypedStore ***a4@<X8>)
{
  v7 = a2;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 72, &v7);
  if (result)
  {
    result = re::SyncObjectTypedStore::findObjectWithGuid(*result, a3);
    *a4 = result;
    if (result)
    {
      return result + 1;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void re::SyncObjectStore::removeObject(uint64_t a1, uint64_t *a2)
{
  v13 = *(*(*(*a2 + 88) + 16) + 32);
  v4 = *re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 72, &v13);
  v5 = *a2;
  v12 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
    re::SyncObjectTypedStore::removeObject(v4, &v12);
  }

  else
  {
    re::SyncObjectTypedStore::removeObject(v4, &v12);
  }

  v7 = *(*a2 + 24);
  v8 = *(*a2 + 80);
  v10 = *(*(*(*a2 + 88) + 16) + 32);
  v11 = v7;
  if (v8)
  {
    v8 = *(v8 + 24);
  }

  v9 = v8;
  re::SyncObjectTombstoneInfo::addEntry((a1 + 120), &v11, &v10, &v9);
}

void re::SyncObjectTombstoneInfo::addEntry(re::SyncObjectTombstoneInfo *this, const unint64_t *a2, const unint64_t *a3, const unint64_t *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = ((*a2 << 6) + (*a2 >> 2) + *a3 - 0x61C8864680B583E9) ^ *a2;
  v9 = *(this + 18);
  if (v9)
  {
    v10 = v8 % v9;
    v11 = *(*(this + 7) + 4 * (v8 % v9));
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(this + 8);
      v13 = v12 + 40 * v11;
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      v16 = v15 == v5 && v14 == v6;
      if (v16)
      {
        goto LABEL_21;
      }

      while (1)
      {
        LODWORD(v11) = *(v12 + 40 * v11 + 8) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          break;
        }

        v17 = v12 + 40 * v11;
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 == v5 && v18 == v6)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  v21 = *(this + 21);
  if (v21 == 0x7FFFFFFF)
  {
    v21 = *(this + 20);
    v22 = v21;
    if (v21 == v9)
    {
      re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::setCapacity(this + 48, 2 * *(this + 19));
      LODWORD(v10) = v8 % *(this + 18);
      v22 = *(this + 20);
    }

    *(this + 20) = v22 + 1;
    v23 = *(this + 8);
    v24 = *(v23 + 40 * v21 + 8);
  }

  else
  {
    v23 = *(this + 8);
    v24 = *(v23 + 40 * v21 + 8);
    *(this + 21) = v24 & 0x7FFFFFFF;
  }

  *(v23 + 40 * v21 + 8) = v24 | 0x80000000;
  v25 = *(this + 7);
  *(*(this + 8) + 40 * v21 + 8) = *(*(this + 8) + 40 * v21 + 8) & 0x80000000 | *(v25 + 4 * v10);
  *(*(this + 8) + 40 * v21) = v8;
  v26 = (*(this + 8) + 40 * v21);
  v26[2] = v5;
  v26[3] = v6;
  v26[4] = v7;
  *(v25 + 4 * v10) = v21;
  ++*(this + 19);
  ++*(this + 22);
LABEL_21:
  Current = CFAbsoluteTimeGetCurrent();
  v29 = *(this + 2);
  v30 = *(this + 3);
  if (v30 >= v29)
  {
    v31 = v30 + 1;
    if (v29 < v30 + 1)
    {
      if (*(this + 1))
      {
        v32 = 2 * v29;
        v16 = v29 == 0;
        v33 = 8;
        if (!v16)
        {
          v33 = v32;
        }

        if (v33 <= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v33;
        }

        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(this + 1, v34);
      }

      else
      {
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(this + 1, v31);
        ++*(this + 8);
      }
    }

    v30 = *(this + 3);
  }

  v35 = *(this + 5) + 40 * v30;
  *v35 = Current;
  *(v35 + 8) = 0;
  *(v35 + 16) = v5;
  *(v35 + 24) = v6;
  *(v35 + 32) = v7;
  ++*(this + 3);
  ++*(this + 8);
}

void *re::SyncObjectStore::types@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = *(this + 25);
  if (v4)
  {
    this = re::DynamicArray<re::Allocator const*>::setCapacity(a2, v4);
  }

  v5 = *(v2 + 26);
  if (v5)
  {
    v6 = 0;
    v7 = v2[11];
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(v2 + 26);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

LABEL_16:
  while (v6 != v5)
  {
    this = re::DynamicArray<re::Allocator const*>::add(a2, (v2[11] + 32 * v6 + 16));
    v9 = *(v2 + 26);
    if (v9 <= v6 + 1)
    {
      v9 = v6 + 1;
    }

    while (v9 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(v2[11] + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v9;
  }

  return this;
}

void re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_261710510, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

BOOL re::SyncObjectTombstoneInfo::contains(re::SyncObjectTombstoneInfo *this, const unint64_t *a2, const unint64_t *a3)
{
  v3 = *(this + 18);
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a3;
  v6 = *(*(this + 7) + 4 * (((*a3 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2) % v3));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(this + 8);
  v9 = v8 + 40 * v6;
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 == v4 && v10 == v5)
  {
    return 1;
  }

  do
  {
    LODWORD(v6) = *(v8 + 40 * v6 + 8) & 0x7FFFFFFF;
    result = v6 != 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      break;
    }

    v13 = v8 + 40 * v6;
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
  }

  while (v15 != v4 || v14 != v5);
  return result;
}

uint64_t re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = ((v4 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = v9 + 40 * v7;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 != v3 || v11 != v4)
  {
    while (1)
    {
      v14 = v7;
      LODWORD(v7) = *(v9 + 40 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      v15 = v9 + 40 * v7;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 == v3 && v16 == v4)
      {
        *(v9 + 40 * v14 + 8) = *(v9 + 40 * v14 + 8) & 0x80000000 | *(v9 + 40 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_16;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 40 * v7 + 8) & 0x7FFFFFFF;
LABEL_16:
  v19 = *(a1 + 16);
  v20 = v19 + 40 * v7;
  v23 = *(v20 + 8);
  v22 = (v20 + 8);
  v21 = v23;
  if (v23 < 0)
  {
    *v22 = v21 & 0x7FFFFFFF;
    v19 = *(a1 + 16);
    v21 = *(v19 + 40 * v7 + 8);
  }

  v24 = *(a1 + 40);
  *(v19 + 40 * v7 + 8) = *(a1 + 36) | v21 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v24 + 1;
  return 1;
}

void *re::DynamicArray<re::SyncObjectTombstoneInfo::LogEntry>::removeManyStableAt(void *result, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = result;
    v5 = a2 + a3 - 1;
    v6 = result[2];
    if (v5 >= v6)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v5 < v6 - 1)
    {
      v7 = result[4];
      result = (v7 + 40 * a2);
      v8 = &result[5 * a3];
      v9 = (v7 + 40 * v6);
      if (v9 != v8)
      {
        result = memmove(result, v8, v9 - v8);
        v6 = v4[2];
      }
    }

    v4[2] = v6 - a3;
    ++*(v4 + 6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
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

uint64_t re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
                v18 = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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

void re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v24, 0, 36);
      *&v24[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::init(v24, v4, a2);
      v5 = *a1;
      *a1 = *v24;
      v6 = *(a1 + 16);
      v7 = *&v24[8];
      *v24 = v5;
      *&v24[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v24[24];
      *&v24[24] = *(a1 + 24);
      v8 = *&v24[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 2) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 24);
            v16 = v14 % v15;
            v17 = *(a1 + 36);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 32);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 24);
                v18 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v18 + 1;
              v19 = *(a1 + 16);
              v20 = *(v19 + 40 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 16);
              v20 = *(v19 + 40 * v17 + 8);
              *(a1 + 36) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 40 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 16) + 40 * v17 + 8) = *(*(a1 + 16) + 40 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 16) + 40 * v17) = v14;
            v21 = *(a1 + 16) + 40 * v17;
            v22 = *v13;
            *(v21 + 32) = *(v13 + 2);
            *(v21 + 16) = v22;
            v12 = *(a1 + 8);
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
          }

          v13 = (v13 + 40);
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::deinit(v24);
    }
  }

  else
  {
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = 3;
    }
  }
}

void re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<anonymous namespace::MCProtocolHandle>>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v9 = 2 * v4;
      v10 = v4 == 0;
      v11 = 8;
      if (!v10)
      {
        v11 = v9;
      }

      if (v11 <= v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = v11;
      }

      result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(result, v12);
    }

    else
    {
      result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(v3, v6);
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 2);
  *(*(v3 + 4) + 8 * v8) = *a2;
  *a2 = 0;
  *(v3 + 2) = v8 + 1;
  ++*(v3 + 6);
  return result;
}

void anonymous namespace::MCProtocolHandle::make(_anonymous_namespace_::MCProtocolHandle *this, MCPeerID *a2)
{
  v5 = a2;
  v3 = re::globalAllocators(v5);
  v4 = (*(*v3[2] + 32))(v3[2], 1800, 8);
  bzero(v4, 0x708uLL);
  re::ProtocolHandle::ProtocolHandle(v4);
  *v4 = &unk_2873F5790;
  v4[221] = 0;
  *(v4 + 1776) = 0;
  v4[223] = 250000000;
  v4[224] = 0;
  *this = v4;
  re::ObjCObject::operator=(v4 + 221, v5);
}

uint64_t *re::DynamicArray<re::SharedPtr<anonymous namespace::MCProtocolHandle>>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
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
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

uint64_t re::MultipeerProtocolLayer::MultipeerProtocolLayer(uint64_t a1, id *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_2873F56C8;
  v4 = *a2;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  re::DynamicString::setCapacity((a1 + 48), 0);
  return a1;
}

void re::MultipeerProtocolLayer::~MultipeerProtocolLayer(void **this)
{
  re::ObjCObject::operator=(this + 4, 0);
  re::ObjCObject::operator=(this + 5, 0);
  re::DynamicString::deinit((this + 6));

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);
}

{
  re::MultipeerProtocolLayer::~MultipeerProtocolLayer(this);

  JUMPOUT(0x266708EC0);
}

void **re::MultipeerProtocolLayer::deinit(void **this)
{
  re::ObjCObject::operator=(this + 4, 0);

  return re::ObjCObject::operator=(this + 5, 0);
}

uint64_t re::MultipeerProtocolLayer::init(id *a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v2 = [a1[4] myPeerID];
  [REMultipeerHelper makeAddressFromPeerID:v2];
  re::DynamicString::operator=((a1 + 6), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  re::ObjCObject::operator=(a1 + 5, 0);

  return 1;
}

void re::MultipeerProtocolLayer::open(id *this@<X0>, const re::Address *a2@<X1>, void *a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = this[5];
  v7 = [v6 handlesLock];
  [v7 lock];

  if (!v6)
  {
LABEL_24:
    *&v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_18;
  }

  [v6 handles];
  v8 = v34;
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      [v6 handles];
      v10 = v22;
      if (v22 <= v9)
      {
        break;
      }

      v3 = *(v23 + 8 * v9);
      if (v3)
      {
        v11 = (v3 + 8);
      }

      [REMultipeerHelper makeAddressFromPeerID:*(v3 + 1768)];
      v12 = BYTE8(v33);
      if (BYTE8(v33))
      {
        v13 = v34;
      }

      else
      {
        v13 = &v33 + 9;
      }

      if (*(a2 + 1))
      {
        v14 = *(a2 + 2);
      }

      else
      {
        v14 = a2 + 9;
      }

      if (!strcmp(v13, v14))
      {
        goto LABEL_19;
      }

      if (v33 && (v12 & 1) != 0)
      {
        (*(*v33 + 40))();
      }

      ++v9;
      [v6 handles];
      v15 = v34;
      if (v9 >= v15)
      {
        goto LABEL_18;
      }
    }

    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v6 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 789;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v10;
    LODWORD(v20) = 38;
    v19 = &v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v6 = [v6 handlesLock];
  [v6 unlock];

  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Unknown new connection requested.", "!Unreachable code", "open", 414);
  _os_crash();
  __break(1u);
LABEL_19:
  v17 = [v6 handlesLock];
  [v17 unlock];

  *a3 = v3;
  if (v33 && (BYTE8(v33) & 1) != 0)
  {
    (*(*v33 + 40))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

void re::MultipeerProtocolLayer::close(id *a1, unint64_t a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "MPC: Closing peer handle=%p force=%d", buf, 0x12u);
  }

  v7 = a1[5];
  v8 = [v7 handlesLock];
  [v8 lock];

  if (!v7)
  {
    *&v39 = 0;
    memset(buf, 0, sizeof(buf));
    goto LABEL_23;
  }

  [v7 handles];
  v9 = *&buf[16];
  if (v9)
  {
    v10 = 0;
    v11 = -8;
    while (1)
    {
      [v7 handles];
      v12 = v26;
      if (v26 <= v10)
      {
        break;
      }

      v13 = *(v28 + 8 * v10);
      if (v13)
      {
        v14 = (v13 + 8);
        if (v13 == a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (!a2)
        {
LABEL_14:
          v16 = *(v13 + 1768);
          *(v13 + 1768) = 0;

          [v7 handles];
          a2 = v26;
          if (v26 > v10)
          {
            v17 = v26 - 1;
            if (v26 - 1 > v10 && v11 + 8 * v26)
            {
              v18 = (v28 - v11);
              v19 = *(v28 + 8 * v10);
              v20 = v11 + 8 * v26;
              do
              {
                *(v18 - 1) = *v18;
                *v18++ = v19;
                v20 -= 8;
              }

              while (v20);
            }

            v21 = v28 + 8 * a2;
            v22 = *(v21 - 8);
            if (v22)
            {

              *(v21 - 8) = 0;
              v17 = v26 - 1;
            }

            v26 = v17;
            ++v27;
            if (v13)
            {
            }

            goto LABEL_23;
          }

LABEL_25:
          v29 = 0;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v30 = 136315906;
          v31 = "removeStableAt";
          v32 = 1024;
          v33 = 969;
          v34 = 2048;
          v35 = v10;
          v36 = 2048;
          v37 = a2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      ++v10;
      [v7 handles];
      v15 = *&buf[16];
      v11 -= 8;
      if (v10 >= v15)
      {
        goto LABEL_23;
      }
    }

    v29 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    v33 = 789;
    v34 = 2048;
    v35 = v10;
    v36 = 2048;
    v37 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

LABEL_23:
  v23 = [v7 handlesLock];
  [v23 unlock];

  v24 = *MEMORY[0x277D85DE8];
}

void re::MultipeerProtocolLayer::disconnect(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 134218240;
    *&v13[4] = a2;
    v14 = 1024;
    LODWORD(v15) = a3;
    _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "MPC: Disconnecting peer handle=%p force=%d", v13, 0x12u);
  }

  v7 = *(a1 + 40);
  v8 = [v7 handlesLock];
  [v8 lock];

  v9 = *(a2 + 1768);
  if (v9)
  {
    if (*(a1 + 24))
    {
      v10 = v9;
      [REMultipeerHelper makeAddressFromPeerID:v10];
      (*(**(a1 + 24) + 8))(*(a1 + 24), a1, a2, v13);

      if (*v13 && (v13[8] & 1) != 0)
      {
        (*(**v13 + 40))();
      }

      v9 = *(a2 + 1768);
    }

    *(a2 + 1768) = 0;
  }

  v11 = [v7 handlesLock];
  [v11 unlock];

  v12 = *MEMORY[0x277D85DE8];
}

void re::MultipeerProtocolLayer::send(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v29, 6078, a1);
  if (*(a2 + 1776) == 1 && *(a2 + 1768))
  {
    v6 = *(a1 + 32);
    v7 = *a3;
    if (*a3 != *(a3 + 1))
    {
      do
      {
        v8 = atomic_load(*(v7 + 8));
        explicit = atomic_load_explicit((*a3 + 16), memory_order_acquire);
        if (v8)
        {
          v10 = explicit + 1;
          do
          {
            if (!--v10)
            {
              break;
            }

            v11 = a3[16];
            v12 = *(v8 + 24);
            v13 = malloc_type_malloc(v12 + 9, 0x100004077774924uLL);
            *(v13 + 8) = v11;
            memcpy(v13 + 9, *(v8 + 16), *(v8 + 24));
            v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:v12 + 9];
            v15 = *(v8 + 32) == 2;
            v33[0] = *(a2 + 1768);
            v16 = MEMORY[0x277CBEA60];
            v17 = v33[0];
            v18 = [v16 arrayWithObjects:v33 count:1];
            v30 = 0;
            LOBYTE(v15) = [v6 sendData:v14 toPeers:v18 withMode:v15 error:&v30];
            v19 = v30;

            if ((v15 & 1) == 0)
            {
              v21 = *re::networkLogObjects(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v24 = v21;
                v25 = [v19 description];
                v26 = [v25 UTF8String];
                *buf = 136315138;
                v32 = v26;
                _os_log_error_impl(&dword_26168F000, v24, OS_LOG_TYPE_ERROR, "MPC: Error sending packet: %s.", buf, 0xCu);
              }

              v22 = *(a1 + 24);
              if (v22)
              {
                (*(*v22 + 16))(v22, a1, a2, 2);

                goto LABEL_15;
              }
            }

            v23 = re::PacketQueue::dequeue(*a3);
            re::PacketPool::free(v23[7], v23);
            v8 = atomic_load(*(*a3 + 8));
          }

          while (v8);
        }

        v27 = *(a3 + 1);
        v7 = *a3 + 40;
        *a3 = v7;
        ++a3[16];
      }

      while (v7 != v27);
    }

LABEL_15:
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v29);
  v28 = *MEMORY[0x277D85DE8];
}

void re::MultipeerProtocolLayer::update(id *this)
{
  v44 = *MEMORY[0x277D85DE8];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v34, 6022, this);
  v2 = this[5];
  v3 = this[4];
  v4 = [v2 handlesLock];
  [v4 lock];

  v29 = v2;
  if (v2)
  {
    [v2 handles];
    if (v32)
    {
      v5 = v33;
      v6 = 8 * v32;
      v30 = v3;
      do
      {
        v7 = *v5;
        if (*v5)
        {
          v8 = (v7 + 8);
        }

        if (*(v7 + 1768))
        {
          v9 = v3;
          if ((*(v7 + 1776) & 1) == 0)
          {
            v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
            if (v10.__d_.__rep_ >= *(v7 + 1792))
            {
              rep = v10.__d_.__rep_;
              qmemcpy(v43, "com.apple.rekit.hello", sizeof(v43));
              v12 = v9;
              v42 = -1;
              v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v41 length:30 freeWhenDone:0];
              v40 = *(v7 + 1768);
              v14 = MEMORY[0x277CBEA60];
              v15 = v40;
              v16 = [v14 arrayWithObjects:&v40 count:1];
              v35 = 0;
              v17 = [v12 sendData:v13 toPeers:v16 withMode:0 error:&v35];

              v18 = v35;
              if ((v17 & 1) == 0)
              {
                v20 = *re::networkLogObjects(v19);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  log = v20;
                  v22 = [v18 description];
                  v23 = [v22 UTF8String];
                  v24 = [v18 description];
                  v25 = [v24 UTF8String];
                  *buf = 136315394;
                  v37 = v23;
                  v38 = 2080;
                  v39 = v25;
                  _os_log_error_impl(&dword_26168F000, log, OS_LOG_TYPE_ERROR, "MPC: Error sending handshake: %s, reason: %s", buf, 0x16u);
                }
              }

              v21 = 2 * *(v7 + 1784);
              if (v21 >= 8000000000)
              {
                v21 = 8000000000;
              }

              *(v7 + 1784) = v21;
              *(v7 + 1792) = v21 + rep;
              v3 = v30;
            }
          }
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  v26 = [v29 handlesLock];
  [v26 unlock];

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v34);
  v27 = *MEMORY[0x277D85DE8];
}

void re::MultipeerProtocolLayer::wait(re::MultipeerProtocolLayer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented", "!Unreachable code", "wait", 516);
  _os_crash();
  __break(1u);
}

void re::MultipeerProtocolLayer::wakeup(re::MultipeerProtocolLayer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented", "!Unreachable code", "wakeup", 521);
  _os_crash();
  __break(1u);
}

void re::MultipeerProtocolLayer::setListener(re::MultipeerProtocolLayer *this, ProtocolLayerListener *a2)
{
  if (a2)
  {
    *(this + 3) = a2;
    v3 = [[MCSessionHandler alloc] initWithSession:*(this + 4) protocolLayer:this];
    re::ObjCObject::operator=(this + 5, v3);
  }
}

uint64_t re::MultipeerProtocolLayer::localAddresses(re::MultipeerProtocolLayer *this, re::Address *a2, uint64_t a3)
{
  if (a3)
  {
    re::DynamicString::operator=(a2, (this + 48));
  }

  return 1;
}

void anonymous namespace::MCProtocolHandle::~MCProtocolHandle(id *this)
{
  *this = &unk_2873F5790;

  re::ProtocolHandle::~ProtocolHandle(this);
}

{
  *this = &unk_2873F5790;

  re::ProtocolHandle::~ProtocolHandle(this);

  JUMPOUT(0x266708EC0);
}

BOOL anonymous namespace::readSignatureUnsafe(_anonymous_namespace_ *this, char *a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ((a2 - 9) >= 0x40)
  {
    v5 = 64;
  }

  else
  {
    v5 = (a2 - 9);
  }

  MurmurHash3_x64_128(this + 9, v5, 0, v10);
  v6 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ 0x149153915)) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ 0x149153915)) >> 27));
  result = *this == (((v7 ^ (v7 >> 31)) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *anonymous namespace::writeSignatureUnsafe(unint64_t *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = this;
  v10[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 >= 0x40)
    {
      v6 = 64;
    }

    else
    {
      v6 = a4;
    }

    this = MurmurHash3_x64_128(a3, v6, 0, v10);
    v7 = (v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ 0x149153915)) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ 0x149153915)) >> 27));
  *v5 = ((v8 ^ (v8 >> 31)) - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = *MEMORY[0x277D85DE8];
  return this;
}

void re::DynamicArray<re::SharedPtr<anonymous namespace::MCProtocolHandle>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(a1, *(a2 + 16));
    v14 = *(a2 + 32);
    v15 = a1[2];
    v16 = a1[4];
    if (v15)
    {
      v17 = 8 * v15;
      do
      {
        v18 = *v14;
        v19 = *v16;
        if (*v16 != *v14)
        {
          if (v18)
          {
            v20 = (v18 + 8);
            v19 = *v16;
          }

          if (v19)
          {
          }

          *v16 = v18;
        }

        ++v14;
        ++v16;
        v17 -= 8;
      }

      while (v17);
      v16 = a1[4];
      v15 = a1[2];
      v14 = *(a2 + 32);
    }

    if (v15 != v4)
    {
      v21 = &v14[v15];
      v22 = &v16[v15];
      v23 = 8 * v4 - 8 * v15;
      do
      {
        v24 = *v21;
        *v22 = *v21;
        if (v24)
        {
          v25 = (v24 + 8);
        }

        ++v21;
        ++v22;
        v23 -= 8;
      }

      while (v23);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        v9 = *v7;
        v10 = *v6;
        if (*v6 != *v7)
        {
          if (v9)
          {
            v11 = (v9 + 8);
            v10 = *v6;
          }

          if (v10)
          {
          }

          *v6 = v9;
        }

        ++v7;
        ++v6;
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v12 = &v6[v4];
      v13 = 8 * v5 - 8 * v4;
      do
      {
        if (*v12)
        {

          *v12 = 0;
        }

        ++v12;
        v13 -= 8;
      }

      while (v13);
    }
  }

  a1[2] = v4;
}

void re::TransportCommandsQueued::~TransportCommandsQueued(re::TransportCommandsQueued *this)
{
  *this = &unk_2873F57D8;
  for (i = 64; i != -32; i -= 48)
  {
    re::Queue<re::Function<void ()(void)>>::deinit((this + i));
  }
}

{
  *this = &unk_2873F57D8;
  for (i = 64; i != -32; i -= 48)
  {
    re::Queue<re::Function<void ()(void)>>::deinit((this + i));
  }

  JUMPOUT(0x266708EC0);
}

void re::TransportCommandsQueued::async(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 120) & 1) == 0)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push((a1 + 8), a2);
  }
}

void re::network::EventQueue<re::Function<void ()(void)>>::push(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 26);
  re::Queue<re::Function<void ()(void)>>::enqueue(&a1[12 * a1[1]._os_unfair_lock_opaque + 2], a2);

  os_unfair_lock_unlock(a1 + 26);
}

uint64_t (***re::TransportCommandsQueued::update(re::TransportCommandsQueued *this))(void)
{
  os_unfair_lock_lock(this + 28);
  *(this + 1) = vrev64_s32(*(this + 8));
  os_unfair_lock_unlock(this + 28);
  v2 = *(this + 2);
  v3 = (this + 48 * v2 + 16);
  v4 = v3[2];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(v3[5] + 40 * ((i + v3[3]) % v3[1]) + 32);
      (*(*v6 + 16))(v6);
    }

    v2 = *(this + 2);
  }

  return re::Queue<re::Function<void ()(void)>>::clear(this + 6 * v2 + 2);
}

uint64_t (***re::Queue<re::Function<void ()(void)>>::clear(uint64_t (***result)(void)))(void)
{
  v1 = result;
  if (result[2])
  {
    v2 = 0;
    do
    {
      result = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v1[5][5 * ((v1[3] + v2++) % v1[1])]);
    }

    while (v2 < v1[2]);
  }

  v1[2] = 0;
  ++*(v1 + 8);
  return result;
}

void re::TransportCommandsThreadedProtocol::TransportCommandsThreadedProtocol(re::TransportCommandsThreadedProtocol *this, re::ProtocolLayer *a2)
{
  *this = &unk_2873F5810;
  *(this + 1) = a2;
  if (a2)
  {
    v3 = a2 + 8;
  }

  *(this + 2) = 0x100000000;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 17) = 0;
  atomic_store(1u, this + 128);
  operator new();
}

void re::TransportCommandsThreadedProtocol::threadLoop(re::TransportCommandsThreadedProtocol *this)
{
  v2 = this + 24;
  while (1)
  {
    os_unfair_lock_lock(this + 30);
    *(this + 2) = vrev64_s32(*(this + 16));
    os_unfair_lock_unlock(this + 30);
    v3 = *(this + 4);
    v4 = &v2[48 * v3];
    v5 = *(v4 + 2);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = *(*(v4 + 5) + 40 * ((i + *(v4 + 3)) % *(v4 + 1)) + 32);
        (*(*v7 + 16))(v7);
      }

      v3 = *(this + 4);
    }

    re::Queue<re::Function<void ()(void)>>::clear(&v2[48 * v3]);
    v8 = atomic_load(this + 128);
    if ((v8 & 1) == 0)
    {
      break;
    }

    (*(**(this + 1) + 96))(*(this + 1));
  }

  os_unfair_lock_lock(this + 30);
  *(this + 2) = vrev64_s32(*(this + 16));
  os_unfair_lock_unlock(this + 30);
  v9 = &v2[48 * *(this + 4)];
  v10 = *(v9 + 2);
  if (v10)
  {
    for (j = 0; j != v10; ++j)
    {
      v12 = *(*(v9 + 5) + 40 * ((j + *(v9 + 3)) % *(v9 + 1)) + 32);
      (*(*v12 + 16))(v12);
    }

    v13 = &v2[48 * *(this + 4)];

    re::Queue<re::Function<void ()(void)>>::clear(v13);
  }
}

void re::TransportCommandsThreadedProtocol::~TransportCommandsThreadedProtocol(std::thread *this)
{
  this->__t_ = &unk_2873F5810;
  std::thread::~thread(this + 17);
  for (i = 9; i != -3; i -= 6)
  {
    re::Queue<re::Function<void ()(void)>>::deinit(&this[i]);
  }

  t = this[1].__t_;
  if (t)
  {

    this[1].__t_ = 0;
  }
}

{
  re::TransportCommandsThreadedProtocol::~TransportCommandsThreadedProtocol(this);

  JUMPOUT(0x266708EC0);
}

void re::TransportCommandsThreadedProtocol::async(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 128));
  if (v2)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push((a1 + 16), a2);
  }
}