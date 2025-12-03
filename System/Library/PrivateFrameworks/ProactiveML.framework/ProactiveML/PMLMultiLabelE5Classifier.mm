@interface PMLMultiLabelE5Classifier
+ (id)classifierWithE5File:(id)file;
- (BOOL)initializeNetworkWithE5File:(id)file;
- (PMLMultiLabelE5Classifier)initWithE5File:(id)file;
- (id)predict:(id)predict;
- (void)dealloc;
@end

@implementation PMLMultiLabelE5Classifier

- (id)predict:(id)predict
{
  v19 = *MEMORY[0x277D85DE8];
  [predict sparseVectorToDense:self->_input_ids length:self->_inputNumParameters];
  execution_stream = self->_execution_stream;
  v5 = e5rt_execution_stream_execute_sync();
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:e5rt_get_last_error_message()];
    v8 = PML_LogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_fault_impl(&dword_260D68000, v8, OS_LOG_TYPE_FAULT, "Unable to execute E5 stream w/ error code %@: %@", &v15, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_outputNumParameters];
    if (self->_outputNumParameters)
    {
      v11 = 0;
      do
      {
        *&v10 = self->_output_scores[v11];
        v12 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        [v9 setObject:v12 atIndexedSubscript:v11];

        ++v11;
      }

      while (v11 < self->_outputNumParameters);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)initializeNetworkWithE5File:(id)file
{
  v69 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = PML_LogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v67 = 138412290;
    v68 = fileCopy;
    _os_log_impl(&dword_260D68000, v5, OS_LOG_TYPE_DEFAULT, "Initializing E5 model using %@", &v67, 0xCu);
  }

  [(__CFString *)fileCopy UTF8String];
  if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
  {
    last_error_message = e5rt_get_last_error_message();
    v7 = PML_LogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v7, OS_LOG_TYPE_ERROR, "Failed to create execution stream operation", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = last_error_message;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  main_esop = self->_main_esop;
  [@"inputSequence" UTF8String];
  if (e5rt_execution_stream_operation_retain_input_port())
  {
    v11 = e5rt_get_last_error_message();
    v12 = PML_LogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v67 = 138412290;
      v68 = @"inputSequence";
      _os_log_error_impl(&dword_260D68000, v12, OS_LOG_TYPE_ERROR, "Failed to retain handle to input port %@", &v67, 0xCu);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v11;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  input_port = self->_input_port;
  if (e5rt_io_port_retain_tensor_desc())
  {
    v14 = e5rt_get_last_error_message();
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v15, OS_LOG_TYPE_ERROR, "Unable to retain E5 input tensor descriptor", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v14;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  input_tensor = self->_input_tensor;
  if (e5rt_tensor_desc_retain_dtype())
  {
    v17 = e5rt_get_last_error_message();
    v18 = PML_LogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v18, OS_LOG_TYPE_ERROR, "Unable to retain E5 input tensor dtype", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v17;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  uTF8String = [@"inputSequence" UTF8String];
  v25 = self->_input_tensor;
  input_tensor_dtype = self->_input_tensor_dtype;
  v27 = DescribeTensorDescriptor(uTF8String);
  if (v27 == -1)
  {
    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v67) = 0;
    v9 = "Something went wrong while trying to introspect the E5 input tensor";
    goto LABEL_35;
  }

  self->_inputNumParameters = v27;
  v28 = self->_input_tensor;
  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v29 = e5rt_get_last_error_message();
    v30 = PML_LogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v30, OS_LOG_TYPE_ERROR, "Unable to allocate E5 input buffer object", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v29;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  v31 = self->_input_port;
  input_buffer = self->_input_buffer;
  if (e5rt_io_port_bind_buffer_object())
  {
    v33 = e5rt_get_last_error_message();
    v34 = PML_LogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v34, OS_LOG_TYPE_ERROR, "Unable to bind E5 input buffer to input port", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v33;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  v35 = self->_main_esop;
  [@"outputLabels" UTF8String];
  if (e5rt_execution_stream_operation_retain_output_port())
  {
    v36 = e5rt_get_last_error_message();
    v37 = PML_LogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v37, OS_LOG_TYPE_ERROR, "Unable to retain E5 output port", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v36;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  output_port = self->_output_port;
  if (e5rt_io_port_retain_tensor_desc())
  {
    v39 = e5rt_get_last_error_message();
    v40 = PML_LogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v40, OS_LOG_TYPE_ERROR, "Unable to retain E5 output tensor descriptor", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v39;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  output_tensor = self->_output_tensor;
  if (e5rt_tensor_desc_retain_dtype())
  {
    v42 = e5rt_get_last_error_message();
    v43 = PML_LogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v43, OS_LOG_TYPE_ERROR, "Unable to retain E5 output tensor dtype", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v42;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  uTF8String2 = [@"outputLabels" UTF8String];
  v45 = self->_output_tensor;
  output_tensor_dtype = self->_output_tensor_dtype;
  v47 = DescribeTensorDescriptor(uTF8String2);
  if (v47 == -1)
  {
    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v67) = 0;
    v9 = "Something went wrong while trying to introspect the E5 output tensor";
LABEL_35:
    v19 = v8;
    v20 = 2;
    goto LABEL_24;
  }

  self->_outputNumParameters = v47;
  v48 = self->_output_tensor;
  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v49 = e5rt_get_last_error_message();
    v50 = PML_LogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v50, OS_LOG_TYPE_ERROR, "Unable to allocate E5 output buffer object", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v49;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  v51 = self->_output_port;
  output_buffer = self->_output_buffer;
  if (e5rt_io_port_bind_buffer_object())
  {
    v53 = e5rt_get_last_error_message();
    v54 = PML_LogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v54, OS_LOG_TYPE_ERROR, "Unable to bind E5 output buffer to output port", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v53;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_execution_stream_create())
  {
    v55 = e5rt_get_last_error_message();
    v56 = PML_LogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v56, OS_LOG_TYPE_ERROR, "Unable to create E5 execution handle", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v55;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  execution_stream = self->_execution_stream;
  v58 = self->_main_esop;
  if (e5rt_execution_stream_encode_operation())
  {
    v59 = e5rt_get_last_error_message();
    v60 = PML_LogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v60, OS_LOG_TYPE_ERROR, "Unable to encode E5 execution stream", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v59;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  v61 = self->_input_buffer;
  if (e5rt_buffer_object_get_data_ptr())
  {
    v62 = e5rt_get_last_error_message();
    v63 = PML_LogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v67) = 0;
      _os_log_error_impl(&dword_260D68000, v63, OS_LOG_TYPE_ERROR, "Unable to get data pointer to input buffer", &v67, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v67 = 136315138;
    v68 = v62;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  v64 = self->_output_buffer;
  if (!e5rt_buffer_object_get_data_ptr())
  {
    v21 = 1;
    goto LABEL_26;
  }

  v65 = e5rt_get_last_error_message();
  v66 = PML_LogHandle();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v67) = 0;
    _os_log_error_impl(&dword_260D68000, v66, OS_LOG_TYPE_ERROR, "Unable to get data pointer to output buffer", &v67, 2u);
  }

  v8 = PML_LogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v67 = 136315138;
    v68 = v65;
    v9 = "E5RT operation failed with message: %s";
LABEL_23:
    v19 = v8;
    v20 = 12;
LABEL_24:
    _os_log_fault_impl(&dword_260D68000, v19, OS_LOG_TYPE_FAULT, v9, &v67, v20);
  }

LABEL_25:

  v21 = 0;
LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (PMLMultiLabelE5Classifier)initWithE5File:(id)file
{
  v8.receiver = self;
  v8.super_class = PMLMultiLabelE5Classifier;
  fileCopy = file;
  v4 = [(PMLMultiLabelE5Classifier *)&v8 init];
  v5 = [(PMLMultiLabelE5Classifier *)v4 initializeNetworkWithE5File:fileCopy, v8.receiver, v8.super_class];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_main_esop)
  {
    e5rt_execution_stream_operation_release();
  }

  if (self->_input_port)
  {
    e5rt_io_port_release();
  }

  if (self->_input_tensor)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_input_tensor_dtype)
  {
    e5rt_tensor_desc_dtype_release();
  }

  if (self->_input_buffer)
  {
    e5rt_buffer_object_release();
  }

  if (self->_output_port)
  {
    e5rt_io_port_release();
  }

  if (self->_output_tensor)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_output_tensor_dtype)
  {
    e5rt_tensor_desc_dtype_release();
  }

  if (self->_output_buffer)
  {
    e5rt_buffer_object_release();
  }

  if (self->_execution_stream)
  {
    e5rt_execution_stream_release();
  }

  v3.receiver = self;
  v3.super_class = PMLMultiLabelE5Classifier;
  [(PMLMultiLabelE5Classifier *)&v3 dealloc];
}

+ (id)classifierWithE5File:(id)file
{
  fileCopy = file;
  v4 = [[PMLMultiLabelE5Classifier alloc] initWithE5File:fileCopy];

  return v4;
}

@end