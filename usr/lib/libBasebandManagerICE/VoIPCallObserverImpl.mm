@interface VoIPCallObserverImpl
- (VoIPCallObserverImpl)initWithCallback:(function<void)(BOOL queue:()BOOL;
- (void)callObserver:(id)a3 callChanged:(id)a4;
@end

@implementation VoIPCallObserverImpl

- (VoIPCallObserverImpl)initWithCallback:(function<void)(BOOL queue:()BOOL
{
  v26[3] = *MEMORY[0x29EDCA608];
  v23.receiver = self;
  v23.super_class = VoIPCallObserverImpl;
  v6 = [(VoIPCallObserverImpl *)&v23 init];
  v7 = v6;
  v8 = v6;
  if (!v6)
  {
    goto LABEL_28;
  }

  *&v6->fVoIPCallStarting = 0;
  f = a3->__f_.__f_;
  if (!f)
  {
    goto LABEL_5;
  }

  if (f != a3)
  {
    f = (*(*f->__f_.__buf_.__data + 16))(f);
LABEL_5:
    v25 = f;
    goto LABEL_7;
  }

  v25 = buf;
  (*(*f->__f_.__buf_.__data + 24))(f, buf);
LABEL_7:
  data = v7->fCallback.__f_.__buf_.__data;
  if (data == buf)
  {
    goto LABEL_16;
  }

  v11 = v25;
  v12 = v8->fCallback.__f_.__f_;
  if (v25 == buf)
  {
    if (v12 == data)
    {
      memset(v26, 170, 24);
      (*(*v25 + 24))();
      (*(*v25 + 32))(v25);
      v25 = 0;
      (*(*v8->fCallback.__f_.__f_ + 24))(v8->fCallback.__f_.__f_, buf);
      (*(*v8->fCallback.__f_.__f_ + 32))(v8->fCallback.__f_.__f_);
      v8->fCallback.__f_.__f_ = 0;
      v25 = buf;
      (*(v26[0] + 24))(v26, data);
      (*(v26[0] + 32))(v26);
      v8->fCallback.__f_.__f_ = data;
      v13 = v25;
      if (v25 == buf)
      {
        goto LABEL_11;
      }
    }

    else
    {
      (*(*v25 + 24))();
      (*(*v25 + 32))(v25);
      v25 = v8->fCallback.__f_.__f_;
      v14 = v25;
      v8->fCallback.__f_.__f_ = data;
      v13 = v14;
      if (v14 == buf)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

  if (v12 == data)
  {
    (*(*v12 + 24))(v8->fCallback.__f_.__f_, buf);
    (*(*v8->fCallback.__f_.__f_ + 32))(v8->fCallback.__f_.__f_);
    v8->fCallback.__f_.__f_ = v25;
    v25 = buf;
LABEL_16:
    v13 = v25;
    if (v25 == buf)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v25 = v8->fCallback.__f_.__f_;
  v8->fCallback.__f_.__f_ = v11;
  v13 = v12;
  if (v12 == buf)
  {
LABEL_11:
    (*(*v13 + 32))(v13);
    goto LABEL_19;
  }

LABEL_17:
  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

LABEL_19:
  v15 = objc_alloc_init(MEMORY[0x29EDB8530]);
  fCallObserver = v8->fCallObserver;
  v8->fCallObserver = v15;

  v17 = v8->fCallObserver;
  if (!v17)
  {
    if ((atomic_load_explicit(&qword_2A18CB148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB148))
    {
      qword_2A18CB150 = 0;
      qword_2A18CB158 = 0;
      __cxa_guard_release(&qword_2A18CB148);
    }

    if (_MergedGlobals == -1)
    {
      v20 = qword_2A18CB158;
      if (!os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        v19 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v20 = qword_2A18CB158;
      if (!os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }
    }

    *buf = 0;
    _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, "Failed to create Call Observer from CallKit", buf, 2u);
    goto LABEL_28;
  }

  [(CXCallObserver *)v17 setDelegate:v8 queue:a4];
  if ((atomic_load_explicit(&qword_2A18CB148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB148))
  {
    qword_2A18CB150 = 0;
    qword_2A18CB158 = 0;
    __cxa_guard_release(&qword_2A18CB148);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v18 = qword_2A18CB158;
    if (!os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v18 = qword_2A18CB158;
  if (os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_INFO))
  {
LABEL_23:
    *buf = 0;
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_INFO, "Call Observer created", buf, 2u);
  }

LABEL_24:
  v19 = v8;
LABEL_29:

  v21 = *MEMORY[0x29EDCA608];
  return v19;
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v34 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  if ((atomic_load_explicit(&qword_2A18CB148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB148))
  {
    qword_2A18CB150 = 0;
    qword_2A18CB158 = 0;
    __cxa_guard_release(&qword_2A18CB148);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v8 = qword_2A18CB158;
    if (!os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

LABEL_28:
    v18 = [v7 providerIdentifier];
    *buf = 138412290;
    *&buf[4] = v18;
    _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "Provider ID: %@", buf, 0xCu);

    goto LABEL_4;
  }

  v8 = qword_2A18CB158;
  if (os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_28;
  }

LABEL_4:
  if ((atomic_load_explicit(&qword_2A18CB148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB148))
  {
    qword_2A18CB150 = 0;
    qword_2A18CB158 = 0;
    __cxa_guard_release(&qword_2A18CB148);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v9 = qword_2A18CB158;
    if (!os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

LABEL_30:
    v19 = [v7 hasConnected];
    v20 = [v7 hasEnded];
    fVoIPCallStarting = self->fVoIPCallStarting;
    fVoIPCallActive = self->fVoIPCallActive;
    *buf = 67109888;
    *&buf[4] = v19;
    *&buf[8] = 1024;
    *&buf[10] = v20;
    v30 = 1024;
    v31 = fVoIPCallStarting;
    v32 = 1024;
    v33 = fVoIPCallActive;
    _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "(1) call connected: %{BOOL}d, call ended: %{BOOL}d, fVoIPCallStarting: %{BOOL}d, fVoIPCallActive: %{BOOL}d", buf, 0x1Au);
    goto LABEL_7;
  }

  v9 = qword_2A18CB158;
  if (os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_30;
  }

LABEL_7:
  if (([v7 hasConnected] & 1) == 0 && (objc_msgSend(v7, "hasEnded") & 1) == 0)
  {
    if (!self->fVoIPCallStarting)
    {
      v10 = 1;
      self->fVoIPCallStarting = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!self->fVoIPCallStarting)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  self->fVoIPCallStarting = 0;
  v10 = 1;
LABEL_13:
  if ([v7 hasConnected] && (objc_msgSend(v7, "hasEnded") & 1) == 0)
  {
    if (!self->fVoIPCallActive)
    {
      v10 = 1;
      self->fVoIPCallActive = 1;
    }
  }

  else if (self->fVoIPCallActive)
  {
    self->fVoIPCallActive = 0;
    v10 = 1;
  }

  if ((atomic_load_explicit(&qword_2A18CB148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB148))
  {
    qword_2A18CB150 = 0;
    qword_2A18CB158 = 0;
    __cxa_guard_release(&qword_2A18CB148);
  }

  if (_MergedGlobals == -1)
  {
    v11 = qword_2A18CB158;
    if (!os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v11 = qword_2A18CB158;
    if (!os_log_type_enabled(qword_2A18CB158, OS_LOG_TYPE_DEBUG))
    {
LABEL_22:
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  v23 = [v7 hasConnected];
  v24 = [v7 hasEnded];
  v25 = self->fVoIPCallStarting;
  v26 = self->fVoIPCallActive;
  *buf = 67109888;
  *&buf[4] = v23;
  *&buf[8] = 1024;
  *&buf[10] = v24;
  v30 = 1024;
  v31 = v25;
  v32 = 1024;
  v33 = v26;
  _os_log_debug_impl(&dword_297476000, v11, OS_LOG_TYPE_DEBUG, "(2) call connected: %{BOOL}d, call ended: %{BOOL}d, fVoIPCallStarting: %{BOOL}d, fVoIPCallActive: %{BOOL}d", buf, 0x1Au);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_23:
  v12 = self->fVoIPCallStarting;
  v13 = self->fVoIPCallActive;
  v14 = [v7 providerIdentifier];
  v15 = v14;
  v28 = v12;
  v27 = v13;
  *buf = [v14 UTF8String];
  f = self->fCallback.__f_.__f_;
  if (!f)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*f + 48))(f, &v28, &v27, buf);

LABEL_25:
  v17 = *MEMORY[0x29EDCA608];
}

@end