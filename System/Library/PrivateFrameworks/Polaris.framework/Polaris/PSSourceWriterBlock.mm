@interface PSSourceWriterBlock
- (PRMWriterInstance)getWriterInstForKey:(id)a3;
- (PSSourceTask)sourceTask;
- (PSSourceWriterBlock)initWithSourceTask:(id)a3 synchronizer:(ps_synchronizer *)a4 transitionManager:(id)a5 frameStepping:(BOOL)a6;
- (PSTransitionManager)transitionManager;
- (void)acquireOutputBuffer:(ps_resource *)a3 key:(id)a4;
- (void)releaseOutputBufferForKey:(id)a3;
- (void)setupResultsWithContext:(id)a3 device:(id)a4;
- (void)stop;
@end

@implementation PSSourceWriterBlock

- (PSSourceWriterBlock)initWithSourceTask:(id)a3 synchronizer:(ps_synchronizer *)a4 transitionManager:(id)a5 frameStepping:(BOOL)a6
{
  v17.receiver = self;
  v17.super_class = PSSourceWriterBlock;
  v9 = a5;
  v10 = a3;
  v11 = [(PSSourceWriterBlock *)&v17 init];
  objc_storeWeak(&v11->_sourceTask, v10);

  v11->_outputs = 0;
  v11->_prm_mgr = [v9 prm_mgr];
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
  v11->_synchronizer = a4;
  objc_storeWeak(&v11->_transitionManager, v9);

  v11->_frameStepping = a6;
  return v11;
}

- (void)acquireOutputBuffer:(ps_resource *)a3 key:(id)a4
{
  v4 = [(PSSourceWriterBlock *)self getWriterInstForKey:a4];

  ps_prm_acquire_write_resources(v4);
}

- (void)releaseOutputBufferForKey:(id)a3
{
  v4 = a3;
  v5 = [(PSSourceWriterBlock *)self getWriterInstForKey:v4];
  v8 = [(NSMutableDictionary *)self->_frameIDs objectForKeyedSubscript:v4];
  v6 = [v8 unsignedLongLongValue];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6 + 1];
  [(NSMutableDictionary *)self->_frameIDs setObject:v7 forKeyedSubscript:v4];

  ps_prm_relinquish_writer_resources(v5);
  ps_prm_publish_writer_resources(v5);
}

- (PRMWriterInstance)getWriterInstForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_writerInsts objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_writerInsts objectForKeyedSubscript:v4];
    v7 = [v6 pointerValue];

    return v7;
  }

  else
  {
    v9 = [(PSSourceWriterBlock *)&v13 getWriterInstForKey:v4];
    [(PSSourceWriterBlock *)v9 setupResultsWithContext:v10 device:v11, v12];
  }

  return result;
}

- (void)setupResultsWithContext:(id)a3 device:(id)a4
{
  v252 = *MEMORY[0x277D85DE8];
  v227 = a3;
  v212 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_sourceTask);
  v7 = [WeakRetained outputs];
  [v7 count];
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
  v220 = self;
  v9 = objc_loadWeakRetained(&self->_sourceTask);
  v10 = [v9 outputs];

  v230 = v10;
  v11 = [v10 countByEnumeratingWithState:&v240 objects:v251 count:16];
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

        v15 = [*(*(&v240 + 1) + 8 * v14) resourceKey];
        v16 = [v227 resourceStreamForKey:v15];

        v17 = [v16 resourceClass];
        if (v17 <= 0xB && ((1 << v17) & 0xB80) != 0)
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

  v21 = [v215 firstObject];
  v214 = [v21 BOOLValue];

  v22 = v220;
  if ([v215 count])
  {
    v23 = 0;
    do
    {
      v24 = [v215 objectAtIndexedSubscript:v23];
      v25 = [v24 BOOLValue];

      if (v214 != v25)
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
  v26 = objc_loadWeakRetained(&v220->_sourceTask);
  v27 = [v26 outputs];

  v208 = v27;
  v213 = [v27 countByEnumeratingWithState:&v236 objects:v250 count:16];
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
        v31 = [v30 resourceKey];
        v32 = [v227 resourceStreamForKey:v31];

        outputs = v22->_outputs;
        var3 = v222->var3;
        resource = ps_resource_array_get_resource();
        v229 = v30;
        v36 = [v30 resourceKey];
        MEMORY[0x25F8C9510](resource, [v36 UTF8String]);

        MEMORY[0x25F8C94C0](resource, 0, 1);
        MEMORY[0x25F8C93F0](resource, [v32 resourceClass]);
        if ([v32 resourceClass] == 9)
        {
          v37 = 4;
        }

        else if ([v32 resourceClass] == 11)
        {
          v37 = 4;
        }

        else
        {
          v37 = 1;
        }

        v223 = v37;
        MEMORY[0x25F8C94A0](resource, 1);
        v228 = v32;
        if ((v214 & 1) == 0)
        {
          v43 = ps_prm_opts_create();
          v44 = v229;
          v45 = [v229 resourceKey];
          v46 = [v44 capacity];
          v47 = objc_loadWeakRetained(&v220->_transitionManager);
          v48 = [v47 executionSession];
          v49 = [v48 gsm];
          v50 = v46;
          v22 = v220;
          [PSGraphCompiler populateWriterOpts:v43 forKey:v45 withCapacity:v50 forGraph:0 withResStream:v228 withContext:v227 retainedBufferIndexers:0 withGSM:v49];

          writer_instance = ps_prm_create_writer_instance(v22->_prm_mgr, v43);
          ps_prm_opts_destroy(v43);
          frameIDs = v22->_frameIDs;
          v53 = [v44 resourceKey];
          [(NSMutableDictionary *)frameIDs setObject:&unk_2870CAD88 forKeyedSubscript:v53];

          v54 = [MEMORY[0x277CCAE60] valueWithPointer:writer_instance];
          writerInsts = v22->_writerInsts;
          v56 = [v44 resourceKey];
          [(NSMutableDictionary *)writerInsts setObject:v54 forKeyedSubscript:v56];

          v32 = v228;
          [v32 provider];
          if (ps_resource_stream_provider_has_iosurface_metadata())
          {
            v57 = 1;
          }

          else
          {
            [v32 provider];
            if (ps_resource_stream_provider_has_cfdata_metadata())
            {
              v57 = 0;
            }

            else
            {
              [v32 provider];
              if ((ps_resource_stream_provider_has_no_metadata() & 1) == 0)
              {
                goto LABEL_175;
              }

              v57 = 2;
            }
          }

          MEMORY[0x25F8C9520](resource, v57);
          v72 = [v229 resourceKey];
          [(PSSourceWriterBlock *)v22 acquireOutputBuffer:resource key:v72];

          goto LABEL_142;
        }

        v38 = v229;
        v39 = [v229 resourceKey];
        v216 = [PSRCConstants resourceIDForKey:v39];

        v40 = [v38 resourceKey];
        v41 = [v212 propertiesForKey:v40];
        v42 = [v41 syncedKey];

        v219 = v42;
        if (v42)
        {
          v221 = [PSRCConstants resourceIDForKey:v42];
        }

        else
        {
          v221 = 0;
        }

        v58 = [v229 resourceKey];
        v59 = [v212 propertiesForKey:v58];

        v60 = v216;
        v218 = v59;
        if (v59)
        {
          v61 = [v59 sensorFrameRate];
        }

        else
        {
          v61 = 0;
        }

        v62 = [v32 resourceClass];
        v63 = v62;
        if (v62 > 8)
        {
          if (v62 == 9)
          {
            v64 = __PLSLogSharedInstance();
            if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_60;
            }

            v65 = v228;
            [v228 key];
            v67 = v66 = 9;
            v74 = [v67 UTF8String];
            v245 = v209;
            *v246 = v74;
            v69 = v64;
            v70 = "Received a data buffer stream for %s";
          }

          else
          {
            if (v62 != 11)
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
            v71 = [v67 UTF8String];
            v245 = v209;
            *v246 = v71;
            v69 = v64;
            v70 = "Received a pearl buffer stream for %s";
          }
        }

        else if (v62 == 7)
        {
          v64 = __PLSLogSharedInstance();
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_60;
          }

          v65 = v228;
          [v228 key];
          v67 = v66 = 7;
          v73 = [v67 UTF8String];
          v245 = v209;
          *v246 = v73;
          v69 = v64;
          v70 = "Received a pixel buffer stream for %s";
        }

        else
        {
          if (v62 != 8)
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
          v68 = [v67 UTF8String];
          v245 = v209;
          *v246 = v68;
          v69 = v64;
          v70 = "Received a jasper buffer stream for %s";
        }

        _os_log_impl(&dword_25EA3A000, v69, OS_LOG_TYPE_DEBUG, v70, &v245, 0xCu);

        v63 = v66;
LABEL_61:

        v32 = [v65 provider];
        v217 = v63;
        MEMORY[0x25F8C93F0](resource, v63);
        MEMORY[0x25F8C94A0](resource, 1);
        v75 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          v245 = v204;
          *v246 = v32;
          _os_log_impl(&dword_25EA3A000, v75, OS_LOG_TYPE_DEBUG, "Stream provider: %lu", &v245, 0xCu);
        }

        if (v32 >= 9)
        {
          goto LABEL_157;
        }

        v76 = dword_25EB77230[v32];
        v77 = (v32 - 6) > 2;
        v210 = v32 - 6;
        MEMORY[0x25F8C9520](resource, (v32 - 6) < 3);
        v78 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v245 = v203;
          *v246 = v32;
          *&v246[4] = 1024;
          *&v246[6] = v76;
          *v247 = 1024;
          *&v247[2] = (v32 - 6) > 2;
          _os_log_impl(&dword_25EA3A000, v78, OS_LOG_TYPE_DEBUG, "Converted the stream provider type: %u into buffer writer provider type: %d with metadata type: %d", &v245, 0x14u);
        }

        v79 = objc_loadWeakRetained(&v22->_transitionManager);
        v80 = [v79 executionSession];
        v81 = ps_buffer_writer_init(0, [v80 gsm]);

        v82 = [v229 resourceKey];
        [v82 UTF8String];
        ps_buffer_writer_setkey();

        v225 = v81;
        cam_stream_attr = ps_buffer_writer_get_cam_stream_attr(v81);
        cam_stream_attr[5].i32[3] = v76;
        cam_stream_attr[1].i64[0] = v217;
        if (v32 == 1)
        {
          v84 = objc_loadWeakRetained(&v22->_sourceTask);
          v85 = [v84 bufferPool];

          if (!v85)
          {
            [PSSourceWriterBlock setupResultsWithContext:v228 device:?];
LABEL_168:
            v235 = 0;
            v191 = v229;
            v192 = [v229 resourceKey];
            v88 = [v192 UTF8String];
            asprintf(&v235, "Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", v88, v22, [v32 count]);

            v193 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
            {
              v88 = [v191 resourceKey];
              v194 = [v88 UTF8String];
              v195 = [v32 count];
              v245 = 136316162;
              *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v246[8] = 1024;
              *v247 = 472;
              *&v247[4] = 2080;
              *&v247[6] = v194;
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

            v88 = v196;
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
              *v247 = v88;
              _os_log_impl(&dword_25EA3A000, v180, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v245, 0x12u);
              do
              {
LABEL_154:

                while (1)
                {
                  abort_with_reason();
LABEL_156:
                  [PSSourceWriterBlock setupResultsWithContext:v88 device:?];
LABEL_157:
                  v235 = 0;
                  v88 = v228;
                  v181 = [v228 key];
                  asprintf(&v235, "Unrecognized provider type was provided: %d for key: %s", v32, [v181 UTF8String]);

                  v182 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                  {
                    v88 = [v88 key];
                    v183 = [v88 UTF8String];
                    v245 = 136315906;
                    *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
                    *&v246[8] = 1024;
                    *v247 = 315;
                    *&v247[4] = 1024;
                    *&v247[6] = v32;
                    *&v247[10] = 2080;
                    *&v247[12] = v183;
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

                v88 = v184;
                v180 = __PLSLogSharedInstance();
              }

              while (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR));
            }
          }
        }

        v226 = cam_stream_attr;
        v86 = __PLSLogSharedInstance();
        v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG);
        v88 = v228;
        if (v87)
        {
          v89 = [v228 key];
          v90 = [v89 UTF8String];
          v245 = v209;
          *v246 = v90;
          _os_log_impl(&dword_25EA3A000, v86, OS_LOG_TYPE_DEBUG, "Setting up camera view counts for stream: %s", &v245, 0xCu);
        }

        v32 = PSTransitionMonitor;
        v91 = [v88 key];
        v92 = [PSRCConstants getCameraDepthForKey:v91];
        v93 = v226;
        v226->i32[0] = v92;

        v94 = [v88 key];
        v93->i32[1] = [PSRCConstants getWriterDepthForKey:v94];

        v95 = [v88 key];
        v93->i32[2] = [PSRCConstants getReaderDepthForKey:v95];

        if (![v88 retainedISPRCCount])
        {
          goto LABEL_156;
        }

        v93->i32[3] = [v88 retainedISPRCCount];
        v96 = [v218 rcFrameID];
        v97 = __PLSLogSharedInstance();
        v98 = os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG);
        if (v96)
        {
          if (v98)
          {
            v99 = [v229 resourceKey];
            v100 = [v99 UTF8String];
            v245 = v205;
            *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
            *&v246[8] = 2080;
            *v247 = v100;
            _os_log_impl(&dword_25EA3A000, v97, OS_LOG_TYPE_DEBUG, "%s this camera %s has frameid delivered by RC ", &v245, 0x16u);
          }

          synchronizer = 0;
        }

        else
        {
          if (v98)
          {
            v102 = [v229 resourceKey];
            v103 = [v102 UTF8String];
            v245 = v205;
            *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
            *&v246[8] = 2080;
            *v247 = v103;
            _os_log_impl(&dword_25EA3A000, v97, OS_LOG_TYPE_DEBUG, "%s this camera %s has frameid set by Polaris ", &v245, 0x16u);
          }

          synchronizer = v22->_synchronizer;
        }

        v93[1].i64[1] = synchronizer;
        v32 = v228;
        if (v60)
        {
          v104 = [v60 unsignedLongValue];
        }

        else
        {
          v104 = 156;
        }

        v93[2].i64[0] = v104;
        if (v221)
        {
          v105 = [v221 unsignedLongValue];
        }

        else
        {
          v105 = 156;
        }

        v93[3].i64[0] = v105;
        v106 = v229;
        v107 = [v229 resourceKey];
        v93[3].i64[1] = ps_telemetry_create_string_id([v107 UTF8String]);

        v108 = [v106 resourceKey];
        v109 = [PLSDevice getAriadneID:v108];
        v226[4].i64[0] = v109;

        v110 = v226;
        v111 = [PLSDevice getAriadneID:v219];
        v112 = v223;
        v110[4].i64[1] = v111;
        v110[5].i64[0] = v112;
        v110[2].i64[1] = v61;
        v110[5].i32[2] = v77;
        ps_buffer_writer_create_resource(v225);
        v113 = objc_loadWeakRetained(&v22->_sourceTask);
        v114 = [v113 bufferPool];

        if (v114)
        {
          v115 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            v116 = [v32 key];
            v117 = [v116 UTF8String];
            v245 = v209;
            *v246 = v117;
            _os_log_impl(&dword_25EA3A000, v115, OS_LOG_TYPE_DEBUG, "Received a pixel buffer stream for %s", &v245, 0xCu);
          }

          v118 = objc_loadWeakRetained(&v22->_sourceTask);
          v32 = [v118 bufferPool];

          v119 = v110->i32[3] + v110->i32[0] + (v110->i32[2] + v110->i32[1]) * v223;
          v120 = [v32 count];
          if (v120 != v119)
          {
            v235 = 0;
            v185 = v229;
            v186 = [v229 resourceKey];
            v88 = [v186 UTF8String];
            asprintf(&v235, "Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", v88, v119, [v32 count]);

            v187 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v187, OS_LOG_TYPE_FAULT))
            {
              v88 = [v185 resourceKey];
              v188 = [v88 UTF8String];
              v189 = [v32 count];
              v245 = 136316162;
              *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v246[8] = 1024;
              *v247 = 408;
              *&v247[4] = 2080;
              *&v247[6] = v188;
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

            v88 = v190;
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
              *&v122[8 * v124] = [v32 objectAtIndex:v124];
              ++v124;
            }

            while (v121 != v124);
          }

          v125 = v225;
          ps_buffer_writer_camerastream_install_bufferpool(v225, v122);

          v22 = v220;
          v32 = v228;
        }

        else
        {
          v126 = objc_loadWeakRetained(&v22->_sourceTask);
          v127 = [v126 pearlBufferPools];

          v128 = __PLSLogSharedInstance();
          v129 = os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG);
          if (v127)
          {
            if (v129)
            {
              v130 = [v32 key];
              v131 = [v130 UTF8String];
              v245 = v209;
              *v246 = v131;
              _os_log_impl(&dword_25EA3A000, v128, OS_LOG_TYPE_DEBUG, "Received a pearl buffer stream for %s", &v245, 0xCu);
            }

            v132 = objc_loadWeakRetained(&v22->_sourceTask);
            v133 = [v132 pearlBufferPools];
            v134 = [v133 count];

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
            v141 = [v140 pearlBufferPools];

            v230 = v141;
            v142 = [v141 countByEnumeratingWithState:&v231 objects:v244 count:16];
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
                    v175 = [v229 resourceKey];
                    v88 = [v175 UTF8String];
                    asprintf(&v235, "Wrong number of surfaces recieved one of the buffer pools for %s. Should have been %u, received %lu", v88, v137, [v147 count]);

                    v176 = __PLSLogSharedInstance();
                    v32 = &v245;
                    if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
                    {
                      v88 = [v174 resourceKey];
                      v177 = [v88 UTF8String];
                      v178 = [v147 count];
                      v245 = 136316162;
                      *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
                      *&v246[8] = 1024;
                      *v247 = 437;
                      *&v247[4] = 2080;
                      *&v247[6] = v177;
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

                    v88 = v179;
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
            v22 = v220;
            v32 = v228;
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
          v150 = [v149 metadataBufferPool];

          if (!v150)
          {
            [PSSourceWriterBlock setupResultsWithContext:? device:?];
LABEL_174:
            [PSSourceWriterBlock setupResultsWithContext:v229 device:?];
LABEL_175:
            v235 = 0;
            v197 = [v229 resourceKey];
            v88 = [v197 UTF8String];
            asprintf(&v235, "Metadata ill-defined for key %s, provider type %d", v88, [v32 provider]);

            v198 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v198, OS_LOG_TYPE_FAULT))
            {
              v88 = [v229 resourceKey];
              v199 = [v88 UTF8String];
              v200 = [v228 provider];
              v245 = 136315906;
              *v246 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v246[8] = 1024;
              *v247 = 245;
              *&v247[4] = 2080;
              *&v247[6] = v199;
              *&v247[14] = 1024;
              *&v247[16] = v200;
              _os_log_impl(&dword_25EA3A000, v198, OS_LOG_TYPE_FAULT, "%s:%d Metadata ill-defined for key %s, provider type %d", &v245, 0x22u);
            }

            v201 = OSLogFlushBuffers();
            if (!v201)
            {
              goto LABEL_151;
            }

            v88 = v201;
            v180 = __PLSLogSharedInstance();
            if (!os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          v151 = objc_loadWeakRetained(&v22->_sourceTask);
          v32 = [v151 metadataBufferPool];

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

          v154 = [v32 count];
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
              *&v156[8 * v158] = [v32 objectAtIndex:v158];
              ++v158;
            }

            while (v155 != v158);
          }

          v125 = v225;
          ps_buffer_writer_camerastream_install_metadata_bufferpool(v225, v156);

          v22 = v220;
          v32 = v228;
        }

        if (v22->_synchronizer)
        {
          if (v60)
          {
            v159 = [v60 unsignedLongValue];
          }

          else
          {
            v159 = 156;
          }

          if (v221)
          {
            v160 = [v221 unsignedLongValue];
          }

          else
          {
            v160 = 156;
          }

          v125 = v225;
          if (*(*(v225 + 21) + 24))
          {
            ps_synchronizer_register_writer(v22->_synchronizer, v225, v159, v160);
          }

          v161 = v222->var3;
          v162 = var2;
          var1[v161] = v159;
          *&v162[8 * v161] = v160;
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

  if (v214)
  {
    v165 = objc_loadWeakRetained(&v22->_sourceTask);
    [v165 setSourceTaskData:v222];

    v166 = objc_loadWeakRetained(&v22->_sourceTask);
    [v166 setResources:v22->_outputs];

    v167 = objc_loadWeakRetained(&v22->_sourceTask);
    [v167 setSourceTaskFunction:source_writer_func];

    v168 = v212;
  }

  else
  {
    v169 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    v22->_localSourceTaskData = v169;
    objc_storeWeak(v169, v22);
    v168 = v212;
    objc_storeWeak(v169 + 1, v212);
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