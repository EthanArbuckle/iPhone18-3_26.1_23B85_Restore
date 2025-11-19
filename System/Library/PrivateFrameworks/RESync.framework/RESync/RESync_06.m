void re::TransportCommandsThreadedProtocol::finish(re::TransportCommandsThreadedProtocol *this)
{
  atomic_store(0, this + 128);
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 104))(v2);
  }

  std::thread::join(this + 17);
  v3 = *(this + 1);
  if (v3)
  {

    *(this + 1) = 0;
  }
}

uint64_t re::TransportCommandsThreadedProtocol::update(re::TransportCommandsThreadedProtocol *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

re::TransportCommandsDispatch *re::TransportCommandsDispatch::TransportCommandsDispatch(re::TransportCommandsDispatch *this)
{
  *this = &unk_2873F5848;
  *(this + 8) = 0;
  *(this + 2) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create("com.apple.re.networking.network", v3);
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v6 = *(this + 2);
  *(this + 2) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  dispatch_release(v5);
  return this;
}

void re::TransportCommandsDispatch::async(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v5 = re::globalAllocators(a1);
    v6 = (*(*v5[2] + 32))(v5[2], 40, 8);
    v6[3] = *(a2 + 24);
    v6[4] = 0;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v6, a2);
    v7 = *(a1 + 16);

    dispatch_async_f(v7, v6, re::TransportCommandsDispatch::async(re::Function<void ()(void)> &&)::$_0::__invoke);
  }
}

void re::TransportCommandsDispatch::finish(re::TransportCommandsDispatch *this)
{
  *(this + 8) = 1;
  dispatch_async_and_wait(*(this + 2), &__block_literal_global_1);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {

    dispatch_release(v2);
  }
}

void re::TransportCommandsDispatch::~TransportCommandsDispatch(re::TransportCommandsDispatch *this)
{
  *this = &unk_2873F5848;
  v1 = *(this + 2);
  if (v1)
  {
    dispatch_release(v1);
  }
}

{
  *this = &unk_2873F5848;
  v1 = *(this + 2);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x266708EC0);
}

double re::Queue<re::Function<void ()(void)>>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      if (a1[2])
      {
        v4 = 0;
        do
        {
          re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1[5] + 40 * ((v4 + a1[3]) % a1[1]));
          ++v4;
        }

        while (v4 != a1[2]);
        v2 = *a1;
        v3 = a1[5];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

uint64_t re::TransportCommandsDispatch::async(re::Function<void ()(void)> &&)::$_0::__invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = re::globalAllocators(v2)[2];
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
  v4 = *(*v3 + 40);

  return v4(v3, a1);
}

uint64_t re::Queue<re::Function<void ()(void)>>::enqueue(_anonymous_namespace_ *this, uint64_t a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 + 1 >= v5)
  {
    re::Queue<re::Function<void ()(void)>>::growCapacity(this, v4 + 1);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  v6 = *(this + 5) + 40 * ((*(this + 3) + v4) % v5);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v6, a2);
  ++*(this + 2);
  ++*(this + 8);
  return result;
}

void *re::Queue<re::Function<void ()(void)>>::growCapacity(void *this, unint64_t a2)
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

      return re::Queue<re::Function<void ()(void)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::Function<void ()(void)>>::setCapacity(v4, v3);
      v4[2] = 0;
      v4[3] = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

void *re::Queue<re::Function<void ()(void)>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::Function<void ()(void)>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 40 * ((v9 + v5[3]) % v5[1]);
          v12 = &v8[5 * v10];
          *(v12 + 24) = *(v11 + 24);
          *(v12 + 32) = 0;
          re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v12, v11);
          re::FunctionBase<24ul,void ()(void)>::destroyCallable(v11);
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::TransportCommandsThreadedProtocol::*)(void),re::TransportCommandsThreadedProtocol*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::TransportCommandsThreadedProtocol::*)(void),re::TransportCommandsThreadedProtocol*>>::~unique_ptr[abi:nn200100](&v8);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::TransportCommandsThreadedProtocol::*)(void),re::TransportCommandsThreadedProtocol*>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x266708EC0](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x266708D30]();
    MEMORY[0x266708EC0](v3, 0x20C4093837F09);
  }

  return a1;
}

re::SyncObject *re::SyncObject::SyncObject(re::SyncObject *this, re::Allocator *a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *v10 = &unk_2873F58F8;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 104) = v10;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0x10000;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 176) = 0;
  *(v10 + 216) = 0;
  *(v10 + 184) = 0;
  *(v10 + 192) = 0;
  *(v10 + 208) = 0;
  *(v10 + 200) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  re::FixedArray<re::SyncObjectState>::init<>(v10 + 40, a4, a5);
  return this;
}

void re::SyncObject::~SyncObject(re::SyncObject *this)
{
  *this = &unk_2873F58F8;
  re::SyncObject::unbindFromParent(this);
  v2 = *(this + 25);
  if (v2)
  {
    v3 = *(this + 27);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      *(v5 + 80) = 0;
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(this + 14);
  *(this + 25) = 0;
  ++*(this + 52);
  if (v6)
  {
    v7 = *(this + 15);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  _Block_release(*(this + 15));
  *(this + 14) = 0;
  *(this + 15) = 0;
  v8 = *(this + 23);
  if (v8)
  {
    if (*(this + 27))
    {
      (*(*v8 + 40))(v8);
    }

    *(this + 27) = 0;
    *(this + 24) = 0;
    *(this + 25) = 0;
    *(this + 23) = 0;
    ++*(this + 52);
  }

  v10 = this + 96;
  v9 = *(this + 12);
  if (v9)
  {
    re::SyncView::removeObject(v9, this + 96);
    if (*v10)
    {

      *v10 = 0;
    }
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  re::FixedArray<re::SyncObjectState>::deinit(this + 5);
  re::FixedArray<re::SyncObjectState>::deinit(this + 5);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::SyncObject::~SyncObject(this);

  JUMPOUT(0x266708EC0);
}

void *re::SyncObject::unbindFromParent(void *this)
{
  v1 = this[10];
  if (v1)
  {
    this[10] = 0;
    v2 = v1[25];
    if (v2)
    {
      v3 = 0;
      while (*(v1[27] + 8 * v3) != this)
      {
        if (v2 == ++v3)
        {
          return this;
        }
      }

      return re::DynamicArray<re::Allocator const*>::removeStableAt(v1 + 23, v3);
    }
  }

  return this;
}

unint64_t re::SyncObject::latestStateHandle(re::SyncObject *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(this + 9);
  if (*(this + 8) == v1)
  {
    v2 = -1;
  }

  else
  {
    v3 = *(this + 6);
    if (v3 <= ((v3 - 1) & (v1 - 1)))
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v2 = (v3 - 1) & (v1 - 1) | (*(*(this + 7) + 96 * ((v3 - 1) & (v1 - 1)) + 80) << 32);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t re::SyncObject::addState(re::SyncObject *this, __int16 a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = v3 - *(this + 8);
  v5 = *(this + 6);
  v6 = v3 + 1;
  if (v4 == v5)
  {
    *(this + 8) = v6 - v4;
  }

  *(this + 9) = v6;
  v7 = (v5 - 1) & v3;
  if (v5 <= v7)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(this + 7) + 96 * v7;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 84) = a2;
  *(result + 88) = a3;
  ++*(result + 80);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL re::SyncObject::takeOverLatestState(re::SyncObject *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v2 != v1)
  {
    v3 = *(this + 6);
    v4 = v3 - 1;
    v5 = (v3 - 1) & (v2 - 1);
    if (v3 <= v5)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v6 = v2 + 1;
      if (v2 - v1 == v3)
      {
        *(this + 8) = v6 - v3;
      }

      v7 = *(this + 7);
      *(this + 9) = v6;
      if (v3 > (v4 & v2))
      {
        v8 = v7 + 96 * v5;
        v9 = *(v8 + 8);
        v10 = v7 + 96 * (v4 & v2);
        *(v10 + 24) = *(v8 + 24);
        *(v10 + 8) = v9;
        re::DynamicArray<unsigned char>::operator=(v10 + 40, (v8 + 40));
        v11 = *(v8 + 80);
        *(v10 + 80) = v11;
        *(v10 + 88) = 0;
        *(v10 + 84) = 0;
        *(v10 + 80) = v11 + 1;
        goto LABEL_7;
      }
    }

    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  result = v2 != v1;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncObject::findBaseline(re::SyncObject *this, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = *(this + 8) - v3;
  if (v4)
  {
    v5 = *(this + 6);
    v6 = v5 - 1;
    v7 = v3 - 1;
    while (1)
    {
      if (v5 <= (v7 & v6))
      {
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v8 = *(this + 7) + 96 * (v7 & v6);
      if (*(v8 + 84) == a2 && *(v8 + 88) == a3)
      {
        break;
      }

      --v7;
      if (__CFADD__(v4++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

__n128 re::SyncObject::bindWithParent(re::SyncObject *this, re::SyncObject *a2)
{
  if (*(this + 10) != a2)
  {
    v12[3] = v2;
    v12[4] = v3;
    *(this + 10) = a2;
    v6 = this + 8;
    v12[0] = this;
    re::DynamicArray<re::Allocator const*>::add(a2 + 23, v12);

    v7 = *(this + 10);
    v8 = this;
    if (v7)
    {
      v9 = this;
      do
      {
        v8 = v9;
        v9 = v7;
        if (*(*(*(v8 + 11) + 16) + 73))
        {
          break;
        }

        v7 = *(v7 + 10);
        v8 = v9;
      }

      while (v7);
    }

    result = *(v8 + 136);
    v11 = *(v8 + 152);
    *(this + 42) = *(v8 + 42);
    *(this + 152) = v11;
    *(this + 136) = result;
  }

  return result;
}

unint64_t re::SyncObject::getLatestState(re::SyncObject *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(this + 9);
  if (*(this + 8) == v1)
  {
    result = 0;
  }

  else
  {
    v3 = *(this + 6);
    v4 = (v3 - 1) & (v1 - 1);
    if (v3 <= v4)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = *(this + 7) + 96 * v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t re::SyncObject::getOldestState(re::SyncObject *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(this + 8);
  if (v1 == *(this + 9))
  {
    result = 0;
  }

  else
  {
    v3 = *(this + 6);
    v4 = (v3 - 1) & v1;
    if (v3 <= v4)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = *(this + 7) + 96 * v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncObject::getState(re::SyncObject *this, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  if (v2 <= a2 || (v3 = *(this + 8), v4 = *(this + 9), v5 = v4 - v3, v4 == v3))
  {
LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  v8 = *(this + 7);
  v9 = v8 + 96 * a2;
  if (v5 < v2)
  {
    v10 = v3 & (v2 - 1);
    if (v2 <= v10)
    {
      v14 = *(this + 6);
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v11 = (v4 - 1) & (v2 - 1);
      if (v2 > v11)
      {
        v12 = v8 + 96 * v10;
        if (v10 > v11)
        {
          v13 = -v2;
        }

        else
        {
          v13 = 0;
        }

        if (-1431655765 * ((v9 - (v12 + 96 * v13)) >> 5) >= v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_12:
  if (*(v9 + 80) == HIDWORD(a2))
  {
    result = v9;
  }

  else
  {
    result = 0;
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncObject::fromPeerID(re::SyncObject *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(this + 9);
  if (*(this + 8) == v1)
  {
    result = 0;
  }

  else
  {
    v3 = *(this + 6);
    v4 = (v3 - 1) & (v1 - 1);
    if (v3 <= v4)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = *(*(this + 7) + 96 * v4 + 88);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::SyncObject::handOff(re::SyncObject *this, uint64_t a2)
{
  v2 = *(this + 10);
  v3 = this;
  if (v2)
  {
    v4 = this;
    do
    {
      v3 = v4;
      v4 = v2;
      if (*(*(*(v3 + 11) + 16) + 73))
      {
        break;
      }

      v2 = *(v2 + 10);
      v3 = v4;
    }

    while (v2);
  }

  if (*(v3 + 20) || !*(this + 20) && *(this + 17))
  {
    return 0;
  }

  v6 = *(this + 84) + 1;
  *(this + 17) = a2;
  *(this + 72) = v6;
  return 1;
}

BOOL re::SyncObject::isStateDataChanged(re::SyncObject *this, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = *(this + 8) - v3;
  v5 = v3 - 1;
  while (v4)
  {
    v6 = *(this + 6);
    v7 = (v6 - 1) & v5;
    if (v6 <= v7)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(this + 7) + 96 * v7;
    ++v4;
    --v5;
    if (*(v8 + 88) == a3)
    {
      v9 = *(v8 + 84);
      if (v9 >= a2 && v9 - a2 < 0x8000)
      {
        result = 0;
        goto LABEL_11;
      }

      if (v9 < a2)
      {
        result = a2 - v9 < 0x8000;
        goto LABEL_11;
      }

      break;
    }
  }

  result = 1;
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL re::SyncObject::shouldAcceptUpdate(re::SyncObject *this, uint64_t a2, unsigned int a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    do
    {
      v4 = this;
      this = v3;
      if (*(*(*(v4 + 11) + 16) + 73))
      {
        break;
      }

      v3 = *(v3 + 10);
      v4 = this;
    }

    while (v3);
  }

  else
  {
    v4 = this;
  }

  v5 = *(v4 + 20);
  v6 = *(v4 + 84);
  if (v5 == a2)
  {
    if (v6 > a3 || a3 - v6 >= 0x8000)
    {
      return v6 > a3 && ((v6 - a3) & 0xFFFF8000) != 0;
    }

    else
    {
      return 1;
    }
  }

  else if (v6 < a3 || v6 - a3 >= 0x8000)
  {
    return v6 >= a3 || a3 - v6 < 0x8000;
  }

  else
  {
    return 0;
  }
}

void re::SyncObject::setViewDirectly(re::SyncObject *this, re::SyncView *a2)
{
  if (!a2 || (*(this + 128) & 4) == 0)
  {
    v3 = (this + 96);
    v2 = *(this + 12);
    if (v2 != a2)
    {
      if (a2)
      {
        re::SyncView::transferObject(a2, v3);
      }

      else
      {
        re::SyncView::removeObject(v2, v3);
      }
    }
  }
}

void *re::SyncObject::setUserData(uint64_t a1, uint64_t a2, const void *a3)
{
  if (*(a1 + 112))
  {
    v6 = *(a1 + 120);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  _Block_release(*(a1 + 120));
  *(a1 + 112) = a2;
  result = _Block_copy(a3);
  *(a1 + 120) = result;
  return result;
}

void *re::FixedArray<re::SyncObjectState>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 96 * v2;
      v5 = result[2] + 40;
      do
      {
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v5);
        v5 += 96;
        v4 -= 96;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::FixedArray<re::SyncObjectState>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 96 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    v7 = result;
    do
    {
      *(result + 40) = 0uLL;
      *(result + 56) = 0uLL;
      *(result + 72) = 0uLL;
      *(result + 24) = 0uLL;
      *(result + 8) = 0uLL;
      *result = &unk_2873F59F8;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 84) = 0;
      *(result + 88) = 0;
      result += 96;
      v7 += 96;
      --v6;
    }

    while (v6);
  }

  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = &unk_2873F59F8;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 84) = 0;
  *(result + 88) = 0;
  return result;
}

double RESyncCreateSyncObjectReadContext(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 80, 8);
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 68) = 0x7FFFFFFF;
  return result;
}

re *RESyncDestroySyncObjectReadContext(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3.n128_f64[0] = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1 + 4);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

uint64_t RESyncCreateSyncObjectReadContextNoAlloc(uint64_t result, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    v3 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      result = 0;
      goto LABEL_4;
    }

    v4 = 136315394;
    v5 = "RESyncCreateSyncObjectReadContextNoAlloc";
    v6 = 2080;
    v7 = "bytes != __null";
LABEL_10:
    _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    goto LABEL_8;
  }

  if (a2 <= 0x4F)
  {
    v3 = *re::networkLogObjects(result);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v4 = 136315394;
    v5 = "RESyncCreateSyncObjectReadContextNoAlloc";
    v6 = 2080;
    v7 = "size >= sizeof(SyncObjectReadContext)";
    goto LABEL_10;
  }

  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 68) = 0x7FFFFFFF;
LABEL_4:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncDestroySyncObjectReadContextNoDealloc(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *MEMORY[0x277D85DE8];
    v2 = (a1 + 32);

    re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "RESyncDestroySyncObjectReadContextNoDealloc";
      v7 = 2080;
      v8 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v5, 0x16u);
    }

    v4 = *MEMORY[0x277D85DE8];
  }
}

BOOL RESyncAddSyncObjectReadContextEntry(re *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a2;
  if (!a1)
  {
    v10 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v14 = "RESyncAddSyncObjectReadContextEntry";
    v15 = 2080;
    v16 = "context != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
    goto LABEL_13;
  }

  if (!a2)
  {
    v10 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v14 = "RESyncAddSyncObjectReadContextEntry";
    v15 = 2080;
    v16 = "entry != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
LABEL_13:
    v7 = v10;
    v8 = 22;
    goto LABEL_6;
  }

  v3 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 32, &v11, &v12);
  if (*v3 == v12)
  {
    result = 1;
    goto LABEL_8;
  }

  v4 = *re::networkLogObjects(v3);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134217984;
    v14 = v11;
    v6 = "RESyncAddSyncObjectReadContextEntry: Failed to add entry using id=%llu, possible duplicate!";
    v7 = v4;
    v8 = 12;
LABEL_6:
    _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    result = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncGetSyncObjectReadContextEntry(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "RESyncGetSyncObjectReadContextEntry";
      v10 = 2080;
      v11 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v7);
  if (!v2)
  {
    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "RESyncGetSyncObjectReadContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
    }

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = *v2;
LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL RESyncRemoveSyncObjectReadContextEntry(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v9 = "RESyncRemoveSyncObjectReadContextEntry";
    v10 = 2080;
    v11 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    goto LABEL_6;
  }

  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 32, &v7);
  if (!v2)
  {
    v4 = *re::networkLogObjects(v2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_7;
    }

    *buf = 134217984;
    v9 = v7;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "RESyncRemoveSyncObjectReadContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = 1;
LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncObjectReadContextGetSession(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *a1;
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncObjectReadContextGetSession";
      v6 = 2080;
      v7 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncObjectReadContextGetSourcePeerID(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 8);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncObjectReadContextGetSourcePeerID";
      v6 = 2080;
      v7 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncObjectReadContextGetSyncableGuid(uint64_t a1)
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
      v5 = "RESyncObjectReadContextGetSyncableGuid";
      v6 = 2080;
      v7 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL RESyncObjectReadContextSupportsProtocolLevel(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = (a2 & ~*(a1 + 24)) == 0;
  }

  else
  {
    v4 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v5 = 136315394;
      v6 = "RESyncObjectReadContextSupportsProtocolLevel";
      v7 = 2080;
      v8 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v4, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v5, 0x16u);
      result = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncObjectReadContextIsLocalSession(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    (*(**a1 + 32))(v5);
    v1 = *(*v5 + 2219);
  }

  else
  {
    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 136315394;
      *&v5[4] = "RESyncObjectReadContextIsLocalSession";
      v6 = 2080;
      v7 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v4, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", v5, 0x16u);
    }

    v1 = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1 & 1;
}

double re::Packet::swap(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LODWORD(v3) = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  result = *(a2 + 28);
  v5 = *(a1 + 28);
  *(a1 + 28) = result;
  *(a2 + 28) = v5;
  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  return result;
}

void re::PacketPool::free(os_unfair_lock_s *this, re::Packet *a2)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 7) + *(a2 + 4) - v4;
  *(a2 + 2) = v4;
  *(a2 + 6) = 0;
  *(a2 + 7) = v5;
  os_unfair_lock_lock(this + 64);
  v6 = *(a2 + 7);
  if (v6 <= this[70]._os_unfair_lock_opaque && (v7 = this[67]._os_unfair_lock_opaque + v6, v7 <= this[71]._os_unfair_lock_opaque))
  {
    v10 = *&this[44]._os_unfair_lock_opaque;
    *&this[44]._os_unfair_lock_opaque = a2;
    *(a2 + 6) = v10;
    ++this[68]._os_unfair_lock_opaque;
    this[67]._os_unfair_lock_opaque = v7;
  }

  else
  {
    --this[66]._os_unfair_lock_opaque;
    this[65]._os_unfair_lock_opaque -= v6;
    v8 = (*(**&this[6]._os_unfair_lock_opaque + 40))(*&this[6]._os_unfair_lock_opaque, *(a2 + 1));
    v9 = re::globalAllocators(v8);
    (*(*v9[2] + 40))(v9[2], a2);
  }

  os_unfair_lock_unlock(this + 64);
}

re::PacketQueue *re::PacketQueue::PacketQueue(re::PacketQueue *this)
{
  *this = 0;
  *(this + 1) = 0;
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 128);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *this = v3;
  *(this + 1) = v3;
  atomic_store(0, this + 6);
  atomic_store(0, this + 2);
  atomic_store(0, this + 4);
  return this;
}

void re::PacketQueue::~PacketQueue(re::PacketQueue *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
  }

  *this = 0;
  *(this + 1) = 0;
}

uint64_t re::PacketQueue::dequeue(re::PacketQueue *this)
{
  explicit = atomic_load_explicit(*(this + 1), memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  re::Packet::swap(*(this + 1), explicit);
  result = *(this + 1);
  *(this + 1) = explicit;
  atomic_fetch_add_explicit(this + 6, -*(result + 24), memory_order_release);
  atomic_fetch_add_explicit(this + 4, -*(result + 28), memory_order_release);
  atomic_fetch_add_explicit(this + 2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  atomic_store(0, result);
  return result;
}

void re::PacketPool::~PacketPool(re::PacketPool *this)
{
  *this = &unk_2873F5940;
  for (i = *(this + 22); i; i = *(this + 22))
  {
    *(this + 22) = *(i + 48);
    *(i + 48) = 0;
    --*(this + 68);
    *(this + 67) -= *(i + 28);
    v3 = (*(**(this + 3) + 40))(*(this + 3), *(i + 8));
    v4 = re::globalAllocators(v3);
    (*(*v4[2] + 40))(v4[2], i);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 3) = 0;
  *(this + 36) = 0;
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::PacketPool::~PacketPool(this);

  JUMPOUT(0x266708EB0);
}

void re::PacketPool::make(re::PacketPool *this@<X0>, re::MallocZoneAllocator *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = re::globalAllocators(this);
  v8 = (*(*v7[2] + 32))(v7[2], 384, 128);
  ArcSharedObject::ArcSharedObject(v8, 0);
  *(v8 + 24) = 0;
  *v8 = &unk_2873F5940;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 168) = 0;
  *(v8 + 256) = 0;
  *(v8 + 264) = 0;
  *(v8 + 272) = 0;
  *(v8 + 276) = 0x10000000002000;
  *(v8 + 284) = 0x1000000;
  *(v8 + 288) = 0u;
  *(v8 + 304) = 0u;
  v16 = "";
  if (a2)
  {
    LOBYTE(v16) = a2;
  }

  *(v8 + 320) = 0;
  re::InlineString<32ul>::assignf((v8 + 288), v9, v10, v11, v12, v13, v14, v15, v16);
  if (!this)
  {
    operator new();
  }

  *(v8 + 24) = this;
  re::Defaults::intValue("network.packetpool.minPacketSize", v17, v23);
  if (v23[0])
  {
    v19 = v24;
  }

  else
  {
    v19 = (v8 + 276);
  }

  *(v8 + 276) = *v19;
  re::Defaults::intValue("network.packetpool.maxFreePacketSize", v18, v23);
  if (v23[0])
  {
    v21 = v24;
  }

  else
  {
    v21 = (v8 + 280);
  }

  *(v8 + 280) = *v21;
  re::Defaults::intValue("network.packetpool.maxFreePacketPoolMemory", v20, v23);
  v22 = (v8 + 284);
  if (v23[0])
  {
    v22 = v24;
  }

  *(v8 + 284) = *v22;
  *a3 = v8;
}

void re::PacketPool::emitAriadneSignpost(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 64);
  if (re::internal::enableSignposts(0, 0))
  {
    os_unfair_lock_opaque = this[68]._os_unfair_lock_opaque;
    v3 = this[66]._os_unfair_lock_opaque;
    v4 = this[67]._os_unfair_lock_opaque;
    v5 = this[65]._os_unfair_lock_opaque;
    kdebug_trace();
  }

  os_unfair_lock_unlock(this + 64);
}

char *re::PacketPool::allocate(re::PacketPool *this, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 64);
  v5 = this + 128;
  while (1)
  {
    v6 = v5;
    v5 = *(v5 + 6);
    if (!v5)
    {
      break;
    }

    LODWORD(v7) = *(v5 + 7);
    if (v7 >= a2)
    {
      *(v6 + 6) = *(v5 + 6);
      *(v5 + 6) = 0;
      --*(this + 68);
      *(this + 67) -= v7;
      goto LABEL_10;
    }
  }

  v8 = *(this + 69);
  if (v8 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v8;
  }

  v9 = (*(**(this + 3) + 32))(*(this + 3), v7, 0);
  if (!v9)
  {
    re::internal::assertLog(0xA, v10, "assertion failure: '%s' (%s:line %i) [Network] Failed to allocate packet buffer of size %u(%u), totalCount=%d, totalBytes=%u, availableCount=%d, availableBytes=%u", "false", "allocate", 188, v7, a2, *(this + 66), *(this + 65), *(this + 68), *(this + 67));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = re::globalAllocators(v9);
  v4 = (*(*v12[2] + 32))(v12[2], 128, 128);
  v5 = v4;
  *v4 = 0;
  *(v4 + 8) = v11;
  *(v4 + 16) = v11;
  *(v4 + 24) = 0;
  *(v4 + 28) = v7;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = this;
  *(this + 260) = vadd_s32(*(this + 260), (v7 | 0x100000000));
LABEL_10:
  if (v7 > *(this + 70))
  {
    v13 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v5 + 7);
      v15 = *(this + 66);
      v16 = *(this + 65);
      v17 = *(this + 68);
      v18 = *(this + 67);
      *buf = 67110144;
      v22 = v14;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_26168F000, v13, OS_LOG_TYPE_DEFAULT, "Large packet buffer allocated: %u, totalCount=%d, totalBytes=%u, availableCount=%d, availableBytes=%u", buf, 0x20u);
    }
  }

  os_unfair_lock_unlock(this + 64);
  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t re::SessionParticipant::SessionParticipant(uint64_t a1, uint64_t a2, int a3, char *a4, size_t a5)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_2873F5988;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v11 = re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 72) = a3;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 0u;
  re::DynamicString::setCapacity((a1 + 80), 0);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a4 && !((a5 - 1) >> 22))
  {
    re::DynamicArray<unsigned char>::copy((a1 + 112), 0, a4, a5);
  }

  return a1;
}

uint64_t re::SessionParticipant::SessionParticipant(uint64_t a1, uint64_t a2, uint64_t a3, const re::DynamicString *a4, int a5, char *a6, size_t a7)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_2873F5988;
  *(a1 + 32) = a3;
  v14 = re::DynamicString::DynamicString((a1 + 40), a4);
  *(a1 + 72) = a5;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 0u;
  re::DynamicString::setCapacity((a1 + 80), 0);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a6 && !((a7 - 1) >> 22))
  {
    re::DynamicArray<unsigned char>::copy((a1 + 112), 0, a6, a7);
  }

  return a1;
}

void re::SessionParticipant::~SessionParticipant(re::SessionParticipant *this)
{
  *this = &unk_2873F5988;
  v2 = *(this + 19);
  if (v2)
  {

    *(this + 19) = 0;
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 112);
  re::DynamicString::deinit((this + 80));
  re::DynamicString::deinit((this + 40));
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F5988;
  v2 = *(this + 19);
  if (v2)
  {

    *(this + 19) = 0;
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 112);
  re::DynamicString::deinit((this + 80));
  re::DynamicString::deinit((this + 40));
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

BOOL re::BitWriter::rollbackTo(uint64_t a1, unint64_t a2)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  if (HIDWORD(a2))
  {
    v2 = a2 + 1;
  }

  else
  {
    v2 = a2;
  }

  v3 = *(a1 + 16);
  *(a1 + 20) = v2 > v3;
  if (HIDWORD(a2) && v2 <= v3)
  {
    *(a1 + 32) = (0xFFuLL >> (8 - BYTE4(a2))) & *(*(a1 + 8) + a2);
  }

  return v2 <= v3;
}

uint64_t re::BitWriter::writeUInt32Bits(uint64_t this, unsigned int a2, unsigned int a3)
{
  if ((*(this + 20) & 1) == 0)
  {
    v5 = this;
    v6 = *(this + 16);
    v7 = *(this + 24);
    v8 = *(this + 28);
    v9 = 8 * (v6 - v7) - v8;
    v10 = a3 >= v9;
    v11 = a3 - v9;
    if (v11 != 0 && v10 && (this = (*(*this + 16))(this, (v11 >> 3) + 1), v6 = *(v5 + 16), v7 = *(v5 + 24), v8 = *(v5 + 28), 8 * (v6 - v7) - v8 < a3))
    {
      *(v5 + 24) = v6;
      *(v5 + 28) = 0;
      *(v5 + 20) = 1;
    }

    else
    {
      v12 = (a2 << v8) | *(v5 + 32);
      *(v5 + 32) = v12;
      v13 = v8 + a3;
      *(v5 + 28) = v13;
      if (v13 >= 8)
      {
        do
        {
          v14 = *(v5 + 8);
          v15 = *(v5 + 24);
          *(v5 + 24) = v15 + 1;
          *(v14 + v15) = v12;
          v12 = *(v5 + 32) >> 8;
          *(v5 + 32) = v12;
          v13 = *(v5 + 28) - 8;
          *(v5 + 28) = v13;
        }

        while (v13 > 7);
        v7 = *(v5 + 24);
        v6 = *(v5 + 16);
      }

      if (v7 < v6)
      {
        *(*(v5 + 8) + v7) = (-1 << v13) & *(*(v5 + 8) + v7) | v12 & ~(-1 << v13);
      }
    }
  }

  return this;
}

uint64_t re::BitWriter::writeUInt64Bits(re::BitWriter *this, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  if (a3 >= 0x21)
  {
    re::BitWriter::writeUInt32Bits(this, a2, 0x20u);
    a2 = HIDWORD(v4);
    a3 = v3 - 32;
    this = v5;
  }

  return re::BitWriter::writeUInt32Bits(this, a2, a3);
}

uint64_t re::BitWriter::writeUInt32At(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if ((a2 + 4) > *(a1 + 16))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Marker is out of bounds", "marker.byteOffset + 4 <= m_dataSize", "writeUInt32At", 84);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(a1 + 24);
    re::BitWriter::rollbackTo(a1, a2);
    re::BitWriter::writeUInt32Bits(a1, a3, 0x20u);

    return re::BitWriter::rollbackTo(a1, v5);
  }

  return result;
}

uint64_t re::BitWriter::writeData(re::BitWriter *this, const void *a2, uint64_t a3)
{
  v3 = a3;
  if (!a2 && a3)
  {
    re::internal::assertLog(5, 0, "assertion failure: '%s' (%s:line %i) data==null, dataSize==%u", "!(data == nullptr && dataSize > 0)", "writeData", 117, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    if (re::BitWriter::bytesLeft(this, a2) < a3)
    {
      v7 = re::BitWriter::bytesLeft(this, v6);
      (*(*this + 16))(this, v3 - v7);
      if (re::BitWriter::bytesLeft(this, v8) < v3)
      {
        *(this + 6) = *(this + 4);
        *(this + 7) = 0;
        *(this + 20) = 1;
        return (*(this + 20) & 1) == 0;
      }
    }

    re::BitWriter::alignToByte(this);
    v10 = *(this + 1);
    if (v10)
    {
      if (a2)
      {
        if (v3)
        {
          memcpy((v10 + *(this + 6)), a2, v3);
          *(this + 6) += v3;
          *(this + 4) = 0;
        }
      }

      return (*(this + 20) & 1) == 0;
    }
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) memcpy destination data is null", "m_data != nullptr", "operator()", 120);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::BitWriter::bytesLeft(re::BitWriter *this, uint64_t a2)
{
  v2 = *(this + 4);
  v3 = *(this + 6);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v6 = *(this + 7);
    if (v5 != 0 && v4)
    {
      if (v6)
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }
    }

    else if (v6)
    {
      goto LABEL_10;
    }

    return v5 + v6;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Writer is in inconsistent state", "m_dataSize >= m_byteOffset", "bytesLeft", 171);
  _os_crash();
  __break(1u);
LABEL_10:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Writer is in inconsistent state", "m_byteOffset < m_dataSize || m_bitOffset == 0", "bytesLeft", 172);
  result = _os_crash();
  __break(1u);
  return result;
}

_DWORD *re::BitWriter::alignToByte(_DWORD *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  v4 = 8 - v3;
  if (8 * (this[4] - v2) != 8 && 8 - v3 >= (8 * (this[4] - v2) - v3) && (this = (*(*this + 16))(this, ((8 - 8 * (this[4] - v2)) >> 3) + 1), v5 = v1[4], v2 = v1[6], v3 = v1[7], 8 * (v5 - v2) - v3 < v4))
  {
    v1[6] = v5;
    v1[7] = 0;
    *(v1 + 20) = 1;
  }

  else
  {
    if (v3)
    {
      ++v2;
    }

    v1[6] = v2;
    v1[7] = 0;
    *(v1 + 4) = 0;
  }

  return this;
}

void *re::BitWriter::copyDataTo(re::BitWriter *this, void *__dst, size_t a3)
{
  LODWORD(v5) = *(this + 6);
  if (*(this + 7))
  {
    v5 = (v5 + 1);
  }

  else
  {
    v5 = v5;
  }

  if (v5 < a3)
  {
    re::internal::assertLog(4, __dst, "assertion failure: '%s' (%s:line %i) ", "bytesToCopy <= size()", "copyDataTo", 204, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = *(this + 1);

    return memcpy(__dst, v6, a3);
  }

  return result;
}

void re::DynamicBitWriter::grow(re::DynamicBitWriter *this, unsigned int a2)
{
  v3 = *(this + 7);
  v4 = v3 + a2;
  v5 = 2 * v3;
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  re::DynamicArray<unsigned char>::resize(this + 40, v6);
  *(this + 1) = *(this + 9);
  *(this + 4) = *(this + 7);
}

uint64_t re::BackedBitWriter::grow(uint64_t this, int a2)
{
  v2 = *(this + 40);
  if (v2)
  {
    v3 = this;
    v4 = *(this + 16) + a2;
    this = v2(*(this + 48), *(this + 8));
    *(v3 + 8) = this;
    *(v3 + 16) = v4;
  }

  return this;
}

void re::DynamicBitWriter::~DynamicBitWriter(re::DynamicBitWriter *this)
{
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 40);
}

{
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 40);

  JUMPOUT(0x266708EC0);
}

double re::NetworkSyncManager::NetworkSyncManager(re::NetworkSyncManager *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5A88;
  *(this + 29) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 31) = 0;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 42) = 0;
  *(this + 344) = 0u;
  *(this + 90) = 0;
  *(this + 51) = 0;
  *(this + 104) = 0;
  *(this + 100) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 55) = 0;
  *(this + 112) = 0;
  *(this + 424) = 0u;
  *(this + 62) = 0;
  *(this + 126) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 122) = 0;
  *(this + 66) = 0;
  *(this + 134) = 0;
  *(this + 32) = 0u;
  *(this + 73) = 0;
  *(this + 148) = 0;
  *(this + 144) = 0;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 156) = 0;
  *(this + 77) = 0;
  *(this + 600) = 0u;
  *(this + 84) = 0;
  *(this + 170) = 0;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 166) = 0;
  *(this + 43) = 0u;
  *(this + 178) = 0;
  *(this + 88) = 0;
  *(this + 95) = 0;
  *(this + 192) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 188) = 0;
  *(this + 776) = 0u;
  *(this + 200) = 0;
  *(this + 99) = 0;
  *(this + 106) = 0;
  *(this + 214) = 0;
  *(this + 210) = 0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  *(this + 22) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 32) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 46) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  return result;
}

void re::NetworkSyncManager::~NetworkSyncManager(re::NetworkSyncManager *this)
{
  *this = &unk_2873F5A88;
  if (*(this + 48) == 1)
  {
    re::NetworkSyncManager::stopSync(this);
    while (1)
    {
      v2 = *(this + 15);
      if (!v2)
      {
        break;
      }

      re::NetworkSyncManager::removeSession(this, *(*(this + 17) + 8 * v2 - 8));
    }

    v3 = *(this + 19);
    if (v3)
    {

      *(this + 19) = 0;
    }

    if (*(this + 53))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 424);
    }

    if (*(this + 42))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 336);
    }

    if (*(this + 97))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 776);
    }

    if (*(this + 86))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 688);
    }

    if (*(this + 75))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 600);
    }

    if (*(this + 64))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 512);
    }

    if (*(this + 31))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 248);
    }

    v4 = (this + 160);
    if (*(this + 20))
    {
      v4 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v4);
    }

    *(this + 48) = 0;
    v5 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: uninitialized", v17, 2u);
    }
  }

  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 97);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 86);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 75);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 64);
  if (*(this + 53))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 424);
  }

  v6 = *(this + 58);
  if (v6)
  {
    if (*(this + 62))
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 62) = 0;
    *(this + 59) = 0;
    *(this + 60) = 0;
    *(this + 58) = 0;
    ++*(this + 122);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 424);
  if (*(this + 42))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 336);
  }

  v7 = *(this + 47);
  if (v7)
  {
    if (*(this + 51))
    {
      (*(*v7 + 40))(v7);
    }

    *(this + 51) = 0;
    *(this + 48) = 0;
    *(this + 49) = 0;
    *(this + 47) = 0;
    ++*(this + 100);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 336);
  re::Event<re::Session>::~Event(this + 248);
  re::Event<re::Session>::~Event(this + 160);
  v8 = *(this + 19);
  if (v8)
  {

    *(this + 19) = 0;
  }

  v9 = *(this + 18);
  if (v9)
  {

    *(this + 18) = 0;
  }

  v10 = *(this + 13);
  if (v10)
  {
    if (*(this + 17))
    {
      (*(*v10 + 40))(v10);
    }

    *(this + 17) = 0;
    *(this + 14) = 0;
    *(this + 15) = 0;
    *(this + 13) = 0;
    ++*(this + 32);
  }

  v11 = *(this + 8);
  if (v11)
  {
    v12 = *(this + 12);
    if (v12)
    {
      v13 = *(this + 10);
      if (v13)
      {
        v14 = 8 * v13;
        do
        {
          if (*v12)
          {

            *v12 = 0;
          }

          v12 += 8;
          v14 -= 8;
        }

        while (v14);
        v11 = *(this + 8);
        v12 = *(this + 12);
      }

      (*(*v11 + 40))(v11, v12);
    }

    *(this + 12) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = 0;
    ++*(this + 22);
  }

  v15 = *(this + 7);
  if (v15)
  {

    *(this + 7) = 0;
  }

  v16 = *(this + 4);
  if (v16)
  {

    *(this + 4) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::NetworkSyncManager::~NetworkSyncManager(this);

  JUMPOUT(0x266708EC0);
}

void re::NetworkSyncManager::init(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *(a1 + 24) = v5;
  re::SharedPtr<re::SyncObject>::reset((a1 + 32), v4);
  *(a1 + 40) = a2[2];
  v7 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 160), 0);
  ++*(a1 + 184);
  v8 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 248), 0);
  ++*(a1 + 272);
  v9 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 512), 0);
  ++*(a1 + 536);
  v10 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 600), 0);
  ++*(a1 + 624);
  v11 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 688), 0);
  ++*(a1 + 712);
  v12 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 776), 0);
  ++*(a1 + 800);
  v13 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 336), 0);
  ++*(a1 + 360);
  v14 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 424), 0);
  ++*(a1 + 448);
  v15 = re::make::shared::object<re::RoutingTable>(v14, &v25);
  v16 = *(a1 + 144);
  *(a1 + 144) = v25;
  v25 = v16;
  if (v16)
  {
  }

  v17 = re::globalAllocators(v15);
  v18 = (*(*v17[2] + 32))(v17[2], 208, 8);
  v19 = re::SyncViewManager::SyncViewManager(v18);
  v20 = *(a1 + 152);
  *(a1 + 152) = v19;
  if (v20)
  {
  }

  re::SharedPtr<re::SyncObject>::reset((a1 + 56), a2[1]);
  v22 = *(a1 + 32);
  if (v22)
  {

    *(a1 + 32) = 0;
  }

  *(a1 + 48) = 1;
  v23 = *re::networkLogObjects(v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_26168F000, v23, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: initialized", v24, 2u);
  }
}

uint64_t re::NetworkSyncManager::startSyncWithSession(re *a1, re::Session **a2)
{
  v63 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 1) == 0)
  {
    v32 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v33 = "NetworkSyncManager: Not initialized.";
      v34 = v32;
      v35 = 2;
LABEL_61:
      _os_log_error_impl(&dword_26168F000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (!*a2 || (*(*a2 + 2272) & 1) == 0)
  {
    v36 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v48 = *a2;
      *buf = 134217984;
      *&buf[4] = v48;
      v33 = "NetworkSyncManager: Invalid session object (%p).";
LABEL_60:
      v34 = v36;
      v35 = 12;
      goto LABEL_61;
    }

LABEL_36:
    v30 = 0;
    goto LABEL_37;
  }

  v3 = a1;
  v4 = *(a1 + 10);
  if (v4)
  {
    v5 = *(a1 + 12);
    v6 = 8 * v4;
    while (1)
    {
      a1 = (*(**v5 + 32))(buf);
      v7 = *a2;
      v8 = *buf;
      if (*buf)
      {
      }

      if (v8 == v7)
      {
        break;
      }

      v5 += 8;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    v36 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    v47 = *a2;
    *buf = 134217984;
    *&buf[4] = v47;
    v33 = "NetworkSyncManager: Session already used to sync (%p).";
    goto LABEL_60;
  }

LABEL_10:
  v9 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2;
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&dword_26168F000, v9, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: Starting sync with session (%p).", buf, 0xCu);
  }

  v11 = *a2;
  v12 = *(v3 + 18);
  v52 = v12;
  if (v12)
  {
    v13 = (v12 + 8);
  }

  re::Session::setRoutingTable(v11, &v52);
  if (v52)
  {

    v52 = 0;
  }

  v14 = *a2;
  *buf = v3;
  *&buf[8] = re::NetworkSyncManager::sessionDataDidArrive;
  v54 = 0;
  v55 = re::Event<re::Session>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke;
  re::Event<re::Session>::addSubscription(v14 + 404, buf);
  *buf = v3;
  *&buf[8] = re::NetworkSyncManager::sessionDidStop;
  v54 = 0;
  v55 = re::Event<re::Session,re::SessionError>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription(v14 + 52, buf);
  v16 = re::NetworkFeatureFlags::enableSharedAppSpecialization(v15);
  v17 = *a2;
  if (v16 && *(v17 + 2219) == 1)
  {
    v18 = re::globalAllocators(v16);
    v19 = (*(*v18[2] + 32))(v18[2], 552, 8);
    bzero(v19, 0x228uLL);
    ArcSharedObject::ArcSharedObject(v19, 0);
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    *(v19 + 12) = 0;
    v19[12] = 0;
    *(v19 + 26) = 0;
    *(v19 + 7) = 0u;
    *(v19 + 9) = 0u;
    *(v19 + 22) = 0;
    v19[15] = 0;
    v19[16] = 0;
    v19[14] = 0;
    *(v19 + 34) = 0;
    v19[23] = 0;
    *(v19 + 48) = 0;
    *(v19 + 9) = 0u;
    *(v19 + 10) = 0u;
    *(v19 + 44) = 0;
    v19[25] = 0;
    v19[26] = 0;
    *(v19 + 56) = 0;
    v19[27] = 0;
    v19[34] = 0;
    *(v19 + 70) = 0;
    *(v19 + 29) = 0u;
    *(v19 + 31) = 0u;
    *(v19 + 66) = 0;
    v19[37] = 0;
    v19[38] = 0;
    *(v19 + 78) = 0;
    v19[36] = 0;
    v19[45] = 0;
    *(v19 + 92) = 0;
    *(v19 + 20) = 0u;
    *(v19 + 21) = 0u;
    *(v19 + 88) = 0;
    *v19 = &unk_2873F4880;
    v19[47] = 0;
    v19[48] = 30;
    v19[49] = 0xFFFFFFFF00010000;
    *(v19 + 400) = 0;
    *(v19 + 51) = 0u;
    *(v19 + 53) = 0u;
    *(v19 + 110) = 500;
    *(v19 + 224) = 0;
    v19[57] = 0;
    v19[58] = 0;
    *(v19 + 120) = 0;
    v19[59] = 0;
    v19[68] = 0;
    *(v19 + 134) = 0;
    *(v19 + 63) = 0u;
    *(v19 + 65) = 0u;
    *(v19 + 61) = 0u;
    *buf = xmmword_261711760;
    v54 = 0xFFFFFFFF00010000;
    v21 = *a2;
    LOBYTE(v55) = *(*a2 + 2216);
    v56 = v21;
    v22 = v21 + 8;
    v23 = *(v3 + 7);
    v57 = v23;
    if (v23)
    {
      v24 = (v23 + 8);
    }

    v25 = *(v3 + 19);
    v58 = v25;
    if (v25)
    {
      v26 = (v25 + 8);
    }

    v59 = v3;
    v27 = *a2;
    v60 = *(*a2 + 556);
    v28 = *(v27 + 557);
    if (v28)
    {
      LODWORD(v54) = v28;
      HIDWORD(v54) = v28;
    }

    re::SharedAppSyncManager::init(v19, buf);
    v51 = v19;
    v29 = v19 + 1;
    v30 = (*(*v3 + 96))(v3, &v51);
    if (v51)
    {

      v51 = 0;
    }

    if (v58)
    {

      v58 = 0;
    }

    if (v57)
    {

      v57 = 0;
    }

    if (v56)
    {
    }

    v31 = v19 + 1;
    goto LABEL_56;
  }

  *buf = xmmword_261711760;
  v54 = 0xFFFFFFFF00010000;
  LOBYTE(v55) = *(v17 + 2216);
  v56 = v17;
  v39 = v17 + 8;
  v40 = *(v3 + 7);
  v57 = v40;
  if (v40)
  {
    v41 = (v40 + 8);
  }

  v42 = *(v3 + 19);
  v58 = v42;
  if (v42)
  {
    v43 = (v42 + 8);
  }

  v59 = v3;
  v44 = *a2;
  LOBYTE(v60) = *(*a2 + 2223);
  v61 = *(v44 + 556);
  v62 = *(v44 + 2237);
  v45 = *(v44 + 557);
  if (v45)
  {
    LODWORD(v54) = v45;
    HIDWORD(v54) = v45;
  }

  re::make::shared::object<re::SyncObjectManager,re::SyncObjectManager::Config &>(buf, &v50);
  v49 = v50;
  if (v50)
  {
    v46 = (v50 + 8);
  }

  v30 = (*(*v3 + 96))(v3, &v49);
  if (v49)
  {

    v49 = 0;
  }

  if (v50)
  {
  }

  if (v58)
  {

    v58 = 0;
  }

  if (v57)
  {

    v57 = 0;
  }

  if (v56)
  {
    v31 = v56 + 8;
LABEL_56:
  }

LABEL_37:
  v37 = *MEMORY[0x277D85DE8];
  return v30;
}

void re::NetworkSyncManager::createSessionAndStartSync(re *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v6 = *(a2 + 16);
  v18 = *a2;
  v19 = v6;
  v7 = *(a2 + 32);
  v20 = v7;
  if (v7)
  {
    a1 = (v7 + 8);
  }

  v21 = *(a2 + 40);
  v8 = *(a2 + 64);
  v22 = *(a2 + 56);
  v23 = v8;
  if (v8)
  {
    a1 = (v8 + 8);
  }

  v24[0] = *(a2 + 72);
  *(v24 + 12) = *(a2 + 84);
  v9 = *(a2 + 104);
  v25 = v9;
  if (v9)
  {
    a1 = (v9 + 8);
  }

  v10 = *(a2 + 112);
  v26 = v10;
  if (v10)
  {
    a1 = (v10 + 8);
  }

  v27 = *(a2 + 120);
  v11 = *(v4 + 3);
  *&v18 = *(v4 + 5);
  *&v19 = v11;
  re::make::shared::object<re::Session>(a1, &v17);
  v12 = re::Session::init(v17, &v18);
  if (v12)
  {
    v15 = v17;
    if (v17)
    {
      v13 = (v17 + 8);
    }

    (*(*v4 + 88))(v4, &v15);
    if (v15)
    {

      v15 = 0;
    }

    *a3 = v17;
  }

  else
  {
    v14 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v14, OS_LOG_TYPE_ERROR, "Failed to init session with provided config.", buf, 2u);
    }

    *a3 = 0;
    if (v17)
    {
    }
  }

  if (v26)
  {

    v26 = 0;
  }

  if (v25)
  {

    v25 = 0;
  }

  if (v23)
  {

    v23 = 0;
  }

  if (v20)
  {
  }
}

uint64_t re::NetworkSyncManager::startSync(uint64_t a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(**a2 + 64))();
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*(a1 + 64))
      {
        v8 = 2 * v5;
        v9 = v5 == 0;
        v10 = 8;
        if (!v9)
        {
          v10 = v8;
        }

        if (v10 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity((a1 + 64), v11);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity((a1 + 64), v7);
        ++*(a1 + 88);
      }
    }

    v6 = *(a1 + 80);
  }

  v12 = *a2;
  *(*(a1 + 96) + 8 * v6) = *a2;
  v13 = (v12 + 8);
  v14 = *a2;
  ++*(a1 + 80);
  ++*(a1 + 88);
  (*(*v14 + 32))(&v23);
  re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::raise(a1 + 160, a1);
  if (v23)
  {

    v23 = 0;
  }

  v16 = *re::networkLogObjects(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 32))(&v22);
    v17 = v22;
    (*(**a2 + 32))(&v21);
    v18 = re::Session::peerID(v21);
    *buf = 134218240;
    v25 = v17;
    v26 = 2048;
    v27 = v18;
    _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: Added new session: %p (peerID=%llu)", buf, 0x16u);
    if (v21)
    {
    }

    if (v22)
    {
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

void re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::raise(uint64_t a1, uint64_t a2)
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

void re::NetworkSyncManager::beforeFrameUpdate(re::RoutingTable **this)
{
  re::RoutingTable::update(this[18]);
  v2 = this[7];
  if (v2)
  {
    re::SyncObjectTombstoneInfo::update((v2 + 120));
  }

  v3 = this[10];
  if (v3)
  {
    v4 = this[12];
    v5 = 8 * v3;
    do
    {
      (*(**v4 + 32))(&v6);
      (*(*v6 + 48))(v6);
      if (v6)
      {
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
  }
}

void re::NetworkSyncManager::afterFrameUpdate(re::NetworkSyncManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = 8 * v2;
    do
    {
      (*(**v3 + 32))(&v6);
      (*(*v6 + 56))(v6);
      if (v6)
      {
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  while (1)
  {
    v5 = *(this + 15);
    if (!v5)
    {
      break;
    }

    re::NetworkSyncManager::removeSession(this, *(*(this + 17) + 8 * v5 - 8));
  }
}

uint64_t re::NetworkSyncManager::sessionDataDidArrive(re::NetworkSyncManager *this, re::Session *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(this + 104);
  *(this + 104) = v3 + 1;
  if (*(this + 44))
  {
    v4 = 0;
    do
    {
      if ((*(*(this + 46) + 32 * v4 + 24))(this) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 42, v4);
      }

      else
      {
        ++v4;
      }
    }

    while (v4 < *(this + 44));
    v3 = *(this + 104) - 1;
  }

  *(this + 104) = v3;
  if (!v3)
  {
    v5 = *(this + 49);
    if (v5)
    {
      v6 = 0;
      for (i = 0; i != v5; ++i)
      {
        v8 = *(this + 49);
        if (v8 <= i)
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
          v23 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v9 = *(this + 51) + v6;
        v10 = *(v9 + 32);
        v11 = *(v9 + 16);
        v14[0] = *v9;
        v14[1] = v11;
        v15 = v10;
        if (LOBYTE(v14[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(this + 336, v14 + 1, v24);
          if ((v24[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((this + 336), v14 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(this + 336, v14 + 1, v24);
          if (LOBYTE(v24[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 42, *(&v24[0] + 1));
          }
        }

        v6 += 40;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::NetworkSyncManager::sessionDidStop(re *a1, re::Session *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: session stopped (%p) with error: %d.", &v9, 0x12u);
  }

  re::NetworkSyncManager::removeSessionDeferred(a1, a2);
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void re::NetworkSyncManager::removeSessionDeferred(re::NetworkSyncManager *this, re::Session *a2)
{
  v3 = this;
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(this + 17);
  v5 = *(this + 15);
  v6 = v4;
  if (v5)
  {
    v7 = 8 * v5;
    v6 = *(this + 17);
    while (*v6 != a2)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  if (v6 == &v4[v5])
  {
LABEL_7:
    v8 = *(this + 14);
    if (v5 >= v8)
    {
      v9 = v5 + 1;
      if (v8 < v5 + 1)
      {
        if (*(this + 13))
        {
          v10 = 2 * v8;
          if (!v8)
          {
            v10 = 8;
          }

          if (v10 <= v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v10;
          }

          this = re::DynamicArray<re::Allocator const*>::setCapacity(this + 13, v11);
        }

        else
        {
          this = re::DynamicArray<re::Allocator const*>::setCapacity(v3 + 13, v9);
          ++*(v3 + 32);
        }
      }

      v5 = *(v3 + 15);
      v4 = *(v3 + 17);
    }

    v4[v5] = a2;
    *(v3 + 15) = v5 + 1;
    ++*(v3 + 32);
    v12 = *re::networkLogObjects(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = a2;
      _os_log_impl(&dword_26168F000, v12, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: session scheduled (%p) for removal.", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void re::NetworkSyncManager::requestOwnership(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (!*a2)
  {
    v14 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v15 = "Requesting ownership for invalid object. Request is ignored.";
    v16 = v14;
    v17 = 2;
LABEL_28:
    _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_29;
  }

  v12 = *(v6 + 80);
  if (v12)
  {
    do
    {
      v13 = v6;
      v6 = v12;
      if (*(*(*(v13 + 88) + 16) + 73))
      {
        break;
      }

      v12 = *(v12 + 80);
      v13 = v6;
    }

    while (v12);
  }

  else
  {
    v13 = *a2;
  }

  if (!*(v13 + 160))
  {
    v28 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v29 = *(*a2 + 24);
    *buf = 134217984;
    *&buf[4] = v29;
    v15 = "Requesting ownership for already owned object '%llu'. Request is ignored.";
    v16 = v28;
    v17 = 12;
    goto LABEL_28;
  }

  v18 = *(a1 + 10);
  if (v18)
  {
    v19 = *(a1 + 12);
    v20 = &v19[v18];
    do
    {
      (*(**v19 + 32))(buf);
      v21 = *a2;
      v22 = *(*a2 + 80);
      if (v22)
      {
        do
        {
          v23 = v21;
          v21 = v22;
          if (*(*(*(v23 + 88) + 16) + 73))
          {
            break;
          }

          v22 = *(v22 + 80);
          v23 = v21;
        }

        while (v22);
      }

      else
      {
        v23 = *a2;
      }

      hasPeerID = re::Session::hasPeerID(*buf, *(v23 + 160));
      if (*buf)
      {
      }

      if (hasPeerID)
      {
        v25 = *v19;
        v26 = *a2;
        v31 = v26;
        if (v26)
        {
          v27 = (v26 + 8);
        }

        (*(*v25 + 104))(v25, &v31, a3, a4, a5, a6);
        if (v31)
        {

          v31 = 0;
        }
      }

      ++v19;
    }

    while (v19 != v20);
  }

LABEL_29:
  v30 = *MEMORY[0x277D85DE8];
}

double re::NetworkSyncManager::adjustTimeForSender(re::NetworkSyncManager *this, double a2, uint64_t a3)
{
  v4 = *(this + 10);
  if (v4)
  {
    v6 = *(this + 12);
    v7 = 8 * v4;
    while (1)
    {
      (*(**v6 + 32))(&v10);
      hasPeerID = re::Session::hasPeerID(v10, a3);
      if (v10)
      {
      }

      if (hasPeerID)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return a2;
      }
    }

    return (*(**v6 + 112))(*v6, a3, a2);
  }

  return a2;
}

void re::NetworkSyncManager::removeSession(re::NetworkSyncManager *this, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  v5 = *(this + 10);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = v4 + 8 * v5;
    while (1)
    {
      (*(**v4 + 32))(buf);
      v8 = *buf;
      if (*buf)
      {
      }

      if (v8 == a2)
      {
        break;
      }

      v4 += 8;
      v6 -= 8;
      if (!v6)
      {
        v4 = v7;
        break;
      }
    }

    v9 = v4;
    v4 = *(this + 12);
    v5 = *(this + 10);
  }

  else
  {
    v9 = *(this + 12);
  }

  if (v9 != v4 + 8 * v5)
  {
    (*(**v9 + 32))(&v33);
    re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::raise(this + 248, this);
    if (v33)
    {

      v33 = 0;
    }

    if (*(a2 + 2272) == 1)
    {
      if (*(a2 + 1632))
      {
        v11 = 0;
        do
        {
          v12 = (*(a2 + 1648) + 32 * v11);
          if (*v12 == this)
          {
            if (!*(a2 + 1696))
            {
              v10 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a2 + 1616), v11);
              continue;
            }

            buf[0] = 0;
            v13 = *v12;
            *&buf[24] = *(v12 + 1);
            *&buf[8] = v13;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a2 + 1656), buf);
          }

          ++v11;
        }

        while (v11 < *(a2 + 1632));
      }

      if (*(a2 + 224))
      {
        v14 = 0;
        do
        {
          v15 = (*(a2 + 240) + 32 * v14);
          if (*v15 == this)
          {
            if (!*(a2 + 288))
            {
              v10 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a2 + 208), v14);
              continue;
            }

            buf[0] = 0;
            v16 = *v15;
            *&buf[24] = *(v15 + 1);
            *&buf[8] = v16;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a2 + 248), buf);
          }

          ++v14;
        }

        while (v14 < *(a2 + 224));
      }
    }

    v17 = *(this + 12);
    v18 = v9 - v17;
    v19 = (v9 - v17) >> 3;
    v20 = *(this + 10);
    if (v20 <= v18 >> 3)
    {
      v34 = 0;
      v44 = 0u;
      v45 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v35 = 136315906;
      v36 = "removeAt";
      v37 = 1024;
      v38 = 931;
      v39 = 2048;
      v40 = v19;
      v41 = 2048;
      v42 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_51;
    }

    v21 = v20 - 1;
    if (v20 - 1 > v19)
    {
      v22 = *(v17 + v18);
      v23 = v17 + 8 * v20;
      *(v17 + v18) = *(v23 - 8);
      *(v23 - 8) = v22;
      v17 = *(this + 12);
    }

    v24 = v17 + 8 * v20;
    v25 = *(v24 - 8);
    if (v25)
    {

      *(v24 - 8) = 0;
      v21 = *(this + 10) - 1;
    }

    *(this + 10) = v21;
    ++*(this + 22);
    v26 = *re::networkLogObjects(v10);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_26168F000, v26, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: session removed (%p).", buf, 0xCu);
    }
  }

  v27 = *(this + 17);
  v20 = *(this + 15);
  v28 = v27;
  if (v20)
  {
    v29 = 8 * v20;
    v28 = *(this + 17);
    while (*v28 != a2)
    {
      ++v28;
      v29 -= 8;
      if (!v29)
      {
        goto LABEL_49;
      }
    }
  }

  v30 = &v27[v20];
  if (v28 != v30)
  {
    v31 = v28 - v27;
    a2 = v31 >> 3;
    if (v20 > v31 >> 3)
    {
      if (v20 - 1 > a2)
      {
        *(v27 + v31) = *(v30 - 1);
      }

      *(this + 15) = v20 - 1;
      ++*(this + 32);
      goto LABEL_49;
    }

LABEL_51:
    v34 = 0;
    v44 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "removeAt";
    v37 = 1024;
    v38 = 931;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_49:
  v32 = *MEMORY[0x277D85DE8];
}

void re::NetworkSyncManager::stopSyncWithSession(re::NetworkSyncManager *a1, re::Session **a2)
{
  v4 = *a2;
  if (v4)
  {

    re::NetworkSyncManager::removeSessionDeferred(a1, v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "Invalid session object passed to stopSyncWithSession", v6, 2u);
    }
  }
}

void re::NetworkSyncManager::stopSync(re::NetworkSyncManager *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v3 = *(this + 12);
    v4 = 8 * v1;
    do
    {
      (*(**v3 + 32))(&v5);
      re::NetworkSyncManager::removeSessionDeferred(this, v5);
      if (v5)
      {
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }
}

uint64_t re::NetworkSyncManager::localPeerID(re::NetworkSyncManager *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

unint64_t *re::NetworkSyncManager::getRoute@<X0>(re::NetworkSyncManager *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = *(this + 18);
  if (result)
  {
    return re::RoutingTable::getRoute(result, a2, a3);
  }

  *a3 = 0;
  return result;
}

uint64_t re::make::shared::object<re::SyncObjectManager,re::SyncObjectManager::Config &>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 664, 8);
  result = re::SyncObjectManager::SyncObjectManager(v5, a1);
  *a2 = result;
  return result;
}

uint64_t re::Event<re::Session>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t re::Event<re::Session,re::SessionError>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke(uint64_t a1, void *a2, unsigned int *a3)
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

uint64_t re::SyncAckedStateBuffer::addAcked(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  result = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::tryGet(a1 + 24, a2);
  if (result)
  {
    v9 = *(result + 8);
    if (v9 <= a4 && a4 - v9 < 0x8000 || v9 > a4 && v9 - a4 >= 0x8000)
    {
      *result = a3;
      *(result + 8) = a4;
    }
  }

  else
  {
    *&v10 = a3;
    WORD4(v10) = a4;
    return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(a1 + 24, a2, &v10);
  }

  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::SyncAckedStateBuffer::AckData>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 40 * HIDWORD(v9) + 16;
  }
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(a1, v5);
}

uint64_t *re::SyncAckedStateBuffer::getLatestAckedState(uint64_t a1, re::SyncObject **a2)
{
  result = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::tryGet(a1 + 24, a2);
  if (result)
  {
    v4 = result;
    result = re::SyncObject::getState(*a2, *result);
    if (result)
    {
      v5 = *(v4 + 4);
    }
  }

  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::SyncAckedStateBuffer::AckData>(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a3;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  *(v7 + 16) = *a4;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v26, v9, v8);
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
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(v18 + 16) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 8);
                *(v18 - 8) = 0;
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 40;
            }

            while (v17 < v16);
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v26);
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
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 40 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 40 * v5) = *(v6 + 40 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 40 * v9) = *(*(a1 + 16) + 40 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::SyncObjectViewer::objectEnteredView(re *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v4 = v3[10];
  v5 = v3;
  if (v4)
  {
    v6 = *(a2 + 8);
    do
    {
      v5 = v6;
      v6 = v4;
      if (*(*(v5[11] + 16) + 73))
      {
        break;
      }

      v4 = v4[10];
      v5 = v6;
    }

    while (v4);
  }

  if (*(v5 + 170) == 1)
  {
    v7 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 7);
      v15 = *(v3[11] + 16);
      v16 = *(v15 + 48);
      v17 = *(v15 + 56);
      v18 = v15 + 49;
      if (v16)
      {
        v18 = v17;
      }

      v19 = v3[3];
      *buf = 134218498;
      *&buf[4] = v14;
      v22 = 2080;
      v23 = v18;
      v24 = 2048;
      v25 = v19;
      _os_log_debug_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEBUG, "Peer %llu became aware of %s Guid=%llu", buf, 0x20u);
      v8 = a1 + 64;
      *buf = v3;
      v9 = v3 == 0;
      goto LABEL_9;
    }
  }

  v8 = a1 + 64;
  *buf = v3;
  if (v3)
  {
    v9 = 0;
LABEL_9:
    v10 = v3 + 1;
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:
  v20 = 0;
  v11 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(v8, buf, &v20);
  if (*buf)
  {
  }

  if (*v11)
  {
    if (v9)
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v8, v3);
    }

    else
    {
      v12 = v3 + 1;
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v8, v3);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = *a2;
  *a2 = 0;
  ++*(a1 + 40);
  return result;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(v11, a1, a2, v3 ^ (v3 >> 31));
  v4 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 32 * v13);
    v7 = *v6 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v7;
    }

    else
    {
      *(v5 + 32 * v14) = *(v5 + 32 * v14) & 0x80000000 | v7;
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
}

void re::SyncObjectViewer::objectExitedView(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v4 = [v3 + 1 retainCount];
  if (v4 <= 0)
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) ", "object->retainCount() > 0", "objectExitedView", 38);
    _os_crash();
    __break(1u);
  }

  v6 = v3[10];
  v7 = v3;
  if (v6)
  {
    v8 = v3;
    do
    {
      v7 = v8;
      v8 = v6;
      if (*(*(v7[11] + 16) + 73))
      {
        break;
      }

      v6 = v6[10];
      v7 = v8;
    }

    while (v6);
  }

  if (*(v7 + 170) == 1)
  {
    v9 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 56);
      v17 = *(v3[11] + 16);
      v18 = *(v17 + 48);
      v19 = *(v17 + 56);
      v20 = v17 + 49;
      if (v18)
      {
        v20 = v19;
      }

      v21 = v3[3];
      *buf = 134218498;
      *&buf[4] = v16;
      v24 = 2080;
      v25 = v20;
      v26 = 2048;
      v27 = v21;
      _os_log_debug_impl(&dword_26168F000, v9, OS_LOG_TYPE_DEBUG, "Peer %llu lost awareness of %s Guid=%llu", buf, 0x20u);
      v10 = a1 + 64;
      *buf = v3;
      v11 = v3 == 0;
      goto LABEL_10;
    }
  }

  v10 = a1 + 64;
  *buf = v3;
  if (v3)
  {
    v11 = 0;
LABEL_10:
    v12 = v3 + 1;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  v22 = 1;
  v13 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(v10, buf, &v22);
  if (*buf)
  {
  }

  if (*v13 != 1)
  {
    if (v11)
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v10, v3);
    }

    else
    {
      v14 = v3 + 1;
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v10, v3);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void re::SyncObjectViewer::~SyncObjectViewer(re::SyncObjectViewer *this)
{
  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);

  re::SyncViewer::~SyncViewer(this);
}

{
  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);
  re::SyncViewer::~SyncViewer(this);

  JUMPOUT(0x266708EC0);
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 8);
                *(v18 - 8) = 0;
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
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

void *RESyncWriteContextMarkDestroyed(void *result)
{
  *(*result + 16) |= 2u;
  *(**result + 128) |= 4u;
  v1 = result[1];
  *(v1 + 84) = 0;
  *(v1 + 88) = 0;
  ++*(v1 + 80);
  return result;
}

uint64_t re::SyncPacker::packCommit(void *a1, unsigned __int8 *a2, re::BitWriter *this, uint64_t a4, unint64_t a5)
{
  v8 = a4;
  v10 = a2;
  v203 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 32) & 0x20) != 0)
  {
    v5 = v191;
    re::BitWriter::alignToByte(this);
    v16 = re::BitWriter::bytesLeft(this, v15);
    LODWORD(v17) = *(this + 6);
    if (*(this + 7))
    {
      v17 = (v17 + 1);
    }

    else
    {
      v17 = v17;
    }

    v178 = this;
    v179 = v17;
    v180 = 0;
    v18 = *(this + 1);
    v6 = &unk_2873F6A68;
    *v191 = &unk_2873F6A68;
    *&v191[8] = v18 + v17;
    *&v191[16] = 0;
    *&v191[20] = v16;
    v192 = &v178;
    v193 = re::SyncPacker::packCommit(re::SyncCommit const&,re::BitWriter &,re::SyncObjectWriteContext const&,unsigned long)::$_0::__invoke;
    v194 = 0u;
    v195 = 0u;
    re::DynamicString::setCapacity(&v194, 0);
    v196 = 6;
    v197 = 0;
    *v191 = &unk_2873F6BA8;
    v180 = v191;
    if (*(v10 + 6) < 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = *&v191[16];
      re::snapshot::EncoderOPACK::beginObject(v191);
      v20 = *&v191[16];
      if (*&v191[16] < *&v191[20])
      {
        ++*&v191[16];
        *(*&v191[8] + v20) = 9;
LABEL_13:
        re::snapshot::EncoderOPACK::writeInteger(v191, *v10);
        if ((*v10 & 2) != 0)
        {
          v21 = *&v191[16];
          if (*&v191[16] >= *&v191[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v191, 2);
          }

          else
          {
            ++*&v191[16];
            *(*&v191[8] + v21) = 10;
          }

          re::snapshot::EncoderOPACK::writeInteger(v191, *(v10 + 2));
        }

        re::snapshot::EncoderOPACK::endObject(v191);
        re::snapshot::EncoderOPACK::beginObject(v191);
        if (*&v191[16] >= *&v191[20] && (re::snapshot::BufferEncoder::grow(v191, *&v191[16] + 1) & 1) == 0)
        {
          v14 = 0;
          *&v191[16] = v5;
          goto LABEL_204;
        }

        v167 = v6;
        if (*(v10 + 6) <= a5)
        {
          v169 = 0;
          v176 = 0;
          goto LABEL_203;
        }

        v176 = 0;
        v169 = 0;
        while (1)
        {
          v22 = *(v10 + 8) + 24 * a5;
          v23 = *v22;
          v24 = *(*(*v22 + 88) + 16);
          v25 = *(v24 + 128);
          if (v25)
          {
            if (!(*(v25 + 16))(v25, v8))
            {
              ++v169;
              goto LABEL_98;
            }

            v23 = *v22;
            v24 = *(*(*v22 + 88) + 16);
          }

          v171 = *&v191[16];
          v26 = (*(**a1 + 32))(*a1, *(v23 + 24), *(v24 + 32));
          re::snapshot::EncoderOPACK::writeInteger(v191, v26);
          v27 = a1[1];
          if (!v27 || ((v28 = *(*(v23 + 88) + 16), v29 = *(v28 + 104), v30 = *(v28 + 120), v29) ? (v31 = v30 == 0) : (v31 = 1), v31 || (*(v22 + 16) & 1) != 0))
          {
            v32 = 0;
            LatestAckedState = 0;
          }

          else
          {
            LatestAckedState = re::SyncAckedStateBuffer::getLatestAckedState(v27, v22);
            v32 = v86;
          }

          v34 = *(v23 + 80);
          v35 = v23;
          if (v34)
          {
            v36 = v23;
            do
            {
              v35 = v36;
              v36 = v34;
              if (*(*(v35[11] + 16) + 73))
              {
                break;
              }

              v34 = v34[10];
              v35 = v36;
            }

            while (v34);
          }

          v37 = (LatestAckedState == 0) | (2 * *(v22 + 16)) & 5;
          if (!v35[20] && v35[17])
          {
            v37 |= 0x10u;
          }

          re::snapshot::EncoderOPACK::beginObject(v191);
          v38 = *&v191[16];
          if (*&v191[16] >= *&v191[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v191, 1);
          }

          else
          {
            ++*&v191[16];
            *(*&v191[8] + v38) = 9;
          }

          re::snapshot::EncoderOPACK::writeInteger(v191, v37);
          v39 = *(v23 + 176);
          v40 = *&v191[16];
          if (*&v191[16] >= *&v191[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v191, 2);
          }

          else
          {
            ++*&v191[16];
            *(*&v191[8] + v40) = 10;
          }

          re::snapshot::EncoderOPACK::writeInteger(v191, v39);
          v41 = *(v23 + 80);
          v42 = v23;
          if (v41)
          {
            v43 = v23;
            do
            {
              v42 = v43;
              v43 = v41;
              if (*(*(*(v42 + 88) + 16) + 73))
              {
                break;
              }

              v41 = *(v41 + 80);
              v42 = v43;
            }

            while (v41);
          }

          v44 = *&v191[16];
          if (*&v191[16] >= *&v191[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v191, 3);
          }

          else
          {
            ++*&v191[16];
            *(*&v191[8] + v44) = 11;
          }

          re::snapshot::EncoderOPACK::beginObject(v191);
          re::snapshotMapFields(v191, (v42 + 136), v45);
          re::snapshot::EncoderOPACK::endObject(v191);
          if ((v37 & 5) != 0)
          {
            v46 = *(v23 + 24);
            v47 = *&v191[16];
            if (*&v191[16] >= *&v191[20])
            {
              re::snapshot::EncoderOPACK::writeInteger(v191, 5);
            }

            else
            {
              ++*&v191[16];
              *(*&v191[8] + v47) = 13;
            }

            re::snapshot::EncoderOPACK::writeInteger(v191, v46);
            v48 = *(*(*(v23 + 88) + 16) + 32);
            v49 = *&v191[16];
            if (*&v191[16] >= *&v191[20])
            {
              re::snapshot::EncoderOPACK::writeInteger(v191, 6);
            }

            else
            {
              ++*&v191[16];
              *(*&v191[8] + v49) = 14;
            }

            re::snapshot::EncoderOPACK::writeInteger(v191, v48);
          }

          if (LatestAckedState)
          {
            v50 = *&v191[16];
            if (*&v191[16] >= *&v191[20])
            {
              re::snapshot::EncoderOPACK::writeInteger(v191, 7);
            }

            else
            {
              ++*&v191[16];
              *(*&v191[8] + v50) = 15;
            }

            re::snapshot::EncoderOPACK::writeInteger(v191, v32);
          }

          if (v37)
          {
            v51 = *(v23 + 80);
            if (v51)
            {
              v52 = (v51 + 8);

              v53 = *(v23 + 80);
              if (v53)
              {
                v54 = (v53 + 8);
              }

              v55 = *(*(*(v53 + 88) + 16) + 32);
              v56 = *&v191[16];
              if (*&v191[16] >= *&v191[20])
              {
                re::snapshot::EncoderOPACK::writeInteger(v191, 8);
              }

              else
              {
                ++*&v191[16];
                *(*&v191[8] + v56) = 16;
              }

              re::snapshot::EncoderOPACK::writeInteger(v191, v55);

              v57 = *(v23 + 80);
              if (v57)
              {
                v58 = (v57 + 8);
              }

              v59 = *(v57 + 24);
              v60 = *&v191[16];
              if (*&v191[16] >= *&v191[20])
              {
                re::snapshot::EncoderOPACK::writeInteger(v191, 9);
              }

              else
              {
                ++*&v191[16];
                *(*&v191[8] + v60) = 17;
              }

              re::snapshot::EncoderOPACK::writeInteger(v191, v59);
            }
          }

          v61 = *&v191[16];
          if (*&v191[16] >= *&v191[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v191, 11);
          }

          else
          {
            ++*&v191[16];
            *(*&v191[8] + v61) = 19;
          }

          LatestState = re::SyncObject::getLatestState(v23);
          if (LatestState)
          {
            v63 = *(*(v23 + 88) + 16);
            v64 = *(LatestState + 24);
            if (*(LatestState + 28))
            {
              ++v64;
            }

            v181 = *(LatestState + 8);
            v182 = v64;
            v183 = 0;
            v184 = 0;
            v185 = 0;
            v65 = *&v191[16];
            re::snapshot::EncoderOPACK::beginData(v191, 0, 0xFFFFFFFFuLL);
            v66 = *&v191[16];
            *&buf[8] = *&v191[8] + *&v191[16];
            *&buf[16] = *&v191[20] - *&v191[16];
            buf[20] = 0;
            v199 = 0;
            v200 = 0;
            *buf = &unk_2873F5BD0;
            v201 = *&v191[16];
            v202 = v191;
            if (LatestAckedState)
            {
              v67 = *(LatestAckedState + 6);
              if (*(LatestAckedState + 7))
              {
                ++v67;
              }

              v186 = LatestAckedState[1];
              v187 = v67;
              v188 = 0;
              v189 = 0;
              v190 = 0;
              (*(*(v63 + 120) + 16))();
            }

            else
            {
              (*(*(v63 + 112) + 16))();
            }

            re::BitWriter::alignToByte(buf);
            v75 = v199 + v201;
            if (HIDWORD(v199))
            {
              ++v75;
            }

            *(v202 + 4) = v75;
            v76 = *&v191[16];
            *&v191[16] = v65;
            re::snapshot::EncoderOPACK::beginData(v191, v76 - v66, 0xFFFFFFFFuLL);
            *&v191[16] = v76;
          }

          else
          {
            v68 = *re::networkLogObjects(0);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = *(v23 + 24);
              v70 = *(*(v23 + 88) + 16);
              v71 = v70[4];
              v72 = v70[6];
              v73 = v70[7];
              v74 = v70 + 49;
              if (v72)
              {
                v74 = v73;
              }

              *buf = 134218498;
              *&buf[4] = v69;
              *&buf[12] = 2048;
              *&buf[14] = v71;
              *&buf[22] = 2080;
              v199 = v74;
              _os_log_error_impl(&dword_26168F000, v68, OS_LOG_TYPE_ERROR, "Could not find latest state for object (id: %llu, type: %llu[%s]).", buf, 0x20u);
            }
          }

          v77 = re::snapshot::EncoderOPACK::endObject(v191);
          if (BYTE8(v194))
          {
            v78 = *(&v194 + 1) >> 1;
          }

          else
          {
            v78 = BYTE8(v194) >> 1;
          }

          v8 = a4;
          if (v78)
          {
            v159 = *(a1 + 16);
            v160 = *re::networkLogObjects(v77);
            if (v159 == 1)
            {
              if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
              {
                if (BYTE8(v194))
                {
                  v161 = v195;
                }

                else
                {
                  v161 = &v194 + 9;
                }

                *buf = 136315138;
                *&buf[4] = v161;
                _os_log_debug_impl(&dword_26168F000, v160, OS_LOG_TYPE_DEBUG, "Error writing OPACK object data: %s", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
            {
              if (BYTE8(v194))
              {
                v164 = v195;
              }

              else
              {
                v164 = &v194 + 9;
              }

              *buf = 136315138;
              *&buf[4] = v164;
              _os_log_error_impl(&dword_26168F000, v160, OS_LOG_TYPE_ERROR, "Error writing OPACK object data: %s", buf, 0xCu);
            }

LABEL_202:
            *&v191[16] = v171;
LABEL_203:
            re::snapshot::EncoderOPACK::endObject(v191);
            v14 = v176 + v169;
            LODWORD(v5) = *&v191[16];
            v6 = v167;
LABEL_204:
            re::BitWriter::rollbackTo(this, (v5 + v179));
            *v191 = v6;
            if (v194 && (BYTE8(v194) & 1) != 0)
            {
              (*(*v194 + 40))();
            }

            goto LABEL_207;
          }

          if (*&v191[16] >= *&v191[20] && !re::snapshot::BufferEncoder::grow(v191, *&v191[16] + 1))
          {
            goto LABEL_202;
          }

          ++v176;
          v79 = *a4;
          if (*a4)
          {
            (*(**(a4 + 8) + 32))(buf);
            if (*buf)
            {
            }

            v80 = *(*v22 + 80);
            v81 = *(*(*(*v22 + 88) + 16) + 32);
            v82 = *(*v22 + 24);
            if (v80)
            {
              v83 = *(v80 + 24);
            }

            v84 = (*(*v79 + 80))(v79);
            v85 = *(a4 + 16);
            re::Event<re::NetworkSyncService,re::Session *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned int>::raise(v84, v79);
          }

          v10 = a2;
LABEL_98:
          if (++a5 >= *(v10 + 6))
          {
            goto LABEL_203;
          }
        }
      }

LABEL_214:
      re::snapshot::EncoderOPACK::writeInteger(v191, 1);
      goto LABEL_13;
    }

LABEL_213:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "commit.snapshot.size() < ~uint32_t()", "writeCommit", 123);
    _os_crash();
    __break(1u);
    goto LABEL_214;
  }

  if (*(a2 + 6) >= 0xFFFFFFFFuLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "commit.snapshot.size() < ~uint32_t()", "writeCommit", 189);
    _os_crash();
    __break(1u);
    goto LABEL_213;
  }

  v11 = *(this + 3);
  re::BitWriter::writeUInt32Bits(this, *a2, 8u);
  if ((*v10 & 2) != 0)
  {
    v12 = *(a2 + 5);
    re::BitWriter::writeUInt32Bits(this, *(a2 + 4), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v12, 0x20u);
  }

  v13 = *(this + 3);
  re::BitWriter::writeUInt32Bits(this, 0, 0x20u);
  if (*(this + 20))
  {
    re::BitWriter::rollbackTo(this, v11);
    v14 = 0;
    goto LABEL_207;
  }

  v165 = v13;
  v87 = a2;
  if (*(a2 + 6) <= a5)
  {
    v168 = 0;
    v88 = 0;
    goto LABEL_200;
  }

  v88 = 0;
  v168 = 0;
  while (1)
  {
    v89 = *(v87 + 8) + 24 * a5;
    v90 = *v89;
    v91 = *(*(*(*v89 + 88) + 16) + 128);
    if (!v91)
    {
      break;
    }

    if ((*(v91 + 16))(v91, v8))
    {
      v90 = *v89;
      break;
    }

    ++v168;
LABEL_188:
    if (++a5 >= *(v87 + 6))
    {
      goto LABEL_200;
    }
  }

  v92 = a1[1];
  v170 = *(this + 3);
  if (!v92 || ((v93 = *(*(v90 + 88) + 16), v94 = *(v93 + 104), v95 = *(v93 + 120), v94) ? (v96 = v95 == 0) : (v96 = 1), v96 || (*(v89 + 16) & 1) != 0))
  {
    v97 = 0;
    v98 = 0;
  }

  else
  {
    v98 = re::SyncAckedStateBuffer::getLatestAckedState(v92, v89);
    v97 = v158;
  }

  v177 = v89;
  v99 = *(v90 + 80);
  v100 = v90;
  if (v99)
  {
    v101 = v90;
    do
    {
      v100 = v101;
      v101 = v99;
      if (*(*(v100[11] + 16) + 73))
      {
        break;
      }

      v99 = v99[10];
      v100 = v101;
    }

    while (v99);
  }

  v102 = (v98 == 0) | (2 * *(v89 + 16)) & 5;
  if (!v100[20] && v100[17])
  {
    v102 |= 0x10u;
  }

  re::BitWriter::alignToByte(this);
  re::BitWriter::writeUInt32Bits(this, v102, 8u);
  re::BitWriter::writeUInt32Bits(this, *(v90 + 176), 0x10u);
  v103 = *(v90 + 80);
  v104 = v90;
  if (v103)
  {
    v105 = v90;
    do
    {
      v104 = v105;
      v105 = v103;
      if (*(*(*(v104 + 88) + 16) + 73))
      {
        break;
      }

      v103 = *(v103 + 80);
      v104 = v105;
    }

    while (v103);
  }

  re::SyncOwnershipInfo::write((v104 + 136), this, 1);
  v106 = (*(**a1 + 32))(*a1, *(v90 + 24), *(*(*(v90 + 88) + 16) + 32));
  *v191 = 0;
  re::BiasedVLQ::write(v191, this, v106);
  if ((v102 & 5) != 0)
  {
    v107 = *(v90 + 28);
    re::BitWriter::writeUInt32Bits(this, *(v90 + 24), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v107, 0x20u);
    v108 = *(*(v90 + 88) + 16);
    v109 = *(v108 + 36);
    re::BitWriter::writeUInt32Bits(this, *(v108 + 32), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v109, 0x20u);
  }

  if (v98)
  {
    re::BitWriter::writeUInt32Bits(this, v97, 0x10u);
  }

  if (v102)
  {
    v110 = *(v90 + 80);
    if (v110)
    {
      v111 = (v110 + 8);

      v112 = *(v90 + 80);
      if (v112)
      {
        v113 = (v112 + 8);
      }

      v114 = *(*(*(v112 + 88) + 16) + 32);

      v115 = *(v90 + 80);
      if (v115)
      {
        v116 = (v115 + 8);
      }

      v117 = *(v115 + 24);
    }

    else
    {
      v114 = 0;
      v117 = 0;
    }

    re::BitWriter::writeUInt32Bits(this, v114, 0x20u);
    re::BitWriter::writeUInt32Bits(this, HIDWORD(v114), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v117, 0x20u);
    re::BitWriter::writeUInt32Bits(this, HIDWORD(v117), 0x20u);
  }

  v118 = v177;
  if ((*(this + 20) & 1) == 0)
  {
    v119 = re::SyncObject::getLatestState(v90);
    v172 = v88;
    if (v119)
    {
      v120 = *(*(v90 + 88) + 16);
      v121 = *(v119 + 24);
      if (*(v119 + 28))
      {
        ++v121;
      }

      *buf = *(v119 + 8);
      *&buf[8] = v121;
      buf[12] = 0;
      *&buf[16] = 0;
      v199 = 0;
      v122 = *(this + 3);
      re::BitWriter::writeUInt32Bits(this, 0, 8u);
      v123 = *(this + 3);
      if (v98)
      {
        v124 = *(v98 + 6);
        if (*(v98 + 7))
        {
          ++v124;
        }

        *v191 = v98[1];
        *&v191[8] = v124;
        v191[12] = 0;
        *&v191[16] = 0;
        v192 = 0;
        (*(*(v120 + 120) + 16))();
      }

      else
      {
        (*(*(v120 + 112) + 16))();
      }

      re::BitWriter::alignToByte(this);
      v132 = *(this + 3);
      v133 = (v132 - v123);
      if (v133 >= 0x80)
      {
        v166 = v122;
        v134 = 0;
        v135 = (v132 - v123);
        do
        {
          v136 = v134;
          v137 = v135 >> 14;
          v135 >>= 7;
          ++v134;
        }

        while (v137);
        if (HIDWORD(v132))
        {
          LODWORD(v132) = v132 + 1;
        }

        *v191 = *(this + 1);
        *&v191[8] = v132;
        v191[12] = 0;
        *&v191[16] = 0;
        v192 = 0;
        re::BitReader::seekTo(v191, v123);
        v138 = *&v191[8];
        v139 = *v191;
        v140 = *&v191[16];
        v141 = *&v191[20];
        v142 = v192;
        v143 = ~v136;
        v144 = v191[12];
        do
        {
          if (v144)
          {
            v145 = 0;
            v144 = 1;
          }

          else if (v141 + 8 * (v138 - v140) >= 8)
          {
            if (v141 <= 7)
            {
              v146 = *(v139 + v140++);
              v142 |= v146 << v141;
              v141 |= 8u;
            }

            v144 = 0;
            v145 = v142;
            v142 >>= 8;
            v141 -= 8;
          }

          else
          {
            v141 = 0;
            v145 = 0;
            v144 = 1;
            v140 = v138;
          }

          re::BitWriter::writeUInt32Bits(this, v145, 8u);
        }

        while (!__CFADD__(v143++, 1));
        v8 = a4;
        v88 = v172;
        v118 = v177;
        v122 = v166;
      }

      if ((*(this + 20) & 1) == 0)
      {
        v148 = *(this + 3);
        re::BitWriter::rollbackTo(this, v122);
        *v191 = 0;
        re::BiasedVLQ::write(v191, this, v133);
        re::BitWriter::rollbackTo(this, v148);
      }
    }

    else
    {
      v125 = *re::networkLogObjects(0);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        v126 = *(v90 + 24);
        v127 = *(*(v90 + 88) + 16);
        v128 = v127[4];
        v129 = v127[6];
        v130 = v127[7];
        v131 = (v127 + 49);
        if (v129)
        {
          v131 = v130;
        }

        *v191 = 134218498;
        *&v191[4] = v126;
        *&v191[12] = 2048;
        *&v191[14] = v128;
        *&v191[22] = 2080;
        v192 = v131;
        _os_log_error_impl(&dword_26168F000, v125, OS_LOG_TYPE_ERROR, "Could not find latest state for object (id: %llu, type: %llu[%s]).", v191, 0x20u);
      }
    }

    if ((*(this + 20) & 1) == 0)
    {
      v149 = *v8;
      if (*v8)
      {
        v151 = *(this + 6);
        v150 = *(this + 7);
        (*(**(v8 + 8) + 32))(v191);
        if (*v191)
        {
        }

        v152 = *(*v118 + 80);
        v153 = *(*(*(*v118 + 88) + 16) + 32);
        v154 = *(*v118 + 24);
        if (v152)
        {
          v155 = *(v152 + 24);
        }

        v156 = (*(*v149 + 80))(v149);
        v157 = *(v8 + 16);
        re::Event<re::NetworkSyncService,re::Session *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned int>::raise(v156, v149);
        v88 = v172;
      }

      ++v88;
      v87 = a2;
      goto LABEL_188;
    }
  }

  re::BitWriter::rollbackTo(this, v170);
LABEL_200:
  re::BitWriter::writeUInt32At(this, v165, v88);
  v14 = v88 + v168;
LABEL_207:
  v162 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t re::SyncPacker::packCommit(re::SyncCommit const&,re::BitWriter &,re::SyncObjectWriteContext const&,unsigned long)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  re::BitWriter::rollbackTo(*a1, (*(v6 + 16) + v5));
  (*(*v4 + 16))(v4, a3);
  v7 = *(v6 + 16);
  re::BitWriter::bytesLeft(v4, v8);
  return *(v4 + 1) + v5;
}

uint64_t anonymous namespace::SnapshotBitWriter::grow(_anonymous_namespace_::SnapshotBitWriter *this, unsigned int a2)
{
  result = *(this + 6);
  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = v4 + a2;
  if (v6 <= v5)
  {
    goto LABEL_2;
  }

  result = re::snapshot::BufferEncoder::grow(result, v6);
  if (result)
  {
    result = *(this + 6);
    LODWORD(v4) = *(result + 16);
    LODWORD(v5) = *(result + 20);
LABEL_2:
    *(this + 1) = *(result + 8) + *(this + 5);
    *(this + 4) = v5 - v4;
  }

  return result;
}

double RESyncViewCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 136, 8);

  return re::SyncView::SyncView(v2);
}

void RESyncViewSetUserData(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 128) = a2;
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncViewSetUserData";
      v6 = 2080;
      v7 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncViewGetUserData(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 128);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncViewGetUserData";
      v6 = 2080;
      v7 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncViewGetObjectCount(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 68);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncViewGetObjectCount";
      v6 = 2080;
      v7 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncViewSetOwnerPeerID(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 32) = a2;
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncViewSetOwnerPeerID";
      v6 = 2080;
      v7 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncViewGetOwnerPeerID(uint64_t a1)
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
      v5 = "RESyncViewGetOwnerPeerID";
      v6 = 2080;
      v7 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncViewSetFromPeerID(uint64_t a1, uint64_t a2)
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
      v5 = "RESyncViewSetFromPeerID";
      v6 = 2080;
      v7 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t RESyncViewGetFromPeerID(uint64_t a1)
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
      v5 = "RESyncViewGetFromPeerID";
      v6 = 2080;
      v7 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncViewEnumerateObjects(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v11 = 136315394;
    v12 = "RESyncViewEnumerateObjects";
    v13 = 2080;
    v14 = "view != __null";
LABEL_23:
    _os_log_error_impl(&dword_26168F000, v10, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v11, 0x16u);
    goto LABEL_18;
  }

  if (!a2)
  {
    v10 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v11 = 136315394;
    v12 = "RESyncViewEnumerateObjects";
    v13 = 2080;
    v14 = "cb != __null";
    goto LABEL_23;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a1 + 56) + 8);
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
        LODWORD(v5) = *(a1 + 72);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    if (!(*(a2 + 16))(a2, *(*(*(a1 + 56) + 24 * v5 + 16) + 8)))
    {
      break;
    }

    v8 = *(a1 + 72);
    if (v8 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    while (v8 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a1 + 56) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v5) = v8;
LABEL_17:
    ;
  }

LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t re::LeaderElectionLowestPeerID::setup(re::LeaderElectionLowestPeerID *this, uint64_t a2)
{
  result = (*(*this + 72))(this);
  if (result)
  {
    *(*(this + 4) + 3136) = a2;
  }

  return result;
}

uint64_t re::LeaderElectionLowestPeerID::processCapabilities(uint64_t this)
{
  v1 = *(this + 32);
  if (*(v1 + 2184) == 1)
  {
    *(v1 + 3280) |= 1u;
  }

  return this;
}

unint64_t re::LeaderElectionLowestPeerID::handleMigration(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(a3 + 32);
  v5 = 8 * v3;
  v6 = a2;
  do
  {
    v7 = *v4++;
    v8 = *(v7 + 24);
    if (v6 >= v8)
    {
      v6 = v8;
    }

    v5 -= 8;
  }

  while (v5);
  if (v6 == a2)
  {
LABEL_7:
    *(*(a1 + 32) + 3280) |= 1u;
    return a2;
  }

  return v6;
}

void re::LeaderElectionLowestPeerID::removePeer(re::LeaderElectionLowestPeerID *this, uint64_t a2)
{
  v2 = *(this + 4);
  if (*(v2 + 3136) == a2)
  {
    re::Session::stateEvent(v2, 4);
  }
}

void re::LeaderElectionLowestPeerID::~LeaderElectionLowestPeerID(re::LeaderElectionLowestPeerID *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

re::Transport *re::Transport::Transport(re::Transport *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5CB0;
  *(this + 3) = &unk_2873F5D18;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 172) = 0x1FFFFFFFFLL;
  *(this + 46) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0x7FFFFFFFLL;
  *(this + 340) = 0;
  *(this + 92) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 336) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 392) = 1;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 106) = 0;
  *(this + 50) = 0;
  *(this + 116) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 63) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  re::DynamicString::setCapacity(this + 60, 0);
  *(this + 64) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 292) = 257;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  re::PacketPool::make(0, 0, &v5);
  v3 = *(this + 48);
  *(this + 48) = v5;
  if (v3)
  {
  }

  return this;
}

void re::Transport::~Transport(re::Transport *this)
{
  *this = &unk_2873F5CB0;
  *(this + 3) = &unk_2873F5D18;
  if (*(this + 9))
  {
    re::Transport::deinit(this);
  }

  v2 = *(this + 72);
  if (v2)
  {

    *(this + 72) = 0;
  }

  v3 = *(this + 71);
  if (v3)
  {

    *(this + 71) = 0;
  }

  v4 = *(this + 70);
  if (v4)
  {

    *(this + 70) = 0;
  }

  re::DynamicString::deinit((this + 480));
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 440);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 400);
  v5 = *(this + 48);
  if (v5)
  {

    *(this + 48) = 0;
  }

  v6 = *(this + 47);
  if (v6)
  {
    dispatch_release(v6);
  }

  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::deinit(this + 34);
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 232);
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 192);
  re::DataArray<re::Connection>::deinit(this + 120);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 120);
  re::DynamicArray<re::DynamicString>::deinit(this + 80);
  v7 = *(this + 9);
  if (v7)
  {

    *(this + 9) = 0;
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 8);
    if (v9)
    {
      v10 = *(this + 6);
      if (v10)
      {
        v11 = 8 * v10;
        do
        {
          objc_destroyWeak(v9);
          *v9++ = 0;
          v11 -= 8;
        }

        while (v11);
        v8 = *(this + 4);
        v9 = *(this + 8);
      }

      (*(*v8 + 40))(v8, v9);
    }

    *(this + 8) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    ++*(this + 14);
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::Transport::~Transport(this);

  JUMPOUT(0x266708EC0);
}

double re::Transport::deinit(re::Transport *this)
{
  v28 = *MEMORY[0x277D85DE8];
  atomic_store(0, this + 336);
  v2 = *(this + 72);
  if (v2)
  {

    *(this + 72) = 0;
  }

  dispatch_queue_set_specific(*(this + 47), this, 0, 0);
  v3 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(&v23, this + 120);
  v21 = v23;
  v22 = v24;
  if ((this + 120) != v23 || v24 != 0xFFFFFFFFLL)
  {
    do
    {
      v5 = *(this + 70);
      if (v5)
      {
        v6 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(&v21);
        (*(*v5 + 40))(v5, this, v6);
      }

      if (*re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v21) == 1)
      {
        v7 = *(this + 76);
        v8 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(&v21);
        (*(*v7 + 8))(v7, v8);
        v9 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v21);
        v10 = *(v9 + 5);
        if (v10)
        {
          v11 = (v10 + 8);
          v9 = (v10 + 8);
        }

        v12 = re::globalAllocators(v9)[2];
        v25 = v10;
        v26 = v12;
        v23 = &unk_2873F5DA8;
        v24 = this;
        v27 = &v23;
        (*(**(this + 41) + 16))(*(this + 41), &v23);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v23);
        if (v10)
        {
        }
      }

      if (*(re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v21) + 40))
      {
        v13 = *(re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v21) + 40);
        if (v13)
        {
          v14 = (v13 + 8);
        }

        os_unfair_lock_lock((v13 + 1764));
        *(v13 + 24) = 0;
        os_unfair_lock_unlock((v13 + 1764));
        v15 = re::globalAllocators((v13 + 8))[2];
        v25 = v13;
        v26 = v15;
        v23 = &unk_2873F5E00;
        v24 = this;
        v27 = &v23;
        (*(**(this + 41) + 16))(*(this + 41), &v23);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v23);
      }

      v3 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v21);
    }

    while (v21 != (this + 120) || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  v26 = re::globalAllocators(v3)[2];
  v27 = &v23;
  v23 = &unk_2873F5E58;
  v24 = this;
  (*(**(this + 41) + 16))(*(this + 41), &v23);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v23);
  (*(**(this + 41) + 32))(*(this + 41));
  (*(**(this + 40) + 32))(*(this + 40));
  re::DataArray<re::Connection>::deinit(this + 120);
  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::deinit(this + 34);
  re::internal::destroyPersistent<re::TransportCommands>(*(this + 41));
  *(this + 41) = 0;
  re::internal::destroyPersistent<re::TransportCommands>(*(this + 40));
  *(this + 40) = 0;
  v16 = *(this + 9);
  if (v16)
  {

    *(this + 9) = 0;
  }

  v17 = *(this + 47);
  *(this + 47) = 0;
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 48);
  if (v18)
  {

    *(this + 48) = 0;
  }

  result = 0.0;
  *(this + 600) = 0u;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL re::Transport::init(uint64_t a1, uint64_t *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  *(a1 + 600) = a2[12];
  v4 = *a2;
  v5 = *(a1 + 72);
  if (v5 != *a2)
  {
    if (v4)
    {
      v6 = (v4 + 8);
      v5 = *(a1 + 72);
    }

    if (v5)
    {
    }

    *(a1 + 72) = v4;
  }

  re::SharedPtr<re::SyncObject>::reset((a1 + 568), a2[4]);
  v7 = a2[12];
  if (v7)
  {
    v8 = v7 + 24;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 608) = v8;
  v9 = a2[1];
  if (v9)
  {
    dispatch_retain(a2[1]);
  }

  v10 = (a1 + 376);
  v11 = *(a1 + 376);
  *(a1 + 376) = v9;
  if (v11)
  {
    dispatch_release(v11);
    v9 = *v10;
  }

  dispatch_queue_set_specific(v9, a1, a1, 0);
  if (!*(a1 + 376))
  {
    v13 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v13, OS_LOG_TYPE_ERROR, "Invalid transport queue. Should be the same dispatch_queue that transport api will be called on.", buf, 2u);
    }
  }

  *buf = *v10;
  v14 = (*(**(a1 + 72) + 32))(*(a1 + 72), buf);
  if (v14)
  {
    re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity((a1 + 120), 0);
    ++*(a1 + 144);
    *(a1 + 164) = 64;
    v15 = re::DataArray<re::Connection>::allocBlock((a1 + 120));
    re::Defaults::intValue("network.transport.compressionMethod", v16, v60);
    if (v60[0])
    {
      v17 = &v61;
    }

    else
    {
      v17 = (a2 + 2);
    }

    *(a1 + 392) = *v17;
    v18 = (*(**(a1 + 72) + 120))(*(a1 + 72), 0, 0);
    v19 = v18;
    v20 = *(a1 + 96);
    if (v20 >= v18)
    {
      if (v20 <= v18)
      {
        goto LABEL_35;
      }

      v26 = 32 * v18;
      v27 = v18;
      do
      {
        re::DynamicString::deinit((*(a1 + 112) + v26));
        ++v27;
        v26 += 32;
      }

      while (v27 < *(a1 + 96));
    }

    else
    {
      if (*(a1 + 88) < v18)
      {
        v18 = re::DynamicArray<re::Address>::setCapacity((a1 + 80), v18);
        v20 = *(a1 + 96);
      }

      v21 = v19 - v20;
      if (v19 > v20)
      {
        v22 = 32 * v20;
        do
        {
          v23 = *(a1 + 112) + v22;
          *v23 = 0u;
          *(v23 + 16) = 0u;
          v18 = re::DynamicString::setCapacity(v23, 0);
          v22 += 32;
          --v21;
        }

        while (v21);
      }
    }

    *(a1 + 96) = v19;
    ++*(a1 + 104);
LABEL_35:
    v28 = (*(**(a1 + 72) + 120))(*(a1 + 72), *(a1 + 112), v19);
    atomic_store(1u, (a1 + 336));
    v29 = re::globalAllocators(v28);
    v30 = (*(*v29[2] + 32))(v29[2], 128, 8);
    *v30 = &unk_2873F57D8;
    *(v30 + 8) = 0x100000000;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0;
    *(v30 + 104) = 0;
    *(v30 + 112) = 0;
    *(v30 + 56) = 0u;
    *(v30 + 72) = 0u;
    *(v30 + 84) = 0u;
    *(v30 + 120) = 0;
    *(a1 + 320) = v30;
    v31 = (*(**(a1 + 72) + 152))(*(a1 + 72));
    if (v31)
    {
      if (v31 == 2)
      {
        v35 = re::globalAllocators(v31);
        v34 = (*(*v35[2] + 32))(v35[2], 128, 8);
        *v34 = &unk_2873F57D8;
        *(v34 + 1) = 0x100000000;
        *(v34 + 1) = 0u;
        *(v34 + 2) = 0u;
        *(v34 + 12) = 0;
        *(v34 + 13) = 0;
        *(v34 + 28) = 0;
        *(v34 + 56) = 0u;
        *(v34 + 72) = 0u;
        *(v34 + 84) = 0u;
        *(v34 + 120) = 0;
        goto LABEL_43;
      }

      if (v31 == 1)
      {
        v32 = re::globalAllocators(v31);
        v33 = (*(*v32[2] + 32))(v32[2], 24, 8);
        v34 = re::TransportCommandsDispatch::TransportCommandsDispatch(v33);
LABEL_43:
        *(a1 + 328) = v34;
        v39 = (*(**(a1 + 72) + 112))(*(a1 + 72), a1 + 24);
        *&buf[8] = 0;
        v63 = 0;
        v64 = 0;
        re::DynamicString::setCapacity(buf, 0);
        if ((*(**(a1 + 72) + 120))(*(a1 + 72), buf, 1))
        {
          if (buf[8])
          {
            v40 = v63;
          }

          else
          {
            v40 = &buf[9];
          }
        }

        else
        {
          v40 = "n/a";
        }

        v41 = strlen(v40);
        *v65 = v40;
        v66 = v41;
        re::DynamicString::operator=((a1 + 480), v65);
        re::SharedPtr<re::SyncObject>::reset((a1 + 560), a2[3]);
        v42 = *(a2 + 5);
        v43 = *(a2 + 7);
        *(a1 + 552) = a2[9];
        *(a1 + 520) = v42;
        *(a1 + 536) = v43;
        v44 = (*(**(a1 + 72) + 144))(*(a1 + 72));
        *(a1 + 512) = v44;
        v45 = *re::networkLogObjects(v44);
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
        if (v46)
        {
          v47 = *(a1 + 512);
          *v65 = 67109120;
          *&v65[4] = v47;
          _os_log_impl(&dword_26168F000, v45, OS_LOG_TYPE_INFO, "Transport preferred packet size: %d", v65, 8u);
        }

        v48 = *(a1 + 512);
        v25 = v48 > 0x14;
        if (v48 > 0x14)
        {
          *(a1 + 516) = v48 - 3;
          re::SharedPtr<re::SyncObject>::reset((a1 + 576), a2[10]);
          *(a1 + 584) = *(a2 + 88);
          v50 = *re::networkLogObjects(v49);
          v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
          if (v51)
          {
            v52 = *(a1 + 584);
            *v65 = 67109120;
            *&v65[4] = v52;
            _os_log_impl(&dword_26168F000, v50, OS_LOG_TYPE_INFO, "Transport throttling enabled: %d", v65, 8u);
          }

          *(a1 + 585) = *(a2 + 89);
          v53 = *re::networkLogObjects(v51);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = *(a1 + 585);
            *v65 = 67109120;
            *&v65[4] = v54;
            _os_log_impl(&dword_26168F000, v53, OS_LOG_TYPE_INFO, "Transport message fragmentation enabled: %d", v65, 8u);
          }
        }

        else
        {
          v55 = *re::networkLogObjects(v46);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v59 = *(a1 + 512);
            *v65 = 67109120;
            *&v65[4] = v59;
            _os_log_error_impl(&dword_26168F000, v55, OS_LOG_TYPE_ERROR, "Invalid preferred packet size for transport: %u", v65, 8u);
          }
        }

        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))();
        }

        goto LABEL_61;
      }

      v36 = *re::networkLogObjects(v31);
      v31 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        *buf = 0;
        _os_log_impl(&dword_26168F000, v36, OS_LOG_TYPE_DEFAULT, "Unknown thread mode. Defaulting to ThreadWaitAndWake", buf, 2u);
      }
    }

    v37 = re::globalAllocators(v31);
    v38 = (*(*v37[2] + 32))(v37[2], 144, 8);
    re::TransportCommandsThreadedProtocol::TransportCommandsThreadedProtocol(v38, *(a1 + 72));
  }

  v24 = *(a1 + 72);
  if (v24)
  {

    *(a1 + 72) = 0;
  }

  v25 = 0;
LABEL_61:
  v57 = *MEMORY[0x277D85DE8];
  return v25;
}

re *re::internal::destroyPersistent<re::TransportCommands>(re *result)
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

uint64_t re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(unsigned __int16 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  if (*(*a1 + 16) <= v1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(*(*a1 + 32) + 16 * v1) + 136 * a1[4];
}

uint64_t re::DataArray<re::Connection>::deinit(uint64_t result)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(result + 44))
  {
    v1 = result;
    re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(&v13, result);
    if (v13 != v1 || DWORD2(v13) != 0xFFFFFFFFLL)
    {
      do
      {
        v3 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(&v13);
        re::DataArray<re::Connection>::destroy(v1, v3);
        re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v13);
      }

      while (v13 != v1 || WORD4(v13) != 0xFFFF || WORD5(v13) != 0xFFFF);
    }

    v6 = v1[2];
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v8 = 16 * v6 - 16;
      do
      {
        if (v6 <= v7)
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v13 = 0u;
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_27:
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v13 = 0u;
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v9 = (v1[4] + v8);
        (*(**v1 + 40))(*v1, *v9);
        (*(**v1 + 40))(*v1, v9[1]);
        v10 = v1[2];
        if (v10 <= v7)
        {
          goto LABEL_27;
        }

        v6 = v10 - 1;
        if (v10 - 1 > v7)
        {
          *(v1[4] + v8) = *(v1[4] + 16 * v10 - 16);
          v6 = v1[2] - 1;
        }

        v1[2] = v6;
        ++*(v1 + 6);
        v8 -= 16;
        --v7;
      }

      while (v7);
      v1[6] = 0xFFFFFFFF00000000;
      if (v6)
      {
        goto LABEL_24;
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      v1 = MEMORY[0x277D86220];
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v1[6] = 0xFFFFFFFF00000000;
LABEL_24:
    v11 = v1[4];
    (*(**v1 + 40))(*v1, *v11);
    (*(**v1 + 40))(*v1, v11[1]);
    result = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v1);
    *(v1 + 11) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

double re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 56;
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

unint64_t re::Transport::flushNetworkEvents(re::Transport *this)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(this + 41);
  v3 = re::globalAllocators(this)[2];
  *buf = &unk_2873F5EB0;
  v45 = this;
  v47 = v3;
  v48 = buf;
  (*(*v2 + 16))(v2, buf);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(buf);
  result = (*(**(this + 41) + 24))(*(this + 41));
  if (*(this + 585) == 1)
  {
    result = (*(**(this + 71) + 32))(*(this + 71));
    if (result - *(this + 74) >= 0x3E8)
    {
      v5 = result;
      result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, this + 120);
      v42 = *buf;
      v43 = v45;
      if ((this + 120) != *buf || v45 != 0xFFFFFFFFLL)
      {
        do
        {
          v6 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v42);
          v7 = *(v6 + 5);
          if (v7)
          {
            for (i = 0; i != 10; ++i)
            {
              v9 = v7 + 432 + 48 * i;
              v10 = *(v9 + 32);
              if (v10)
              {
                v11 = 0;
                v12 = *(v9 + 16);
                v13 = v12;
                while (1)
                {
                  v14 = *v13;
                  v13 += 20;
                  if (v14 < 0)
                  {
                    break;
                  }

                  if (v10 == ++v11)
                  {
                    v11 = *(v9 + 32);
                    break;
                  }
                }

                if (v10 <= v11 || v12[20 * v11] < 0)
                {
LABEL_17:
                  if (v10 != v11)
                  {
                    v17 = v11;
                    do
                    {
                      LODWORD(v18) = v11;
                      v19 = *(v9 + 16);
                      v20 = v19 + 80 * v17;
                      v21 = *(v20 + 4);
                      if (v10 <= v11 + 1)
                      {
                        v11 = (v11 + 1);
                      }

                      else
                      {
                        v11 = v10;
                      }

                      while (v11 - 1 != v18)
                      {
                        v18 = (v18 + 1);
                        if ((*(v19 + 80 * v18) & 0x80000000) != 0)
                        {
                          v17 = v18;
                          LODWORD(v11) = v18;
                          goto LABEL_26;
                        }
                      }

                      v17 = v11;
LABEL_26:
                      v22 = *(v20 + 64);
                      if (v22 && v22 < v5)
                      {
                        v23 = *re::networkLogObjects(v6);
                        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                        {
                          v24 = *(v20 + 56);
                          *buf = 67109632;
                          *&buf[4] = v21;
                          LOWORD(v45) = 1024;
                          *(&v45 + 2) = i;
                          HIWORD(v45) = 1024;
                          v46 = v24;
                          _os_log_impl(&dword_26168F000, v23, OS_LOG_TYPE_DEFAULT, "Message %u on channel %u timed-out waiting for fragment %u.", buf, 0x14u);
                        }

                        v6 = re::Transport::discardPacketFragments(v7, i, v21);
                        LODWORD(v10) = *(v9 + 32);
                      }
                    }

                    while (v10 != v11);
                  }
                }

                else
                {
                  v15 = &v12[20 * v11 + 20];
                  while (v10 - 1 != v11)
                  {
                    v16 = *v15;
                    v15 += 20;
                    LODWORD(v11) = v11 + 1;
                    if (v16 < 0)
                    {
                      goto LABEL_17;
                    }
                  }
                }
              }
            }
          }

          result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v42);
        }

        while (v42 != (this + 120) || v43 != 0xFFFF || HIWORD(v43) != 0xFFFF);
      }

      *(this + 74) = v5;
    }
  }

  if (*(this + 70))
  {
    result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, this + 120);
    if ((this + 120) != *buf || v45 != 0xFFFFFFFFLL)
    {
      do
      {
        v27 = *(re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(buf) + 40);
        if (v27)
        {
          v28 = 0;
          do
          {
            v29 = *(this + 70);
            v30 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(buf);
            v31 = v28;
            v32 = (*(*v29 + 64))(v29, this, v30, v28);
            if (v33)
            {
              v34 = v32;
              v35 = v33;
              do
              {
                re::Transport::onReceiveData(this, v27, v28, v34, v35);
                v36 = *(this + 70);
                v37 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(buf);
                v34 = (*(*v36 + 64))(v36, this, v37, v28);
                v35 = v38;
              }

              while (v38);
            }

            ++v28;
          }

          while (v31 < 9);
        }

        result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(buf);
      }

      while (*buf != (this + 120) || v45 != 0xFFFF || WORD1(v45) != 0xFFFF);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::Transport::onReceiveData(re *a1, uint64_t a2, char a3, unsigned __int8 *a4, size_t a5)
{
  v6 = a1;
  v122 = *MEMORY[0x277D85DE8];
  src_buffer = a4;
  src_size = a5;
  LOBYTE(v7) = a3;
  v104 = 0;
  LOBYTE(v8) = 1;
  v105 = 1;
  v106 = a3;
  v107 = 0;
  if (a5)
  {
    v9 = *a4;
    LOBYTE(v104) = v9 & 1;
    HIBYTE(v104) = (v9 & 2) != 0;
    v105 = (v9 & 4) != 0;
    if (v9 >= 0x10)
    {
      LODWORD(v7) = (v9 >> 4) - 1;
      v106 = (v9 >> 4) - 1;
    }

    v107 = *(a4 + 1);
    if (v7 >= 0xBu)
    {
      v10 = *re::networkLogObjects(a1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_26168F000, v10, OS_LOG_TYPE_ERROR, "Transport cannot receive on invalid channel id: %hhu", buf, 8u);
      }

      result = re::internal::enableSignposts(0, 0);
      if (result)
      {
        result = kdebug_trace();
      }

LABEL_112:
      v84 = *MEMORY[0x277D85DE8];
      return result;
    }

    v8 = v9 >> 2;
    v12 = v9 >> 1;
    src_buffer = re::Slice<unsigned char>::range(&src_buffer, 3uLL, a5);
    src_size = v13;
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v12) = 0;
  }

  v14 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
  if (v14)
  {
    v15 = *(v6 + 75);
    if (v15)
    {
      v16 = *(v15 + 2296);
      if (v16)
      {
        v99 = v8;
        v17 = v7;
        v7 = v6;
        v18 = a2;
        v19 = *(a2 + 24);
        v20 = *(v15 + 2312);
        v21 = 8 * v16;
        while (1)
        {
          v22 = *v20;
          if (*(*v20 + 32) == v19)
          {
            break;
          }

          ++v20;
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_20;
          }
        }

        v23 = (v22 + 8);
        v24 = *(v22 + 24);

LABEL_20:
        a2 = v18;
        v6 = v7;
        LOBYTE(v7) = v17;
        LOBYTE(v8) = v99;
      }
    }

    v14 = re::internal::enableSignposts(0, 0);
    if (v14)
    {
      v14 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (v14)
      {
        v14 = kdebug_trace();
      }
    }
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v25 = src_size;
  if ((v12 & 1) == 0)
  {
    goto LABEL_85;
  }

  v26 = buf;
  if (src_size <= 9)
  {
    v27 = *re::networkLogObjects(v14);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_26168F000, v27, OS_LOG_TYPE_INFO, "Discarding fragment with invalid size (channel=%u)", buf, 8u);
    }

LABEL_28:
    memset(buf, 0, 24);
    goto LABEL_69;
  }

  v28 = src_buffer;
  *buf = src_buffer;
  *&buf[8] = src_size;
  buf[12] = 0;
  *&buf[16] = 0uLL;
  if ((src_size & 0x1FFFFFFE) == 0)
  {
    v29 = 0;
    goto LABEL_36;
  }

  v29 = *src_buffer;
  if ((8 * src_size - 16) < 0x20)
  {
LABEL_36:
    LODWORD(v31) = 0;
    LODWORD(v34) = 0;
    buf[12] = 1;
    *&buf[16] = src_size;
    goto LABEL_41;
  }

  v30 = 0;
  v31 = 0;
  v32 = src_buffer + 2;
  do
  {
    v33 = *v32++;
    v31 |= v33 << v30;
    v30 += 8;
  }

  while (v30 != 32);
  v34 = HIDWORD(v31);
  *&buf[24] = HIDWORD(v31);
  if ((8 * src_size - 48) >= 0x20)
  {
    v35 = 0;
    v36 = src_buffer + 6;
    do
    {
      v37 = *v36++;
      v34 |= v37 << v35;
      v35 += 8;
    }

    while (v35 != 32);
    *&buf[16] = 10;
    *&buf[24] = HIDWORD(v34);
  }

  else
  {
    LODWORD(v34) = 0;
    buf[12] = 1;
    *&buf[16] = src_size;
  }

  *&buf[20] = 0;
LABEL_41:
  v110 = 0;
  *v111 = 0;
  v38 = re::BiasedVLQ::read(&v110, buf, v111);
  if (!v38 || (v39 = *v111, v110 = 0, v38 = re::BiasedVLQ::read(&v110, buf, v111), (v38 & 1) == 0))
  {
    v51 = *re::networkLogObjects(v38);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      v52 = "Discarding fragment with unreadable header (channel=%u)";
LABEL_67:
      _os_log_impl(&dword_26168F000, v51, OS_LOG_TYPE_INFO, v52, buf, 8u);
    }

LABEL_68:
    memset(buf, 0, 24);
    v26 = buf;
    goto LABEL_69;
  }

  if (!v34)
  {
    v25 = *re::networkLogObjects(v38);
    v53 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v53)
    {
      goto LABEL_65;
    }

    *buf = 67110144;
    *&buf[4] = 0;
    *&buf[8] = 1024;
    *&buf[10] = 1;
    *&buf[14] = 1024;
    *&buf[16] = -1;
    *&buf[20] = 1024;
    *&buf[22] = v29;
    *&buf[26] = 1024;
    *&buf[28] = v31;
    v54 = "Fragment count is not within range %u [%u, %u]. Fragment %u, %u will be discarded.";
    v55 = v25;
    v56 = 32;
    goto LABEL_64;
  }

  if (v31 >= v34)
  {
    v25 = *re::networkLogObjects(v38);
    v53 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v53)
    {
      goto LABEL_65;
    }

    *buf = 67109888;
    *&buf[4] = v31;
    *&buf[8] = 1024;
    *&buf[10] = v34;
    *&buf[14] = 1024;
    *&buf[16] = v29;
    *&buf[20] = 1024;
    *&buf[22] = v31;
    v54 = "Fragment index is out of bounds [%u, %u]. Fragment %u, %u will be discarded.";
    v55 = v25;
    v56 = 26;
    goto LABEL_64;
  }

  if (!v39)
  {
    v25 = *re::networkLogObjects(v38);
    v53 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v53)
    {
      goto LABEL_65;
    }

    *buf = 67109376;
    *&buf[4] = v29;
    *&buf[8] = 1024;
    *&buf[10] = v31;
    v54 = "Big packet size is not set. Fragment %u, %u will be discarded.";
    v55 = v25;
    v56 = 14;
LABEL_64:
    _os_log_error_impl(&dword_26168F000, v55, OS_LOG_TYPE_ERROR, v54, buf, v56);
LABEL_65:
    v51 = *re::networkLogObjects(v53);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      v52 = "Discarding fragment with invalid header values (channel=%u)";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  v40 = 11;
  if (v39 >= 0x80)
  {
    v41 = v39;
    do
    {
      v42 = v41 >> 14;
      v41 >>= 7;
      ++v40;
    }

    while (v42);
  }

  v43 = 1;
  if ((*v111 & 0xFFFFFF80) != 0)
  {
    v44 = *v111;
    do
    {
      ++v43;
      v45 = v44 >> 14;
      v44 >>= 7;
    }

    while (v45);
  }

  v46 = (v43 + v40);
  if (v25 <= v46)
  {
    v51 = *re::networkLogObjects(v38);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      goto LABEL_68;
    }

    *buf = 67109120;
    *&buf[4] = v7;
    v52 = "Discarding fragment with empty payload (channel=%u)";
    goto LABEL_67;
  }

  v96 = v39;
  v97 = v25 - v46;
  v98 = v46;
  v100 = *v111;
  v47 = a2 + 48 * v7 + 432;
  v48 = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::tryGet(v47, v29);
  if (v48)
  {
LABEL_120:
    if ((v8 & 1) == 0)
    {
      *(v48 + 56) = (*(**(v6 + 71) + 32))(*(v6 + 71)) + 1000;
    }

    memcpy((*(v48 + 16) + v100), &v28[v98], v97);
    v25 = *(v48 + 32);
    if (v25 <= v31)
    {
      v110 = 0;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v111 = 136315906;
      *&v111[4] = "operator[]";
      v112 = 1024;
      v113 = 468;
      v114 = 2048;
      v115 = v31;
      v116 = 2048;
      v117 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v90 = *(v48 + 40);
    *(v90 + v31) = 1;
    v91 = *(v48 + 48);
    v26 = buf;
    if (v25 > v91)
    {
      v92 = v91 + 1;
      while ((*(v90 + v91) & 1) != 0)
      {
        *(v48 + 48) = v92;
        v91 = v92;
        if (v25 <= v92++)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_28;
    }

LABEL_127:
    *buf = *v48;
    *v48 = 0;
    *(v48 + 8) = 0;
    *&buf[16] = *(v48 + 16);
    *(v48 + 16) = 0;
    re::Transport::discardPacketFragments(a2, v7, v29);
LABEL_69:
    re::FixedArray<unsigned char>::operator=(&v101, buf);
    v58 = *buf;
    if (*buf)
    {
      v59 = *&buf[8] == 0;
    }

    else
    {
      v59 = 1;
    }

    if (!v59)
    {
      v58 = (*(**buf + 40))();
    }

    v60 = v102;
    if (!v102)
    {
      goto LABEL_109;
    }

    v9 = *v103;
    LOBYTE(v104) = v9 & 1;
    HIBYTE(v104) = (v9 & 2) != 0;
    v105 = (v9 & 4) != 0;
    if (v9 >= 0x10)
    {
      LOBYTE(v7) = (v9 >> 4) - 1;
      v106 = v7;
    }

    v107 = *(v103 + 1);
    if (v7 >= 0xBu)
    {
      v61 = *re::networkLogObjects(v58);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_26168F000, v61, OS_LOG_TYPE_ERROR, "Transport cannot receive on invalid channel id: %hhu", buf, 8u);
      }

      if (re::internal::enableSignposts(0, 0))
      {
        kdebug_trace();
      }

LABEL_109:
      result = v101;
      if (v101 && v102)
      {
        result = (*(*v101 + 40))();
      }

      goto LABEL_112;
    }

    v62 = (v102 + 1);
    if ((v102 + 1) <= 3)
    {
      v110 = 0;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v111 = 136315906;
      *&v111[4] = "slice";
      v112 = 1024;
      v113 = 502;
      v114 = 2048;
      v115 = 3;
      v116 = 2048;
      v117 = v62;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v25 = (v102 - 3);
      if ((v102 - 3) < 0xFFFFFFFFFFFFFFFDLL)
      {
        src_buffer = v103 + 3;
        src_size = v102 - 3;
LABEL_85:
        if ((v9 & 1) != 0 && v25 > 3)
        {
          v63 = *src_buffer;
          v64 = re::Slice<unsigned char>::range(&src_buffer, 4uLL, v25);
          src_buffer = v64;
          src_size = v65;
          if (v63 > 0x8000000)
          {
            v81 = *re::networkLogObjects(v64);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = v63;
              *&buf[8] = 2048;
              *&buf[10] = 0x8000000;
              _os_log_error_impl(&dword_26168F000, v81, OS_LOG_TYPE_ERROR, "Inbound message decompressedLen(%u) exceeds kMaxSupportedMessageSize (%zu), message may be corrupted.", buf, 0x12u);
            }

            goto LABEL_109;
          }

          v62 = re::PacketPool::allocate(*(v6 + 48), (v63 + 3));
          re::Packet::offsetBy(v62, 3);
          v66 = *(v62 + 1);
          *(v66 + 2) = 0;
          *v66 = 0;
          re::Transport::writePacketHeader(v62, &v104, 8);
          v68 = compression_decode_scratch_buffer_size(v67);
          if (*(v6 + 56) < v68)
          {
            re::DynamicArray<unsigned char>::resize((v6 + 440), v68);
          }

          v69 = compression_decode_buffer(*(v62 + 2), *(v62 + 7), src_buffer, src_size, *(v6 + 59), v67);
          if (v69 != v63)
          {
            v70 = v69;
            v71 = *re::networkLogObjects(v69);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v70;
              *&buf[12] = 1024;
              *&buf[14] = v63;
              _os_log_error_impl(&dword_26168F000, v71, OS_LOG_TYPE_ERROR, "Inbound message decompressed length (%zu) is not the expected length (%u), message discarded!", buf, 0x12u);
            }

            re::PacketPool::free(*(v6 + 48), v62);
            goto LABEL_109;
          }
        }

        else
        {
          v62 = re::PacketPool::allocate(*(v6 + 48), (v25 + 3));
          re::Packet::offsetBy(v62, 3);
          v72 = *(v62 + 1);
          *(v72 + 2) = 0;
          *v72 = 0;
          re::Transport::writePacketHeader(v62, &v104, 8);
          memcpy(*(v62 + 2), src_buffer, src_size);
          LODWORD(v63) = src_size;
        }

        *(v62 + 6) = v63;
        os_unfair_lock_lock((a2 + 1764));
        v73 = a2;
        v74 = *(a2 + 24);
        v75 = v73;
        os_unfair_lock_unlock(v73 + 441);
        if (!v74)
        {
          v82 = *re::networkLogObjects(v76);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_26168F000, v82, OS_LOG_TYPE_DEBUG, "Received data for unbound connection object.", buf, 2u);
          }

          goto LABEL_107;
        }

        v26 = v6;
        if (v7 != 1)
        {
          v77 = v75;
          v80 = &v75[10 * v7 + 328];
          goto LABEL_105;
        }

        v77 = v75;
        v78 = v26;
        v79 = re::Transport::dispatchPacketToStream(v26, v62, *&v75[6]._os_unfair_lock_opaque);
        if (!v79)
        {
LABEL_106:
          (*(*&v78[76]->_os_unfair_lock_opaque + 24))(v78[76], *&v77[6]._os_unfair_lock_opaque, v7, *(v62 + 2), *(v62 + 6));
          v6 = v78;
          goto LABEL_107;
        }

        if (v79 == 2)
        {
          v77 = v75;
          v80 = &v75[338];
LABEL_105:
          atomic_fetch_add_explicit((v80 + 24), *(v62 + 6), memory_order_release);
          atomic_fetch_add_explicit((v80 + 32), *(v62 + 7), memory_order_release);
          atomic_fetch_add_explicit((v80 + 16), 1uLL, memory_order_release);
          atomic_store(v62, *v80);
          *v80 = v62;
          v78 = v26;
          goto LABEL_106;
        }

LABEL_130:
        v6 = v26;
        re::PacketPool::free(v26[48], v62);
LABEL_107:
        v83 = *(v6 + 72);
        if (v83)
        {
          (*(*v83 + 40))(v83, src_size);
        }

        goto LABEL_109;
      }
    }

    re::internal::assertLog(7, v57, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 508, 3, v25, v60);
    _os_crash();
    __break(1u);
    re::internal::assertLog(7, v94, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, 3, v25, v95);
    _os_crash();
    __break(1u);
    goto LABEL_130;
  }

  memset(buf, 0, 24);
  v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v29) ^ ((0xBF58476D1CE4E5B9 * v29) >> 27));
  v50 = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(buf, v47, v29, v49 ^ (v49 >> 31));
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v50 = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(v47, *&buf[8], *buf);
    *(v50 + 8) = 0u;
    v48 = v50 + 8;
    *(v50 + 4) = v29;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 0u;
    *(v50 + 56) = 0u;
    ++*(v47 + 40);
  }

  else
  {
    v48 = *(a2 + 48 * v7 + 448) + 80 * *&buf[12] + 8;
  }

  *(v48 + 32) = v34;
  *(v48 + 40) = v86;
  if (v86)
  {
    v88 = v86;
    v89 = v34 - 1;
    if (v89)
    {
      bzero(v86, v89);
      v88 += v89;
    }

    *v88 = 0;
    *(v48 + 48) = 0;
    goto LABEL_120;
  }

  re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::Transport::flushOutgoingData(re::Transport *this)
{
  v1 = this;
  v5[5] = *MEMORY[0x277D85DE8];
  if (*(this + 584) == 1)
  {
    this = re::Transport::queueThrottledPacketsForSend(this);
  }

  v2 = *(v1 + 41);
  v3 = re::globalAllocators(this)[2];
  v5[0] = &unk_2873F5F08;
  v5[1] = v1;
  v5[3] = v3;
  v5[4] = v5;
  (*(*v2 + 16))(v2, v5);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v5);
  (*(**(v1 + 41) + 24))(*(v1 + 41));
  re::PacketPool::emitAriadneSignpost(*(v1 + 48));
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t re::Transport::queueThrottledPacketsForSend(re::Transport *this)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 71) + 32))(*(this + 71));
  v4 = v2 - *(this + 176);
  *(this + 88) = v2;
  if (v4 <= 0x3E8)
  {
    v5 = *(this + 174);
    if (v5 >= 0x14)
    {
      re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) ", "m_index < kHistorySize", "measure", 1985);
      _os_crash();
      __break(1u);
    }

    *(this + 175) = *(this + 175) + v4 - *(this + v5 + 154);
    *(this + v5 + 154) = v4;
    v6 = *(this + 174);
    if ((v6 + 1) <= 0x13)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    *(this + 174) = v7;
  }

  v8 = *(this + 175);
  if (v8 < 0x14)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 / 0x14;
  }

  v10 = *(this + 72);
  if (v10)
  {
    v11 = *(v10 + 80) * v9 / 0x3E8uLL;
  }

  else
  {
    v11 = -1;
  }

  v12 = this + 120;
  result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, this + 120);
  v59 = *buf;
  v60 = *&buf[8];
  if ((this + 120) == *buf && *&buf[8] == 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v15 = 0;
  do
  {
    v16 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v59);
    if (*(v16 + 96))
    {
      ++v15;
      *(v16 + 112) = 1023;
    }

    result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v59);
  }

  while (v59 != v12 || v60 != 0xFFFF || HIWORD(v60) != 0xFFFF);
  v57 = this;
  if (!v15 || !v11)
  {
    goto LABEL_15;
  }

  do
  {
    v58 = v15;
    result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, v12);
    v59 = *buf;
    v60 = *&buf[8];
    if (v12 == *buf && *&buf[8] == 0xFFFFFFFFLL)
    {
      goto LABEL_92;
    }

    while (2)
    {
      v20 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v59);
      if (!*(v20 + 28))
      {
        goto LABEL_62;
      }

      v21 = v20;
      v22 = re::NetworkFeatureFlags::enableTransportLog(v20);
      if (v22)
      {
        v23 = *re::networkLogObjects(v22);
        v22 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if (v22)
        {
          v50 = *(v21 + 24);
          if ((*(v21 + 16) & 1) == 0)
          {
            v50 = v21 + 17;
          }

          v51 = *(v57 + 72);
          if (v51)
          {
            v52 = *(v51 + 72);
          }

          else
          {
            v52 = -1;
          }

          *buf = 136315906;
          *&buf[4] = v50;
          v62 = 1024;
          v63 = v52;
          v64 = 1024;
          v65 = v9;
          v66 = 2048;
          v67 = v11;
          _os_log_debug_impl(&dword_26168F000, v23, OS_LOG_TYPE_DEBUG, "Trying to send packet for connection: %s, total available bandwidth: %d bps, time slice: %d ms, slice bandwidth: %llu bits\n", buf, 0x22u);
        }
      }

      v24 = *(v21 + 96);
      if (v24)
      {
        v25 = v11 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        goto LABEL_54;
      }

      v26 = v11;
      if (!*(v21 + 116))
      {
        v44 = *(v57 + 75);
        if (v44)
        {
          v22 = re::DataArray<re::Connection>::handle(v12, v21);
          v45 = *(v44 + 2296);
          if (v45)
          {
            v46 = *(v44 + 2312);
            v47 = 8 * v45;
            while (1)
            {
              v48 = *v46;
              if (*(*v46 + 32) == v22)
              {
                break;
              }

              ++v46;
              v47 -= 8;
              if (!v47)
              {
                goto LABEL_41;
              }
            }

            v49 = (v48 + 8);
            *(v21 + 116) = *(v48 + 72);
          }
        }
      }

LABEL_41:
      v27 = *(v21 + 108);
      v28 = *(v21 + 112);
      v29 = v27;
      while (1)
      {
        v30 = 1 << (v29 % 0xAu);
        if ((v30 & v28) != 0)
        {
          break;
        }

LABEL_45:
        if (++v29 >= (v27 + 10))
        {
          goto LABEL_53;
        }
      }

      v31 = *(v21 + 40) + 40 * (v29 % 0xAu);
      if (!atomic_load(*(v31 + 40)))
      {
        v28 = *(v21 + 112) & (v30 ^ 0x3FF);
        *(v21 + 112) = v28;
        v27 = *(v21 + 108);
        goto LABEL_45;
      }

      v33 = re::PacketQueue::dequeue((v31 + 32));
      v34 = v33;
      --*(v21 + 96);
      v35 = (8 * *(v33 + 6));
      v36 = v26 >= v35;
      v37 = v26 - v35;
      if (v36)
      {
        v26 = v37;
      }

      else
      {
        v26 = 0;
      }

      v38 = re::NetworkFeatureFlags::enableTransportLog(v33);
      if (v38)
      {
        log = *re::networkLogObjects(v38);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          if (*(v21 + 16))
          {
            v54 = *(v21 + 24);
          }

          else
          {
            v54 = v21 + 17;
          }

          v55 = *(v34 + 24);
          *buf = 136315650;
          *&buf[4] = v54;
          v62 = 1024;
          v63 = v29 % 0xAu;
          v64 = 1024;
          v65 = v55;
        }
      }

      v22 = re::Transport::queuePacketForProtocol(v57, v34, v21, v29 % 0xAu);
      *(v21 + 108) = (v29 + 1) % 0xAu;
LABEL_53:
      v24 = *(v21 + 96);
      v11 = v26;
LABEL_54:
      if (v24)
      {
        v39 = *(v21 + 112) == 0;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = re::NetworkFeatureFlags::enableTransportLog(v22);
        if (v40)
        {
          v41 = *re::networkLogObjects(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            if (*(v21 + 16))
            {
              v53 = *(v21 + 24);
            }

            else
            {
              v53 = v21 + 17;
            }

            *buf = 136315138;
            *&buf[4] = v53;
            _os_log_debug_impl(&dword_26168F000, v41, OS_LOG_TYPE_DEBUG, "No more send channels for connection: %s", buf, 0xCu);
          }
        }

        --v58;
        *(v21 + 112) = 0;
      }

LABEL_62:
      result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v59);
      if (v59 != v12 || v60 != 0xFFFF || HIWORD(v60) != 0xFFFF)
      {
        continue;
      }

      break;
    }

LABEL_92:
    v15 = v58;
  }

  while (v58 && v11);
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t re::Transport::connect(re::Transport *this, const re::Address *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::tryGet(this + 272, a2);
  if (v4)
  {
    Connection = *v4;
  }

  else
  {
    Connection = re::Transport::createConnection(this, a2);
    v8 = re::DynamicString::DynamicString(&v11, a2);
    v13 = Connection;
    v9 = re::globalAllocators(v8)[2];
    v15 = v9;
    v16 = 0;
    if (v9)
    {
      v10 = (*(*v9 + 32))(v9, 56, 0);
    }

    else
    {
      v10 = 0;
    }

    *v10 = &unk_2873F5F60;
    v10[1] = this;
    re::DynamicString::DynamicString((v10 + 2), &v11);
    v10[6] = v13;
    v16 = v10;
    (*(**(this + 41) + 16))(*(this + 41), v14);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v14);
    if (v11 && (v12 & 1) != 0)
    {
      (*(*v11 + 40))();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return Connection;
}

uint64_t re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::tryGet(uint64_t a1, re::Address *this)
{
  v4 = re::Address::hash(this);
  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::findEntry<re::Address>(a1, this, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

unint64_t re::Transport::createConnection(re::Transport *this, const re::Address *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 488))
    {
      v6 = *(this + 62);
    }

    else
    {
      v6 = this + 489;
    }

    if (*(a2 + 1))
    {
      v7 = *(a2 + 2);
    }

    else
    {
      v7 = a2 + 9;
    }

    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Create connection(%s->%s)", buf, 0x16u);
  }

  v8 = *(this + 44);
  if ((v8 + 1) >> 24)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  *(this + 44) = v9;
  v10 = *(this + 86);
  v11 = *(this + 87);
  if (v10 != 0xFFFF || v11 != 0xFFFF)
  {
    if (*(this + 17) > v11)
    {
      v13 = (*(this + 19) + 16 * v11);
      *(v13[1] + 4 * v10) = v9;
      v14 = *v13 + 136 * v10;
      *(this + 43) = *v14;
      goto LABEL_23;
    }

    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  if (*(this + 42) >= *(this + 41))
  {
    re::DataArray<re::Connection>::allocBlock(this + 15);
  }

  v15 = *(this + 17);
  v11 = (v15 - 1);
  if (!v15)
  {
LABEL_29:
    v23 = 0;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v24) = 136315906;
    *(&v24 + 4) = "operator[]";
    WORD6(v24) = 1024;
    HIWORD(v24) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    re::internal::assertLog(5, v5, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v10, v23, v24);
    _os_crash();
    __break(1u);
  }

  v10 = *(this + 42);
  if (v10 >= 0x10000)
  {
    goto LABEL_30;
  }

  v16 = (*(this + 19) + 16 * v11);
  *(this + 42) = v10 + 1;
  *(v16[1] + 4 * v10) = *(this + 44);
  v14 = *v16 + 136 * v10;
LABEL_23:
  ++*(this + 40);
  *v14 = 0;
  re::DynamicString::DynamicString((v14 + 8), a2);
  *(v14 + 68) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 84) = 0x7FFFFFFFLL;
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 108) = 0;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0x8000000000000000;
  v17 = v10 + (v11 << 16) + ((*(this + 44) & 0xFFFFFF) << 32);
  memset(buf, 0, 24);
  v18 = re::Address::hash(a2);
  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::findEntry<re::Address>(this + 272, a2, v18, buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v19 = re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::allocEntry(this + 272, *&buf[8], *buf);
    re::DynamicString::DynamicString((v19 + 8), a2);
    *(v19 + 40) = v17;
    ++*(this + 78);
  }

  v20 = *(this + 70);
  if (v20)
  {
    (*(*v20 + 32))(v20, this, v17);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

void re::Transport::disconnect(re::Transport *this, unint64_t a2, int a3)
{
  v6 = re::DataArray<re::Connection>::tryGet(this + 120, a2);
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    re::DynamicString::setCapacity(&v9, 0);
    v8 = 1;
    v13 = a3;
    re::Transport::connectionStateEvent(this, a2, &v8);
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
      _os_log_debug_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEBUG, "Attempt to disconnect connection that does not exist. This can happen if connection broke right before this request.", &v8, 2u);
    }
  }
}

uint64_t re::DataArray<re::Connection>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 136 * a2;
  }

  else
  {
    return 0;
  }
}

void re::Transport::connectionStateEvent(re::Transport *a1, unint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = re::DataArray<re::Connection>::get(a1 + 120, a2);
  v7 = *v6;
  if (*v6 == 2)
  {
    v15 = *a3;
    if (*a3 == 3)
    {
LABEL_24:
      (*(**(a1 + 76) + 16))(*(a1 + 76), a2, *(a3 + 40));
      goto LABEL_25;
    }

    if (v15 == 2)
    {
LABEL_25:
      v21 = *MEMORY[0x277D85DE8];

      re::Transport::destroyConnection(a1, a2);
      return;
    }

    if (!v15)
    {
      v16 = re::DataArray<re::Connection>::get(a1 + 120, a2);
      v17 = *(v16 + 5);
      if (v17)
      {
        v18 = (v17 + 8);
        v16 = (v17 + 8);
      }

      v19 = re::globalAllocators(v16)[2];
      v36 = v17;
      v37 = v19;
      v34 = &unk_2873F6118;
      v35 = a1;
      v38 = &v34;
      (*(**(a1 + 41) + 16))(*(a1 + 41), &v34);
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v34);
      if (!v17)
      {
        goto LABEL_44;
      }

      v20 = (v17 + 8);
LABEL_43:

      goto LABEL_44;
    }

    v23 = *re::networkLogObjects(v6);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    v26 = *a3;
    LODWORD(v34) = 67109120;
    HIDWORD(v34) = v26;
    v25 = "Unexpected event: %d in 'Closing' state.";
LABEL_36:
    _os_log_impl(&dword_26168F000, v23, OS_LOG_TYPE_DEFAULT, v25, &v34, 8u);
    goto LABEL_44;
  }

  if (v7 == 1)
  {
    v10 = re::DataArray<re::Connection>::get(a1 + 120, a2);
    v11 = *a3;
    if (*a3 == 3)
    {
      v10 = (*(**(a1 + 76) + 16))(*(a1 + 76), a2, *(a3 + 40));
    }

    else if (v11 != 2)
    {
      if (v11 == 1)
      {
        v12 = *(v10 + 5);
        if (v12)
        {
          v13 = (v12 + 8);
          v14 = *(a3 + 44);
          v10 = (v12 + 8);
        }

        else
        {
          v14 = *(a3 + 44);
        }

        v37 = re::globalAllocators(v10)[2];
        v30 = (*(*v37 + 32))(v37, 32, 0);
        *v30 = &unk_2873F6010;
        *(v30 + 8) = a1;
        *(v30 + 16) = v12;
        *(v30 + 24) = v14 != 0;
        v38 = v30;
        (*(**(a1 + 41) + 16))(*(a1 + 41), &v34);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v34);
        re::Transport::connectionSetState(a1, a2, 2);
        v32 = re::globalAllocators(v31)[2];
        v36 = a2;
        v37 = v32;
        v34 = &unk_2873F6068;
        v35 = a1;
        v38 = &v34;
        (*(**(a1 + 40) + 16))(*(a1 + 40), &v34);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v34);
        if (!v12)
        {
          goto LABEL_44;
        }

        v20 = (v12 + 8);
        goto LABEL_43;
      }

      v23 = *re::networkLogObjects(v10);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v24 = *a3;
      LODWORD(v34) = 67109120;
      HIDWORD(v34) = v24;
      v25 = "Unexpected event: %d in 'Active' state.";
      goto LABEL_36;
    }

    v22 = re::globalAllocators(v10)[2];
    v36 = a2;
    v37 = v22;
    v34 = &unk_2873F60C0;
    v35 = a1;
    v38 = &v34;
    (*(**(a1 + 40) + 16))(*(a1 + 40), &v34);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v34);
    goto LABEL_44;
  }

  if (v7)
  {
    goto LABEL_44;
  }

  v8 = *a3;
  if (*a3 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = *MEMORY[0x277D85DE8];

      re::Transport::connectionSetState(a1, a2, 2);
      return;
    }

LABEL_34:
    v23 = *re::networkLogObjects(v6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *a3;
      LODWORD(v34) = 67109120;
      HIDWORD(v34) = v27;
      v25 = "Unexpected event: %d in 'Pending' state.";
      goto LABEL_36;
    }

LABEL_44:
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  re::Transport::connectionSetState(a1, a2, 1);
  v28 = ***(a1 + 76);
  v29 = *MEMORY[0x277D85DE8];

  v28();
}

uint64_t re::DataArray<re::Connection>::handle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(a1 + 32) + 8);
    v5 = 0x10000;
    while (v5)
    {
      v6 = a2 - *(v4 - 1);
      if (v6 >= -135)
      {
        v7 = 0xF0F0F0F0F0F0F0F1 * (v6 >> 3);
        if (v7 < *(a1 + 44))
        {
          goto LABEL_8;
        }
      }

      v3 -= 0x10000;
      --v5;
      v4 += 2;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_7:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
    _os_crash();
    __break(1u);
LABEL_8:
    if (v7 < 0x10000)
    {
      return v7 + ((*(*v4 + 4 * v7) & 0xFFFFFF) << 32) - v3;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v7);
  result = _os_crash();
  __break(1u);
  return result;
}

re *re::Transport::queuePacketForProtocol(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = a4;
  v50 = *MEMORY[0x277D85DE8];
  v9 = re::DataArray<re::Connection>::handle(a1 + 120, a3);
  v10 = *(a3 + 104) + 1;
  *(a3 + 104) = v10;
  v11 = *(a2 + 8) + 1;
  *v46 = &unk_2873F59D0;
  *&v46[8] = v11;
  *&v46[16] = 4;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  re::BitWriter::writeUInt32Bits(v46, v10, 0x10u);
  result = *(a1 + 560);
  if (result)
  {
    result = (*(*result + 48))(result, a1, v9, v8, *(a2 + 32), a2);
    if (!result)
    {
      goto LABEL_53;
    }

    a2 = result;
    v13 = 0;
    v14 = 0;
    v15 = (*(result + 1) + 1);
    do
    {
      v16 = *v15++;
      v14 |= v16 << v13;
      v13 += 8;
    }

    while (v13 != 32);
  }

  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = v17 >> 1;
  }

  else
  {
    v18 = v17 >> 1;
  }

  if (v4 <= 9 && v18)
  {
    v19 = *(a1 + 576);
    if (v19)
    {
      v20 = (*(*v19 + 32))(v19, a2);
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = *re::networkLogObjects(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            if (*(a3 + 16))
            {
              v22 = *(a3 + 24);
            }

            else
            {
              v22 = a3 + 17;
            }

            *v46 = 136315394;
            *&v46[4] = v22;
            *&v46[12] = 1024;
            *&v46[14] = v8;
            _os_log_impl(&dword_26168F000, v21, OS_LOG_TYPE_INFO, "Stats filter triggered event for {destination: %s, channel: %u}", v46, 0x12u);
          }

          goto LABEL_19;
        }

        v23 = *re::networkLogObjects(v20);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 16))
          {
            v39 = *(a3 + 24);
          }

          else
          {
            v39 = a3 + 17;
          }

          *v46 = 136315394;
          *&v46[4] = v39;
          *&v46[12] = 1024;
          *&v46[14] = v8;
          v40 = "Stats filter returned error for {destination: %s, channel: %u}";
LABEL_58:
          _os_log_error_impl(&dword_26168F000, v23, OS_LOG_TYPE_ERROR, v40, v46, 0x12u);
        }
      }
    }
  }

  else
  {
    v23 = *re::networkLogObjects(result);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 16))
      {
        v45 = *(a3 + 24);
      }

      else
      {
        v45 = a3 + 17;
      }

      *v46 = 136315394;
      *&v46[4] = v45;
      *&v46[12] = 1024;
      *&v46[14] = v8;
      v40 = "Cannot collect stats for invalid connection {address: %s, channel: %d}";
      goto LABEL_58;
    }
  }

LABEL_19:
  if (*(a1 + 584) == 1)
  {
    v24 = *(a3 + 116);
    v25 = v24 == 0;
    v26 = (v24 >> 4) & 1;
    if (v25)
    {
      v26 = 1;
    }

    if (v26)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      LODWORD(v8) = v4;
    }
  }

  v28 = *(a3 + 40);
  v27 = a3 + 40;
  v29 = v28 + 40 * v8;
  atomic_fetch_add_explicit((v29 + 936), *(a2 + 24), memory_order_release);
  atomic_fetch_add_explicit((v29 + 944), *(a2 + 28), memory_order_release);
  atomic_fetch_add_explicit((v29 + 928), 1uLL, memory_order_release);
  atomic_store(a2, *(v29 + 912));
  *(v29 + 912) = a2;
  ++*(*v27 + 1712);
  if ((*(v27 + 80) & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 184));
    v30 = *(a1 + 208);
    if (v30)
    {
      v31 = 8 * v30;
      v32 = *(a1 + 224);
      while (*v32 != *v27)
      {
        ++v32;
        v31 -= 8;
        if (!v31)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v32 = *(a1 + 224);
    }

    if (v32 == (*(a1 + 224) + 8 * v30))
    {
LABEL_34:
      re::DynamicArray<re::SharedPtr<re::ProtocolHandle>>::add((a1 + 192), v27);
    }

    os_unfair_lock_unlock((a1 + 184));
  }

  result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
  if (result)
  {
    v33 = *(a1 + 600);
    if (v33)
    {
      re::Session::peerID(v33);
      v34 = *(a1 + 600);
      v35 = *(v34 + 2296);
      if (v35)
      {
        v36 = *(v34 + 2312);
        v37 = 8 * v35;
        while (1)
        {
          v38 = *v36;
          if (*(*v36 + 32) == v9)
          {
            break;
          }

          ++v36;
          v37 -= 8;
          if (!v37)
          {
            goto LABEL_50;
          }
        }

        v41 = (v38 + 8);
        v42 = *(v38 + 24);
      }
    }

LABEL_50:
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (result)
      {
        v43 = *(a2 + 24);
        result = kdebug_trace();
      }
    }
  }

LABEL_53:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void re::Transport::cleanupPendingQueues(os_unfair_lock_s **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = a2 + 32;
    v5 = a2 + 912;
    v6 = a2 + 1312;
    do
    {
      v7 = re::PacketQueue::dequeue((v4 + 40 * v3));
      if (v7)
      {
        v8 = v7;
        do
        {
          re::PacketPool::free(a1[48], v8);
          v8 = re::PacketQueue::dequeue((v4 + 40 * v3));
        }

        while (v8);
      }

      v9 = re::PacketQueue::dequeue((v5 + 40 * v3));
      if (v9)
      {
        v10 = v9;
        do
        {
          re::PacketPool::free(a1[48], v10);
          v10 = re::PacketQueue::dequeue((v5 + 40 * v3));
        }

        while (v10);
      }

      v11 = re::PacketQueue::dequeue((v6 + 40 * v3));
      if (v11)
      {
        v12 = v11;
        do
        {
          re::PacketPool::free(a1[48], v12);
          v12 = re::PacketQueue::dequeue((v6 + 40 * v3));
        }

        while (v12);
      }

      ++v3;
    }

    while (v3 != 10);
  }

  else
  {
    v13 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_26168F000, v13, OS_LOG_TYPE_ERROR, "Cannot cleanup pending queues for invalid handle: nil", v14, 2u);
    }
  }
}

uint64_t re::Transport::writePacketHeader(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v5 = *(a1 + 8);
  *(v5 + 2) = 0;
  *v5 = 0;
  v6 = *(a1 + 8);
  v8[0] = &unk_2873F59D0;
  v8[1] = v6;
  v9 = 3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  re::BitWriter::writeUInt32Bits(v8, *a2, 1u);
  result = re::BitWriter::writeUInt32Bits(v8, a2[1], 1u);
  if ((a3 & 8) != 0)
  {
    re::BitWriter::writeUInt32Bits(v8, a2[2], 1u);
    re::BitWriter::writeUInt32Bits(v8, 0, 1u);
    re::BitWriter::writeUInt32Bits(v8, a2[3] + 1, 4u);
    return re::BitWriter::writeUInt32Bits(v8, *(a2 + 2), 0x10u);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::ProtocolHandle>>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*result)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v4 = *(v3 + 2);
  }

  v9 = *a2;
  *(*(v3 + 4) + 8 * v4) = *a2;
  if (v9)
  {
    result = (v9 + 8);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::Transport::send(re *a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v7 = a3;
  v8 = a1;
  v81 = *MEMORY[0x277D85DE8];
  if (*(a3 + 24) >> 27)
  {
    v9 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = *(v7 + 24);
      *buf = 67109376;
      *&buf[4] = v24;
      *&buf[8] = 2048;
      *&buf[10] = 0x8000000;
      _os_log_error_impl(&dword_26168F000, v9, OS_LOG_TYPE_ERROR, "Outbound message length (%u) exceeds kMaxSupportedMessageSize (%zu), message will be discarded.", buf, 0x12u);
    }

    re::PacketPool::free(*(v8 + 384), v7);
    result = 4;
    goto LABEL_71;
  }

  if (a4 >= 0xA)
  {
    v12 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v12, OS_LOG_TYPE_ERROR, "Attempt to send data to an invalid channel", buf, 2u);
    }

    re::PacketPool::free(*(v8 + 384), v7);
    result = 1;
    goto LABEL_71;
  }

  v17 = re::DataArray<re::Connection>::tryGet(a1 + 120, a2);
  if (v17)
  {
    v18 = v17;
    if (*v17 == 1)
    {
      v76 = a7;
      if (*(v17 + 120) == 1)
      {
        v19.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        if (v19.__d_.__rep_ >= *(v18 + 128))
        {
          v20 = *re::networkLogObjects(v19.__d_.__rep_);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v18 + 16))
            {
              v21 = *(v18 + 24);
            }

            else
            {
              v21 = v18 + 17;
            }

            *buf = 136315394;
            *&buf[4] = v21;
            *&buf[12] = 1024;
            *&buf[14] = a4;
            _os_log_impl(&dword_26168F000, v20, OS_LOG_TYPE_DEFAULT, "Sending data on paused connection '%s', channel %d", buf, 0x12u);
          }

          v19.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
          *(v18 + 128) = v19.__d_.__rep_ + 2000000000;
          a7 = v76;
        }

        if (atomic_load_explicit((*(v18 + 40) + 944), memory_order_acquire) >= 0x20000001)
        {
          v25 = *re::networkLogObjects(v19.__d_.__rep_);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            if (*(v18 + 16))
            {
              v66 = *(v18 + 24);
            }

            else
            {
              v66 = v18 + 17;
            }

            explicit = atomic_load_explicit((*(v18 + 40) + 944), memory_order_acquire);
            *buf = 136315394;
            *&buf[4] = v66;
            *&buf[12] = 2048;
            *&buf[14] = explicit;
            _os_log_error_impl(&dword_26168F000, v25, OS_LOG_TYPE_ERROR, "Send queue on connection '%s' has overflowed (%zu bytes), disconnecting", buf, 0x16u);
          }

          (*(**(v8 + 608) + 16))(*(v8 + 608), a2, 4);
          re::Transport::disconnect(v8, a2, 1);
          a7 = v76;
        }

        if (atomic_load_explicit((*(v18 + 40) + 944), memory_order_acquire) >= 0x8000001)
        {
          v26 = *re::networkLogObjects(v19.__d_.__rep_);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v18 + 16))
            {
              v27 = *(v18 + 24);
            }

            else
            {
              v27 = v18 + 17;
            }

            v28 = atomic_load_explicit((*(v18 + 40) + 944), memory_order_acquire);
            *buf = 136315394;
            *&buf[4] = v27;
            *&buf[12] = 2048;
            *&buf[14] = v28;
            _os_log_impl(&dword_26168F000, v26, OS_LOG_TYPE_DEFAULT, "Send queue on connection '%s' is very large (%zu bytes)", buf, 0x16u);
          }

          (*(**(v8 + 608) + 16))(*(v8 + 608), a2, 3);
          a7 = v76;
        }
      }

      if (*(v18 + 16))
      {
        v29 = *(v18 + 24);
      }

      else
      {
        v29 = v18 + 17;
      }

      v30 = *(v8 + 392);
      if (v30 != 4 && a6)
      {
        v32 = re::PacketPool::allocate(*(v8 + 384), (*(v7 + 28) + 3));
        re::Packet::offsetBy(v32, 3);
        v33 = *(v32 + 1);
        *(v33 + 2) = 0;
        *v33 = 0;
        v34 = compression_encode_scratch_buffer_size(v31);
        if (*(v8 + 408) < v34)
        {
          re::DynamicArray<unsigned char>::resize(v8 + 400, v34);
        }

        v35 = *(v7 + 24);
        if (v35 <= 4)
        {
          v36 = 0;
        }

        else
        {
          v36 = v35 - 4;
        }

        v37 = compression_encode_buffer((*(v32 + 2) + 4), v36, *(v7 + 16), v35, *(v8 + 432), v31);
        if (v37)
        {
          v38 = v37;
          v40 = *(v32 + 1);
          v39 = *(v32 + 2);
          *(v32 + 7) += v39 - v40;
          *v39 = *(v7 + 24);
          *(v32 + 2) = v40;
          v75 = 1;
          *buf = 1;
          buf[2] = a5 == 0;
          buf[3] = a4;
          *&buf[4] = 0;
          re::Transport::writePacketHeader(v32, buf, v76);
          *(v32 + 6) = v38 + 7;
          re::PacketPool::free(*(v8 + 384), v7);
          v7 = v32;
          goto LABEL_48;
        }

        re::PacketPool::free(*(v8 + 384), v32);
        a7 = v76;
      }

      *(v7 + 28) += 3;
      *(v7 + 16) = *(v7 + 8);
      *buf = 0;
      buf[2] = a5 == 0;
      buf[3] = a4;
      *&buf[4] = 0;
      re::Transport::writePacketHeader(v7, buf, a7);
      v75 = 0;
      *(v7 + 24) += 3;
LABEL_48:
      *(v7 + 32) = a5;
      if (*(v8 + 585) == 1)
      {
        v73 = re::Transport::generateNextPacketSeqNumber(void)::packetSeqNumber++;
        v41 = *(v7 + 24);
        v74 = v18;
        v42 = 2;
        if (v41 >= 0x80)
        {
          v43 = *(v7 + 24);
          do
          {
            v44 = v43 >> 14;
            v43 >>= 7;
            v42 += 2;
          }

          while (v44);
        }

        if (v41)
        {
          v45 = 0;
          v46 = 0;
          v68 = a4;
          v69 = (v41 + *(v8 + 512) - v42 - 13 - 1) / (*(v8 + 512) - v42 - 13);
          v70 = *(v8 + 512) - v42 - 13;
          v72 = v8;
          v71 = a4;
          do
          {
            v47 = *(v7 + 24);
            v48 = 1;
            if (v47 >= 0x80)
            {
              do
              {
                ++v48;
                v49 = v47 >> 14;
                v47 >>= 7;
              }

              while (v49);
            }

            v50 = 1;
            if (v45 >= 0x80)
            {
              v51 = v45;
              do
              {
                ++v50;
                v52 = v51 >> 14;
                v51 >>= 7;
              }

              while (v52);
            }

            if (v41 >= v70)
            {
              v53 = v70;
            }

            else
            {
              v53 = v41;
            }

            v54 = v53 + v48 + v50;
            v55 = v54 + 10;
            v8 = v72;
            v56 = v54 + 13;
            v57 = re::PacketPool::allocate(*(v72 + 384), (v54 + 13));
            re::Packet::offsetBy(v57, 3);
            v58 = *(v57 + 1);
            *(v58 + 2) = 0;
            *v58 = 0;
            v59 = *(v57 + 2);
            *buf = &unk_2873F59D0;
            *&buf[8] = v59;
            *&buf[16] = v55;
            buf[20] = 0;
            v79 = 0;
            v80 = 0;
            re::BitWriter::writeUInt32Bits(buf, v73, 0x10u);
            re::BitWriter::writeUInt32Bits(buf, v46, 0x20u);
            re::BitWriter::writeUInt32Bits(buf, v69, 0x20u);
            v77 = 0;
            re::BiasedVLQ::write(&v77, buf, *(v7 + 24));
            v77 = 0;
            re::BiasedVLQ::write(&v77, buf, v45);
            re::BitWriter::writeData(buf, (*(v7 + 8) + v45), v53);
            *(v57 + 7) += 3;
            *(v57 + 2) = *(v57 + 1);
            v60 = *(v7 + 32);
            *(v57 + 8) = v60;
            LOBYTE(v77) = v75;
            BYTE1(v77) = 1;
            BYTE2(v77) = v60 == 0;
            BYTE3(v77) = v71;
            WORD2(v77) = 0;
            re::Transport::writePacketHeader(v57, &v77, v76);
            *(v57 + 6) = v56;
            if (*(v72 + 584) == 1)
            {
              v61 = v74;
              v62 = *(v74 + 40) + 40 * v68;
              atomic_fetch_add_explicit((v62 + 56), v56, memory_order_release);
              atomic_fetch_add_explicit((v62 + 64), *(v57 + 7), memory_order_release);
              atomic_fetch_add_explicit((v62 + 48), 1uLL, memory_order_release);
              atomic_store(v57, *(v62 + 32));
              *(v62 + 32) = v57;
              ++*(v61 + 96);
            }

            else
            {
              re::Transport::queuePacketForProtocol(v72, v57, v74, v71);
            }

            v45 += v53;
            ++v46;
            v41 -= v53;
          }

          while (v41);
        }

        re::PacketPool::free(*(v8 + 384), v7);
      }

      else
      {
        if (*(v8 + 584) == 1)
        {
          result = 0;
          v63 = *(v18 + 40) + 40 * a4;
          atomic_fetch_add_explicit((v63 + 56), *(v7 + 24), memory_order_release);
          atomic_fetch_add_explicit((v63 + 64), *(v7 + 28), memory_order_release);
          atomic_fetch_add_explicit((v63 + 48), 1uLL, memory_order_release);
          atomic_store(v7, *(v63 + 32));
          *(v63 + 32) = v7;
          ++*(v18 + 96);
          goto LABEL_71;
        }

        re::Transport::queuePacketForProtocol(v8, v7, v18, a4);
      }

      result = 0;
      goto LABEL_71;
    }

    v23 = *re::networkLogObjects(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      if (*(v18 + 16))
      {
        v65 = *(v18 + 24);
      }

      else
      {
        v65 = v18 + 17;
      }

      *buf = 136315138;
      *&buf[4] = v65;
      _os_log_error_impl(&dword_26168F000, v23, OS_LOG_TYPE_ERROR, "Attempt to send data to connection '%s' that is disconnected", buf, 0xCu);
    }

    re::PacketPool::free(*(v8 + 384), v7);
    result = 3;
  }

  else
  {
    v22 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v22, OS_LOG_TYPE_ERROR, "Attempt to send data to connection that does not exist", buf, 2u);
    }

    re::PacketPool::free(*(v8 + 384), v7);
    result = 2;
  }

LABEL_71:
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::logDebugConnectionStatsForHandle(uint64_t a1, uint64_t a2, int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ / 1000000;
  v7 = v6.__d_.__rep_ - *(a1 + 1720);
  if (v7 >= 0x1389)
  {
    os_unfair_lock_lock((a1 + 1760));
    v8 = *(a1 + 1744);
    v9 = *(a1 + 1748);
    v10 = *(a1 + 1752);
    v11 = *(a1 + 1756);
    os_unfair_lock_unlock((a1 + 1760));
    v13 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 1712);
      v15 = "onReceive";
      v16 = *(a1 + 1716);
      if (a3)
      {
        v15 = "onSend";
      }

      v18 = 136317186;
      v19 = a2;
      v20 = 1024;
      v21 = v14;
      v22 = 1024;
      v23 = v16;
      v24 = 1024;
      v25 = v11;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v8;
      v32 = 2048;
      v33 = v7;
      v34 = 2080;
      v35 = v15;
      _os_log_impl(&dword_26168F000, v13, OS_LOG_TYPE_DEFAULT, "Connection Stats: address=%s, outbound=%d, inbound=%d, ProtocolConnectionStats: send=%u(%u bytes), recv=%u(%u bytes) <period=%llu ms, %s>", &v18, 0x44u);
    }

    *(a1 + 1712) = 0;
    *(a1 + 1720) = v6;
  }

  v17 = *MEMORY[0x277D85DE8];
}

BOOL re::Transport::receive(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 >= 0xA)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid channel", "channel < kChannelIdMaxChannels", "receive", 1058);
    _os_crash();
    __break(1u);
  }

  v6 = re::DataArray<re::Connection>::tryGet(a1 + 120, a2);
  if (!v6)
  {
    v10 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    *buf = 0;
    v11 = "Attempt to receive data from connection that does not exist";
    v12 = v10;
    v13 = 2;
LABEL_13:
    _os_log_error_impl(&dword_26168F000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    result = 0;
    goto LABEL_8;
  }

  v7 = v6;
  if (*v6 != 1)
  {
    v14 = *re::networkLogObjects(v6);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    if (*(v7 + 16))
    {
      v16 = *(v7 + 3);
    }

    else
    {
      v16 = v7 + 17;
    }

    *buf = 136315138;
    v18 = v16;
    v11 = "Attempt to receive data from connection '%s' that is disconnected";
    v12 = v14;
    v13 = 12;
    goto LABEL_13;
  }

  v8 = re::PacketQueue::dequeue((*(v6 + 5) + 40 * a3 + 1312));
  *a4 = v8;
  result = v8 != 0;
LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

re::DynamicString *re::Transport::connectionAddress@<X0>(re::Transport *this@<X0>, uint64_t a2@<X1>, re::DynamicString *a3@<X8>)
{
  v4 = re::DataArray<re::Connection>::tryGet(this + 120, a2);
  if (v4)
  {

    return re::DynamicString::DynamicString(a3, (v4 + 8));
  }

  else
  {
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;

    return re::DynamicString::setCapacity(a3, 0);
  }
}

void re::Transport::connectionStats(re::Transport *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = re::DataArray<re::Connection>::tryGet(this + 120, a2);
  if (v4 && (v5 = *(v4 + 40)) != 0)
  {
    os_unfair_lock_lock((v5 + 1760));
    *(a3 + 4) = *(v5 + 1736);
    *(a3 + 20) = *(v5 + 1752);
    os_unfair_lock_unlock((v5 + 1760));
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void re::Transport::connectionSetState(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = re::DataArray<re::Connection>::get(a1 + 120, a2);
  v6 = *re::networkLogObjects(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 488))
    {
      v7 = *(a1 + 496);
    }

    else
    {
      v7 = a1 + 489;
    }

    v8 = *(v5 + 3);
    v9 = s_debugStateNames[*v5];
    v10 = s_debugStateNames[a3];
    if ((*(v5 + 2) & 1) == 0)
    {
      v8 = v5 + 17;
    }

    v12 = 136315906;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    v16 = 2080;
    v17 = v9;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "Connection(%s->%s) state changed %s->%s", &v12, 0x2Au);
  }

  *v5 = a3;
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t re::DataArray<re::Connection>::get(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 136 * a2;
}

void re::Transport::destroyConnection(re::Transport *this, unint64_t a2)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v4 = re::DataArray<re::Connection>::tryGet(this + 120, a2);
  v5 = *re::networkLogObjects(v4);
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 488))
      {
        v6 = *(this + 62);
      }

      else
      {
        v6 = this + 489;
      }

      if (v4[16])
      {
        v7 = *(v4 + 3);
      }

      else
      {
        v7 = v4 + 17;
      }

      v8 = s_debugStateNames[*v4];
      v9 = *(v4 + 5);
      *v27 = 136315906;
      *&v27[4] = v6;
      *&v27[12] = 2080;
      *&v27[14] = v7;
      *&v27[22] = 2080;
      v28 = v8;
      LOWORD(v29[0]) = 2048;
      *(v29 + 2) = v9;
      _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Destroy connection (%s->%s) (%s) bound to protocol handle %p", v27, 0x2Au);
    }

    v10 = *(this + 70);
    if (v10)
    {
      (*(*v10 + 40))(v10, this, a2);
    }

    v11 = *(v4 + 5);
    if (v11)
    {
      v12 = (v11 + 8);
      os_unfair_lock_lock((v11 + 1764));
      *(v11 + 24) = 0;
      os_unfair_lock_unlock((v11 + 1764));
      v13 = re::globalAllocators((v11 + 8))[2];
      *&v27[16] = v11;
      v28 = v13;
      *v27 = &unk_2873F63D8;
      *&v27[8] = this;
      v29[0] = v27;
      (*(**(this + 41) + 16))(*(this + 41), v27);
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(v27);
    }

    v14 = re::Address::hash((v4 + 8));
    re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::findEntry<re::Address>(this + 272, (v4 + 8), v14, v27);
    v15 = *&v27[12];
    if (*&v27[12] != 0x7FFFFFFF)
    {
      v16 = *(this + 36);
      v17 = *(v16 + 56 * *&v27[12]) & 0x7FFFFFFF;
      if (*&v27[16] == 0x7FFFFFFF)
      {
        *(*(this + 35) + 4 * *&v27[8]) = v17;
        v15 = *&v27[12];
      }

      else
      {
        *(v16 + 56 * *&v27[16]) = *(v16 + 56 * *&v27[16]) & 0x80000000 | v17;
      }

      v18 = (v16 + 56 * v15);
      v19 = *v18;
      if (*v18 < 0)
      {
        *v18 = v19 & 0x7FFFFFFF;
        re::DynamicString::deinit((v18 + 2));
        v20 = *&v27[12];
        v16 = *(this + 36);
        v19 = *(v16 + 56 * *&v27[12]);
        v15 = *&v27[12];
      }

      else
      {
        v20 = v15;
      }

      *(v16 + 56 * v20) = *(this + 77) | v19 & 0x80000000;
      *(this + 77) = v15;
      --*(this + 75);
      ++*(this + 78);
    }

    while (*(v4 + 19))
    {
      v21 = *(v4 + 20);
      if (v21)
      {
        v22 = 0;
        v23 = *(v4 + 8);
        while (1)
        {
          v24 = *v23;
          v23 += 8;
          if (v24 < 0)
          {
            break;
          }

          if (v21 == ++v22)
          {
            LODWORD(v22) = *(v4 + 20);
            break;
          }
        }

        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      re::Transport::removeStream(this, a2, *(*(v4 + 8) + 32 * v25 + 8));
    }

    re::DataArray<re::Connection>::destroy(this + 120, a2);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v27 = 134217984;
    *&v27[4] = a2;
    _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "Trying to destroy invalid connection handle (%llu).", v27, 0xCu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void re::Transport::onConnected(re *a1, uint64_t a2, uint64_t a3, const re::DynamicString *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = (a3 + 8);
    *&v13 = a1;
    re::DynamicString::DynamicString((&v13 + 8), a4);
    v15 = a3;
    v8 = re::globalAllocators((a3 + 8))[2];
    v17 = v8;
    v18 = 0;
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8, 56, 0);
    }

    else
    {
      v9 = 0;
    }

    *v9 = &unk_2873F6170;
    v9[1] = v13;
    re::DynamicString::DynamicString((v9 + 2), (&v13 + 8));
    v9[6] = v15;
    v15 = 0;
    v18 = v9;
    (*(**(a1 + 40) + 16))(*(a1 + 40), v16);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v16);
    if (v15)
    {

      v15 = 0;
    }

    if (*(&v13 + 1) && (v14 & 1) != 0)
    {
      (*(**(&v13 + 1) + 40))();
    }
  }

  else
  {
    v10 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 1))
      {
        v11 = *(a4 + 2);
      }

      else
      {
        v11 = a4 + 9;
      }

      LODWORD(v13) = 136315138;
      *(&v13 + 4) = v11;
      _os_log_error_impl(&dword_26168F000, v10, OS_LOG_TYPE_ERROR, "onConnected: Invalid handle provided for '%s'!", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void re::Transport::onDisconnected(re *a1, uint64_t a2, uint64_t a3, const re::DynamicString *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = *re::networkLogObjects((a3 + 8));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (*(a4 + 1))
      {
        v13 = *(a4 + 2);
      }

      else
      {
        v13 = a4 + 9;
      }

      LODWORD(v15) = 136315138;
      *(&v15 + 4) = v13;
      _os_log_debug_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEBUG, "queueTransportCommand '%s' OnDisconnected", &v15, 0xCu);
    }

    *&v15 = a1;
    *(&v15 + 1) = a3;
    v8 = (a3 + 8);
    v9 = re::DynamicString::DynamicString(v16, a4);
    v18 = re::globalAllocators(v9)[2];
    v10 = (*(*v18 + 32))(v18, 56, 0);
    *v10 = &unk_2873F61C8;
    *(v10 + 8) = v15;
    *(&v15 + 1) = 0;
    re::DynamicString::DynamicString((v10 + 24), v16);
    v19 = v10;
    (*(**(a1 + 40) + 16))(*(a1 + 40), v17);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v17);
    if (v16[0])
    {
      if (v16[1])
      {
        (*(*v16[0] + 40))();
      }

      memset(v16, 0, sizeof(v16));
    }

    if (*(&v15 + 1))
    {
    }
  }

  else
  {
    v11 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 1))
      {
        v14 = *(a4 + 2);
      }

      else
      {
        v14 = a4 + 9;
      }

      LODWORD(v15) = 136315138;
      *(&v15 + 4) = v14;
      _os_log_error_impl(&dword_26168F000, v11, OS_LOG_TYPE_ERROR, "onDisconnected: Invalid handle provided for '%s'!", &v15, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void re::Transport::onError(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = (a3 + 8);
    v11 = re::globalAllocators((a3 + 8))[2];
    v8 = (*(*v11 + 32))(v11, 32, 0);
    *v8 = &unk_2873F6220;
    *(v8 + 8) = a1;
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v12 = v8;
    (*(**(a1 + 320) + 16))(*(a1 + 320), v10);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void re::Transport::onUnresponsive(re *a1, uint64_t a2, uint64_t a3)
{
  v9[5] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = (a3 + 8);
    v6 = re::globalAllocators((a3 + 8))[2];
    v9[2] = a3;
    v9[3] = v6;
    v9[0] = &unk_2873F6278;
    v9[1] = a1;
    v9[4] = v9;
    (*(**(a1 + 40) + 16))(*(a1 + 40), v9);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v9);
  }

  else
  {
    v7 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9[0]) = 0;
      _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "onUnresponsive: Invalid handle!", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void re::Transport::onResponsive(re *a1, uint64_t a2, uint64_t a3)
{
  v9[5] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = (a3 + 8);
    v6 = re::globalAllocators((a3 + 8))[2];
    v9[2] = a3;
    v9[3] = v6;
    v9[0] = &unk_2873F62D0;
    v9[1] = a1;
    v9[4] = v9;
    (*(**(a1 + 40) + 16))(*(a1 + 40), v9);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v9);
  }

  else
  {
    v7 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9[0]) = 0;
      _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "onResponsive: Invalid handle!", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void re::Transport::onReceiveAsync(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = atomic_load((a1 + 336));
  if (v6)
  {
    v13 = re::DataArray<re::Connection>::tryGet(a1 + 120, *(a3 + 24));
    if (v13)
    {
      if (a4 < 0xA)
      {
        v15 = re::PacketPool::allocate(*(a1 + 384), a6);
        *(v15 + 6) = a6;
        memcpy(*(v15 + 2), a5, a6);
        v16 = (a3 + 8);
        v23 = re::globalAllocators((a3 + 8))[2];
        v17 = (*(*v23 + 32))(v23, 48, 0);
        *v17 = &unk_2873F6328;
        *(v17 + 8) = a1;
        *(v17 + 16) = a2;
        *(v17 + 24) = a3;
        *(v17 + 32) = a4;
        *(v17 + 40) = v15;
        v24 = v17;
        (*(**(a1 + 320) + 16))(*(a1 + 320), buf);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(buf);
        v18 = *(a1 + 376);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 0x40000000;
        v20[2] = ___ZN2re9Transport14onReceiveAsyncEPNS_13ProtocolLayerEPNS_14ProtocolHandleENS_9ChannelIdEPKvj_block_invoke;
        v20[3] = &__block_descriptor_tmp_6;
        v20[4] = a1;
        v20[5] = v18;
        dispatch_async(v18, v20);
      }

      else
      {
        v14 = *re::networkLogObjects(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v22 = a4;
          _os_log_error_impl(&dword_26168F000, v14, OS_LOG_TYPE_ERROR, "Transport cannot receive on invalid channel id: %hhu", buf, 8u);
        }

        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void *___ZN2re9Transport14onReceiveAsyncEPNS_13ProtocolLayerEPNS_14ProtocolHandleENS_9ChannelIdEPKvj_block_invoke(uint64_t a1)
{
  result = dispatch_queue_get_specific(*(a1 + 40), *(a1 + 32));
  if (result)
  {
    result = result[76];
    if (result)
    {
      v2 = *(*result + 48);

      return v2();
    }
  }

  return result;
}

uint64_t re::Transport::onReceive(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned int a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a4 >= 0xA)
  {
    v8 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67109120;
      v20[1] = a4;
      _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "Transport cannot receive on invalid channel id: %hhu", v20, 8u);
    }

    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = kdebug_trace();
    }

    goto LABEL_17;
  }

  ++*(a3 + 1716);
  v13 = re::DataArray<re::Connection>::tryGet(a1 + 120, *(a3 + 24));
  if (v13)
  {
    if (*(v13 + 16))
    {
      v14 = *(v13 + 24);
    }

    else
    {
      v14 = (v13 + 17);
    }
  }

  else
  {
    v14 = "N/A";
  }

  v15 = a6;
  v16 = *(a1 + 70);
  if (v16)
  {
    result = (*(*v16 + 56))(v16, a1, *(a3 + 24), a4, a5, a6);
    if (!v17)
    {
LABEL_17:
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    a5 = result;
    v15 = v17;
  }

  v18 = *MEMORY[0x277D85DE8];

  return re::Transport::onReceiveData(a1, a3, a4, a5, v15);
}