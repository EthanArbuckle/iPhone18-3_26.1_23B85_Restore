double CASPage::allocate(CASPage *this)
{
  address = 0;
  v1 = mach_vm_allocate(*MEMORY[0x29EDCA6B0], &address, *MEMORY[0x29EDCA6D0], 603979777);
  if (v1)
  {
    v2 = v1;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      CASPage::allocate(v2);
    }
  }

  else
  {
    v4 = address;
    result = 0.0;
    *address = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[15] = 0u;
  }

  return result;
}

void *channel_retain(void *object)
{
  if (object)
  {
    return os_retain(object);
  }

  return object;
}

void channel_release(void *object)
{
  if (object)
  {
    os_release(object);
  }
}

BOOL assert_wait(atomic_ullong *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 | 1;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, v3);
  result = v4 == v2;
  if (v4 == v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  return result;
}

BOOL release_wait(atomic_ullong *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 & 0xFFFFFFFFFFFFFFFELL;
  v4 = *a2;
  atomic_compare_exchange_strong(a1, &v4, v3);
  result = v4 == v2;
  if (v4 == v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  return result;
}

uint64_t channel_endpoint_obj_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2A1C74938](v2, a1);
}

uint64_t channel_obj_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2A1C74938](v2, a1);
}

uint64_t channel_dispatch_obj_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2A1C74938](v2, a1);
}

uint64_t channel_rt_obj_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2A1C74938](v2, a1);
}

uint64_t DispatchChannel::DispatchChannel(uint64_t a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5, int a6, int a7, int a8, int a9, void *a10, uint64_t a11)
{
  v19 = a10;
  v36 = *a3;
  v37 = *(a3 + 16);
  v34 = *a4;
  v35 = *(a4 + 2);
  Channel::Channel(a1, a2, &v36, &v34, a5, a6, a7, a8, a9);
  v20 = v19;
  *(a1 + 88) = v20;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a11;
  *(a1 + 128) = 0;
  v21 = atomic_load((a1 + 72));
  v22 = MEMORY[0x29EDCA5A0];
  v23 = dispatch_source_create(MEMORY[0x29EDCA5A0], v21, 0, v20);
  v24 = *(a1 + 96);
  *(a1 + 96) = v23;

  v25 = dispatch_source_create(v22, *(a1 + 84), 0, *(a1 + 88));
  v26 = *(a1 + 104);
  *(a1 + 104) = v25;

  v27 = *(a1 + 120);
  object_retain_internal();
  v28 = *(a1 + 96);
  handler[5] = MEMORY[0x29EDCA5F8];
  handler[6] = 3321888768;
  handler[7] = ___ZN15DispatchChannelC2Eb17MessageRingBufferS0_P7CASPagejjjjPU28objcproto17OS_dispatch_queue8NSObjectPv_block_invoke;
  handler[8] = &__block_descriptor_48_ea8_32c111_ZTSKZN15DispatchChannelC1Eb17MessageRingBufferS0_P7CASPagejjjjPU28objcproto17OS_dispatch_queue8NSObjectPvE3__0_e5_v8__0l;
  handler[9] = a1;
  v33 = a7;
  dispatch_source_set_mandatory_cancel_handler();
  v29 = *(a1 + 96);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3321888768;
  handler[2] = ___ZN15DispatchChannelC2Eb17MessageRingBufferS0_P7CASPagejjjjPU28objcproto17OS_dispatch_queue8NSObjectPv_block_invoke_1;
  handler[3] = &__block_descriptor_40_ea8_32c111_ZTSKZN15DispatchChannelC1Eb17MessageRingBufferS0_P7CASPagejjjjPU28objcproto17OS_dispatch_queue8NSObjectPvE3__1_e5_v8__0l;
  handler[4] = a1;
  dispatch_source_set_event_handler(v29, handler);
  v30 = *(a1 + 120);
  object_retain_internal();
  DispatchChannel::set_msg_source_mandatory_cancel_handler(a1, 0);
  AssertableValue::AssertableValue(&v36);
  do
  {
    *&v36 = atomic_load_explicit(*(a1 + 64), memory_order_acquire);
  }

  while (!assert_wait(*(a1 + 64), &v36));

  return a1;
}

{
  return DispatchChannel::DispatchChannel(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t ___ZN15DispatchChannelC2Eb17MessageRingBufferS0_P7CASPagejjjjPU28objcproto17OS_dispatch_queue8NSObjectPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  mach_port_mod_refs(*MEMORY[0x29EDCA6B0], *(a1 + 40), 1u, -1);
  v2 = *(v1 + 120);

  return object_release_internal();
}

uint64_t __copy_helper_block_ea8_32c111_ZTSKZN15DispatchChannelC1Eb17MessageRingBufferS0_P7CASPagejjjjPU28objcproto17OS_dispatch_queue8NSObjectPvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = v2;
  return result;
}

void ___ZN15DispatchChannelC2Eb17MessageRingBufferS0_P7CASPagejjjjPU28objcproto17OS_dispatch_queue8NSObjectPv_block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (Channel::poll_dead_name_notification(v1))
  {

    DispatchChannel::cancel(v1);
  }
}

void DispatchChannel::set_msg_source_mandatory_cancel_handler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = MEMORY[0x29C28CED0](a2);
  v4 = MEMORY[0x29C28CED0]();
  dispatch_source_set_mandatory_cancel_handler();
}

uint64_t ___ZN15DispatchChannel39set_msg_source_mandatory_cancel_handlerEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  mach_port_mod_refs(*MEMORY[0x29EDCA6B0], *(v2 + 84), 1u, -1);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  v4 = *(v2 + 120);
  object_release_internal();
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t __copy_helper_block_ea8_32c91_ZTSKZN15DispatchChannel39set_msg_source_mandatory_cancel_handlerEU13block_pointerFvvEE3__0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x29C28CED0](v3);
  *(a1 + 40) = result;
  return result;
}

void DispatchChannel::cancel(DispatchChannel *this)
{
  atomic_exchange(this + 18, 0);
  dispatch_source_cancel(*(this + 12));
  dispatch_source_cancel(*(this + 13));

  DispatchChannel::activate_no_check(this);
}

void DispatchChannel::activate_no_check(DispatchChannel *this)
{
  dispatch_activate(*(this + 12));
  dispatch_activate(*(this + 13));
  v2 = *(*(this + 2) + 256);
  explicit = atomic_load_explicit(*(this + 8), memory_order_acquire);
  if (v2 < AssertableValue::value(&explicit))
  {
    v3 = *(this + 15);
    object_retain_internal();
    v4 = *(this + 11);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3321888768;
    v5[2] = ___ZN15DispatchChannel17activate_no_checkEv_block_invoke;
    v5[3] = &__block_descriptor_40_ea8_32c50_ZTSKZN15DispatchChannel17activate_no_checkEvE3__0_e5_v8__0l;
    v5[4] = this;
    dispatch_async(v4, v5);
  }
}

void DispatchChannel::try_activate(DispatchChannel *this)
{
  if (*(this + 14))
  {
    if (*(this + 128) == 1)
    {
      DispatchChannel::activate_no_check(this);
    }
  }
}

uint64_t ___ZN15DispatchChannel17activate_no_checkEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DispatchChannel::dequeue_messages(v1);
  v2 = *(v1 + 15);

  return object_release_internal();
}

void DispatchChannel::dequeue_messages(DispatchChannel *this)
{
  dispatch_assert_queue_V2(*(this + 11));
  v2 = Channel::msg_wait(this, 0);
  if (v2 != 14 && v2 != 37)
  {
    v3 = MEMORY[0x29C28CED0](*(this + 14));
    AssertableValue::AssertableValue(&v8);
    while (1)
    {
      v7 = 0;
      while (1)
      {
        Channel::receive_message(this, &v8, &v7, v4);
        if ((v6 & 1) == 0)
        {
          break;
        }

        v3[2](v3, v5 + 8, (v4[0] - 8), v4[1]);
        if (!atomic_load_explicit(this + 18, memory_order_acquire))
        {
          goto LABEL_12;
        }
      }

      if (v7)
      {
        break;
      }

      if (assert_wait(*(this + 8), &v8))
      {
        goto LABEL_12;
      }
    }

    DispatchChannel::cancel(this);
LABEL_12:
  }
}

uint64_t DispatchChannel::set_message_handler(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 112) == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if (v2)
  {
    v5 = MEMORY[0x29C28CED0](a2);
    v6 = *(a1 + 112);
    *(a1 + 112) = v5;

    v7 = *(a1 + 104);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3321888768;
    handler[2] = ___ZN15DispatchChannel19set_message_handlerEU13block_pointerFvPvmjE_block_invoke;
    handler[3] = &__block_descriptor_40_ea8_32c74_ZTSKZN15DispatchChannel19set_message_handlerEU13block_pointerFvPvmjEE3__0_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
  }

  return v3;
}

BOOL DispatchChannel::set_close_handler(uint64_t a1, uint64_t a2)
{
  v2 = (a2 == 0) | *(a1 + 128);
  if (!((a2 == 0) | *(a1 + 128) & 1))
  {
    *(a1 + 128) = 1;
    DispatchChannel::set_msg_source_mandatory_cancel_handler(a1, a2);
  }

  return (v2 & 1) == 0;
}

BOOL channel_seqlock_read_try_start(atomic_ullong *a1, unint64_t *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if ((explicit & 1) == 0)
  {
    *a2 = explicit;
  }

  return (explicit & 1) == 0;
}

void RTChannel::~RTChannel(RTChannel *this)
{
  RTChannel::close(this);

  Channel::~Channel(this);
}

uint64_t RTChannel::close(uint64_t this)
{
  v1 = atomic_exchange((this + 72), 0);
  if (v1)
  {
    v2 = this;
    realtime_runtime_check_push_authorization();
    v3 = *MEMORY[0x29EDCA6B0];
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v1, 1u, -1);
    mach_port_mod_refs(v3, *(v2 + 84), 1u, -1);
    return realtime_runtime_check_pop_authorization();
  }

  return this;
}

uint64_t RTChannel::pop_message@<X0>(RTChannel *this@<X0>, _BYTE *a2@<X8>)
{
  AssertableValue::AssertableValue(v6);
  v5 = 0;
  result = Channel::receive_message(this, v6, &v5, a2);
  if ((a2[24] & 1) == 0)
  {
    if (v5)
    {
      result = RTChannel::close(this);
    }

    *a2 = 0;
    a2[24] = 0;
  }

  return result;
}

unint64_t RTChannel::receive_message@<X0>(atomic_ullong **this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  LODWORD(v3) = a2;
  AssertableValue::AssertableValue(&v12);
  v11 = 0;
  result = Channel::receive_message(this, &v12, &v11, a3);
  if ((a3[24] & 1) == 0)
  {
    if (v11)
    {
LABEL_3:
      result = RTChannel::close(this);
    }

    else if (v3)
    {
      v7 = AbsTime::now();
      v10 = 1000000 * v3;
      result = NanoTime::abs_time(&v10);
      v8 = result + v7;
      if (v7 < result + v7)
      {
        do
        {
          if (assert_wait(this[8], &v12))
          {
            if (Channel::msg_wait(this, v3) == 14)
            {
              RTChannel::close(this);
            }

            result = release_wait(this[8], &v12);
            if (result)
            {
              break;
            }
          }

          result = Channel::receive_message(this, &v12, &v11, a3);
          if (a3[24])
          {
            return result;
          }

          if (v11)
          {
            goto LABEL_3;
          }

          v9 = AbsTime::now();
          v10 = v8 - v9;
          result = AbsTime::nano_time(&v10);
          v3 = result / 0xF4240;
        }

        while (v8 > v9);
      }
    }

    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

BOOL RTChannel::probe_message(atomic_ullong *volatile *this)
{
  Channel::assert_recv_sane(this);
  v2 = *(*(this + 2) + 256);
  explicit = atomic_load_explicit(this[8], memory_order_acquire);
  return v2 < AssertableValue::value(&explicit);
}

uint64_t RTChannel::wait_message(RTChannel *this, int a2)
{
  LODWORD(v2) = a2;
  Channel::assert_recv_sane(this);
  v4 = *(*(this + 2) + 256);
  explicit = atomic_load_explicit(*(this + 8), memory_order_acquire);
  if (v4 < AssertableValue::value(&explicit))
  {
    return 1;
  }

  if (v2)
  {
    v6 = AbsTime::now();
    v12 = 1000000 * v2;
    v7 = NanoTime::abs_time(&v12);
    v8 = v7 + v6;
    if (v6 < v7 + v6)
    {
      while (atomic_load_explicit(this + 18, memory_order_acquire))
      {
        if (assert_wait(*(this + 8), &explicit))
        {
          v9 = Channel::msg_wait(this, v2);
          if (v9 == 14)
          {
            RTChannel::close(this);
          }

          if (release_wait(*(this + 8), &explicit))
          {
            return 0;
          }
        }

        else
        {
          v9 = 0;
        }

        explicit = atomic_load_explicit(*(this + 8), memory_order_acquire);
        if (v4 < AssertableValue::value(&explicit))
        {
          return 1;
        }

        result = 0;
        if (v9 != 14 && v9 != 37)
        {
          v10 = AbsTime::now();
          v12 = v8 - v10;
          v11 = AbsTime::nano_time(&v12);
          result = 0;
          v2 = v11 / 0xF4240;
          if (v8 > v10)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return 0;
}

BOOL RTChannel::poll_closed(atomic_uint *this)
{
  v1 = this + 18;
  if (atomic_load_explicit(this + 18, memory_order_acquire) && Channel::poll_dead_name_notification(this))
  {
    RTChannel::close(this);
  }

  return atomic_load_explicit(v1, memory_order_acquire) == 0;
}

BOOL RTChannel::wire(const void **this)
{
  result = MessageRingBuffer::wire(this);
  if (result)
  {
    if (MessageRingBuffer::wire(this + 3))
    {
      return 1;
    }

    else
    {
      MessageRingBuffer::unwire(this);
      return 0;
    }
  }

  return result;
}

void *MessageRingBuffer::allocate(MessageRingBuffer *this)
{
  v1 = this;
  result = MessageRingBufferSharedMemory::allocate(this);
  if (result)
  {
    v3 = *MEMORY[0x29EDCA6D0] * ((2 * v1) | 1u);
    operator new();
  }

  return result;
}

void *MessageRingBufferSharedMemory::allocate(MessageRingBufferSharedMemory *this)
{
  v1 = MEMORY[0x29EDCA6D0];
  v2 = *MEMORY[0x29EDCA6D0];
  if (!is_mul_ok(this, *MEMORY[0x29EDCA6D0]))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      MessageRingBufferSharedMemory::allocate();
    }

    return 0;
  }

  v3 = this * v2;
  v4 = v2 + 2 * v3;
  v5 = __CFADD__(v2, 2 * v3);
  if ((v3 & 0x8000000000000000) != 0 || v5)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      MessageRingBufferSharedMemory::allocate();
    }

    return 0;
  }

  address = 0;
  v6 = MEMORY[0x29EDCA6B0];
  v7 = mach_vm_allocate(*MEMORY[0x29EDCA6B0], &address, v4, 603979777);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      MessageRingBufferSharedMemory::allocate(v8);
    }

    return 0;
  }

  v10 = *v1 + address;
  *cur_protection = 0;
  target_address = v10 + v3;
  v11 = mach_vm_remap(*v6, &target_address, v3, 0, 0x4000, *v6, v10, 0, &cur_protection[1], cur_protection, 2u);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      MessageRingBufferSharedMemory::allocate(v12);
    }

    mach_vm_deallocate(*v6, address, v4);
    return 0;
  }

  result = address;
  *address = 0xFEAB12399321BEAFLL;
  result[16] = 0;
  result[32] = 0;
  result[48] = 0;
  return result;
}

uint64_t MessageRingBuffer::from_xpc(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  region = 0;
  v3 = xpc_shmem_map(v1, &region);
  v4 = 0;
  if (v3)
  {
    if (region)
    {
      v4 = MessageRingBuffer::from_shared_region(region, v3);
      if (!v4)
      {
        mach_vm_deallocate(*MEMORY[0x29EDCA6B0], region, v3);
LABEL_6:
        v4 = 0;
      }
    }
  }

  return v4;
}

uint64_t MessageRingBuffer::from_shared_region(MessageRingBuffer *this, char *a2)
{
  result = 0;
  v4 = *MEMORY[0x29EDCA6D0];
  v5 = &a2[-*MEMORY[0x29EDCA6D0]];
  if (a2 >= *MEMORY[0x29EDCA6D0] && a2 >= 0x280 && v4 >= 0x280)
  {
    if ((v5 & 1) == 0 && !(v5 % v4) && ((v4 - 1) & this) == 0 && *this == 0xFEAB12399321BEAFLL)
    {
      v6 = atomic_load(this + 16);
      v7 = atomic_load(this + 32);
      if (v6 <= v7)
      {
        v8 = atomic_load(this + 32);
        v9 = atomic_load(this + 48);
        if (v8 <= v9)
        {
          operator new();
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL MessageRingBufferSharedMemory::is_valid(MessageRingBufferSharedMemory *this)
{
  if (((*MEMORY[0x29EDCA6D0] - 1) & this) != 0)
  {
    return 0;
  }

  if (*this != 0xFEAB12399321BEAFLL)
  {
    return 0;
  }

  v1 = atomic_load(this + 16);
  v2 = atomic_load(this + 32);
  if (v1 > v2)
  {
    return 0;
  }

  v4 = atomic_load(this + 32);
  v5 = atomic_load(this + 48);
  return v4 <= v5;
}

void MessageRingBuffer::free(mach_vm_size_t *a1)
{
  mach_vm_deallocate(*MEMORY[0x29EDCA6B0], a1[2], *a1);
  a1[2] = 0;

  JUMPOUT(0x29C28CC30);
}

uint64_t MessageRingBuffer::free_shared_memory(MessageRingBuffer *this)
{
  result = mach_vm_deallocate(*MEMORY[0x29EDCA6B0], *(this + 2), *this);
  *(this + 2) = 0;
  return result;
}

void MessageRingBufferSharedMemory::MessageRingBufferSharedMemory(MessageRingBufferSharedMemory *this)
{
  *this = 0xFEAB12399321BEAFLL;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
}

uint64_t Channel::Channel(uint64_t result, int a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9)
{
  v9 = *a3;
  *(result + 16) = *(a3 + 2);
  *result = v9;
  v10 = *(a4 + 16);
  *(result + 24) = *a4;
  *(result + 40) = v10;
  *(result + 48) = a5;
  *(result + 72) = a7;
  *(result + 76) = a6;
  *(result + 80) = a8;
  *(result + 84) = a9;
  v11 = a5 + 128;
  if (a2)
  {
    v12 = a5;
  }

  else
  {
    v12 = a5 + 128;
  }

  if (!a2)
  {
    v11 = a5;
  }

  *(result + 56) = v12;
  *(result + 64) = v11;
  return result;
}

void Channel::~Channel(Channel *this)
{
  MessageRingBuffer::free_shared_memory(this);
  MessageRingBuffer::free_shared_memory((this + 24));
  CASPage::free(*(this + 6));
  disarm_deadname_notification(*(this + 19));
  disarm_deadname_notification(*(this + 20));
  v2 = MEMORY[0x29EDCA6B0];
  mach_port_deallocate(*MEMORY[0x29EDCA6B0], *(this + 19));
  mach_port_deallocate(*v2, *(this + 20));
}

uint64_t disarm_deadname_notification(mach_port_name_t name)
{
  previous = 0;
  v2 = MEMORY[0x29EDCA6B0];
  mach_port_request_notification(*MEMORY[0x29EDCA6B0], name, 72, 0, 0, 0x15u, &previous);
  if (previous)
  {
    v3 = previous;
  }

  else
  {
    v3 = name;
  }

  return mach_port_deallocate(*v2, v3);
}

unint64_t Channel::receive_message@<X0>(Channel *this@<X0>, AssertableValue *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *MEMORY[0x29EDCA6D0];
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = *(this + 2);
  v11 = *(v10 + 128);
  v12 = *(v10 + 256);
  *a2 = atomic_load_explicit(*(this + 8), memory_order_acquire);
  result = AssertableValue::value(a2);
  if (v11 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v11;
  }

  if (v12 >= result)
  {
    v24 = 0;
    LOBYTE(v18) = 0;
    v23 = 0;
LABEL_20:
    *(*(this + 2) + 256) = v12;
    atomic_store(v17, (*(this + 2) + 128));
    *a3 = 0;
    *a4 = v23 | v18;
    *(a4 + 4) = v16;
    *(a4 + 8) = v15;
    *(a4 + 9) = *v26;
    *(a4 + 12) = *&v26[3];
    *(a4 + 16) = v14;
    *(a4 + 24) = v24;
    *(a4 + 25) = *v25;
    *(a4 + 28) = *&v25[3];
  }

  else
  {
    while (1)
    {
      v14 = (v7 + v9 + v12 % v8);
      v18 = *v14;
      v19 = v18 >= 8 && v8 >= v18;
      v12 += v18;
      if (!v19 || v12 > result)
      {
        break;
      }

      v21 = v14[1];
      v16 = v21 & 0x3FFFFFFF;
      v15 = v21 >> 30;
      if (v15 != 3 && v16 != 0)
      {
        v23 = v18 & 0xFFFFFF00;
        v24 = 1;
        goto LABEL_20;
      }

      v17 += v18;
      if (v12 >= result)
      {
        v24 = 0;
        v23 = v18 & 0xFFFFFF00;
        goto LABEL_20;
      }
    }

    *a3 = 1;
    *a4 = 0;
    *(a4 + 24) = 0;
  }

  return result;
}

_DWORD *Channel::reserve_message(atomic_uint *this, int a2, uint64_t a3, uint64_t a4)
{
  if (!atomic_load_explicit(this + 18, memory_order_acquire))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = *(*(this + 2) + 384);
  explicit = atomic_load_explicit((*(this + 5) + 128), memory_order_acquire);
  v7 = *(this + 2);
  v8 = *MEMORY[0x29EDCA6D0] + v7;
  v9 = (v5 % v4 + v8);
  v10 = (v9 + a4 + 7) & -a4;
  v11 = (a3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 - v9 > explicit - v5 + v4)
  {
    return 0;
  }

  v13 = (v10 - 8);
  if (v13 != v9)
  {
    *v9 = v13 - v9;
    v9[1] = 0x40000000;
  }

  *v13 = v11 - v13;
  v13[1] = a2 & 0x3FFFFFFF;
  v14 = v8 + v4;
  v15 = v13 - v4;
  if (v13 <= v14)
  {
    result = v13;
  }

  else
  {
    result = v15;
  }

  *(v7 + 384) = v11 - v9 + v5;
  return result;
}

unint64_t Channel::advance_commit_assert_head(Channel *this)
{
  v2 = *MEMORY[0x29EDCA6D0];
  v3 = *(this + 1);
  v4 = *(this + 2);
  explicit = atomic_load_explicit(*(this + 7), memory_order_acquire);
  v5 = AssertableValue::value(&explicit);
  v6 = *(*(this + 2) + 384);
  while (v5 < v6)
  {
    v7 = (v2 + v4 + v5 % v3);
    v8 = v7[1] >> 30;
    if (v8 <= 1)
    {
      if (v8 != 1)
      {
        break;
      }
    }

    else if (v8 == 2)
    {
      continue;
    }

    v5 += *v7;
  }

  result = AssertableValue::value(&explicit);
  if (v5 > result)
  {
    v10 = AssertableValue::value(&explicit);
    AssertableValue::AssertableValue(&v16, v10);
    AssertableValue::AssertableValue(&v15, v5);
    v11 = v16;
    v12 = v16;
    atomic_compare_exchange_strong(*(this + 7), &v12, v15);
    if (v12 != v11)
    {
      v13 = v12;
      do
      {
        v16 = v12;
        atomic_compare_exchange_strong(*(this + 7), &v13, v15);
        v14 = v13 == v12;
        v12 = v13;
      }

      while (!v14);
    }

    result = AssertableValue::is_wait_asserted(&v16);
    if (result)
    {
      return Channel::msg_notify(this);
    }
  }

  return result;
}

uint64_t Channel::msg_notify(Channel *this)
{
  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_remote_port = *(this + 20);
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0;
  realtime_runtime_check_push_authorization();
  v1 = mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0);
  realtime_runtime_check_pop_authorization();
  return v1;
}

uint64_t Channel::msg_wait(Channel *this, mach_msg_timeout_t a2)
{
  realtime_runtime_check_push_authorization();
  v4 = mach_msg(&msg, 258, 0, 0x30u, *(this + 21), a2, 0);
  realtime_runtime_check_pop_authorization();
  if (v4 > 268451844)
  {
    return 0;
  }

  if (v4)
  {
    if (v4 != 268451842)
    {
      return 0;
    }

    return 37;
  }

  else if (msg.msgh_id == 72)
  {
    return 14;
  }

  else
  {
    return 0;
  }
}

uint64_t Channel::poll_dead_name_notification(Channel *this)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(this + 18);
  if (v1)
  {
    realtime_runtime_check_push_authorization();
    v2 = mach_msg(&msg, 258, 0, 0x2Cu, v1, 0, 0);
    realtime_runtime_check_pop_authorization();
    result = 1;
    if ((v2 - 268451842) <= 7 && ((1 << (v2 - 2)) & 0x93) != 0)
    {
      result = 0;
    }

    else if (v2)
    {
      realtime_runtime_check_push_authorization();
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
      os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      v7 = 67109120;
      v8 = v2;
      _os_log_send_and_compose_impl();
      v5 = _os_crash_msg();
      Channel::poll_dead_name_notification(v5);
    }
  }

  else
  {
    result = 1;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void Endpoint::Endpoint(Endpoint *this, MessageRingBuffer *a2, int a3)
{
  *this = 1;
  *(this + 1) = a3;
  v4 = MessageRingBuffer::allocate(a2);
  *(this + 1) = v4;
  *(this + 2) = 0;
  CASPage::allocate(v4);
  *(this + 3) = v5;
  *(this + 8) = 0;
  *(this + 9) = allocate_recv_right();
  *(this + 40) = 0;
  *(this + 11) = allocate_recv_right();
  *(this + 12) = 0;
}

uint64_t allocate_recv_right(void)
{
  name = 0;
  v0 = mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, &name);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      allocate_recv_right(v1);
    }
  }

  return name;
}

uint64_t Endpoint::Endpoint(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!xpc_dictionary_get_BOOL(v3, "CHChannelEndpointRequestV2"))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    Endpoint::release(a1);
    goto LABEL_11;
  }

  *a1 = 0;
  uint64 = xpc_dictionary_get_uint64(v3, "CHChannelEndpointRingBufferPagesV2");
  *(a1 + 4) = uint64;
  *(a1 + 8) = MessageRingBuffer::allocate(uint64);
  v5 = xpc_dictionary_get_value(v3, "CHChannelEndpointRingBufferV2");
  *(a1 + 16) = MessageRingBuffer::from_xpc(v5);

  v6 = xpc_dictionary_get_value(v3, "CHChannelEndpointCASPageV2");
  v7 = v6;
  v8 = MEMORY[0x29EDCA6B0];
  if (v6)
  {
    if (MEMORY[0x29C28D000](v6) == MEMORY[0x29EDCAA48])
    {
      region = 0;
      v13 = xpc_shmem_map(v7, &region);
      if (v13)
      {
        if (v13 >= 0x100 && v13 == *MEMORY[0x29EDCA6D0])
        {
          v9 = region;
          goto LABEL_7;
        }

        mach_vm_deallocate(*v8, region, v13);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      Endpoint::Endpoint();
    }
  }

  v9 = 0;
LABEL_7:

  *(a1 + 24) = v9;
  *(a1 + 36) = allocate_recv_right();
  *(a1 + 32) = xpc_dictionary_copy_mach_send();
  *(a1 + 44) = allocate_recv_right();
  *(a1 + 48) = xpc_dictionary_copy_mach_send();
  previous = 0;
  *(a1 + 40) = mach_port_request_notification(*v8, *(a1 + 32), 72, 1u, *(a1 + 36), 0x15u, &previous) == 0;
  v10 = mach_port_request_notification(*v8, *(a1 + 48), 72, 1u, *(a1 + 44), 0x15u, &previous);
  v11 = *(a1 + 40);
  if (v10)
  {
    v11 = 0;
  }

  *(a1 + 40) = v11;
LABEL_11:

  return a1;
}

uint64_t Endpoint::release(Endpoint *this)
{
  *this = 0;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x29C28CC30](v2, 0x1020C403ED2C137);
  }

  result = *(this + 2);
  *(this + 1) = 0;
  *(this + 1) = 0;
  if (result)
  {
    result = MEMORY[0x29C28CC30](result, 0x1020C403ED2C137);
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 40) = 0;
  return result;
}

void Endpoint::Endpoint(uint64_t a1, Endpoint *this)
{
  *a1 = *this;
  *(a1 + 4) = *(this + 1);
  *(a1 + 8) = *(this + 8);
  *(a1 + 24) = *(this + 3);
  *(a1 + 32) = *(this + 4);
  *(a1 + 40) = *(this + 40);
  *(a1 + 44) = *(this + 44);
  *(this + 1) = 0;
  *(this + 2) = 0;
  Endpoint::release(this);
}

void Endpoint::~Endpoint(Endpoint *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MessageRingBuffer::free(v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    MessageRingBuffer::free(v3);
    *(this + 2) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    CASPage::free(v4);
  }

  v5 = *(this + 9);
  v6 = MEMORY[0x29EDCA6B0];
  if (v5)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v5, 1u, -1);
  }

  v7 = *(this + 8);
  if (v7)
  {
    mach_port_deallocate(*v6, v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    mach_port_mod_refs(*v6, v8, 1u, -1);
  }

  v9 = *(this + 12);
  if (v9)
  {
    mach_port_deallocate(*v6, v9);
  }
}

uint64_t Endpoint::encode(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1 != 1)
  {
    if (is_open(a1))
    {
      v21 = *(a1 + 8);
      v22 = v21[2];
      v23 = *v21;
      readonly = xpc_shmem_create_readonly();
      v24 = *(a1 + 36);
      v11 = xpc_mach_send_create_with_disposition();
      v25 = *(a1 + 44);
      v26 = xpc_mach_send_create_with_disposition();
      v13 = v26;
      if (readonly)
      {
        v27 = v11 == 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27 || v26 == 0;
      v20 = !v28;
      if (!v28)
      {
        xpc_dictionary_set_BOOL(v3, "CHChannelEndpointReplyV2", 1);
        xpc_dictionary_set_value(v3, "CHChannelEndpointRingBufferV2", readonly);
        xpc_dictionary_set_value(v3, "CHChannelEndpointDeadNameNotifyPortV2", v11);
        xpc_dictionary_set_value(v3, "CHChannelEndpointMsgNotifyPortV2", v13);
        v20 = 1;
      }

      goto LABEL_40;
    }

LABEL_41:
    v20 = 0;
    goto LABEL_42;
  }

  v4 = *(a1 + 8);
  if (*(a1 + 4))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || *(a1 + 24) == 0 || *(a1 + 36) == 0;
  if (v7 || !*(a1 + 44))
  {
    goto LABEL_41;
  }

  v8 = v4[2];
  v9 = *v4;
  readonly = xpc_shmem_create_readonly();
  v11 = xpc_shmem_create(*(a1 + 24), *MEMORY[0x29EDCA6D0]);
  v12 = *(a1 + 36);
  v13 = xpc_mach_send_create_with_disposition();
  v14 = *(a1 + 44);
  v15 = xpc_mach_send_create_with_disposition();
  v16 = v15;
  if (readonly)
  {
    v17 = v11 == 0;
  }

  else
  {
    v17 = 1;
  }

  v19 = v17 || v13 == 0 || v15 == 0;
  v20 = !v19;
  if (!v19)
  {
    xpc_dictionary_set_BOOL(v3, "CHChannelEndpointRequestV2", 1);
    xpc_dictionary_set_value(v3, "CHChannelEndpointRingBufferV2", readonly);
    xpc_dictionary_set_uint64(v3, "CHChannelEndpointRingBufferPagesV2", *(a1 + 4));
    xpc_dictionary_set_value(v3, "CHChannelEndpointCASPageV2", v11);
    xpc_dictionary_set_value(v3, "CHChannelEndpointDeadNameNotifyPortV2", v13);
    xpc_dictionary_set_value(v3, "CHChannelEndpointMsgNotifyPortV2", v16);
  }

LABEL_40:
LABEL_42:

  return v20;
}

BOOL is_open(Endpoint *a1)
{
  if (*(a1 + 1))
  {
    v1 = *(a1 + 1) == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || *(a1 + 3) == 0 || *(a1 + 9) == 0)
  {
    return 0;
  }

  v4 = !*(a1 + 11) || *(a1 + 2) == 0;
  v5 = v4 || *(a1 + 8) == 0;
  return !v5 && *(a1 + 40) == 1 && *(a1 + 12) != 0;
}

BOOL Endpoint::decode_reply(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1 && xpc_dictionary_get_BOOL(v3, "CHChannelEndpointReplyV2"))
  {
    v5 = xpc_dictionary_get_value(v4, "CHChannelEndpointRingBufferV2");
    *(a1 + 16) = MessageRingBuffer::from_xpc(v5);

    *(a1 + 32) = xpc_dictionary_copy_mach_send();
    *(a1 + 48) = xpc_dictionary_copy_mach_send();
    previous = 0;
    v6 = MEMORY[0x29EDCA6B0];
    *(a1 + 40) = mach_port_request_notification(*MEMORY[0x29EDCA6B0], *(a1 + 32), 72, 1u, *(a1 + 36), 0x15u, &previous) == 0;
    v7 = mach_port_request_notification(*v6, *(a1 + 48), 72, 1u, *(a1 + 44), 0x15u, &previous);
    v8 = *(a1 + 40);
    if (v7)
    {
      v8 = 0;
    }

    *(a1 + 40) = v8;
  }

  v9 = is_open(a1);

  return v9;
}

void channel_dispatch_dispose(id *a1)
{

  Channel::~Channel((a1 + 3));
}

uint64_t channel_create_asymmetric_endpoint_and_request(unsigned int a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2 && v5)
  {
    if (MEMORY[0x29C28D000](v5) == MEMORY[0x29EDCAA00])
    {
      Endpoint::Endpoint(v9, a1, a2);
      if (Endpoint::encode(v9, v6))
      {
        v7 = channel_endpoint_obj_alloc(72);
        Endpoint::Endpoint(v7 + 16, v9);
      }

      else
      {
        v7 = 0;
      }

      Endpoint::~Endpoint(v9);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_2985912F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Endpoint::~Endpoint(va);

  _Unwind_Resume(a1);
}

uint64_t channel_rt_create_from_request(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = MEMORY[0x29C28D000](v3);
  v6 = 0;
  if (!v4)
  {
    goto LABEL_9;
  }

  v7 = MEMORY[0x29EDCAA00];
  if (v5 != MEMORY[0x29EDCAA00])
  {
    goto LABEL_9;
  }

  if (MEMORY[0x29C28D000](v4) != v7)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_9;
  }

  Endpoint::Endpoint(v12, v3);
  if (Endpoint::encode(v12, v4))
  {
    v6 = channel_rt_obj_alloc(112);
    v8 = *(v13 + 16);
    v9 = *v14;
    v10 = *(v14 + 2);
    v22 = *v13;
    v23 = v8;
    v20 = v9;
    v21 = v10;
    *(v6 + 16) = Channel::Channel(v6 + 24, 0, &v22, &v20, v15, v16, v17, v19, v18);
    Endpoint::release(v12);
  }

  else
  {
    v6 = 0;
  }

  Endpoint::~Endpoint(v12);
LABEL_9:

  return v6;
}

void sub_29859143C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  Endpoint::~Endpoint(va);

  _Unwind_Resume(a1);
}

uint64_t channel_rt_create_from_reply(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if (MEMORY[0x29C28D000](v3) == MEMORY[0x29EDCAA00] && Endpoint::decode_reply(a1 + 16, v4))
    {
      v5 = channel_rt_obj_alloc(112);
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v16 = *(v6 + 16);
      v8 = *v7;
      v15 = *(v7 + 2);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 52);
      v13 = *(a1 + 60);
      v12 = *(a1 + 64);
      v19 = *v6;
      v20 = v16;
      v17 = v8;
      v18 = v15;
      *(v5 + 16) = Channel::Channel(v5 + 24, 1, &v19, &v17, v9, v10, v11, v12, v13);
      Endpoint::release((a1 + 16));
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t channel_rt_receive_message(uint64_t a1, int a2, void *a3, void *a4, _DWORD *a5)
{
  RTChannel::receive_message((a1 + 24), a2, v11);
  result = v13;
  if (v13 == 1)
  {
    v9 = v12 + 8;
    v10 = v11[1];
    *a4 = (v11[0] - 8);
    *a5 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t channel_rt_pop_message(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  RTChannel::pop_message((a1 + 24), v10);
  result = v12;
  if (v12 == 1)
  {
    v8 = v11 + 8;
    v9 = v10[1];
    *a3 = (v10[0] - 8);
    *a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t channel_get_readwrite_shared_memory(uint64_t a1, void *a2, void *a3)
{
  *a3 = *MEMORY[0x29EDCA6D0] - 512;
  *a2 = *(*(a1 + 16) + 16) + 512;
  return 1;
}

uint64_t channel_get_readonly_shared_memory(uint64_t a1, void *a2, void *a3)
{
  *a3 = *MEMORY[0x29EDCA6D0] - 512;
  *a2 = *(*(a1 + 16) + 40) + 512;
  return 1;
}

uint64_t channel_dispatch_create_from_request(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = MEMORY[0x29C28D000](v5);
    v9 = 0;
    if (v6)
    {
      v10 = MEMORY[0x29EDCAA00];
      if (v8 == MEMORY[0x29EDCAA00])
      {
        v11 = MEMORY[0x29C28D000](v6);
        v9 = 0;
        if (v7)
        {
          if (v11 == v10)
          {
            Endpoint::Endpoint(v19, v5);
            if (Endpoint::encode(v19, v6))
            {
              v9 = channel_dispatch_obj_alloc(160);
              v12 = *(v20 + 2);
              v17 = *v20;
              v18 = v12;
              v13 = *(v21 + 16);
              v15 = *v21;
              v16 = v13;
              *(v9 + 16) = DispatchChannel::DispatchChannel(v9 + 24, 0, &v17, &v15, v22, v23, v24, v26, v25, v7, v9);
              Endpoint::release(v19);
            }

            else
            {
              v9 = 0;
            }

            Endpoint::~Endpoint(v19);
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_29859188C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Endpoint::~Endpoint(va);

  _Unwind_Resume(a1);
}

uint64_t channel_dispatch_create_from_reply(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = 0;
  if (a1)
  {
    if (v5)
    {
      v8 = MEMORY[0x29C28D000](v5);
      v7 = 0;
      if (v6)
      {
        if (v8 == MEMORY[0x29EDCAA00])
        {
          if (Endpoint::decode_reply(a1 + 16, v5))
          {
            v7 = channel_dispatch_obj_alloc(160);
            v9 = *(a1 + 24);
            v10 = *(a1 + 32);
            v11 = *(v9 + 2);
            v16 = *v9;
            v17 = v11;
            v12 = *(v10 + 16);
            v14 = *v10;
            v15 = v12;
            *(v7 + 16) = DispatchChannel::DispatchChannel(v7 + 24, 1, &v16, &v14, *(a1 + 40), *(a1 + 48), *(a1 + 52), *(a1 + 64), *(a1 + 60), v6, v7);
            Endpoint::release((a1 + 16));
          }

          else
          {
            v7 = 0;
          }
        }
      }
    }
  }

  return v7;
}

void CASPage::allocate(mach_error_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136315138;
  v3 = mach_error_string(a1);
  _os_log_error_impl(&dword_29858E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "CASPage::allocate failed: %s", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void MessageRingBufferSharedMemory::allocate(mach_error_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  v7 = *MEMORY[0x29EDCA608];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}

void MessageRingBufferSharedMemory::allocate()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void allocate_recv_right(mach_error_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136315138;
  v3 = mach_error_string(a1);
  _os_log_error_impl(&dword_29858E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unable to allocate mach receive right %s", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void Endpoint::Endpoint()
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = 136315138;
  v2 = "CHChannelEndpointCASPageV2";
  _os_log_error_impl(&dword_29858E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Item at key (%s) was not a XPC_TYPE_SHMEM, not retrieving", &v1, 0xCu);
  v0 = *MEMORY[0x29EDCA608];
}

_DWORD *channel_reserve_aligned_message(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 0x40000000) < 0xC0000400 || a4 == 0)
  {
    return 0;
  }

  v5 = Channel::reserve_message(*(a1 + 16), a2, a3, a4);
  if (v5)
  {
    return v5 + 2;
  }

  else
  {
    return 0;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}