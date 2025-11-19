@interface SiriTTSTrainer
- (SiriTTSTrainer)initWithPaths:(id)a3 dataAssetPath:(id)a4 inferenceAssetPath:(id)a5;
- (SiriTTSTrainer)initWithPaths:(id)a3 dataAssetPath:(id)a4 inferenceAssetPath:(id)a5 taskId:(id)a6;
- (id).cxx_construct;
- (id)callback_func:(int)a3;
- (int64_t)start_preprocess:(id)a3;
- (int64_t)start_train:(int64_t)a3 delegate:(id)a4;
@end

@implementation SiriTTSTrainer

- (SiriTTSTrainer)initWithPaths:(id)a3 dataAssetPath:(id)a4 inferenceAssetPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSProcessInfo processInfo];
  v12 = [v11 globallyUniqueString];
  v13 = [NSString stringWithFormat:@"manual-task-%@", v12];

  v14 = [(SiriTTSTrainer *)self initWithPaths:v8 dataAssetPath:v9 inferenceAssetPath:v10 taskId:v13];
  return v14;
}

- (SiriTTSTrainer)initWithPaths:(id)a3 dataAssetPath:(id)a4 inferenceAssetPath:(id)a5 taskId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15.receiver = self;
  v15.super_class = SiriTTSTrainer;
  if ([(SiriTTSTrainer *)&v15 init])
  {
    [v10 UTF8String];
    [v11 UTF8String];
    [v12 UTF8String];
    [v13 UTF8String];
    operator new();
  }

  return 0;
}

- (id)callback_func:(int)a3
{
  if (!a1)
  {
    return 0;
  }

  v6 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109632;
    v12[1] = a2;
    v13 = 1024;
    v14 = HIDWORD(a2);
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "callback event: %d, curr_value=%d, total_value=%d", v12, 0x14u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained((a1 + 24));
  v10 = [v9 trainerTaskEvent:a2 currentValue:a2 >> 32 totalValue:a3];

  return v10;
}

- (int64_t)start_preprocess:(id)a3
{
  v4 = a3;
  if (self)
  {
    objc_storeWeak(&self->_delegate, v4);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __35__SiriTTSTrainer_start_preprocess___block_invoke;
  v23[3] = &unk_26C488;
  v23[4] = self;
  v30 = 0;
  v29[0] = off_285158;
  v29[1] = objc_retainBlock(v23);
  v30 = v29;
  v5 = SiriTTSTrainerGetLog();
  v6 = os_signpost_id_generate(v5);
  mach_absolute_time();

  v7 = SiriTTSTrainerGetLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    v26 = v9;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "STT-TrainingPreprocessing-Interval", "taskId=%s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 134218242;
    v26 = v6;
    v27 = 2080;
    v28 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "#STTSP BEGIN [%lld]: STT-TrainingPreprocessing-Interval taskId=%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  ptr = self->_trainer.__ptr_;
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](v24, v29);
  v13 = SiriTTS::TTSTrainer::preprocess(ptr, v24);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v24);
  v14 = SiriTTSTrainerGetLog();
  v15 = os_signpost_id_generate(v14);
  mach_absolute_time();

  v16 = SiriTTSTrainerGetLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
    v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    v26 = v18;
    _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_END, v15, "STT-TrainingPreprocessing-Interval", "taskId=%s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v19 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    v26 = v15;
    v27 = 2080;
    v28 = p_p;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "#STTSP END [%lld]: STT-TrainingPreprocessing-Interval taskId=%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v29);
  return v13;
}

- (int64_t)start_train:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  if (self)
  {
    objc_storeWeak(&self->_delegate, v6);
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = __39__SiriTTSTrainer_start_train_delegate___block_invoke;
  v44[3] = &unk_26C488;
  v44[4] = self;
  v52 = 0;
  v51[0] = off_285158;
  v51[1] = objc_retainBlock(v44);
  v52 = v51;
  if (a3 == 2)
  {
    v25 = SiriTTSTrainerGetLog();
    v26 = os_signpost_id_generate(v25);
    mach_absolute_time();

    v27 = SiriTTSTrainerGetLog();
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v48 = v29;
      _os_signpost_emit_with_name_impl(&dword_0, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "STT-TrainingWaveRNN-Interval", "taskId=%s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v30 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 134218242;
      v48 = v26;
      v49 = 2080;
      v50 = v31;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "#STTSP BEGIN [%lld]: STT-TrainingWaveRNN-Interval taskId=%s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v32 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v33 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v48 = v33;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "taskId: %s, Begin WaveRNN training", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    ptr = self->_trainer.__ptr_;
    std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](v45, v51);
    SiriTTS::TTSTrainer::train(ptr, 1, v45);
    std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v45);
    v35 = SiriTTSTrainerGetLog();
    v36 = os_signpost_id_generate(v35);
    mach_absolute_time();

    v37 = SiriTTSTrainerGetLog();
    v38 = v37;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v48 = v39;
      _os_signpost_emit_with_name_impl(&dword_0, v38, OS_SIGNPOST_INTERVAL_END, v36, "STT-TrainingWaveRNN-Interval", "taskId=%s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v22 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 134218242;
      v48 = v36;
      v49 = 2080;
      v50 = p_p;
      v24 = "#STTSP END [%lld]: STT-TrainingWaveRNN-Interval taskId=%s";
      goto LABEL_67;
    }
  }

  else
  {
    if (a3 != 1)
    {
      v22 = SiriTTSTrainerGetLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &__p;
      }

      else
      {
        v42 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v48 = v42;
      v49 = 2048;
      v50 = a3;
      _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "taskId: %s, Training model type is not supported: %ld", buf, 0x16u);
      goto LABEL_68;
    }

    v7 = SiriTTSTrainerGetLog();
    v8 = os_signpost_id_generate(v7);
    mach_absolute_time();

    v9 = SiriTTSTrainerGetLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v48 = v11;
      _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "STT-TrainingFS2-Interval", "taskId=%s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v12 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 134218242;
      v48 = v8;
      v49 = 2080;
      v50 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "#STTSP BEGIN [%lld]: STT-TrainingFS2-Interval taskId=%s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v48 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "taskId: %s, Begin Fastspeech2 training", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v16 = self->_trainer.__ptr_;
    std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](v46, v51);
    SiriTTS::TTSTrainer::train(v16, 0, v46);
    std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v46);
    v17 = SiriTTSTrainerGetLog();
    v18 = os_signpost_id_generate(v17);
    mach_absolute_time();

    v19 = SiriTTSTrainerGetLog();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v48 = v21;
      _os_signpost_emit_with_name_impl(&dword_0, v20, OS_SIGNPOST_INTERVAL_END, v18, "STT-TrainingFS2-Interval", "taskId=%s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v22 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      SiriTTS::TTSTrainer::get_task_id_(self->_trainer.__ptr_, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 134218242;
      v48 = v18;
      v49 = 2080;
      v50 = v23;
      v24 = "#STTSP END [%lld]: STT-TrainingFS2-Interval taskId=%s";
LABEL_67:
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, v24, buf, 0x16u);
LABEL_68:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_71:

  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v51);
  return 0;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end