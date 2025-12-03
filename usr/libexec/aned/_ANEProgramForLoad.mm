@interface _ANEProgramForLoad
+ (void)dumpProgramInstance:(ANEProgramInstanceStruct *)instance;
- (BOOL)createProgramInstanceForModel:(id)model modelToken:(id)token modelFilePath:(id)path qos:(unsigned int)qos isPreCompiled:(BOOL)compiled enablePowerSaving:(BOOL)saving skipPreparePhase:(BOOL)phase statsMask:(unsigned int)self0 memoryPoolID:(unint64_t)self1 enableLateLatch:(BOOL)self2 modelIdentityStr:(id)self3 owningPid:(int)self4 cacheUrlIdentifier:(id)self5 aotCacheUrlIdentifier:(id)self6 optOutOfModelMemoryUnwiring:(BOOL)self7 error:(id *)self8;
- (BOOL)createProgramInstanceWithWeights:(id)weights modelToken:(id)token qos:(unsigned int)qos baseModelIdentifier:(id)identifier owningPid:(int)pid numWeightFiles:(unsigned int *)files error:(id *)error;
- (BOOL)destroyProgramInstance;
- (BOOL)removeCachedReference;
- (_ANEProgramForLoad)init;
- (id)createSymbolMapping;
- (id)createSymbolMappingForProgram:(ANEProgramInstanceStruct *)program;
- (id)description;
- (void)addCachedReference;
- (void)dealloc;
@end

@implementation _ANEProgramForLoad

- (BOOL)removeCachedReference
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  q = self->_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001240;
  v5[3] = &unk_100030740;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(q, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_ANEProgramForLoad)init
{
  v9.receiver = self;
  v9.super_class = _ANEProgramForLoad;
  v2 = [(_ANEProgramForLoad *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ane.program", v3);
    q = v2->_q;
    v2->_q = v4;

    *&v2->_queueDepth = 127;
    v2->_wiredMemory = 0;
    v6 = +[_ANEDeviceController sharedPrivilegedConnection];
    controller = v2->_controller;
    v2->_controller = v6;

    [(_ANEDeviceController *)v2->_controller start];
  }

  return v2;
}

- (void)addCachedReference
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001384;
  block[3] = &unk_100030768;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)dealloc
{
  p_programInstance = &self->_programInstance;
  if (self->_programInstance)
  {
    v5 = +[_ANELog daemon];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(a2);
      programInstance = self->_programInstance;
      refcount = self->_refcount;
      *buf = 138412802;
      v24 = v15;
      v25 = 2048;
      v26 = programInstance;
      v27 = 2048;
      v28 = refcount;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: Stopping the program=%p : refcount=%lld", buf, 0x20u);
    }

    v6 = *p_programInstance;
    if (*p_programInstance && v6->var0)
    {
      v7 = (*(v6->var0 + 2))();
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = 2;
    }

    [_ANEDataReporter reportErrorMsg:0 status:v7];
    v8 = +[_ANELog daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = *p_programInstance;
      *buf = 138412802;
      v24 = v18;
      v25 = 2048;
      v26 = v19;
      v27 = 1024;
      LODWORD(v28) = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: Could not stop the program=%p : ret=0x%x", buf, 0x1Cu);
    }

LABEL_12:
    v9 = +[_ANELog daemon];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001D250();
    }

    v10 = *p_programInstance;
    if (*p_programInstance && v10->var0)
    {
      v11 = (*(v10->var0 + 3))();
      if (!v11)
      {
LABEL_22:
        txn = self->_txn;
        self->_programInstance = 0;
        self->_txn = 0;
        self->_refcount = 0;

        goto LABEL_23;
      }
    }

    else
    {
      v11 = 2;
    }

    [_ANEDataReporter reportErrorMsg:0 status:v11];
    v12 = +[_ANELog daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = *p_programInstance;
      *buf = 138412802;
      v24 = v20;
      v25 = 2048;
      v26 = v21;
      v27 = 1024;
      LODWORD(v28) = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: Could not destroy the program=%p : ret=0x%x", buf, 0x1Cu);
    }

    goto LABEL_22;
  }

LABEL_23:
  [(_ANEDeviceController *)self->_controller stop];
  controller = self->_controller;
  self->_controller = 0;

  v22.receiver = self;
  v22.super_class = _ANEProgramForLoad;
  [(_ANEProgramForLoad *)&v22 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"%@: { programHandle=%llu : intermediateBufferHandle=%llu : refcount=%lld }", v4, [(_ANEProgramForLoad *)self programHandle], [(_ANEProgramForLoad *)self intermediateBufferHandle], [(_ANEProgramForLoad *)self refcount]];

  return v5;
}

- (BOOL)createProgramInstanceForModel:(id)model modelToken:(id)token modelFilePath:(id)path qos:(unsigned int)qos isPreCompiled:(BOOL)compiled enablePowerSaving:(BOOL)saving skipPreparePhase:(BOOL)phase statsMask:(unsigned int)self0 memoryPoolID:(unint64_t)self1 enableLateLatch:(BOOL)self2 modelIdentityStr:(id)self3 owningPid:(int)self4 cacheUrlIdentifier:(id)self5 aotCacheUrlIdentifier:(id)self6 optOutOfModelMemoryUnwiring:(BOOL)self7 error:(id *)self8
{
  savingCopy = saving;
  compiledCopy = compiled;
  modelCopy = model;
  tokenCopy = token;
  pathCopy = path;
  strCopy = str;
  identifierCopy = identifier;
  urlIdentifierCopy = urlIdentifier;
  v21 = +[_ANELog daemon];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = NSStringFromSelector(a2);
    bytes = [modelCopy bytes];
    v24 = [modelCopy length];
    controller = [(_ANEProgramForLoad *)self controller];
    *buf = 138416386;
    v92 = v22;
    v93 = 2048;
    *v94 = bytes;
    *&v94[8] = 2048;
    *&v94[10] = v24;
    *&v94[18] = 1024;
    *&v94[20] = qos;
    v95 = 1024;
    *v96 = compiledCopy;
    *&v96[4] = 1024;
    *&v96[6] = savingCopy;
    *v97 = 2048;
    *&v97[2] = [controller device];
    v98 = 2048;
    *v99 = [(_ANEProgramForLoad *)self programInstance];
    *&v99[8] = 2048;
    *&v99[10] = [(_ANEProgramForLoad *)self refcount];
    *&v99[18] = 2048;
    *&v99[20] = [(_ANEProgramForLoad *)self intermediateBufferHandle];
    v100 = 1024;
    maskCopy = mask;
    v102 = 2048;
    dCopy = d;
    v104 = 1024;
    latchCopy = latch;
    v106 = 2112;
    v107 = strCopy;
    v108 = 2112;
    v109 = identifierCopy;
    v110 = 2112;
    v111 = urlIdentifierCopy;
    v112 = 1024;
    unwiringCopy = unwiring;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%@: START : cachedModel.bytes=%p : cachedModel.length=%ld : qos=%d : isPreCompiled=%d : enablePowerSaving=%d : controller.device=%p : programInstance=%p : refcount=%lld : intermediateBufferHandle=%llu : statsMask=%u : memoryPoolId=%llu : enableLateLatch=%d : modelIdentityStr=%@ : cacheUrlIdentifier=%@ : aotCacheUrlIdentifier=%@ optOutOfModelMemoryUnwiring=%d", buf, 0x94u);
  }

  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 1;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_100002C88;
  v85 = sub_100002C98;
  v86 = 0;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CA0;
  block[3] = &unk_100030790;
  block[4] = self;
  v27 = modelCopy;
  v63 = v27;
  v69 = &v81;
  v70 = &v87;
  v71 = a2;
  v28 = tokenCopy;
  v64 = v28;
  v29 = pathCopy;
  v76 = compiledCopy;
  pidCopy = pid;
  qosCopy = qos;
  v77 = savingCopy;
  maskCopy2 = mask;
  v65 = v29;
  dCopy2 = d;
  v30 = strCopy;
  v66 = v30;
  v55 = urlIdentifierCopy;
  v67 = v55;
  v31 = identifierCopy;
  v68 = v31;
  unwiringCopy2 = unwiring;
  phaseCopy = phase;
  latchCopy2 = latch;
  dispatch_sync(q, block);
  v32 = +[_ANELog daemon];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    NSStringFromSelector(a2);
    v47 = v31;
    v48 = v30;
    v49 = v29;
    v51 = v28;
    v33 = v53 = v27;
    v46 = *(v88 + 24);
    aSelectora = [(_ANEProgramForLoad *)self controller];
    device = [aSelectora device];
    programHandle = [(_ANEProgramForLoad *)self programHandle];
    intermediateBufferHandle = [(_ANEProgramForLoad *)self intermediateBufferHandle];
    queueDepth = [(_ANEProgramForLoad *)self queueDepth];
    numInputs = [(_ANEProgramForLoad *)self numInputs];
    numOutputs = [(_ANEProgramForLoad *)self numOutputs];
    refcount = [(_ANEProgramForLoad *)self refcount];
    wiredMemory = [(_ANEProgramForLoad *)self wiredMemory];
    *buf = 138414594;
    v92 = v33;
    v93 = 1024;
    *v94 = v46;
    *&v94[4] = 2048;
    *&v94[6] = device;
    *&v94[14] = 2048;
    *&v94[16] = programHandle;
    v95 = 2048;
    *v96 = intermediateBufferHandle;
    *&v96[8] = 1024;
    *v97 = queueDepth;
    *&v97[4] = 1024;
    *&v97[6] = numInputs;
    v98 = 1024;
    *v99 = numOutputs;
    *&v99[4] = 2048;
    *&v99[6] = refcount;
    *&v99[14] = 2048;
    *&v99[16] = wiredMemory;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%@: END : ok=%d : controller.device=%p : programHandle=%llu : intermediateBufferHandle=%llu : queueDepth=%d : numInputs=%d : numOutputs=%d : refcount=%lld : wiredMemory=%ld", buf, 0x56u);

    v28 = v51;
    v27 = v53;
    v30 = v48;
    v29 = v49;
    v31 = v47;
  }

  if (error)
  {
    *error = v82[5];
  }

  v41 = *(v88 + 24);

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v87, 8);

  return v41 & 1;
}

- (BOOL)createProgramInstanceWithWeights:(id)weights modelToken:(id)token qos:(unsigned int)qos baseModelIdentifier:(id)identifier owningPid:(int)pid numWeightFiles:(unsigned int *)files error:(id *)error
{
  weightsCopy = weights;
  tokenCopy = token;
  identifierCopy = identifier;
  v16 = +[_ANELog daemon];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = NSStringFromSelector(a2);
    controller = [(_ANEProgramForLoad *)self controller];
    *buf = 138413826;
    v63 = v17;
    v64 = 1024;
    qosCopy = qos;
    v66 = 2048;
    device = [controller device];
    v68 = 2048;
    programInstance = [(_ANEProgramForLoad *)self programInstance];
    v70 = 2048;
    refcount = [(_ANEProgramForLoad *)self refcount];
    v72 = 2048;
    *v73 = [(_ANEProgramForLoad *)self intermediateBufferHandle];
    *&v73[8] = 2112;
    v74 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@: START : qos=%d : controller.device=%p : programInstance=%p : refcount=%lld : intermediateBufferHandle=%llu : baseModelIdentifier=%@", buf, 0x44u);
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 1;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_100002C88;
  v56 = sub_100002C98;
  v57 = 0;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004000;
  block[3] = &unk_1000307B8;
  block[4] = self;
  v46 = &v52;
  v47 = &v58;
  v48 = a2;
  v20 = tokenCopy;
  v43 = v20;
  pidCopy = pid;
  v21 = identifierCopy;
  v44 = v21;
  v22 = weightsCopy;
  v45 = v22;
  filesCopy = files;
  qosCopy2 = qos;
  dispatch_sync(q, block);
  v23 = +[_ANELog daemon];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    NSStringFromSelector(a2);
    v36 = v22;
    v24 = v37 = v20;
    v35 = *(v59 + 24);
    controller2 = [(_ANEProgramForLoad *)self controller];
    device2 = [controller2 device];
    programHandle = [(_ANEProgramForLoad *)self programHandle];
    intermediateBufferHandle = [(_ANEProgramForLoad *)self intermediateBufferHandle];
    queueDepth = [(_ANEProgramForLoad *)self queueDepth];
    numInputs = [(_ANEProgramForLoad *)self numInputs];
    numOutputs = [(_ANEProgramForLoad *)self numOutputs];
    refcount2 = [(_ANEProgramForLoad *)self refcount];
    wiredMemory = [(_ANEProgramForLoad *)self wiredMemory];
    *buf = 138414594;
    v63 = v24;
    v64 = 1024;
    qosCopy = v35;
    v66 = 2048;
    device = device2;
    v68 = 2048;
    programInstance = programHandle;
    v70 = 2048;
    refcount = intermediateBufferHandle;
    v72 = 1024;
    *v73 = queueDepth;
    *&v73[4] = 1024;
    *&v73[6] = numInputs;
    LOWORD(v74) = 1024;
    *(&v74 + 2) = numOutputs;
    HIWORD(v74) = 2048;
    v75 = refcount2;
    v76 = 2048;
    v77 = wiredMemory;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@: END : ok=%d : controller.device=%p : programHandle=%llu : intermediateBufferHandle=%llu : queueDepth=%d : numInputs=%d : numOutputs=%d : refcount=%lld : wiredMemory=%ld", buf, 0x56u);

    v22 = v36;
    v20 = v37;
  }

  if (error)
  {
    *error = v53[5];
  }

  v32 = *(v59 + 24);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v32 & 1;
}

- (BOOL)destroyProgramInstance
{
  v4 = +[_ANELog daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    controller = [(_ANEProgramForLoad *)self controller];
    *buf = 138413058;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = [controller device];
    *&buf[22] = 2048;
    programInstance = [(_ANEProgramForLoad *)self programInstance];
    v24 = 2048;
    refcount = [(_ANEProgramForLoad *)self refcount];
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: START : controller.device=%p : programInstance=%p : refcount=%lld", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(programInstance) = 1;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005928;
  block[3] = &unk_1000307E0;
  block[5] = buf;
  block[6] = a2;
  block[4] = self;
  dispatch_sync(q, block);
  v6 = +[_ANELog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = NSStringFromSelector(a2);
    v12 = *(*&buf[8] + 24);
    controller2 = [(_ANEProgramForLoad *)self controller];
    device = [controller2 device];
    *v16 = 138412802;
    v17 = v11;
    v18 = 1024;
    v19 = v12;
    v20 = 2048;
    v21 = device;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: END : ok=%d : controller.device=%p", v16, 0x1Cu);
  }

  v7 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v7;
}

- (id)createSymbolMapping
{
  programInstance = [(_ANEProgramForLoad *)self programInstance];

  return [(_ANEProgramForLoad *)self createSymbolMappingForProgram:programInstance];
}

+ (void)dumpProgramInstance:(ANEProgramInstanceStruct *)instance
{
  v4 = +[_ANELog daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001D650();
  }

  v5 = +[_ANELog daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001D6E4();
  }
}

- (id)createSymbolMappingForProgram:(ANEProgramInstanceStruct *)program
{
  v47 = [&__NSArray0__struct mutableCopy];
  [objc_opt_class() dumpProgramInstance:program];
  var5 = program->var5;
  var4 = program->var4;
  v50 = [&__NSArray0__struct mutableCopy];
  v46 = [&__NSArray0__struct mutableCopy];
  if (var4)
  {
    v6 = 0;
    v7 = 60;
    do
    {
      var5 = [NSString stringWithFormat:@"%s", var5];
      [v50 setObject:var5 atIndexedSubscript:v6];

      if (*(program->var7 + v7))
      {
        v9 = &__kCFBooleanTrue;
      }

      else
      {
        v9 = &__kCFBooleanFalse;
      }

      [v46 setObject:v9 atIndexedSubscript:v6++];
      ++var5;
      v7 += 104;
    }

    while (var4 != v6);
  }

  var10 = program->var10;
  var9 = program->var9;
  v49 = [&__NSArray0__struct mutableCopy];
  v45 = [&__NSArray0__struct mutableCopy];
  if (var9)
  {
    v12 = 0;
    v13 = 64;
    do
    {
      var10 = [NSString stringWithFormat:@"%s", var10];
      [v49 setObject:var10 atIndexedSubscript:v12];

      if (*(program->var8 + v13))
      {
        v15 = &__kCFBooleanTrue;
      }

      else
      {
        v15 = &__kCFBooleanFalse;
      }

      [v45 setObject:v15 atIndexedSubscript:v12++];
      ++var10;
      v13 += 104;
    }

    while (var9 != v12);
  }

  var12 = program->var12;
  var13 = program->var13;
  v48 = [&__NSDictionary0__struct mutableCopy];
  v43 = [&__NSDictionary0__struct mutableCopy];
  if (var12)
  {
    for (i = 0; i != var12; ++i)
    {
      v18 = [&__NSDictionary0__struct mutableCopy];
      v19 = [NSNumber numberWithUnsignedInt:*(var13 + 640)];
      [v18 setObject:v19 forKeyedSubscript:kANEFModelProcedureIDKey];
      var13 = [NSString stringWithFormat:@"%s", var13];
      [v48 setObject:v19 forKeyedSubscript:var13];
      if (*(var13 + 641))
      {
        v21 = [NSNumber numberWithUnsignedInt:?];
        [v43 setObject:v21 forKeyedSubscript:var13];
      }

      v22 = +[_ANELog daemon];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v32 = NSStringFromSelector(a2);
        v33 = *(var13 + 641);
        *buf = 138413058;
        v56 = v32;
        v57 = 1024;
        v58 = i;
        v59 = 2048;
        v60 = var13;
        v61 = 1024;
        v62 = v33;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@: procedures[%d]=%p, AnalyticsBufferSize=%uBytes", buf, 0x22u);
      }

      v23 = [&__NSArray0__struct mutableCopy];
      if (*(var13 + 383))
      {
        v24 = 128;
        do
        {
          v25 = [NSNumber numberWithUnsignedInt:*(var13 + v24)];
          [v23 setObject:v25 atIndexedSubscript:v24 - 128];

          ++v24;
        }

        while (v24 - 128 < *(var13 + 383));
      }

      v26 = [v23 copy];
      [v18 setObject:v26 forKeyedSubscript:kANEFModelInputSymbolIndexArrayKey];

      v27 = [&__NSArray0__struct mutableCopy];
      if (*(var13 + 639))
      {
        v28 = 384;
        do
        {
          v29 = [NSNumber numberWithUnsignedInt:*(var13 + v28)];
          [v27 setObject:v29 atIndexedSubscript:v28 - 384];

          ++v28;
        }

        while (v28 - 384 < *(var13 + 639));
      }

      v30 = [v27 copy];
      [v18 setObject:v30 forKeyedSubscript:kANEFModelOutputSymbolIndexArrayKey];

      v31 = [v18 copy];
      [v47 setObject:v31 atIndexedSubscript:i];

      var13 = (var13 + 2568);
    }
  }

  if ([v43 count])
  {
    v53[0] = kANEFModelProceduresArrayKey;
    v34 = [v47 copy];
    v54[0] = v34;
    v53[1] = kANEFModelProcedureNameToIDMapKey;
    v35 = [v48 copy];
    v54[1] = v35;
    v53[2] = kANEFModelInputSymbolsArrayKey;
    v36 = [v50 copy];
    v54[2] = v36;
    v53[3] = kANEFModelOutputSymbolsArrayKey;
    v37 = [v49 copy];
    v54[3] = v37;
    v53[4] = kANEFModelProcedureNameToStatsSizeMapKey;
    v38 = [v43 copy];
    v54[4] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:5];
  }

  else
  {
    v51[0] = kANEFModelProceduresArrayKey;
    v34 = [v47 copy];
    v52[0] = v34;
    v51[1] = kANEFModelProcedureNameToIDMapKey;
    v35 = [v48 copy];
    v52[1] = v35;
    v51[2] = kANEFModelInputSymbolsArrayKey;
    v36 = [v50 copy];
    v52[2] = v36;
    v51[3] = kANEFModelOutputSymbolsArrayKey;
    v37 = [v49 copy];
    v52[3] = v37;
    v51[4] = kANEFModelInput16KAlignmentArrayKey;
    v38 = [v46 copy];
    v52[4] = v38;
    v51[5] = kANEFModelOutput16KAlignmentArrayKey;
    v40 = [v45 copy];
    v52[5] = v40;
    v39 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:6];
  }

  return v39;
}

@end