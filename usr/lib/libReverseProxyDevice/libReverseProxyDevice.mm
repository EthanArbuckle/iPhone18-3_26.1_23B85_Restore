void RPRelease(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __RPRelease_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = a1;
  dispatch_async(global_queue, block);
}

uint64_t RPSocket::set_client(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40);
  if (v11)
  {
    goto LABEL_5;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v11 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx)
  {
LABEL_5:
    if (*(v11 + 16) >= 5)
    {
      v14 = *(a1 + 24);
      LogMsg(5u, v11, "RPSocket.cpp", 312, "set_client", 0, @"RPSocket %p: setting client. old: %p. new: %p", a8, a1);
    }
  }

  pthread_mutex_lock((a1 + 144));
  *(a1 + 24) = a2;
  if (a3)
  {
    CFRetain(a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 32) = a3;

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t RPSocketResume(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 216);
  *(a1 + 216) = v2 + 1;
  if (!v2)
  {
    if (!dispatch_queue_get_specific(*(a1 + 48), *(a1 + 56)))
    {
      (*(*a1 + 96))(a1);
    }

    (*(*a1 + 24))(a1);
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t RPSocketReadBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 1;
  }

  v8 = a3;
  while (1)
  {
    v11 = *(*(a1 + 16) + 40);
    if (v11)
    {
      goto LABEL_7;
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v11 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx)
    {
LABEL_7:
      if (*(v11 + 16) >= 5)
      {
        LogMsg(5u, v11, "RPSocket.cpp", 590, "RPSocketRead", 0, @"Reading %lu bytes from socket %p to buffer %p", a8, v8);
      }
    }

    v12 = (***(a1 + 16))(*(a1 + 16), a2, v8);
    v13 = *(a1 + 16);
    if (v12 == -1)
    {
      break;
    }

    atomic_fetch_add_explicit(*(v13 + 232), v12, memory_order_relaxed);
    if (!v12)
    {
      v19 = *(*(a1 + 16) + 40);
      if (v19)
      {
        goto LABEL_24;
      }

      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      v19 = getDefaultLogCtx_ctx;
      if (getDefaultLogCtx_ctx)
      {
LABEL_24:
        if (*(v19 + 16) >= 3)
        {
          LogMsg(3u, v19, "RPSocket.cpp", 605, "RPSocketReadBuffer", 0, @"EOF on %@\n", a8, a1);
        }
      }

      return 0;
    }

    a2 += v12;
    v8 -= v12;
    if (!v8)
    {
      return 1;
    }
  }

  v14 = *(v13 + 40);
  if (v14)
  {
    goto LABEL_18;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v14 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx)
  {
LABEL_18:
    if (*(v14 + 16) >= 3)
    {
      v15 = __error();
      v16 = strerror(*v15);
      v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
      LogMsg(3u, v14, "RPSocket.cpp", 609, "RPSocketReadBuffer", v17, @"read error on %@", v18, a1);
    }
  }

  return 0;
}

uint64_t RPSocketWrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  while (1)
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2, v3);
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    a2 += v6;
    atomic_fetch_add_explicit((*(*(a1 + 16) + 232) + 8), v6, memory_order_relaxed);
    v3 -= v6;
    if (!v3)
    {
      return 1;
    }
  }

  v9 = *(*(a1 + 16) + 40);
  if (v9)
  {
    goto LABEL_11;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v9 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx)
  {
LABEL_11:
    if (*(v9 + 16) >= 3)
    {
      LogMsg(3u, v9, "RPSocket.cpp", 691, "RPSocketWrite", 0, @"failed to write %zu bytes to %@\n", v7, v3);
    }
  }

  return 0;
}

uint64_t RPSocketWriteDictionary(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error = 0;
  if (a2)
  {
    v9 = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    v11 = v9;
    if (v9 && !error)
    {
      Length = CFDataGetLength(v9);
      v14 = Length;
      if (Length < 0x80000000)
      {
        v26 = Length;
        if (RPSocketWrite(a1, &v26, 4))
        {
          BytePtr = CFDataGetBytePtr(v11);
          if (RPSocketWrite(a1, BytePtr, v14))
          {
            v17 = 1;
LABEL_42:
            CFRelease(v11);
            goto LABEL_43;
          }

          v23 = *(*(a1 + 16) + 40);
          if (v23)
          {
            goto LABEL_39;
          }

          if (getDefaultLogCtx_once != -1)
          {
            dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
          }

          v23 = getDefaultLogCtx_ctx;
          if (getDefaultLogCtx_ctx)
          {
LABEL_39:
            if (*(v23 + 16) >= 3)
            {
              LogMsg(3u, v23, "RPSocket.cpp", 741, "RPSocketWriteDictionary", 0, @"failed to write length to %@\n", v21, a1);
            }
          }
        }

        else
        {
          v22 = *(*(a1 + 16) + 40);
          if (v22)
          {
            goto LABEL_33;
          }

          if (getDefaultLogCtx_once != -1)
          {
            dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
          }

          v22 = getDefaultLogCtx_ctx;
          if (getDefaultLogCtx_ctx)
          {
LABEL_33:
            if (*(v22 + 16) >= 3)
            {
              LogMsg(3u, v22, "RPSocket.cpp", 736, "RPSocketWriteDictionary", 0, @"failed to write length to %@\n", v19, a1);
            }
          }
        }
      }

      else
      {
        v15 = *(*(a1 + 16) + 40);
        if (v15)
        {
          goto LABEL_9;
        }

        if (getDefaultLogCtx_once != -1)
        {
          dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
        }

        v15 = getDefaultLogCtx_ctx;
        if (getDefaultLogCtx_ctx)
        {
LABEL_9:
          if (*(v15 + 16) >= 3)
          {
            LogMsg(3u, v15, "RPSocket.cpp", 731, "RPSocketWriteDictionary", 0, @"data too big for %@: %lu\n", v13, a1);
          }
        }
      }

      v17 = 0;
      goto LABEL_42;
    }

    v18 = *(*(a1 + 16) + 40);
    if (v18)
    {
      goto LABEL_22;
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v18 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx)
    {
LABEL_22:
      if (*(v18 + 16) >= 3)
      {
        LogMsg(3u, v18, "RPSocket.cpp", 725, "RPSocketWriteDictionary", 0, @"failed to serialize dictionary to %@: %@\n", v10, a1);
      }
    }

    v17 = 0;
    if (v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v16 = *(*(a1 + 16) + 40);
    if (v16)
    {
      goto LABEL_15;
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v16 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx)
    {
LABEL_15:
      if (*(v16 + 16) >= 3)
      {
        LogMsg(3u, v16, "RPSocket.cpp", 719, "RPSocketWriteDictionary", 0, @"no dictionary to send to %@\n", a8, a1);
      }
    }

    v17 = 0;
  }

LABEL_43:
  if (error)
  {
    CFRelease(error);
  }

  return v17;
}

void sub_2980BAA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RPSocket::~RPSocket(v8, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C280660](v8, v9);
  _Unwind_Resume(a1);
}

uint64_t rps_sockaddr_to_string(uint64_t result, sockaddr *a2, const sockaddr *a3, const char *a4)
{
  v5 = result;
  v15 = *MEMORY[0x29EDCA608];
  sa_family = a2->sa_family;
  if (sa_family != 30 && sa_family != 1 && !a2->sa_family)
  {
    *(result + 8) = 62;
    v7 = *"<unknown>";
LABEL_19:
    *v5 = v7;
    goto LABEL_24;
  }

  sa_len = a2->sa_len;
  if (sa_family == 30)
  {
    v9 = 28;
  }

  else
  {
    v9 = 0;
  }

  if (sa_family == 2)
  {
    v10 = 16;
  }

  else
  {
    v10 = v9;
  }

  if (a2->sa_len)
  {
    v11 = a2->sa_len;
  }

  else
  {
    v11 = v10;
  }

  result = getnameinfo(a2, v11, v14, 0x401u, v13, 0x20u, 10);
  if (result)
  {
    if (a2->sa_family != 1 || a2->sa_len == 2)
    {
      *(v5 + 8) = 62;
      v7 = *"<unknown>";
      goto LABEL_19;
    }

    result = snprintf(v5, 0x401uLL, "%s%.*s%s");
  }

  else
  {
    if (!v13[0] || *v13 == 48)
    {
      v13[0] = 0;
    }

    result = snprintf(v5, 0x401uLL, "%s%s%s%s%s");
  }

LABEL_24:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void RPSocket::~RPSocket(RPSocket *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_2A1E9F258;
  v9 = *(this + 5);
  if (v9)
  {
    goto LABEL_5;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v9 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx)
  {
LABEL_5:
    if (*(v9 + 16) >= 5)
    {
      v17 = *(this + 1);
      LogMsg(5u, v9, "RPSocket.cpp", 128, "~RPSocket", 0, @"Releasing RPSocket: %p (_sockRef: %p)", a8, this);
    }
  }

  v10 = *(this + 4);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 5);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 6);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    dispatch_release(v14);
  }

  pthread_mutex_destroy((this + 144));
  pthread_mutex_destroy((this + 72));
  v15 = *(this + 29);
  if (v15)
  {
    free(v15);
  }

  v16 = *(this + 28);
  if (v16)
  {
    free(v16);
  }
}

void RPSocket::latch_target_queues(RPSocket *this)
{
  add_synced_to_queue_hint(*(this + 6), *(this + 7));
  v3 = *(this + 6);
  v2 = *(this + 7);

  dispatch_set_target_queue(v2, v3);
}

void add_synced_to_queue_hint(NSObject *a1, dispatch_queue_s *a2)
{
  if (a2 && !dispatch_queue_get_specific(a1, a2))
  {

    dispatch_queue_set_specific(a1, a2, a2, 0);
  }
}

NSObject *RPSocket::EventCallback::retain_all(NSObject **this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_retain(v2);
  }

  v3 = this[1];
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = this[3];
  if (v4)
  {
    CFRetain(v4);
  }

  result = this[5];
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void RPSocket::EventCallback::invoke_and_delete_fn(RPSocket::EventCallback *this, RPSocket::EventCallback *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RPSocket::EventCallback::invoke(this, a2, a3, a4, a5, a6, a7, a8);
  if (this)
  {
    RPSocket::EventCallback::release_all(this);

    JUMPOUT(0x29C280660);
  }
}

void RPSocket::EventCallback::invoke(RPSocket::EventCallback *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 1);
  if (v9)
  {
    goto LABEL_5;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v9 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx)
  {
LABEL_5:
    if (*(v9 + 16) >= 5)
    {
      v16 = *(this + 4);
      v17 = *(this + 2);
      LogMsg(5u, v9, "RPSocket.cpp", 228, "invoke", 0, @"RPSocket %p (ref: %p): got signal with event %d and current _cb: %p", a8, *(*(this + 3) + 16));
    }
  }

  v10 = *(this + 2);
  if (v10)
  {
    v11 = *(this + 3);
    v12 = *(this + 4);
    v13 = *(this + 5);

    v10(v11, v12, v13);
  }

  else
  {
    v14 = *(this + 1);
    if (v14)
    {
      goto LABEL_15;
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v14 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx)
    {
LABEL_15:
      if (*(v14 + 16) >= 3)
      {
        v15 = *(*(this + 3) + 16);
        LogMsg(3u, v14, "RPSocket.cpp", 232, "invoke", 0, @"No client callback, missing event %d for socket %p", a8, *(this + 4));
      }
    }
  }
}

void RPSocket::EventCallback::release_all(RPSocket::EventCallback *this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    RPRelease(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {

    CFRelease(v5);
  }
}

void RPSocket_fd::event_handler(RPSocket_fd *this, void *a2)
{
  pthread_mutex_lock((this + 144));
  v5 = *(this + 4);
  v4 = *(this + 5);
  v14[0] = *(this + 7);
  v3 = v14[0];
  v14[1] = v4;
  v6 = *(this + 1);
  v14[2] = *(this + 3);
  v14[3] = v6;
  v14[4] = 2;
  v14[5] = v5;
  RPSocket::EventCallback::retain_all(v14);
  pthread_mutex_unlock((this + 144));
  if (v3 && !dispatch_get_specific(v3))
  {
    dispatch_sync_f(v3, v14, RPSocket::EventCallback::invoke_fn);
  }

  else
  {
    RPSocket::EventCallback::invoke(v14, v7, v8, v9, v10, v11, v12, v13);
  }

  RPSocket::EventCallback::release_all(v14);
}

void RPSocket_fd::cancel_handler(dispatch_queue_t *this, void *a2)
{
  dispatch_sync_f(this[31], this, RPSocket_fd::close_fd);
  v3 = this[1];

  RPRelease(v3);
}

uint64_t RPSocket_fd::closeFD(RPSocket_fd *this)
{
  result = *(this + 60);
  if (result != -1)
  {
    result = close(result);
  }

  *(this + 60) = -1;
  return result;
}

uint64_t RPSocket_fd::shutdownFD(RPSocket_fd *this)
{
  result = *(this + 60);
  if (result != -1)
  {
    return shutdown(result, 2);
  }

  return result;
}

void RPSocket_fd::latch_target_queues(RPSocket_fd *this)
{
  add_synced_to_queue_hint(*(this + 6), *(this + 7));
  dispatch_set_target_queue(*(this + 7), *(this + 6));
  v2 = *(this + 48);
  v3 = *(this + 7);

  dispatch_set_target_queue(v2, v3);
}

void RPSocket_fd::~RPSocket_fd(RPSocket_fd *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RPSocket_fd::~RPSocket_fd(this, a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x29C280660);
}

{
  *this = &unk_2A1E9F198;
  v9 = *(this + 5);
  if (v9)
  {
    goto LABEL_5;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v9 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx)
  {
LABEL_5:
    if (*(v9 + 16) >= 5)
    {
      LogMsg(5u, v9, "RPSocket.cpp", 1070, "~RPSocket_fd", 0, @"Releasing RPSocket_fd: %p", a8, this);
    }
  }

  dispatch_source_cancel(*(this + 48));
  dispatch_release(*(this + 48));
  dispatch_release(*(this + 31));

  RPSocket::~RPSocket(this, v10, v11, v12, v13, v14, v15, v16);
}

const void *RPSocket_fd::copy_entitlements(RPSocket_fd *this)
{
  v1 = *(this + 60);
  v25 = 4;
  if (copyEntitlementsForSocketPeer_sleep_once != -1)
  {
    dispatch_once(&copyEntitlementsForSocketPeer_sleep_once, &__block_literal_global_62);
  }

  v26 = 0;
  usleep(1000 * copyEntitlementsForSocketPeer_sleep_delay);
  if (getsockopt(v1, 6, 516, &v26, &v25))
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v2 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      v3 = __error();
      v4 = strerror(*v3);
      v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
      LogMsg(3u, v2, "Utilities.c", 292, "copyEntitlementsForSocketPeer", v5, @"getsockopt", v6, v24);
    }

    return 0;
  }

  v7 = v26;
  v27 = 0;
  if (!csops())
  {
    return 0;
  }

  if (*__error() != 34)
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v13 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      v14 = __error();
      strerror(*v14);
      LogMsg(3u, v13, "Utilities.c", 238, "copyEntitlementsForPid", 0, @"csops1(%d): %s\n", v15, v7);
    }

    return 0;
  }

  v8 = malloc_type_calloc(1uLL, bswap32(HIDWORD(v27)), 0xB769B7DuLL);
  if (csops())
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v10 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      v11 = __error();
      strerror(*v11);
      LogMsg(3u, v10, "Utilities.c", 246, "copyEntitlementsForPid", 0, @"csops2(%d): %s\n", v12, v7);
    }

    if (!v8)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (*v8 != 1903288058)
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      LogMsg(3u, getDefaultLogCtx_ctx, "Utilities.c", 251, "copyEntitlementsForPid", 0, @"bad magic 0x%08x\n", v9, *v8);
    }

    goto LABEL_18;
  }

  v18 = bswap32(*(v8 + 1));
  if (v18 < 9 || (v19 = v18 - 8, *(v8 + 1) = v19, (v20 = CFDataCreateWithBytesNoCopy(0, v8 + 8, v19, *MEMORY[0x29EDB8EE8])) == 0))
  {
LABEL_18:
    free(v8);
    return 0;
  }

  v21 = v20;
  v22 = CFPropertyListCreateWithData(0, v20, 0, 0, 0);
  v16 = v22;
  if (v22)
  {
    v23 = CFGetTypeID(v22);
    if (v23 != CFDictionaryGetTypeID())
    {
      CFRelease(v16);
      v16 = 0;
    }
  }

  free(v8);
  CFRelease(v21);
  return v16;
}

uint64_t RPSocket_fd::get_port(RPSocket_fd *this)
{
  v1 = *(this + 257);
  if (v1 == 30 || v1 == 2)
  {
    return bswap32(*(this + 129)) >> 16;
  }

  else
  {
    return 0;
  }
}

uint64_t RPSocket_fd::accept(RPSocket_fd *this, unint64_t a2)
{
  if (!a2)
  {
LABEL_5:
    if (accept(*(this + 60), 0, 0) != -1)
    {

      RPCreateSocketForFD();
    }

    v19 = *(this + 5);
    if (v19)
    {
      goto LABEL_18;
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v19 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx)
    {
LABEL_18:
      if (*(v19 + 16) >= 3)
      {
        v20 = __error();
        v21 = strerror(*v20);
        v12 = CFStringCreateWithCString(0, v21, 0x8000100u);
        v14 = "RPSocket.cpp";
        v28 = *(this + 1);
        v15 = "accept";
        v16 = @"accept for %@";
        v17 = v19;
        v18 = 1152;
        goto LABEL_20;
      }
    }

    return 0;
  }

  v4 = *(this + 60);
  v5 = kqueue();
  if (v5 != -1)
  {
    v6 = v5;
    timeout.tv_sec = (a2 / 0x3B9ACA00);
    timeout.tv_nsec = a2 % 0x3B9ACA00;
    eventlist.ident = v4;
    *&eventlist.filter = 1179647;
    memset(&eventlist.fflags, 0, 20);
    v7 = kevent(v5, &eventlist, 1, &eventlist, 1, &timeout);
    if (v7 == -1)
    {
      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      v22 = getDefaultLogCtx_ctx;
      if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
      {
        v23 = __error();
        v24 = strerror(*v23);
        v25 = CFStringCreateWithCString(0, v24, 0x8000100u);
        LogMsg(3u, v22, "Utilities.c", 210, "WaitSocket", v25, @"kevent", v26, v28);
      }

      close(v6);
      return 0;
    }

    v8 = v7;
    close(v6);
    if (v8 < 1)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v9 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
  {
    v10 = __error();
    v11 = strerror(*v10);
    v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
    v14 = "Utilities.c";
    v15 = "WaitSocket";
    v16 = @"kqueue";
    v17 = v9;
    v18 = 200;
LABEL_20:
    LogMsg(3u, v17, v14, v18, v15, v12, v16, v13, v28);
  }

  return 0;
}

void RPSocket_fd::invalidate(dispatch_object_t *this)
{
  dispatch_suspend(this[48]);
  dispatch_source_cancel(this[48]);
  dispatch_sync_f(this[31], this, RPSocket_fd::shutdown_fd);
  RPSocket::set_invalid(this);
}

CFStringRef RPSocketCopyDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  pthread_mutex_lock((v1 + 144));
  v2 = *(v1 + 16);
  if (v2)
  {
    CFRetain(*(v1 + 16));
  }

  pthread_mutex_unlock((v1 + 144));
  v3 = (*(*v1 + 40))(v1);
  v4 = v3;
  if (v3)
  {
    v5 = CFStringCreateWithFormat(0, 0, @"<RPSocket %p %p: %@ %@>", v1, *(v1 + 8), v2, v3);
  }

  else
  {
    v5 = CFStringCreateWithFormat(0, 0, @"<RPSocket %p %p: %@>", v1, *(v1 + 8), v2);
  }

  v6 = v5;
  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

uint64_t FinalizeRPSocket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  v10 = *(v9 + 40);
  if (v10)
  {
    goto LABEL_5;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v10 = getDefaultLogCtx_ctx;
  if (getDefaultLogCtx_ctx)
  {
LABEL_5:
    if (*(v10 + 16) >= 5)
    {
      v11 = *(v9 + 232);
      v15 = *v11;
      v16 = v11[1];
      LogMsg(5u, v10, "RPSocket.cpp", 455, "FinalizeRPSocket", 0, @"Closed %@ after reading %lld bytes and writing %lld bytes\n", a8, a1);
    }
  }

  if (*(v9 + 208))
  {
    v12 = *(v9 + 40);
    if (v12)
    {
      goto LABEL_12;
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v12 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx)
    {
LABEL_12:
      if (*(v12 + 16) >= 5)
      {
        LogMsg(5u, v12, "RPSocket.cpp", 458, "FinalizeRPSocket", 0, @"Ending os transaction for %@\n", a8, a1);
      }
    }

    os_release(*(v9 + 208));
    *(v9 + 208) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    v14 = *(*result + 88);

    return v14();
  }

  return result;
}

uint64_t RPCreateSocketForHost(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  *&v16.sa_data[6] = 0;
  v2 = socket(2, 1, 0);
  if (v2 == -1)
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v9 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      v10 = __error();
      v11 = strerror(*v10);
      v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
      LogMsg(3u, v9, "RPSocket.cpp", 1807, "RPCreateSocketForHost", v12, @"socket(port=%d)", v13, a1);
    }
  }

  else
  {
    v3 = v2;
    *&v16.sa_len = 528;
    *v16.sa_data = __rev16(a1);
    *&v16.sa_data[2] = 16777343;
    if (!connect(v2, &v16, 0x10u))
    {
      RPCreateSocketForFD();
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v4 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      v5 = __error();
      v6 = strerror(*v5);
      v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
      LogMsg(3u, v4, "RPSocket.cpp", 1819, "RPCreateSocketForHost", v7, @"connect(port=%d)", v8, a1);
    }

    close(v3);
  }

  result = 0;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void FinalizeLogCtx(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t InitLog(uint64_t *a1)
{
  if (isatty(2))
  {
    logHandle = *MEMORY[0x29EDCA610];
    v2 = LogToFileHandle;
  }

  else
  {
    v2 = 0;
  }

  if (isRestoreOS())
  {
    v3 = open("/dev/console", 131073);
    logHandle = fdopen(v3, "w");
    v2 = LogToFileHandle;
  }

  result = __CreateCFObject(&createLogCtx___reg, 40);
  *(result + 16) = 5;
  *(result + 24) = 0;
  *(result + 32) = v2;
  *a1 = result;
  loggerReady = 1;
  return result;
}

uint64_t LogToFileHandle(int a1, int a2, char *a3)
{
  if (logHandle)
  {
    return fputs(a3, logHandle);
  }

  return result;
}

void LogMsg(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const __CFString *a7, uint64_t a8, uint64_t a9)
{
  v43 = *MEMORY[0x29EDCA608];
  v16 = getprogname();
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  arguments = &a9;
  if (*(a2 + 32))
  {
    v40 = time(0);
    memset(&v39, 0, sizeof(v39));
    localtime_r(&v40, &v39);
    if (strftime(cStr, 0x63uLL, "%b %d %H:%M:%S ", &v39) && (v18 = CFStringCreateWithCString(0, cStr, 0x8000100u)) != 0)
    {
      cf = v18;
      CFArrayAppendValue(Mutable, v18);
    }

    else
    {
      cf = 0;
    }

    v19 = getpid();
    if (a1 >= 7)
    {
      v20 = 7;
    }

    else
    {
      v20 = a1;
    }

    v21 = CFStringCreateWithFormat(0, 0, @"%s[%d] <%s>: ", v16, v19, LevelString_levelName[v20]);
    if (v21)
    {
      CFArrayAppendValue(Mutable, v21);
    }
  }

  else
  {
    cf = 0;
    v21 = 0;
  }

  v22 = CFStringCreateWithFormat(0, 0, @"%s:%d(%s): ", a3, a4, a5);
  if (v22)
  {
    CFArrayAppendValue(Mutable, v22);
  }

  v23 = CFStringCreateWithFormatAndArguments(0, 0, a7, arguments);
  if (v23)
  {
    CFArrayAppendValue(Mutable, v23);
  }

  if (a6)
  {
    CFArrayAppendValue(Mutable, @": ");
    CFArrayAppendValue(Mutable, a6);
  }

  v36 = v21;
  v38 = a6;
  v24 = CFStringCreateByCombiningStrings(0, Mutable, &stru_2A1E9F7D0);
  v25 = v24;
  v26 = "failed to convert string\n";
  if (v24)
  {
    Length = CFStringGetLength(v24);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v29 = malloc_type_malloc(MaximumSizeForEncoding + 2, 0x100004077774924uLL);
    if (CFStringGetCString(v25, v29, MaximumSizeForEncoding + 2, 0x8000100u))
    {
      v26 = v29;
    }
  }

  else
  {
    v29 = 0;
  }

  if (a1 >= 7)
  {
    v30 = 7;
  }

  else
  {
    v30 = a1;
  }

  v31 = a2;
  v32 = *(a2 + 32);
  if (v32)
  {
    v33 = strlen(v26);
    if (v26[v33 - 1] != 10)
    {
      *&v26[v33] = 10;
      v32 = *(v31 + 32);
    }

    v32(v30, *(v31 + 24), v26);
  }

  else
  {
    if (a1 >= 5)
    {
      v34 = 5;
    }

    else
    {
      v34 = a1;
    }

    asl_log(0, 0, v34, "%s", v26);
  }

  if (v29)
  {
    free(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  v35 = *MEMORY[0x29EDCA608];
}

uint64_t __CreateCFObject(dispatch_once_t *context, uint64_t a2)
{
  v5 = context[16];
  v4 = context + 16;
  if (v5 != -1)
  {
    dispatch_once_f(v4, context, RegisterClass);
  }

  v6 = a2 - 16;
  v7 = context[3];
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), v6);
  }

  return v9;
}

uint64_t RegisterClass(void *a1)
{
  v2 = a1[1];
  a1[5] = *a1;
  a1[8] = v2;
  a1[12] = a1[2];
  result = _CFRuntimeRegisterClass();
  a1[3] = result;
  return result;
}

__CFDictionary *createCommandDictionaryWithArgs(const void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"Command", a1);
  v17 = &a10;
  v13 = key;
  if (key)
  {
    while (1)
    {
      v14 = v17;
      v18 = v17 + 1;
      if (!*v14)
      {
        break;
      }

      CFDictionarySetValue(Mutable, v13, *v14);
      v15 = v18;
      v17 = v18 + 1;
      v13 = *v15;
      if (!*v15)
      {
        return Mutable;
      }
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      LogMsg(3u, getDefaultLogCtx_ctx, "Utilities.c", 113, "createCommandDictionaryWithArgs", 0, @"no value for key %@", v12, v13);
    }
  }

  return Mutable;
}

void setDictionaryIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void __copyEntitlementsForSocketPeer_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"ClientListenerDelay", @"com.apple.PurpleReverseProxy");
  if (v0 || (v0 = CFPreferencesCopyValue(@"ClientListenerDelay", @"com.apple.PurpleReverseProxy", @"mobile", *MEMORY[0x29EDB8F90])) != 0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberSInt32Type, &copyEntitlementsForSocketPeer_sleep_delay);
    }

    CFRelease(v1);
  }
}

BOOL isRestoreOS()
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__s1 = 0u;
  v22 = 0u;
  v20 = 256;
  v0 = MGCopyAnswerWithError();
  if (v0)
  {
    v2 = v0;
    v3 = CFStringCompare(v0, @"Restore", 0);
    v5 = v3 == kCFCompareEqualTo;
    if (loggerReady == 1)
    {
      v6 = v3;
      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 5)
      {
        LogMsg(5u, getDefaultLogCtx_ctx, "Utilities.c", 366, "isRestoreOS", 0, @"Asking MobileGestalt for ReleaseType, isRestoreOS: %d\n", v4, v6 == kCFCompareEqualTo);
      }
    }

    goto LABEL_17;
  }

  if (loggerReady == 1)
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      LogMsg(3u, getDefaultLogCtx_ctx, "Utilities.c", 370, "isRestoreOS", 0, @"Asking for kMGQReleaseType failed: %d\n", v1, 0);
    }
  }

  v7 = _CFCopySystemVersionDictionary();
  if (!v7)
  {
    if (loggerReady != 1)
    {
      goto LABEL_38;
    }

    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      LogMsg(3u, getDefaultLogCtx_ctx, "Utilities.c", 312, "isRestoreOSSystemVersion", 0, @"CFCopySystemVersionDictionary failed\n", v8, v18);
    }

LABEL_32:
    if (loggerReady == 1)
    {
      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
      {
        LogMsg(3u, getDefaultLogCtx_ctx, "Utilities.c", 377, "isRestoreOS", 0, @"Checking SystemVersion failed: %d\n", v8, 0xFFFFFFFFLL);
      }
    }

LABEL_38:
    v19 = sysctlbyname("kern.bootargs", __s1, &v20, 0, 0);
    if (v19)
    {
      if (loggerReady != 1)
      {
        goto LABEL_54;
      }

      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      v14 = getDefaultLogCtx_ctx;
      if (!getDefaultLogCtx_ctx || *(getDefaultLogCtx_ctx + 16) < 3)
      {
        goto LABEL_54;
      }

      v18 = v19;
      v15 = @"Calling sysctlbyname for kern.bootargs failed: %d\n";
      v16 = 3;
      v17 = 386;
    }

    else
    {
      if (strstr(__s1, "rd=md0"))
      {
        v5 = 1;
        goto LABEL_18;
      }

      if (loggerReady != 1)
      {
        goto LABEL_54;
      }

      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      v14 = getDefaultLogCtx_ctx;
      if (!getDefaultLogCtx_ctx || *(getDefaultLogCtx_ctx + 16) < 5)
      {
LABEL_54:
        v5 = 0;
        goto LABEL_18;
      }

      v15 = @"Did not find rd=md0 in bootargs, assuming not RestoreOS\n";
      v16 = 5;
      v17 = 384;
    }

    LogMsg(v16, v14, "Utilities.c", v17, "isRestoreOS", 0, v15, v13, v18);
    goto LABEL_54;
  }

  v2 = v7;
  Value = CFDictionaryGetValue(v7, @"ReleaseType");
  if (!Value)
  {
    if (loggerReady == 1)
    {
      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
      {
        LogMsg(3u, getDefaultLogCtx_ctx, "Utilities.c", 319, "isRestoreOSSystemVersion", 0, @"CFDictionaryGetValue for ReleaseType failed\n", v10, v18);
      }
    }

    CFRelease(v2);
    goto LABEL_32;
  }

  v5 = CFEqual(Value, @"Restore") != 0;
LABEL_17:
  CFRelease(v2);
LABEL_18:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

__CFDictionary *_RPCopyProxyDictionaryWithOptions(const __CFURL *a1, int a2, CFTypeRef cf, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v12 = !cf || (v11 = CFGetTypeID(cf), v11 != CFDictionaryGetTypeID()) || CFDictionaryGetValue(cf, @"TestReachability") != *MEMORY[0x29EDB8EF8];
  if (a1)
  {
    v13 = CFURLCopyHostName(a1);
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"www.apple.com";
  }

  if (!v12)
  {
    goto LABEL_19;
  }

  if (networkIsReachable_once != -1)
  {
    dispatch_once(&networkIsReachable_once, &__block_literal_global_78);
  }

  if ((networkIsReachable_performReachabilityTest & 1) == 0)
  {
    goto LABEL_19;
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __networkIsReachable_block_invoke_2;
  block[3] = &unk_29EE89F38;
  block[4] = &v68;
  block[5] = v14;
  dispatch_sync(networkIsReachable_reachableDictQueue, block);
  v15 = v69[3];
  if (!v15 || (v66 = 0, !networkIsReachable_SCNetworkReachabilityGetFlags_func(v15, &v66)) || (v16 = v66, (v66 & 2) == 0))
  {
    _Block_object_dispose(&v68, 8);
    goto LABEL_19;
  }

  if ((v66 & 4) == 0)
  {
    _Block_object_dispose(&v68, 8);
LABEL_130:
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      LogMsg(3u, getDefaultLogCtx_ctx, "ReverseProxyDevice.c", 223, "_RPCopyProxyDictionaryWithOptions", 0, @"%@ is reachable, assuming we don't need a proxy dictionary\n", a8, v14);
    }

    goto LABEL_122;
  }

  _Block_object_dispose(&v68, 8);
  if ((v16 & 0x28) != 0 && (v16 & 0x10) == 0)
  {
    goto LABEL_130;
  }

LABEL_19:
  if (a2)
  {
    v17 = 1081;
  }

  else
  {
    v17 = 1080;
  }

  CommandDictionaryWithArgs = createCommandDictionaryWithArgs(@"Ping", a2, cf, a4, a5, a6, a7, a8, 0, v64);
  v20 = 0;
  do
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 5)
    {
      LogMsg(5u, getDefaultLogCtx_ctx, "ReverseProxyDevice.c", 58, "sendPingMessage", 0, @"attampting sendProxyControlMessage\n", v18, key);
    }

    v21 = RPCreateSocketForHost(v17);
    if (v21)
    {
      v22 = v21;
      LOWORD(v66) = -17494;
      RPSocketResume(*(v21 + 16));
      if ((RPSocketWrite(v22, &v66, 2) & 1) == 0)
      {
        if (getDefaultLogCtx_once != -1)
        {
          dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
        }

        v48 = getDefaultLogCtx_ctx;
        if (!getDefaultLogCtx_ctx || *(getDefaultLogCtx_ctx + 16) < 3)
        {
          goto LABEL_90;
        }

        v49 = 29;
        v50 = @"RPSocketWrite failed\n";
        goto LABEL_89;
      }

      if ((RPSocketWriteDictionary(v22, CommandDictionaryWithArgs, v23, v24, v25, v26, v27, v28) & 1) == 0)
      {
        if (getDefaultLogCtx_once != -1)
        {
          dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
        }

        v48 = getDefaultLogCtx_ctx;
        if (!getDefaultLogCtx_ctx || *(getDefaultLogCtx_ctx + 16) < 3)
        {
          goto LABEL_90;
        }

        v49 = 34;
        v50 = @"RPSocketWriteDictionary failed\n";
        goto LABEL_89;
      }

      block[0] = 0;
      LODWORD(v68) = -1;
      if (!RPSocketReadBuffer(v22, &v68, 4, v29, v30, v31, v32, v28) || v68 == -1)
      {
        v51 = *(*(v22 + 16) + 40);
        if (v51)
        {
          goto LABEL_54;
        }

        if (getDefaultLogCtx_once != -1)
        {
          dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
        }

        v51 = getDefaultLogCtx_ctx;
        if (getDefaultLogCtx_ctx)
        {
LABEL_54:
          if (*(v51 + 16) >= 3)
          {
            LogMsg(3u, v51, "RPSocket.cpp", 650, "RPSocketReadDictionary", 0, @"failed to read length from %@\n", v28, v22);
          }
        }
      }

      else
      {
        v33 = v68;
        Mutable = CFDataCreateMutable(0, v68);
        if (Mutable)
        {
          v35 = Mutable;
          CFDataSetLength(Mutable, v33);
          MutableBytePtr = CFDataGetMutableBytePtr(v35);
          if (RPSocketReadBuffer(v22, MutableBytePtr, v33, v37, v38, v39, v40, v41))
          {
            v43 = CFPropertyListCreateWithData(0, v35, 2uLL, 0, block);
            v45 = v43;
            if (!v43 || block[0])
            {
              v54 = *(*(v22 + 16) + 40);
              if (v54)
              {
                goto LABEL_72;
              }

              if (getDefaultLogCtx_once != -1)
              {
                dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
              }

              v54 = getDefaultLogCtx_ctx;
              if (getDefaultLogCtx_ctx)
              {
LABEL_72:
                if (*(v54 + 16) >= 3)
                {
                  LogMsg(3u, v54, "RPSocket.cpp", 668, "RPSocketReadDictionary", 0, @"failed to deserialize dictionary from %@: %@\n", v44, v22);
                }
              }

              CFRelease(v35);
              if (v45)
              {
                goto LABEL_91;
              }

              goto LABEL_84;
            }

            v65 = v14;
            v46 = CFGetTypeID(v43);
            if (v46 == CFDictionaryGetTypeID())
            {
              CFRelease(v35);
              v14 = v65;
LABEL_91:
              (*(**(v22 + 16) + 32))(*(v22 + 16));
              RPRelease(v22);
              goto LABEL_92;
            }

            v55 = *(*(v22 + 16) + 40);
            if (v55)
            {
              goto LABEL_80;
            }

            if (getDefaultLogCtx_once != -1)
            {
              dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
            }

            v55 = getDefaultLogCtx_ctx;
            if (getDefaultLogCtx_ctx)
            {
LABEL_80:
              if (*(v55 + 16) >= 3)
              {
                LogMsg(3u, v55, "RPSocket.cpp", 673, "RPSocketReadDictionary", 0, @"plist from %@ was not a dictionary\n", v47, v22);
              }
            }

            CFRelease(v45);
            v14 = v65;
          }

          else
          {
            v53 = *(*(v22 + 16) + 40);
            if (v53)
            {
              goto LABEL_66;
            }

            if (getDefaultLogCtx_once != -1)
            {
              dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
            }

            v53 = getDefaultLogCtx_ctx;
            if (getDefaultLogCtx_ctx)
            {
LABEL_66:
              if (*(v53 + 16) >= 3)
              {
                LogMsg(3u, v53, "RPSocket.cpp", 662, "RPSocketReadDictionary", 0, @"RPSocketReadBuffer failed from %@\n", v42, v22);
              }
            }
          }

          CFRelease(v35);
        }

        else
        {
          v52 = *(*(v22 + 16) + 40);
          if (v52)
          {
            goto LABEL_60;
          }

          if (getDefaultLogCtx_once != -1)
          {
            dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
          }

          v52 = getDefaultLogCtx_ctx;
          if (getDefaultLogCtx_ctx)
          {
LABEL_60:
            if (*(v52 + 16) >= 3)
            {
              LogMsg(3u, v52, "RPSocket.cpp", 656, "RPSocketReadDictionary", 0, @"CFDataCreateMutable failed for len %d for %@\n", v28, v33);
            }
          }
        }
      }

LABEL_84:
      if (getDefaultLogCtx_once != -1)
      {
        dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
      }

      v48 = getDefaultLogCtx_ctx;
      if (!getDefaultLogCtx_ctx || *(getDefaultLogCtx_ctx + 16) < 3)
      {
        goto LABEL_90;
      }

      v49 = 40;
      v50 = @"RPSocketReadDictionary failed\n";
LABEL_89:
      LogMsg(3u, v48, "ReverseProxyDevice.c", v49, "sendProxyControlMessage", 0, v50, v28, key);
LABEL_90:
      v45 = 0;
      goto LABEL_91;
    }

    v45 = 0;
LABEL_92:
    if (v20 > 1)
    {
      break;
    }

    ++v20;
  }

  while (!v45);
  if (!v45)
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v56 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      v57 = @"sendProxyControlMessage failed\n";
      v58 = 63;
LABEL_106:
      LogMsg(3u, v56, "ReverseProxyDevice.c", v58, "sendPingMessage", 0, v57, v18, key);
    }

LABEL_107:
    v59 = 0;
    if (!CommandDictionaryWithArgs)
    {
      goto LABEL_109;
    }

LABEL_108:
    CFRelease(CommandDictionaryWithArgs);
    goto LABEL_109;
  }

  if (CFDictionaryGetValue(v45, @"Pong") != *MEMORY[0x29EDB8F00])
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    v56 = getDefaultLogCtx_ctx;
    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      v57 = @"Unexpected ping response\n";
      v58 = 68;
      goto LABEL_106;
    }

    goto LABEL_107;
  }

  v59 = 1;
  if (CommandDictionaryWithArgs)
  {
    goto LABEL_108;
  }

LABEL_109:
  if (v45)
  {
    CFRelease(v45);
  }

  if ((v59 & 1) == 0)
  {
    if (getDefaultLogCtx_once != -1)
    {
      dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
    }

    if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
    {
      LogMsg(3u, getDefaultLogCtx_ctx, "ReverseProxyDevice.c", 83, "copyProxyDictionaryForURL", 0, @"Failed to ping host proxy service, returning NULL proxy dictionary\n", v18, key);
    }

LABEL_122:
    v60 = 0;
    goto LABEL_123;
  }

  v60 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(v60, *MEMORY[0x29EDB8FC8], @"127.0.0.1");
  setDictionaryIntValue(v60, *MEMORY[0x29EDB8FD0], v17);
  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 5)
  {
    LogMsg(5u, getDefaultLogCtx_ctx, "ReverseProxyDevice.c", 90, "copyProxyDictionaryForURL", 0, @"Returning 'socks://127.0.0.1:%d/' for '%@'\n", v61, v17);
  }

LABEL_123:
  CFRelease(v14);
  return v60;
}

void __networkIsReachable_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(networkIsReachable_reachableDict, *(a1 + 40));
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    Length = CFStringGetLength(*(a1 + 40));
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x3C3C5C88uLL);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetCString(*(a1 + 40), v4, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        *(*(*(a1 + 32) + 8) + 24) = networkIsReachable_SCNetworkReachabilityCreateWithName_func(0, v5);
        v6 = *(*(*(a1 + 32) + 8) + 24);
        if (v6)
        {
          v7 = *(a1 + 40);
          v11[0] = 0;
          v11[1] = v7;
          v11[2] = MEMORY[0x29EDB8C98];
          v11[3] = MEMORY[0x29EDB8C90];
          v11[4] = 0;
          networkIsReachable_SCNetworkReachabilitySetCallback_func(v6, reachabilityCB, v11);
          v8 = networkIsReachable_SCNetworkReachabilitySetDispatchQueue_func;
          v9 = *(*(*(a1 + 32) + 8) + 24);
          global_queue = dispatch_get_global_queue(0, 0);
          v8(v9, global_queue);
          CFDictionarySetValue(networkIsReachable_reachableDict, *(a1 + 40), *(*(*(a1 + 32) + 8) + 24));
          CFRelease(*(*(*(a1 + 32) + 8) + 24));
        }
      }

      free(v5);
    }
  }
}

void reachabilityCB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  if (getDefaultLogCtx_ctx)
  {
    if (*(getDefaultLogCtx_ctx + 16) >= 7)
    {
      LogMsg(7u, getDefaultLogCtx_ctx, "ReverseProxyDevice.c", 122, "reachabilityCB", 0, @"%@ reachable? %s\n", a8, a3);
    }
  }
}

uint64_t __networkIsReachable_block_invoke()
{
  result = isRestoreOS();
  if ((result & 1) == 0)
  {
    result = dlopen("/System/Library/Frameworks/SystemConfiguration.framework/SystemConfiguration", 1);
    if (result)
    {
      v1 = result;
      networkIsReachable_SCNetworkReachabilityCreateWithName_func = dlsym(result, "SCNetworkReachabilityCreateWithName");
      networkIsReachable_SCNetworkReachabilitySetCallback_func = dlsym(v1, "SCNetworkReachabilitySetCallback");
      networkIsReachable_SCNetworkReachabilitySetDispatchQueue_func = dlsym(v1, "SCNetworkReachabilitySetDispatchQueue");
      result = dlsym(v1, "SCNetworkReachabilityGetFlags");
      networkIsReachable_SCNetworkReachabilityGetFlags_func = result;
      if (networkIsReachable_SCNetworkReachabilityCreateWithName_func)
      {
        if (networkIsReachable_SCNetworkReachabilitySetCallback_func && networkIsReachable_SCNetworkReachabilitySetDispatchQueue_func)
        {
          if (result)
          {
            networkIsReachable_reachableDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            result = dispatch_queue_create("reachableDictQueue", 0);
            networkIsReachable_reachableDictQueue = result;
            networkIsReachable_performReachabilityTest = 1;
          }
        }
      }
    }
  }

  return result;
}

__CFDictionary *RPCopyProxyDictionary(const __CFURL *a1)
{
  v2 = isRestoreOS();

  return _RPCopyProxyDictionaryWithOptions(a1, v2, 0, v3, v4, v5, v6, v7);
}

__CFDictionary *RPCopyProxyDictionaryWithOptions(const __CFURL *a1, const void *a2)
{
  v4 = isRestoreOS();

  return _RPCopyProxyDictionaryWithOptions(a1, v4, a2, v5, v6, v7, v8, v9);
}

uint64_t _RPRegisterForAvailability(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!a2)
  {
    return 0;
  }

  CommandDictionaryWithArgs = createCommandDictionaryWithArgs(@"RegisterNotify", a2, a3, a4, a5, a6, a7, a8, 0, v19);
  v11 = _RPRegistrationConnectAndSendMessage(a1, CommandDictionaryWithArgs);
  if (v11)
  {
    v12 = _Block_copy(a2);
    RPSocket::set_client(*(v11 + 16), _RPRegistrationCallback, v12, v13, v14, v15, v16, v17);
    RPSocketResume(*(v11 + 16));
    _Block_release(v12);
  }

  if (CommandDictionaryWithArgs)
  {
    CFRelease(CommandDictionaryWithArgs);
  }

  return v11;
}

uint64_t _RPRegistrationConnectAndSendMessage(int a1, const void *a2)
{
  if (a1)
  {
    v3 = 1084;
  }

  else
  {
    v3 = 1083;
  }

  v4 = RPCreateSocketForHost(v3);
  v11 = v4;
  if (v4 && (RPSocketWriteDictionary(v4, a2, v5, v6, v7, v8, v9, v10) & 1) == 0)
  {
    (*(**(v11 + 16) + 32))(*(v11 + 16));
    RPRelease(v11);
    return 0;
  }

  return v11;
}

uint64_t _RPRegistrationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 2)
  {
    v15 = -1;
    result = RPSocketReadBuffer(a1, &v15, 4, a4, a5, a6, a7, a8);
    if (result && v15 != -1)
    {
      if (v15)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      v12 = *(a3 + 16);

      return v12(a3, v11);
    }

    if (!a1)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  if (getDefaultLogCtx_ctx && *(getDefaultLogCtx_ctx + 16) >= 3)
  {
    LogMsg(3u, getDefaultLogCtx_ctx, "ReverseProxyDevice.c", 266, "_RPRegistrationCallback", 0, @"unexpected event %lu\n", a8, a2);
  }

  result = (*(a3 + 16))(a3, 3);
  if (a1)
  {
LABEL_16:
    v14 = *(**(a1 + 16) + 32);

    return v14();
  }

  return result;
}

uint64_t RPRegisterForAvailability(const void *a1)
{
  v2 = isRestoreOS();

  return _RPRegisterForAvailability(v2, a1, v3, v4, v5, v6, v7, v8);
}

uint64_t RPRegistrationInvalidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RPSocket::set_client(*(a1 + 16), 0, 0, a4, a5, a6, a7, a8);
  v9 = *(**(a1 + 16) + 32);

  return v9();
}

void _RPSetLogLevel(int a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  if (getDefaultLogCtx_once != -1)
  {
    dispatch_once_f(&getDefaultLogCtx_once, &getDefaultLogCtx_ctx, InitLog);
  }

  v10 = getDefaultLogCtx_ctx;
  if (a2 >= 7)
  {
    LODWORD(v11) = 7;
  }

  else
  {
    LODWORD(v11) = a2;
  }

  if (a2 < 0)
  {
    LODWORD(v11) = 0;
  }

  if (a2 == -1)
  {
    v11 = 5;
  }

  else
  {
    v11 = v11;
  }

  *(getDefaultLogCtx_ctx + 16) = v11;
  if (v11 >= 3)
  {
    v22 = LevelString_levelName[v11];
    LogMsg(3u, v10, "Logging.c", 111, "SetDefaultLogLevel", 0, @"set default log level to %d (%s)\n", a8, v11);
  }

  CommandDictionaryWithArgs = createCommandDictionaryWithArgs(@"SetLogLevel", v10, a3, a4, a5, a6, a7, a8, 0, v22);
  setDictionaryIntValue(CommandDictionaryWithArgs, @"Level", a2);
  v13 = _RPRegistrationConnectAndSendMessage(a1, CommandDictionaryWithArgs);
  if (v13)
  {
    v14 = v13;
    v15 = dispatch_semaphore_create(0);
    v25[3] = v15;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___RPSetLogLevel_block_invoke;
    aBlock[3] = &unk_29EE89EF0;
    aBlock[4] = &v24;
    v16 = _Block_copy(aBlock);
    RPSocket::set_client(*(v14 + 16), BlockInvoker, v16, v17, v18, v19, v20, v21);
    _Block_release(v16);
    RPSocketResume(*(v14 + 16));
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    (*(**(v14 + 16) + 32))(*(v14 + 16));
    RPRelease(v14);
    if (!CommandDictionaryWithArgs)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = 0;
  if (CommandDictionaryWithArgs)
  {
LABEL_15:
    CFRelease(CommandDictionaryWithArgs);
  }

LABEL_16:
  if (v15)
  {
    dispatch_release(v15);
  }

  _Block_object_dispose(&v24, 8);
}

void RPSetLogLevel(int a1)
{
  v2 = isRestoreOS();

  _RPSetLogLevel(v2, a1, v3, v4, v5, v6, v7, v8);
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