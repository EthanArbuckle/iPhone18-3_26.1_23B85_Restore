@interface PTEffectPersonSegmentationViSegHQVisionCoreE5
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size;
- (BOOL)createEspressoBuffer:(e5rt_buffer_object *)buffer fromNetwork:(int)network name:(id)name isInput:(BOOL)input;
- (CGSize)colorSize;
- (PTEffectPersonSegmentationViSegHQVisionCoreE5)initWithMetalContext:(id)context colorSize:(CGSize)size;
- (__CVBuffer)outputPixelBuffer;
- (id)debugTextures;
- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer;
- (unsigned)clearIOSurface:(__IOSurface *)surface value:(float)value;
- (unsigned)reset;
- (void)dealloc;
- (void)postProcessUpdateFrame;
- (void)reset;
@end

@implementation PTEffectPersonSegmentationViSegHQVisionCoreE5

- (PTEffectPersonSegmentationViSegHQVisionCoreE5)initWithMetalContext:(id)context colorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v114 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v101.receiver = self;
  v101.super_class = PTEffectPersonSegmentationViSegHQVisionCoreE5;
  v9 = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)&v101 init];
  if (!v9)
  {
    v33 = 0;
    goto LABEL_30;
  }

  kdebug_trace();
  v9->_colorSize.width = width;
  v9->_colorSize.height = height;
  objc_storeStrong(&v9->_metalContext, context);
  v10 = dispatch_semaphore_create(0);
  semaphore = v9->_semaphore;
  v9->_semaphore = v10;

  v12 = _PTLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = 1;
    *&buf[8] = 1024;
    *&buf[10] = 0;
    _os_log_impl(&dword_2243FB000, v12, OS_LOG_TYPE_INFO, "ViSegHQ version %i %i", buf, 0xEu);
  }

  v13 = [objc_alloc(MEMORY[0x277D784D8]) initWithMajor:1 minor:0];
  height = [PTEffectUtil closestAspectRatio:width, height];
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v15 = height - 1;
  if (height - 1 >= 3)
  {
    v32 = _PTLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }

    goto LABEL_22;
  }

  v16 = (&unk_278523460 + 8 * v15);
  v17 = (&unk_278523478 + 8 * v15);
  v18 = (&unk_278523490 + 8 * v15);
  v19 = (&unk_2785234A8 + 8 * v15);
  v20 = (&unk_2785234C0 + 8 * v15);
  v21 = (&unk_2785234D8 + 8 * v15);
  if (width >= height)
  {
    v16 = v17;
  }

  v22 = **v16;
  if (width >= height)
  {
    v23 = v19;
  }

  else
  {
    v23 = v18;
  }

  if (width >= height)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  v111 = v22;
  v112 = **v23;
  v113 = **v24;
  v25 = *MEMORY[0x277D784E8];
  v100 = 0;
  v26 = [MEMORY[0x277D784E0] descriptorForIdentifier:v25 version:v13 error:&v100];
  v27 = v100;
  viSegHQDescriptor = v9->_viSegHQDescriptor;
  v9->_viSegHQDescriptor = v26;

  v29 = v9->_viSegHQDescriptor;
  if (!v29 || v27)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }

    goto LABEL_26;
  }

  v30 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v29 URL];
  path = [v30 path];
  [path UTF8String];

  v99 = 0;
  if (e5rt_program_library_create())
  {
    *buf = 0;
    if (e5rt_e5_compiler_create())
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v98 = 0;
    if (e5rt_e5_compiler_options_create())
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    if (e5rt_e5_compiler_options_set_compute_device_types_mask())
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v97 = "*";
    if (e5rt_e5_compiler_options_set_mil_entry_points())
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    if (e5rt_e5_compiler_compile())
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    if (e5rt_e5_compiler_options_release())
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    if (e5rt_e5_compiler_release())
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
LABEL_48:
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

LABEL_22:

      v27 = 0;
LABEL_26:
      v33 = 0;
      goto LABEL_27;
    }
  }

  v83 = contextCopy;
  v37 = +[PTInference ANEConfigForSynchronousWork];
  v38 = 0;
  e5Functions = v9->_e5Functions;
  do
  {
    v40 = v9->_viSegHQDescriptor;
    v41 = *(&v111 + v38);
    v96 = 0;
    v42 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v40 functionForIdentifier:v41 error:&v96, v79];
    v27 = v96;
    v43 = e5Functions[v38];
    e5Functions[v38] = v42;

    if (e5Functions[v38])
    {
      v44 = v27 == 0;
    }

    else
    {
      v44 = 0;
    }

    if (!v44)
    {
      v48 = _PTLogSystem();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        *&buf[22] = 2112;
        *&buf[24] = v27;
        _os_log_error_impl(&dword_2243FB000, v48, OS_LOG_TYPE_ERROR, "Error getting VisionCoreE5RTFunction for %@ (%@). Error %@", buf, 0x20u);
      }

      goto LABEL_88;
    }

    if (e5rt_execution_stream_create())
    {
      v50 = _PTLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    if (!v9->_es[v38])
    {
      v50 = _PTLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      goto LABEL_86;
    }

    [v37 E5ExecutionPriority];
    if (e5rt_execution_stream_set_ane_execution_priority())
    {
      v50 = _PTLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
LABEL_85:
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

LABEL_86:

      goto LABEL_87;
    }

    v98 = 0;
    name = [(VisionCoreE5RTFunction *)e5Functions[v38] name];
    [name UTF8String];
    v46 = e5rt_program_library_retain_program_function();

    if (v46)
    {
      v50 = _PTLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    v97 = 0;
    if (e5rt_precompiled_compute_op_create_options_create_with_program_function())
    {
      v51 = _PTLogSystem();
      contextCopy = v83;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      goto LABEL_108;
    }

    [v41 UTF8String];
    if (e5rt_precompiled_compute_op_create_options_set_operation_name())
    {
      v51 = _PTLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

LABEL_107:
      contextCopy = v83;
LABEL_108:

      v27 = 0;
      v33 = 0;
      goto LABEL_109;
    }

    if (e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options())
    {
      v51 = _PTLogSystem();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

LABEL_106:
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      goto LABEL_107;
    }

    if (!v9->_esop[v38])
    {
      v51 = _PTLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      goto LABEL_107;
    }

    if (e5rt_precompiled_compute_op_create_options_release())
    {
      v51 = _PTLogSystem();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    if (e5rt_program_function_release())
    {
      v51 = _PTLogSystem();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    memset(buf, 0, sizeof(buf));
    v95 = 0;
    if (e5rt_execution_stream_operation_get_num_inputs())
    {
      v51 = _PTLogSystem();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    if (e5rt_execution_stream_operation_get_input_names())
    {
      v51 = _PTLogSystem();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    v82 = v37;
    v85 = v13;
    v94 = 0;
    if (e5rt_execution_stream_operation_get_num_outputs())
    {
      v51 = _PTLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    if (e5rt_execution_stream_operation_get_output_names())
    {
      v51 = _PTLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      contextCopy = v83;
      goto LABEL_108;
    }

    v79 = v9->_e5Functions;
    ++v38;
  }

  while (v38 != 3);
  if (e5rt_program_library_release())
  {
    v47 = _PTLogSystem();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }

LABEL_87:
    v27 = 0;
LABEL_88:
    v33 = 0;
    contextCopy = v83;
    goto LABEL_109;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v52 = [&unk_2837F3A78 countByEnumeratingWithState:&v90 objects:v105 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v91;
    while (2)
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v91 != v54)
        {
          objc_enumerationMutation(&unk_2837F3A78);
        }

        v56 = *(*(&v90 + 1) + 8 * i);
        v57 = [&unk_2837F3A78 objectForKeyedSubscript:{v56, v79}];
        LODWORD(v56) = -[PTEffectPersonSegmentationViSegHQVisionCoreE5 createEspressoBuffer:fromNetwork:name:isInput:](v9, "createEspressoBuffer:fromNetwork:name:isInput:", v9->_ebuffer[[v57 intValue]], 2, v56, 1);

        if (!v56)
        {
          v27 = 0;
          v33 = 0;
          contextCopy = v83;
          goto LABEL_141;
        }
      }

      v53 = [&unk_2837F3A78 countByEnumeratingWithState:&v90 objects:v105 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v58 = [&unk_2837F3AA0 countByEnumeratingWithState:&v86 objects:v104 count:{16, v79}];
  if (v58)
  {
    v59 = v58;
    v60 = *v87;
LABEL_122:
    v61 = 0;
    while (1)
    {
      if (*v87 != v60)
      {
        objc_enumerationMutation(&unk_2837F3AA0);
      }

      v62 = *(*(&v86 + 1) + 8 * v61);
      v63 = [&unk_2837F3AA0 objectForKeyedSubscript:v62];
      LODWORD(v62) = -[PTEffectPersonSegmentationViSegHQVisionCoreE5 createEspressoBuffer:fromNetwork:name:isInput:](v9, "createEspressoBuffer:fromNetwork:name:isInput:", &v9->_ebuffer[[v63 intValue]][1], 2, v62, 0);

      if (!v62)
      {
        break;
      }

      if (v59 == ++v61)
      {
        v59 = [&unk_2837F3AA0 countByEnumeratingWithState:&v86 objects:v104 count:16];
        if (v59)
        {
          goto LABEL_122;
        }

        goto LABEL_128;
      }
    }
  }

  else
  {
LABEL_128:
    [PTEffectPersonSegmentationViSegHQVisionCoreE5 segmentationSizeForColorSize:width, height];
    v64 = 0;
    *&v9->_segmentationSize.width = *buf;
    v65 = MEMORY[0x277CBECE8];
    v9->_segmentationSize.depth = *&buf[16];
    allocator = *v65;
    v80 = *MEMORY[0x277CC4D60];
    v81 = *MEMORY[0x277CC4DE8];
    textureMatting = v9->_textureMatting;
    v67 = 1;
    do
    {
      v68 = v67;
      v69 = v9->_segmentationSize.width;
      v70 = v9->_segmentationSize.height;
      v102[0] = v81;
      v102[1] = v80;
      v103[0] = MEMORY[0x277CBEC10];
      v103[1] = &unk_2837F34C0;
      v71 = &v9->_pixelBufferMatting[v64];
      CVPixelBufferCreate(allocator, v69, v70, 0x4C303068u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:{2, v80}], v71);
      v72 = *v71;
      device = [(PTMetalContext *)v9->_metalContext device];
      v74 = [PTPixelBufferUtil createTextureFromPixelBuffer:v72 device:device];
      v75 = textureMatting[v64];
      textureMatting[v64] = v74;

      CVPixelBufferGetIOSurface(*v71);
      if (e5rt_surface_object_create_from_iosurface())
      {
        v78 = _PTLogSystem();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
        }

        goto LABEL_139;
      }

      v67 = 0;
      v64 = 1;
    }

    while ((v68 & 1) != 0);
    reset = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)v9 reset];
    [v85 major];
    [v85 minor];
    kdebug_trace();
    if (!reset)
    {
      v33 = v9;
      v27 = 0;
      goto LABEL_140;
    }

    v77 = _PTLogSystem();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

LABEL_139:
  v27 = 0;
  v33 = 0;
LABEL_140:
  contextCopy = v83;
  v13 = v85;
LABEL_141:
  v37 = v82;
LABEL_109:

LABEL_27:
  for (j = 16; j != -8; j -= 8)
  {
  }

LABEL_30:
  return v33;
}

- (void)dealloc
{
  v2 = 0;
  v43 = *MEMORY[0x277D85DE8];
  networkPorts = self->_networkPorts;
  do
  {
    v4 = e5rt_execution_stream_operation_release();
    if (v4)
    {
      v5 = v4;
      v6 = _PTLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v17 = MEMORY[0x22AA4F9C0](v5);
        last_error_message = e5rt_get_last_error_message();
        *buf = 136315394;
        v40 = v17;
        v41 = 2080;
        v42 = last_error_message;
        _os_log_error_impl(&dword_2243FB000, v6, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
      }
    }

    v7 = e5rt_execution_stream_release();
    if (v7)
    {
      v8 = v7;
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = MEMORY[0x22AA4F9C0](v8);
        v20 = e5rt_get_last_error_message();
        *buf = 136315394;
        v40 = v19;
        v41 = 2080;
        v42 = v20;
        _os_log_error_impl(&dword_2243FB000, v9, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
      }
    }

    v10 = 11;
    v11 = networkPorts;
    do
    {
      if ((*v11)[0])
      {
        v12 = e5rt_io_port_release();
        if (v12)
        {
          v13 = v12;
          v14 = _PTLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = MEMORY[0x22AA4F9C0](v13);
            v16 = e5rt_get_last_error_message();
            *buf = 136315394;
            v40 = v15;
            v41 = 2080;
            v42 = v16;
            _os_log_error_impl(&dword_2243FB000, v14, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
          }
        }
      }

      v11 = (v11 + 8);
      --v10;
    }

    while (v10);
    ++v2;
    ++networkPorts;
  }

  while (v2 != 3);
  if (self->_inputE5Surface && e5rt_surface_object_release())
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v22 = 0;
  v23 = 1;
  do
  {
    v24 = v23;
    CVPixelBufferRelease(self->_pixelBufferMatting[v22]);
    v25 = e5rt_surface_object_release();
    if (v25)
    {
      v26 = v25;
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = MEMORY[0x22AA4F9C0](v26);
        v36 = e5rt_get_last_error_message();
        *buf = 136315394;
        v40 = v35;
        v41 = 2080;
        v42 = v36;
        _os_log_error_impl(&dword_2243FB000, v27, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
      }
    }

    v28 = self->_ebuffer + 8 * v22;
    v29 = 4;
    do
    {
      v30 = e5rt_buffer_object_release();
      if (v30)
      {
        v31 = v30;
        v32 = _PTLogSystem();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = MEMORY[0x22AA4F9C0](v31);
          v34 = e5rt_get_last_error_message();
          *buf = 136315394;
          v40 = v33;
          v41 = 2080;
          v42 = v34;
          _os_log_error_impl(&dword_2243FB000, v32, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
        }
      }

      v28 += 16;
      --v29;
    }

    while (v29);
    v23 = 0;
    v22 = 1;
  }

  while ((v24 & 1) != 0);
  v38.receiver = self;
  v38.super_class = PTEffectPersonSegmentationViSegHQVisionCoreE5;
  [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)&v38 dealloc];
}

- (BOOL)createEspressoBuffer:(e5rt_buffer_object *)buffer fromNetwork:(int)network name:(id)name isInput:(BOOL)input
{
  inputCopy = input;
  nameCopy = name;
  v10 = self->_e5Functions[network];
  if (inputCopy)
  {
    v19 = 0;
    v11 = &v19;
    v12 = [(VisionCoreE5RTFunction *)v10 descriptorForInput:nameCopy error:&v19];
  }

  else
  {
    v18 = 0;
    v11 = &v18;
    v12 = [(VisionCoreE5RTFunction *)v10 descriptorForOutput:nameCopy error:&v18];
  }

  v13 = v12;
  v14 = *v11;
  if (v14)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 createEspressoBuffer:fromNetwork:name:isInput:];
    }
  }

  else
  {
    [v13 storageByteCount];
    if (!e5rt_buffer_object_alloc())
    {
      v16 = 1;
      goto LABEL_11;
    }

    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (unsigned)reset
{
  self->_frameCount = 0;
  IOSurface = CVPixelBufferGetIOSurface(self->_pixelBufferMatting[0]);
  LODWORD(v4) = -1.0;
  v5 = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)self clearIOSurface:IOSurface value:v4];
  v6 = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)self clearIOSurface:CVPixelBufferGetIOSurface(self->_pixelBufferMatting[1]) value:0.0]| v5;
  memsetE5Buffer();
  memsetE5Buffer();
  if (v6)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 reset];
    }
  }

  return v6;
}

- (unsigned)clearIOSurface:(__IOSurface *)surface value:(float)value
{
  if (!surface)
  {
    v24 = _PTLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 clearIOSurface:value:];
    }

    return -1;
  }

  _S8 = value;
  if (IOSurfaceGetPixelFormat(surface) != 1278226536)
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 clearIOSurface:surface value:?];
    }

    return -1;
  }

  IOSurfaceLock(surface, 0, 0);
  Width = IOSurfaceGetWidth(surface);
  Height = IOSurfaceGetHeight(surface);
  BytesPerRow = IOSurfaceGetBytesPerRow(surface);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (Height)
  {
    v10 = 0;
    v11 = vdupq_n_s64(Width - 1);
    __asm { FCVT            H1, S8 }

    v17 = BaseAddress + 8;
    do
    {
      if (Width)
      {
        v18 = 0;
        v19 = v17;
        do
        {
          v20 = vdupq_n_s64(v18);
          v21 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v20, xmmword_2244A5BA0)));
          if (vuzp1_s8(vuzp1_s16(v21, *v11.i8), *v11.i8).u8[0])
          {
            *(v19 - 4) = _H1;
          }

          if (vuzp1_s8(vuzp1_s16(v21, *&v11), *&v11).i8[1])
          {
            *(v19 - 3) = _H1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v20, xmmword_2244A5B90)))), *&v11).i8[2])
          {
            *(v19 - 2) = _H1;
            *(v19 - 1) = _H1;
          }

          v22 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v20, xmmword_2244A5B80)));
          if (vuzp1_s8(*&v11, vuzp1_s16(v22, *&v11)).i32[1])
          {
            *v19 = _H1;
          }

          if (vuzp1_s8(*&v11, vuzp1_s16(v22, *&v11)).i8[5])
          {
            v19[1] = _H1;
          }

          if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v20, xmmword_2244A5B70))))).i8[6])
          {
            v19[2] = _H1;
            v19[3] = _H1;
          }

          v18 += 8;
          v19 += 8;
        }

        while (((Width + 7) & 0xFFFFFFFFFFFFFFF8) != v18);
      }

      ++v10;
      v17 = (v17 + BytesPerRow);
    }

    while (v10 != Height);
  }

  IOSurfaceUnlock(surface, 0, 0);
  return 0;
}

- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer
{
  frameCount = self->_frameCount;
  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
  kdebug_trace();
  if (frameCount)
  {
    dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  boundInputIOSurface = self->_boundInputIOSurface;
  if (boundInputIOSurface != CVPixelBufferGetIOSurface(buffer))
  {
    self->_boundInputIOSurface = CVPixelBufferGetIOSurface(buffer);
    if (self->_inputE5Surface && e5rt_surface_object_release())
    {
      v7 = _PTLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_surface_object_create_from_iosurface())
    {
      v8 = _PTLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }
  }

  if (!frameCount)
  {
    if (e5rt_io_port_bind_surface_object())
    {
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_io_port_bind_surface_object())
    {
      v10 = _PTLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v12 = _PTLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v14 = _PTLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_execution_stream_encode_operation())
    {
      v15 = _PTLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_execution_stream_execute_sync())
    {
      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_execution_stream_reset())
    {
      v17 = _PTLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }
  }

  v18 = self->_frameCount;
  v19 = v18 + 1;
  self->_frameCount = v18 + 1;
  v20 = __OFADD__(v18, 2);
  v18 += 2;
  v21 = (v18 < 0) ^ v20;
  v22 = v18 & 1;
  if (v21)
  {
    v23 = -v22;
  }

  else
  {
    v23 = v22;
  }

  v43 = v19 % 5;
  if (v19 % 5)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  if (e5rt_io_port_bind_surface_object())
  {
    v25 = _PTLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_surface_object())
  {
    v26 = _PTLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v27 = _PTLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v29 = _PTLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v30 = _PTLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_surface_object())
  {
    v31 = _PTLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v32 = _PTLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v33 = _PTLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (!v43)
  {
    if (e5rt_io_port_bind_buffer_object())
    {
      v34 = _PTLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v35 = _PTLogSystem();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __85__PTEffectPersonSegmentationViSegHQVisionCoreE5_runPersonSegmentationForPixelBuffer___block_invoke;
  v44[3] = &unk_278523440;
  v45 = v24;
  v44[4] = self;
  v36 = MEMORY[0x22AA50020](v44);
  if (e5rt_execution_stream_encode_operation())
  {
    v37 = _PTLogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_execution_stream_execute_sync())
  {
    v38 = _PTLogSystem();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (e5rt_execution_stream_reset())
  {
    v39 = _PTLogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v36[2](v36, 0);
  v40 = self->_textureMatting[v23];
  v41 = v40;

  return v40;
}

uint64_t __85__PTEffectPersonSegmentationViSegHQVisionCoreE5_runPersonSegmentationForPixelBuffer___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _PTLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __85__PTEffectPersonSegmentationViSegHQVisionCoreE5_runPersonSegmentationForPixelBuffer___block_invoke_cold_1();
    }
  }

  if (*(a1 + 40) == 2)
  {
    [*(a1 + 32) postProcessUpdateFrame];
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 528));
  [*(*(a1 + 32) + 480) width];
  [*(*(a1 + 32) + 480) height];
  return kdebug_trace();
}

- (__CVBuffer)outputPixelBuffer
{
  frameCount = self->_frameCount;
  v3 = __OFADD__(frameCount++, 1);
  v4 = (frameCount < 0) ^ v3;
  v5 = frameCount & 1;
  if (v4)
  {
    v5 = -v5;
  }

  return self->_pixelBufferMatting[v5];
}

- (void)postProcessUpdateFrame
{
  v3 = dataPtrFromE5Buffer();
  v4 = dataPtrFromE5Buffer();
  v5 = dataPtrFromE5Buffer();
  v6 = dataPtrFromE5Buffer();
  viSegHQDescriptor = self->_viSegHQDescriptor;
  v11 = 0;
  v8 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)viSegHQDescriptor postProcessUpdateFrameForInferenceOutputKeyBuffer:v5 inferenceOutputValueBuffer:v6 postProcessingOutputKeyBuffer:v3 postProcessingOutputValueBuffer:v4 error:&v11];
  v9 = v11;
  if (v9 || (v8 & 1) == 0)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 postProcessUpdateFrame];
    }
  }
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size
{
  v12 = *&a4.height;
  result = [PTEffectUtil closestAspectRatio:?];
  if (result == 2)
  {
    v6 = vdupq_lane_s64(vcgtq_f64(v12, a4).i64[0], 0);
    v7 = xmmword_2244A5BB0;
    v8 = xmmword_2244A5BC0;
    goto LABEL_5;
  }

  if (result == 1)
  {
    v6 = vdupq_lane_s64(vcgtq_f64(v12, a4).i64[0], 0);
    v7 = xmmword_2244A5BD0;
    v8 = xmmword_2244A5BE0;
LABEL_5:
    v9 = vbslq_s8(v6, v8, v7);
    goto LABEL_9;
  }

  v10 = _PTLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[PTEffectPersonSegmentationViSegHQVisionCoreE5 segmentationSizeForColorSize:];
  }

  v9 = xmmword_2244A5BB0;
LABEL_9:
  *&retstr->var0 = v9;
  retstr->var2 = 1;
  return result;
}

- (id)debugTextures
{
  v8[1] = *MEMORY[0x277D85DE8];
  frameCount = self->_frameCount;
  v3 = __OFADD__(frameCount++, 1);
  v4 = (frameCount < 0) ^ v3;
  v5 = frameCount & 1;
  if (v4)
  {
    v5 = -v5;
  }

  v8[0] = self->_textureMatting[v5];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (CGSize)colorSize
{
  width = self->_colorSize.width;
  height = self->_colorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithMetalContext:colorSize:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:.cold.2()
{
  MEMORY[0x22AA4F9C0]();
  e5rt_get_last_error_message();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:colorSize:.cold.26()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:.cold.27()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)reset
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)clearIOSurface:(__IOSurface *)a1 value:.cold.1(__IOSurface *a1)
{
  IOSurfaceGetPixelFormat(a1);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)clearIOSurface:value:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end