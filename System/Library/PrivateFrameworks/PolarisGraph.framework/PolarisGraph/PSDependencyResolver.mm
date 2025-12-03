@interface PSDependencyResolver
- (PSDependencyResolver)initWithVertices:(id)vertices withParentToEdgeFetcher:(id)fetcher withChildToEdgeFetcher:(id)edgeFetcher;
- (void)dealloc;
- (void)resolveWithBlock:(id)block;
@end

@implementation PSDependencyResolver

- (PSDependencyResolver)initWithVertices:(id)vertices withParentToEdgeFetcher:(id)fetcher withChildToEdgeFetcher:(id)edgeFetcher
{
  v129 = *MEMORY[0x277D85DE8];
  verticesCopy = vertices;
  fetcherCopy = fetcher;
  edgeFetcherCopy = edgeFetcher;
  v121.receiver = self;
  v121.super_class = PSDependencyResolver;
  v9 = [(PSDependencyResolver *)&v121 init];
  v10 = v9;
  if (v9)
  {
    v90 = v9;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v76 = verticesCopy;
    obj = verticesCopy;
    v94 = [obj countByEnumeratingWithState:&v117 objects:v128 count:16];
    if (v94)
    {
      v92 = *v118;
      do
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v118 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v117 + 1) + 8 * i);
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v14 = fetcherCopy[2](fetcherCopy, v13);
          v15 = [v14 countByEnumeratingWithState:&v113 objects:v127 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v114;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v114 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v113 + 1) + 8 * j);
                v20 = [v11 objectForKey:{v19, v76}];

                if (!v20)
                {
                  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [v11 setObject:v21 forKey:v19];
                }

                v22 = [v11 objectForKey:v19];
                [v22 addObject:v13];
              }

              v16 = [v14 countByEnumeratingWithState:&v113 objects:v127 count:16];
            }

            while (v16);
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v23 = edgeFetcherCopy[2](edgeFetcherCopy, v13);
          v24 = [v23 countByEnumeratingWithState:&v109 objects:v126 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v110;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v110 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v109 + 1) + 8 * k);
                v29 = [v96 objectForKey:{v28, v76}];

                if (!v29)
                {
                  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [v96 setObject:v30 forKey:v28];
                }

                v31 = [v96 objectForKey:v28];
                [v31 addObject:v13];
              }

              v25 = [v23 countByEnumeratingWithState:&v109 objects:v126 count:16];
            }

            while (v25);
          }
        }

        v94 = [obj countByEnumeratingWithState:&v117 objects:v128 count:16];
      }

      while (v94);
    }

    v32 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800409227ACB4uLL);
    if (!v32)
    {
      goto LABEL_98;
    }

    v10 = v90;
    v90->graph = v32;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    parentToSink = v90->parentToSink;
    v90->parentToSink = strongToStrongObjectsMapTable;

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v35 = v11;
    v36 = v96;
    v78 = [v35 countByEnumeratingWithState:&v105 objects:v125 count:16];
    if (v78)
    {
      v79 = *v106;
      v77 = v35;
      do
      {
        v37 = 0;
        do
        {
          if (*v106 != v79)
          {
            objc_enumerationMutation(v35);
          }

          v80 = v37;
          v38 = *(*(&v105 + 1) + 8 * v37);
          v39 = [v35 objectForKeyedSubscript:{v38, v76}];
          v83 = [v36 objectForKeyedSubscript:v38];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v81 = v39;
          v84 = [v81 countByEnumeratingWithState:&v101 objects:v124 count:16];
          if (v84)
          {
            v82 = *v102;
            do
            {
              v40 = 0;
              do
              {
                if (*v102 != v82)
                {
                  objc_enumerationMutation(v81);
                }

                obja = v40;
                v41 = *(*(&v101 + 1) + 8 * v40);
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v89 = v83;
                v95 = [v89 countByEnumeratingWithState:&v97 objects:v123 count:16];
                if (v95)
                {
                  v91 = v41;
                  v93 = *v98;
                  do
                  {
                    for (m = 0; m != v95; ++m)
                    {
                      if (*v98 != v93)
                      {
                        objc_enumerationMutation(v89);
                      }

                      v43 = *(*(&v97 + 1) + 8 * m);
                      vertex_new(v41);
                      v45 = v44;
                      vertex_new(v43);
                      v47 = v46;
                      graph = v10->graph;
                      var1 = graph->var1;
                      if (!var1)
                      {
                        var0 = graph->var0;
                        goto LABEL_63;
                      }

                      LOBYTE(v50) = 0;
                      LOBYTE(v51) = 0;
                      v52 = 0;
                      v53 = 0;
                      v54 = 0;
                      do
                      {
                        if (v50)
                        {
                          v50 = 1;
                          if (v51)
                          {
                            goto LABEL_55;
                          }
                        }

                        else if (*graph->var0[v54] == *v45)
                        {
                          vertex_free(v45);
                          v45 = graph->var0[v54];
                          v50 = 1;
                          v52 = v54;
                          if (v51)
                          {
                            goto LABEL_55;
                          }
                        }

                        else
                        {
                          v50 = 0;
                          if (v51)
                          {
                            goto LABEL_55;
                          }
                        }

                        if (*graph->var0[v54] != *v47)
                        {
                          v51 = 0;
                          goto LABEL_56;
                        }

                        vertex_free(v47);
                        v47 = graph->var0[v54];
                        v53 = v54;
LABEL_55:
                        v51 = 1;
                        if (v50)
                        {
                          break;
                        }

LABEL_56:
                        ++v54;
                      }

                      while (v54 < graph->var1);
                      if ((v50 ^ 1) & 1) != 0 || ((v51 ^ 1))
                      {
                        if ((v51 | v50 ^ 1))
                        {
                          v58 = v50 | v51 ^ 1;
                          var0 = graph->var0;
                          var1 = graph->var1;
                          v10 = v90;
                          if (v58)
                          {
                            v41 = v91;
LABEL_63:
                            v56 = malloc_type_realloc(var0, 8 * (var1 + 2), 0x2004093837F09uLL);
                            graph->var0 = v56;
                            if (v56)
                            {
                              v57 = graph->var1;
                              v56[v57] = v45;
                              graph->var0[(v57 + 1)] = v47;
                              graph->var1 = v57 + 2;
                              goto LABEL_76;
                            }

                            goto LABEL_95;
                          }

                          v61 = malloc_type_realloc(var0, 8 * (var1 + 1), 0x2004093837F09uLL);
                          graph->var0 = v61;
                          if (!v61)
                          {
                            goto LABEL_97;
                          }

                          v60 = graph->var1;
                          v61[v60] = 0;
                          for (n = v60; n > v53; --n)
                          {
                            graph->var0[n] = graph->var0[n - 1];
                          }

                          graph->var0[v53] = v45;
                        }

                        else
                        {
                          v59 = malloc_type_realloc(graph->var0, 8 * (graph->var1 + 1), 0x2004093837F09uLL);
                          graph->var0 = v59;
                          v10 = v90;
                          if (!v59)
                          {
                            goto LABEL_96;
                          }

                          v60 = graph->var1;
                          v59[v60] = v47;
                        }

                        graph->var1 = v60 + 1;
                        goto LABEL_75;
                      }

                      v10 = v90;
                      if (v53 < v52)
                      {
                        do
                        {
                          graph->var0[v52] = graph->var0[v52 - 1];
                          --v52;
                        }

                        while (v52 > v53);
                        graph->var0[v53] = v45;
                      }

LABEL_75:
                      v41 = v91;
LABEL_76:
                      v63 = *(v45 + 8);
                      if (!v63)
                      {
LABEL_80:
                        v66 = malloc_type_realloc(*(v45 + 3), 8 * (v63 + 1), 0x2004093837F09uLL);
                        *(v45 + 3) = v66;
                        if (v66)
                        {
                          v67 = *(v45 + 8);
                          v66[v67] = v47;
                          *(v45 + 8) = v67 + 1;
                          v68 = malloc_type_realloc(*(v47 + 1), 8 * (*(v47 + 4) + 1), 0x2004093837F09uLL);
                          *(v47 + 1) = v68;
                          if (v68)
                          {
                            v69 = *(v47 + 4);
                            v68[v69] = v45;
                            *(v47 + 4) = v69 + 1;
                            goto LABEL_83;
                          }

                          [PSDependencyResolver initWithVertices:v122 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
                        }

                        [PSDependencyResolver initWithVertices:v122 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
LABEL_95:
                        [PSDependencyResolver initWithVertices:v122 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
LABEL_96:
                        [PSDependencyResolver initWithVertices:v122 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
LABEL_97:
                        [PSDependencyResolver initWithVertices:v122 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
LABEL_98:
                        [PSDependencyResolver initWithVertices:v122 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
                      }

                      v64 = *(v45 + 3);
                      v65 = *(v45 + 8);
                      while (**v64 != *v47)
                      {
                        ++v64;
                        if (!--v65)
                        {
                          goto LABEL_80;
                        }
                      }

LABEL_83:
                      v70 = [(NSMapTable *)v10->parentToSink objectForKey:v41];

                      if (!v70)
                      {
                        v71 = v10->parentToSink;
                        v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
                        [(NSMapTable *)v71 setObject:v72 forKey:v41];
                      }

                      v73 = [(NSMapTable *)v10->parentToSink objectForKey:v41];
                      [v73 addObject:v43];
                    }

                    v95 = [v89 countByEnumeratingWithState:&v97 objects:v123 count:16];
                  }

                  while (v95);
                }

                v40 = obja + 1;
              }

              while (obja + 1 != v84);
              v84 = [v81 countByEnumeratingWithState:&v101 objects:v124 count:16];
            }

            while (v84);
          }

          v37 = v80 + 1;
          v35 = v77;
          v36 = v96;
        }

        while (v80 + 1 != v78);
        v78 = [v77 countByEnumeratingWithState:&v105 objects:v125 count:16];
      }

      while (v78);
    }

    verticesCopy = v76;
  }

  v74 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)resolveWithBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  graph = self->graph;
  var1 = graph->var1;
  if (var1)
  {
    v7 = 0;
    var0 = graph->var0;
    do
    {
      v9 = *var0[v7];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [(NSMapTable *)selfCopy->parentToSink objectForKey:v9];
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            blockCopy[2](blockCopy, v9, *(*(&v17 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      ++v7;
    }

    while (v7 != var1);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  graph = self->graph;
  if (graph->var1)
  {
    v4 = 0;
    do
    {
      vertex_free(graph->var0[v4++]);
    }

    while (v4 < graph->var1);
  }

  free(graph->var0);
  free(graph);
  v5.receiver = self;
  v5.super_class = PSDependencyResolver;
  [(PSDependencyResolver *)&v5 dealloc];
}

@end