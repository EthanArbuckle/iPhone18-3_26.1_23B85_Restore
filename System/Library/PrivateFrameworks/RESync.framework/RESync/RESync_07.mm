uint64_t *re::FixedArray<unsigned char>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::Transport::dispatchPacketToStream(re::Transport *this, re::Packet *a2, uint64_t a3)
{
  v5 = re::DataArray<re::Connection>::tryGet(this + 120, a3);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  if (!*(v5 + 76))
  {
    return 2;
  }

  v7 = *(a2 + 2);
  v16 = *(a2 + 6);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0xFFFFFFFFLL;
  v15 = v7;
  v13 = 0;
  re::BiasedVLQ::read(&v13, &v15, &v14);
  v13 = v14;
  v8 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 48, &v13);
  if (!v8)
  {
    return 3;
  }

  if (*v8 >= *(this + 6))
  {
    return 3;
  }

  if (v17)
  {
    return 3;
  }

  WeakRetained = objc_loadWeakRetained((*(this + 8) + 8 * *v8));
  if (!WeakRetained)
  {
    return 3;
  }

  v10 = WeakRetained;

  if (HIDWORD(v18))
  {
    v11 = (v18 + 1);
  }

  else
  {
    v11 = v18;
  }

  re::Packet::offsetBy(a2, v11);
  atomic_fetch_add_explicit(v10 + 20, *(a2 + 6), memory_order_release);
  atomic_fetch_add_explicit(v10 + 11, *(a2 + 7), memory_order_release);
  atomic_fetch_add_explicit(v10 + 9, 1uLL, memory_order_release);
  atomic_store(a2, *(v10 + 7));
  *(v10 + 7) = a2;
  result = *(v10 + 12);
  if (result)
  {
    (*(result + 16))(result, *(v10 + 5));
    return 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::tryGet(uint64_t a1, unsigned __int16 a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
  re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 80 * v6 + 8;
  }
}

uint64_t re::Transport::discardPacketFragments(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a1 + 48 * a2 + 432;
  result = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::tryGet(v4, a3);
  if (result)
  {
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a3) ^ ((0xBF58476D1CE4E5B9 * a3) >> 27));
    result = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(v11, v4, a3, v6 ^ (v6 >> 31));
    v7 = v13;
    if (v13 != 0x7FFFFFFF)
    {
      v8 = *(v4 + 16);
      v9 = *(v8 + 80 * v13) & 0x7FFFFFFF;
      if (v14 == 0x7FFFFFFF)
      {
        *(*(v4 + 8) + 4 * v12) = v9;
      }

      else
      {
        *(v8 + 80 * v14) = *(v8 + 80 * v14) & 0x80000000 | v9;
      }

      result = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::free(v8, v7);
      v10 = *(v4 + 40);
      *(*(v4 + 16) + 80 * v7) = *(*(v4 + 16) + 80 * v7) & 0x80000000 | *(v4 + 36);
      --*(v4 + 28);
      *(v4 + 36) = v7;
      *(v4 + 40) = v10 + 1;
    }
  }

  return result;
}

uint64_t (***re::Transport::setDisconnectTimeout(re::Transport *this, int a2))(void)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = re::globalAllocators(this)[2];
  v7[0] = &unk_2873F6380;
  v7[1] = this;
  v8 = a2;
  v9 = v4;
  v10 = v7;
  (*(**(this + 41) + 16))(*(this + 41), v7);
  result = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void re::Transport::removeStream(re::Transport *this, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v30[0] = a3;
  v4 = re::DataArray<re::Connection>::tryGet(this + 120, a2);
  if (v4)
  {
    v5 = v4;
    v6 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v4 + 48, v30);
    if (v6)
    {
      v8 = v6;
      v9 = *(this + 6);
      if (*v6 >= v9)
      {
        re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "*index < m_streams.size()", "removeStream", 1921);
        _os_crash();
        __break(1u);
      }

      else
      {
        v10 = *(*(this + 8) + 8 * v9 - 8);
        if (v10)
        {
          v11 = v10 - 8;
        }

        else
        {
          v11 = 0;
        }

        v12 = re::DataArray<re::Connection>::tryGet(this + 120, *(v11 + 40));
        if (v12)
        {
          v13 = v12;
          v14 = *(*(this + 8) + 8 * *(this + 6) - 8);
          if (v14)
          {
            v15 = v14 - 8;
          }

          else
          {
            v15 = 0;
          }

          *v31 = *(v15 + 48);
          memset(to, 0, 24);
          v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v31 ^ (*v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v31 ^ (*v31 >> 30))) >> 27));
          re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12 + 48, v31, v16 ^ (v16 >> 31), to);
          v17 = HIDWORD(to[1]);
          if (HIDWORD(to[1]) == 0x7FFFFFFF)
          {
            v18 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v13 + 48, to[1], to[0]);
            *(v18 + 8) = *v31;
            *(v18 + 16) = *v8;
            ++*(v13 + 88);
          }

          else
          {
            ++*(v13 + 88);
            *(*(v13 + 64) + 32 * v17 + 16) = *v8;
          }
        }

        re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v5 + 48, v30);
        v5 = *(this + 6);
        v8 = *v8;
        if (v5 > v8)
        {
          v25 = *(this + 8);
          v26 = (v25 + 8 * v5 - 8);
          v27 = (v25 + 8 * v8);
          to[0] = 0;
          objc_moveWeak(to, v26);
          re::ArcWeakPtr<re::TransportStream>::operator=(v26, v27);
          re::ArcWeakPtr<re::TransportStream>::operator=(v27, to);
          objc_destroyWeak(to);
          v28 = *(this + 8) + 8 * *(this + 6);
          objc_destroyWeak((v28 - 8));
          *(v28 - 8) = 0;
          --*(this + 6);
          ++*(this + 14);
          goto LABEL_21;
        }
      }

      v30[1] = 0;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      memset(to, 0, sizeof(to));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      v32 = 1024;
      v33 = 789;
      v34 = 2048;
      v35 = v8;
      v36 = 2048;
      v37 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v23 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      if (*(v5 + 16))
      {
        v24 = *(v5 + 24);
      }

      else
      {
        v24 = (v5 + 17);
      }

      LODWORD(to[0]) = 136315394;
      *(to + 4) = v24;
      WORD2(to[1]) = 2048;
      *(&to[1] + 6) = v30[0];
      v20 = "Connection %s does not have stream %llu.";
      v21 = v23;
      v22 = 22;
      goto LABEL_24;
    }
  }

  else
  {
    v19 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(to[0]) = 0;
      v20 = "Failed to remove unicast stream. Invalid connection handle.";
      v21 = v19;
      v22 = 2;
LABEL_24:
      _os_log_error_impl(&dword_26168F000, v21, OS_LOG_TYPE_ERROR, v20, to, v22);
    }
  }

LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
}

void re::DataArray<re::Connection>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::Connection>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v5 + 48));
    v7 = *(v6 + 40);
    if (v7)
    {

      *(v6 + 40) = 0;
    }

    re::DynamicString::deinit((v6 + 8));
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  v8 = *MEMORY[0x277D85DE8];
}

char *re::Transport::createMultiplexedPacket(re::PacketPool **this, uint64_t a2, int a3)
{
  v4 = re::PacketPool::allocate(this[48], (a3 + 19));
  re::Packet::offsetBy(v4, 3);
  v5 = *(v4 + 1);
  *(v5 + 2) = 0;
  *v5 = 0;
  v6 = *(v4 + 2);
  v7 = *(v4 + 7);
  v11[0] = &unk_2873F59D0;
  v11[1] = v6;
  v12 = v7;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = 0;
  re::BiasedVLQ::write(&v10, v11, a2);
  if (HIDWORD(v14))
  {
    v8 = (v14 + 1);
  }

  else
  {
    v8 = v14;
  }

  re::Packet::offsetBy(v4, v8);
  return v4;
}

uint64_t re::Packet::offsetTo(uint64_t this, uint64_t a2)
{
  v4 = *(this + 28);
  if (v4 < a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "capacity() >= offset", "offsetTo", 125, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(this + 8);
    v6 = *(this + 16) - v5 - a2;
    *(this + 16) = v5 + a2;
    *(this + 24) += v6;
    *(this + 28) = v6 + v4;
  }

  return this;
}

BOOL re::Transport::registerStream(re::Transport *this, re::TransportStream *a2, unint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = re::DataArray<re::Connection>::tryGet(this + 120, a4);
  if (v6)
  {
    v7 = v6;
    v8 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 48, &v29);
    if (v8)
    {
      v9 = *re::networkLogObjects(v8);
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v29;
        v11 = "Failed to register unicast stream. Stream %llu already exists.";
        v12 = v9;
        v13 = 12;
LABEL_7:
        _os_log_error_impl(&dword_26168F000, v12, OS_LOG_TYPE_ERROR, v11, &buf, v13);
        result = 0;
      }
    }

    else
    {
      v15 = *(this + 6);
      if (a2)
      {
        v16 = a2 + 8;
      }

      else
      {
        v16 = 0;
      }

      inited = objc_initWeak(&buf, v16);
      v18 = *(this + 5);
      v19 = *(this + 6);
      if (v19 >= v18)
      {
        v20 = v19 + 1;
        if (v18 < v19 + 1)
        {
          if (*(this + 4))
          {
            v21 = 2 * v18;
            v22 = v18 == 0;
            v23 = 8;
            if (!v22)
            {
              v23 = v21;
            }

            if (v23 <= v20)
            {
              v24 = v20;
            }

            else
            {
              v24 = v23;
            }

            re::DynamicArray<re::ArcWeakPtr<re::TransportStream>>::setCapacity(this + 4, v24);
          }

          else
          {
            re::DynamicArray<re::ArcWeakPtr<re::TransportStream>>::setCapacity(this + 4, v20);
            ++*(this + 14);
          }
        }

        v19 = *(this + 6);
      }

      v25 = (*(this + 8) + 8 * v19);
      *v25 = 0;
      objc_moveWeak(v25, &buf);
      ++*(this + 6);
      ++*(this + 14);
      objc_destroyWeak(&buf);
      buf = 0uLL;
      v31 = 0;
      v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v7 + 48, &v29, v26 ^ (v26 >> 31), &buf);
      if (HIDWORD(buf) == 0x7FFFFFFF)
      {
        v27 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v7 + 48, DWORD2(buf), buf);
        *(v27 + 8) = v29;
        *(v27 + 16) = v15;
        ++*(v7 + 88);
      }

      result = 1;
    }
  }

  else
  {
    v14 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf) = 0;
      v11 = "Failed to register unicast stream. Invalid connection handle.";
      v12 = v14;
      v13 = 2;
      goto LABEL_7;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void *re::internal::Callable<re::Transport::deinit(void)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5DA8;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::deinit(void)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5DA8;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void *re::internal::Callable<re::Transport::deinit(void)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F5DA8;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Transport::deinit(void)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5DA8;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

void *re::internal::Callable<re::Transport::deinit(void)::$_1,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5E00;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::deinit(void)::$_1,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5E00;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Transport::deinit(void)::$_1,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  (*(**(v2 + 72) + 56))(*(v2 + 72), *(a1 + 16), 1);
  v3 = *(a1 + 16);

  re::Transport::cleanupPendingQueues(v2, v3);
}

void *re::internal::Callable<re::Transport::deinit(void)::$_1,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F5E00;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Transport::deinit(void)::$_1,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5E00;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

uint64_t re::internal::Callable<re::Transport::deinit(void)::$_2,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  (*(**(v1 + 72) + 40))(*(v1 + 72));
  v2 = *(**(v1 + 72) + 112);

  return v2();
}

void *re::internal::Callable<re::Transport::deinit(void)::$_2,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F5E58;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Transport::deinit(void)::$_2,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F5E58;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Transport::flushNetworkEvents(void)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F5EB0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Transport::flushNetworkEvents(void)::$_0,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F5EB0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Transport::flushOutgoingData(void)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(**(v1 + 72) + 72))(*(v1 + 72)))
  {
    os_unfair_lock_lock((v1 + 184));
    v2 = *(v1 + 208);
    if (v2)
    {
      v3 = *(v1 + 192);
      v4 = *(v1 + 224);
      *(v1 + 192) = *(v1 + 232);
      v5 = *(v1 + 200);
      *(v1 + 200) = *(v1 + 240);
      *(v1 + 240) = v5;
      *(v1 + 248) = v2;
      *(v1 + 224) = *(v1 + 264);
      *(v1 + 232) = v3;
      *(v1 + 264) = v4;
      ++*(v1 + 256);
      ++*(v1 + 216);
      os_unfair_lock_unlock((v1 + 184));
      v6 = *(v1 + 248);
      if (v6)
      {
        v7 = *(v1 + 264);
        v8 = &v7[v6];
        do
        {
          v9 = *v7 + 1312;
          *&v19 = *v7 + 912;
          *(&v19 + 1) = v9;
          LOBYTE(v20) = 0;
          (*(**(v1 + 72) + 80))(*(v1 + 72));
          v11 = *(&v19 + 1);
          v10 = v19;
          while (v10 != v11)
          {
            if (atomic_load(*(v10 + 8)))
            {
              os_unfair_lock_lock((v1 + 184));
              v13 = *(v1 + 208);
              if (v13)
              {
                v14 = 8 * v13;
                v15 = *(v1 + 224);
                while (*v15 != *v7)
                {
                  ++v15;
                  v14 -= 8;
                  if (!v14)
                  {
                    goto LABEL_16;
                  }
                }
              }

              else
              {
                v15 = *(v1 + 224);
              }

              if (v15 == (*(v1 + 224) + 8 * v13))
              {
LABEL_16:
                re::DynamicArray<re::SharedPtr<re::ProtocolHandle>>::add((v1 + 192), v7);
              }

              os_unfair_lock_unlock((v1 + 184));
              break;
            }

            v11 = *(&v19 + 1);
            v10 = v19 + 40;
            *&v19 = v19 + 40;
            LOBYTE(v20) = v20 + 1;
          }

          ++v7;
        }

        while (v7 != v8);
        v16 = *(v1 + 248);
        v17 = *(v1 + 264);
        *(v1 + 248) = 0;
        if (v16)
        {
          v18 = 8 * v16;
          do
          {
            if (*v17)
            {

              *v17 = 0;
            }

            v17 += 8;
            v18 -= 8;
          }

          while (v18);
        }
      }

      ++*(v1 + 256);
    }

    else
    {
      os_unfair_lock_unlock((v1 + 184));
    }
  }

  (*(**(v1 + 72) + 88))(*(v1 + 72));
  v19 = 0uLL;
  v20 = 0;
  os_unfair_lock_lock((v1 + 368));
  if ((*(**(v1 + 72) + 128))(*(v1 + 72), &v19))
  {
    if ((*(v1 + 340) & 1) == 0)
    {
      *(v1 + 340) = 1;
    }

    *(v1 + 360) = v20;
    *(v1 + 344) = v19;
  }

  else if (*(v1 + 340))
  {
    *(v1 + 340) = 0;
  }

  os_unfair_lock_unlock((v1 + 368));
}

void *re::internal::Callable<re::Transport::flushOutgoingData(void)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F5F08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Transport::flushOutgoingData(void)::$_0,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F5F08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Transport::connect(re::Address const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5F60;
  re::DynamicString::deinit((a1 + 2));
  return a1;
}

void re::internal::Callable<re::Transport::connect(re::Address const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5F60;
  re::DynamicString::deinit((a1 + 2));

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Transport::connect(re::Address const&)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = (*(**(v2 + 72) + 48))(&v12);
  v4 = v12;
  if (v12)
  {
    v5 = *(a1 + 48);
    os_unfair_lock_lock(v12 + 441);
    *&v4[6]._os_unfair_lock_opaque = v5;
    os_unfair_lock_unlock(v4 + 441);
  }

  else
  {
    v6 = *re::networkLogObjects(v3);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (*(a1 + 24))
      {
        v11 = *(a1 + 32);
      }

      else
      {
        v11 = a1 + 25;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "Failed to connect to %s", &buf, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = re::globalAllocators(v7)[2];
    v14 = v8;
    v15 = v9;
    *&buf = &unk_2873F5FB8;
    *(&buf + 1) = v2;
    p_buf = &buf;
    (*(**(v2 + 320) + 16))(*(v2 + 320), &buf);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(&buf);
  }

  if (v12)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

void *re::internal::Callable<re::Transport::connect(re::Address const&)::$_0,void ()(void)>::cloneInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_2873F5F60;
  a2[1] = v4;
  re::DynamicString::DynamicString((a2 + 2), (a1 + 2));
  a2[6] = a1[6];
  return a2;
}

void *re::internal::Callable<re::Transport::connect(re::Address const&)::$_0,void ()(void)>::moveInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_2873F5F60;
  a2[1] = v4;
  re::DynamicString::DynamicString((a2 + 2), (a1 + 2));
  a2[6] = a1[6];
  return a2;
}

_anonymous_namespace_ *re::internal::Callable<re::Transport::connect(re::Address const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::operator()(_anonymous_namespace_ *result)
{
  v1 = *(result + 1);
  v2 = atomic_load(v1 + 336);
  if (v2)
  {
    v3 = result;
    result = re::DataArray<re::Connection>::tryGet((v1 + 120), *(result + 2));
    if (result)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      re::DynamicString::setCapacity(&v5, 0);
      v10 = 0;
      v4 = 3;
      v9 = 2;
      re::Transport::connectionStateEvent(v1, *(v3 + 2), &v4);
      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::Transport::connect(re::Address const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5FB8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::connect(re::Address const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5FB8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6010;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6010;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

uint64_t re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2873F6010;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  *(a2 + 24) = *(a1 + 24);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6010;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a2 + 24) = *(a1 + 24);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_1,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = atomic_load((v1 + 336));
  if (v2)
  {
    v3 = *(v1 + 608);
    if (v3)
    {
      return (*(*v3 + 8))(v3, *(result + 16));
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_1,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6068;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_1,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6068;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_2,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = atomic_load((v1 + 336));
  if (v2)
  {
    (*(**(v1 + 608) + 8))(*(v1 + 608), *(a1 + 16));
    v4 = *(a1 + 16);

    re::Transport::destroyConnection(v1, v4);
  }
}

uint64_t re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_2,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F60C0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::connectionStateActive(unsigned long long,re::ConnectionEvent const&)::$_2,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F60C0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::Transport::connectionStateClosing(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6118;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::connectionStateClosing(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6118;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void *re::internal::Callable<re::Transport::connectionStateClosing(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F6118;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Transport::connectionStateClosing(unsigned long long,re::ConnectionEvent const&)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6118;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

void *re::internal::Callable<re::Transport::onConnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6170;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicString::deinit((a1 + 2));
  return a1;
}

void re::internal::Callable<re::Transport::onConnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6170;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicString::deinit((a1 + 2));

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Transport::onConnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = atomic_load(v1 + 336);
  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::tryGet((v1 + 272), (a1 + 16));
  if (v4)
  {
    Connection = *v4;
    v6 = re::DataArray<re::Connection>::tryGet((v1 + 120), *v4);
    if (!v6)
    {
      v7 = *re::networkLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        if (*(a1 + 24))
        {
          v8 = *(a1 + 32);
        }

        else
        {
          v8 = a1 + 25;
        }

        v12 = 136315138;
        *v13 = v8;
        _os_log_fault_impl(&dword_26168F000, v7, OS_LOG_TYPE_FAULT, "Connection '%s' found in m_addrToConnections but missing from m_connections!", &v12, 0xCu);
      }

      goto LABEL_11;
    }
  }

  else
  {
    Connection = re::Transport::createConnection(v1, (a1 + 16));
    v6 = re::DataArray<re::Connection>::get((v1 + 120), Connection);
  }

  re::SharedPtr<re::SyncObject>::reset((v6 + 40), *(a1 + 48));
  v9 = *(a1 + 48);
  os_unfair_lock_lock((v9 + 1764));
  *(v9 + 24) = Connection;
  os_unfair_lock_unlock((v9 + 1764));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13[4], 0);
  v17 = 0;
  v12 = 0;
  re::DynamicString::operator=(&v13[4], (a1 + 16));
  re::Transport::connectionStateEvent(v1, Connection, &v12);
  if (*&v13[4] && (v14 & 1) != 0)
  {
    (*(**&v13[4] + 40))(*&v13[4]);
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

void *re::internal::Callable<re::Transport::onConnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::cloneInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_2873F6170;
  a2[1] = v4;
  re::DynamicString::DynamicString((a2 + 2), (a1 + 2));
  v5 = a1[6];
  a2[6] = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  return a2;
}

void *re::internal::Callable<re::Transport::onConnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::moveInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_2873F6170;
  a2[1] = v4;
  re::DynamicString::DynamicString((a2 + 2), (a1 + 2));
  a2[6] = a1[6];
  a1[6] = 0;
  return a2;
}

void *re::internal::Callable<re::Transport::onDisconnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F61C8;
  re::DynamicString::deinit((a1 + 3));
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::onDisconnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F61C8;
  re::DynamicString::deinit((a1 + 3));
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Transport::onDisconnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = atomic_load(v1 + 336);
  if (v2)
  {
    v4 = *(*(a1 + 16) + 24);
    v5 = re::DataArray<re::Connection>::tryGet((v1 + 120), v4);
    if (v5)
    {
      re::SharedPtr<re::SyncObject>::reset((v5 + 40), *(a1 + 16));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      re::DynamicString::setCapacity(&v11[4], 0);
      v15 = 0;
      v10 = 2;
      re::Transport::connectionStateEvent(v1, v4, &v10);
      if (*&v11[4] && (v12 & 1) != 0)
      {
        (*(**&v11[4] + 40))();
      }
    }

    else
    {
      v7 = *re::networkLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 32))
        {
          v8 = *(a1 + 40);
        }

        else
        {
          v8 = a1 + 33;
        }

        v10 = 136315138;
        *v11 = v8;
        _os_log_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEFAULT, "Connection for address '%s' is already destroyed.Check logs for prior connection errors.", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void *re::internal::Callable<re::Transport::onDisconnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::cloneInto(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2873F61C8;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  re::DynamicString::DynamicString((a2 + 3), (a1 + 3));
  return a2;
}

uint64_t re::internal::Callable<re::Transport::onDisconnected(re::ProtocolLayer *,re::ProtocolHandle *,re::Address const&)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F61C8;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  re::DynamicString::DynamicString((a2 + 24), (a1 + 24));
  return a2;
}

void *re::internal::Callable<re::Transport::onError(re::ProtocolLayer *,re::ProtocolHandle *,re::TransportError)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6220;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::onError(re::ProtocolLayer *,re::ProtocolHandle *,re::TransportError)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6220;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Transport::onError(re::ProtocolLayer *,re::ProtocolHandle *,re::TransportError)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = atomic_load(v1 + 336);
  if (v2)
  {
    v4 = *(*(a1 + 16) + 24);
    v5 = re::DataArray<re::Connection>::tryGet((v1 + 120), v4);
    if (v5)
    {
      re::SharedPtr<re::SyncObject>::reset((v5 + 40), *(a1 + 16));
      v10 = 0;
      v11 = 0;
      v12 = 0;
      re::DynamicString::setCapacity(&v9, 0);
      v14 = 0;
      v8 = 3;
      v13 = *(a1 + 24);
      re::Transport::connectionStateEvent(v1, v4, &v8);
      if (v9)
      {
        if (v10)
        {
          (*(*v9 + 40))();
        }
      }
    }

    else
    {
      v7 = *re::networkLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v8) = 0;
        _os_log_debug_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEBUG, "Connection was destroyed before error event.", &v8, 2u);
      }
    }
  }
}

uint64_t re::internal::Callable<re::Transport::onError(re::ProtocolLayer *,re::ProtocolHandle *,re::TransportError)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2873F6220;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  *(a2 + 24) = *(a1 + 24);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::onError(re::ProtocolLayer *,re::ProtocolHandle *,re::TransportError)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6220;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a2 + 24) = *(a1 + 24);
  return a2;
}

void *re::internal::Callable<re::Transport::onUnresponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6278;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::onUnresponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6278;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

uint64_t re::internal::Callable<re::Transport::onUnresponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = atomic_load((v1 + 336));
  if (v2)
  {
    result = re::DataArray<re::Connection>::tryGet(v1 + 120, *(*(result + 16) + 24));
    if (result)
    {
      if ((*(result + 120) & 1) == 0)
      {
        *(result + 120) = 1;
        v3 = *(**(v1 + 608) + 32);

        return v3();
      }
    }
  }

  return result;
}

void *re::internal::Callable<re::Transport::onUnresponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F6278;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Transport::onUnresponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6278;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

void *re::internal::Callable<re::Transport::onResponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F62D0;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::onResponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F62D0;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

uint64_t re::internal::Callable<re::Transport::onResponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = atomic_load((v1 + 336));
  if (v2)
  {
    result = re::DataArray<re::Connection>::tryGet(v1 + 120, *(*(result + 16) + 24));
    if (result)
    {
      if (*(result + 120) == 1)
      {
        *(result + 120) = 0;
        *(result + 128) = 0x8000000000000000;
        v3 = *(**(v1 + 608) + 40);

        return v3();
      }
    }
  }

  return result;
}

void *re::internal::Callable<re::Transport::onResponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F62D0;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Transport::onResponsive(re::ProtocolLayer *,re::ProtocolHandle *)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F62D0;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

void *re::internal::Callable<re::Transport::onReceiveAsync(re::ProtocolLayer *,re::ProtocolHandle *,re::ChannelId,void const*,unsigned int)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6328;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::onReceiveAsync(re::ProtocolLayer *,re::ProtocolHandle *,re::ChannelId,void const*,unsigned int)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F6328;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Transport::onReceiveAsync(re::ProtocolLayer *,re::ProtocolHandle *,re::ChannelId,void const*,unsigned int)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = atomic_load((v2 + 336));
  if ((v3 & 1) != 0 && re::DataArray<re::Connection>::tryGet(v2 + 120, *(*(a1 + 24) + 24)))
  {
    (*(*v2 + 64))(v2, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(*(a1 + 40) + 16), *(*(a1 + 40) + 24));
  }

  v4 = *(a1 + 40);
  v5 = *(v2 + 384);

  re::PacketPool::free(v5, v4);
}

uint64_t re::internal::Callable<re::Transport::onReceiveAsync(re::ProtocolLayer *,re::ProtocolHandle *,re::ChannelId,void const*,unsigned int)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6328;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  *(a2 + 32) = *(a1 + 32);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::onReceiveAsync(re::ProtocolLayer *,re::ProtocolHandle *,re::ChannelId,void const*,unsigned int)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6328;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a2 + 32) = *(a1 + 32);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::setDisconnectTimeout(unsigned int)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6380;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Transport::setDisconnectTimeout(unsigned int)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F6380;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::Transport::destroyConnection(unsigned long long)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F63D8;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Transport::destroyConnection(unsigned long long)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F63D8;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Transport::destroyConnection(unsigned long long)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  (*(**(v2 + 72) + 56))(*(v2 + 72), *(a1 + 16), 1);
  v3 = *(a1 + 16);

  re::Transport::cleanupPendingQueues(v2, v3);
}

void *re::internal::Callable<re::Transport::destroyConnection(unsigned long long)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F63D8;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Transport::destroyConnection(unsigned long long)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F63D8;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

_anonymous_namespace_ *re::DataArray<re::Connection>::allocBlock(void *a1)
{
  v3 = 136 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  if (*(a2 + 40))
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(a1);
    }
  }

  else
  {
    *(a1 + 8) = -1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::findEntry<re::Address>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(a2, v10 + 56 * v8 + 8);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(a2, v10 + 56 * v11 + 8);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(uint64_t result, uint64_t a2, unsigned __int16 a3, unint64_t a4)
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
  if (*(v7 + 80 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 80 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 80 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 40);
            do
            {
              if ((*(v18 - 5) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(a1, v18[4] % *(a1 + 24));
                *(v19 + 4) = *(v18 - 18);
                *(v19 + 8) = 0;
                *(v19 + 16) = 0;
                *(v19 + 24) = 0;
                v20 = *(v18 - 3);
                *(v19 + 8) = *(v18 - 4);
                *(v19 + 16) = v20;
                *(v18 - 4) = 0;
                *(v18 - 3) = 0;
                v21 = *(v19 + 24);
                *(v19 + 24) = *(v18 - 2);
                *(v18 - 2) = v21;
                *(v19 + 40) = 0;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0;
                v22 = *v18;
                *(v19 + 32) = *(v18 - 1);
                *(v19 + 40) = v22;
                *(v18 - 1) = 0;
                *v18 = 0;
                v23 = *(v19 + 48);
                *(v19 + 48) = v18[1];
                v18[1] = v23;
                *(v19 + 56) = *(v18 + 1);
              }

              ++v17;
              v18 += 10;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 80 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 80 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 80 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 72) = a3;
  ++*(a1 + 28);
  return v24 + 80 * v5;
}

void re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 80 * v10, 16);
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

uint64_t re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = result + 80 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit((v2 + 32));

    return re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit((v2 + 8));
  }

  return result;
}

void re::FixedArray<unsigned char>::init<>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    v5 = (*(*a2 + 32))(a2, a3, 1);
    a1[2] = v5;
    if (v5)
    {
      v7 = v5;
      v8 = a3 - 1;
      if (v8)
      {
        bzero(v5, v8);
        v7 += v8;
      }

      *v7 = 0;
    }

    else
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v25, v9, v8);
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
            v17 = (v13 + 48);
            do
            {
              if ((*(v17 - 6) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::allocEntry(a1, *v17 % *(a1 + 24));
                re::DynamicString::DynamicString((v18 + 8), (v17 - 5));
                *(v18 + 40) = *(v17 - 1);
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::deinit(v25);
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
    v20 = *(v19 + 56 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 56 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 56 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 48) = a3;
  ++*(a1 + 28);
  return v19 + 56 * v5;
}

void *re::DynamicArray<re::ArcWeakPtr<re::TransportStream>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ArcWeakPtr<re::TransportStream>>::setCapacity(v5, a2);
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
        v12 = v7;
        do
        {
          *v12++ = 0;
          objc_moveWeak(v11, v8);
          objc_destroyWeak(v8);
          *v8++ = 0;
          v11 = v12;
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

id *re::ArcWeakPtr<re::TransportStream>::operator=(id *location, id *a2)
{
  if (a2 != location)
  {
    objc_destroyWeak(location);
    *location = 0;
    objc_moveWeak(location, a2);
  }

  return location;
}

uint64_t re::BitReader::seekTo(uint64_t result, unint64_t a2)
{
  if ((*(result + 12) & 1) == 0)
  {
    if (HIDWORD(a2))
    {
      v2 = a2 + 1;
    }

    else
    {
      v2 = a2;
    }

    v3 = *(result + 8);
    if (v2 <= v3)
    {
      return re::BitReader::applyMarker(result, a2);
    }

    else
    {
      *(result + 16) = v3;
      *(result + 20) = 0;
      *(result + 12) = 1;
    }
  }

  return result;
}

uint64_t re::BitReader::applyMarker(uint64_t result, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    *(result + 16) = a2 + 1;
    *(result + 20) = 8 - HIDWORD(a2);
    *(result + 24) = 0;
    if (HIDWORD(a2) != 8)
    {
      *(result + 24) = *(*result + a2) >> SBYTE4(a2);
    }
  }

  else
  {
    *(result + 16) = a2;
    *(result + 20) = 0;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t *re::BitReader::readUInt32Bits(uint64_t *this, unsigned int a2, unsigned int *a3)
{
  *a3 = 0;
  if ((*(this + 12) & 1) == 0)
  {
    v3 = *(this + 2);
    v5 = *(this + 4);
    v4 = *(this + 5);
    if (v4 + 8 * (v3 - v5) >= a2)
    {
      if (v4 >= a2)
      {
        v8 = this[3];
      }

      else
      {
        v7 = *this;
        v8 = this[3];
        do
        {
          *(this + 4) = v5 + 1;
          v8 |= *(v7 + v5) << v4;
          this[3] = v8;
          v4 += 8;
          *(this + 5) = v4;
          ++v5;
        }

        while (v4 < a2);
      }

      *a3 = v8 & (0xFFFFFFFFFFFFFFFFLL >> -a2);
      this[3] = v8 >> a2;
      v6 = *(this + 5) - a2;
    }

    else
    {
      v6 = 0;
      *(this + 12) = 1;
      *(this + 4) = v3;
    }

    *(this + 5) = v6;
  }

  return this;
}

uint64_t *re::BitReader::readUInt64Bits(re::BitReader *this, unsigned int a2, unint64_t *a3)
{
  if (a2 < 0x21)
  {
    v8 = 0;
    result = re::BitReader::readUInt32Bits(this, a2, &v8);
    v7 = v8;
  }

  else
  {
    *v9 = 0;
    re::BitReader::readUInt32Bits(this, 0x20u, &v9[1]);
    result = re::BitReader::readUInt32Bits(this, a2 - 32, v9);
    v7 = v9[1] | (v9[0] << 32);
  }

  *a3 = v7;
  return result;
}

uint64_t *re::BitReader::readUInt64(re::BitReader *this, unint64_t *a2)
{
  *v5 = 0;
  re::BitReader::readUInt32Bits(this, 0x20u, &v5[1]);
  result = re::BitReader::readUInt32Bits(this, 0x20u, v5);
  *a2 = v5[1] | (v5[0] << 32);
  return result;
}

uint64_t RESyncableGetTypeId(uint64_t result)
{
  if (result)
  {
    return *(*(*(result + 88) + 16) + 32);
  }

  return result;
}

uint64_t RESyncableGetTypeInfo(uint64_t result)
{
  if (result)
  {
    return *(*(result + 88) + 16);
  }

  return result;
}

uint64_t RESyncableReadState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (a1 && a3)
  {
    v10 = *(*(a1 + 88) + 16);
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *(v11 + 8);
      if (*(v11 + 28))
      {
        LODWORD(v11) = *(v11 + 24) + 1;
      }

      else
      {
        LODWORD(v11) = *(v11 + 24);
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = v6;
    v19 = v7;
    v13 = v12;
    v14 = v11;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    return (*(*(v10 + 80) + 16))(*(v10 + 80), &v13, a2, a4, a5, a6);
  }

  return result;
}

uint64_t RESyncableIsDestroyed(uint64_t result)
{
  if (result)
  {
    return (*(result + 128) >> 2) & 1;
  }

  return result;
}

uint64_t RESyncableGetGuid(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t RESyncableGetParent(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t RESyncableGetChildCount(uint64_t result)
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

uint64_t RESyncableGetChild(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 200) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(result + 216) + 8 * a2);
    }
  }

  return result;
}

void *RESyncableSetUserData(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2 && a3)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 0x40000000;
      v4[2] = __RESyncableSetUserData_block_invoke;
      v4[3] = &unk_279AE3F10;
      v4[4] = a3;
      return re::SyncObject::setUserData(result, a2, v4);
    }

    else
    {

      return re::SyncObject::setUserData(result, a2, 0);
    }
  }

  return result;
}

uint64_t RESyncableGetUserData(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t RESyncableIsAuthoritative(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 80);
    if (v1)
    {
      do
      {
        v2 = a1;
        a1 = v1;
        if (*(*(*(v2 + 88) + 16) + 73))
        {
          break;
        }

        v1 = *(v1 + 80);
        v2 = a1;
      }

      while (v1);
    }

    else
    {
      v2 = a1;
    }

    v3 = *(v2 + 170);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL RESyncableSetLocked(uint64_t a1, char a2)
{
  if (a1 && !*(a1 + 160) && !*(a1 + 136))
  {
    *(a1 + 152) = a2;
  }

  return a1 != 0;
}

uint64_t RESyncableIsLocked(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 80);
    if (v1)
    {
      do
      {
        v2 = a1;
        a1 = v1;
        if (*(*(*(v2 + 88) + 16) + 73))
        {
          break;
        }

        v1 = *(v1 + 80);
        v2 = a1;
      }

      while (v1);
    }

    else
    {
      v2 = a1;
    }

    v3 = *(v2 + 152);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL RESyncableSetMigrateWhenAbandoned(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 171) = a2;
  }

  return a1 != 0;
}

uint64_t RESyncableIsMigrateWhenAbandoned(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 80);
    if (v1)
    {
      do
      {
        v2 = a1;
        a1 = v1;
        if (*(*(*(v2 + 88) + 16) + 73))
        {
          break;
        }

        v1 = *(v1 + 80);
        v2 = a1;
      }

      while (v1);
    }

    else
    {
      v2 = a1;
    }

    v3 = *(v2 + 171);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t RESyncableGetOwnerPeerID(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 80);
    if (v1)
    {
      do
      {
        v2 = result;
        result = v1;
        if (*(*(*(v2 + 88) + 16) + 73))
        {
          break;
        }

        v1 = *(v1 + 80);
        v2 = result;
      }

      while (v1);
    }

    else
    {
      v2 = result;
    }

    return *(v2 + 160);
  }

  return result;
}

re::SyncObject *RESyncableGetFromPeerID(re::SyncObject *result)
{
  if (result)
  {
    return re::SyncObject::fromPeerID(result);
  }

  return result;
}

uint64_t RESyncableIsOpaque(uint64_t a1)
{
  if (a1)
  {
    v1 = *(*(*(a1 + 88) + 16) + 72);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

re::SyncObject *RESyncableHandoffOwnership(re::SyncObject *this, uint64_t a2)
{
  if (this)
  {
    return re::SyncObject::handOff(this, a2);
  }

  return this;
}

uint64_t RESyncableHasOwnership(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 80);
    if (v1)
    {
      do
      {
        v2 = result;
        result = v1;
        if (*(*(*(v2 + 88) + 16) + 73))
        {
          break;
        }

        v1 = *(v1 + 80);
        v2 = result;
      }

      while (v1);
    }

    else
    {
      v2 = result;
    }

    return *(v2 + 160) == 0;
  }

  return result;
}

uint64_t RESyncableSetDirectView(uint64_t result, re::SyncView *a2)
{
  if (result)
  {
    if (*(*(*(result + 88) + 16) + 74) == 1)
    {
      re::SyncObject::setViewDirectly(result, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RESyncableGetDirectView(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

void *RESyncableGetHierarchicalView(void *result)
{
  if (result)
  {
    while ((*(*(result[11] + 16) + 74) & 1) == 0)
    {
      result = result[10];
      if (!result)
      {
        return result;
      }
    }

    return result[12];
  }

  return result;
}

uint64_t RESyncReadContextGetSyncable(uint64_t **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = **a1;
  if (v1)
  {
    v2 = (v1 + 8);
  }

  return v1;
}

uint64_t RESyncableSetHoldID(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t RESyncableGetHoldID(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

BOOL re::MultipeerDiscoveryView::init(id *this, ObjCObject a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *a2.var0;
  if (*a2.var0)
  {
    v5 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 3, 0);
    ++*(this + 12);
    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 14, 0);
    ++*(this + 34);
    v6 = *a2.var0;
    v7 = [v6 myPeerID];
    v8 = re::globalAllocators(v7);
    v9 = (*(*v8[2] + 32))(v8[2], 72, 8);
    MCIdentity::MCIdentity(v9, v7, 1);
    *buf = v10;
    re::DynamicArray<re::SharedPtr<re::DiscoveryIdentity>>::add(this + 26, buf);
    if (*buf)
    {

      *buf = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v6 connectedPeers];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          *buf = *(*(&v22 + 1) + 8 * i);
          v19 = 0;
          re::make::shared::object<MCIdentity,MCPeerID * const {__strong}&,BOOL>(&v20, buf, &v19);
          v21 = v20;
          re::DynamicArray<re::SharedPtr<re::DiscoveryIdentity>>::add(this + 26, &v21);
          if (v21)
          {
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    re::ObjCObject::operator=(this + 25, a2.var0);
  }

  else
  {
    v16 = *re::networkLogObjects(this);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, "Invalid MCSession.", buf, 2u);
    }
  }

  result = v2 != 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *re::DynamicArray<re::SharedPtr<re::DiscoveryIdentity>>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::SharedPtr<re::SyncObject>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  *a2 = 0;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void *re::MultipeerDiscoveryView::identityAtIndex@<X0>(void *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  if (this[28] <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this[30] + 8 * a2);
  *a3 = v3;
  if (v3)
  {
    v4 = *MEMORY[0x277D85DE8];

    return (v3 + 8);
  }

  else
  {
    v5 = *MEMORY[0x277D85DE8];
  }

  return this;
}

id re::MultipeerDiscoveryView::multipeerIdAtIndex@<X0>(re::MultipeerDiscoveryView *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(this + 28) <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(*(this + 30) + 8 * a2) + 24);
  *a3 = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void re::MultipeerDiscoveryView::requestIdentity(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 200);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 connectedPeers];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v24 = *(*(&v20 + 1) + 8 * i);
        [REMultipeerHelper makeAddressFromPeerID:?];
        if (re::DynamicString::operator==(a2, &v18))
        {
          v16 = 0;
          re::make::shared::object<MCIdentity,MCPeerID * const {__strong}&,BOOL>(&v17, &v24, &v16);
          v10 = v17;
          v11 = *(a1 + 224);
          if (v11 >= *(a1 + 216))
          {
            re::DynamicArray<re::SharedPtr<re::SyncObject>>::growCapacity((a1 + 208), v11 + 1);
            v11 = *(a1 + 224);
          }

          *(*(a1 + 240) + 8 * v11) = v10;
          if (v10)
          {
            v12 = (v10 + 8);
            ++*(a1 + 224);
            ++*(a1 + 232);
            v15 = v10;
            v13 = (v10 + 8);
          }

          else
          {
            *(a1 + 224) = v11 + 1;
            ++*(a1 + 232);
            v15 = 0;
          }

          re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::raise(a1 + 24, a1);
          if (v15)
          {
          }

          if (v10)
          {
          }
        }

        if (v18 && (v19 & 1) != 0)
        {
          (*(*v18 + 40))();
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t re::MultipeerDiscoveryView::removeIdentity(uint64_t a1, void *a2)
{
  v4 = re::DynamicArray<re::SharedPtr<re::DiscoveryIdentity>>::remove(a1 + 208, a2);
  if (v4)
  {
    v7 = *a2;
    if (*a2)
    {
      v5 = (*a2 + 8);
    }

    re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::raise(a1 + 112, a1);
    if (v7)
    {
    }
  }

  return v4;
}

uint64_t re::DynamicArray<re::SharedPtr<re::DiscoveryIdentity>>::remove(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 8 * v3;
    for (i = *(a1 + 32); *i != *a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(a1 + 32);
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::removeAt(a1, (i - v2) >> 3);
  return 1;
}

void re::MultipeerDiscoveryView::createProtocolLayer(id *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = this[25];
  re::MultipeerProtocolLayer::MultipeerProtocolLayer(v5, &v6);

  *a2 = v5;
}

void re::MultipeerDiscoveryView::~MultipeerDiscoveryView(id *this)
{
  *this = &unk_2873F6430;
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit((this + 26));

  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 14);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_2873F6430;
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit((this + 26));

  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 14);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);

  JUMPOUT(0x266708EC0);
}

void MCIdentity::MCIdentity(MCIdentity *this, MCPeerID *a2, char a3)
{
  v5 = a2;
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F64B8;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 64) = 0;
  v7 = *(this + 3);
  *(this + 3) = v5;
  v8 = v5;

  [REMultipeerHelper makeAddressFromPeerID:v8];
  re::DynamicString::operator=((this + 32), &v9);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  *(this + 64) = a3;
}

void MCIdentity::~MCIdentity(id *this)
{
  *this = &unk_2873F64B8;
  re::DynamicString::deinit((this + 4));

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_2873F64B8;
  re::DynamicString::deinit((this + 4));

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);

  JUMPOUT(0x266708EC0);
}

uint64_t MCIdentity::displayName(id *this)
{
  v1 = [this[3] displayName];
  v2 = [v1 UTF8String];

  return v2;
}

void re::make::shared::object<MCIdentity,MCPeerID * const {__strong}&,BOOL>(re *a1, MCPeerID **a2, char *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 72, 8);
  MCIdentity::MCIdentity(v7, *a2, *a3);
  *a1 = v8;
}

uint64_t re::TcpProtocolLayer::TcpProtocolLayer(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F6518;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x7FFFFFFFLL;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0x7FFFFFFFLL;
  *(a1 + 128) = *a2;
  re::DynamicString::DynamicString((a1 + 136), (a2 + 8));
  *(a1 + 168) = *(a2 + 40);
  *(a1 + 176) = 10;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = -1;
  *(a1 + 200) = 0;
  return a1;
}

void re::TcpProtocolLayer::~TcpProtocolLayer(re::TcpProtocolLayer *this)
{
  *this = &unk_2873F6518;
  if (*(this + 6) != -1)
  {
    re::TcpProtocolLayer::deinit(this);
  }

  re::DynamicString::deinit((this + 136));
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(this + 80);
  re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(this + 4);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::TcpProtocolLayer::~TcpProtocolLayer(this);

  JUMPOUT(0x266708EC0);
}

BOOL re::TcpProtocolLayer::init(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  *(a1 + 200) = *(a2 + 8);
  *(a1 + 180) = 0;
  *(a1 + 24) = kqueue();
  if (*(a1 + 144))
  {
    v3 = *(a1 + 152);
  }

  else
  {
    v3 = (a1 + 145);
  }

  v4 = re::IP::makeFromString(v3, v58);
  if (v58[0])
  {
    if (v58[8] != 1)
    {
      memset(&v57.ai_addrlen, 0, 32);
      v57.ai_flags = 0;
      *&v57.ai_family = 0x100000002;
      v57.ai_protocol = 6;
      v56 = 0;
      *__str = 0;
      snprintf(__str, 0xAuLL, "%i", *(a1 + 168));
      v50 = 0;
      if (*(a1 + 144))
      {
        v9 = *(a1 + 152);
      }

      else
      {
        v9 = (a1 + 145);
      }

      v10 = getaddrinfo(v9, __str, &v57, &v50);
      if (v10)
      {
        v11 = v10;
        v12 = *re::networkLogObjects(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v36 = gai_strerror(v11);
          LODWORD(changelist.ident) = 136315138;
          *(&changelist.ident + 4) = v36;
          _os_log_error_impl(&dword_26168F000, v12, OS_LOG_TYPE_ERROR, "getaddrinfo failed: %s", &changelist, 0xCu);
        }

        freeaddrinfo(v50);
        goto LABEL_52;
      }

      v13 = socket(v50->ai_family, v50->ai_socktype, v50->ai_protocol);
      *(a1 + 192) = v13;
      v49 = 1;
      setsockopt(v13, 0xFFFF, 4, &v49, 4u);
      v14 = bind(*(a1 + 192), v50->ai_addr, v50->ai_addrlen);
      freeaddrinfo(v50);
      v50 = 0;
      if (v14 < 0)
      {
        v17 = *re::networkLogObjects(v15);
        result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_53;
        }

        v18 = gai_strerror(v14);
        v19 = __error();
        v20 = strerror(*v19);
        LODWORD(changelist.ident) = 136315650;
        *(&changelist.ident + 4) = __str;
        LOWORD(changelist.fflags) = 2080;
        *(&changelist.fflags + 2) = v18;
        HIWORD(changelist.data) = 2080;
        changelist.udata = v20;
        v21 = "bind on port %s failed: %s errno = %s";
        p_changelist = &changelist;
        v23 = v17;
        v24 = 32;
      }

      else
      {
        v48 = 16;
        v16 = getsockname(*(a1 + 192), &v54, &v48);
        if ((v16 & 0x80000000) != 0)
        {
          v25 = v16;
          v26 = *re::networkLogObjects(v16);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v41 = __error();
            v42 = strerror(*v41);
            v43 = gai_strerror(v25);
            LODWORD(changelist.ident) = 136315394;
            *(&changelist.ident + 4) = v42;
            LOWORD(changelist.fflags) = 2080;
            *(&changelist.fflags + 2) = v43;
            _os_log_error_impl(&dword_26168F000, v26, OS_LOG_TYPE_ERROR, "getsockname: %s : %s", &changelist, 0x16u);
          }
        }

        else
        {
          *(a1 + 180) = bswap32(*v54.sa_data) >> 16;
        }

        v27 = fcntl(*(a1 + 192), 3, 0);
        v28 = v27;
        if ((v27 & 0x80000000) != 0)
        {
          v29 = *re::networkLogObjects(v27);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v44 = __error();
            v45 = strerror(*v44);
            LODWORD(changelist.ident) = 136315138;
            *(&changelist.ident + 4) = v45;
            _os_log_error_impl(&dword_26168F000, v29, OS_LOG_TYPE_ERROR, "Could not get server socket flags: %s\n", &changelist, 0xCu);
          }
        }

        v30 = fcntl(*(a1 + 192), 4, v28 | 4u);
        if ((v30 & 0x80000000) != 0)
        {
          v31 = *re::networkLogObjects(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v46 = __error();
            v47 = strerror(*v46);
            LODWORD(changelist.ident) = 136315138;
            *(&changelist.ident + 4) = v47;
            _os_log_error_impl(&dword_26168F000, v31, OS_LOG_TYPE_ERROR, "Could set server socket to be non blocking: %s\n", &changelist, 0xCu);
          }
        }

        changelist.ident = *(a1 + 192);
        *&changelist.filter = 0x1FFFF;
        memset(&changelist.fflags, 0, 36);
        v32 = kevent64(*(a1 + 24), &changelist, 1, 0, 0, 0, 0);
        if (v32 == -1)
        {
          v35 = *re::networkLogObjects(v32);
          result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_53;
          }

          LOWORD(v51) = 0;
          v21 = "kevent failed";
        }

        else
        {
          changelist.ident = 0;
          *&changelist.filter = 393206;
          memset(&changelist.fflags, 0, 36);
          v33 = kevent64(*(a1 + 24), &changelist, 1, 0, 0, 0, 0);
          if (v33 != -1)
          {
            v34 = listen(*(a1 + 192), *(a1 + 128));
            if ((v34 & 0x80000000) != 0)
            {
              v37 = v34;
              v38 = *re::networkLogObjects(v34);
              result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
              if (result)
              {
                v39 = gai_strerror(v37);
                v51 = 136315138;
                v52 = v39;
                v21 = "listen failed: %s";
                p_changelist = &v51;
                v23 = v38;
LABEL_50:
                v24 = 12;
                goto LABEL_51;
              }
            }

            else
            {
              if (re::internal::enableSignposts(0, 0))
              {
                kdebug_trace();
              }

              result = 1;
            }

            goto LABEL_53;
          }

          v35 = *re::networkLogObjects(v33);
          result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_53;
          }

          LOWORD(v51) = 0;
          v21 = "kevent failed";
        }

        p_changelist = &v51;
        v23 = v35;
        v24 = 2;
      }

LABEL_51:
      _os_log_error_impl(&dword_26168F000, v23, OS_LOG_TYPE_ERROR, v21, p_changelist, v24);
LABEL_52:
      result = 0;
      goto LABEL_53;
    }

    v5 = *re::networkLogObjects(v4);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      if (*(a1 + 144))
      {
        v7 = *(a1 + 152);
      }

      else
      {
        v7 = a1 + 145;
      }

      v57.ai_flags = 136315138;
      *&v57.ai_family = v7;
      v21 = "An error occurred while trying to create an Tcp server host. Tcp only supports IPv4. IPv6 requested. (%s)";
LABEL_49:
      p_changelist = &v57;
      v23 = v5;
      goto LABEL_50;
    }
  }

  else
  {
    v5 = *re::networkLogObjects(v4);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      if (*(a1 + 144))
      {
        v8 = *(a1 + 152);
      }

      else
      {
        v8 = a1 + 145;
      }

      v57.ai_flags = 136315138;
      *&v57.ai_family = v8;
      v21 = "An error occurred while trying to create an Tcp server host. Invalid bind address: %s";
      goto LABEL_49;
    }
  }

LABEL_53:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::TcpProtocolLayer::deinit(re::TcpProtocolLayer *this)
{
  v32 = *MEMORY[0x277D85DE8];
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
        LODWORD(v3) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    v6 = *(this + 12) + 24 * v3;
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = (v7 + 8);
    }

    v9 = *(this + 23);
    if (v9)
    {
      (*(*v9 + 8))(v9, this, v7, v7 + 1776);
    }

    v10 = close(*(v6 + 4));
    v11 = *re::networkLogObjects(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "deinit";
      v28 = 1024;
      v29 = 230;
      v30 = 2048;
      v31 = v7;
      _os_log_impl(&dword_26168F000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u queueing close on handle %p", buf, 0x1Cu);
    }

    (*(*this + 56))(this, v7, 1);
    if (v7)
    {
    }

    v12 = *(this + 28);
    if (v12 <= v3 + 1)
    {
      v12 = v3 + 1;
    }

    while (v12 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 12) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v3) = v12;
LABEL_22:
    ;
  }

  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::clear(this + 80);
  v13 = *(this + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (*(this + 6) + 8);
    while (1)
    {
      v16 = *v15;
      v15 += 6;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(this + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  while (v14 != v13)
  {
    v17 = *(*(this + 6) + 24 * v14 + 16);
    if (v17)
    {
      v18 = (v17 + 8);
      v19 = (v17 + 8);
    }

    v20 = *(this + 23);
    if (v20)
    {
      (*(*v20 + 8))(v20, this, v17, v17 + 1776);
    }

    v21 = close(*(v17 + 1772));
    v22 = *re::networkLogObjects(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "deinit";
      v28 = 1024;
      v29 = 242;
      v30 = 2048;
      v31 = v17;
      _os_log_impl(&dword_26168F000, v22, OS_LOG_TYPE_DEFAULT, "%s:%u queueing close on handle %p", buf, 0x1Cu);
    }

    (*(*this + 56))(this, v17, 1);

    v23 = *(this + 16);
    if (v23 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    while (v23 - 1 != v14)
    {
      LODWORD(v14) = v14 + 1;
      if ((*(*(this + 6) + 24 * v14 + 8) & 0x80000000) != 0)
      {
        goto LABEL_42;
      }
    }

    LODWORD(v14) = v23;
LABEL_42:
    ;
  }

  re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::clear(this + 32);
  close(*(this + 48));
  shutdown(*(this + 48), 2);
  result = close(*(this + 6));
  *(this + 6) = -1;
  *(this + 90) = 0;
  *(this + 48) = -1;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_261710510, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

void re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 32);
          }
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

uint64_t re::TcpProtocolLayer::open@<X0>(re::TcpProtocolLayer *this@<X0>, const re::Address *a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  result = (*(*this + 160))(this);
  v24 = result;
  if ((result & 0x80000000) != 0)
  {
    *a3 = 0;
LABEL_26:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = result;
  v8 = *re::networkLogObjects(result);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 1))
    {
      v9 = *(a2 + 2);
    }

    else
    {
      v9 = a2 + 9;
    }

    v10 = *(this + 90);
    LODWORD(buf.ident) = 136315650;
    *(&buf.ident + 4) = v9;
    LOWORD(buf.fflags) = 1024;
    *(&buf.fflags + 2) = v7;
    WORD1(buf.data) = 1024;
    HIDWORD(buf.data) = v10;
    _os_log_impl(&dword_26168F000, v8, OS_LOG_TYPE_INFO, "[ConDebug] Connecting to %s with socket %i from port %i", &buf, 0x18u);
  }

  v25 = 1;
  LODWORD(buf.ident) = v7;
  re::make::shared::object<re::TcpProtocolHandle,int &,re::TcpConnectionStatus &,re::Address const&>(&v23, &buf, &v25, a2);
  v11 = v23;
  buf.ident = v23;
  if (v23)
  {
    v12 = (v23 + 8);
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  v14 = v13 ^ (v13 >> 31);
  v15 = *(this + 14);
  if (v15)
  {
    v16 = v14 % v15;
    v17 = *(*(this + 5) + 4 * (v14 % v15));
    if (v17 != 0x7FFFFFFF)
    {
      v18 = *(this + 6);
      ident = v11;
      if (*(v18 + 24 * v17 + 16) == v11)
      {
        goto LABEL_18;
      }

      while (1)
      {
        LODWORD(v17) = *(v18 + 24 * v17 + 8) & 0x7FFFFFFF;
        if (v17 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v18 + 24 * v17 + 16) == v11)
        {
          ident = v11;
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::addAsMove(this + 32, v16, v14, &buf, &buf);
  ++*(this + 18);
  ident = buf.ident;
LABEL_18:
  if (ident)
  {

    v11 = v23;
  }

  buf.ident = v11;
  if (v11)
  {
    v20 = (v11 + 8);
  }

  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::addNew(this + 80, &v24, &buf);
  if (buf.ident)
  {
  }

  buf.ident = v24;
  *&buf.filter = 0x5FFFEuLL;
  buf.udata = v11;
  buf.ext[0] = 0;
  buf.ext[1] = 0;
  result = kevent64(*(this + 6), &buf, 1, 0, 0, 0, 0);
  if (result != -1)
  {
    *a3 = v11;
    goto LABEL_26;
  }

  re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) kevent failed", "!Unreachable code", "open", 275);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::addNew(uint64_t a1, _DWORD *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, v9, v8);
    *(result + 4) = *a2;
    *(result + 8) = *a3;
    *a3 = 0;
    ++*(a1 + 40);
  }

  return result;
}

void re::TcpProtocolLayer::setSocketOptions(re::TcpProtocolLayer *this)
{
  v1 = this;
  v14 = *MEMORY[0x277D85DE8];
  v11 = 1;
  v2 = setsockopt(this, 6, 1, &v11, 4u);
  if ((v2 & 0x80000000) != 0)
  {
    v3 = *re::networkLogObjects(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136315138;
      v13 = v8;
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "Could not set TCP_NODELAY %s\n", buf, 0xCu);
    }
  }

  v11 = 1;
  v4 = setsockopt(v1, 0xFFFF, 4130, &v11, 4u);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 136315138;
      v13 = v10;
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "Could not set SO_NOSIGPIPE %s\n", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t re::TcpProtocolLayer::connectToAddress(re::TcpProtocolLayer *this, const re::Address *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  IPPortPair = re::Address::getIPPortPair(a2, v42);
  if (v42[0])
  {
    memset(&v41.ai_addrlen, 0, 32);
    v41.ai_flags = 0;
    *&v41.ai_family = 0x100000002;
    v41.ai_protocol = 6;
    v40 = 0;
    *__str = 0;
    snprintf(__str, 0xAuLL, "%i", v43[12]);
    v34 = 0;
    re::IP::generateString(v43, buf);
    if (buf[8])
    {
      v4 = *&v37[2];
    }

    else
    {
      v4 = &buf[9];
    }

    v5 = getaddrinfo(v4, __str, &v41, &v34);
    v6 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v6 = (*(**buf + 40))();
    }

    if (v5)
    {
      v7 = *re::networkLogObjects(v6);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        freeaddrinfo(v34);
        goto LABEL_13;
      }

      v25 = gai_strerror(v5);
      *buf = 136315138;
      *&buf[4] = v25;
      v21 = "getaddrinfo failed: %s";
      v22 = v7;
      v23 = 12;
LABEL_32:
      _os_log_error_impl(&dword_26168F000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      goto LABEL_10;
    }

    v11 = socket(v34->ai_family, v34->ai_socktype, v34->ai_protocol);
    v5 = v11;
    if ((v11 & 0x80000000) != 0)
    {
      v20 = *re::networkLogObjects(v11);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 67109120;
      *&buf[4] = v5;
      v21 = "Opening socket failed with %i";
      v22 = v20;
      v23 = 8;
      goto LABEL_32;
    }

    v12 = fcntl(v11, 3, 0);
    v13 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v14 = *re::networkLogObjects(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = __error();
        v27 = strerror(*v26);
        *buf = 136315138;
        *&buf[4] = v27;
        _os_log_error_impl(&dword_26168F000, v14, OS_LOG_TYPE_ERROR, "Could not get socket flags: %s\n", buf, 0xCu);
      }
    }

    v15 = fcntl(v5, 4, v13 | 4u);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = *re::networkLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v28 = __error();
        v29 = strerror(*v28);
        *buf = 136315138;
        *&buf[4] = v29;
        _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, "Could not set socket to be non blocking: %s\n", buf, 0xCu);
      }
    }

    re::TcpProtocolLayer::setSocketOptions(v5);
    v17 = connect(v5, v34->ai_addr, v34->ai_addrlen);
    freeaddrinfo(v34);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = __error();
      if (*v18 != 36)
      {
        v19 = *re::networkLogObjects(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          if (*(a2 + 1))
          {
            v30 = *(a2 + 2);
          }

          else
          {
            v30 = a2 + 9;
          }

          v31 = gai_strerror(v17);
          v32 = __error();
          v33 = strerror(*v32);
          *buf = 136315650;
          *&buf[4] = v30;
          v36 = 2080;
          *v37 = v31;
          *&v37[8] = 2080;
          v38 = v33;
          _os_log_error_impl(&dword_26168F000, v19, OS_LOG_TYPE_ERROR, "Failed to connect to %s : %s errno = %s", buf, 0x20u);
        }

        v5 = v17;
      }
    }
  }

  else
  {
    v8 = *re::networkLogObjects(IPPortPair);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 1))
      {
        v24 = *(a2 + 2);
      }

      else
      {
        v24 = a2 + 9;
      }

      v41.ai_flags = 136315138;
      *&v41.ai_family = v24;
      _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "Expected ip:port address: %s", &v41, 0xCu);
    }

    v5 = 0xFFFFFFFFLL;
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

void re::TcpProtocolLayer::close(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *(a1 + 180);
    *v16 = 134218240;
    *&v16[4] = a2;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "[ConDebug] Closing peer handle(%p) on port %i", v16, 0x12u);
  }

  if (a2)
  {
    v5 = (a2 + 8);
  }

  if (*(a2 + 1808))
  {
    v7 = *re::networkLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 1808);
      *v16 = 134217984;
      *&v16[4] = v8;
      _os_log_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEFAULT, "Packet %p freed", v16, 0xCu);
    }

    re::PacketPool::free(*(a1 + 200), *(a2 + 1808));
    *(a2 + 1808) = 0;
  }

  v9 = *(a2 + 1840);
  if (v9)
  {
    re::PacketPool::free(*(a1 + 200), v9);
    *(a2 + 1840) = 0;
  }

  v10 = *re::networkLogObjects(v5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 180);
    v12 = *(a2 + 1772);
    *v16 = 134218496;
    *&v16[4] = a2;
    v17 = 1024;
    v18 = v11;
    v19 = 1024;
    v20 = v12;
    _os_log_impl(&dword_26168F000, v10, OS_LOG_TYPE_DEFAULT, "Closed peer handle(%p) on port %i socket %i", v16, 0x18u);
  }

  (*(*a1 + 176))(a1, *(a2 + 1772));
  v13 = (a2 + 8);
  *v16 = *(a2 + 1772);
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::remove(a1 + 80, v16);
  *v16 = a2;
  v14 = (a2 + 8);
  re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::remove(a1 + 32, v16);
  if (*v16)
  {
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::remove(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::removeInternal(a1, v5);
}

void re::TcpProtocolLayer::disconnect(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 1768) == 4)
  {
    goto LABEL_8;
  }

  *(a2 + 1768) = 3;
  if (!a3)
  {
    v6 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 1772);
      v8 = *(a1 + 180);
      LODWORD(changelist.ident) = 67109632;
      HIDWORD(changelist.ident) = v7;
      changelist.filter = 2048;
      *&changelist.flags = a2;
      WORD1(changelist.data) = 1024;
      HIDWORD(changelist.data) = v8;
      _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "[ConDebug] disconnecting peer(%i) handle(%p) on port %i", &changelist, 0x18u);
    }

    goto LABEL_8;
  }

  changelist.ident = *(a2 + 1772);
  *&changelist.filter = 196607;
  memset(&changelist.fflags, 0, 36);
  if (kevent64(*(a1 + 24), &changelist, 1, 0, 0, 0, 0) != -1)
  {
    close(*(a2 + 1772));
    v5 = *(a1 + 184);
    if (v5)
    {
      (*(*v5 + 8))(v5, a1, a2, a2 + 1776);
    }

LABEL_8:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  __error();
  v10 = __error();
  re::internal::assertLog(5, v11, "assertion failure: '%s' (%s:line %i) kevent failed %d", "!Unreachable code", "disconnect", 455, *v10);
  _os_crash();
  __break(1u);
}

void re::TcpProtocolLayer::getAddressFromSocket(re::TcpProtocolLayer *this@<X0>, int *a2@<X2>, int a3@<W1>, re::DynamicString *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a3;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  re::DynamicString::setCapacity(a4, 0);
  v18 = 128;
  v8 = getpeername(a3, &v20, &v18);
  *a2 = v8;
  if ((v8 & 0x80000000) != 0)
  {
    v9 = *re::networkLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = gai_strerror(*a2);
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 136315394;
      v22 = v10;
      LOWORD(v23[0]) = 2080;
      *(v23 + 2) = v12;
      _os_log_error_impl(&dword_26168F000, v9, OS_LOG_TYPE_ERROR, "getpeername failed: %s errno = %s", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v20.sa_family == 2)
  {
    memset(v23, 0, sizeof(v23));
    buf[0] = 0;
    HIDWORD(v22) = *&v20.sa_data[2];
    v24 = bswap32(*v20.sa_data) >> 16;
    re::Address::makeFromIPAndPort(buf, &v16);
    re::DynamicString::operator=(a4, &v16);
    if (v16)
    {
      if (v17)
      {
        (*(*v16 + 40))();
      }
    }

    goto LABEL_10;
  }

  v13 = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(this + 80, &v19);
  if (v13)
  {
    re::DynamicString::operator=(a4, (*v13 + 1776));
LABEL_10:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) IPv6 not supported yet", "!Unreachable code", "getAddressFromSocket", 486);
  _os_crash();
  __break(1u);
}

uint64_t re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 8;
  }
}

void re::TcpProtocolLayer::sendPacketParts(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1772);
  v5 = *(a1 + 1824);
  if (v5 <= 7)
  {
    v6 = send(*(a1 + 1772), (a1 + 5 * v5 + 1816), 8uLL, 0);
    if (v6 < 0)
    {
      v10 = __error();
      if (*v10 != 35)
      {
        v9 = *re::networkLogObjects(v10);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v5 = *(a1 + 1824) + v6;
    *(a1 + 1824) = v5;
    if (v5 < 8)
    {
      goto LABEL_11;
    }
  }

  v7 = send(v4, (*(a2 + 16) + v5 - 8), *(a2 + 24) - (v5 - 8), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    *(a1 + 1824) += v7;
    goto LABEL_11;
  }

  v8 = __error();
  if (*v8 != 35)
  {
    v9 = *re::networkLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v12 = __error();
      v13 = strerror(*v12);
      v14[0] = 67109378;
      v14[1] = v4;
      v15 = 2080;
      v16 = v13;
      _os_log_error_impl(&dword_26168F000, v9, OS_LOG_TYPE_ERROR, "send to %i failed: errno = %s", v14, 0x12u);
    }
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t re::TcpProtocolLayer::connectionAdded(re::TcpProtocolLayer *this, re::TcpProtocolLayer *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = a2;
  v4 = (*(*this + 168))(&v27);
  if (v31 < 0)
  {
    v15 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = __error();
      v25 = strerror(*v24);
      v26 = gai_strerror(v31);
      LODWORD(buf.ident) = 67109634;
      HIDWORD(buf.ident) = a2;
      buf.filter = 2080;
      *&buf.flags = v25;
      WORD1(buf.data) = 2080;
      *(&buf.data + 4) = v26;
      _os_log_error_impl(&dword_26168F000, v15, OS_LOG_TYPE_ERROR, "getpeername to %i failed: errno = %s, error = %s", &buf, 0x1Cu);
    }

    re::TcpProtocolLayer::connectionError(this, a2);
  }

  else
  {
    re::TcpProtocolLayer::setSocketOptions(a2);
    re::TcpProtocolLayer::setupKeepAlive(this, a2);
    if (!*(this + 10) || (v5 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30)), v6 = *(*(this + 11) + 4 * (((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) % *(this + 26))), v6 == 0x7FFFFFFF))
    {
LABEL_7:
      v33 = 2;
      v34 = a2;
      re::make::shared::object<re::TcpProtocolHandle,int &,re::TcpConnectionStatus &,re::Address const&>(&buf, &v34, &v33, &v27);
      ident = buf.ident;
      v10 = *re::networkLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(this + 90);
        if (v28)
        {
          v12 = v30;
        }

        else
        {
          v12 = v29;
        }

        LODWORD(buf.ident) = 134218754;
        *(&buf.ident + 4) = ident;
        LOWORD(buf.fflags) = 1024;
        *(&buf.fflags + 2) = v11;
        WORD1(buf.data) = 1024;
        HIDWORD(buf.data) = v32;
        LOWORD(buf.udata) = 2080;
        *(&buf.udata + 2) = v12;
        _os_log_impl(&dword_26168F000, v10, OS_LOG_TYPE_INFO, "[ConDebug] %p Incoming connection complete  on port(%i) socket(%i) from %s", &buf, 0x22u);
      }

      buf.ident = ident;
      if (ident)
      {
        v13 = (ident + 8);
      }

      re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::addNew(this + 80, &v32, &buf);
      if (buf.ident)
      {
      }
    }

    else
    {
      v7 = *(this + 12);
      while (*(v7 + 24 * v6 + 4) != a2)
      {
        v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
        if (v6 == 0x7FFFFFFF)
        {
          goto LABEL_7;
        }
      }

      ident = *re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::operator[](this + 80, &v32);
      if (ident)
      {
        v18 = (ident + 8);
        buf.ident = ident;
        v19 = (ident + 8);
      }

      else
      {
        buf.ident = 0;
      }

      v20 = re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::remove(this + 32, &buf);
      if (buf.ident)
      {
      }

      *(ident + 1768) = 2;
      v21 = *re::networkLogObjects(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = *(this + 90);
        if (v28)
        {
          v23 = v30;
        }

        else
        {
          v23 = v29;
        }

        LODWORD(buf.ident) = 134218754;
        *(&buf.ident + 4) = ident;
        LOWORD(buf.fflags) = 1024;
        *(&buf.fflags + 2) = v22;
        WORD1(buf.data) = 1024;
        HIDWORD(buf.data) = v32;
        LOWORD(buf.udata) = 2080;
        *(&buf.udata + 2) = v23;
        _os_log_impl(&dword_26168F000, v21, OS_LOG_TYPE_INFO, "[ConDebug] %p Outgoing connection complete on port(%i) socket(%i) from %s", &buf, 0x22u);
      }
    }

    (***(this + 23))(*(this + 23), this, ident, &v27);
    buf.ident = v32;
    *&buf.filter = 0x5FFFFuLL;
    buf.udata = ident;
    buf.ext[0] = 0;
    buf.ext[1] = 0;
    if (kevent64(*(this + 6), &buf, 1, 0, 0, 0, 0) == -1)
    {
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) kevent failed", "!Unreachable code", "connectionAdded", 569);
      result = _os_crash();
      __break(1u);
      return result;
    }

    if (ident)
    {
    }
  }

  result = v27;
  if (v27)
  {
    if (v28)
    {
      result = (*(*v27 + 40))();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::TcpProtocolLayer::connectionError(re::TcpProtocolLayer *this, int a2)
{
  v7 = a2;
  v3 = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(this + 80, &v7);
  if (v3)
  {
    v4 = v3;
    v5 = *(this + 23);
    if (v5)
    {
      (*(*v5 + 16))(v5, this, *v4, 2);
    }

    *(*v4 + 1768) = 5;
  }

  return shutdown(v7, 2);
}

void re::TcpProtocolLayer::setupKeepAlive(re::TcpProtocolLayer *this, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(this + 44))
  {
    v28 = 1;
    v4 = setsockopt(a2, 0xFFFF, 8, &v28, 4u);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = *re::networkLogObjects(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136315138;
        v30 = v18;
        _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "Could not set SO_KEEPALIVE %s\n", buf, 0xCu);
      }
    }

    v27 = *(this + 44);
    v6 = setsockopt(a2, 6, 16, &v27, 4u);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = *re::networkLogObjects(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v19 = __error();
        v20 = strerror(*v19);
        *buf = 136315138;
        v30 = v20;
        _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "Could not set TCP_KEEPALIVE %s\n", buf, 0xCu);
      }
    }

    v26 = 5;
    v8 = setsockopt(a2, 6, 257, &v26, 4u);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = *re::networkLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        *buf = 136315138;
        v30 = v22;
        _os_log_error_impl(&dword_26168F000, v9, OS_LOG_TYPE_ERROR, "Could not set TCP_KEEPINTVL %s\n", buf, 0xCu);
      }
    }

    v25 = 4;
    v10 = setsockopt(a2, 6, 258, &v25, 4u);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = *re::networkLogObjects(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 136315138;
        v30 = v13;
        v14 = "Could not set TCP_KEEPCNT %s\n";
LABEL_18:
        _os_log_error_impl(&dword_26168F000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
      }
    }
  }

  else
  {
    v28 = 0;
    v15 = setsockopt(a2, 0xFFFF, 8, &v28, 4u);
    if ((v15 & 0x80000000) != 0)
    {
      v11 = *re::networkLogObjects(v15);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v23 = __error();
        v24 = strerror(*v23);
        *buf = 136315138;
        v30 = v24;
        v14 = "Could not set SO_KEEPALIVE %s\n";
        goto LABEL_18;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::operator[](uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 24 * v6 + 8;
}

void re::TcpProtocolLayer::update(re::TcpProtocolLayer *this)
{
  v112 = *MEMORY[0x277D85DE8];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v107, 6022, this);
  timeout.tv_sec = 0;
  timeout.tv_nsec = 0;
  v2 = kevent64(*(this + 6), 0, 0, eventlist, 32, 0, &timeout);
  if (v2 < 1)
  {
LABEL_94:
    v84 = *(this + 28);
    if (v84)
    {
      v85 = 0;
      v86 = *(this + 12);
      while (1)
      {
        v87 = *v86;
        v86 += 6;
        if (v87 < 0)
        {
          break;
        }

        if (v84 == ++v85)
        {
          LODWORD(v85) = *(this + 28);
          break;
        }
      }
    }

    else
    {
      LODWORD(v85) = 0;
    }

    if (v85 == v84)
    {
LABEL_125:
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v107);
      v96 = *MEMORY[0x277D85DE8];
      return;
    }

    v98 = *(this + 28);
    while (1)
    {
      v88 = *(*(this + 12) + 24 * v85 + 8);
      if (v88)
      {
        v89 = (v88 + 8);
      }

      v90 = *(v88 + 1808);
      if (!v90)
      {
        goto LABEL_107;
      }

      re::TcpProtocolLayer::sendPacketParts(v88, *(v88 + 1808));
      if (v90[6] + 8 == *(v88 + 1824))
      {
        break;
      }

LABEL_118:

      v95 = *(this + 28);
      if (v95 <= v85 + 1)
      {
        v95 = v85 + 1;
      }

      while (v95 - 1 != v85)
      {
        LODWORD(v85) = v85 + 1;
        if ((*(*(this + 12) + 24 * v85) & 0x80000000) != 0)
        {
          goto LABEL_124;
        }
      }

      LODWORD(v85) = v95;
LABEL_124:
      if (v85 == v84)
      {
        goto LABEL_125;
      }
    }

    *(v88 + 1808) = 0;
    *(v88 + 1816) = 10;
    *(v88 + 1820) = 0u;
    re::PacketPool::free(*(this + 25), v90);
LABEL_107:
    v91 = 0;
    v100 = v88 + 912;
    while (1)
    {
      v92 = re::PacketQueue::dequeue((v100 + 40 * v91));
      if (v92)
      {
        break;
      }

LABEL_112:
      if (++v91 == 10)
      {
        LODWORD(v84) = v98;
        if (!*(v88 + 1808) && *(v88 + 1768) == 3)
        {
          close(*(v88 + 1772));
          v94 = *(this + 23);
          if (v94)
          {
            (*(*v94 + 8))(v94, this, v88, v88 + 1776);
          }
        }

        goto LABEL_118;
      }
    }

    v84 = v92;
    while (1)
    {
      *(v88 + 1816) = v91;
      *(v88 + 1820) = *(v84 + 24);
      v93 = re::TcpProtocolLayer::update(void)::debug--;
      *(v88 + 1832) = v93;
      re::TcpProtocolLayer::sendPacketParts(v88, v84);
      if (*(v84 + 24) + 8 != *(v88 + 1824))
      {
        break;
      }

      *(v88 + 1816) = 10;
      *(v88 + 1820) = 0;
      *(v88 + 1828) = 0;
      re::PacketPool::free(*(this + 25), v84);
      v84 = re::PacketQueue::dequeue((v100 + 40 * v91));
      if (!v84)
      {
        goto LABEL_112;
      }
    }

    *(v88 + 1808) = v84;
    LODWORD(v84) = v98;
    goto LABEL_118;
  }

  v4 = 0;
  v99 = v2;
  while (1)
  {
    v5 = &eventlist[v4];
    ident = v5->ident;
    udata = v5->udata;
    if (udata)
    {
      v7 = (udata + 8);
    }

    filter = v5->filter;
    if (filter == 65526)
    {
      changelist.ident = ident;
      *&changelist.filter = 2686966;
      memset(&changelist.fflags, 0, 36);
      if (kevent64(*(this + 6), &changelist, 1, 0, 0, 0, 0) == -1)
      {
        re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) kevent failed", "!Unreachable code", "update", 589);
        _os_crash();
        __break(1u);
LABEL_126:
        re::internal::assertLog(4, v97, "assertion failure: '%s' (%s:line %i) Accept", "!Unreachable code", "update", 597);
        _os_crash();
        __break(1u);
LABEL_127:
        re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Unknown event", "!Unreachable code", "update", 639);
        _os_crash();
        __break(1u);
LABEL_128:
        re::internal::assertLog(4, v59, "assertion failure: '%s' (%s:line %i) kevent failed", "!Unreachable code", "update", 666);
        _os_crash();
        __break(1u);
LABEL_129:
        re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) kevent failed", "!Unreachable code", "update", 631);
        _os_crash();
        __break(1u);
      }

      goto LABEL_52;
    }

    v9 = *(this + 48);
    v10 = ident;
    if (v9 == ident)
    {
      v104 = 128;
      v11 = accept(v9, &changelist, &v104);
      if (v11 == -1)
      {
        goto LABEL_126;
      }

      v12 = v11;
      *&v111[16] = 0;
      *&v111[8] = 0;
      buf[0] = 0;
      *&v111[4] = HIDWORD(changelist.ident);
      *&v111[20] = bswap32(WORD1(changelist.ident)) >> 16;
      v13 = re::Address::makeFromIPAndPort(buf, v101);
      v14 = *re::networkLogObjects(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = v103;
        if (v102)
        {
          v15 = *&v103[7];
        }

        v16 = *(this + 90);
        *buf = 136315650;
        *v111 = v15;
        *&v111[8] = 1024;
        *&v111[10] = v16;
        *&v111[14] = 1024;
        *&v111[16] = v12;
        _os_log_impl(&dword_26168F000, v14, OS_LOG_TYPE_INFO, "[ConDebug] Accepting connection(%s) on port(%i) socket(%i)", buf, 0x18u);
      }

      re::TcpProtocolLayer::connectionAdded(this, v12);
      v10 = *v101;
      if (*v101 && (v102 & 1) != 0)
      {
        v10 = (*(**v101 + 40))();
      }
    }

    else if (filter == 65534)
    {
      if (*(udata + 1768) == 1)
      {
        v101[0] = 0;
        v104 = 4;
        v28 = getsockopt(ident, 0xFFFF, 4103, v101, &v104);
        if ((v28 & 0x80000000) != 0)
        {
          v41 = v28;
          v42 = *re::networkLogObjects(v28);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v71 = ident;
            v72 = __error();
            v73 = strerror(*v72);
            v74 = gai_strerror(v41);
            LODWORD(changelist.ident) = 67109634;
            HIDWORD(changelist.ident) = v71;
            changelist.filter = 2080;
            *&changelist.flags = v73;
            WORD1(changelist.data) = 2080;
            *(&changelist.data + 4) = v74;
            _os_log_error_impl(&dword_26168F000, v42, OS_LOG_TYPE_ERROR, "getsockopt to %i failed: errno = %s error =%s", &changelist, 0x1Cu);
          }

          re::TcpProtocolLayer::connectionError(this, ident);
        }

        else if (v101[0])
        {
          v29 = *re::networkLogObjects(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = ident;
            v31 = __error();
            v32 = strerror(*v31);
            v33 = gai_strerror(v101[0]);
            LODWORD(changelist.ident) = 67109634;
            HIDWORD(changelist.ident) = v30;
            changelist.filter = 2080;
            *&changelist.flags = v32;
            WORD1(changelist.data) = 2080;
            *(&changelist.data + 4) = v33;
            _os_log_error_impl(&dword_26168F000, v29, OS_LOG_TYPE_ERROR, "getsockopt to %i failed: errno = %s error =%s", &changelist, 0x1Cu);
          }
        }

        else
        {
          v66 = (*(*this + 168))(&changelist, this, ident, v101);
          v67 = v101[0];
          v68 = *re::networkLogObjects(v66);
          if (v67 < 0)
          {
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v80 = ident;
              v81 = __error();
              v82 = strerror(*v81);
              v83 = gai_strerror(v101[0]);
              *buf = 67109634;
              *v111 = v80;
              *&v111[4] = 2080;
              *&v111[6] = v82;
              *&v111[14] = 2080;
              *&v111[16] = v83;
              _os_log_error_impl(&dword_26168F000, v68, OS_LOG_TYPE_ERROR, "getAddressFromSocket to %i failed: errno = %s, error = %s", buf, 0x1Cu);
            }

            re::TcpProtocolLayer::connectionError(this, ident);
          }

          else
          {
            if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
            {
              v69 = *(this + 90);
              data = &changelist.filter + 1;
              if (changelist.filter)
              {
                data = changelist.data;
              }

              *buf = 67109634;
              *v111 = v69;
              *&v111[4] = 1024;
              *&v111[6] = ident;
              *&v111[10] = 2080;
              *&v111[12] = data;
              _os_log_impl(&dword_26168F000, v68, OS_LOG_TYPE_INFO, "[ConDebug] Server accepted connection on port(%i) socket(%i) from %s", buf, 0x18u);
            }

            re::TcpProtocolLayer::connectionAdded(this, ident);
          }

          if (changelist.ident && (changelist.filter & 1) != 0)
          {
            (*(*changelist.ident + 40))();
          }
        }

        changelist.ident = ident;
        *&changelist.filter = 720894;
        memset(&changelist.fflags, 0, 36);
        v10 = kevent64(*(this + 6), &changelist, 1, 0, 0, 0, 0);
        if (v10 == -1)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      if (filter != 0xFFFF)
      {
        goto LABEL_127;
      }

      v17 = (udata + 1848);
      v18 = (udata + 1852);
      v19 = *(udata + 1856);
      while (1)
      {
        v20 = *(udata + 1772);
        if (v19 <= 7)
        {
          v10 = recv(*(udata + 1772), &v17[v19], 8 - v19, 0);
          v21 = v10;
          if (v10 < 0)
          {
            v10 = __error();
            if (*v10 == 35)
            {
              goto LABEL_51;
            }

            v43 = *re::networkLogObjects(v10);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v77 = strerror(v21);
              v78 = __error();
              v79 = strerror(*v78);
              LODWORD(changelist.ident) = 67109634;
              HIDWORD(changelist.ident) = v20;
              changelist.filter = 2080;
              *&changelist.flags = v77;
              WORD1(changelist.data) = 2080;
              *(&changelist.data + 4) = v79;
              v38 = v43;
              v39 = "recv %i failed: errno = %s %s";
              v40 = 28;
LABEL_93:
              _os_log_error_impl(&dword_26168F000, v38, OS_LOG_TYPE_ERROR, v39, &changelist, v40);
            }

LABEL_50:
            v10 = re::TcpProtocolLayer::connectionError(this, v20);
            goto LABEL_51;
          }

          v19 = *(udata + 1856) + v10;
          *(udata + 1856) = v19;
          if (v19 < 8)
          {
            goto LABEL_51;
          }
        }

        if (*v17 >= 0xAu)
        {
          break;
        }

        v22 = *(udata + 1840);
        if (v22)
        {
          v23 = *v18;
        }

        else
        {
          v22 = re::PacketPool::allocate(*(this + 25), *(udata + 1852));
          *(udata + 1840) = v22;
          v23 = *(udata + 1852);
          *(v22 + 6) = v23;
          v19 = *(udata + 1856);
        }

        v10 = recv(v20, (*(v22 + 2) + v19 - 8), v23 - v19 + 8, 0);
        if (v10 < 0)
        {
          v10 = __error();
          if (*v10 == 35)
          {
            goto LABEL_51;
          }

          v35 = *re::networkLogObjects(v10);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = __error();
            v37 = strerror(*v36);
            LODWORD(changelist.ident) = 67109378;
            HIDWORD(changelist.ident) = v20;
            changelist.filter = 2080;
            *&changelist.flags = v37;
            v38 = v35;
            v39 = "recv %i failed: errno = %s";
            v40 = 18;
            goto LABEL_93;
          }

          goto LABEL_50;
        }

        v24 = *(udata + 1856) + v10;
        *(udata + 1856) = v24;
        v3 = *(udata + 1840);
        if (*(v3 + 24) + 8 != v24)
        {
          goto LABEL_51;
        }

        v25 = *(this + 23);
        if (v25)
        {
          (*(*v25 + 24))(v25, this, udata, *(udata + 1848), *(v3 + 16));
          v3 = *(udata + 1840);
        }

        v26 = _MergedGlobals++;
        *(udata + 1864) = v26;
        re::PacketPool::free(*(this + 25), v3);
        v19 = 0;
        *(udata + 1840) = 0;
        *(udata + 1848) = 10;
        *(udata + 1860) = 0;
        *v18 = 0;
        v27 = dword_27FEB71F4++;
        *(udata + 1864) = v27;
      }

      v34 = *(this + 23);
      if (v34)
      {
        (*(*v34 + 16))(v34, this, udata, 0);
      }

      *(udata + 1768) = 5;
      v10 = shutdown(v20, 2);
    }

LABEL_51:
    if (v5->flags < 0)
    {
      break;
    }

LABEL_52:
    if (udata)
    {
      goto LABEL_53;
    }

LABEL_54:
    if (++v4 == v99)
    {
      goto LABEL_94;
    }
  }

  fflags = v5->fflags;
  v45 = *re::networkLogObjects(v10);
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
  if (fflags)
  {
    if (v46)
    {
      v48 = *(this + 90);
      v49 = ident;
      v50 = v5->fflags;
      v51 = strerror(v50);
      v52 = __error();
      v53 = strerror(*v52);
      LODWORD(changelist.ident) = 67110146;
      HIDWORD(changelist.ident) = v48;
      changelist.filter = 1024;
      *&changelist.flags = v49;
      HIWORD(changelist.fflags) = 1024;
      LODWORD(changelist.data) = v50;
      WORD2(changelist.data) = 2080;
      *(&changelist.data + 6) = v51;
      HIWORD(changelist.udata) = 2080;
      changelist.ext[0] = v53;
      v54 = v45;
      v55 = "[ConDebug] Connection Closed on port(%i) socket(%i) reason %i:%s %s";
      v56 = 40;
      goto LABEL_61;
    }
  }

  else if (v46)
  {
    v57 = *(this + 90);
    LODWORD(changelist.ident) = 67109376;
    HIDWORD(changelist.ident) = v57;
    changelist.filter = 1024;
    *&changelist.flags = ident;
    v54 = v45;
    v55 = "[ConDebug] Connection Closed on port(%i) socket(%i)";
    v56 = 14;
LABEL_61:
    _os_log_impl(&dword_26168F000, v54, OS_LOG_TYPE_DEFAULT, v55, &changelist, v56);
  }

  if (!udata)
  {
    v63 = *re::networkLogObjects(v46);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(changelist.ident) = 67109120;
      HIDWORD(changelist.ident) = ident;
      _os_log_impl(&dword_26168F000, v63, OS_LOG_TYPE_DEFAULT, "Unknown connection closed %i", &changelist, 8u);
    }

    goto LABEL_54;
  }

  v58 = *(udata + 1768);
  if (v58 > 5)
  {
LABEL_79:
    *(udata + 1768) = 4;
LABEL_53:

    goto LABEL_54;
  }

  if (((1 << v58) & 0x2C) != 0)
  {
    changelist.ident = ident;
    *&changelist.filter = 196607;
    memset(&changelist.fflags, 0, 36);
    if (kevent64(*(this + 6), &changelist, 1, 0, 0, 0, 0) == -1)
    {
      goto LABEL_128;
    }

    v60 = *(this + 23);
    v61 = *re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::operator[](this + 80, &ident);
    if (v60)
    {
      if (v61)
      {
        v62 = (v61 + 8);
      }

      (*(**(this + 23) + 8))(*(this + 23), this, v61, v61 + 1776);
      *(udata + 1768) = 3;
      if (v61)
      {
      }
    }

    else
    {
      (*(*this + 56))(this, v61, 0);
    }

    goto LABEL_79;
  }

  if (v58 == 1)
  {
    changelist.ident = ident;
    *&changelist.filter = 720894;
    memset(&changelist.fflags, 0, 36);
    v64 = kevent64(*(this + 6), &changelist, 1, 0, 0, 0, 0);
    if (v64 == -1)
    {
      v65 = *re::networkLogObjects(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v75 = __error();
        v76 = strerror(*v75);
        *buf = 136315138;
        *v111 = v76;
        _os_log_error_impl(&dword_26168F000, v65, OS_LOG_TYPE_ERROR, "kevent failed: %s", buf, 0xCu);
      }
    }

    re::TcpProtocolLayer::connectionError(this, ident);
    goto LABEL_79;
  }

  re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Invalid Connection status", "!Unreachable code", "update", 679);
  _os_crash();
  __break(1u);
}

void re::TcpProtocolLayer::wait(re::TcpProtocolLayer *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = kevent64(*(this + 6), 0, 0, &v6, 1, 0, 0);
  if (v1 == -1)
  {
    v2 = *re::networkLogObjects(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315138;
      v8 = v5;
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "kevent failed %s", buf, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void re::TcpProtocolLayer::wakeup(re::TcpProtocolLayer *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v6.ident = 0;
  *&v6.filter = 0x10000000004FFF6;
  memset(&v6.data, 0, 32);
  v1 = kevent64(*(this + 6), &v6, 1, 0, 0, 0, 0);
  if (v1 == -1)
  {
    v2 = *re::networkLogObjects(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315138;
      v8 = v5;
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "kevent failed %s", buf, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

unint64_t re::TcpProtocolLayer::localAddresses(re::TcpProtocolLayer *this, re::Address *a2, unint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(this + 18))
  {
    v6 = *(this + 19);
  }

  else
  {
    v6 = (this + 145);
  }

  if (!strcmp(v6, "0.0.0.0"))
  {
    v28[0] = 0;
    v8 = getifaddrs(v28);
    if ((v8 & 0x80000000) != 0)
    {
      v18 = *re::networkLogObjects(v8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *__error();
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&dword_26168F000, v18, OS_LOG_TYPE_DEFAULT, "TcpProtocolLayer: Unable to list network adapters(errno=%d).", buf, 8u);
      }

      v7 = 0;
    }

    else
    {
      v10 = v28[0];
      if (v28[0])
      {
        v7 = 0;
        do
        {
          ifa_addr = v10->ifa_addr;
          if (ifa_addr)
          {
            ifa_flags = v10->ifa_flags;
            if ((ifa_flags & 1) != 0 && ifa_addr->sa_family == 2)
            {
              v13 = *&ifa_addr->sa_data[2];
              ifa_addr = (ifa_addr + 4);
              v12 = v13;
              if (v13 != 65193 && ((ifa_flags & 8) == 0 || v12 == 16777343))
              {
                v14 = inet_ntop(2, ifa_addr, v22, 0x11u);
                if (v14)
                {
                  if (v7 < a3)
                  {
                    re::Address::makeFromIPAndPort(v14, *(this + 90), buf);
                    re::DynamicString::operator=((a2 + 32 * v7), buf);
                    if (*buf)
                    {
                      if (v26)
                      {
                        (*(**buf + 40))();
                      }
                    }
                  }

                  ++v7;
                }

                else
                {
                  v15 = *re::networkLogObjects(0);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    v16 = *__error();
                    *buf = 67109120;
                    *&buf[4] = v16;
                    _os_log_impl(&dword_26168F000, v15, OS_LOG_TYPE_DEFAULT, "TcpProtocolLayer: Failed to get string representation of ip(errno=%d).", buf, 8u);
                  }
                }
              }
            }
          }

          v10 = v10->ifa_next;
        }

        while (v10);
        v17 = v28[0];
      }

      else
      {
        v17 = 0;
        v7 = 0;
      }

      MEMORY[0x2667091C0](v17, ifa_addr);
    }
  }

  else
  {
    re::IP::makeFromString(v6, buf);
    *v28 = v26;
    v29 = v27;
    if (a3)
    {
      *v22 = *v28;
      v23 = v29;
      v24 = *(this + 90);
      re::Address::makeFromIPAndPort(v22, buf);
      re::DynamicString::operator=(a2, buf);
      if (*buf)
      {
        if (v26)
        {
          (*(**buf + 40))();
        }
      }
    }

    v7 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

void re::TcpProtocolLayer::setDisconnectTimeout(re::TcpProtocolLayer *this, unsigned int a2)
{
  if (a2 <= 0x3E8)
  {
    v3 = 1000;
  }

  else
  {
    v3 = a2;
  }

  *(this + 44) = v3 / 0x3E8;
  v4 = *(this + 28);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 12);
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
        LODWORD(v5) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    do
    {
      re::TcpProtocolLayer::setupKeepAlive(this, *(*(this + 12) + 24 * v5 + 4));
      v8 = *(this + 28);
      if (v8 <= v5 + 1)
      {
        v9 = v5 + 1;
      }

      else
      {
        v9 = *(this + 28);
      }

      while (v9 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 12) + 24 * v5) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v5) = v9;
LABEL_18:
      ;
    }

    while (v5 != v8);
  }
}

double re::make::shared::object<re::TcpProtocolHandle,int &,re::TcpConnectionStatus &,re::Address const&>(re *a1, _DWORD *a2, _DWORD *a3, const re::DynamicString *a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 1872, 8);
  LODWORD(a2) = *a2;
  LODWORD(a3) = *a3;
  v10 = re::ProtocolHandle::ProtocolHandle(v9);
  *v10 = &unk_2873F65F8;
  *(v10 + 442) = a3;
  *(v10 + 443) = a2;
  re::DynamicString::DynamicString((v10 + 1776), a4);
  *(v9 + 1808) = 0;
  *(v9 + 1816) = 10;
  result = 0.0;
  *(v9 + 1820) = 0u;
  *(v9 + 1840) = 0;
  *(v9 + 1848) = 10;
  *(v9 + 1852) = 0u;
  *a1 = v9;
  return result;
}

void re::TcpProtocolHandle::~TcpProtocolHandle(re::TcpProtocolHandle *this)
{
  *this = &unk_2873F65F8;
  re::DynamicString::deinit((this + 1776));

  re::ProtocolHandle::~ProtocolHandle(this);
}

{
  *this = &unk_2873F65F8;
  re::DynamicString::deinit((this + 1776));
  re::ProtocolHandle::~ProtocolHandle(this);

  JUMPOUT(0x266708EC0);
}

double re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 24 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 8);
    if (v3)
    {

      *(v2 + 8) = 0;
    }
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *a5 = 0;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, *&v13[16] + v10 + 16);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 24 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
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
      if (*(v7 + 24 * v8 + 4) == *a2)
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 24 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 16) = a3;
  ++*(a1 + 28);
  return v7 + 24 * v5;
}

void re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::move(a1, v9);
      re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(v4, *(v7 + v5 + 16) % *(v4 + 24));
        v7 = *(a2 + 16);
        *(result + 4) = *(v7 + v5 + 4);
        *(result + 8) = *(v7 + v5 + 8);
        *(v7 + v5 + 8) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v2);
  }

  return result;
}

BOOL re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 24 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 24 * v5) = *(v6 + 24 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 24 * v9) = *(*(a1 + 16) + 24 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

double RESyncCustomLeaderElectionCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 112, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_2873F6640;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  return result;
}

const void **RESyncCustomLeaderElectionDeinit(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[3]);
    result = _Block_copy(a2);
    v3[3] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionInit(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[4]);
    result = _Block_copy(a2);
    v3[4] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionDestroy(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[5]);
    result = _Block_copy(a2);
    v3[5] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionProcessCapabilities(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[6]);
    result = _Block_copy(a2);
    v3[6] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionProcessPeerHelloSetLeader(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[7]);
    result = _Block_copy(a2);
    v3[7] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionRunLoop(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[8]);
    result = _Block_copy(a2);
    v3[8] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionIsLeader(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[9]);
    result = _Block_copy(a2);
    v3[9] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionHandleMigration(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[10]);
    result = _Block_copy(a2);
    v3[10] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionAddPeer(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[11]);
    result = _Block_copy(a2);
    v3[11] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionRemovePeer(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[12]);
    result = _Block_copy(a2);
    v3[12] = result;
  }

  return result;
}

const void **RESyncCustomLeaderElectionSetSession(const void **result, const void *a2)
{
  if (result)
  {
    v3 = result;
    _Block_release(result[13]);
    result = _Block_copy(a2);
    v3[13] = result;
  }

  return result;
}

void *RESyncLeaderElectionCreateCustom(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  if (a1[3] && a1[4] && a1[6] && a1[8] && a1[9] && a1[10] && a1[11] && a1[12] && a1[13])
  {
    v3 = re::globalAllocators(v2);
    v4 = (*(*v3[2] + 32))(v3[2], 40, 8);
    ArcSharedObject::ArcSharedObject(v4, 0);
    *v4 = &unk_2873F6688;
    v4[4] = a1;
    v5 = a1 + 1;

    v6 = v4 + 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void anonymous namespace::CustomLeaderElectionImpl::~CustomLeaderElectionImpl(const void **this)
{
  *this = &unk_2873F6640;
  _Block_release(this[13]);
  _Block_release(this[12]);
  _Block_release(this[11]);
  _Block_release(this[10]);
  _Block_release(this[9]);
  _Block_release(this[8]);
  _Block_release(this[7]);
  _Block_release(this[6]);
  _Block_release(this[5]);
  _Block_release(this[4]);
  _Block_release(this[3]);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);
}

{

  JUMPOUT(0x266708EC0);
}

void anonymous namespace::CustomLeaderElection::~CustomLeaderElection(_anonymous_namespace_::CustomLeaderElection *this)
{
  v2 = *(this + 4);
  v3 = *(v2 + 40);
  if (!v3 || ((*(v3 + 16))(), (v2 = *(this + 4)) != 0))
  {

    *(this + 4) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

uint64_t anonymous namespace::CustomLeaderElection::processPeerHelloSetLeader(_anonymous_namespace_::CustomLeaderElection *this)
{
  result = *(*(this + 4) + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t RESyncBitWriterConstructNoAlloc(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a2 >= 0x28)
  {
    *a1 = &unk_2873F59D0;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    return a1;
  }

  return v4;
}

uint64_t RESyncBitWriterConstructNoAllocWithStartingBitMarker(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0x28)
    {
      *a1 = &unk_2873F59D0;
      *(a1 + 8) = a3;
      *(a1 + 16) = a4;
      *(a1 + 20) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      re::BitWriter::rollbackTo(a1, a5);
      return a1;
    }
  }

  return result;
}

uint64_t RESyncBitWriterConstructBackedNoAlloc(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  if (a1 && a2 >= 0x38)
  {
    *(a1 + 16) = a4;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *a1 = &unk_2873F5A20;
    *(a1 + 8) = a3;
    v6 = a1;
    *(a1 + 40) = a6;
    *(a1 + 48) = a5;
  }

  return v6;
}

uint64_t RESyncBitWriterWriteUInt64(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2);
  re::BitWriter::writeUInt32Bits(a1, a2, 0x20u);

  return re::BitWriter::writeUInt32Bits(a1, v2, 0x20u);
}

uint64_t RESyncBitWriterWitePeerID(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2);
  re::BitWriter::writeUInt32Bits(a1, a2, 0x20u);

  return re::BitWriter::writeUInt32Bits(a1, v2, 0x20u);
}

uint64_t RESyncBitWriterClear(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t RESyncBitWriterSize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 28))
  {
    return v1 + 1;
  }

  else
  {
    return v1;
  }
}

uint64_t RESyncBitWriterOpenBuffer(uint64_t a1, void *a2)
{
  re::BitWriter::alignToByte(a1);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (*(a1 + 28))
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  *a2 = re::BitWriter::bytesLeft(a1, v4);
  return v5 + v7;
}

uint64_t RESyncBitWriterGrowBuffer(re::BitWriter *a1, int a2, _DWORD *a3)
{
  (*(*a1 + 16))(a1, (a2 - *(a1 + 2) + *a3));
  v6 = *(a1 + 1);
  v7 = *(a1 + 6);
  if (*(a1 + 7))
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  *a3 = re::BitWriter::bytesLeft(a1, v5);
  return v6 + v8;
}

uint64_t re::SyncCommitDump::log(NSObject *a1, uint64_t a2, const char *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v8 = *(a2 + 24);
    v9 = "Commit";
    if (a3)
    {
      v9 = a3;
    }

    if (v8 <= 0.0)
    {
      v19 = "(Atomic)";
      v20 = *(a2 + 28);
      if ((*a2 & 1) == 0)
      {
        v19 = "";
      }

      v21 = *(a2 + 8);
      v13 = (*a2 & 2) == 0;
      v24 = 136316162;
      v22 = "(Held)";
      if (v13)
      {
        v22 = "";
      }

      v25 = v9;
      v26 = 2080;
      v27 = v19;
      if (v20)
      {
        v23 = "(Fwd)";
      }

      else
      {
        v23 = "";
      }

      v28 = 2080;
      v29 = v22;
      v30 = 2080;
      v31 = v23;
      v32 = 2048;
      v33 = v21;
      v16 = "%s %s%s%s Peer=%llu";
      v17 = a1;
      v18 = 52;
    }

    else
    {
      v10 = "(Atomic)";
      v11 = *(a2 + 28);
      if ((*a2 & 1) == 0)
      {
        v10 = "";
      }

      v12 = *(a2 + 8);
      v13 = (*a2 & 2) == 0;
      v24 = 136316418;
      v14 = "(Held)";
      if (v13)
      {
        v14 = "";
      }

      v25 = v9;
      v26 = 2080;
      v27 = v10;
      if (v11)
      {
        v15 = "(Fwd)";
      }

      else
      {
        v15 = "";
      }

      v28 = 2080;
      v29 = v14;
      v30 = 2080;
      v31 = v15;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      v35 = v8;
      v16 = "%s %s%s%s Peer=%llu TTL=%0.2f";
      v17 = a1;
      v18 = 62;
    }

    _os_log_debug_impl(&dword_26168F000, v17, OS_LOG_TYPE_DEBUG, v16, &v24, v18);
    result = re::SyncSnapshotDump::log(a1, a2, a3);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncCommitDump::log(re *a1, uint64_t a2, const char *a3)
{
  v5 = a1;
  v6 = re::networkLogObjects(a1);
  v7 = *v6;
  result = re::NetworkFeatureFlags::enableSyncCommitLog(v6);
  if (result && a2)
  {
    v9 = 72 * a2;
    do
    {
      result = re::SyncCommitDump::log(v7, v5, a3);
      v5 += 72;
      v9 -= 72;
    }

    while (v9);
  }

  return result;
}

uint64_t re::BiasedVLQ::write(re::BiasedVLQ *this, re::BitWriter *a2, uint64_t a3)
{
  v4 = *this + a3;
  if (v4 < 0x80)
  {
    v5 = *this + a3;
  }

  else
  {
    do
    {
      re::BitWriter::writeUInt32Bits(a2, v4 & 0x7F | 0x80, 8u);
      v5 = v4 >> 7;
      v6 = v4 >> 14;
      v4 >>= 7;
    }

    while (v6);
  }

  re::BitWriter::writeUInt32Bits(a2, v5, 8u);
  return 1;
}

uint64_t re::BiasedVLQ::read(re::BiasedVLQ *this, re::BitReader *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = 0;
    re::BitReader::readUInt32Bits(a2, 8u, &v9);
    v7 |= (v9 & 0x7F) << v6;
    v6 += 7;
  }

  while ((v9 & 0x80) != 0);
  *a3 = v7 - *this;
  return 1;
}

uint64_t re::SyncSnapshot::writeObject(void *a1, re::SyncObject **a2)
{
  re::SyncObject::addState(*a2, 0, 0);
  v4 = *a2;
  v10[0] = v4;
  if (v4)
  {
    v5 = v4 + 8;
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  v10[1] = re::SyncObject::latestStateHandle(v6);
  v11 = 0;
  re::DynamicArray<re::internal::SyncSnapshotEntry>::add(a1, v10);
  if (v10[0])
  {
  }

  v7 = a1[4] + 24 * a1[2];
  v9 = *(v7 - 24);
  result = v7 - 24;
  ++*(v9 + 176);
  return result;
}

void *re::DynamicArray<re::internal::SyncSnapshotEntry>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::internal::SyncSnapshotEntry>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 24 * v4;
  *v5 = *a2;
  *a2 = 0;
  v6 = *(a2 + 8);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 8) = v6;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

BOOL re::SyncSnapshot::writeDestroyedObject(void *a1, re::SyncObject **a2)
{
  *(*a2 + 128) |= 4u;
  v4 = *a2;
  *(v4 + 88) = *(*a2 + 88) + 1;
  LatestState = re::SyncObject::getLatestState(v4);
  if (LatestState)
  {
    v6 = *a2;
    v16[0] = v6;
    if (v6)
    {
      v7 = v6 + 8;
      v8 = *a2;
    }

    else
    {
      v8 = 0;
    }

    v16[1] = re::SyncObject::latestStateHandle(v8);
    v17 = 2;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::add(a1, v16);
    if (v16[0])
    {
    }

    *(LatestState + 84) = 0;
    *(LatestState + 88) = 0;
    ++*(LatestState + 80);
  }

  else
  {
    v9 = *a2;
    v10 = *(*a2 + 10);
    v11 = *a2;
    if (v10)
    {
      v12 = *a2;
      do
      {
        v11 = v12;
        v12 = v10;
        if (*(*(*(v11 + 11) + 16) + 73))
        {
          break;
        }

        v10 = *(v10 + 10);
        v11 = v12;
      }

      while (v10);
    }

    if (*(v11 + 170) == 1)
    {
      v13 = *(v9 + 11);
      v18 = *a2;
      v14 = v9 + 8;
      re::SyncObjectTypedStore::removeObject(v13, &v18);
      if (v18)
      {
      }
    }
  }

  return LatestState != 0;
}

BOOL re::SyncSnapshot::addToView(void *a1, re::SyncObject **a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = re::SyncObject::latestStateHandle(*a2);
  if (v4 == -1)
  {
    v7 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*a2 + 3);
      v11 = *(*(*a2 + 11) + 16);
      v12 = v11[4];
      v13 = v11[6];
      v14 = v11[7];
      v15 = v11 + 49;
      if (v13)
      {
        v15 = v14;
      }

      *v16 = 134218498;
      *&v16[4] = v10;
      *&v16[12] = 2048;
      *&v16[14] = v12;
      v17 = 2080;
      v18 = v15;
      _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "Sync object without snapshot while adding to view (id: %llu, type: %llu[%s]).", v16, 0x20u);
    }
  }

  else
  {
    v5 = *a2;
    *v16 = v5;
    if (v5)
    {
      v6 = v5 + 8;
    }

    *&v16[8] = v4;
    v16[16] = 1;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::add(a1, v16);
    if (*v16)
    {
    }
  }

  result = v4 != -1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL re::SyncSnapshot::removeFromView(void *a1, re::SyncObject **a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = re::SyncObject::latestStateHandle(*a2);
  if (v4 == -1)
  {
    v7 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*a2 + 3);
      v11 = *(*(*a2 + 11) + 16);
      v12 = v11[4];
      v13 = v11[6];
      v14 = v11[7];
      v15 = v11 + 49;
      if (v13)
      {
        v15 = v14;
      }

      *v16 = 134218498;
      *&v16[4] = v10;
      *&v16[12] = 2048;
      *&v16[14] = v12;
      v17 = 2080;
      v18 = v15;
      _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "Sync object without snapshot while removing from view (id: %llu, type: %llu[%s]).", v16, 0x20u);
    }
  }

  else
  {
    v5 = *a2;
    *v16 = v5;
    if (v5)
    {
      v6 = v5 + 8;
    }

    *&v16[8] = v4;
    v16[16] = 2;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::add(a1, v16);
    if (*v16)
    {
    }
  }

  result = v4 != -1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncSnapshot::readAt(re::SyncSnapshot *this, unint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(this + 4) + 24 * a2;
  if (!re::SyncObject::getState(*v2, *(v2 + 8)))
  {
    re::SyncObject::getOldestState(*v2);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

re::DebugProtocolLayer *re::DebugProtocolLayer::DebugProtocolLayer(re::DebugProtocolLayer *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_2873F6728;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0x7FFFFFFFLL;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 132) = 0x7FFFFFFFLL;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 18) = dispatch_semaphore_create(0);
  *(this + 19) = dispatch_semaphore_create(0);
  return this;
}

void re::DebugProtocolLayer::~DebugProtocolLayer(re::DebugProtocolLayer *this)
{
  *this = &unk_2873F6728;
  dispatch_release(*(this + 18));
  *(this + 18) = 0;
  dispatch_release(*(this + 19));
  *(this + 19) = 0;
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(this + 96);
  re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(this + 6);
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::DebugProtocolLayer::~DebugProtocolLayer(this);

  JUMPOUT(0x266708EC0);
}

uint64_t re::DebugProtocolLayer::init(re::_anonymous_namespace_ *a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 8);
  if (v3)
  {
    a1 = (v3 + 8);
  }

  v4 = *(v2 + 5);
  *(v2 + 5) = v3;
  if (v4)
  {
  }

  std::recursive_mutex::lock(&stru_27FEB84A8);
  v5 = qword_27FEB84A0;
  LODWORD(qword_27FEB84A0) = qword_27FEB84A0 + 1;
  *(v2 + 8) = v5;
  if (!qword_27FEB8480)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(qword_27FEB8480);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (qword_27FEB8480 <= v5)
    {
      v7 = v5 % qword_27FEB8480;
    }
  }

  else
  {
    v7 = (qword_27FEB8480 - 1) & v5;
  }

  v8 = *(qword_27FEB8478 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v5)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= qword_27FEB8480)
      {
        v10 %= qword_27FEB8480;
      }
    }

    else
    {
      v10 &= qword_27FEB8480 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v5)
  {
    goto LABEL_21;
  }

  std::recursive_mutex::unlock(&stru_27FEB84A8);
  return 1;
}

void re::anonymous namespace::interconnect(re::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    *&qword_27FEB8488 = 0u;
    *&qword_27FEB8478 = 0u;
    dword_27FEB8498 = 1065353216;
    qword_27FEB84A0 = 0x100000001;
    MEMORY[0x266708D60](&unk_27FEB84A8);

    __cxa_guard_release(&_MergedGlobals_1);
  }
}

void re::DebugProtocolLayer::deinit(re::DebugProtocolLayer *this)
{
  std::recursive_mutex::lock(&stru_27FEB84A8);
  v3 = *(this + 20);
  if (v3)
  {
    v4 = 0;
    v5 = (*(this + 8) + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(this + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  while (v4 != v3)
  {
    v7 = *(*(this + 8) + 24 * v4 + 16);
    if (v7)
    {
      v2 = (v7 + 8);
    }

    re::DebugProtocolInterconnect::sendDisconnect(*(v7 + 1776), *(v7 + 1784));

    v8 = *(this + 20);
    if (v8 <= v4 + 1)
    {
      v8 = v4 + 1;
    }

    while (v8 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(*(this + 8) + 24 * v4 + 8) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v4) = v8;
LABEL_16:
    ;
  }

  while (*(this + 31))
  {
    v9 = *(this + 32);
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 14);
      while (1)
      {
        v12 = *v11;
        v11 += 6;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(this + 32);
          break;
        }
      }

      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    re::DebugProtocolLayer::withlock_close(this, *(*(this + 14) + 24 * v13 + 8));
  }

  re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::clear(this + 48);
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::clear(this + 96);
  v15 = *(this + 5);
  if (v15)
  {

    *(this + 5) = 0;
  }

  std::recursive_mutex::lock(&stru_27FEB84A8);
  v16 = qword_27FEB8480;
  if (!qword_27FEB8480)
  {
    goto LABEL_74;
  }

  v17 = *(this + 8);
  v18 = vcnt_s8(qword_27FEB8480);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = *(this + 8);
    if (qword_27FEB8480 <= v17)
    {
      v19 = v17 % qword_27FEB8480;
    }
  }

  else
  {
    v19 = (qword_27FEB8480 - 1) & v17;
  }

  v20 = *(qword_27FEB8478 + 8 * v19);
  if (!v20)
  {
    goto LABEL_74;
  }

  v21 = *v20;
  if (!*v20)
  {
    goto LABEL_74;
  }

  v22 = qword_27FEB8480 - 1;
  while (1)
  {
    v23 = v21[1];
    if (v23 == v17)
    {
      break;
    }

    if (v18.u32[0] > 1uLL)
    {
      if (v23 >= qword_27FEB8480)
      {
        v23 %= qword_27FEB8480;
      }
    }

    else
    {
      v23 &= v22;
    }

    if (v23 != v19)
    {
      goto LABEL_74;
    }

LABEL_44:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_74;
    }
  }

  if (*(v21 + 4) != v17)
  {
    goto LABEL_44;
  }

  v24 = *v21;
  if (v18.u32[0] > 1uLL)
  {
    if (qword_27FEB8480 <= v17)
    {
      v17 %= qword_27FEB8480;
    }
  }

  else
  {
    v17 &= v22;
  }

  v25 = *(qword_27FEB8478 + 8 * v17);
  do
  {
    v26 = v25;
    v25 = *v25;
  }

  while (v25 != v21);
  if (v26 == &qword_27FEB8488)
  {
    goto LABEL_63;
  }

  v27 = v26[1];
  if (v18.u32[0] > 1uLL)
  {
    if (v27 >= qword_27FEB8480)
    {
      v27 %= qword_27FEB8480;
    }
  }

  else
  {
    v27 &= v22;
  }

  if (v27 == v17)
  {
LABEL_65:
    if (v24)
    {
      v28 = *(v24 + 8);
      goto LABEL_67;
    }
  }

  else
  {
LABEL_63:
    if (!v24)
    {
      goto LABEL_64;
    }

    v28 = *(v24 + 8);
    if (v18.u32[0] > 1uLL)
    {
      v29 = *(v24 + 8);
      if (v28 >= qword_27FEB8480)
      {
        v29 = v28 % qword_27FEB8480;
      }
    }

    else
    {
      v29 = v28 & v22;
    }

    if (v29 != v17)
    {
LABEL_64:
      *(qword_27FEB8478 + 8 * v17) = 0;
      v24 = *v21;
      goto LABEL_65;
    }

LABEL_67:
    if (v18.u32[0] > 1uLL)
    {
      if (v28 >= v16)
      {
        v28 %= v16;
      }
    }

    else
    {
      v28 &= v22;
    }

    if (v28 != v17)
    {
      *(qword_27FEB8478 + 8 * v28) = v26;
      v24 = *v21;
    }
  }

  *v26 = v24;
  *v21 = 0;
  --qword_27FEB8490;
  operator delete(v21);
LABEL_74:
  *(this + 8) = 0;
  std::recursive_mutex::unlock(&stru_27FEB84A8);

  std::recursive_mutex::unlock(&stru_27FEB84A8);
}

void re::DebugProtocolInterconnect::sendDisconnect(re::DebugProtocolInterconnect *this, int a2)
{
  v3 = this;
  v18 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&stru_27FEB84A8);
  v4 = std::__hash_table<std::__hash_value_type<int,re::DebugProtocolLayer *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,re::DebugProtocolLayer *>>>::find<int>(v3);
  if (v4)
  {
    v5 = v4[3];
    if (v5)
    {
      LODWORD(v13) = a2;
      v6 = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(v5 + 96, &v13);
      if (v6)
      {
        v7 = *v6;
        if (*v6)
        {
          v8 = *re::networkLogObjects(v6);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(v5 + 32);
            v10 = v7[444];
            LODWORD(v13) = 67109632;
            HIDWORD(v13) = v9;
            v14 = 1024;
            v15 = v10;
            v16 = 1024;
            LODWORD(v17) = a2;
            _os_log_impl(&dword_26168F000, v8, OS_LOG_TYPE_DEFAULT, "[DebugLayer disconnected] local=%d remote=%d connection=%d", &v13, 0x14u);
          }

          v7[447] = 3;
          v11 = *(v5 + 24);
          if (v11)
          {
            (*(*v11 + 8))(v11, v5, v7, &v13);
            if (v13)
            {
              if (v14)
              {
                (*(*v13 + 40))();
              }
            }
          }
        }
      }
    }
  }

  std::recursive_mutex::unlock(&stru_27FEB84A8);
  v12 = *MEMORY[0x277D85DE8];
}

void re::DebugProtocolLayer::withlock_close(re *a1, _DWORD *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 8);
    v6 = a2[444];
    v7 = a2[446];
    LODWORD(v10) = 67109632;
    HIDWORD(v10) = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "[DebugLayer close] local=%d remote=%d connection=%d", &v10, 0x14u);
  }

  a2[447] = 3;
  re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::remove(a1 + 96, a2 + 446);
  v8 = a2 + 2;
  v10 = a2;
  re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::remove(a1 + 48, &v10);
  if (v10)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

void re::DebugProtocolLayer::send(re::_anonymous_namespace_ *a1, int *a2, uint64_t a3)
{
  std::recursive_mutex::lock(&stru_27FEB84A8);
  v7 = *a3;
  v8 = *(a3 + 8);
  while (v7 != v8)
  {
    v9 = atomic_load(*(v7 + 8));
    explicit = atomic_load_explicit((*a3 + 16), memory_order_acquire);
    if (v9)
    {
      v11 = explicit + 1;
      do
      {
        if (!--v11)
        {
          break;
        }

        v12 = *(a3 + 16);
        v13 = a2[444];
        if (v13 == -1)
        {
          re::DebugProtocolInterconnect::broadcastPacket(a2[442], v12, v9);
        }

        else
        {
          re::DebugProtocolInterconnect::sendPacket(a2[444], a2[446], v12, v9);
        }

        *(a1 + 43) += *(v9 + 24);
        ++*(a1 + 45);
        v14 = re::PacketQueue::dequeue(*a3);
        re::PacketPool::free(v14[7], v14);
        v9 = atomic_load(*(*a3 + 8));
      }

      while (v9);
    }

    v8 = *(a3 + 8);
    v7 = *a3 + 40;
    *a3 = v7;
    ++*(a3 + 16);
  }

  std::recursive_mutex::unlock(&stru_27FEB84A8);
}

void re::DebugProtocolInterconnect::broadcastPacket(int a1, uint64_t a2, uint64_t a3)
{
  std::recursive_mutex::lock(&stru_27FEB84A8);
  v6 = qword_27FEB8488;
  if (qword_27FEB8488)
  {
    do
    {
      v7 = v6[3];
      if (*(v7 + 32) != a1)
      {
        v8 = *(v7 + 80);
        if (v8)
        {
          v9 = 0;
          v10 = (*(v7 + 64) + 8);
          while (1)
          {
            v11 = *v10;
            v10 += 6;
            if (v11 < 0)
            {
              break;
            }

            if (v8 == ++v9)
            {
              LODWORD(v9) = *(v7 + 80);
              break;
            }
          }
        }

        else
        {
          LODWORD(v9) = 0;
        }

LABEL_19:
        while (v9 != v8)
        {
          v12 = *(*(v7 + 64) + 24 * v9 + 16);
          if (v12)
          {
            v13 = v12 + 2;
          }

          if (v12[444] == a1)
          {
            re::DebugProtocolLayer::withlock_receive(v7, v12[446], a2, *(a3 + 16), *(a3 + 24));
          }

          v14 = *(v7 + 80);
          if (v14 <= v9 + 1)
          {
            v14 = v9 + 1;
          }

          while (v14 - 1 != v9)
          {
            LODWORD(v9) = v9 + 1;
            if ((*(*(v7 + 64) + 24 * v9 + 8) & 0x80000000) != 0)
            {
              goto LABEL_19;
            }
          }

          LODWORD(v9) = v14;
        }
      }

      v6 = *v6;
    }

    while (v6);
  }

  std::recursive_mutex::unlock(&stru_27FEB84A8);
}

void re::DebugProtocolInterconnect::sendPacket(int a1, int a2, uint64_t a3, uint64_t a4)
{
  std::recursive_mutex::lock(&stru_27FEB84A8);
  v8 = std::__hash_table<std::__hash_value_type<int,re::DebugProtocolLayer *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,re::DebugProtocolLayer *>>>::find<int>(a1);
  if (v8)
  {
    v9 = v8[3];
    if (v9)
    {
      re::DebugProtocolLayer::withlock_receive(v9, a2, a3, *(a4 + 16), *(a4 + 24));
    }
  }

  std::recursive_mutex::unlock(&stru_27FEB84A8);
}

intptr_t re::DebugProtocolLayer::wakeup(dispatch_semaphore_t *this)
{
  dispatch_semaphore_signal(this[18]);
  v2 = this[19];

  return dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t re::DebugProtocolLayer::localAddresses(re::DebugProtocolLayer *this, re::Address *a2, uint64_t a3)
{
  if (a3)
  {
    re::DynamicString::operator=(a2, &v5);
    if (v5)
    {
      if (v6)
      {
        (*(*v5 + 40))();
      }
    }
  }

  return 1;
}

uint64_t re::anonymous namespace::formatAddress(re::_anonymous_namespace_ *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    re::DynamicString::format("debug://%d/%d", &v5, a2, a3);
    goto LABEL_5;
  }

  if (a2 != -1)
  {
    re::DynamicString::format("debug://%d", &v5, a2);
LABEL_5:
    re::DynamicString::DynamicString(this, &v5);
    result = v5;
    if (v5)
    {
      if (v6)
      {
        return (*(*v5 + 40))();
      }
    }

    return result;
  }

  return re::DebugProtocolLayer::broadcastAddress(this);
}

uint64_t re::DebugProtocolLayer::hostStats(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  *(a2 + 16) = *(a1 + 176);
  *a2 = v2;
  return 1;
}

void re::DebugProtocolLayer::open(re::DebugProtocolLayer *this@<X0>, const re::Address *a2@<X1>, void *a3@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&stru_27FEB84A8);
  v46 = 0;
  re::DebugProtocolLayer::broadcastAddress(buf);
  v7 = v50;
  v6 = v53;
  if (v50)
  {
    v8 = v53;
  }

  else
  {
    v8 = &v50 + 1;
  }

  if (*(a2 + 1))
  {
    v9 = *(a2 + 2);
  }

  else
  {
    v9 = a2 + 9;
  }

  v10 = strcmp(v8, v9);
  v11 = v10;
  if (v7)
  {
    v10 = *buf;
    if (*buf)
    {
      v10 = (*(**buf + 40))(*buf, v6);
    }
  }

  if (v11)
  {
    if (*(a2 + 1))
    {
      v12 = *(a2 + 2);
    }

    else
    {
      v12 = a2 + 9;
    }

    v10 = sscanf(v12, "debug://%d/%d", &v46 + 4, &v46);
    if (v10 < 1)
    {
      *a3 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    HIDWORD(v46) = -1;
  }

  v13 = HIDWORD(qword_27FEB84A0)++;
  re::make::shared::object<re::DebugProtocolHandle>(&v45);
  v14 = v45;
  v45[442] = *(this + 8);
  v14[443] = v13;
  v14[444] = HIDWORD(v46);
  v14[445] = 0;
  v14[446] = v13;
  v14[447] = 1;
  *buf = v14;
  v15 = v14 + 2;
  re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::add(this + 48, buf);
  if (*buf)
  {
  }

  *buf = v14;
  v16 = v14 + 2;
  v17 = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::addNew(this + 96, v14 + 446, buf);
  if (*buf)
  {
  }

  v18 = *re::networkLogObjects(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    v20 = *(this + 8);
    *buf = 67109632;
    *&buf[4] = v20;
    v50 = 1024;
    v51 = HIDWORD(v46);
    v52 = 1024;
    LODWORD(v53) = v13;
    _os_log_impl(&dword_26168F000, v18, OS_LOG_TYPE_DEFAULT, "[DebugLayer connect] local=%d remote=%d connection=%d", buf, 0x14u);
  }

  v21 = HIDWORD(v46);
  v22 = *(this + 8);
  std::recursive_mutex::lock(&stru_27FEB84A8);
  if (v21 == -1)
  {
    v43 = std::__hash_table<std::__hash_value_type<int,re::DebugProtocolLayer *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,re::DebugProtocolLayer *>>>::find<int>(v22);
    if (v43)
    {
      v43 = v43[3];
    }

    re::DebugProtocolLayer::withlock_connected(v43, v13);
  }

  else
  {
    v23 = std::__hash_table<std::__hash_value_type<int,re::DebugProtocolLayer *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,re::DebugProtocolLayer *>>>::find<int>(v21);
    if (v23 && (v24 = v23[3]) != 0)
    {
      v48 = v13;
      v25 = *re::networkLogObjects(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v24 + 32);
        *buf = 67109632;
        *&buf[4] = v26;
        v50 = 1024;
        v51 = v22;
        v52 = 1024;
        LODWORD(v53) = v13;
        _os_log_impl(&dword_26168F000, v25, OS_LOG_TYPE_DEFAULT, "[DebugLayer accepted] local=%d remote=%d connection=%d", buf, 0x14u);
      }

      re::make::shared::object<re::DebugProtocolHandle>(&v47);
      v27 = v47;
      v47[442] = *(v24 + 32);
      v27[443] = 0;
      v27[444] = v22;
      v27[445] = v13;
      v27[446] = v13;
      v27[447] = 2;
      *buf = v27;
      v28 = v27 + 2;
      re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::add(v24 + 48, buf);
      if (*buf)
      {
      }

      *buf = v27;
      v29 = v27 + 2;
      v30 = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::addNew(v24 + 96, &v48, buf);
      if (*buf)
      {
      }

      v31 = *(v24 + 24);
      if (v31)
      {
        (**v31)(v31, v24, v27, buf);
        v30 = *buf;
        if (*buf)
        {
          if (v50)
          {
            v30 = (*(**buf + 40))();
          }
        }
      }

      v32 = v48;
      std::recursive_mutex::lock(&stru_27FEB84A8);
      v33 = std::__hash_table<std::__hash_value_type<int,re::DebugProtocolLayer *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,re::DebugProtocolLayer *>>>::find<int>(v22);
      if (v33)
      {
        v34 = v33[3];
        if (v34)
        {
          re::DebugProtocolLayer::withlock_connected(v34, v32);
        }
      }

      std::recursive_mutex::unlock(&stru_27FEB84A8);
    }

    else
    {
      v35 = std::__hash_table<std::__hash_value_type<int,re::DebugProtocolLayer *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,re::DebugProtocolLayer *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,re::DebugProtocolLayer *>>>::find<int>(v22);
      if (v35)
      {
        v36 = v35[3];
        if (v36)
        {
          *buf = v13;
          v37 = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(v36 + 96, buf);
          if (v37)
          {
            v38 = *v37;
            if (*v37)
            {
              v39 = *re::networkLogObjects(v37);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = *(v36 + 32);
                v41 = *(v38 + 1776);
                *buf = 67109632;
                *&buf[4] = v40;
                v50 = 1024;
                v51 = v41;
                v52 = 1024;
                LODWORD(v53) = v13;
                _os_log_impl(&dword_26168F000, v39, OS_LOG_TYPE_DEFAULT, "[DebugLayer error] local=%d remote=%d connection=%d", buf, 0x14u);
              }

              if ((*(v38 + 1788) - 1) <= 2)
              {
                v42 = *(v36 + 24);
                if (v42)
                {
                  (*(*v42 + 16))(v42, v36, v38, 2);
                }

                *(v38 + 1788) = 4;
              }
            }
          }
        }
      }
    }
  }

  std::recursive_mutex::unlock(&stru_27FEB84A8);
  *a3 = v14;
LABEL_54:
  v44 = *MEMORY[0x277D85DE8];

  std::recursive_mutex::unlock(&stru_27FEB84A8);
}

void re::DebugProtocolLayer::close(re::_anonymous_namespace_ *a1, _DWORD *a2)
{
  std::recursive_mutex::lock(&stru_27FEB84A8);
  re::DebugProtocolLayer::withlock_close(a1, a2);

  std::recursive_mutex::unlock(&stru_27FEB84A8);
}

void re::DebugProtocolLayer::disconnect(uint64_t a1, _DWORD *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&stru_27FEB84A8);
  v5 = *re::networkLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = a2[444];
    v8 = a2[446];
    LODWORD(v16) = 67109632;
    HIDWORD(v16) = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    LODWORD(v20) = v8;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "[DebugLayer disconnect] local=%d remote=%d connection=%d", &v16, 0x14u);
  }

  if (a2[447] != 3)
  {
    v9 = 0;
    a2[447] = 3;
    v10 = a2 + 228;
    do
    {
      v11 = re::PacketQueue::dequeue(&v10[10 * v9]);
      if (v11)
      {
        v12 = v11;
        do
        {
          v13 = a2[444];
          if (v13 == -1)
          {
            re::DebugProtocolInterconnect::broadcastPacket(a2[442], v9, v12);
          }

          else
          {
            re::DebugProtocolInterconnect::sendPacket(a2[444], a2[446], v9, v12);
          }

          *(a1 + 172) += *(v12 + 6);
          ++*(a1 + 180);
          re::PacketPool::free(*(a1 + 40), v12);
          v11 = re::PacketQueue::dequeue(&v10[10 * v9]);
          v12 = v11;
        }

        while (v11);
      }

      ++v9;
    }

    while (v9 != 10);
    re::DebugProtocolInterconnect::sendDisconnect(a2[444], a2[446]);
    v14 = *(a1 + 24);
    if (v14)
    {
      (*(*v14 + 8))(v14, a1, a2, &v16);
      if (v16)
      {
        if (v17)
        {
          (*(*v16 + 40))();
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  std::recursive_mutex::unlock(&stru_27FEB84A8);
}

uint64_t re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::SharedPtr<re::ProtocolHandle>,re::SharedPtr<re::ProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::ProtocolHandle>>,re::Hash<re::SharedPtr<re::ProtocolHandle>>,re::EqualTo<re::SharedPtr<re::ProtocolHandle>>,true,false>::addAsMove(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

void re::DebugProtocolLayer::withlock_connected(re::DebugProtocolLayer *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  LODWORD(v11) = a2;
  v4 = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(this + 96, &v11);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = *re::networkLogObjects(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(this + 8);
        v8 = v5[444];
        LODWORD(v11) = 67109632;
        HIDWORD(v11) = v7;
        v12 = 1024;
        v13 = v8;
        v14 = 1024;
        LODWORD(v15) = a2;
        _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "[DebugLayer connected] local=%d remote=%d connection=%d", &v11, 0x14u);
      }

      if (v5[447] == 1)
      {
        v5[447] = 2;
        v9 = *(this + 3);
        if (v9)
        {
          (**v9)(v9, this, v5, &v11);
          if (v11)
          {
            if (v12)
            {
              (*(*v11 + 40))();
            }
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t re::DebugProtocolLayer::withlock_receive(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a2;
  result = re::HashTable<int,re::SharedPtr<re::ProtocolHandle>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(a1 + 96, &v8);
  if (result && *result)
  {
    *(a1 + 168) += a5;
    ++*(a1 + 176);
    result = *(a1 + 24);
    if (result)
    {
      return (*(*result + 24))(result, a1);
    }
  }

  return result;
}