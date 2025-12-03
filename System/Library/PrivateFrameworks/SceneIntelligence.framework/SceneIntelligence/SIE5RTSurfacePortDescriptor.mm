@interface SIE5RTSurfacePortDescriptor
- (SIE5RTSurfacePortDescriptor)initWithE5RTPort:(e5rt_io_port *)port portType:(int64_t)type;
- (const)getShape;
- (id)getSurface;
- (int64_t)bindSurface:(id)surface;
- (unint64_t)getBatchnum;
- (unint64_t)getBytePerRow;
- (unint64_t)getChannels;
- (unint64_t)getComponentSize;
- (unint64_t)getNumberOfElements;
- (unint64_t)getRank;
- (unint64_t)getRowElements;
- (unint64_t)getSizeInBytes;
- (void)bindRawPointer:(const void *)pointer;
- (void)dealloc;
- (void)getDataPtr;
@end

@implementation SIE5RTSurfacePortDescriptor

- (SIE5RTSurfacePortDescriptor)initWithE5RTPort:(e5rt_io_port *)port portType:(int64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = SIE5RTSurfacePortDescriptor;
  v5 = [(SIE5RTSurfacePortDescriptor *)&v23 init:port];
  if (v5)
  {
    if (e5rt_io_port_retain_surface_desc())
    {
      v6 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 39);
        *buf = 136381187;
        v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        v26 = 1025;
        v27 = 39;
        v28 = 2113;
        v29 = v7;
        _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = "YES";
        v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        *buf = 136381187;
        if (!port)
        {
          v9 = "NO";
        }

        v26 = 1025;
        v27 = 39;
        v28 = 2081;
        v29 = v9;
        _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the descriptor for surface port. port is init: %{private}s ***", buf, 0x1Cu);
      }
    }

    else
    {
      v5->_port = port;
      desc = v5->_desc;
      if (e5rt_surface_desc_get_width())
      {
        v11 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 44);
          *buf = 136381187;
          v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
          v26 = 1025;
          v27 = 44;
          v28 = 2113;
          v29 = v12;
          _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
        }

        v13 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
          v26 = 1025;
          v27 = 44;
          _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the width surface port. ***", buf, 0x12u);
        }
      }

      else
      {
        v14 = v5->_desc;
        if (e5rt_surface_desc_get_height())
        {
          v15 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 47);
            *buf = 136381187;
            v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v26 = 1025;
            v27 = 47;
            v28 = 2113;
            v29 = v16;
            _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
          }

          v13 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136380931;
            v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v26 = 1025;
            v27 = 47;
            _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the height surface port. ***", buf, 0x12u);
          }
        }

        else
        {
          v17 = v5->_desc;
          if (!e5rt_surface_desc_get_format())
          {
            v20 = v5;
            goto LABEL_29;
          }

          v18 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 50);
            *buf = 136381187;
            v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v26 = 1025;
            v27 = 50;
            v28 = 2113;
            v29 = v19;
            _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
          }

          v13 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136380931;
            v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v26 = 1025;
            v27 = 50;
            _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the format surface port. ***", buf, 0x12u);
          }
        }
      }
    }
  }

  v20 = 0;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (int64_t)bindSurface:(id)surface
{
  v26 = *MEMORY[0x277D85DE8];
  surfaceCopy = surface;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  createE5RTSurface = [surfaceCopy createE5RTSurface];
  if (v17[3])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v13 = __43__SIE5RTSurfacePortDescriptor_bindSurface___block_invoke;
    v14 = &unk_27833C320;
    v15 = &v16;
    port = self->_port;
    if (e5rt_io_port_bind_surface_object())
    {
      v6 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 66);
        *buf = 136381187;
        v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        v22 = 1025;
        v23 = 66;
        v24 = 2113;
        v25 = v7;
        _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        v22 = 1025;
        v23 = 66;
        _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***", buf, 0x12u);
      }

      v9 = 7;
    }

    else
    {
      v9 = 0;
    }

    v13(v12);
  }

  else
  {
    v9 = 7;
  }

  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)bindRawPointer:(const void *)pointer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 86;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getBatchnum
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 92;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)getChannels
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 98;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)getDataPtr
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 104;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)getNumberOfElements
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 110;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)getRank
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 116;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)getRowElements
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 122;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (const)getShape
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 128;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)getBytePerRow
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 133;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)getComponentSize
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 139;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)getSizeInBytes
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 144;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getSurface
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v7 = 1025;
    v8 = 149;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v5, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  if (self->_port)
  {
    e5rt_io_port_release();
  }

  if (self->_desc)
  {
    e5rt_surface_desc_release();
  }

  v3.receiver = self;
  v3.super_class = SIE5RTSurfacePortDescriptor;
  [(SIE5RTSurfacePortDescriptor *)&v3 dealloc];
}

@end