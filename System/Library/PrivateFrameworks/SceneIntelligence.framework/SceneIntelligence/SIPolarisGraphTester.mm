@interface SIPolarisGraphTester
- (BOOL)addGraphInputResourceStreamWithParameters:(id)parameters;
- (BOOL)commitInputResourceGraphs;
- (BOOL)commitTargetGraph:(id)graph;
- (BOOL)finalizeAndSubmitGraphs;
- (BOOL)runGraph;
- (BOOL)setDataInputForResourceKey:(id)key data:(void *)data;
- (BOOL)setupResourceStreamsByAttributes:(id)attributes;
- (SIPolarisGraphTester)init;
- (ps_resource)getResourceForName:(id)name;
- (void)copyData:(void *)data toResource:(ps_resource *)resource;
- (void)dealloc;
- (void)setupTargetGraphWithGraphProvider:(id)provider;
@end

@implementation SIPolarisGraphTester

- (SIPolarisGraphTester)init
{
  v15.receiver = self;
  v15.super_class = SIPolarisGraphTester;
  v2 = [(SIPolarisGraphTester *)&v15 init];
  if (v2)
  {
    initForLocalReplay = [objc_alloc(MEMORY[0x277D3E660]) initForLocalReplay];
    session = v2->_session;
    v2->_session = initForLocalReplay;

    context = [(PSExecutionSession *)v2->_session context];
    context = v2->_context;
    v2->_context = context;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputResourceSetters = v2->_inputResourceSetters;
    v2->_inputResourceSetters = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    realityCameraMetadata = v2->_realityCameraMetadata;
    v2->_realityCameraMetadata = v9;

    v11 = objc_alloc_init(SIPolarisGraphTesterProbeData);
    probeData = v2->_probeData;
    v2->_probeData = v11;

    v2->_surfaceSerialCount = 0;
    v13 = v2;
  }

  return v2;
}

- (void)setupTargetGraphWithGraphProvider:(id)provider
{
  v4 = [provider graphWithContext:self->_context];
  graph = self->_graph;
  self->_graph = v4;

  [(PSGraph *)self->_graph setFrequency:1];
  v6 = self->_graph;

  [(PSGraph *)v6 setCriticalityCPU:2];
}

- (BOOL)setupResourceStreamsByAttributes:(id)attributes
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [attributes objectForKey:@"input_resource"];
  v4 = v3;
  if (v3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = @"resource_key";
      v8 = @"parameter";
      v29 = *v31;
      v27 = v4;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v31 != v29)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [v4 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
          v11 = [v10 objectForKeyedSubscript:v7];
          v12 = [v10 objectForKeyedSubscript:v8];
          v13 = [v12 objectForKeyedSubscript:@"type"];
          v14 = [v13 isEqualToString:@"pixel_buffer"];

          if (v14)
          {
            v15 = v6;
            v16 = v8;
            v17 = v7;
            v18 = objc_alloc_init(SIPolarisGraphTesterPixelBufferParameters);
            [(SIPolarisGraphTesterPixelBufferParameters *)v18 setResourceKey:v11];
            v19 = [v12 objectForKeyedSubscript:@"width"];
            -[SIPolarisGraphTesterPixelBufferParameters setWidth:](v18, "setWidth:", [v19 intValue]);

            v20 = [v12 objectForKeyedSubscript:@"height"];
            -[SIPolarisGraphTesterPixelBufferParameters setHeight:](v18, "setHeight:", [v20 intValue]);

            v21 = [v12 objectForKeyedSubscript:@"format"];
            v22 = [v21 isEqualToString:@"32BGRA"];

            if (v22)
            {
              [(SIPolarisGraphTesterPixelBufferParameters *)v18 setFormat:1111970369];
            }

            v23 = [v12 objectForKeyedSubscript:@"use_384_stride"];
            -[SIPolarisGraphTesterPixelBufferParameters setUse384Stride:](v18, "setUse384Stride:", [v23 BOOLValue]);

            [(SIPolarisGraphTester *)self addGraphInputResourceStreamWithParameters:v18];
            v7 = v17;
            v8 = v16;
            v6 = v15;
            v4 = v27;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v24 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTester.m";
      v37 = 1025;
      v38 = 101;
      _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** input attribute does not have the setting for resource streams! ***", buf, 0x12u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (BOOL)addGraphInputResourceStreamWithParameters:(id)parameters
{
  v21 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  resourceKey = [parametersCopy resourceKey];
  context = self->_context;
  streamFromParameters = [parametersCopy streamFromParameters];

  [(PSContext *)context addResourceStream:streamFromParameters];
  v8 = objc_alloc_init(SIPolarisGraphTesterInputResourceSetter);
  v9 = [objc_alloc(MEMORY[0x277D3E6E0]) initWithResourceKey:resourceKey];
  v10 = objc_alloc(MEMORY[0x277D3E6E8]);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"producer_writer_%@", resourceKey];
  v12 = [v10 initWithName:v11 withOutput:v9];
  [(SIPolarisGraphTesterInputResourceSetter *)v8 setWriter:v12];

  writer = [(SIPolarisGraphTesterInputResourceSetter *)v8 writer];

  if (writer)
  {
    [(NSMutableDictionary *)self->_inputResourceSetters setObject:v8 forKeyedSubscript:resourceKey];
  }

  else
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTester.m";
      v19 = 1025;
      v20 = 131;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed: Null Writer ***", buf, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return writer != 0;
}

- (BOOL)finalizeAndSubmitGraphs
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"producer_graph"];
  [v3 setFrequency:{-[PSGraph frequency](self->_graph, "frequency")}];
  [v3 setRelativeDeadline:{0x3B9ACA00uLL / objc_msgSend(v3, "frequency")}];
  [v3 setCriticalityCPU:2];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = self->_inputResourceSetters;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v47;
    do
    {
      v8 = 0;
      do
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:*(*(&v46 + 1) + 8 * v8)];
        writer = [v9 writer];
        [v3 addWriter:writer];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v6);
  }

  v34 = v3;

  v32 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"verification_prober"];
  [v32 setFrequency:{-[PSGraph frequency](self->_graph, "frequency")}];
  v11 = [objc_alloc(MEMORY[0x277D3E6D0]) initWithName:@"probeTask"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  obj = [(PSGraph *)self->_graph tasks];
  v12 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v36 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * v14);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        outputs = [v15 outputs];
        v17 = [outputs countByEnumeratingWithState:&v38 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v39;
          do
          {
            v20 = 0;
            do
            {
              if (*v39 != v19)
              {
                objc_enumerationMutation(outputs);
              }

              v21 = *(*(&v38 + 1) + 8 * v20);
              v22 = objc_alloc(MEMORY[0x277D3E6D8]);
              resourceKey = [v21 resourceKey];
              v24 = [v22 initWithResourceKey:resourceKey type:0 capacity:1];

              [v11 addInput:v24];
              ++v20;
            }

            while (v18 != v20);
            v18 = [outputs countByEnumeratingWithState:&v38 objects:v51 count:16];
          }

          while (v18);
        }

        ++v14;
      }

      while (v14 != v13);
      v13 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v13);
  }

  [v11 setFunction:tester_probe_task userdata:selfCopy->_probeData];
  [v32 addTask:v11];
  v25 = objc_alloc(MEMORY[0x277CBEB98]);
  v50[0] = selfCopy->_graph;
  v50[1] = v34;
  v50[2] = v32;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
  v27 = [v25 initWithArray:v26];

  session = selfCopy->_session;
  v37 = 0;
  v29 = [(PSExecutionSession *)session commitAddedGraphs:v27 removedGraphs:0 option:1 error:&v37];

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)commitTargetGraph:(id)graph
{
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v26 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"verification_prober"];
  [v26 setFrequency:{objc_msgSend(graphCopy, "frequency")}];
  v4 = [objc_alloc(MEMORY[0x277D3E6D0]) initWithName:@"probeTask"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [graphCopy tasks];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v28 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        outputs = [v8 outputs];
        v10 = [outputs countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(outputs);
              }

              v14 = *(*(&v30 + 1) + 8 * j);
              v15 = objc_alloc(MEMORY[0x277D3E6D8]);
              resourceKey = [v14 resourceKey];
              v17 = [v15 initWithResourceKey:resourceKey type:0 capacity:1];

              [v4 addInput:v17];
            }

            v11 = [outputs countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  [v4 setFunction:tester_probe_task userdata:selfCopy->_probeData];
  [v26 addTask:v4];
  v18 = objc_alloc(MEMORY[0x277CBEB98]);
  v38[0] = graphCopy;
  v38[1] = v26;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v20 = [v18 initWithArray:v19];

  session = selfCopy->_session;
  v29 = 0;
  v22 = [(PSExecutionSession *)session commitAddedGraphs:v20 removedGraphs:0 option:1 error:&v29];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)commitInputResourceGraphs
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"producer_graph"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_inputResourceSetters;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v8)];
        writer = [v9 writer];
        [v3 addWriter:writer];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  [v3 setFrequency:1];
  [v3 setRelativeDeadline:{0x3B9ACA00uLL / objc_msgSend(v3, "frequency")}];
  [v3 setCriticalityCPU:2];
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v23 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v13 = [v11 initWithArray:v12];

  session = self->_session;
  v18 = 0;
  v15 = [(PSExecutionSession *)session commitAddedGraphs:v13 removedGraphs:0 option:1 error:&v18];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)setDataInputForResourceKey:(id)key data:(void *)data
{
  keyCopy = key;
  v7 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKey:keyCopy];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:keyCopy];
    [v8 setData:data];
  }

  return v7 != 0;
}

- (BOOL)runGraph
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_inputResourceSetters;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8, v20];
        writer = [v9 writer];
        [writer context];
        ps_writer_acquire();

        v11 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8];
        data = [v11 data];
        [(SIPolarisGraphTester *)self copyData:data toResource:v24];

        v13 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8];
        writer2 = [v13 writer];
        [writer2 context];
        ps_writer_relinquish();

        v15 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8];
        writer3 = [v15 writer];
        [writer3 context];
        ++self->_surfaceSerialCount;
        ps_writer_publish();
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  probeGraphSem = [(SIPolarisGraphTesterProbeData *)self->_probeData probeGraphSem];
  dispatch_semaphore_wait(probeGraphSem, 0xFFFFFFFFFFFFFFFFLL);

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)copyData:(void *)data toResource:(ps_resource *)resource
{
  v27 = *MEMORY[0x277D85DE8];
  if (!data)
  {
    v8 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTester.m";
      v23 = 1025;
      v24 = 256;
      v25 = 2081;
      key = ps_resource_get_key();
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Warning: trying to copy nil data for polaris resource [%{private}s]. Ignored ***", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v5 = ps_resource_get_class();
  if (v5 == 1)
  {
    *buf = 0;
    ps_resource_get_data();
    goto LABEL_17;
  }

  if (v5 != 2)
  {
    if (v5 == 7)
    {
      pixelbuffer = ps_resource_get_pixelbuffer();
      v7 = *MEMORY[0x277D85DE8];

      SIPixelBufferCopy(data, pixelbuffer);
      return;
    }

LABEL_17:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v21 = ps_resource_get_object();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataCopy = data;
    v10 = v21;
    SIPixelBufferCopy([dataCopy depthMap], objc_msgSend(v10, "depthMap"));
    SIPixelBufferCopy([dataCopy normalsBuffer], objc_msgSend(v10, "normalsBuffer"));
    [dataCopy deviceTransform];
    [v10 setDeviceTransform:?];
    [dataCopy extrinsicsToAppNode];
    v19 = v12;
    v20 = v11;
    v17 = v14;
    v18 = v13;

    [v10 setExtrinsicsToAppNode:{v20, v19, v18, v17}];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (ps_resource)getResourceForName:(id)name
{
  probeData = self->_probeData;
  nameCopy = name;
  resourceData = [(SIPolarisGraphTesterProbeData *)probeData resourceData];
  v6 = [resourceData objectForKeyedSubscript:nameCopy];

  resource = [v6 resource];
  return resource;
}

- (void)dealloc
{
  session = self->_session;
  v6 = 0;
  [(PSExecutionSession *)session stopAllGraphs:1 error:&v6];
  v4 = v6;
  [(PSExecutionSession *)self->_session deleteSession];

  v5.receiver = self;
  v5.super_class = SIPolarisGraphTester;
  [(SIPolarisGraphTester *)&v5 dealloc];
}

@end