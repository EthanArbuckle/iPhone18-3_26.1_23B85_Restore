@interface PMLMultiLabelEspressoClassifier
+ (id)classifierWithEspressoModelFile:(id)a3;
+ (id)makeStringForShape:(unint64_t)a3[10];
+ (unint64_t)getNumParametersFromShape:(unint64_t)a3[10] rank:(unint64_t)a4;
- (PMLMultiLabelEspressoClassifier)initWithEspressoContext:(void *)a3 espressoPlan:(void *)a4 espressoModel:(id)a5 inputNumParameters:(unint64_t)a6 outputNumReplyClasses:(unint64_t)a7;
- (id)predict:(id)a3;
- (void)dealloc;
@end

@implementation PMLMultiLabelEspressoClassifier

- (id)predict:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  [@"inputSequence" cStringUsingEncoding:4];
  plan = self->_espressoModel.plan;
  v8 = *&self->_espressoModel.network_index;
  v9 = espresso_network_bind_buffer();
  if (v9)
  {
    v10 = v9;
    v11 = PML_LogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v33[0]) = 138412546;
      *(v33 + 4) = @"inputSequence";
      WORD6(v33[0]) = 1024;
      *(v33 + 14) = v10;
      v12 = "Could not bind the input buffer to layer %@ in espresso plan, status code %d";
      v13 = v33;
LABEL_7:
      v18 = v11;
      v19 = 18;
LABEL_8:
      _os_log_fault_impl(&dword_260D68000, v18, OS_LOG_TYPE_FAULT, v12, v13, v19);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  [v4 sparseVectorToDense:0 length:self->_inputNumParameters];
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  [@"outputLabels" cStringUsingEncoding:4];
  v14 = self->_espressoModel.plan;
  v15 = *&self->_espressoModel.network_index;
  v16 = espresso_network_bind_buffer();
  if (v16)
  {
    v17 = v16;
    v11 = PML_LogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v30 = @"outputLabels";
      v31 = 1024;
      v32 = v17;
      v12 = "Could not bind the output buffer to layer %@ in espresso plan, status code %d";
      v13 = buf;
      goto LABEL_7;
    }

LABEL_11:

    objc_autoreleasePoolPop(v6);
    v24 = 0;
    goto LABEL_12;
  }

  espressoPlan = self->_espressoPlan;
  v21 = espresso_plan_execute_sync();
  if (v21)
  {
    v23 = v21;
    v11 = PML_LogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    LODWORD(v30) = v23;
    v12 = "Could not execute espresso plan, status code %d";
    v13 = buf;
    v18 = v11;
    v19 = 8;
    goto LABEL_8;
  }

  if (self->_outputNumReplyClasses)
  {
    v27 = 0;
    do
    {
      LODWORD(v22) = *(*&v33[0] + 4 * v27);
      v28 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
      [v5 addObject:v28];

      ++v27;
    }

    while (self->_outputNumReplyClasses > v27);
  }

  objc_autoreleasePoolPop(v6);
  v24 = v5;
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (PMLMultiLabelEspressoClassifier)initWithEspressoContext:(void *)a3 espressoPlan:(void *)a4 espressoModel:(id)a5 inputNumParameters:(unint64_t)a6 outputNumReplyClasses:(unint64_t)a7
{
  v9 = *&a5.var1;
  var0 = a5.var0;
  v14.receiver = self;
  v14.super_class = PMLMultiLabelEspressoClassifier;
  result = [(PMLMultiLabelEspressoClassifier *)&v14 init];
  if (result)
  {
    result->_espressoPlan = a4;
    result->_espressoContext = a3;
    result->_espressoModel.plan = var0;
    *&result->_espressoModel.network_index = v9;
    result->_outputNumReplyClasses = a7;
    result->_inputNumParameters = a6;
  }

  return result;
}

- (void)dealloc
{
  espressoPlan = self->_espressoPlan;
  espresso_plan_destroy();
  espressoContext = self->_espressoContext;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = PMLMultiLabelEspressoClassifier;
  [(PMLMultiLabelEspressoClassifier *)&v5 dealloc];
}

+ (id)classifierWithEspressoModelFile:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = espresso_create_context();
  if (!context)
  {
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Could not create espresso context";
LABEL_24:
    v12 = v10;
    v13 = 2;
    goto LABEL_25;
  }

  v5 = context;
  plan = espresso_create_plan();
  if (!plan)
  {
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Could not create espresso plan";
    goto LABEL_24;
  }

  v7 = plan;
  [v3 UTF8String];
  v8 = espresso_plan_add_network();
  if (v8)
  {
    v9 = v8;
    v10 = PML_LogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      *&buf[4] = v3;
      *&buf[12] = 1024;
      *&buf[14] = 65568;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      v11 = "Could not add espresso network from file %@ with storage type %05x, status code %d";
      v12 = v10;
      v13 = 24;
LABEL_25:
      _os_log_fault_impl(&dword_260D68000, v12, OS_LOG_TYPE_FAULT, v11, buf, v13);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [@"inputSequence" cStringUsingEncoding:4];
  v17 = espresso_network_declare_input();
  if (v17)
  {
    v18 = v17;
    v19 = PML_LogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = @"inputSequence";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      v20 = "Could not declare espresso network input %@, status code %d";
LABEL_35:
      _os_log_fault_impl(&dword_260D68000, v19, OS_LOG_TYPE_FAULT, v20, buf, 0x12u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  [@"outputLabels" cStringUsingEncoding:4];
  v21 = espresso_network_declare_output();
  if (v21)
  {
    v22 = v21;
    v19 = PML_LogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = @"outputLabels";
      *&buf[12] = 1024;
      *&buf[14] = v22;
      v20 = "Could not declare espresso network output %@, status code %d";
      goto LABEL_35;
    }

LABEL_19:

    goto LABEL_10;
  }

  v23 = espresso_plan_build();
  if (v23)
  {
    v24 = v23;
    v10 = PML_LogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      v11 = "Could not build espresso plan, status code %d";
      v12 = v10;
      v13 = 8;
      goto LABEL_25;
    }

LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v25 = objc_autoreleasePoolPush();
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  memset(buf, 0, sizeof(buf));
  [@"inputSequence" cStringUsingEncoding:4];
  v26 = espresso_network_bind_buffer();
  if (v26)
  {
    v27 = v26;
    v28 = PML_LogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *v53 = 138412546;
      *&v53[4] = @"inputSequence";
      *&v53[12] = 1024;
      *&v53[14] = v27;
      v29 = "Could not bind the input buffer to layer %@ in espresso plan during initialization, status code %d";
LABEL_32:
      v32 = v53;
LABEL_33:
      _os_log_fault_impl(&dword_260D68000, v28, OS_LOG_TYPE_FAULT, v29, v32, 0x12u);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  memset(v63, 0, sizeof(v63));
  v30 = espresso_buffer_unpack_tensor_shape();
  if (v30)
  {
    v31 = v30;
    v28 = PML_LogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *v53 = 138412546;
      *&v53[4] = @"inputSequence";
      *&v53[12] = 1024;
      *&v53[14] = v31;
      v29 = "Unable to get input shape to layer %@ in espresso plan during initialization, status code %d";
      goto LABEL_32;
    }

LABEL_43:

    objc_autoreleasePoolPop(v25);
    goto LABEL_10;
  }

  v33 = 0x279ABF000uLL;
  v34 = [PMLMultiLabelEspressoClassifier getNumParametersFromShape:v63 rank:0];
  v35 = PML_LogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v42 = [PMLMultiLabelEspressoClassifier makeStringForShape:v63];
    *v53 = 138413058;
    *&v53[4] = @"inputSequence";
    *&v53[12] = 2048;
    *&v53[14] = 0;
    *&v53[22] = 2112;
    *&v53[24] = v42;
    LOWORD(v54) = 2048;
    *(&v54 + 2) = v34;
    _os_log_debug_impl(&dword_260D68000, v35, OS_LOG_TYPE_DEBUG, "Input layer %@ has rank %zu, shape %@, num parameters %tu", v53, 0x2Au);
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v53, 0, sizeof(v53));
  [@"outputLabels" cStringUsingEncoding:4];
  v36 = espresso_network_bind_buffer();
  if (v36)
  {
    v37 = v36;
    v28 = PML_LogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_43;
    }

    LODWORD(v52[0]) = 138412546;
    *(v52 + 4) = @"outputLabels";
    WORD6(v52[0]) = 1024;
    *(v52 + 14) = v37;
    v29 = "Could not bind the output buffer to layer %@ in espresso plan during initialization, status code %d";
    v32 = v52;
    goto LABEL_33;
  }

  memset(v52, 0, sizeof(v52));
  v38 = espresso_buffer_unpack_tensor_shape();
  if (v38)
  {
    v39 = v38;
    v28 = PML_LogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_43;
    }

    *v44 = 138412546;
    v45 = @"outputLabels";
    v46 = 1024;
    LODWORD(v47) = v39;
    v29 = "Unable to get output shape to layer %@ in espresso plan during initialization, status code %d";
    v32 = v44;
    goto LABEL_33;
  }

  v40 = [PMLMultiLabelEspressoClassifier getNumParametersFromShape:v52 rank:0];
  v41 = PML_LogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    v43 = [PMLMultiLabelEspressoClassifier makeStringForShape:v52];
    *v44 = 138413058;
    v45 = @"outputLabels";
    v46 = 2048;
    v47 = 0;
    v48 = 2112;
    v49 = v43;
    v50 = 2048;
    v51 = v40;
    _os_log_debug_impl(&dword_260D68000, v41, OS_LOG_TYPE_DEBUG, "Output layer %@ has rank %zu, shape %@, num parameters %tu", v44, 0x2Au);

    v33 = 0x279ABF000;
  }

  objc_autoreleasePoolPop(v25);
  v14 = [objc_alloc(*(v33 + 1880)) initWithEspressoContext:v5 espressoPlan:v7 espressoModel:0 inputNumParameters:0 outputNumReplyClasses:{v34, v40}];
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (unint64_t)getNumParametersFromShape:(unint64_t)a3[10] rank:(unint64_t)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = 10;
  if (a4 < 0xA)
  {
    v4 = a4;
  }

  result = 1;
  do
  {
    v6 = *a3++;
    result *= v6;
    --v4;
  }

  while (v4);
  return result;
}

+ (id)makeStringForShape:(unint64_t)a3[10]
{
  v4 = objc_opt_new();
  [v4 appendString:@"{"];
  for (i = 0; i != 10; ++i)
  {
    [v4 appendFormat:@" %zu", a3[i]];
  }

  [v4 appendString:@" }"];

  return v4;
}

@end