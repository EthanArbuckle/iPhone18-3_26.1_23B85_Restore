@interface VKManifestTileGroupObserverProxy
- (VKManifestTileGroupObserverProxy)initWithQueue:(id)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)experimentConfigurationDidChange:(id)a3;
- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5;
- (void)resourceManifestManagerWillChangeActiveTileGroup:(id)a3;
@end

@implementation VKManifestTileGroupObserverProxy

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  return self;
}

- (void)experimentConfigurationDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_experimentConfigurationDidChange.__f_.__f_)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 134217984;
      *&v9[4] = self;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[observer:%p] Received ExperimentalConfigurationDidChange Notification", v9, 0xCu);
    }

    v6 = v4;
    *v9 = v6;
    f = self->_experimentConfigurationDidChange.__f_.__f_;
    if (!f)
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();

      _Unwind_Resume(v8);
    }

    (*(*f + 48))(f, v9);
  }
}

- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_didChangeActiveTileGroup.__f_.__f_)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v11 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "[observer:%p] Received DidChangeActiveTileGroup Notification", buf, 0xCu);
    }

    v12 = v8;
    *buf = v12;
    v13 = v9;
    v18 = v13;
    v14 = v10;
    v17 = v14;
    f = self->_didChangeActiveTileGroup.__f_.__f_;
    if (!f)
    {
      v16 = std::__throw_bad_function_call[abi:nn200100]();

      _Unwind_Resume(v16);
    }

    (*(*f + 48))(f, buf, &v18, &v17);
  }
}

- (void)resourceManifestManagerWillChangeActiveTileGroup:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_willChangeActiveTileGroup.__f_.__f_)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 134217984;
      *&v9[4] = self;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[observer:%p] Received WillChangeActiveTileGroup Notification", v9, 0xCu);
    }

    v6 = v4;
    *v9 = v6;
    f = self->_willChangeActiveTileGroup.__f_.__f_;
    if (!f)
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();

      _Unwind_Resume(v8);
    }

    (*(*f + 48))(f, v9);
  }
}

- (void)dealloc
{
  p_willChangeActiveTileGroup = &self->_willChangeActiveTileGroup;
  f = self->_willChangeActiveTileGroup.__f_.__f_;
  self->_willChangeActiveTileGroup.__f_.__f_ = 0;
  if (f == p_willChangeActiveTileGroup)
  {
    (*(*f->__f_.__buf_.__data + 32))(f, a2);
  }

  else if (f)
  {
    (*(*f->__f_.__buf_.__data + 40))(f, a2);
  }

  v5 = self->_didChangeActiveTileGroup.__f_.__f_;
  self->_didChangeActiveTileGroup.__f_.__f_ = 0;
  if (v5 == &self->_didChangeActiveTileGroup)
  {
    (*(v5->super.isa + 4))(v5, a2);
  }

  else if (v5)
  {
    (*(v5->super.isa + 5))(v5, a2);
  }

  v6 = self->_experimentConfigurationDidChange.__f_.__f_;
  self->_experimentConfigurationDidChange.__f_.__f_ = 0;
  if (v6 == &self->_experimentConfigurationDidChange)
  {
    (*(v6->super.isa + 4))(v6, a2);
  }

  else if (v6)
  {
    (*(v6->super.isa + 5))(v6, a2);
  }

  v7 = [MEMORY[0x1E69A2478] modernManager];
  [v7 removeTileGroupObserver:self];

  v8 = [MEMORY[0x1E69A1D90] sharedConfiguration];
  [v8 removeExperimentObserver:self];

  v9.receiver = self;
  v9.super_class = VKManifestTileGroupObserverProxy;
  [(VKManifestTileGroupObserverProxy *)&v9 dealloc];
}

- (VKManifestTileGroupObserverProxy)initWithQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKManifestTileGroupObserverProxy;
  v5 = [(VKManifestTileGroupObserverProxy *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69A2478] modernManager];
    [v6 addTileGroupObserver:v5 queue:v4];

    v7 = [MEMORY[0x1E69A1D90] sharedConfiguration];
    [v7 addExperimentObserver:v5 queue:v4];
  }

  return v5;
}

@end