@interface VIE5Runner
+ (int)allocatePort:(e5rt_io_port *)a3 description:(id)a4 io:(id *)a5;
+ (int)getPort:(e5rt_io_port *)a3 description:(id *)a4;
+ (int)surfaceTypeE5rtType:(int)a3 toVIType:(unint64_t *)a4;
+ (int)tensorDTypeE5rtType:(int)a3 toVIType:(unint64_t *)a4;
+ (void)releasePorts:(id)a3 descriptions:(id)a4 boundedIOs:(id)a5 wasBound:(BOOL)a6;
- (VIE5Runner)initWithBundleURL:(id)a3 mainFunctionName:(id)a4;
- (__CVBuffer)getInputImageBuffer:(id)a3;
- (id)executeAndGet:(id)a3 error:(id *)a4;
- (int)compileNetworksOnDevice;
- (int)execute;
- (int)initNetworks;
- (int)loadPrecompiledNetwork;
- (void)dealloc;
- (void)releaseNetworks;
@end

@implementation VIE5Runner

- (VIE5Runner)initWithBundleURL:(id)a3 mainFunctionName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = VIE5Runner;
  v9 = [(VIE5Runner *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_bundleURL, a3);
    objc_storeStrong(&v10->_mainFunctionName, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF20]);
    outputPorts = v10->_outputPorts;
    v10->_outputPorts = v11;

    *&v10->_allocateInputs = 257;
    boundInputs = v10->_boundInputs;
    v10->_boundInputs = 0;

    boundOutputs = v10->_boundOutputs;
    v10->_boundOutputs = 0;

    if ([(VIE5Runner *)v10 initNetworks])
    {
      v15 = 0;
    }

    else
    {
      v15 = v10;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)dealloc
{
  [(VIE5Runner *)self releaseNetworks];
  v3.receiver = self;
  v3.super_class = VIE5Runner;
  [(VIE5Runner *)&v3 dealloc];
}

- (__CVBuffer)getInputImageBuffer:(id)a3
{
  v3 = [(NSDictionary *)self->_boundInputs objectForKeyedSubscript:a3];
  v4 = [v3 pointerValue];

  return v4;
}

+ (int)surfaceTypeE5rtType:(int)a3 toVIType:(unint64_t *)a4
{
  if (a3 > 5)
  {
    return 5;
  }

  result = 0;
  *a4 = a3;
  return result;
}

+ (int)tensorDTypeE5rtType:(int)a3 toVIType:(unint64_t *)a4
{
  if (a3 > 4)
  {
    return 5;
  }

  result = 0;
  *a4 = a3;
  return result;
}

+ (int)getPort:(e5rt_io_port *)a3 description:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = 0;
  is_surface = e5rt_io_port_is_surface();
  if (is_surface)
  {
    v6 = is_surface;
    last_error_message = e5rt_get_last_error_message();
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v8 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v42 = last_error_message;
LABEL_9:
        _os_log_impl(&dword_1D9962000, v8, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    return v6;
  }

  is_tensor = e5rt_io_port_is_tensor();
  if (!is_tensor)
  {
    if (v39 == HIBYTE(v39))
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v12 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9962000, v12, OS_LOG_TYPE_ERROR, "VI5ERunner: only surface/tensor ports are supported", buf, 2u);
        }
      }

      return 5;
    }

    v38 = 0;
    v13 = e5rt_io_port_retain_surface_desc();
    if (v13)
    {
      v6 = v13;
      v14 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        return v6;
      }

      v8 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136446210;
      v42 = v14;
      goto LABEL_9;
    }

    v37 = 0;
    v36 = 0;
    width = e5rt_surface_desc_get_width();
    if (width)
    {
      v6 = width;
      v16 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        return v6;
      }

      v8 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136446210;
      v42 = v16;
      goto LABEL_9;
    }

    height = e5rt_surface_desc_get_height();
    if (height)
    {
      v6 = height;
      v18 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        return v6;
      }

      v8 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136446210;
      v42 = v18;
      goto LABEL_9;
    }

    LODWORD(v33) = 0;
    format = e5rt_surface_desc_get_format();
    if (format)
    {
      v6 = format;
      v20 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        return v6;
      }

      v8 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136446210;
      v42 = v20;
      goto LABEL_9;
    }

    v35 = 0;
    plane_count = e5rt_surface_desc_get_plane_count();
    if (plane_count)
    {
      v6 = plane_count;
      v22 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        return v6;
      }

      v8 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136446210;
      v42 = v22;
      goto LABEL_9;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v36];
    v40[0] = v23;
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v37];
    v40[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];

    v34 = 0;
    v26 = [VIE5Runner surfaceTypeE5rtType:v33 toVIType:&v34];
    if (v26)
    {
      v6 = v26;
      v27 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
LABEL_48:

        return v6;
      }

      v28 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
LABEL_47:

        goto LABEL_48;
      }

      *buf = 136446210;
      v42 = v27;
    }

    else
    {
      v29 = v34;
      v30 = [VIE5RunnerPortDesc alloc];
      v31 = [v25 copy];
      *a4 = [(VIE5RunnerPortDesc *)v30 initWithShape:v31 type:0 dtype:v29 csize:v35 strides:MEMORY[0x1E695E0F0]];

      v6 = e5rt_surface_desc_release();
      if (!v6)
      {
        goto LABEL_48;
      }

      v32 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        goto LABEL_48;
      }

      v28 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 136446210;
      v42 = v32;
    }

    _os_log_impl(&dword_1D9962000, v28, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
    goto LABEL_47;
  }

  v6 = is_tensor;
  v10 = e5rt_get_last_error_message();
  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v8 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v42 = v10;
      goto LABEL_9;
    }

LABEL_10:
  }

  return v6;
}

+ (int)allocatePort:(e5rt_io_port *)a3 description:(id)a4 io:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([v6 type])
  {
    if ([v6 type] == 1)
    {
      if ([v6 dtype] != 4 && objc_msgSend(v6, "csize") == 4)
      {
        if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          v7 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v8 = "VI5ERunner: only float32 output tensors are supported at the moment, specify io_bind_info to add conversion ops";
LABEL_25:
            _os_log_impl(&dword_1D9962000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v21 = e5rt_io_port_retain_tensor_desc();
      if (v21)
      {
        v17 = v21;
        last_error_message = e5rt_get_last_error_message();
        if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          v19 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v37 = last_error_message;
            goto LABEL_56;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v23 = e5rt_tensor_desc_alloc_buffer_object();
        if (v23)
        {
          v17 = v23;
          v24 = e5rt_get_last_error_message();
          if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
          {
            goto LABEL_58;
          }

          v19 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v37 = v24;
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        v27 = e5rt_io_port_bind_buffer_object();
        if (v27)
        {
          v17 = v27;
          v28 = e5rt_get_last_error_message();
          if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
          {
            goto LABEL_58;
          }

          v19 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v37 = v28;
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        data_ptr = e5rt_buffer_object_get_data_ptr();
        if (data_ptr)
        {
          v17 = data_ptr;
          v31 = e5rt_get_last_error_message();
          if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
          {
            goto LABEL_58;
          }

          v19 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v37 = v31;
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        *a5 = [MEMORY[0x1E696B098] valueWithPointer:0];
        v32 = e5rt_tensor_desc_release();
        if (v32)
        {
          v17 = v32;
          v33 = e5rt_get_last_error_message();
          if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
          {
            goto LABEL_58;
          }

          v19 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v37 = v33;
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        v17 = e5rt_buffer_object_release();
        if (v17)
        {
          v34 = e5rt_get_last_error_message();
          if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
          {
            v19 = +[_TtC12VisualLookUp8VILogger log];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v37 = v34;
              goto LABEL_56;
            }

            goto LABEL_57;
          }
        }
      }
    }

    else
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v20 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D9962000, v20, OS_LOG_TYPE_ERROR, "unsupported port type", buf, 2u);
        }
      }

      v17 = 5;
    }
  }

  else
  {
    if ([v6 dtype] != 2)
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v7 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v8 = "VI5ERunner: only 32BGRA input format is supported at the moment";
          goto LABEL_25;
        }

LABEL_26:
      }

LABEL_27:
      v17 = 0;
      goto LABEL_58;
    }

    v9 = [v6 shape];
    v10 = [v9 objectAtIndexedSubscript:1];
    v11 = [v10 unsignedLongValue];

    v12 = [v6 shape];
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v13 unsignedLongValue];

    v15 = VICreateCVPixelBufferWithFormat(v11, v14, 0x42475241u);
    *a5 = [MEMORY[0x1E696B098] valueWithPointer:v15];
    CVPixelBufferGetIOSurface(v15);
    v16 = e5rt_surface_object_create_from_iosurface();
    if (v16)
    {
      v17 = v16;
      v18 = e5rt_get_last_error_message();
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v19 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v37 = v18;
LABEL_56:
          _os_log_impl(&dword_1D9962000, v19, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
        }

LABEL_57:
      }
    }

    else
    {
      v25 = e5rt_io_port_bind_surface_object();
      if (v25)
      {
        v17 = v25;
        v26 = e5rt_get_last_error_message();
        if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          goto LABEL_58;
        }

        v19 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v37 = v26;
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      v17 = e5rt_surface_object_release();
      if (v17)
      {
        v29 = e5rt_get_last_error_message();
        if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          v19 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v37 = v29;
            goto LABEL_56;
          }

          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:

  return v17;
}

- (int)initNetworks
{
  v121 = *MEMORY[0x1E69E9840];
  v3 = [(VIE5Runner *)self loadPrecompiledNetwork];
  if (!v3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v116 = 0;
    num_inputs = e5rt_execution_stream_operation_get_num_inputs();
    if (num_inputs)
    {
      v4 = num_inputs;
      last_error_message = e5rt_get_last_error_message();
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v11 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v120 = last_error_message;
          _os_log_impl(&dword_1D9962000, v11, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
        }
      }

      goto LABEL_39;
    }

    v98 = &v93;
    v12 = &v93 - ((8 * v116 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (8 * v116 >= 0x200)
    {
      v13 = 512;
    }

    else
    {
      v13 = 8 * v116;
    }

    bzero(&v93 - ((8 * v116 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    input_names = e5rt_execution_stream_operation_get_input_names();
    if (input_names)
    {
      v4 = input_names;
      v15 = e5rt_get_last_error_message();
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v16 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v120 = v15;
LABEL_17:
          _os_log_impl(&dword_1D9962000, v16, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
        }

LABEL_18:
      }

LABEL_39:

LABEL_40:
      return v4;
    }

    v100 = v6;
    v101 = v8;
    v99 = v7;
    if (v116)
    {
      v17 = 0;
      while (1)
      {
        v18 = *&v12[8 * v17];
        v115 = 0;
        v19 = e5rt_execution_stream_operation_retain_input_port();
        if (v19)
        {
          break;
        }

        v114 = 0;
        v4 = [VIE5Runner getPort:v115 description:&v114];
        v20 = v114;
        if (v4)
        {
          v40 = e5rt_get_last_error_message();
          v41 = +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage];
          v7 = v99;
          v6 = v100;
          if (v41)
          {
            v42 = +[_TtC12VisualLookUp8VILogger log];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v120 = v40;
              _os_log_impl(&dword_1D9962000, v42, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
            }
          }

          v8 = v101;
          goto LABEL_39;
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:1];
        [v100 setObject:v20 forKeyedSubscript:v21];

        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v18];
        [v101 addObject:v22];
        v23 = [MEMORY[0x1E696B098] valueWithPointer:v115];
        [v99 setObject:v23 forKey:v22];

        if (++v17 >= v116)
        {
          goto LABEL_25;
        }
      }

      v4 = v19;
      v38 = e5rt_get_last_error_message();
      v39 = +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage];
      v7 = v99;
      v6 = v100;
      v8 = v101;
      if (!v39)
      {
        goto LABEL_39;
      }

      v16 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v120 = v38;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_25:
    v6 = v100;
    v24 = [v100 copy];
    inputs = self->_inputs;
    self->_inputs = v24;

    v7 = v99;
    v26 = [v99 copy];
    inputPorts = self->_inputPorts;
    self->_inputPorts = v26;

    v8 = v101;
    v28 = [v101 copy];
    inputNames = self->_inputNames;
    self->_inputNames = v28;

    v97 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v96 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v115 = 0;
    num_outputs = e5rt_execution_stream_operation_get_num_outputs();
    if (num_outputs)
    {
      v4 = num_outputs;
      v31 = e5rt_get_last_error_message();
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v32 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v120 = v31;
LABEL_36:
          _os_log_impl(&dword_1D9962000, v32, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
          goto LABEL_37;
        }

        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v33 = &v93 - ((8 * v115 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (8 * v115 >= 0x200)
    {
      v34 = 512;
    }

    else
    {
      v34 = 8 * v115;
    }

    bzero(&v93 - ((8 * v115 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
    output_names = e5rt_execution_stream_operation_get_output_names();
    if (output_names)
    {
      v4 = output_names;
      v36 = e5rt_get_last_error_message();
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v32 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v120 = v36;
          goto LABEL_36;
        }

LABEL_37:
      }

LABEL_38:

      goto LABEL_39;
    }

    if (v115)
    {
      v43 = 0;
      while (1)
      {
        v44 = *&v33[8 * v43];
        v113 = 0;
        v45 = e5rt_execution_stream_operation_retain_output_port();
        if (v45)
        {
          break;
        }

        v112 = 0;
        v4 = [VIE5Runner getPort:v113 description:&v112];
        v46 = v112;
        if (v4)
        {
          v84 = e5rt_get_last_error_message();
          v85 = +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage];
          v7 = v99;
          v6 = v100;
          if (v85)
          {
            v86 = +[_TtC12VisualLookUp8VILogger log];
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v120 = v84;
              _os_log_impl(&dword_1D9962000, v86, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
            }
          }

          goto LABEL_96;
        }

        v47 = [MEMORY[0x1E696AEC0] stringWithCString:v44 encoding:1];
        [v97 setObject:v46 forKeyedSubscript:v47];

        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v44];
        [v95 addObject:v48];
        v49 = [MEMORY[0x1E696B098] valueWithPointer:v113];
        [v96 setObject:v49 forKey:v48];

        ++v43;
        v8 = v101;
        if (v43 >= v115)
        {
          goto LABEL_55;
        }
      }

      v4 = v45;
      v82 = e5rt_get_last_error_message();
      v83 = +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage];
      v7 = v99;
      v6 = v100;
      if (!v83)
      {
        goto LABEL_38;
      }

      v32 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v120 = v82;
        goto LABEL_36;
      }

      goto LABEL_37;
    }

LABEL_55:
    v50 = [v97 copy];
    outputs = self->_outputs;
    self->_outputs = v50;

    v52 = [v96 copy];
    outputPorts = self->_outputPorts;
    self->_outputPorts = v52;

    v54 = [v95 copy];
    outputNames = self->_outputNames;
    self->_outputNames = v54;

    if (self->_allocateInputs)
    {
      v94 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v93 = self->_inputPorts;
      v56 = [(NSDictionary *)v93 countByEnumeratingWithState:&v108 objects:v118 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v109;
LABEL_58:
        v59 = 0;
        while (1)
        {
          if (*v109 != v58)
          {
            objc_enumerationMutation(v93);
          }

          v60 = *(*(&v108 + 1) + 8 * v59);
          v61 = [(NSDictionary *)self->_inputPorts objectForKeyedSubscript:v60];
          v62 = [v61 pointerValue];
          v63 = [(NSDictionary *)self->_inputs objectForKeyedSubscript:v60];
          v107 = 0;
          v4 = [VIE5Runner allocatePort:v62 description:v63 io:&v107];
          v64 = v107;

          if (v4)
          {
            break;
          }

          [v94 setValue:v64 forKey:v60];

          if (v57 == ++v59)
          {
            v57 = [(NSDictionary *)v93 countByEnumeratingWithState:&v108 objects:v118 count:16];
            if (v57)
            {
              goto LABEL_58;
            }

            goto LABEL_64;
          }
        }

        v87 = e5rt_get_last_error_message();
        v88 = +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage];
        v7 = v99;
        v6 = v100;
        if (!v88)
        {
          goto LABEL_95;
        }

        v89 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v120 = v87;
LABEL_93:
          _os_log_impl(&dword_1D9962000, v89, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
        }

LABEL_94:

LABEL_95:
LABEL_96:
        v8 = v101;
        goto LABEL_38;
      }

LABEL_64:

      v65 = v94;
      v66 = [v94 copy];
      boundInputs = self->_boundInputs;
      self->_boundInputs = v66;

      v8 = v101;
    }

    if (self->_allocateOutputs)
    {
      v94 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v93 = self->_outputPorts;
      v68 = [(NSDictionary *)v93 countByEnumeratingWithState:&v103 objects:v117 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v104;
LABEL_68:
        v71 = 0;
        while (1)
        {
          if (*v104 != v70)
          {
            objc_enumerationMutation(v93);
          }

          v72 = *(*(&v103 + 1) + 8 * v71);
          v73 = [(NSDictionary *)self->_outputPorts objectForKeyedSubscript:v72];
          v74 = [v73 pointerValue];
          v75 = [(NSDictionary *)self->_outputs objectForKeyedSubscript:v72];
          v102 = 0;
          v4 = [VIE5Runner allocatePort:v74 description:v75 io:&v102];
          v64 = v102;

          if (v4)
          {
            break;
          }

          [v94 setValue:v64 forKey:v72];

          if (v69 == ++v71)
          {
            v69 = [(NSDictionary *)v93 countByEnumeratingWithState:&v103 objects:v117 count:16];
            if (v69)
            {
              goto LABEL_68;
            }

            goto LABEL_74;
          }
        }

        v90 = e5rt_get_last_error_message();
        v91 = +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage];
        v7 = v99;
        v6 = v100;
        if (!v91)
        {
          goto LABEL_95;
        }

        v89 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v120 = v90;
          goto LABEL_93;
        }

        goto LABEL_94;
      }

LABEL_74:

      v76 = v94;
      v77 = [v94 copy];
      boundOutputs = self->_boundOutputs;
      self->_boundOutputs = v77;

      v8 = v101;
    }

    v79 = e5rt_execution_stream_create();
    if (v79)
    {
      v4 = v79;
      v80 = e5rt_get_last_error_message();
      v81 = +[_TtC12VisualLookUp8VILogger shouldLogInternalMessage];
      v7 = v99;
      v6 = v100;
      if (!v81)
      {
        goto LABEL_38;
      }

      v32 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v120 = v80;
    }

    else
    {
      v4 = e5rt_execution_stream_encode_operation();
      v7 = v99;
      v6 = v100;
      if (!v4)
      {
        goto LABEL_38;
      }

      v92 = e5rt_get_last_error_message();
      if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        goto LABEL_38;
      }

      v32 = +[_TtC12VisualLookUp8VILogger log];
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v120 = v92;
    }

    goto LABEL_36;
  }

  v4 = v3;
  v5 = e5rt_get_last_error_message();
  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v6 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v120 = v5;
      _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
    }

    goto LABEL_40;
  }

  return v4;
}

- (int)loadPrecompiledNetwork
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSURL *)self->_bundleURL path];
  [v3 UTF8String];
  [(NSString *)self->_mainFunctionName UTF8String];
  precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

  if (precompiled_compute_operation)
  {
    last_error_message = e5rt_get_last_error_message();
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v6 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446210;
        v9 = last_error_message;
        _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", &v8, 0xCu);
      }
    }
  }

  return precompiled_compute_operation;
}

- (int)compileNetworksOnDevice
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = e5rt_e5_compiler_options_create();
  if (v3)
  {
    precompiled_compute_operation_with_options = v3;
    last_error_message = e5rt_get_last_error_message();
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v6 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v24 = last_error_message;
LABEL_13:
        _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", buf, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = e5rt_e5_compiler_options_set_compute_device_types_mask();
    if (v7)
    {
      precompiled_compute_operation_with_options = v7;
      v8 = e5rt_get_last_error_message();
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v6 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v24 = v8;
          goto LABEL_13;
        }

LABEL_14:
      }
    }

    else
    {
      v9 = e5rt_e5_compiler_create();
      if (!v9)
      {
        v12 = 0;
        for (i = 1; ; i = 0)
        {
          if (v12)
          {
            v14 = e5rt_e5_compiler_options_set_force_recompilation();
            if (v14)
            {
              break;
            }
          }

          v15 = [(NSURL *)self->_bundleURL path];
          [v15 UTF8String];
          precompiled_compute_operation_with_options = e5rt_e5_compiler_compile();

          if (precompiled_compute_operation_with_options)
          {
            v19 = e5rt_get_last_error_message();
            if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
            {
              return precompiled_compute_operation_with_options;
            }

            v6 = +[_TtC12VisualLookUp8VILogger log];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v24 = v19;
              goto LABEL_13;
            }

            goto LABEL_14;
          }

          [(NSString *)self->_mainFunctionName UTF8String];
          v16 = e5rt_program_library_retain_program_function();
          if (v16)
          {
            precompiled_compute_operation_with_options = v16;
            v20 = e5rt_get_last_error_message();
            if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
            {
              return precompiled_compute_operation_with_options;
            }

            v6 = +[_TtC12VisualLookUp8VILogger log];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v24 = v20;
              goto LABEL_13;
            }

            goto LABEL_14;
          }

          v17 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
          if (v17)
          {
            precompiled_compute_operation_with_options = v17;
            v21 = e5rt_get_last_error_message();
            if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
            {
              return precompiled_compute_operation_with_options;
            }

            v6 = +[_TtC12VisualLookUp8VILogger log];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v24 = v21;
              goto LABEL_13;
            }

            goto LABEL_14;
          }

          precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
          e5rt_precompiled_compute_op_create_options_release();
          e5rt_program_function_release();
          e5rt_program_library_release();
          v18 = i & (precompiled_compute_operation_with_options == 13);
          v12 = 1;
          if ((v18 & 1) == 0)
          {
            e5rt_e5_compiler_release();
            e5rt_e5_compiler_options_release();
            return precompiled_compute_operation_with_options;
          }
        }

        precompiled_compute_operation_with_options = v14;
        v22 = e5rt_get_last_error_message();
        if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          return precompiled_compute_operation_with_options;
        }

        v6 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v24 = v22;
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      precompiled_compute_operation_with_options = v9;
      v10 = e5rt_get_last_error_message();
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v6 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v24 = v10;
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }
  }

  return precompiled_compute_operation_with_options;
}

+ (void)releasePorts:(id)a3 descriptions:(id)a4 boundedIOs:(id)a5 wasBound:(BOOL)a6
{
  v6 = a6;
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = [v9 objectForKey:*(*(&v32 + 1) + 8 * i)];
        v17 = v16;
        if (v16)
        {
          v31 = [v16 pointerValue];
          e5rt_io_port_release();
        }
      }

      v13 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  if (v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * j);
          v24 = [v18 objectForKey:{v23, v27}];
          if (v24)
          {
            v25 = [v10 objectForKeyedSubscript:v23];
            v26 = [v25 type];

            if (!v26)
            {
              CVPixelBufferRelease([v24 pointerValue]);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v20);
    }
  }
}

- (void)releaseNetworks
{
  os_unfair_lock_lock(&self->_lock);
  e5rt_execution_stream_operation_release();
  e5rt_execution_stream_release();
  [VIE5Runner releasePorts:self->_inputPorts descriptions:self->_inputs boundedIOs:self->_boundInputs wasBound:self->_allocateInputs];
  [VIE5Runner releasePorts:self->_outputPorts descriptions:self->_outputs boundedIOs:self->_boundOutputs wasBound:self->_allocateOutputs];

  os_unfair_lock_unlock(&self->_lock);
}

- (int)execute
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = e5rt_execution_stream_execute_sync();
  if (v2)
  {
    last_error_message = e5rt_get_last_error_message();
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v4 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136446210;
        v7 = last_error_message;
        _os_log_impl(&dword_1D9962000, v4, OS_LOG_TYPE_ERROR, "!!! E5RT operation failed with message = %{public}s", &v6, 0xCu);
      }
    }
  }

  return v2;
}

- (id)executeAndGet:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    if ([(VIE5Runner *)self execute])
    {
      if (a4)
      {
        v8 = objc_alloc(MEMORY[0x1E696ABC0]);
        *a4 = [v8 initWithDomain:@"com.apple.argos.e5rt" code:0 userInfo:MEMORY[0x1E695E0F8]];
      }

      os_unfair_lock_unlock(&self->_lock);
      v9 = v7;
      goto LABEL_16;
    }

    v27 = a4;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v6;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = [(NSDictionary *)self->_boundOutputs objectForKeyedSubscript:v14];
          v16 = [v15 pointerValue];

          v17 = objc_alloc(MEMORY[0x1E695FED0]);
          v18 = [(NSDictionary *)self->_outputs objectForKeyedSubscript:v14];
          v19 = [v18 shape];
          v20 = [v17 initWithShape:v19 dataType:65568 error:v27];

          if (!v20)
          {
            if (v27)
            {
              v23 = [*v27 localizedDescription];
            }

            else
            {
              v23 = @"unknown";
            }

            v6 = v25;
            if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
            {
              v24 = +[_TtC12VisualLookUp8VILogger log];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v33 = v23;
                _os_log_impl(&dword_1D9962000, v24, OS_LOG_TYPE_ERROR, "VIE5Runner: unable to allocate output array: %{public}@", buf, 0xCu);
              }
            }

            os_unfair_lock_unlock(&self->_lock);
            v21 = v7;

            goto LABEL_17;
          }

          memcpy([v20 dataPointer], v16, 4 * objc_msgSend(v20, "count"));
          [v7 setValue:v20 forKey:v14];
        }

        v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    v6 = v25;
  }

  v9 = [v7 copy];
LABEL_16:
  v21 = v9;
LABEL_17:

  return v21;
}

@end