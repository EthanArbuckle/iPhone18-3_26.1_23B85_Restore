@interface RTVisitModelControllerBatchMode
- (RTVisitModelControllerBatchMode)initWithHyperParameter:(id)parameter;
- (const)batchProcess:(const float *)process featureVectorStride:(unint64_t)stride firstSequenceIndex:(unint64_t)index firstSequenceLength:(unint64_t)length batchSize:(unint64_t)size;
- (const)predictFromInput:(const float *)input featureVectorStride:(unint64_t)stride firstSequenceIndex:(unint64_t)index firstSequenceLength:(unint64_t)length batchSize:(unint64_t)size;
- (void)dealloc;
@end

@implementation RTVisitModelControllerBatchMode

- (RTVisitModelControllerBatchMode)initWithHyperParameter:(id)parameter
{
  v25 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  if (!parameterCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hyperParameter", buf, 2u);
    }

    goto LABEL_45;
  }

  v22.receiver = self;
  v22.super_class = RTVisitModelControllerBatchMode;
  v6 = [(RTVisitModelControllerBatchMode *)&v22 init];
  self = v6;
  if (!v6)
  {
    goto LABEL_51;
  }

  objc_storeStrong(&v6->_hyperParameter, parameter);
  context = espresso_create_context();
  self->_espressoContext = context;
  if (context || (v8 = espresso_create_context(), (self->_espressoContext = v8) != 0) || (v9 = espresso_create_context(), (self->_espressoContext = v9) != 0))
  {
    frameworkBundle = [MEMORY[0x277CCAA00] frameworkBundle];
    v11 = [frameworkBundle pathForResource:@"RTVisitTrajectorySequenceClassifierBatchMode" ofType:@"mlmodelc"];

    if (v11)
    {
      v12 = [v11 stringByAppendingPathComponent:@"model.batched.espresso.net"];
      if (!v12)
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: espressoNetFile", buf, 2u);
        }

        goto LABEL_44;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = @"RTVisitTrajectorySequenceClassifierBatchMode";
          *&buf[12] = 2112;
          *&buf[14] = v12;
          _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "loading model, %@ from espresso net, %@", buf, 0x16u);
        }
      }

      *buf = 0;
      *&buf[8] = 0;
      plan = espresso_create_plan();
      self->_espressoPlan = plan;
      if (!plan)
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _espressoPlan", v23, 2u);
        }

        goto LABEL_43;
      }

      v15 = v12;
      [v12 UTF8String];
      if (espresso_plan_add_network())
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !error", v23, 2u);
        }

LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      if (espresso_plan_build())
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !error", v23, 2u);
        }

        goto LABEL_43;
      }

      if (espresso_network_bind_buffer())
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !error", v23, 2u);
        }

        goto LABEL_43;
      }

      if (espresso_network_bind_buffer())
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !error", v23, 2u);
        }

        goto LABEL_43;
      }

      if ([parameterCopy onDeviceInferenceBatchSize] > self->_inputBuffer.batch_number)
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hyperParameter.onDeviceInferenceBatchSize <= _inputBuffer.batch_number", v23, 2u);
        }

        goto LABEL_45;
      }

LABEL_51:
      self = self;
      selfCopy = self;
      goto LABEL_52;
    }

    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: modelPath", buf, 2u);
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _espressoContext", buf, 2u);
    }
  }

LABEL_45:
  selfCopy = 0;
LABEL_52:

  return selfCopy;
}

- (void)dealloc
{
  if (self->_espressoPlan && espresso_plan_destroy())
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "fail to destroy espresso plan", buf, 2u);
    }
  }

  if (self->_espressoContext && espresso_context_destroy())
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "fail to destroy espresso context", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = RTVisitModelControllerBatchMode;
  [(RTVisitModelControllerBatchMode *)&v5 dealloc];
}

- (const)batchProcess:(const float *)process featureVectorStride:(unint64_t)stride firstSequenceIndex:(unint64_t)index firstSequenceLength:(unint64_t)length batchSize:(unint64_t)size
{
  if (self->_inputBuffer.batch_number < size)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      return 0;
    }

    v30 = 0;
    v8 = "Invalid parameter not satisfying: batchSize <= _inputBuffer.batch_number";
    v9 = &v30;
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_15;
  }

  memset(self->_inputBuffer.data, [(RTVisitHyperParameter *)self->_hyperParameter featurePaddingValue], 4 * self->_inputBuffer.stride_sequence_length);
  data = self->_inputBuffer.data;
  if (size)
  {
    v17 = 0;
    v18 = 4 * stride;
    __src = &process[index];
    while (1)
    {
      v19 = length + [(RTVisitHyperParameter *)self->_hyperParameter visitInferenceResolution]* v17;
      width = self->_inputBuffer.width;
      v21 = width - v19;
      if (width < v19)
      {
        break;
      }

      stride_batch_number = self->_inputBuffer.stride_batch_number;
      if ([(RTVisitHyperParameter *)self->_hyperParameter featureDimension])
      {
        v23 = 0;
        v24 = v21 + stride_batch_number * v17;
        v25 = 4 * v19;
        v26 = __src;
        do
        {
          memcpy(&data[v24], v26, v25);
          v24 += self->_inputBuffer.stride_channels;
          ++v23;
          v26 = (v26 + v18);
        }

        while (v23 < [(RTVisitHyperParameter *)self->_hyperParameter featureDimension]);
      }

      if (++v17 == size)
      {
        return data;
      }
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v8 = "Invalid parameter not satisfying: batchSequenceLength <= _inputBuffer.width";
    v9 = buf;
    goto LABEL_14;
  }

  return data;
}

- (const)predictFromInput:(const float *)input featureVectorStride:(unint64_t)stride firstSequenceIndex:(unint64_t)index firstSequenceLength:(unint64_t)length batchSize:(unint64_t)size
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(RTVisitModelControllerBatchMode *)self batchProcess:input featureVectorStride:stride firstSequenceIndex:index firstSequenceLength:length batchSize:size])
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      v11 = "Invalid parameter not satisfying: inputPtr";
      v12 = v10;
      v13 = 2;
      goto LABEL_10;
    }

LABEL_6:

    return 0;
  }

  v8 = espresso_plan_execute_sync();
  if (v8)
  {
    v9 = v8;
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = v9;
      v11 = "fail to predict with error, %d";
      v12 = v10;
      v13 = 8;
LABEL_10:
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v11, v15, v13);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  return self->_outputBuffer.data;
}

@end