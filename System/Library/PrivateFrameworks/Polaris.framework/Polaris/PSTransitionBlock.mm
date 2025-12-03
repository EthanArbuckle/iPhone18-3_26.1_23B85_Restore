@interface PSTransitionBlock
+ (const)stringWithGraphFrequencyType:(unint64_t)type;
+ (id)generateTransitionBlockWithAddedGraphs:(id)graphs withRemovedGraphs:(id)removedGraphs withDashboard:(id)dashboard withStopOption:(BOOL)option;
- (void)printGraph:(id)graph context:(id)context printResolvedFieldsOnly:(BOOL)only;
- (void)printGraphsSummary;
@end

@implementation PSTransitionBlock

- (void)printGraphsSummary
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "----------------------- Added Graphs -----------------------", buf, 2u);
  }

  if ([(NSSet *)self->_addedGraphs count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = self->_addedGraphs;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v5)
    {
      v6 = v5;
      selfCopy = self;
      v7 = *v45;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v45 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v44 + 1) + 8 * i);
          v10 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            name = [v9 name];
            *buf = 138478083;
            v51 = name;
            v52 = 2048;
            v53 = v9;
            _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "%{private}@: %p", buf, 0x16u);
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v6);
      self = selfCopy;
    }
  }

  else
  {
    v4 = __PLSLogSharedInstance();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, &v4->super, OS_LOG_TYPE_DEFAULT, "None", buf, 2u);
    }
  }

  v12 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "---------------------- Removed Graphs ----------------------", buf, 2u);
  }

  if ([(NSSet *)self->_removedGraphs count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = self->_removedGraphs;
    v14 = [(NSSet *)v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      selfCopy2 = self;
      v16 = *v41;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v40 + 1) + 8 * j);
          v19 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v18 name];
            *buf = 138478083;
            v51 = name2;
            v52 = 2048;
            v53 = v18;
            _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEFAULT, "%{private}@: %p", buf, 0x16u);
          }
        }

        v15 = [(NSSet *)v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v15);
      self = selfCopy2;
    }
  }

  else
  {
    v13 = __PLSLogSharedInstance();
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, &v13->super, OS_LOG_TYPE_DEFAULT, "None", buf, 2u);
    }
  }

  v21 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "----------------------- Common Graphs ----------------------", buf, 2u);
  }

  v22 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:self->_preTransitionGraphs];
  [v22 intersectSet:self->_postTransitionGraphs];
  if ([v22 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v35 = v22;
      v26 = *v37;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v36 + 1) + 8 * k);
          v29 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [v28 name];
            *buf = 138478083;
            v51 = name3;
            v52 = 2048;
            v53 = v28;
            _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEFAULT, "%{private}@: %p", buf, 0x16u);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v25);
      v22 = v35;
    }
  }

  else
  {
    v23 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "None", buf, 2u);
    }
  }

  v31 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "------------------------------------------------------------", buf, 2u);
  }

  v32 = *MEMORY[0x277D85DE8];
}

+ (const)stringWithGraphFrequencyType:(unint64_t)type
{
  if (type < 4)
  {
    return off_279A48780[type];
  }

  v11[1] = v3;
  v11[2] = v4;
  v6 = [(PSTransitionBlock *)v11 stringWithGraphFrequencyType:type];
  [(PSTransitionBlock *)v6 printGraph:v7 context:v8 printResolvedFieldsOnly:v9, v10];
  return result;
}

- (void)printGraph:(id)graph context:(id)context printResolvedFieldsOnly:(BOOL)only
{
  onlyCopy = only;
  v267 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  v175 = graphCopy;
  if (onlyCopy)
  {
    graphFrequency = [graphCopy graphFrequency];
    type = [graphFrequency type];

    log = __PLSLogSharedInstance();
    v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (type)
    {
      if (v11)
      {
        name = [v175 name];
        resolvedDomain = [v175 resolvedDomain];
        v14 = [resolvedDomain key];
        graphFrequency2 = [v175 graphFrequency];
        *buf = 138413314;
        *v260 = name;
        *&v260[8] = 2048;
        *&v260[10] = v175;
        *&v260[18] = 2112;
        *&v260[20] = v14;
        v261 = 2080;
        frequency = +[PSTransitionBlock stringWithGraphFrequencyType:](PSTransitionBlock, "stringWithGraphFrequencyType:", [graphFrequency2 type]);
        v263 = 2048;
        resolvedFrequency = [v175 resolvedFrequency];
        _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_DEFAULT, "Graph %@: %p (domain: %@) [Frequency: %s (%lu fps)]", buf, 0x34u);

        v16 = v175;
LABEL_200:

        goto LABEL_202;
      }
    }

    else if (v11)
    {
      name = [v175 name];
      resolvedDomain2 = [v175 resolvedDomain];
      v169 = [resolvedDomain2 key];
      *buf = 138412802;
      *v260 = name;
      *&v260[8] = 2048;
      *&v260[10] = v175;
      *&v260[18] = 2112;
      *&v260[20] = v169;
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_DEFAULT, "Graph %@: %p (domain: %@)", buf, 0x20u);

      v16 = v175;
      goto LABEL_200;
    }

    v16 = v175;
    goto LABEL_202;
  }

  v17 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [graphCopy name];
    graphFrequency3 = [v175 graphFrequency];
    *buf = 138413571;
    *v260 = name2;
    *&v260[8] = 2048;
    *&v260[10] = v175;
    *&v260[18] = 2080;
    *&v260[20] = +[PSTransitionBlock stringWithGraphFrequencyType:](PSTransitionBlock, "stringWithGraphFrequencyType:", [graphFrequency3 type]);
    v261 = 2049;
    frequency = [v175 frequency];
    v263 = 2049;
    resolvedFrequency = [v175 criticalityCPU];
    v265 = 2048;
    resolvedThreadPoolSize = [v175 resolvedThreadPoolSize];
    _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "Graph %@: %p [Frequency Type: %s] [FPS: %{private}lu] [CPU Criticality: %{private}lu] [Thread Pool Size: %lu]", buf, 0x3Eu);

    graphCopy = v175;
  }

  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  obj = [graphCopy tasks];
  v174 = [obj countByEnumeratingWithState:&v242 objects:v258 count:16];
  if (v174)
  {
    v173 = *v243;
    *&v20 = 138412290;
    v171 = v20;
    do
    {
      v21 = 0;
      do
      {
        if (*v243 != v173)
        {
          objc_enumerationMutation(obj);
        }

        loga = v21;
        v22 = *(*(&v242 + 1) + 8 * v21);
        v23 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [v22 name];
          *buf = v171;
          *v260 = name3;
          _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "    Task %@", buf, 0xCu);
        }

        v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v238 = 0u;
        v239 = 0u;
        v240 = 0u;
        v241 = 0u;
        v178 = v22;
        inputs = [v22 inputs];
        v30 = [inputs countByEnumeratingWithState:&v238 objects:v257 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v239;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v239 != v32)
              {
                objc_enumerationMutation(inputs);
              }

              v34 = *(*(&v238 + 1) + 8 * i);
              type2 = [v34 type];
              if (type2 > 1)
              {
                v36 = v27;
                if (type2 != 2)
                {
                  v36 = v28;
                  if (type2 != 3)
                  {
LABEL_203:
                    [PSTransitionBlock printGraph:buf context:v34 printResolvedFieldsOnly:?];
LABEL_204:
                    [PSTransitionBlock printGraph:buf context:v31 printResolvedFieldsOnly:?];
                  }
                }
              }

              else
              {
                v36 = v25;
                if (type2)
                {
                  v36 = v26;
                  if (type2 != 1)
                  {
                    goto LABEL_203;
                  }
                }
              }

              [v36 addObject:v34];
            }

            v31 = [inputs countByEnumeratingWithState:&v238 objects:v257 count:16];
          }

          while (v31);
        }

        v185 = v26;
        v188 = v25;
        v182 = v27;
        v180 = v28;
        if ([v25 count])
        {
          v37 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_DEFAULT, "        Wait Inputs:", buf, 2u);
          }

          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v38 = v25;
          v39 = [v38 countByEnumeratingWithState:&v234 objects:v256 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v235;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v235 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v234 + 1) + 8 * j);
                resolvedResourceKey = [v43 resolvedResourceKey];
                v45 = [contextCopy resourceStreamForKey:resolvedResourceKey];

                if (v45)
                {
                  resourceClass = [v45 resourceClass];
                }

                else
                {
                  resourceClass = -1;
                }

                v47 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey2 = [v43 resolvedResourceKey];
                  *buf = 67109378;
                  *v260 = resourceClass;
                  *&v260[4] = 2112;
                  *&v260[6] = resolvedResourceKey2;
                  _os_log_impl(&dword_25EA3A000, v47, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v234 objects:v256 count:16];
            }

            while (v40);
          }

          v26 = v185;
          v27 = v182;
          v28 = v180;
        }

        if ([v26 count])
        {
          v49 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v49, OS_LOG_TYPE_DEFAULT, "        Pull Inputs:", buf, 2u);
          }

          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v50 = v26;
          v51 = [v50 countByEnumeratingWithState:&v230 objects:v255 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v231;
            do
            {
              for (k = 0; k != v52; ++k)
              {
                if (*v231 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v230 + 1) + 8 * k);
                resolvedResourceKey3 = [v55 resolvedResourceKey];
                v57 = [contextCopy resourceStreamForKey:resolvedResourceKey3];

                if (v57)
                {
                  resourceClass2 = [v57 resourceClass];
                }

                else
                {
                  resourceClass2 = -1;
                }

                v59 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey4 = [v55 resolvedResourceKey];
                  *buf = 67109378;
                  *v260 = resourceClass2;
                  *&v260[4] = 2112;
                  *&v260[6] = resolvedResourceKey4;
                  _os_log_impl(&dword_25EA3A000, v59, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v52 = [v50 countByEnumeratingWithState:&v230 objects:v255 count:16];
            }

            while (v52);
          }

          v26 = v185;
          v27 = v182;
          v28 = v180;
        }

        v61 = v178;
        if ([v27 count])
        {
          v62 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v62, OS_LOG_TYPE_DEFAULT, "        PullOptional Inputs:", buf, 2u);
          }

          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v63 = v27;
          v64 = [v63 countByEnumeratingWithState:&v226 objects:v254 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v227;
            do
            {
              for (m = 0; m != v65; ++m)
              {
                if (*v227 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v226 + 1) + 8 * m);
                resolvedResourceKey5 = [v68 resolvedResourceKey];
                v70 = [contextCopy resourceStreamForKey:resolvedResourceKey5];

                if (v70)
                {
                  resourceClass3 = [v70 resourceClass];
                }

                else
                {
                  resourceClass3 = -1;
                }

                v72 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey6 = [v68 resolvedResourceKey];
                  *buf = 67109378;
                  *v260 = resourceClass3;
                  *&v260[4] = 2112;
                  *&v260[6] = resolvedResourceKey6;
                  _os_log_impl(&dword_25EA3A000, v72, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v226 objects:v254 count:16];
            }

            while (v65);
          }

          v26 = v185;
          v27 = v182;
          v61 = v178;
          v28 = v180;
        }

        if ([v28 count])
        {
          v74 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v74, OS_LOG_TYPE_DEFAULT, "        Synced Inputs:", buf, 2u);
          }

          v224 = 0u;
          v225 = 0u;
          v222 = 0u;
          v223 = 0u;
          v75 = v28;
          v76 = [v75 countByEnumeratingWithState:&v222 objects:v253 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v223;
            do
            {
              for (n = 0; n != v77; ++n)
              {
                if (*v223 != v78)
                {
                  objc_enumerationMutation(v75);
                }

                v80 = *(*(&v222 + 1) + 8 * n);
                resolvedResourceKey7 = [v80 resolvedResourceKey];
                v82 = [contextCopy resourceStreamForKey:resolvedResourceKey7];

                if (v82)
                {
                  resourceClass4 = [v82 resourceClass];
                }

                else
                {
                  resourceClass4 = -1;
                }

                v84 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey8 = [v80 resolvedResourceKey];
                  sourceInputResourceKey = [v80 sourceInputResourceKey];
                  *buf = 67109634;
                  *v260 = resourceClass4;
                  *&v260[4] = 2112;
                  *&v260[6] = resolvedResourceKey8;
                  *&v260[14] = 2112;
                  *&v260[16] = sourceInputResourceKey;
                  _os_log_impl(&dword_25EA3A000, v84, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@, synced to %@", buf, 0x1Cu);
                }
              }

              v77 = [v75 countByEnumeratingWithState:&v222 objects:v253 count:16];
            }

            while (v77);
          }

          v26 = v185;
          v25 = v188;
          v27 = v182;
          v61 = v178;
          v28 = v180;
        }

        outputs = [v61 outputs];
        v88 = [outputs count];

        if (v88)
        {
          v89 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v89, OS_LOG_TYPE_DEFAULT, "        Outputs:", buf, 2u);
          }

          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          outputs2 = [v61 outputs];
          v91 = [outputs2 countByEnumeratingWithState:&v218 objects:v252 count:16];
          if (v91)
          {
            v92 = v91;
            v93 = *v219;
            do
            {
              for (ii = 0; ii != v92; ++ii)
              {
                if (*v219 != v93)
                {
                  objc_enumerationMutation(outputs2);
                }

                v95 = *(*(&v218 + 1) + 8 * ii);
                resourceKey = [v95 resourceKey];
                v97 = [contextCopy resourceStreamForKey:resourceKey];

                if (v97)
                {
                  resourceClass5 = [v97 resourceClass];
                }

                else
                {
                  resourceClass5 = -1;
                }

                v99 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  resourceKey2 = [v95 resourceKey];
                  *buf = 67109378;
                  *v260 = resourceClass5;
                  *&v260[4] = 2112;
                  *&v260[6] = resourceKey2;
                  _os_log_impl(&dword_25EA3A000, v99, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v92 = [outputs2 countByEnumeratingWithState:&v218 objects:v252 count:16];
            }

            while (v92);
          }

          v26 = v185;
          v25 = v188;
          v27 = v182;
          v28 = v180;
        }

        v21 = (&loga->isa + 1);
      }

      while ((&loga->isa + 1) != v174);
      v174 = [obj countByEnumeratingWithState:&v242 objects:v258 count:16];
    }

    while (v174);
  }

  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v101 = v175;
  sourceTasks = [v175 sourceTasks];
  v189 = [sourceTasks countByEnumeratingWithState:&v214 objects:v251 count:16];
  if (v189)
  {
    v186 = *v215;
    do
    {
      for (jj = 0; jj != v189; ++jj)
      {
        if (*v215 != v186)
        {
          objc_enumerationMutation(sourceTasks);
        }

        v103 = *(*(&v214 + 1) + 8 * jj);
        v104 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
        {
          name4 = [v103 name];
          *buf = 138412290;
          *v260 = name4;
          _os_log_impl(&dword_25EA3A000, v104, OS_LOG_TYPE_DEFAULT, "    SourceTask %@", buf, 0xCu);
        }

        outputs3 = [v103 outputs];
        v107 = [outputs3 count];

        if (v107)
        {
          v191 = jj;
          v108 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v108, OS_LOG_TYPE_DEFAULT, "        Outputs:", buf, 2u);
          }

          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          outputs4 = [v103 outputs];
          v110 = [outputs4 countByEnumeratingWithState:&v210 objects:v250 count:16];
          if (v110)
          {
            v111 = v110;
            v112 = *v211;
            do
            {
              for (kk = 0; kk != v111; ++kk)
              {
                if (*v211 != v112)
                {
                  objc_enumerationMutation(outputs4);
                }

                v114 = *(*(&v210 + 1) + 8 * kk);
                resourceKey3 = [v114 resourceKey];
                v116 = [contextCopy resourceStreamForKey:resourceKey3];

                if (v116)
                {
                  resourceClass6 = [v116 resourceClass];
                }

                else
                {
                  resourceClass6 = -1;
                }

                v118 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  resourceKey4 = [v114 resourceKey];
                  *buf = 67109378;
                  *v260 = resourceClass6;
                  *&v260[4] = 2112;
                  *&v260[6] = resourceKey4;
                  _os_log_impl(&dword_25EA3A000, v118, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v111 = [outputs4 countByEnumeratingWithState:&v210 objects:v250 count:16];
            }

            while (v111);
          }

          v101 = v175;
          jj = v191;
        }
      }

      v189 = [sourceTasks countByEnumeratingWithState:&v214 objects:v251 count:16];
    }

    while (v189);
  }

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  writers = [v101 writers];
  v120 = [writers countByEnumeratingWithState:&v206 objects:v249 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v207;
    do
    {
      for (mm = 0; mm != v121; ++mm)
      {
        if (*v207 != v122)
        {
          objc_enumerationMutation(writers);
        }

        v124 = *(*(&v206 + 1) + 8 * mm);
        v125 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          name5 = [v124 name];
          *buf = 138412290;
          *v260 = name5;
          _os_log_impl(&dword_25EA3A000, v125, OS_LOG_TYPE_DEFAULT, "    Writer %@", buf, 0xCu);
        }

        output = [v124 output];

        if (output)
        {
          v128 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v128, OS_LOG_TYPE_DEFAULT, "        Output:", buf, 2u);
          }

          output2 = [v124 output];
          resourceKey5 = [output2 resourceKey];
          v131 = [contextCopy resourceStreamForKey:resourceKey5];

          if (v131)
          {
            resourceClass7 = [v131 resourceClass];
          }

          else
          {
            resourceClass7 = -1;
          }

          v133 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            resourceKey6 = [output2 resourceKey];
            *buf = 67109378;
            *v260 = resourceClass7;
            *&v260[4] = 2112;
            *&v260[6] = resourceKey6;
            _os_log_impl(&dword_25EA3A000, v133, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
          }
        }
      }

      v121 = [writers countByEnumeratingWithState:&v206 objects:v249 count:16];
    }

    while (v121);
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v16 = v175;
  log = [v175 readers];
  v181 = [log countByEnumeratingWithState:&v202 objects:v248 count:16];
  if (v181)
  {
    v179 = *v203;
    do
    {
      for (nn = 0; nn != v181; ++nn)
      {
        if (*v203 != v179)
        {
          objc_enumerationMutation(log);
        }

        v136 = *(*(&v202 + 1) + 8 * nn);
        v137 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
        {
          name6 = [v136 name];
          *buf = 138412290;
          *v260 = name6;
          _os_log_impl(&dword_25EA3A000, v137, OS_LOG_TYPE_DEFAULT, "    Reader %@", buf, 0xCu);
        }

        v139 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v140 = objc_alloc_init(MEMORY[0x277CBEB18]);
        input = [v136 input];
        v31 = input;
        if (input)
        {
          type3 = [input type];
          v143 = v139;
          if (type3 != 1)
          {
            v143 = v140;
            if (type3 != 2)
            {
              goto LABEL_204;
            }
          }

          [v143 addObject:v31];
        }

        v192 = nn;
        v187 = v140;
        v190 = v139;
        v184 = v31;
        if ([v139 count])
        {
          v144 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v144, OS_LOG_TYPE_DEFAULT, "        Pull Inputs:", buf, 2u);
          }

          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          v145 = v139;
          v146 = [v145 countByEnumeratingWithState:&v198 objects:v247 count:16];
          if (v146)
          {
            v147 = v146;
            v148 = *v199;
            do
            {
              for (i1 = 0; i1 != v147; ++i1)
              {
                if (*v199 != v148)
                {
                  objc_enumerationMutation(v145);
                }

                v150 = *(*(&v198 + 1) + 8 * i1);
                resolvedResourceKey9 = [v150 resolvedResourceKey];
                v152 = [contextCopy resourceStreamForKey:resolvedResourceKey9];

                if (v152)
                {
                  resourceClass8 = [v152 resourceClass];
                }

                else
                {
                  resourceClass8 = -1;
                }

                v154 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey10 = [v150 resolvedResourceKey];
                  *buf = 67109378;
                  *v260 = resourceClass8;
                  *&v260[4] = 2112;
                  *&v260[6] = resolvedResourceKey10;
                  _os_log_impl(&dword_25EA3A000, v154, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v147 = [v145 countByEnumeratingWithState:&v198 objects:v247 count:16];
            }

            while (v147);
          }

          v16 = v175;
          nn = v192;
          v140 = v187;
          v139 = v190;
          v31 = v184;
        }

        if ([v140 count])
        {
          v156 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v156, OS_LOG_TYPE_DEFAULT, "        PullOptional Inputs:", buf, 2u);
          }

          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v157 = v140;
          v158 = [v157 countByEnumeratingWithState:&v194 objects:v246 count:16];
          if (v158)
          {
            v159 = v158;
            v160 = *v195;
            do
            {
              for (i2 = 0; i2 != v159; ++i2)
              {
                if (*v195 != v160)
                {
                  objc_enumerationMutation(v157);
                }

                v162 = *(*(&v194 + 1) + 8 * i2);
                resolvedResourceKey11 = [v162 resolvedResourceKey];
                v164 = [contextCopy resourceStreamForKey:resolvedResourceKey11];

                if (v164)
                {
                  resourceClass9 = [v164 resourceClass];
                }

                else
                {
                  resourceClass9 = -1;
                }

                v166 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey12 = [v162 resolvedResourceKey];
                  *buf = 67109378;
                  *v260 = resourceClass9;
                  *&v260[4] = 2112;
                  *&v260[6] = resolvedResourceKey12;
                  _os_log_impl(&dword_25EA3A000, v166, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v159 = [v157 countByEnumeratingWithState:&v194 objects:v246 count:16];
            }

            while (v159);
          }

          v16 = v175;
          nn = v192;
          v140 = v187;
          v139 = v190;
          v31 = v184;
        }
      }

      v181 = [log countByEnumeratingWithState:&v202 objects:v248 count:16];
    }

    while (v181);
  }

LABEL_202:

  v170 = *MEMORY[0x277D85DE8];
}

+ (id)generateTransitionBlockWithAddedGraphs:(id)graphs withRemovedGraphs:(id)removedGraphs withDashboard:(id)dashboard withStopOption:(BOOL)option
{
  optionCopy = option;
  graphsCopy = graphs;
  removedGraphsCopy = removedGraphs;
  dashboardCopy = dashboard;
  v12 = objc_alloc_init(PSTransitionBlock);
  if (optionCopy)
  {
    if (graphsCopy && [graphsCopy count] || removedGraphsCopy && objc_msgSend(removedGraphsCopy, "count"))
    {
      [PSTransitionBlock generateTransitionBlockWithAddedGraphs:? withRemovedGraphs:? withDashboard:? withStopOption:?];
      return [(PSTransitionBlock *)v28 addedGraphs];
    }

    getRunningGraphs = [dashboardCopy getRunningGraphs];
    [(PSTransitionBlock *)v12 setPreTransitionGraphs:getRunningGraphs];

    v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(PSTransitionBlock *)v12 setAddedGraphs:v14];

    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    preTransitionGraphs = [(PSTransitionBlock *)v12 preTransitionGraphs];
    v17 = [v15 initWithSet:preTransitionGraphs];
    [(PSTransitionBlock *)v12 setRemovedGraphs:v17];
  }

  else
  {
    getRunningGraphs2 = [dashboardCopy getRunningGraphs];
    [(PSTransitionBlock *)v12 setPreTransitionGraphs:getRunningGraphs2];

    if (graphsCopy)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:graphsCopy];
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v20 = v19;
    [(PSTransitionBlock *)v12 setAddedGraphs:v19];

    if (removedGraphsCopy)
    {
      v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:removedGraphsCopy];
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    preTransitionGraphs = v21;
    [(PSTransitionBlock *)v12 setRemovedGraphs:v21];
  }

  v22 = objc_alloc(MEMORY[0x277CBEB58]);
  preTransitionGraphs2 = [(PSTransitionBlock *)v12 preTransitionGraphs];
  v24 = [v22 initWithSet:preTransitionGraphs2];

  addedGraphs = [(PSTransitionBlock *)v12 addedGraphs];
  [v24 unionSet:addedGraphs];

  removedGraphs = [(PSTransitionBlock *)v12 removedGraphs];
  [v24 minusSet:removedGraphs];

  [(PSTransitionBlock *)v12 setPostTransitionGraphs:v24];

  return v12;
}

+ (uint64_t)stringWithGraphFrequencyType:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Malformed input found. Received %lu", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Malformed input found. Received %lu", v6, v7, v8, v9, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return [PSTransitionBlock printGraph:v17 context:? printResolvedFieldsOnly:?];
}

- (uint64_t)printGraph:(char *)a1 context:(void *)a2 printResolvedFieldsOnly:.cold.1(char **a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Found an unspecified input type %lu", [a2 type]);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Found an unspecified input type %lu", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSTransitionBlock printGraph:v18 context:? printResolvedFieldsOnly:?];
}

- (uint64_t)printGraph:(char *)a1 context:(void *)a2 printResolvedFieldsOnly:.cold.2(char **a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Found an unsupported input type %lu for reader", [a2 type]);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Found an unsupported input type %lu for reader", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSTransitionBlock generateTransitionBlockWithAddedGraphs:v18 withRemovedGraphs:? withDashboard:? withStopOption:?];
}

+ (void)generateTransitionBlockWithAddedGraphs:(char *)a1 withRemovedGraphs:withDashboard:withStopOption:.cold.1(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Stop was requested with non-zero added / removed graphs.");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v9 = 136315394;
    v10 = "+[PSTransitionBlock generateTransitionBlockWithAddedGraphs:withRemovedGraphs:withDashboard:withStopOption:]";
    v11 = 1024;
    v12 = 273;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Stop was requested with non-zero added / removed graphs.", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v9 = 136315394;
      v10 = "+[PSTransitionBlock generateTransitionBlockWithAddedGraphs:withRemovedGraphs:withDashboard:withStopOption:]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v6 = OUTLINED_FUNCTION_0();
  [(PSTransitionManager *)v6 setupCoreAnalyticsForAddedGraphs:v7, v8];
}

@end