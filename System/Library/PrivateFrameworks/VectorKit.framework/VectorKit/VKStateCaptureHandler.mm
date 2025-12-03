@interface VKStateCaptureHandler
+ (os_state_data_s)stateDataForDictionary:(id)dictionary title:(id)title;
- (VKStateCaptureHandler)initWithQueue:(id)queue withName:(id)name withCallback:(function<NSString *)(;
- (os_state_data_s)_stateCapture;
- (void)_registerHandlerforStateCapture:(id)capture;
- (void)_unregisterHandlerforStateCapture;
- (void)dealloc;
@end

@implementation VKStateCaptureHandler

- (os_state_data_s)_stateCapture
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitStateCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138412290;
    v18 = name;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_DEBUG, "%@ State Capture Begin", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ State Capture: Starting....", self->_name];
  f = self->_callback.__f_.__f_;
  if (f)
  {
    v7 = (*(*f + 48))(f);
    if (v7)
    {
      v8 = [v5 stringByAppendingString:v7];

      v5 = v8;
    }
  }

  _GEOStateCaptureLog();
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ State Capture", self->_name];
  v15 = v10;
  v16 = @"Completed";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ State Capture", self->_name];
  v13 = [v9 stateDataForDictionary:v11 title:v12];

  return v13;
}

- (void)_unregisterHandlerforStateCapture
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitStateCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    v5 = 138412290;
    v6 = name;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_DEBUG, "Unregister Handler for %@ State Capture", &v5, 0xCu);
  }

  if (self->_handle)
  {
    os_state_remove_handler();
  }
}

- (void)_registerHandlerforStateCapture:(id)capture
{
  v11 = *MEMORY[0x1E69E9840];
  captureCopy = capture;
  v5 = GEOGetVectorKitStateCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138412290;
    v10 = name;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_DEBUG, "Register Handler for %@ State Capture", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v8, buf);
  v7 = os_state_add_handler();

  self->_handle = v7;
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

uint64_t __57__VKStateCaptureHandler__registerHandlerforStateCapture___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = GEOGetVectorKitStateCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "got called os_state_add_handler", v9, 2u);
  }

  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    return 0;
  }

  v6 = WeakRetained;
  v7 = [WeakRetained _stateCapture];

  return v7;
}

- (void)dealloc
{
  p_callback = &self->_callback;
  f = self->_callback.__f_.__f_;
  self->_callback.__f_.__f_ = 0;
  if (f == p_callback)
  {
    (*(*f->__f_.__buf_.__data + 32))(f, a2);
  }

  else if (f)
  {
    (*(*f->__f_.__buf_.__data + 40))(f, a2);
  }

  [(VKStateCaptureHandler *)self _unregisterHandlerforStateCapture];
  v5.receiver = self;
  v5.super_class = VKStateCaptureHandler;
  [(VKStateCaptureHandler *)&v5 dealloc];
}

- (VKStateCaptureHandler)initWithQueue:(id)queue withName:(id)name withCallback:(function<NSString *)(
{
  v21[3] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = VKStateCaptureHandler;
  v10 = [(VKStateCaptureHandler *)&v18 init];
  v11 = v10;
  v12 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  objc_storeStrong(&v10->_name, name);
  if (!v11->_name)
  {
    v11->_name = @"VK State Snapshot";
  }

  f = a5->__f_.__f_;
  if (f)
  {
    if (f == a5)
    {
      v20 = v19;
      (*(*f->__f_.__buf_.__data + 24))(f, v19);
      goto LABEL_9;
    }

    f = (*(*f->__f_.__buf_.__data + 16))(f);
  }

  v20 = f;
LABEL_9:
  p_callback = &v11->_callback;
  if (p_callback != v19)
  {
    v15 = v20;
    v16 = v12->_callback.__f_.__f_;
    if (v20 == v19)
    {
      if (v16 == p_callback)
      {
        (*(*v20 + 24))();
        (*(*v20 + 32))(v20);
        v20 = 0;
        (*(*v12->_callback.__f_.__f_ + 24))(v12->_callback.__f_.__f_, v19);
        (*(*v12->_callback.__f_.__f_ + 32))(v12->_callback.__f_.__f_);
        v12->_callback.__f_.__f_ = 0;
        v20 = v19;
        (*(v21[0] + 24))(v21, p_callback);
        (*(v21[0] + 32))(v21);
      }

      else
      {
        (*(*v20 + 24))();
        (*(*v20 + 32))(v20);
        v20 = v12->_callback.__f_.__f_;
      }

      v12->_callback.__f_.__f_ = p_callback;
    }

    else if (v16 == p_callback)
    {
      (*(*v16->__f_.__buf_.__data + 24))(v12->_callback.__f_.__f_, v19);
      (*(*v12->_callback.__f_.__f_ + 32))(v12->_callback.__f_.__f_);
      v12->_callback.__f_.__f_ = v20;
      v20 = v19;
    }

    else
    {
      v20 = v12->_callback.__f_.__f_;
      v12->_callback.__f_.__f_ = v15;
    }
  }

  std::__function::__value_func<NSString * ()(void)>::~__value_func[abi:nn200100](v19);
  [(VKStateCaptureHandler *)v12 _registerHandlerforStateCapture:queueCopy];
LABEL_19:

  return v12;
}

+ (os_state_data_s)stateDataForDictionary:(id)dictionary title:(id)title
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  titleCopy = title;
  if (dictionaryCopy)
  {
    v22 = 0;
    v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v22];
    v8 = v22;
    if (v8)
    {
      v9 = GEOGetVectorKitStateCaptureLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v8;
        v10 = "Error serializing dictionary for State Capture: %@";
        v11 = v9;
        v12 = 12;
LABEL_5:
        _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }

    else
    {
      v14 = [v7 length];
      v15 = malloc_type_calloc(1uLL, v14 + 200, 0x1000040BEF03554uLL);
      v13 = v15;
      if (v15)
      {
        v15->var0 = 1;
        v15->var1.var1 = v14;
        v16 = [titleCopy dataUsingEncoding:4];
        v9 = v16;
        if (v16)
        {
          v17 = v16;
          bytes = [v9 bytes];
          if ([v9 length]> 0x3E)
          {
            v19 = 63;
          }

          else
          {
            v19 = [v9 length];
          }

          memcpy(v13->var3, bytes, v19);
        }

        v20 = v7;
        memcpy(v13->var4, [v7 bytes], v14);
        goto LABEL_17;
      }

      v9 = GEOGetVectorKitStateCaptureLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = "Error os_state_data nil";
        v11 = v9;
        v12 = 2;
        goto LABEL_5;
      }
    }

    v13 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v13 = 0;
LABEL_18:

  return v13;
}

@end