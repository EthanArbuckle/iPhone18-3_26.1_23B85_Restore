@interface PSSourceWriterBlock
- (PRMWriterInstance)getWriterInstForKey:(id)key;
- (PSSourceTask)sourceTask;
- (PSSourceWriterBlock)initWithSourceTask:(id)task synchronizer:(ps_synchronizer *)synchronizer transitionManager:(id)manager frameStepping:(BOOL)stepping;
- (PSTransitionManager)transitionManager;
- (void)acquireOutputBuffer:(ps_resource *)buffer key:(id)key;
- (void)releaseOutputBufferForKey:(id)key;
- (void)setupResultsWithContext:(id)context device:(id)device;
- (void)stop;
@end

@implementation PSSourceWriterBlock

- (PSSourceWriterBlock)initWithSourceTask:(id)task synchronizer:(ps_synchronizer *)synchronizer transitionManager:(id)manager frameStepping:(BOOL)stepping
{
  v17.receiver = self;
  v17.super_class = PSSourceWriterBlock;
  managerCopy = manager;
  taskCopy = task;
  v11 = [(PSSourceWriterBlock *)&v17 init];
  objc_storeWeak(&v11->_sourceTask, taskCopy);

  v11->_outputs = 0;
  v11->_prm_mgr = [managerCopy prm_mgr];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  writerInsts = v11->_writerInsts;
  v11->_writerInsts = v12;

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  frameIDs = v11->_frameIDs;
  v11->_frameIDs = v14;

  v11->_sourceTaskData = 0;
  v11->_localSourceTaskData = 0;
  atomic_store(0, &v11->_transitionPendingStorage);
  atomic_store(0, &v11->_pendingReaders);
  v11->_synchronizer = synchronizer;
  objc_storeWeak(&v11->_transitionManager, managerCopy);

  v11->_frameStepping = stepping;
  return v11;
}

- (void)acquireOutputBuffer:(ps_resource *)buffer key:(id)key
{
  v4 = [(PSSourceWriterBlock *)self getWriterInstForKey:key];

  ps_prm_acquire_write_resources(v4);
}

- (void)releaseOutputBufferForKey:(id)key
{
  keyCopy = key;
  v5 = [(PSSourceWriterBlock *)self getWriterInstForKey:keyCopy];
  v8 = [(NSMutableDictionary *)self->_frameIDs objectForKeyedSubscript:keyCopy];
  unsignedLongLongValue = [v8 unsignedLongLongValue];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue + 1];
  [(NSMutableDictionary *)self->_frameIDs setObject:v7 forKeyedSubscript:keyCopy];

  ps_prm_relinquish_writer_resources(v5);
  ps_prm_publish_writer_resources(v5);
}

- (PRMWriterInstance)getWriterInstForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_writerInsts objectForKeyedSubscript:keyCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_writerInsts objectForKeyedSubscript:keyCopy];
    pointerValue = [v6 pointerValue];

    return pointerValue;
  }

  else
  {
    v9 = [(PSSourceWriterBlock *)&v13 getWriterInstForKey:keyCopy];
    [(PSSourceWriterBlock *)v9 setupResultsWithContext:v10 device:v11, v12];
  }

  return result;
}

- (void)setupResultsWithContext:(id)context device:(id)device
{
  v252 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_sourceTask);
  outputs = [WeakRetained outputs];
  [outputs count];
  self->_outputs = ps_resource_array_create();

  v8 = malloc_type_calloc(1uLL, 0x100uLL, 0x102004027845E25uLL);
  v8->var4 = self->_synchronizer;
  self->_sourceTaskData = v8;
  v222 = v8;
  v8->var3 = 0;
  v215 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  selfCopy = self;
  v9 = objc_loadWeakRetained(&self->_sourceTask);
  outputs2 = [v9 outputs];

  v230 = outputs2;
  v11 = [outputs2 countByEnumeratingWithState:&v240 objects:v251 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v241;
    do
    {
      v14 = 0;
      do
      {
        if (*v241 != v13)
        {
          objc_enumerationMutation(v230);
        }

        resourceKey = [*(*(&v240 + 1) + 8 * v14) resourceKey];
        v16 = [contextCopy resourceStreamForKey:resourceKey];

        resourceClass = [v16 resourceClass];
        if (resourceClass <= 0xB && ((1 << resourceClass) & 0xB80) != 0)
        {
          [v16 provider];
        }

        if (ps_resource_stream_provider_is_rc())
        {
          v19 = &unk_2870CAD58;
        }

        else
        {
          v19 = &unk_2870CAD70;
        }

        [v215 addObject:v19];

        ++v14;
      }

      while (v12 != v14);
      v20 = [v230 countByEnumeratingWithState:&v240 objects:v251 count:16];
      v12 = v20;
    }

    while (v20);
  }

  firstObject = [v215 firstObject];
  bOOLValue = [firstObject BOOLValue];

  v22 = selfCopy;
  if ([v215 count])
  {
    v23 = 0;
    do
    {
      v24 = [v215 objectAtIndexedSubscript:v23];
      bOOLValue2 = [v24 BOOLValue];

      if (bOOLValue != bOOLValue2)
      {
        goto LABEL_181;
      }

      ++v23;
    }

    while ([v215 count] > v23);
  }

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v26 = objc_loadWeakRetained(&selfCopy->_sourceTask);
  outputs3 = [v26 outputs];

  v208 = outputs3;
  v213 = [outputs3 countByEnumeratingWithState:&v236 objects:v250 count:16];
  if (v213)
  {
    var2 = v222->var2;
    var1 = v222->var1;
    v211 = *v237;
    *&v28 = 136315138;
    v209 = v28;
    *&v28 = 134217984;
    v204 = v28;
    *&v28 = 67109632;
    v203 = v28;
    *&v28 = 136315394;
    v205 = v28;
    do
    {
      v29 = 0;
      do
      {
        if (*v237 != v211)
        {
          objc_enumerationMutation(v208);
        }

        v224 = v29;
        v30 = *(*(&v236 + 1) + 8 * v29);
        resourceKey2 = [v30 resourceKey];
        provider = [contextCopy resourceStreamForKey:resourceKey2];

        outputs = v22->_outputs;
        var3 = v222->var3;
        resource = ps_resource_array_get_resource();
        v229 = v30;
        resourceKey3 = [v30 resourceKey];
        MEMORY[0x25F8C9510](resource, [resourceKey3 UTF8String]);

        MEMORY[0x25F8C94C0](resource, 0, 1);
        MEMORY[0x25F8C93F0](resource, [provider resourceClass]);
        if ([provider resourceClass] == 9)
        {
          v37 = 4;
        }

        else if ([provider resourceClass] == 11)
        {
          v37 = 4;
        }

        else
        {
          v37 = 1;
        }

        v223 = v37;
        MEMORY[0x25F8C94A0](resource, 1);
        v228 = provider;
        if ((bOOLValue & 1) == 0)
        {
          v43 = ps_prm_opts_create();
          v44 = v229;
          resourceKey4 = [v229 resourceKey];
          capacity = [v44 capacity];
          v47 = objc_loadWeakRetained(&selfCopy->_transitionManager);
          executionSession = [v47 executionSession];
          v49 = [executionSession gsm];
          v50 = capacity;
          v22 = selfCopy;
          [PSGraphCompiler populateWriterOpts:v43 forKey:resourceKey4 withCapacity:v50 forGraph:0 withResStream:v228 withContext:contextCopy retainedBufferIndexers:0 withGSM:v49];

          writer_instance = ps_prm_create_writer_instance(v22->_prm_mgr, v43);
          ps_prm_opts_destroy(v43);
          frameIDs = v22->_frameIDs;
          resourceKey5 = [v44 resourceKey];
          [(NSMutableDictionary *)frameIDs setObject:&unk_2870CAD88 forKeyedSubscript:resourceKey5];

          v54 = [MEMORY[0x277CCAE60] valueWithPointer:writer_instance];
          writerInsts = v22->_writerInsts;
          resourceKey6 = [v44 resourceKey];
          [(NSMutableDictionary *)writerInsts setObject:v54 forKeyedSubscript:resourceKey6];

          provider = v228;
          [provider provider];
          if (ps_resource_stream_provider_has_iosurface_metadata())
          {
            v57 = 1;
          }

          else
          {
            [provider provider];
            if (ps_resource_stream_provider_has_cfdata_metadata())
            {
              v57 = 0;
            }

            else
            {
              [provider provider];
              if ((ps_resource_stream_provider_has_no_metadata() & 1) == 0)
              {
                goto LABEL_175;
              }

              v57 = 2;
            }
          }

          MEMORY[0x25F8C9520](resource, v57);
          resourceKey7 = [v229 resourceKey];
          [(PSSourceWriterBlock *)v22 acquireOutputBuffer:resource key:resourceKey7];

          goto LABEL_142;
        }

        v38 = v229;
        resourceKey8 = [v229 resourceKey];
        v216 = [PSRCConstants resourceIDForKey:resourceKey8];

        resourceKey9 = [v38 resourceKey];
        v41 = [deviceCopy propertiesForKey:resourceKey9];
        syncedKey = [v41 syncedKey];

        v219 = syncedKey;
        if (syncedKey)
        {
          v221 = [PSRCConstants resourceIDForKey:syncedKey];
        }

        else
        {
          v221 = 0;
        }

        resourceKey10 = [v229 resourceKey];
        v59 = [deviceCopy propertiesForKey:resourceKey10];

        v60 = v216;
        v218 = v59;
        if (v59)
        {
          sensorFrameRate = [v59 sensorFrameRate];
        }

        else
        {
          sensorFrameRate = 0;
        }

        resourceClass2 = [provider resourceClass];
        v63 = resourceClass2;
        if (resourceClass2 > 8)
        {
          if (resourceClass2 == 9)
          {
            v64 = __PLSLogSharedInstance();
            if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_60;
            }

            v65 = v228;
            [v228 key];
            v67 = v66 = 9;
            uTF8String = [v67 UTF8String];
            v245 = v209;
            *v246 = uTF8String;
            v69 = v64;
            v70 = "Received a data buffer stream for %s";
          }

          else
          {
            if (resourceClass2 != 11)
            {
              goto LABEL_174;
            }

            v64 = __PLSLogSharedInstance();
            if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
LABEL_60:
              v65 = v228;
              goto LABEL_61;
            }

            v65 = v228;
            [v228 key];
            v67 = v66 = 11;
            uTF8String2 = [v67 UTF8String];
            v245 = v209;
            *v246 = uTF8String2;
            v69 = v64;
            v70 = "Received a pearl buffer stream for %s";
          }
        }

        else if (resourceClass2 == 7)
        {
          v64 = __PLSLogSharedInstance();
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_60;
          }

          v65 = v228;
          [v228 key];
          v67 = v66 = 7;
          uTF8String3 = [v67 UTF8String];
          v245 = v209;
          *v246 = uTF8String3;
          v69 = v64;
          v70 = "Received a pixel buffer stream for %s";
        }

        else
        {
          if (resourceClass2 != 8)
          {
            goto LABEL_174;
          }

          v64 = __PLSLogSharedInstance();
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_60;
          }

          v65 = v228;
          [v228 key];
          v67 = v66 = 8;
          uTF8String4 = [v67 UTF8String];
          v245 = v209;
          *v246 = uTF8String4;
          v69 = v64;
          v70 = "Received a jasper buffer stream for %s";
        }

        _os_log_impl(&dword_25EA3A000, v69, OS_LOG_TYPE_DEBUG, v70, &v245, 0xCu);

        v63 = v66;
LABEL_61:

        provider = [v65 provider];
        v217 = v63;
        MEMORY[0x25F8C93F0](resource, v63);
        MEMORY[0x25F8C94A0](resource, 1);
        v75 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          v245 = v204;
          *v246 = provider;
          _os_log_impl(&dword_25EA3A000, v75, OS_LOG_TYPE_DEBUG, "Stream provider: %lu", &v245, 0xCu);
        }

        if (provider >= 9)
        {
          goto LABEL_157;
        }

        v76 = dword_25EB77230[provider];
        v77 = (provider - 6) > 2;
        v210 = provider - 6;
        MEMORY[0x25F8C9520](resource, (provider - 6) < 3);
        v78 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v245 = v203;
          *v246 = provider;
          *&v246[4] = 1024;
          *&v246[6] = v76;
          *v247 = 1024;
          *&v247[2] = (provider - 6) > 2;
          _os_log_impl(&dword_25EA3A000, v78, OS_LOG_TYPE_DEBUG, "Converted the stream provider type: %u into buffer writer provider type: %d with metadata type: %d", &v245, 0x14u);
        }

        v79 = objc_loadWeakRetained(&v22->_transitionManager);
        executionSession2 = [v79 executionSession];
        v81 = ps_buffer_writer_init(0, [executionSession2 gsm]);

        resourceKey11 = [v229 resourceKey];
        [resourceKey11 UTF8String];
        ps_buffer_writer_setkey();

        v225 = v81;
        cam_stream_attr = ps_buffer_writer_get_cam_stream_attr(v81);
        cam_stream_attr[5].i32[3] = v76;
        cam_stream_attr[1].i64[0] = v217;
        if (provider == 1)
        {
          v84 = objc_loadWeakRetained(&v22->_sourceTask);
          bufferPool = [v84 bufferPool];

          if (!bufferPool)
          {
            [PSSourceWriterBlock setupResultsWithContext:v228 device:?];
LABEL_168:
            v235 = 0;
            v191 = v229;
            resourceKey12 = [v229 resourceKey];
            uTF8String5 = [resourceKey12 UTF8String];
            asprintf(&v235, "Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", uTF8String5, v22, [provider count]);

            v193 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
            {
              uTF8String5 = [v191 resourceKey];
              v88UTF8String = [uTF8String5 UTF8String];
              v195 = [provider count];
              v245 = 136316162;
              *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v246[8] = 1024;
              *v247 = 472;
              *&v247[4] = 2080;
              *&v247[6] = v88UTF8String;
              *&v247[14] = 1024;
              *&v247[16] = v22;
              v248 = 2048;
              v249 = v195;
              _os_log_impl(&dword_25EA3A000, v193, OS_LOG_TYPE_FAULT, "%s:%d Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", &v245, 0x2Cu);
            }

            v196 = OSLogFlushBuffers();
            if (!v196)
            {
              goto LABEL_151;
            }

            uTF8String5 = v196;
            v180 = __PLSLogSharedInstance();
            if (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_154;
            }

            while (1)
            {
LABEL_153:
              v245 = v205;
              *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v246[8] = 1024;
              *v247 = uTF8String5;
              _os_log_impl(&dword_25EA3A000, v180, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v245, 0x12u);
              do
              {
LABEL_154:

                while (1)
                {
                  abort_with_reason();
LABEL_156:
                  [PSSourceWriterBlock setupResultsWithContext:uTF8String5 device:?];
LABEL_157:
                  v235 = 0;
                  uTF8String5 = v228;
                  v181 = [v228 key];
                  asprintf(&v235, "Unrecognized provider type was provided: %d for key: %s", provider, [v181 UTF8String]);

                  v182 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                  {
                    uTF8String5 = [uTF8String5 key];
                    v88UTF8String2 = [uTF8String5 UTF8String];
                    v245 = 136315906;
                    *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
                    *&v246[8] = 1024;
                    *v247 = 315;
                    *&v247[4] = 1024;
                    *&v247[6] = provider;
                    *&v247[10] = 2080;
                    *&v247[12] = v88UTF8String2;
                    _os_log_impl(&dword_25EA3A000, v182, OS_LOG_TYPE_FAULT, "%s:%d Unrecognized provider type was provided: %d for key: %s", &v245, 0x22u);
                  }

                  v184 = OSLogFlushBuffers();
                  if (v184)
                  {
                    break;
                  }

LABEL_151:
                  usleep(0x1E8480u);
                }

                uTF8String5 = v184;
                v180 = __PLSLogSharedInstance();
              }

              while (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR));
            }
          }
        }

        v226 = cam_stream_attr;
        v86 = __PLSLogSharedInstance();
        v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG);
        uTF8String5 = v228;
        if (v87)
        {
          v89 = [v228 key];
          uTF8String6 = [v89 UTF8String];
          v245 = v209;
          *v246 = uTF8String6;
          _os_log_impl(&dword_25EA3A000, v86, OS_LOG_TYPE_DEBUG, "Setting up camera view counts for stream: %s", &v245, 0xCu);
        }

        provider = PSTransitionMonitor;
        v91 = [uTF8String5 key];
        v92 = [PSRCConstants getCameraDepthForKey:v91];
        v93 = v226;
        v226->i32[0] = v92;

        v94 = [uTF8String5 key];
        v93->i32[1] = [PSRCConstants getWriterDepthForKey:v94];

        v95 = [uTF8String5 key];
        v93->i32[2] = [PSRCConstants getReaderDepthForKey:v95];

        if (![uTF8String5 retainedISPRCCount])
        {
          goto LABEL_156;
        }

        v93->i32[3] = [uTF8String5 retainedISPRCCount];
        rcFrameID = [v218 rcFrameID];
        v97 = __PLSLogSharedInstance();
        v98 = os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG);
        if (rcFrameID)
        {
          if (v98)
          {
            resourceKey13 = [v229 resourceKey];
            uTF8String7 = [resourceKey13 UTF8String];
            v245 = v205;
            *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
            *&v246[8] = 2080;
            *v247 = uTF8String7;
            _os_log_impl(&dword_25EA3A000, v97, OS_LOG_TYPE_DEBUG, "%s this camera %s has frameid delivered by RC ", &v245, 0x16u);
          }

          synchronizer = 0;
        }

        else
        {
          if (v98)
          {
            resourceKey14 = [v229 resourceKey];
            uTF8String8 = [resourceKey14 UTF8String];
            v245 = v205;
            *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
            *&v246[8] = 2080;
            *v247 = uTF8String8;
            _os_log_impl(&dword_25EA3A000, v97, OS_LOG_TYPE_DEBUG, "%s this camera %s has frameid set by Polaris ", &v245, 0x16u);
          }

          synchronizer = v22->_synchronizer;
        }

        v93[1].i64[1] = synchronizer;
        provider = v228;
        if (v60)
        {
          unsignedLongValue = [v60 unsignedLongValue];
        }

        else
        {
          unsignedLongValue = 156;
        }

        v93[2].i64[0] = unsignedLongValue;
        if (v221)
        {
          unsignedLongValue2 = [v221 unsignedLongValue];
        }

        else
        {
          unsignedLongValue2 = 156;
        }

        v93[3].i64[0] = unsignedLongValue2;
        v106 = v229;
        resourceKey15 = [v229 resourceKey];
        v93[3].i64[1] = ps_telemetry_create_string_id([resourceKey15 UTF8String]);

        resourceKey16 = [v106 resourceKey];
        v109 = [PLSDevice getAriadneID:resourceKey16];
        v226[4].i64[0] = v109;

        v110 = v226;
        v111 = [PLSDevice getAriadneID:v219];
        v112 = v223;
        v110[4].i64[1] = v111;
        v110[5].i64[0] = v112;
        v110[2].i64[1] = sensorFrameRate;
        v110[5].i32[2] = v77;
        ps_buffer_writer_create_resource(v225);
        v113 = objc_loadWeakRetained(&v22->_sourceTask);
        bufferPool2 = [v113 bufferPool];

        if (bufferPool2)
        {
          v115 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            v116 = [provider key];
            uTF8String9 = [v116 UTF8String];
            v245 = v209;
            *v246 = uTF8String9;
            _os_log_impl(&dword_25EA3A000, v115, OS_LOG_TYPE_DEBUG, "Received a pixel buffer stream for %s", &v245, 0xCu);
          }

          v118 = objc_loadWeakRetained(&v22->_sourceTask);
          provider = [v118 bufferPool];

          v119 = v110->i32[3] + v110->i32[0] + (v110->i32[2] + v110->i32[1]) * v223;
          v120 = [provider count];
          if (v120 != v119)
          {
            v235 = 0;
            v185 = v229;
            resourceKey17 = [v229 resourceKey];
            uTF8String5 = [resourceKey17 UTF8String];
            asprintf(&v235, "Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", uTF8String5, v119, [provider count]);

            v187 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v187, OS_LOG_TYPE_FAULT))
            {
              uTF8String5 = [v185 resourceKey];
              v88UTF8String3 = [uTF8String5 UTF8String];
              v189 = [provider count];
              v245 = 136316162;
              *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v246[8] = 1024;
              *v247 = 408;
              *&v247[4] = 2080;
              *&v247[6] = v88UTF8String3;
              *&v247[14] = 1024;
              *&v247[16] = v119;
              v248 = 2048;
              v249 = v189;
              _os_log_impl(&dword_25EA3A000, v187, OS_LOG_TYPE_FAULT, "%s:%d Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", &v245, 0x2Cu);
            }

            v190 = OSLogFlushBuffers();
            if (!v190)
            {
              goto LABEL_151;
            }

            uTF8String5 = v190;
            v180 = __PLSLogSharedInstance();
            if (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          v121 = v120;
          v122 = v202 - ((8 * v120 + 15) & 0xFFFFFFFFFFFFFFF0);
          if ((8 * v120) >= 0x200)
          {
            v123 = 512;
          }

          else
          {
            v123 = 8 * v120;
          }

          bzero(v202 - ((8 * v120 + 15) & 0xFFFFFFFFFFFFFFF0), v123);
          if (v119)
          {
            v124 = 0;
            do
            {
              *&v122[8 * v124] = [provider objectAtIndex:v124];
              ++v124;
            }

            while (v121 != v124);
          }

          v125 = v225;
          ps_buffer_writer_camerastream_install_bufferpool(v225, v122);

          v22 = selfCopy;
          provider = v228;
        }

        else
        {
          v126 = objc_loadWeakRetained(&v22->_sourceTask);
          pearlBufferPools = [v126 pearlBufferPools];

          v128 = __PLSLogSharedInstance();
          v129 = os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG);
          if (pearlBufferPools)
          {
            if (v129)
            {
              v130 = [provider key];
              uTF8String10 = [v130 UTF8String];
              v245 = v209;
              *v246 = uTF8String10;
              _os_log_impl(&dword_25EA3A000, v128, OS_LOG_TYPE_DEBUG, "Received a pearl buffer stream for %s", &v245, 0xCu);
            }

            v132 = objc_loadWeakRetained(&v22->_sourceTask);
            pearlBufferPools2 = [v132 pearlBufferPools];
            v134 = [pearlBufferPools2 count];

            if (v134 != 4)
            {
              [PSSourceWriterBlock setupResultsWithContext:&v22->_sourceTask device:?];
LABEL_181:
              [PSSourceWriterBlock setupResultsWithContext:&v22->_sourceTask device:?];
            }

            v202[1] = v202;
            v135 = vaddvq_s32(*v110);
            v136 = v22;
            v137 = v135;
            v138 = &v202[-4 * v135];
            if (8 * (4 * v135) >= 0x200)
            {
              v139 = 512;
            }

            else
            {
              v139 = 32 * v135;
            }

            bzero(&v202[-4 * v135], v139);
            v233 = 0u;
            v234 = 0u;
            v231 = 0u;
            v232 = 0u;
            v140 = objc_loadWeakRetained(&v136->_sourceTask);
            pearlBufferPools3 = [v140 pearlBufferPools];

            v230 = pearlBufferPools3;
            v142 = [pearlBufferPools3 countByEnumeratingWithState:&v231 objects:v244 count:16];
            if (v142)
            {
              v143 = v142;
              v144 = 0;
              v145 = *v232;
              do
              {
                for (i = 0; i != v143; ++i)
                {
                  if (*v232 != v145)
                  {
                    objc_enumerationMutation(v230);
                  }

                  v147 = *(*(&v231 + 1) + 8 * i);
                  if ([v147 count] != v137)
                  {
                    v235 = 0;
                    v174 = v229;
                    resourceKey18 = [v229 resourceKey];
                    uTF8String5 = [resourceKey18 UTF8String];
                    asprintf(&v235, "Wrong number of surfaces recieved one of the buffer pools for %s. Should have been %u, received %lu", uTF8String5, v137, [v147 count]);

                    v176 = __PLSLogSharedInstance();
                    provider = &v245;
                    if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
                    {
                      uTF8String5 = [v174 resourceKey];
                      v88UTF8String4 = [uTF8String5 UTF8String];
                      v178 = [v147 count];
                      v245 = 136316162;
                      *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
                      *&v246[8] = 1024;
                      *v247 = 437;
                      *&v247[4] = 2080;
                      *&v247[6] = v88UTF8String4;
                      *&v247[14] = 1024;
                      *&v247[16] = v137;
                      v248 = 2048;
                      v249 = v178;
                      _os_log_impl(&dword_25EA3A000, v176, OS_LOG_TYPE_FAULT, "%s:%d Wrong number of surfaces recieved one of the buffer pools for %s. Should have been %u, received %lu", &v245, 0x2Cu);
                    }

                    v179 = OSLogFlushBuffers();
                    if (!v179)
                    {
                      goto LABEL_151;
                    }

                    uTF8String5 = v179;
                    v180 = __PLSLogSharedInstance();
                    if (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_154;
                    }

                    goto LABEL_153;
                  }

                  if (v137)
                  {
                    for (j = 0; j != v137; ++j)
                    {
                      v138[(v144 + j)] = [v147 objectAtIndex:j];
                    }

                    v144 += j;
                  }
                }

                v143 = [v230 countByEnumeratingWithState:&v231 objects:v244 count:16];
              }

              while (v143);
            }

            v125 = v225;
            ps_buffer_writer_camerastream_install_bufferpool(v225, v138);
            v22 = selfCopy;
            provider = v228;
            v60 = v216;
          }

          else
          {
            if (v129)
            {
              LOWORD(v245) = 0;
              _os_log_impl(&dword_25EA3A000, v128, OS_LOG_TYPE_DEBUG, "No buffers were found to install", &v245, 2u);
            }

            v125 = v225;
            ps_buffer_writer_camerastream_install_bufferpool(v225, 0);
          }
        }

        if (v210 <= 2)
        {
          v149 = objc_loadWeakRetained(&v22->_sourceTask);
          metadataBufferPool = [v149 metadataBufferPool];

          if (!metadataBufferPool)
          {
            [PSSourceWriterBlock setupResultsWithContext:? device:?];
LABEL_174:
            [PSSourceWriterBlock setupResultsWithContext:v229 device:?];
LABEL_175:
            v235 = 0;
            resourceKey19 = [v229 resourceKey];
            uTF8String5 = [resourceKey19 UTF8String];
            asprintf(&v235, "Metadata ill-defined for key %s, provider type %d", uTF8String5, [provider provider]);

            v198 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v198, OS_LOG_TYPE_FAULT))
            {
              uTF8String5 = [v229 resourceKey];
              v88UTF8String5 = [uTF8String5 UTF8String];
              provider2 = [v228 provider];
              v245 = 136315906;
              *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v246[8] = 1024;
              *v247 = 245;
              *&v247[4] = 2080;
              *&v247[6] = v88UTF8String5;
              *&v247[14] = 1024;
              *&v247[16] = provider2;
              _os_log_impl(&dword_25EA3A000, v198, OS_LOG_TYPE_FAULT, "%s:%d Metadata ill-defined for key %s, provider type %d", &v245, 0x22u);
            }

            v201 = OSLogFlushBuffers();
            if (!v201)
            {
              goto LABEL_151;
            }

            uTF8String5 = v201;
            v180 = __PLSLogSharedInstance();
            if (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          v151 = objc_loadWeakRetained(&v22->_sourceTask);
          provider = [v151 metadataBufferPool];

          v152 = v226->i32[1];
          v153 = v226->i32[3] + v226->i32[0];
          if (v217 == 11)
          {
            LODWORD(v22) = v153 + v152 + v226->i32[2];
          }

          else
          {
            LODWORD(v22) = v153 + (v226->i32[2] + v152) * v223;
          }

          v154 = [provider count];
          if (v154 != v22)
          {
            goto LABEL_168;
          }

          v155 = v154;
          v156 = v202 - ((8 * v154 + 15) & 0xFFFFFFFFFFFFFFF0);
          if ((8 * v154) >= 0x200)
          {
            v157 = 512;
          }

          else
          {
            v157 = 8 * v154;
          }

          bzero(v202 - ((8 * v154 + 15) & 0xFFFFFFFFFFFFFFF0), v157);
          if (v22)
          {
            v158 = 0;
            do
            {
              *&v156[8 * v158] = [provider objectAtIndex:v158];
              ++v158;
            }

            while (v155 != v158);
          }

          v125 = v225;
          ps_buffer_writer_camerastream_install_metadata_bufferpool(v225, v156);

          v22 = selfCopy;
          provider = v228;
        }

        if (v22->_synchronizer)
        {
          if (v60)
          {
            unsignedLongValue3 = [v60 unsignedLongValue];
          }

          else
          {
            unsignedLongValue3 = 156;
          }

          if (v221)
          {
            unsignedLongValue4 = [v221 unsignedLongValue];
          }

          else
          {
            unsignedLongValue4 = 156;
          }

          v125 = v225;
          if (*(*(v225 + 21) + 24))
          {
            ps_synchronizer_register_writer(v22->_synchronizer, v225, unsignedLongValue3, unsignedLongValue4);
          }

          v161 = v222->var3;
          v162 = var2;
          var1[v161] = unsignedLongValue3;
          *&v162[8 * v161] = unsignedLongValue4;
        }

        v163 = v222;
        v164 = v222->var3;
        v222->var0[v164] = v125;
        v163->var3 = v164 + 1;
LABEL_142:

        v29 = v224 + 1;
      }

      while (v224 + 1 != v213);
      v213 = [v208 countByEnumeratingWithState:&v236 objects:v250 count:16];
    }

    while (v213);
  }

  if (bOOLValue)
  {
    v165 = objc_loadWeakRetained(&v22->_sourceTask);
    [v165 setSourceTaskData:v222];

    v166 = objc_loadWeakRetained(&v22->_sourceTask);
    [v166 setResources:v22->_outputs];

    v167 = objc_loadWeakRetained(&v22->_sourceTask);
    [v167 setSourceTaskFunction:source_writer_func];

    v168 = deviceCopy;
  }

  else
  {
    v169 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    v22->_localSourceTaskData = v169;
    objc_storeWeak(v169, v22);
    v168 = deviceCopy;
    objc_storeWeak(v169 + 1, deviceCopy);
    v170 = objc_loadWeakRetained(&v22->_sourceTask);
    [v170 setSourceTaskData:v169];

    v171 = objc_loadWeakRetained(&v22->_sourceTask);
    [v171 setResources:v22->_outputs];

    v172 = objc_loadWeakRetained(&v22->_sourceTask);
    [v172 setSourceTaskFunction:local_source_writer_func];

    v22->_sourceTaskData = 0;
    free(v222);
  }

  v173 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v30 = *MEMORY[0x277D85DE8];
  sourceTaskData = self->_sourceTaskData;
  if (sourceTaskData)
  {
    if (sourceTaskData->var3)
    {
      v4 = 0;
      do
      {
        v5 = sourceTaskData->var0[v4];
        if (!*(v5 + 16))
        {
          v6 = *(v5 + 21);
          if (v6[3])
          {
            ps_synchronizer_unregister_writer(self->_synchronizer, v6[4], v6[6]);
            v5 = self->_sourceTaskData->var0[v4];
          }
        }

        ps_buffer_writer_release(v5);
        ++v4;
        sourceTaskData = self->_sourceTaskData;
      }

      while (v4 < sourceTaskData->var3);
    }

    free(sourceTaskData);
  }

  if (self->_localSourceTaskData)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->_writerInsts;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(PSSourceWriterBlock *)self releaseOutputBufferForKey:*(*(&v24 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    objc_storeWeak(&self->_localSourceTaskData->var0, 0);
    objc_storeWeak(&self->_localSourceTaskData->var1, 0);
    free(self->_localSourceTaskData);
  }

  if (self->_outputs)
  {
    ps_resource_array_free();
    self->_outputs = 0;
  }

  writerInsts = self->_writerInsts;
  if (writerInsts)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = writerInsts;
    v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          ps_prm_delete_writer_instance(self->_prm_mgr, [(PSSourceWriterBlock *)self getWriterInstForKey:*(*(&v20 + 1) + 8 * v17++), v20]);
        }

        while (v15 != v17);
        v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    v18 = self->_writerInsts;
    self->_writerInsts = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (PSSourceTask)sourceTask
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceTask);

  return WeakRetained;
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (uint64_t)getWriterInstForKey:(char *)a1 .cold.1(char **a1, id a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v5 = a2;
  asprintf(a1, "Could not find writer instance for key %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find writer instance for key %s", v9, v10, v11, v12, v23, v24, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v20 device:v21];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(id *)location .cold.1(char **a1, id *location)
{
  v27 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  WeakRetained = objc_loadWeakRetained(location);
  v5 = [WeakRetained name];
  asprintf(a1, "A mix of RC and non-RC outputs was found for source task %s", [v5 UTF8String]);

  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = objc_loadWeakRetained(location);
    v8 = [v7 name];
    [v8 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d A mix of RC and non-RC outputs was found for source task %s", v11, v12, v13, v14, v25, v26, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v15 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v22 device:v23];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(id *)location .cold.2(char **a1, id *location)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  WeakRetained = objc_loadWeakRetained(location);
  v5 = [WeakRetained pearlBufferPools];
  asprintf(a1, "An incorrect number of pearl buffer pools were provided. Polaris is expecting three (dx, dy, score, depth). %lu were provided", [v5 count]);

  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = objc_loadWeakRetained(location);
    v8 = [v7 pearlBufferPools];
    [v8 count];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d An incorrect number of pearl buffer pools were provided. Polaris is expecting three (dx, dy, score, depth). %lu were provided", v11, v12, v13, v14, v24, v25, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v15 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v22 device:?];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:.cold.3(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Got nil metadata buffer pool");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Got nil metadata buffer pool", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v16 device:?];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(void *)a2 .cold.4(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "retainedISPRCCount = 0 in the resourcestream for stream: %s. Did RC forget to set retainedISPRCCount?", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d retainedISPRCCount = 0 in the resourcestream for stream: %s. Did RC forget to set retainedISPRCCount?", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v20 device:?];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(void *)a2 .cold.5(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Cannot install null buffer pool for streaming codec stream: %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Cannot install null buffer pool for streaming codec stream: %s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v20 device:?];
}

- (__uint64_t)setupResultsWithContext:(char *)a1 device:(void *)a2 .cold.6(char **a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "(%s): Unsupported resource class for resource key (%s)", "[PSSourceWriterBlock setupResultsWithContext:device:]", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    *buf = 136315906;
    v19 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
    v20 = 1024;
    v21 = 484;
    v22 = 2080;
    v23 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
    v24 = 2080;
    v25 = [v6 UTF8String];
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d (%s): Unsupported resource class for resource key (%s)", buf, 0x26u);
  }

  if (OSLogFlushBuffers())
  {
    v7 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v7))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_exec_block_create_cold_1(v14);
}

@end