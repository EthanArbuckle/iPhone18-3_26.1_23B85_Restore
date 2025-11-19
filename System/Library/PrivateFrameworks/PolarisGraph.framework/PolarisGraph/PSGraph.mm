@interface PSGraph
- (NSNumber)systemPulseStride;
- (PSGraph)initWithName:(id)a3 criticality:(unint64_t)a4 frequency:(unint64_t)a5 tag:(id)a6;
- (PSGraph)initWithName:(id)a3 tag:(id)a4;
- (id)IOSurfacesForResourceKey:(id)a3 error:(id *)a4;
- (id)JSONObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getExternalInputs;
- (id)producedResources;
- (id)waitResources;
- (unint64_t)frequency;
- (unint64_t)resolvedFrequency;
- (void)dealloc;
- (void)setCriticality:(unint64_t)a3;
- (void)setFrequency:(unint64_t)a3;
- (void)setMinInterval:(id *)a3;
- (void)setResolvedInterval:(id *)a3;
- (void)setSyncDataContext:(ps_sync_context_s *)a3;
- (void)setWorkloadWaitFunction:(void *)a3 withContext:(void *)a4;
@end

@implementation PSGraph

- (PSGraph)initWithName:(id)a3 tag:(id)a4
{
  v6 = a4;
  v7 = [(PSGraph *)self initWithName:a3];
  tag = v7->_tag;
  v7->_tag = v6;

  return v7;
}

- (PSGraph)initWithName:(id)a3 criticality:(unint64_t)a4 frequency:(unint64_t)a5 tag:(id)a6
{
  v11 = a3;
  v12 = a6;
  v36.receiver = self;
  v36.super_class = PSGraph;
  v13 = [(PSGraph *)&v36 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableTasks = v14->_mutableTasks;
    v14->_mutableTasks = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableSourceTasks = v14->_mutableSourceTasks;
    v14->_mutableSourceTasks = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableReaders = v14->_mutableReaders;
    v14->_mutableReaders = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableWriters = v14->_mutableWriters;
    v14->_mutableWriters = v21;

    objc_storeStrong(&v14->_tag, a6);
    v23 = MEMORY[0x277CC08A0];
    *&v14->_minInterval.value = *MEMORY[0x277CC08A0];
    v14->_minInterval.epoch = *(v23 + 16);
    resolvedDomain = v14->_resolvedDomain;
    v14->_resolvedDomain = 0;

    v14->_maxThreadPoolSize = -1;
    [(PSGraph *)v14 setCriticality:a4];
    [(PSGraph *)v14 setFrequency:a5];
    v14->_workloadWait = 0;
    offset = v14->_offset;
    v14->_offset = &unk_2870D93D0;

    v14->_workloadWaitContext = 0;
    memset(v33, 0, sizeof(v33));
    v34 = 0u;
    v35 = 0;
    __copy_assignment_8_8_t0w40_s40_s48(&v14->_context, v33);
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    writerInsts = v14->_context.writerInsts;
    v14->_context.writerInsts = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    readerInsts = v14->_context.readerInsts;
    v14->_context.readerInsts = v28;

    v14->_ANEPriority = -1;
    v30 = [MEMORY[0x277CBEB38] dictionary];
    mutableResourceInfo = v14->_mutableResourceInfo;
    v14->_mutableResourceInfo = v30;

    v14->_needsLiveness = 1;
    v14->_threadPoolSize = 1;
  }

  return v14;
}

- (void)dealloc
{
  writerInsts = self->_context.writerInsts;
  self->_context.writerInsts = 0;

  readerInsts = self->_context.readerInsts;
  self->_context.readerInsts = 0;

  v5.receiver = self;
  v5.super_class = PSGraph;
  [(PSGraph *)&v5 dealloc];
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"..<%@: %@>", objc_opt_class(), self->_name];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_mutableTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"\n%@", *(*(&v11 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)frequency
{
  v3 = [(PSGraphFrequency *)self->_graphFrequency type];
  graphFrequency = self->_graphFrequency;
  if (v3)
  {
    if ([(PSGraphFrequency *)graphFrequency type]!= 3)
    {
      return 0;
    }

    graphFrequency = self->_graphFrequency;
  }

  return [(PSGraphFrequency *)graphFrequency frequency];
}

- (void)setFrequency:(unint64_t)a3
{
  v4 = [PSGraphFrequencyFixed fixedFrequency:a3];
  graphFrequency = self->_graphFrequency;
  self->_graphFrequency = v4;

  MEMORY[0x2821F96F8]();
}

- (unint64_t)resolvedFrequency
{
  if ((self->_resolvedInterval.flags & 0x1D) == 1)
  {
    return vcvtmd_u64_f64(self->_resolvedInterval.timescale / self->_resolvedInterval.value);
  }

  else
  {
    return 0;
  }
}

- (NSNumber)systemPulseStride
{
  if ([(PSGraph *)self resolvedFrequency])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{0x5A / -[PSGraph resolvedFrequency](self, "resolvedFrequency")}];
  }

  else
  {
    v4 = [(PSGraph *)self graphFrequency];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = [(PSGraph *)self graphFrequency];
      v3 = [v6 numberWithUnsignedInt:{objc_msgSend(v7, "systemPulseStride")}];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setCriticality:(unint64_t)a3
{
  [(PSGraph *)self setCriticalityCPU:?];
  [(PSGraph *)self setCriticalityGPU:a3];

  [(PSGraph *)self setCriticalityANE:a3];
}

- (id)getExternalInputs
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v50 = self;
  v4 = self->_mutableTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v77;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v77 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v76 + 1) + 8 * i);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v10 = [v9 outputs];
        v11 = [v10 countByEnumeratingWithState:&v72 objects:v85 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v73;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v73 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v72 + 1) + 8 * j) resourceKey];
              [v3 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v72 objects:v85 count:16];
          }

          while (v12);
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v6);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v16 = v50->_mutableSourceTasks;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v69;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v69 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v68 + 1) + 8 * k);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v22 = [v21 outputs];
        v23 = [v22 countByEnumeratingWithState:&v64 objects:v83 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v65;
          do
          {
            for (m = 0; m != v24; ++m)
            {
              if (*v65 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v64 + 1) + 8 * m) resourceKey];
              [v3 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v64 objects:v83 count:16];
          }

          while (v24);
        }
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v18);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v28 = v50->_mutableWriters;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v60 objects:v82 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v61;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v61 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v60 + 1) + 8 * n) output];
        v34 = [v33 resourceKey];
        [v3 addObject:v34];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v60 objects:v82 count:16];
    }

    while (v30);
  }

  v35 = [MEMORY[0x277CBEB18] array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v50->_mutableTasks;
  v51 = [(NSMutableArray *)obj countByEnumeratingWithState:&v56 objects:v81 count:16];
  if (v51)
  {
    v49 = *v57;
    do
    {
      for (ii = 0; ii != v51; ++ii)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v56 + 1) + 8 * ii);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v38 = [v37 inputs];
        v39 = [v38 countByEnumeratingWithState:&v52 objects:v80 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v53;
          do
          {
            for (jj = 0; jj != v40; ++jj)
            {
              if (*v53 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v52 + 1) + 8 * jj);
              v44 = [v43 resourceKey];
              v45 = [v3 containsObject:v44];

              if ((v45 & 1) == 0)
              {
                [v35 addObject:v43];
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v52 objects:v80 count:16];
          }

          while (v40);
        }
      }

      v51 = [(NSMutableArray *)obj countByEnumeratingWithState:&v56 objects:v81 count:16];
    }

    while (v51);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)waitResources
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(PSGraph *)self tasks];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v8 inputs];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if (![v14 type])
              {
                v15 = [v14 resourceKey];

                if (v15)
                {
                  v16 = [v14 resourceKey];
                  [v3 addObject:v16];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)producedResources
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v4 = [(PSGraph *)self writers];
  v5 = [v4 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v62;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v61 + 1) + 8 * i);
        v10 = [v9 output];
        v11 = [v10 resourceKey];

        if (v11)
        {
          v12 = [v9 output];
          v13 = [v12 resourceKey];
          [v3 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v6);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = self;
  obj = [(PSGraph *)self sourceTasks];
  v14 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v58;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v58 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v57 + 1) + 8 * j);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v19 = [v18 outputs];
        v20 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v54;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v54 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v53 + 1) + 8 * k);
              v25 = [v24 resourceKey];

              if (v25)
              {
                v26 = [v24 resourceKey];
                [v3 addObject:v26];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
          }

          while (v21);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v15);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obja = [(PSGraph *)v42 tasks];
  v27 = [obja countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v50;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v49 + 1) + 8 * m);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v32 = [v31 outputs];
        v33 = [v32 countByEnumeratingWithState:&v45 objects:v65 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v46;
          do
          {
            for (n = 0; n != v34; ++n)
            {
              if (*v46 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v45 + 1) + 8 * n);
              v38 = [v37 resourceKey];

              if (v38)
              {
                v39 = [v37 resourceKey];
                [v3 addObject:v39];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v45 objects:v65 count:16];
          }

          while (v34);
        }
      }

      v28 = [obja countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v28);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)IOSurfacesForResourceKey:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(PSGraph *)self executionContext][32])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [(PSGraph *)self name];
    v17 = [v15 stringWithFormat:@"%s can only be called after the transition which adds this graph (%@) (%p) has completed, key (%@)", "-[PSGraph IOSurfacesForResourceKey:error:]", v16, self, v6];

    v18 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v17;
      _os_log_impl(&dword_25EC85000, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!a4)
    {
      goto LABEL_43;
    }

    v19 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    v60 = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v21 = v19;
    v22 = -1;
    goto LABEL_42;
  }

  v7 = self;
  v8 = v6;
  v9 = [-[PSGraph executionContext](v7 "executionContext")[40]];

  if (v9)
  {
    v10 = [-[PSGraph executionContext](v7 "executionContext")[40]];
    v11 = [v10 pointerValue];

    v12 = __PSGraphLogSharedInstance();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        *buf = 136315906;
        v62 = "getWriterInstanceForGraphAndKey";
        v63 = 2048;
        v64 = v7;
        v65 = 2080;
        v66 = [v8 UTF8String];
        v67 = 2048;
        v68 = v11;
        _os_log_impl(&dword_25EC85000, v12, OS_LOG_TYPE_DEBUG, "%s: Found writer instance for graph %p key %s writerInst %p", buf, 0x2Au);
      }

      v14 = 0;
      goto LABEL_19;
    }

    if (v13)
    {
      *buf = 136315650;
      v62 = "getWriterInstanceForGraphAndKey";
      v63 = 2048;
      v64 = v7;
      v65 = 2080;
      v66 = [v8 UTF8String];
      _os_log_impl(&dword_25EC85000, v12, OS_LOG_TYPE_DEBUG, "%s: Failed to find writer instance for graph %p key %s", buf, 0x20u);
    }
  }

  v23 = v7;
  v24 = v8;
  v25 = [-[PSGraph executionContext](v23 "executionContext")[48]];

  if (!v25)
  {
LABEL_37:

    v48 = MEMORY[0x277CCACA8];
    v49 = [(PSGraph *)v23 name];
    v17 = [v48 stringWithFormat:@"%s: Key (%@) or writer/reader instance not found for graph (%@) (%p)", "-[PSGraph IOSurfacesForResourceKey:error:]", v24, v49, v23];

    v50 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v17;
      _os_log_impl(&dword_25EC85000, v50, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!a4)
    {
      goto LABEL_43;
    }

    v34 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v58 = v17;
    v35 = MEMORY[0x277CBEAC0];
    v36 = &v58;
    v37 = &v57;
LABEL_41:
    v20 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
    v21 = v34;
    v22 = -2;
LABEL_42:
    *a4 = [v21 errorWithDomain:@"com.apple.polarisgraph" code:v22 userInfo:v20];

LABEL_43:
    v43 = 0;
    goto LABEL_44;
  }

  v26 = [-[PSGraph executionContext](v23 "executionContext")[48]];
  v14 = [v26 pointerValue];

  v12 = __PSGraphLogSharedInstance();
  v27 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (!v14)
  {
    if (v27)
    {
      v47 = [v24 UTF8String];
      *buf = 136315650;
      v62 = "getReaderInstanceForGraphAndKey";
      v63 = 2048;
      v64 = v23;
      v65 = 2080;
      v66 = v47;
      _os_log_impl(&dword_25EC85000, v12, OS_LOG_TYPE_DEBUG, "%s: Failed to find reader instance for graph %p key %s", buf, 0x20u);
    }

    goto LABEL_37;
  }

  if (v27)
  {
    v28 = [v24 UTF8String];
    *buf = 136315906;
    v62 = "getReaderInstanceForGraphAndKey";
    v63 = 2048;
    v64 = v23;
    v65 = 2080;
    v66 = v28;
    v67 = 2048;
    v68 = v14;
    _os_log_impl(&dword_25EC85000, v12, OS_LOG_TYPE_DEBUG, "%s: Found reader instance for graph %p key %s readerInst %p", buf, 0x2Au);
  }

  v11 = 0;
LABEL_19:

  v29 = (-[PSGraph executionContext](v7, "executionContext")[16])(-[PSGraph executionContext](v7, "executionContext"), v11, v14, [v8 UTF8String]);
  if (v29 == -2)
  {
    v38 = MEMORY[0x277CCACA8];
    v39 = [(PSGraph *)v7 name];
    v17 = [v38 stringWithFormat:@"%s: Resource class not supported for key (%@), graph (%@) (%p)", "-[PSGraph IOSurfacesForResourceKey:error:]", v8, v39, v7];

    v40 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v17;
      _os_log_impl(&dword_25EC85000, v40, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!a4)
    {
      goto LABEL_43;
    }

    v34 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    v54 = v17;
    v35 = MEMORY[0x277CBEAC0];
    v36 = &v54;
    v37 = &v53;
    goto LABEL_41;
  }

  v30 = v29;
  if (v29 == -1)
  {
    v31 = MEMORY[0x277CCACA8];
    v32 = [(PSGraph *)v7 name];
    v17 = [v31 stringWithFormat:@"%s: Writer/reader instance not found for key (%@) graph (%@) (%p)", "-[PSGraph IOSurfacesForResourceKey:error:]", v8, v32, v7];

    v33 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v17;
      _os_log_impl(&dword_25EC85000, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!a4)
    {
      goto LABEL_43;
    }

    v34 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56 = v17;
    v35 = MEMORY[0x277CBEAC0];
    v36 = &v56;
    v37 = &v55;
    goto LABEL_41;
  }

  v41 = malloc_type_calloc(v29, 8uLL, 0x2004093837F09uLL);
  if (!v41)
  {
    [PSGraph IOSurfacesForResourceKey:error:];
  }

  v42 = v41;
  (-[PSGraph executionContext](v7, "executionContext")[24])(-[PSGraph executionContext](v7, "executionContext"), v11, v14, [v8 UTF8String], v41);
  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:v30];
  if (v30 >= 1)
  {
    v44 = v30;
    v45 = v42;
    do
    {
      v46 = *v45++;
      [v43 addObject:v46];
      --v44;
    }

    while (v44);
  }

  free(v42);
LABEL_44:

  v51 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithName:", self->_name}];
  v5 = *&self->_minInterval.value;
  *(v4 + 488) = self->_minInterval.epoch;
  *(v4 + 472) = v5;
  *(v4 + 360) = self->_maxThreadPoolSize;
  *(v4 + 368) = self->_maxCriticalityCPU;
  *(v4 + 376) = self->_maxCriticalityGPU;
  *(v4 + 384) = self->_maxCriticalityANE;
  *(v4 + 392) = self->_executionType;
  v6 = *&self->_resolvedInterval.value;
  *(v4 + 512) = self->_resolvedInterval.epoch;
  *(v4 + 496) = v6;
  *(v4 + 400) = self->_resolvedThreadPoolSize;
  *(v4 + 408) = self->_resolvedCriticalityCPU;
  *(v4 + 416) = self->_resolvedCriticalityGPU;
  *(v4 + 424) = self->_resolvedCriticalityANE;
  *(v4 + 432) = self->_resolvedDeadline;
  objc_storeStrong((v4 + 448), self->_resolvedDomain);
  v7 = [(PSGraph *)self resourceInfo];
  [v4 setResourceInfo:v7];

  *(v4 + 168) = self->_disableThreadSharing;
  *(v4 + 456) = self->_threadPoolID;
  *(v4 + 170) = self->_subgraph_idx;
  objc_storeStrong((v4 + 464), self->_currentSystemStride);
  objc_storeStrong((v4 + 184), self->_tag);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [(PSGraph *)self tasks];
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    do
    {
      v12 = 0;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v4 addTask:*(*(&v46 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v10);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = [(PSGraph *)self sourceTasks];
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      v17 = 0;
      do
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v4 addSourceTask:*(*(&v42 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v15);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = [(PSGraph *)self readers];
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      v22 = 0;
      do
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v4 addReader:*(*(&v38 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v20);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [(PSGraph *)self writers];
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      v27 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v4 addWriter:*(*(&v34 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v25);
  }

  objc_storeStrong((v4 + 192), self->_graphFrequency);
  *(v4 + 200) = *&self->_relativeDeadline;
  *(v4 + 216) = self->_criticalityCPU;
  *(v4 + 224) = self->_criticalityGPU;
  *(v4 + 232) = self->_criticalityANE;
  *(v4 + 240) = self->_teardownType;
  objc_storeStrong((v4 + 248), self->_cancellationTask);
  *(v4 + 256) = self->_init_function;
  *(v4 + 272) = self->_init_context;
  *(v4 + 264) = self->_deinit_function;
  *(v4 + 280) = self->_deinit_context;
  *(v4 + 288) = self->_workloadWait;
  *(v4 + 296) = self->_workloadWaitContext;
  v28 = *&self->_msg_context.msg_handle;
  *(v4 + 88) = *&self->_msg_context.populate_context_func;
  *(v4 + 72) = v28;
  v29 = *&self->_msg_context.sync_data[0].virtual_frame_id;
  v30 = *&self->_msg_context.sync_data[1].timestamp;
  v31 = *&self->_msg_context.sync_data[1].physical_frame_id;
  *(v4 + 152) = *&self->_msg_context.sync_data[2].virtual_frame_id;
  *(v4 + 136) = v31;
  *(v4 + 120) = v30;
  *(v4 + 104) = v29;
  v32 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setMinInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_minInterval.epoch = a3->var3;
  *&self->_minInterval.value = v3;
}

- (void)setResolvedInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_resolvedInterval.epoch = a3->var3;
  *&self->_resolvedInterval.value = v3;
}

- (void)setWorkloadWaitFunction:(void *)a3 withContext:(void *)a4
{
  [(PSGraph *)self setWorkloadWait:a3];

  [(PSGraph *)self setWorkloadWaitContext:a4];
}

- (void)setSyncDataContext:(ps_sync_context_s *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  asprintf(&v8, "Attempted to set sync context. This setter should never be called.", a3);
  v3 = __PSGraphLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "[PSGraph(WakeboardSPI) setSyncDataContext:]";
    v11 = 1024;
    v12 = 2069;
    _os_log_impl(&dword_25EC85000, v3, OS_LOG_TYPE_FAULT, "%s:%d Attempted to set sync context. This setter should never be called.", buf, 0x12u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[PSGraph(WakeboardSPI) setSyncDataContext:]";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EC85000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  ps_graph_get_sync_data(v7);
}

- (id)JSONObject
{
  v189 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PSGraph *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"graph_name"];

  v5 = [(PSGraph *)self tag];
  [v3 setObject:v5 forKeyedSubscript:@"graph_tag"];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(PSGraph *)self graphFrequency];
  v8 = [v6 stringWithUTF8String:{ps_graph_frequency_type_description(objc_msgSend(v7, "type"))}];
  [v3 setObject:v8 forKeyedSubscript:@"frequency_type"];

  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph frequency](self, "frequency")}];
  [v3 setObject:v10 forKeyedSubscript:@"frequency_requested"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph resolvedFrequency](self, "resolvedFrequency")}];
  [v3 setObject:v11 forKeyedSubscript:@"frequency_resolved"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph threadPoolSize](self, "threadPoolSize")}];
  [v3 setObject:v12 forKeyedSubscript:@"threads_requested"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph resolvedThreadPoolSize](self, "resolvedThreadPoolSize")}];
  [v3 setObject:v13 forKeyedSubscript:@"threads_resolved"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PSGraph relativeDeadline](self, "relativeDeadline")}];
  [v3 setObject:v14 forKeyedSubscript:@"deadline_requested"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph resolvedDeadline](self, "resolvedDeadline")}];
  [v3 setObject:v15 forKeyedSubscript:@"deadline_resolved"];

  v16 = [(PSGraph *)self resolvedDomain];
  v17 = [v16 description];
  [v3 setObject:v17 forKeyedSubscript:@"domain_resolved"];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_criticality_description(-[PSGraph criticalityCPU](self, "criticalityCPU"))}];
  [v3 setObject:v18 forKeyedSubscript:@"criticality_cpu"];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_criticality_description(-[PSGraph criticalityGPU](self, "criticalityGPU"))}];
  [v3 setObject:v19 forKeyedSubscript:@"criticality_gpu"];

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_criticality_description(-[PSGraph criticalityANE](self, "criticalityANE"))}];
  [v3 setObject:v20 forKeyedSubscript:@"criticality_ane"];

  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_ane_priority_description(-[PSGraph ANEPriority](self, "ANEPriority"))}];
  v135 = v3;
  [v3 setObject:v21 forKeyedSubscript:@"priority_ane"];

  v134 = self;
  v22 = [(PSGraph *)self resourceInfo];
  v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v22, "count")}];
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v24 = v22;
  v147 = [v24 countByEnumeratingWithState:&v174 objects:v188 count:16];
  if (v147)
  {
    v141 = v23;
    v144 = *v175;
    v139 = v24;
    do
    {
      for (i = 0; i != v147; ++i)
      {
        if (*v175 != v144)
        {
          objc_enumerationMutation(v24);
        }

        v26 = *(*(&v174 + 1) + 8 * i);
        v27 = [MEMORY[0x277CBEB38] dictionary];
        v28 = [v24 objectForKey:v26];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_resource_class_description(objc_msgSend(v28, "resourceClass"))}];
        [v27 setObject:v29 forKey:@"resource_class"];

        v30 = MEMORY[0x277CCACA8];
        [v28 options];
        v32 = [v30 stringWithUTF8String:ps_resource_creation_mode_description(v31)];
        [v27 setObject:v32 forKey:@"creation_mode"];

        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_resource_storage_mode_description(objc_msgSend(v28, "options"))}];
        [v27 setObject:v33 forKey:@"storage_mode"];

        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v28, "typeDescription")}];
        [v27 setObject:v34 forKey:@"type_descriptor"];

        v35 = [*(v9 + 2992) numberWithUnsignedInteger:{objc_msgSend(v28, "framerate")}];
        [v27 setObject:v35 forKey:@"frame_rate"];

        v36 = [v28 resourceClass];
        if (v36 <= 6)
        {
          if (v36 == 1)
          {
            goto LABEL_13;
          }

          if (v36 != 4)
          {
            if (v36 != 5)
            {
              goto LABEL_25;
            }

LABEL_13:
            v37 = [*(v9 + 2992) numberWithUnsignedLong:{objc_msgSend(v28, "length")}];
            [v27 setObject:v37 forKey:@"length"];

            goto LABEL_25;
          }

          v49 = v28;
          setPixelInfo(v27, [v49 width], objc_msgSend(v49, "height"), objc_msgSend(v49, "pixelFormat"));
          v50 = [v49 ioSurfaceProperties];

          if (v50)
          {
            v51 = [v49 ioSurfaceProperties];
            [v27 setObject:v51 forKey:@"properties"];
          }

          v24 = v139;
          v23 = v141;
        }

        else if (v36 > 8)
        {
          if (v36 == 9 || v36 == 11)
          {
LABEL_16:
            v38 = v28;
            setPixelInfo(v27, [v38 width], objc_msgSend(v38, "height"), objc_msgSend(v38, "pixelFormat"));
            v39 = [v38 provider];

            setProvider(v27, v39);
          }
        }

        else
        {
          if (v36 != 7)
          {
            goto LABEL_16;
          }

          v40 = v28;
          setPixelInfo(v27, [v40 width], objc_msgSend(v40, "height"), objc_msgSend(v40, "pixelFormat"));
          v41 = [v40 format];
          v42 = v41;
          if (v41)
          {
            v186[0] = @"is_unwarped";
            v43 = [*(v9 + 2992) numberWithBool:{objc_msgSend(v41, "isUnwarped")}];
            v187[0] = v43;
            v186[1] = @"is_rectified";
            v44 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v42, "isRectified")}];
            v187[1] = v44;
            v186[2] = @"is_pyramid";
            v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v42, "isPyramid")}];
            v187[2] = v45;
            v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:3];
            [v27 setObject:v46 forKey:@"camera_format"];

            v9 = 0x277CCA000;
          }

          setProvider(v27, [v40 provider]);
          v47 = [v40 ioSurfaceProperties];

          v24 = v139;
          if (v47)
          {
            v48 = [v40 ioSurfaceProperties];
            [v27 setObject:v48 forKey:@"properties"];
          }

          v23 = v141;
        }

LABEL_25:
        [v23 setObject:v27 forKey:v26];
      }

      v147 = [v24 countByEnumeratingWithState:&v174 objects:v188 count:16];
    }

    while (v147);
  }

  [v135 setObject:v23 forKeyedSubscript:@"resources"];
  v138 = [MEMORY[0x277CBEB18] array];
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  obj = [(PSGraph *)v134 tasks];
  v140 = [obj countByEnumeratingWithState:&v170 objects:v185 count:16];
  if (v140)
  {
    v137 = *v171;
    do
    {
      v52 = 0;
      do
      {
        if (*v171 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v142 = v52;
        v53 = *(*(&v170 + 1) + 8 * v52);
        v54 = [MEMORY[0x277CBEB38] dictionary];
        v55 = [v53 name];
        [v54 setObject:v55 forKeyedSubscript:@"task_name"];

        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_compute_agent_description(objc_msgSend(v53, "computeAgent"))}];
        [v54 setObject:v56 forKeyedSubscript:@"compute_agent"];

        v57 = [v53 segments];

        v145 = v53;
        v148 = v54;
        if (v57)
        {
          v58 = [MEMORY[0x277CBEB18] array];
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v169 = 0u;
          v59 = [v53 segments];
          v60 = [v59 countByEnumeratingWithState:&v166 objects:v184 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v167;
            do
            {
              for (j = 0; j != v61; ++j)
              {
                if (*v167 != v62)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = *(*(&v166 + 1) + 8 * j);
                v182[0] = @"segment_name";
                v65 = [v64 name];
                v183[0] = v65;
                v182[1] = @"compute_agent";
                v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_compute_agent_description(objc_msgSend(v64, "computeAgent"))}];
                v183[1] = v66;
                v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:2];
                [v58 addObject:v67];
              }

              v61 = [v59 countByEnumeratingWithState:&v166 objects:v184 count:16];
            }

            while (v61);
          }

          [v148 setObject:v58 forKeyedSubscript:@"segments"];
          v53 = v145;
        }

        else
        {
          [v54 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"segments"];
        }

        v68 = [MEMORY[0x277CBEB18] array];
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v69 = [v53 inputs];
        v70 = [v69 countByEnumeratingWithState:&v162 objects:v181 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v163;
          do
          {
            for (k = 0; k != v71; ++k)
            {
              if (*v163 != v72)
              {
                objc_enumerationMutation(v69);
              }

              v74 = *(*(&v162 + 1) + 8 * k);
              v75 = [MEMORY[0x277CBEB38] dictionary];
              v76 = [v74 resourceKey];
              [v75 setObject:v76 forKeyedSubscript:@"input_name"];

              v77 = [v74 resolvedResourceKey];
              [v75 setObject:v77 forKeyedSubscript:@"resolved_input_name"];

              v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_input_type_description(objc_msgSend(v74, "type"))}];
              [v75 setObject:v78 forKeyedSubscript:@"input_type"];

              v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v74, "capacity")}];
              [v75 setObject:v79 forKeyedSubscript:@"input_capacity"];

              v80 = [v74 sourceInputResourceKey];

              if (v80)
              {
                v81 = [v74 sourceInputResourceKey];
                [v75 setObject:v81 forKeyedSubscript:@"input_source_name"];
              }

              else
              {
                [v75 setObject:&stru_2870D2A60 forKeyedSubscript:@"input_source_name"];
              }

              if ([v74 bufferExpiryOffset] != -1)
              {
                v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v74, "bufferExpiryOffset")}];
                [v75 setObject:v82 forKeyedSubscript:@"buffer_expiry_offset"];
              }

              [v68 addObject:v75];
            }

            v71 = [v69 countByEnumeratingWithState:&v162 objects:v181 count:16];
          }

          while (v71);
        }

        [v148 setObject:v68 forKeyedSubscript:@"inputs"];
        v83 = [v145 outputs];
        v84 = [v83 arrayByApplyingSelector:sel_resourceKey];
        [v148 setObject:v84 forKeyedSubscript:@"outputs"];

        v85 = [v145 waitBarriers];
        v86 = [v85 arrayByApplyingSelector:sel_name];
        [v148 setObject:v86 forKeyedSubscript:@"wait_barriers"];

        v87 = [v145 updateBarriers];
        v88 = [v87 arrayByApplyingSelector:sel_name];
        [v148 setObject:v88 forKeyedSubscript:@"update_barriers"];

        [v138 addObject:v148];
        v52 = v142 + 1;
      }

      while (v142 + 1 != v140);
      v140 = [obj countByEnumeratingWithState:&v170 objects:v185 count:16];
    }

    while (v140);
  }

  [v135 setObject:v138 forKeyedSubscript:@"tasks"];
  v149 = [MEMORY[0x277CBEB18] array];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v89 = [(PSGraph *)v134 sourceTasks];
  v90 = [v89 countByEnumeratingWithState:&v158 objects:v180 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v159;
    do
    {
      for (m = 0; m != v91; ++m)
      {
        if (*v159 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v158 + 1) + 8 * m);
        v95 = [MEMORY[0x277CBEB38] dictionary];
        v96 = [v94 name];
        [v95 setObject:v96 forKeyedSubscript:@"source_task_name"];

        v97 = [v94 outputs];
        v98 = [v97 arrayByApplyingSelector:sel_resourceKey];
        [v95 setObject:v98 forKeyedSubscript:@"outputs"];

        [v149 addObject:v95];
      }

      v91 = [v89 countByEnumeratingWithState:&v158 objects:v180 count:16];
    }

    while (v91);
  }

  [v135 setObject:v149 forKeyedSubscript:@"source_tasks"];
  v146 = [MEMORY[0x277CBEB18] array];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v143 = [(PSGraph *)v134 readers];
  v99 = [v143 countByEnumeratingWithState:&v154 objects:v179 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v155;
    do
    {
      for (n = 0; n != v100; ++n)
      {
        if (*v155 != v101)
        {
          objc_enumerationMutation(v143);
        }

        v103 = *(*(&v154 + 1) + 8 * n);
        v104 = [MEMORY[0x277CBEB38] dictionary];
        v105 = [v103 name];
        [v104 setObject:v105 forKeyedSubscript:@"reader_name"];

        v106 = [v103 input];
        v107 = [v106 resourceKey];
        [v104 setObject:v107 forKeyedSubscript:@"input_name"];

        v108 = [v103 input];
        v109 = [v108 resolvedResourceKey];
        [v104 setObject:v109 forKeyedSubscript:@"resolved_input_name"];

        v110 = MEMORY[0x277CCACA8];
        v111 = [v103 input];
        v112 = [v110 stringWithUTF8String:{ps_input_type_description(objc_msgSend(v111, "type"))}];
        [v104 setObject:v112 forKeyedSubscript:@"input_type"];

        v113 = MEMORY[0x277CCABB0];
        v114 = [v103 input];
        v115 = [v113 numberWithUnsignedInteger:{objc_msgSend(v114, "capacity")}];
        [v104 setObject:v115 forKeyedSubscript:@"input_capacity"];

        v116 = [v103 input];
        v117 = [v116 bufferExpiryOffset];

        if (v117 != -1)
        {
          v118 = MEMORY[0x277CCABB0];
          v119 = [v103 input];
          v120 = [v118 numberWithUnsignedLongLong:{objc_msgSend(v119, "bufferExpiryOffset")}];
          [v104 setObject:v120 forKeyedSubscript:@"buffer_expiry_offset"];
        }

        [v146 addObject:v104];
      }

      v100 = [v143 countByEnumeratingWithState:&v154 objects:v179 count:16];
    }

    while (v100);
  }

  [v135 setObject:v146 forKeyedSubscript:@"readers"];
  v121 = [MEMORY[0x277CBEB18] array];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v122 = [(PSGraph *)v134 writers];
  v123 = [v122 countByEnumeratingWithState:&v150 objects:v178 count:16];
  if (v123)
  {
    v124 = v123;
    v125 = *v151;
    do
    {
      for (ii = 0; ii != v124; ++ii)
      {
        if (*v151 != v125)
        {
          objc_enumerationMutation(v122);
        }

        v127 = *(*(&v150 + 1) + 8 * ii);
        v128 = [MEMORY[0x277CBEB38] dictionary];
        v129 = [v127 name];
        [v128 setObject:v129 forKeyedSubscript:@"writer_name"];

        v130 = [v127 output];
        v131 = [v130 resourceKey];
        [v128 setObject:v131 forKeyedSubscript:@"output"];

        [v121 addObject:v128];
      }

      v124 = [v122 countByEnumeratingWithState:&v150 objects:v178 count:16];
    }

    while (v124);
  }

  [v135 setObject:v121 forKeyedSubscript:@"writers"];
  v132 = *MEMORY[0x277D85DE8];

  return v135;
}

@end