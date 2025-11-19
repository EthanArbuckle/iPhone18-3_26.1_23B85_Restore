@interface SIE5RTTensorPortDescriptor
- (BOOL)isPacked;
- (BOOL)isPackedFP32;
- (BOOL)isS8_ANE;
- (BOOL)isU8_ANE;
- (SIE5RTTensorPortDescriptor)initWithE5RTPort:(e5rt_io_port *)a3 portType:(int64_t)a4 engineType:(int64_t)a5 surfaceAllocator:(id)a6;
- (const)getShape;
- (const)getStrides;
- (e5rt_tensor_desc)createPackedFP32TensorDescriptor;
- (id)constructUndimensionedSurfaceWithAllocator:(id)a3;
- (int)getComponentType;
- (int64_t)bindSurface:(id)a3;
- (unint64_t)getComponentSize;
- (unint64_t)getNumberOfElements;
- (unint64_t)getRank;
- (unint64_t)getSizeInBytes;
- (unsigned)getNumComponents;
- (void)bindRawPointer:(const void *)a3;
- (void)dealloc;
- (void)getDataPtr;
@end

@implementation SIE5RTTensorPortDescriptor

- (id)constructUndimensionedSurfaceWithAllocator:(id)a3
{
  v4 = a3;
  v5 = [v4 allocateWithWidth:+[SIIOSurfaceAllocator alignAllocation:](SIIOSurfaceAllocator height:"alignAllocation:" pixelFormat:-[SIE5RTTensorPortDescriptor getSizeInBytes](self, "getSizeInBytes")), 1, 1278226488];

  return v5;
}

- (SIE5RTTensorPortDescriptor)initWithE5RTPort:(e5rt_io_port *)a3 portType:(int64_t)a4 engineType:(int64_t)a5 surfaceAllocator:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v44.receiver = self;
  v44.super_class = SIE5RTTensorPortDescriptor;
  v11 = [(SIE5RTTensorPortDescriptor *)&v44 init];
  if (!v11)
  {
    goto LABEL_10;
  }

  if (e5rt_io_port_retain_tensor_desc())
  {
    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 57);
      *buf = 136381187;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v47 = 1025;
      v48 = 57;
      v49 = 2113;
      v50 = v13;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = "YES";
      desc = v11->_desc;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      *buf = 136381187;
      if (!desc)
      {
        v15 = "NO";
      }

      v47 = 1025;
      v48 = 57;
      v49 = 2081;
      v50 = v15;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to retain the tensor descriptor: desc has been init: %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v11->_port = a3;
  v11->_engineType = a5;
  v11->_portType = a4;
  if ([(SIE5RTTensorPortDescriptor *)v11 getComponentType])
  {
    v20 = 0;
  }

  else
  {
    v20 = [(SIE5RTTensorPortDescriptor *)v11 getNumComponents]== 4;
  }

  v11->_isFP32 = [(SIE5RTTensorPortDescriptor *)v11 isPackedFP32]|| v20;
  v11->_isFP16_ANE = [(SIE5RTTensorPortDescriptor *)v11 isFP16_ANE];
  v11->_isS8_ANE = [(SIE5RTTensorPortDescriptor *)v11 isS8_ANE];
  v11->_isU8_ANE = [(SIE5RTTensorPortDescriptor *)v11 isU8_ANE];
  v11->_client_desc = [(SIE5RTTensorPortDescriptor *)v11 createPackedFP32TensorDescriptor];
  if (a4 != 1)
  {
LABEL_55:
    if (v11->_desc)
    {
      if (v11->_client_desc)
      {
        v17 = v11;
        goto LABEL_11;
      }

      v14 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v47 = 1025;
        v48 = 146;
        _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** client tensor descriptor is nil in tesnor port descriptor ***", buf, 0x12u);
      }
    }

    else
    {
      v14 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v47 = 1025;
        v48 = 141;
        _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** tensor descriptor is nil in tesnor port descriptor ***", buf, 0x12u);
      }
    }

    goto LABEL_9;
  }

  v21 = [(SIE5RTTensorPortDescriptor *)v11 getWidth];
  v22 = [(SIE5RTTensorPortDescriptor *)v11 getHeight];
  v23 = [(SIE5RTTensorPortDescriptor *)v11 getChannels];
  v43 = 0;
  if (v11->_engineType == 2)
  {
    v24 = v11->_desc;
    if (e5rt_tensor_desc_alloc_buffer_object())
    {
      v25 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 85);
        *buf = 136381187;
        v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v47 = 1025;
        v48 = 85;
        v49 = 2113;
        v50 = v26;
        _os_log_impl(&dword_21DE0D000, v25, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v14 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v47 = 1025;
      v48 = 85;
      v27 = " %{private}s:%{private}d *** Failed to alloc the internal iosurface for output port. ***";
      goto LABEL_66;
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v32 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 88);
        *buf = 136381187;
        v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v47 = 1025;
        v48 = 88;
        v49 = 2113;
        v50 = v33;
        _os_log_impl(&dword_21DE0D000, v32, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v14 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v47 = 1025;
      v48 = 88;
      v27 = " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***";
      goto LABEL_66;
    }

    goto LABEL_54;
  }

  if (v23 != 1)
  {
    v29 = v11->_desc;
    if (e5rt_tensor_desc_alloc_buffer_object())
    {
      v30 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 94);
        *buf = 136381187;
        v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v47 = 1025;
        v48 = 94;
        v49 = 2113;
        v50 = v31;
        _os_log_impl(&dword_21DE0D000, v30, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v14 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v47 = 1025;
      v48 = 94;
      v27 = " %{private}s:%{private}d *** Failed to alloc the internal iosurface for output port. ***";
    }

    else
    {
      v34 = [[SIIOSurface alloc] initFromE5RTBuffer:0];
      memory_surface = v11->_memory_surface;
      v11->_memory_surface = v34;

      if (!e5rt_io_port_bind_buffer_object())
      {
        goto LABEL_54;
      }

      v36 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 106);
        *buf = 136381187;
        v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v47 = 1025;
        v48 = 106;
        v49 = 2113;
        v50 = v37;
        _os_log_impl(&dword_21DE0D000, v36, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v14 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v47 = 1025;
      v48 = 106;
      v27 = " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***";
    }

LABEL_66:
    _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, v27, buf, 0x12u);
    goto LABEL_9;
  }

  v28 = 1278226488;
  if (v11->_isFP32)
  {
    v28 = 1278226534;
  }

  else if (v11->_isFP16_ANE)
  {
    v28 = 1278226536;
  }

  else if (!v11->_isU8_ANE)
  {
    if (v11->_isS8_ANE)
    {
      v28 = 1278226488;
    }

    else
    {
      v28 = 1111970369;
    }
  }

  if (v10)
  {
    v38 = [v10 allocateWithWidth:v21 height:v22 pixelFormat:v28];
    v39 = v11->_memory_surface;
    v11->_memory_surface = v38;

    v40 = v11->_memory_surface;
    if (!v40)
    {
      __assert_rtn("[SIE5RTTensorPortDescriptor initWithE5RTPort:portType:engineType:surfaceAllocator:]", "SIE5RTTensorPortDescriptor.mm", 126, "_memory_surface");
    }

    v43 = [(SIIOSurface *)v40 createE5RTBuffer];
    if (!v43)
    {
      goto LABEL_10;
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v41 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 133);
        *buf = 136381187;
        v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v47 = 1025;
        v48 = 133;
        v49 = 2113;
        v50 = v42;
        _os_log_impl(&dword_21DE0D000, v41, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v14 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v47 = 1025;
      v48 = 133;
      v27 = " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***";
      goto LABEL_66;
    }

LABEL_54:
    v11->_buffer = v43;
    goto LABEL_55;
  }

  v14 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
    v47 = 1025;
    v48 = 122;
    v27 = " %{private}s:%{private}d *** SurfaceAllocator was required and not provided ***";
    goto LABEL_66;
  }

LABEL_9:

LABEL_10:
  v17 = 0;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  if (self->_port)
  {
    e5rt_io_port_release();
  }

  if (self->_client_desc)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_desc)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_buffer)
  {
    e5rt_buffer_object_release();
  }

  v3.receiver = self;
  v3.super_class = SIE5RTTensorPortDescriptor;
  [(SIE5RTTensorPortDescriptor *)&v3 dealloc];
}

- (int64_t)bindSurface:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_engineType == 2)
  {
    v7 = [v5 copyData];
    v8 = [v7 bytes];

    desc = self->_desc;
    if (e5rt_tensor_desc_alloc_buffer_object())
    {
      v10 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 179);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v36 = 1025;
        v37 = 179;
        v38 = 2113;
        v39 = v11;
        _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v12 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136380931;
      v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v36 = 1025;
      v37 = 179;
      v13 = " %{private}s:%{private}d *** Failed to alloc the internal iosurface for FP16_ANE input port. ***";
LABEL_35:
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
LABEL_36:

      v26 = 4;
      goto LABEL_39;
    }

    if (e5rt_buffer_object_get_data_ptr())
    {
      v27 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 181);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v36 = 1025;
        v37 = 181;
        v38 = 2113;
        v39 = v28;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v12 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136380931;
      v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v36 = 1025;
      v37 = 181;
      v13 = " %{private}s:%{private}d *** Unable to get data for cpuEspressoData ***";
      goto LABEL_35;
    }

    v29 = [v6 copyData];
    memcpy(0, v8, [v29 length]);

LABEL_38:
    v26 = 7;
    goto LABEL_39;
  }

  v33 = [v5 createE5RTBuffer];
  if (!v33)
  {
    goto LABEL_38;
  }

  v14 = [v6 pixelFormat];
  if (self->_isFP16_ANE && (v14 == 1717855600 || v14 == 1278226534))
  {
    v16 = self->_desc;
    client_desc = self->_client_desc;
    buffer = self->_buffer;
    if (e5rt_tensor_utils_cast_from_fp32_to_fp16())
    {
      v18 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 201);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v36 = 1025;
        v37 = 201;
        v38 = 2113;
        v39 = v19;
        _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v20 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = self->_buffer;
        if (self->_client_desc)
        {
          v22 = "YES";
        }

        else
        {
          v22 = "NO";
        }

        if (self->_desc)
        {
          v23 = "YES";
        }

        else
        {
          v23 = "NO";
        }

        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        if (v21)
        {
          v24 = "YES";
        }

        else
        {
          v24 = "NO";
        }

        *buf = 136381955;
        v36 = 1025;
        v37 = 201;
        v38 = 2081;
        v39 = v22;
        v40 = 2081;
        v41 = v23;
        v42 = 2081;
        v43 = v24;
        v44 = 2081;
        v45 = "YES";
        _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to cast fp32 buffer to fp16. clientDescriptorInit:%{private}s descriptorInit:%{private}s srcBufferInit:%{private}s, dstBufferInit:%{private}s ***", buf, 0x3Au);
      }

      goto LABEL_38;
    }

    e5rt_buffer_object_release();
  }

  else
  {
    port = self->_port;
    e5rt_io_port_bind_buffer_object();
    if (self->_buffer)
    {
      e5rt_buffer_object_release();
    }

    self->_buffer = v33;
  }

  objc_storeStrong(&self->_memory_surface, a3);
  v26 = 0;
LABEL_39:

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)bindRawPointer:(const void *)a3
{
  client_desc = self->_client_desc;
  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v9 = 219;
    goto LABEL_20;
  }

  v5 = self->_client_desc;
  if (e5rt_tensor_desc_get_size())
  {
    v9 = 222;
    goto LABEL_20;
  }

  if (e5rt_buffer_object_get_data_ptr())
  {
    v9 = 226;
    goto LABEL_20;
  }

  if (!self->_isFP16_ANE)
  {
    if (!self->_isFP32)
    {
      return;
    }

    port = self->_port;
    if (e5rt_io_port_bind_buffer_object())
    {
      v9 = 234;
    }

    else
    {
      buffer = self->_buffer;
      p_buffer = &self->_buffer;
      if (!buffer || !e5rt_buffer_object_release())
      {
        *p_buffer = 0;
        return;
      }

      v9 = 236;
    }

LABEL_20:
    v13 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v9);
    objc_exception_throw(v13);
  }

  desc = self->_desc;
  v6 = self->_client_desc;
  v8 = self->_buffer;
  if (e5rt_tensor_utils_cast_from_fp32_to_fp16())
  {
    v9 = 230;
    goto LABEL_20;
  }

  if (e5rt_buffer_object_release())
  {
    v9 = 231;
    goto LABEL_20;
  }
}

- (void)getDataPtr
{
  buffer = self->_buffer;
  if (e5rt_buffer_object_get_data_ptr())
  {
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 245);
    objc_exception_throw(v4);
  }

  return 0;
}

- (int)getComponentType
{
  desc = self->_desc;
  if (e5rt_tensor_desc_retain_dtype())
  {
    v4 = 252;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_get_component_dtype())
  {
    v4 = 254;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_release())
  {
    v4 = 255;
LABEL_8:
    v5 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v4);
    objc_exception_throw(v5);
  }

  return 0;
}

- (unsigned)getNumComponents
{
  desc = self->_desc;
  if (e5rt_tensor_desc_retain_dtype())
  {
    v4 = 262;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_get_num_components())
  {
    v4 = 264;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_release())
  {
    v4 = 265;
LABEL_8:
    v5 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v4);
    objc_exception_throw(v5);
  }

  return 0;
}

- (unint64_t)getComponentSize
{
  desc = self->_desc;
  if (e5rt_tensor_desc_retain_dtype())
  {
    v4 = 272;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_get_component_size())
  {
    v4 = 274;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_release())
  {
    v4 = 275;
LABEL_8:
    v5 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v4);
    objc_exception_throw(v5);
  }

  return 0;
}

- (unint64_t)getRank
{
  desc = self->_desc;
  if (e5rt_tensor_desc_get_rank())
  {
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 282);
    objc_exception_throw(v4);
  }

  return 0;
}

- (const)getShape
{
  desc = self->_desc;
  if (e5rt_tensor_desc_get_shape())
  {
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 290);
    objc_exception_throw(v4);
  }

  return 0;
}

- (const)getStrides
{
  desc = self->_desc;
  if (e5rt_tensor_desc_get_strides())
  {
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 298);
    objc_exception_throw(v4);
  }

  return 0;
}

- (unint64_t)getSizeInBytes
{
  desc = self->_desc;
  if (e5rt_tensor_desc_get_size())
  {
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 305);
    objc_exception_throw(v4);
  }

  return 0;
}

- (BOOL)isPacked
{
  v3 = [(SIE5RTTensorPortDescriptor *)self getStrides];
  v4 = [(SIE5RTTensorPortDescriptor *)self getShape];
  v5 = [(SIE5RTTensorPortDescriptor *)self getRank];
  v6 = &v3[v5 - 1];
  v7 = v5 - 1;
  do
  {
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = v4[v7] * *v6;
    v10 = *--v6;
    --v7;
  }

  while (v9 == v10);
  return v8 == 0;
}

- (BOOL)isPackedFP32
{
  if ([(SIE5RTTensorPortDescriptor *)self getComponentType]!= 4 || [(SIE5RTTensorPortDescriptor *)self getComponentSize]!= 4)
  {
    return 0;
  }

  return [(SIE5RTTensorPortDescriptor *)self isPacked];
}

- (BOOL)isS8_ANE
{
  if ([(SIE5RTTensorPortDescriptor *)self getComponentType]!= 1 || [(SIE5RTTensorPortDescriptor *)self getComponentSize]!= 1)
  {
    return 0;
  }

  v3 = [(SIE5RTTensorPortDescriptor *)self getRank];
  return (*([(SIE5RTTensorPortDescriptor *)self getStrides]+ 8 * v3 - 16) & 0x3F) == 0;
}

- (BOOL)isU8_ANE
{
  if ([(SIE5RTTensorPortDescriptor *)self getComponentType]|| [(SIE5RTTensorPortDescriptor *)self getComponentSize]!= 1)
  {
    return 0;
  }

  v3 = [(SIE5RTTensorPortDescriptor *)self getRank];
  return (*([(SIE5RTTensorPortDescriptor *)self getStrides]+ 8 * v3 - 16) & 0x3F) == 0;
}

- (e5rt_tensor_desc)createPackedFP32TensorDescriptor
{
  if (![(SIE5RTTensorPortDescriptor *)self isPackedFP32])
  {
    [(SIE5RTTensorPortDescriptor *)self getNumComponents];
    if (e5rt_tensor_desc_dtype_create())
    {
      v4 = 438;
    }

    else
    {
      [(SIE5RTTensorPortDescriptor *)self getShape];
      [(SIE5RTTensorPortDescriptor *)self getRank];
      if (e5rt_tensor_desc_create())
      {
        v4 = 443;
      }

      else
      {
        if (!e5rt_tensor_desc_dtype_release())
        {
          return 0;
        }

        v4 = 444;
      }
    }

LABEL_11:
    v6 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v4);
    objc_exception_throw(v6);
  }

  port = self->_port;
  if (e5rt_io_port_retain_tensor_desc())
  {
    v4 = 421;
    goto LABEL_11;
  }

  return 0;
}

- (unint64_t)getNumberOfElements
{
  desc = self->_desc;
  if (e5rt_tensor_desc_get_shape())
  {
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 452);
    objc_exception_throw(v4);
  }

  return 1;
}

@end