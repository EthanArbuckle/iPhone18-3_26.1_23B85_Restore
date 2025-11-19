uint64_t __PSLogInstance_block_invoke()
{
  PSLogInstance_log = os_log_create("com.apple.polarisgraph", "Context");

  return MEMORY[0x2821F96F8]();
}

void sub_25EC89CA4(_Unwind_Exception *a1)
{
  if (v5)
  {
  }

  if (!v6)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25EC8A9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, void *a11)
{
  if (a10)
  {
  }

  if (!v14)
  {
  }

  _Unwind_Resume(a1);
}

char *ps_resource_stream_provider_representation(unsigned int a1)
{
  if (a1 < 0xC && ((0xDFFu >> a1) & 1) != 0)
  {
    return off_279A4E200[a1];
  }

  v5[1] = v1;
  v5[2] = v2;
  ps_resource_stream_provider_representation_cold_1(v5, a1);
  return ps_resource_stream_provider_is_rc(v4);
}

void __copy_assignment_8_8_t0w40_s40_s48(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  objc_storeStrong((a1 + 40), *(a2 + 5));
  v6 = *(a2 + 6);

  objc_storeStrong((a1 + 48), v6);
}

CMTime *PSGreatestCommonTimeFactor@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, CMTime *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 <= *a2)
  {
    v8 = *a2;
  }

  else
  {
    v8 = *a1;
  }

  if (*a1 >= *a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = *a1;
  }

  v10 = v8 % v9;
  if (v8 % v9)
  {
    do
    {
      v11 = v10;
      v8 /= v9;
      v10 = v8 % v10;
      v9 = v11;
    }

    while (v10);
  }

  else
  {
    v11 = v9;
  }

  memset(&v19, 0, sizeof(v19));
  CMTimeMake(&v19, v7 * v6 / v11, v7 * *(a1 + 2) / v11);
  memset(&v18, 0, sizeof(v18));
  CMTimeMake(&v18, *a1 * *a2 / v11, *a1 * *(a2 + 2) / v11);
  result = v19.value;
  if (v19.value == v18.value)
  {
    timescale = v19.timescale;
    if (v19.timescale <= v18.timescale)
    {
      v14 = v18.timescale;
    }

    else
    {
      v14 = v19.timescale;
    }

    if (v19.timescale >= v18.timescale)
    {
      timescale = v18.timescale;
    }

    v15 = v14 % timescale;
    if (v14 % timescale)
    {
      do
      {
        v16 = v15;
        v14 /= timescale;
        v15 = v14 % v15;
        timescale = v16;
      }

      while (v15);
    }

    else
    {
      LODWORD(v16) = timescale;
    }

    return CMTimeMake(a3, v19.value, v16);
  }

  else
  {
    v17 = MEMORY[0x277CC0898];
    *&a3->value = *MEMORY[0x277CC0898];
    a3->epoch = *(v17 + 16);
  }

  return result;
}

uint64_t PSGraphExtractResourceKeyInfo(void *a1, void *a2, void *a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v5 = a2;
  v6 = [v5 countByEnumeratingWithState:&v110 objects:v121 count:16];
  if (v6)
  {
    v7 = *v111;
    v8 = 0x277CBE000uLL;
    v9 = 0x277CBE000uLL;
    v77 = v4;
    v75 = v5;
    v72 = *v111;
    while (1)
    {
      v10 = 0;
      v73 = v6;
      do
      {
        if (*v111 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v74 = v10;
        v11 = *(*(&v110 + 1) + 8 * v10);
        v79 = objc_alloc_init(*(v8 + 2872));
        v12 = objc_alloc_init(*(v9 + 2904));
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v78 = v11;
        obj = [v11 tasks];
        v13 = [obj countByEnumeratingWithState:&v106 objects:v120 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v107;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v107 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v106 + 1) + 8 * i);
              v102 = 0u;
              v103 = 0u;
              v104 = 0u;
              v105 = 0u;
              v18 = [v17 inputs];
              v19 = [v18 countByEnumeratingWithState:&v102 objects:v119 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v103;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v103 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = [*(*(&v102 + 1) + 8 * j) resolvedResourceKey];
                    [v12 addObject:v23];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v102 objects:v119 count:16];
                }

                while (v20);
              }

              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v24 = [v17 outputs];
              v25 = [v24 countByEnumeratingWithState:&v98 objects:v118 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v99;
                do
                {
                  for (k = 0; k != v26; ++k)
                  {
                    if (*v99 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = [*(*(&v98 + 1) + 8 * k) resourceKey];
                    [v12 addObject:v29];
                  }

                  v26 = [v24 countByEnumeratingWithState:&v98 objects:v118 count:16];
                }

                while (v26);
              }
            }

            v14 = [obj countByEnumeratingWithState:&v106 objects:v120 count:16];
          }

          while (v14);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v4 = v77;
        v30 = [v77 allResourceKeys];
        v31 = [v30 countByEnumeratingWithState:&v94 objects:v117 count:16];
        v32 = v79;
        if (v31)
        {
          v33 = v31;
          v34 = *v95;
          do
          {
            for (m = 0; m != v33; ++m)
            {
              if (*v95 != v34)
              {
                objc_enumerationMutation(v30);
              }

              v36 = *(*(&v94 + 1) + 8 * m);
              if ([v12 containsObject:v36])
              {
                v37 = [v77 resourceStreamForKey:v36];
                [v79 setObject:v37 forKeyedSubscript:v36];
              }
            }

            v33 = [v30 countByEnumeratingWithState:&v94 objects:v117 count:16];
          }

          while (v33);
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v38 = [v78 tasks];
        v39 = [v38 countByEnumeratingWithState:&v90 objects:v116 count:16];
        if (!v39)
        {
          goto LABEL_59;
        }

        v40 = *v91;
        obja = v38;
        v70 = *v91;
        while (2)
        {
          v41 = 0;
          v71 = v39;
          do
          {
            if (*v91 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v90 + 1) + 8 * v41);
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v43 = [v42 inputs];
            v44 = [v43 countByEnumeratingWithState:&v86 objects:v115 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v87;
LABEL_43:
              v47 = 0;
              while (1)
              {
                if (*v87 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v86 + 1) + 8 * v47);
                v49 = [v48 resolvedResourceKey];
                v50 = [v79 objectForKey:v49];

                if (!v50)
                {
                  break;
                }

                if (v45 == ++v47)
                {
                  v45 = [v43 countByEnumeratingWithState:&v86 objects:v115 count:16];
                  if (v45)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_49;
                }
              }

              if (!a3)
              {
                goto LABEL_68;
              }

              v59 = MEMORY[0x277CCA9B8];
              v60 = MEMORY[0x277CCACA8];
              v61 = [v48 resolvedResourceKey];
              v62 = [v48 resourceKey];
              v63 = [v42 name];
              v64 = [v78 name];
              v65 = [v60 stringWithFormat:@"Context is missing resource info for input '%@' (raw key = '%@') used by task '%@' in graph '%@'.", v61, v62, v63, v64];
              *a3 = [v59 internalErrorWithCode:-1 description:v65];

              goto LABEL_67;
            }

LABEL_49:

            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v43 = [v42 outputs];
            v51 = [v43 countByEnumeratingWithState:&v82 objects:v114 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v83;
LABEL_51:
              v54 = 0;
              while (1)
              {
                if (*v83 != v53)
                {
                  objc_enumerationMutation(v43);
                }

                v55 = *(*(&v82 + 1) + 8 * v54);
                v56 = [v55 resourceKey];
                v57 = [v79 objectForKey:v56];

                if (!v57)
                {
                  break;
                }

                if (v52 == ++v54)
                {
                  v52 = [v43 countByEnumeratingWithState:&v82 objects:v114 count:16];
                  if (v52)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_57;
                }
              }

              if (!a3)
              {
                goto LABEL_68;
              }

              v66 = MEMORY[0x277CCA9B8];
              v67 = MEMORY[0x277CCACA8];
              v61 = [v55 resourceKey];
              v62 = [v42 name];
              v63 = [v78 name];
              v64 = [v67 stringWithFormat:@"Context is missing resource info for output '%@' used by task '%@' in graph '%@'.", v61, v62, v63];
              *a3 = [v66 internalErrorWithCode:-1 description:v64];
LABEL_67:

LABEL_68:
              v58 = 0;
              v4 = v77;
              v5 = v75;
              goto LABEL_69;
            }

LABEL_57:

            ++v41;
            v40 = v70;
            v4 = v77;
            v32 = v79;
            v38 = obja;
          }

          while (v41 != v71);
          v39 = [obja countByEnumeratingWithState:&v90 objects:v116 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }

LABEL_59:

        [v78 setResourceInfo:v32];
        v10 = v74 + 1;
        v5 = v75;
        v7 = v72;
        v8 = 0x277CBE000;
        v9 = 0x277CBE000;
      }

      while (v74 + 1 != v73);
      v6 = [v75 countByEnumeratingWithState:&v110 objects:v121 count:16];
      v58 = 1;
      if (!v6)
      {
        goto LABEL_69;
      }
    }
  }

  v58 = 1;
LABEL_69:

  v68 = *MEMORY[0x277D85DE8];
  return v58;
}

uint64_t PSGraphApplyFrequencyLimitsAndResolveFrequencies(void *a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v42 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v46 = v7;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v59 objects:v65 count:16];
  obj = v6;
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    v44 = *MEMORY[0x277CC08A0];
    v12 = *(MEMORY[0x277CC08A0] + 16);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        *&v58.value = v44;
        v58.epoch = v12;
        [v14 setMinInterval:&v58];
        v15 = [v14 name];
        v16 = [v46 objectForKey:v15];
        v17 = [v16 objectForKeyedSubscript:@"maxFrequency"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v19 = [v14 name];
          v20 = [v46 objectForKey:v19];
          v21 = [v20 objectForKeyedSubscript:@"maxFrequency"];

          memset(&v58, 0, sizeof(v58));
          CMTimeMake(&v58, 1, [v21 unsignedIntegerValue]);
          v57 = v58;
          [v14 setMinInterval:&v57];
        }
      }

      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v10);
  }

  v56 = 0;
  v22 = PSGraphResolveFrequenciesImpl(v42, v8, &v56, a4);
  v23 = v56;
  if (v22)
  {
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v24 = v8;
    v25 = [v24 countByEnumeratingWithState:&v48 objects:v63 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v49;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v48 + 1) + 8 * j);
          v30 = [v23 objectForKey:v29];
          v31 = v30;
          if (v30)
          {
            [v30 time];
          }

          else
          {
            memset(&v47, 0, sizeof(v47));
          }

          v58 = v47;
          [v29 setResolvedInterval:&v58];
        }

        v26 = [v24 countByEnumeratingWithState:&v48 objects:v63 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v55 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v52 = 0uLL;
    v32 = v8;
    v33 = [v32 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v53;
      v45 = *MEMORY[0x277CC08A0];
      v36 = *(MEMORY[0x277CC08A0] + 16);
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v53 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v52 + 1) + 8 * k);
          *&v58.value = v45;
          v58.epoch = v36;
          [v38 setMinInterval:&v58];
        }

        v34 = [v32 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v34);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t PSGraphResolveFrequenciesImpl(void *a1, void *a2, id *a3, void *a4)
{
  v256 = *MEMORY[0x277D85DE8];
  v131 = a1;
  v6 = a2;
  v157 = [MEMORY[0x277CBEB38] dictionary];
  v7 = *a3;
  if (!*a3)
  {
    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    *a3 = v7;
  }

  v130 = v7;
  v159 = [MEMORY[0x277CBEB38] dictionary];
  v153 = [MEMORY[0x277CBEB38] dictionary];
  v150 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v152 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v151 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v236 objects:v255 count:16];
  if (v8)
  {
    v9 = *v237;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v237 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v236 + 1) + 8 * i);
        v12 = [v11 producedResources];
        v13 = [v11 name];
        [v150 setObject:v12 forKeyedSubscript:v13];

        v14 = [v11 waitResources];
        v15 = [v11 name];
        [v152 setObject:v14 forKeyedSubscript:v15];

        v16 = [v11 graphFrequency];
        LODWORD(v15) = [v16 type] == 2;

        if (v15)
        {
          v17 = [v151 setByAddingObjectsFromSet:v12];

          v151 = v17;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v236 objects:v255 count:16];
    }

    while (v8);
  }

  v235 = 0u;
  v234 = 0u;
  v233 = 0u;
  v232 = 0u;
  v133 = [v131 allStreams];
  v137 = [v133 countByEnumeratingWithState:&v232 objects:v254 count:16];
  if (v137)
  {
    v135 = *v233;
    do
    {
      v18 = 0;
      do
      {
        if (*v233 != v135)
        {
          v19 = v18;
          objc_enumerationMutation(v133);
          v18 = v19;
        }

        v140 = v18;
        v20 = *(*(&v232 + 1) + 8 * v18);
        if ([v20 framerate])
        {
          v21 = -[PSTimeWrapper initWithFrequency:]([PSTimeWrapper alloc], "initWithFrequency:", [v20 framerate]);
          v22 = [v20 key];
          [v157 setObject:v21 forKey:v22];

          goto LABEL_19;
        }

        v231 = 0u;
        v230 = 0u;
        v229 = 0u;
        v228 = 0u;
        v143 = obj;
        v23 = [v143 countByEnumeratingWithState:&v228 objects:v253 count:16];
        if (!v23)
        {

LABEL_39:
          v34 = [[PSTimeWrapper alloc] initWithFrequency:1];
          v35 = [v20 key];
          [v157 setObject:v34 forKey:v35];

          v223 = 0u;
          v222 = 0u;
          v221 = 0u;
          v220 = 0u;
          v21 = v143;
          v36 = [(PSTimeWrapper *)v21 countByEnumeratingWithState:&v220 objects:v251 count:16];
          if (v36)
          {
            v37 = *v221;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v221 != v37)
                {
                  objc_enumerationMutation(v21);
                }

                v39 = *(*(&v220 + 1) + 8 * j);
                v40 = [v39 name];
                v41 = [v152 objectForKeyedSubscript:v40];
                v42 = [v20 key];
                v43 = [v41 containsObject:v42];

                if (v43)
                {
                  [v39 setNeedsLiveness:0];
                }
              }

              v36 = [(PSTimeWrapper *)v21 countByEnumeratingWithState:&v220 objects:v251 count:16];
            }

            while (v36);
          }

LABEL_19:

          goto LABEL_20;
        }

        v24 = 0;
        v146 = *v229;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v229 != v146)
            {
              objc_enumerationMutation(v143);
            }

            v26 = *(*(&v228 + 1) + 8 * k);
            v224 = 0u;
            v225 = 0u;
            v226 = 0u;
            v227 = 0u;
            v27 = [v26 name];
            v28 = [v150 objectForKeyedSubscript:v27];

            v29 = [v28 countByEnumeratingWithState:&v224 objects:v252 count:16];
            if (v29)
            {
              v30 = *v225;
              do
              {
                for (m = 0; m != v29; ++m)
                {
                  if (*v225 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v32 = *(*(&v224 + 1) + 8 * m);
                  v33 = [v20 key];
                  LOBYTE(v32) = [v32 isEqualToString:v33];

                  v24 |= v32;
                }

                v29 = [v28 countByEnumeratingWithState:&v224 objects:v252 count:16];
              }

              while (v29);
            }
          }

          v23 = [v143 countByEnumeratingWithState:&v228 objects:v253 count:16];
        }

        while (v23);

        if ((v24 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_20:
        v18 = v140 + 1;
      }

      while ((v140 + 1) != v137);
      v44 = [v133 countByEnumeratingWithState:&v232 objects:v254 count:16];
      v137 = v44;
    }

    while (v44);
  }

  v219 = 0u;
  v218 = 0u;
  v216 = 0u;
  v217 = 0u;
  v129 = obj;
  v134 = [v129 countByEnumeratingWithState:&v216 objects:v250 count:16];
  if (!v134)
  {
    goto LABEL_124;
  }

  v45 = *v217;
  v128 = *(MEMORY[0x277CC0898] + 12);
  v127 = *(MEMORY[0x277CC0898] + 16);
  v125 = *v217;
  do
  {
    v46 = 0;
    do
    {
      if (*v217 != v45)
      {
        v47 = v46;
        objc_enumerationMutation(v129);
        v46 = v47;
      }

      v126 = v46;
      v48 = *(*(&v216 + 1) + 8 * v46);
      value = *MEMORY[0x277CC0898];
      timescale = *(MEMORY[0x277CC0898] + 8);
      v49 = [v48 graphFrequency];
      v50 = [v49 type] == 0;

      if (v50)
      {
        v54 = [v48 graphFrequency];
        v55 = v54;
        if (!v54)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v51 = [v48 graphFrequency];
        v52 = [v51 type] == 3;

        obja = v127;
        flags = v128;
        if (!v52)
        {
          goto LABEL_63;
        }

        v54 = [v48 graphFrequency];
        v55 = v54;
        if (!v54)
        {
LABEL_61:
          obja = 0;
          flags = 0;
          memset(&v183, 0, sizeof(v183));
          goto LABEL_62;
        }
      }

      [v54 interval];
      flags = v183.flags;
      obja = v183.epoch;
LABEL_62:
      value = v183.value;
      timescale = v183.timescale;

LABEL_63:
      if ((flags & 0x1D) == 1)
      {
        if (v48)
        {
          [v48 minInterval];
          if ((BYTE4(v214) & 0x1D) == 1)
          {
            [v48 minInterval];
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = obja;
            CMTimeMaximum(&v183, &time1, &time2);
            value = v183.value;
            flags = v183.flags;
            timescale = v183.timescale;
            obja = v183.epoch;
          }
        }

        else
        {
          v214 = 0;
          v213 = 0;
          v215 = 0;
        }

        v56 = [PSTimeWrapper alloc];
        v183.value = value;
        v183.timescale = timescale;
        v183.flags = flags;
        v183.epoch = obja;
        v57 = [(PSTimeWrapper *)v56 initWithTime:&v183];
        [v130 setObject:v57 forKey:v48];
      }

      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v136 = [v48 tasks];
      v141 = [v136 countByEnumeratingWithState:&v207 objects:v247 count:16];
      if (v141)
      {
        v138 = *v208;
        do
        {
          v58 = 0;
          do
          {
            if (*v208 != v138)
            {
              v59 = v58;
              objc_enumerationMutation(v136);
              v58 = v59;
            }

            v60 = *(*(&v207 + 1) + 8 * v58);
            v203 = 0u;
            v204 = 0u;
            v205 = 0u;
            v206 = 0u;
            v144 = v58;
            v147 = v60;
            v61 = [v60 inputs];
            v62 = [v61 countByEnumeratingWithState:&v203 objects:v246 count:16];
            if (v62)
            {
              v63 = *v204;
              do
              {
                for (n = 0; n != v62; ++n)
                {
                  if (*v204 != v63)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v65 = *(*(&v203 + 1) + 8 * n);
                  if (![v65 type])
                  {
                    v66 = [v65 resourceKey];
                    v67 = [v153 objectForKeyedSubscript:v66];

                    if (!v67)
                    {
                      v67 = objc_opt_new();
                      v68 = [v65 resourceKey];
                      [v153 setObject:v67 forKey:v68];
                    }

                    [v67 addObject:v48];
                  }
                }

                v62 = [v61 countByEnumeratingWithState:&v203 objects:v246 count:16];
              }

              while (v62);
            }

            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v69 = [v147 outputs];
            v70 = [v69 countByEnumeratingWithState:&v199 objects:v245 count:16];
            if (v70)
            {
              v71 = *v200;
              do
              {
                for (ii = 0; ii != v70; ++ii)
                {
                  if (*v200 != v71)
                  {
                    objc_enumerationMutation(v69);
                  }

                  v73 = *(*(&v199 + 1) + 8 * ii);
                  v74 = [v73 resourceKey];
                  [v159 setObject:v48 forKey:v74];

                  if ((flags & 0x1D) == 1)
                  {
                    v75 = [PSTimeWrapper alloc];
                    v183.value = value;
                    v183.timescale = timescale;
                    v183.flags = flags;
                    v183.epoch = obja;
                    v76 = [(PSTimeWrapper *)v75 initWithTime:&v183];
                    v77 = [v73 resourceKey];
                    [v157 setObject:v76 forKey:v77];
                  }
                }

                v70 = [v69 countByEnumeratingWithState:&v199 objects:v245 count:16];
              }

              while (v70);
            }

            v58 = v144 + 1;
          }

          while (v144 + 1 != v141);
          v141 = [v136 countByEnumeratingWithState:&v207 objects:v247 count:16];
        }

        while (v141);
      }

      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v139 = [v48 sourceTasks];
      v145 = [v139 countByEnumeratingWithState:&v195 objects:v244 count:16];
      if (v145)
      {
        v142 = *v196;
        do
        {
          v78 = 0;
          do
          {
            if (*v196 != v142)
            {
              v79 = v78;
              objc_enumerationMutation(v139);
              v78 = v79;
            }

            v148 = v78;
            v80 = *(*(&v195 + 1) + 8 * v78);
            v191 = 0u;
            v192 = 0u;
            v193 = 0u;
            v194 = 0u;
            v81 = [v80 outputs];
            v82 = [v81 countByEnumeratingWithState:&v191 objects:v243 count:16];
            if (v82)
            {
              v83 = *v192;
              do
              {
                for (jj = 0; jj != v82; ++jj)
                {
                  if (*v192 != v83)
                  {
                    objc_enumerationMutation(v81);
                  }

                  v85 = *(*(&v191 + 1) + 8 * jj);
                  v86 = [v85 resourceKey];
                  [v159 setObject:v48 forKey:v86];

                  if ((flags & 0x1D) == 1)
                  {
                    v87 = [PSTimeWrapper alloc];
                    v183.value = value;
                    v183.timescale = timescale;
                    v183.flags = flags;
                    v183.epoch = obja;
                    v88 = [(PSTimeWrapper *)v87 initWithTime:&v183];
                    v89 = [v85 resourceKey];
                    [v157 setObject:v88 forKey:v89];
                  }
                }

                v82 = [v81 countByEnumeratingWithState:&v191 objects:v243 count:16];
              }

              while (v82);
            }

            v78 = v148 + 1;
          }

          while ((v148 + 1) != v145);
          v145 = [v139 countByEnumeratingWithState:&v195 objects:v244 count:16];
        }

        while (v145);
      }

      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v90 = [v48 writers];
      v91 = [v90 countByEnumeratingWithState:&v187 objects:v242 count:16];
      if (v91)
      {
        v92 = *v188;
        do
        {
          for (kk = 0; kk != v91; ++kk)
          {
            if (*v188 != v92)
            {
              objc_enumerationMutation(v90);
            }

            v94 = [*(*(&v187 + 1) + 8 * kk) output];
            v95 = v94;
            if (v94)
            {
              v96 = [v94 resourceKey];
              [v159 setObject:v48 forKey:v96];

              if ((flags & 0x1D) == 1)
              {
                v97 = [PSTimeWrapper alloc];
                v183.value = value;
                v183.timescale = timescale;
                v183.flags = flags;
                v183.epoch = obja;
                v98 = [(PSTimeWrapper *)v97 initWithTime:&v183];
                v99 = [v95 resourceKey];
                [v157 setObject:v98 forKey:v99];
              }
            }
          }

          v91 = [v90 countByEnumeratingWithState:&v187 objects:v242 count:16];
        }

        while (v91);
      }

      v45 = v125;
      v46 = v126 + 1;
    }

    while ((v126 + 1) != v134);
    v134 = [v129 countByEnumeratingWithState:&v216 objects:v250 count:16];
    v45 = v125;
  }

  while (v134);
LABEL_124:

  v183.value = 0;
  *&v183.timescale = &v183;
  v183.epoch = 0x3042000000;
  v184 = __Block_byref_object_copy_;
  v185 = __Block_byref_object_dispose_;
  v186 = 0;
  v177[0] = MEMORY[0x277D85DD0];
  v177[1] = 3221225472;
  v177[2] = __PSGraphResolveFrequenciesImpl_block_invoke;
  v177[3] = &unk_279A4E290;
  v149 = v130;
  v178 = v149;
  objb = v159;
  v179 = objb;
  v182 = &v183;
  v158 = v157;
  v180 = v158;
  v160 = v153;
  v181 = v160;
  v100 = MEMORY[0x25F8CC5B0](v177);
  objc_storeWeak((*&v183.timescale + 40), v100);
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v101 = v129;
  v102 = [v101 countByEnumeratingWithState:&v173 objects:v241 count:16];
  if (v102)
  {
    v103 = *v174;
    while (2)
    {
      for (mm = 0; mm != v102; ++mm)
      {
        if (*v174 != v103)
        {
          objc_enumerationMutation(v101);
        }

        if (((v100)[2](v100, *(*(&v173 + 1) + 8 * mm), a4) & 1) == 0)
        {
          v118 = 0;
          v105 = v101;
          goto LABEL_151;
        }
      }

      v102 = [v101 countByEnumeratingWithState:&v173 objects:v241 count:16];
      if (v102)
      {
        continue;
      }

      break;
    }
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v105 = v101;
  v106 = [v105 countByEnumeratingWithState:&v169 objects:v240 count:16];
  if (v106)
  {
    v107 = *v170;
    while (2)
    {
      for (nn = 0; nn != v106; ++nn)
      {
        if (*v170 != v107)
        {
          objc_enumerationMutation(v105);
        }

        v109 = *(*(&v169 + 1) + 8 * nn);
        v110 = [v109 graphFrequency];
        v111 = [v110 type] == 3;

        if (v111)
        {
          v112 = [v109 writers];
          if ([v112 count])
          {
          }

          else
          {
            v113 = [v109 workloadWait] == 0;

            if (v113)
            {
              if (a4)
              {
                v119 = MEMORY[0x277CCA9B8];
                v120 = MEMORY[0x277CCACA8];
                v121 = [v109 name];
                v122 = [v120 stringWithFormat:@"Graph (%@) is marked as variable frequency but has no PSWritersor a workload wait function.", v121];
                *a4 = [v119 internalErrorWithCode:-2 description:v122];
              }

              v118 = 0;
              goto LABEL_151;
            }
          }

          [v109 setNeedsLiveness:0];
        }

        v114 = [v109 tasks];
        v115 = [v114 count] == 0;

        if (v115)
        {
          [v109 setNeedsLiveness:0];
        }
      }

      v106 = [v105 countByEnumeratingWithState:&v169 objects:v240 count:16];
      if (v106)
      {
        continue;
      }

      break;
    }
  }

  v116 = [PSDependencyResolver alloc];
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = __PSGraphResolveFrequenciesImpl_block_invoke_525;
  v165[3] = &unk_279A4E2B8;
  v166 = v152;
  v167 = v151;
  v168 = v150;
  v161[0] = MEMORY[0x277D85DD0];
  v161[1] = 3221225472;
  v161[2] = __PSGraphResolveFrequenciesImpl_block_invoke_2;
  v161[3] = &unk_279A4E2B8;
  v162 = v168;
  v163 = v166;
  v164 = v167;
  v117 = [(PSDependencyResolver *)v116 initWithVertices:v105 withParentToEdgeFetcher:v165 withChildToEdgeFetcher:v161];
  [(PSDependencyResolver *)v117 resolveWithBlock:&__block_literal_global_1];

  v118 = 1;
  v105 = v166;
LABEL_151:

  _Block_object_dispose(&v183, 8);
  objc_destroyWeak(&v186);

  v123 = *MEMORY[0x277D85DE8];
  return v118;
}

void sub_25EC94808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  objc_destroyWeak((v71 + 40));
  _Unwind_Resume(a1);
}

uint64_t PSGraphResolveFrequencies(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = 0;
  v6 = PSGraphResolveFrequenciesImpl(a1, v5, &v26, a3);
  v7 = v26;
  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v7 objectForKey:v13];
          v15 = v14;
          if (v14)
          {
            [v14 time];
          }

          else
          {
            v20 = 0uLL;
            v21 = 0;
          }

          v18 = v20;
          v19 = v21;
          [v13 setResolvedInterval:&v18];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t PSGraphApplyFrequencyLimits(void *a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v33 = a1;
  v6 = a2;
  v7 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  obj = v6;
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    v35 = *MEMORY[0x277CC08A0];
    v11 = *(MEMORY[0x277CC08A0] + 16);
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        *&v43.value = v35;
        v43.epoch = v11;
        [v13 setMinInterval:&v43];
        v14 = [v13 name];
        v15 = [v7 objectForKey:v14];
        v16 = [v15 objectForKeyedSubscript:@"maxFrequency"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v18 = [v13 name];
          v19 = [v7 objectForKey:v18];
          v20 = [v19 objectForKeyedSubscript:@"maxFrequency"];

          memset(&v43, 0, sizeof(v43));
          CMTimeMake(&v43, 1, [v20 unsignedIntegerValue]);
          v42 = v43;
          [v13 setMinInterval:&v42];
        }
      }

      v6 = obj;
      v9 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v9);
  }

  v41 = 0;
  v21 = PSGraphResolveFrequenciesImpl(v33, v6, &v41, a4);
  v22 = v41;
  if ((v21 & 1) == 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v6;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      v36 = *MEMORY[0x277CC08A0];
      v27 = *(MEMORY[0x277CC08A0] + 16);
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v37 + 1) + 8 * j);
          *&v43.value = v36;
          v43.epoch = v27;
          [v29 setMinInterval:&v43];
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v25);
    }

    v6 = obj;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t PSGraphResolveCriticalities(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 maxCriticalityCPU];
        v9 = [v7 criticalityCPU];
        if (v8 <= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }

        [v7 setResolvedCriticalityCPU:v10];
        v11 = [v7 maxCriticalityGPU];
        v12 = [v7 criticalityGPU];
        if (v11 <= v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v11;
        }

        [v7 setResolvedCriticalityGPU:v13];
        v14 = [v7 maxCriticalityANE];
        v15 = [v7 criticalityANE];
        if (v14 <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        [v7 setResolvedCriticalityANE:v16];
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t PSGraphApplyCriticalityLimits(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
  v6 = [v4 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v40 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v5 objectForKey:v10];
        v12 = [v11 objectForKeyedSubscript:@"maxCriticalityCPU"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [v9 name];
          v15 = [v5 objectForKey:v14];
          v16 = [v15 objectForKeyedSubscript:@"maxCriticalityCPU"];

          v17 = [v16 unsignedIntegerValue];
          if ((v17 - 1) >= 3)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17;
          }
        }

        else
        {
          v18 = 0;
        }

        [v9 setMaxCriticalityCPU:v18];
        v19 = [v9 name];
        v20 = [v5 objectForKey:v19];
        v21 = [v20 objectForKeyedSubscript:@"maxCriticalityGPU"];
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        if (v22)
        {
          v23 = [v9 name];
          v24 = [v5 objectForKey:v23];
          v25 = [v24 objectForKeyedSubscript:@"maxCriticalityGPU"];

          v26 = [v25 unsignedIntegerValue];
          if ((v26 - 1) >= 3)
          {
            v27 = 0;
          }

          else
          {
            v27 = v26;
          }
        }

        else
        {
          v27 = 0;
        }

        [v9 setMaxCriticalityGPU:v27];
        v28 = [v9 name];
        v29 = [v5 objectForKey:v28];
        v30 = [v29 objectForKeyedSubscript:@"maxCriticalityANE"];
        objc_opt_class();
        v31 = objc_opt_isKindOfClass();

        if (v31)
        {
          v32 = [v9 name];
          v33 = [v5 objectForKey:v32];
          v34 = [v33 objectForKeyedSubscript:@"maxCriticalityANE"];

          v35 = [v34 unsignedIntegerValue];
          if ((v35 - 1) >= 3)
          {
            v36 = 0;
          }

          else
          {
            v36 = v35;
          }
        }

        else
        {
          v36 = 0;
        }

        [v9 setMaxCriticalityANE:v36];
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v7);
  }

  v37 = *MEMORY[0x277D85DE8];
  return 1;
}

id PSGenerateDependencyGraphWithClientGraph(void *a1)
{
  v132 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v5 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v62 = v1;
  obj = [v1 tasks];
  v70 = v5;
  v71 = [obj countByEnumeratingWithState:&v118 objects:v131 count:16];
  v74 = v3;
  if (v71)
  {
    v68 = *v119;
    do
    {
      v6 = 0;
      do
      {
        if (*v119 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v76 = v6;
        v7 = *(*(&v118 + 1) + 8 * v6);
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v8 = [v7 waitBarriers];
        v9 = [v8 countByEnumeratingWithState:&v114 objects:v130 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v115;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v115 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v3 addObject:*(*(&v114 + 1) + 8 * i)];
            }

            v10 = [v8 countByEnumeratingWithState:&v114 objects:v130 count:16];
          }

          while (v10);
        }

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v13 = [v7 updateBarriers];
        v14 = [v13 countByEnumeratingWithState:&v110 objects:v129 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v111;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v111 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [v3 addObject:*(*(&v110 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v110 objects:v129 count:16];
          }

          while (v15);
        }

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v18 = [v7 outputs];
        v19 = [v18 countByEnumeratingWithState:&v106 objects:v128 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v107;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v107 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [*(*(&v106 + 1) + 8 * k) resourceKey];
              [v5 setObject:v7 forKey:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v106 objects:v128 count:16];
          }

          while (v20);
        }

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v79 = [v7 inputs];
        v24 = [v79 countByEnumeratingWithState:&v102 objects:v127 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v103;
          do
          {
            for (m = 0; m != v25; ++m)
            {
              if (*v103 != v26)
              {
                objc_enumerationMutation(v79);
              }

              v28 = *(*(&v102 + 1) + 8 * m);
              if (![v28 type])
              {
                [v28 resolvedResourceKey];
                v30 = v29 = v4;
                v31 = [v29 objectForKey:v30];

                if (!v31)
                {
                  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v33 = [v28 resolvedResourceKey];
                  [v29 setObject:v32 forKey:v33];
                }

                v34 = [v28 resolvedResourceKey];
                v35 = [v29 objectForKey:v34];

                [v35 addObject:v7];
                v5 = v70;
                v4 = v29;
              }
            }

            v25 = [v79 countByEnumeratingWithState:&v102 objects:v127 count:16];
          }

          while (v25);
        }

        v3 = v74;
        v6 = v76 + 1;
      }

      while ((v76 + 1) != v71);
      v71 = [obj countByEnumeratingWithState:&v118 objects:v131 count:16];
    }

    while (v71);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v36 = v4;
  v64 = v36;
  v77 = [v36 countByEnumeratingWithState:&v98 objects:v126 count:16];
  if (v77)
  {
    v72 = *v99;
    do
    {
      for (n = 0; n != v77; ++n)
      {
        if (*v99 != v72)
        {
          objc_enumerationMutation(v36);
        }

        v38 = *(*(&v98 + 1) + 8 * n);
        v39 = [v36 objectForKey:v38];
        v40 = [v5 objectForKey:v38];

        if (v40)
        {
          v41 = [v5 objectForKey:v38];
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v80 = v39;
          v42 = v39;
          v43 = [v42 countByEnumeratingWithState:&v94 objects:v125 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v95;
            do
            {
              for (ii = 0; ii != v44; ++ii)
              {
                if (*v95 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v94 + 1) + 8 * ii);
                v48 = [v2 objectForKey:v41];
                if (!v48)
                {
                  v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [v2 setObject:v48 forKey:v41];
                }

                [v48 addObject:v47];
              }

              v44 = [v42 countByEnumeratingWithState:&v94 objects:v125 count:16];
            }

            while (v44);
          }

          v5 = v70;
          v3 = v74;
          v36 = v64;
          v39 = v80;
        }
      }

      v77 = [v36 countByEnumeratingWithState:&v98 objects:v126 count:16];
    }

    while (v77);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v63 = v3;
  obja = [v63 countByEnumeratingWithState:&v90 objects:v124 count:16];
  if (obja)
  {
    v65 = *v91;
    do
    {
      v49 = 0;
      do
      {
        if (*v91 != v65)
        {
          objc_enumerationMutation(v63);
        }

        v69 = v49;
        v50 = *(*(&v90 + 1) + 8 * v49);
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v78 = v50;
        v73 = [v50 unblockingTasks];
        v81 = [v73 countByEnumeratingWithState:&v86 objects:v123 count:16];
        if (v81)
        {
          v75 = *v87;
          do
          {
            for (jj = 0; jj != v81; jj = jj + 1)
            {
              if (*v87 != v75)
              {
                objc_enumerationMutation(v73);
              }

              v52 = *(*(&v86 + 1) + 8 * jj);
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v53 = [v78 blockingTasks];
              v54 = [v53 countByEnumeratingWithState:&v82 objects:v122 count:16];
              if (v54)
              {
                v55 = v54;
                v56 = *v83;
                do
                {
                  for (kk = 0; kk != v55; ++kk)
                  {
                    if (*v83 != v56)
                    {
                      objc_enumerationMutation(v53);
                    }

                    v58 = *(*(&v82 + 1) + 8 * kk);
                    v59 = [v2 objectForKey:v52];
                    if (!v59)
                    {
                      v59 = objc_alloc_init(MEMORY[0x277CBEB58]);
                      [v2 setObject:v59 forKey:v52];
                    }

                    [v59 addObject:v58];
                  }

                  v55 = [v53 countByEnumeratingWithState:&v82 objects:v122 count:16];
                }

                while (v55);
              }
            }

            v81 = [v73 countByEnumeratingWithState:&v86 objects:v123 count:16];
          }

          while (v81);
        }

        v49 = v69 + 1;
      }

      while ((v69 + 1) != obja);
      obja = [v63 countByEnumeratingWithState:&v90 objects:v124 count:16];
    }

    while (obja);
  }

  v60 = *MEMORY[0x277D85DE8];

  return v2;
}

unint64_t PSFindMaxThreadsForGraph(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v1 = PSGenerateDependencyGraphWithClientGraph(v19);
  v20 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v9 = objc_alloc(MEMORY[0x277CBEB58]);
        v10 = [v2 objectForKey:v7];
        v11 = [v9 initWithSet:v10];
        while (1)
        {

          if (![v11 count])
          {
            break;
          }

          v10 = [v11 anyObject];
          [v11 removeObject:v10];
          [v8 addObject:v10];
          v12 = [v2 objectForKey:v10];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 allObjects];
            [v11 addObjectsFromArray:v14];
          }
        }

        [v20 setObject:v8 forKey:v7];

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = PSSearchForGraph(v19, v15, v20, 0);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

unint64_t PSSearchForGraph(void *a1, void *a2, void *a3, unint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 tasks];
  v11 = [v10 count];

  if (v11 <= a4)
  {
    v23 = [v8 count];
  }

  else
  {
    v12 = [v7 tasks];
    v13 = [v12 objectAtIndex:a4];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [v9 objectForKey:{*(*(&v29 + 1) + 8 * v18), v29}];
          v20 = v19;
          if (v19 && [v19 containsObject:v13])
          {

            v25 = [v14 count];
            v26 = PSSearchForGraph(v7, v14, v9, a4 + 1);
            if (v25 <= v26)
            {
              v23 = v26;
            }

            else
            {
              v23 = v25;
            }

            goto LABEL_21;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    [v14 addObject:v13];
    v21 = PSSearchForGraph(v7, v14, v9, a4 + 1);
    [v14 removeObject:v13];
    v22 = PSSearchForGraph(v7, v14, v9, a4 + 1);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    v24 = [v14 count];
    if (v23 <= v24)
    {
      v23 = v24;
    }

LABEL_21:
  }

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t PSGraphResolveThreadPoolSizes(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 threadPoolSize] == 1)
        {
          v8 = [v7 threadPoolSize];
        }

        else
        {
          v9 = PSFindMaxThreadsForGraph(v7);
          v10 = [v7 maxThreadPoolSize];
          if (v9 >= v10)
          {
            v9 = v10;
          }

          v11 = [v7 threadPoolSize];
          if (v9 >= v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = v9;
          }

          if (v12 <= 1)
          {
            v8 = 1;
          }

          else
          {
            v8 = v12;
          }
        }

        [v7 setResolvedThreadPoolSize:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t PSCheckGraphsAreDAG(void *a1)
{
  v137 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v66 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v65 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v3 = v1;
  v4 = v2;
  v82 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v3;
  v78 = [obj countByEnumeratingWithState:&v123 objects:v136 count:16];
  if (v78)
  {
    v76 = *v124;
    do
    {
      v5 = 0;
      do
      {
        if (*v124 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v5;
        v6 = *(*(&v123 + 1) + 8 * v5);
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v84 = [v6 tasks];
        v7 = [v84 countByEnumeratingWithState:&v119 objects:v135 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v120;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v120 != v9)
              {
                objc_enumerationMutation(v84);
              }

              v11 = *(*(&v119 + 1) + 8 * i);
              v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
              v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
              [v4 setObject:v12 forKeyedSubscript:v13];

              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v14 = [v11 outputs];
              v15 = [v14 countByEnumeratingWithState:&v115 objects:v134 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v116;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v116 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [*(*(&v115 + 1) + 8 * j) resourceKey];
                    [v82 setObject:v11 forKeyedSubscript:v19];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v115 objects:v134 count:16];
                }

                while (v16);
              }
            }

            v8 = [v84 countByEnumeratingWithState:&v119 objects:v135 count:16];
          }

          while (v8);
        }

        v5 = v80 + 1;
      }

      while (v80 + 1 != v78);
      v78 = [obj countByEnumeratingWithState:&v123 objects:v136 count:16];
    }

    while (v78);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v67 = obj;
  v69 = [v67 countByEnumeratingWithState:&v111 objects:v133 count:16];
  if (v69)
  {
    v68 = *v112;
    do
    {
      v20 = 0;
      do
      {
        if (*v112 != v68)
        {
          objc_enumerationMutation(v67);
        }

        v70 = v20;
        v21 = *(*(&v111 + 1) + 8 * v20);
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v71 = [v21 tasks];
        v73 = [v71 countByEnumeratingWithState:&v107 objects:v132 count:16];
        if (v73)
        {
          v72 = *v108;
          do
          {
            v22 = 0;
            do
            {
              if (*v108 != v72)
              {
                objc_enumerationMutation(v71);
              }

              obja = v22;
              v23 = *(*(&v107 + 1) + 8 * v22);
              v103 = 0u;
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v24 = [v23 inputs];
              v25 = [v24 countByEnumeratingWithState:&v103 objects:v131 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v104;
                do
                {
                  for (k = 0; k != v26; ++k)
                  {
                    if (*v104 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v103 + 1) + 8 * k);
                    if ([v29 type] != 2)
                    {
                      v30 = [v29 resourceKey];
                      v31 = [v82 objectForKey:v30];

                      if (v31)
                      {
                        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                        v33 = [v4 objectForKeyedSubscript:v32];
                        v34 = [v33 containsObject:v23];

                        if ((v34 & 1) == 0)
                        {
                          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                          v36 = [v4 objectForKeyedSubscript:v35];
                          [v36 addObject:v23];
                        }
                      }
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v103 objects:v131 count:16];
                }

                while (v26);
              }

              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v77 = [v23 updateBarriers];
              v81 = [v77 countByEnumeratingWithState:&v99 objects:v130 count:16];
              if (v81)
              {
                v79 = *v100;
                do
                {
                  v37 = 0;
                  do
                  {
                    if (*v100 != v79)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v85 = v37;
                    v38 = *(*(&v99 + 1) + 8 * v37);
                    v95 = 0u;
                    v96 = 0u;
                    v97 = 0u;
                    v98 = 0u;
                    v39 = [v38 blockingTasks];
                    v40 = [v39 countByEnumeratingWithState:&v95 objects:v129 count:16];
                    if (v40)
                    {
                      v41 = v40;
                      v42 = *v96;
                      do
                      {
                        for (m = 0; m != v41; ++m)
                        {
                          if (*v96 != v42)
                          {
                            objc_enumerationMutation(v39);
                          }

                          v44 = *(*(&v95 + 1) + 8 * m);
                          v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
                          v46 = [v4 objectForKeyedSubscript:v45];
                          v47 = [v46 containsObject:v44];

                          if ((v47 & 1) == 0)
                          {
                            v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
                            v49 = [v4 objectForKeyedSubscript:v48];
                            [v49 addObject:v44];
                          }
                        }

                        v41 = [v39 countByEnumeratingWithState:&v95 objects:v129 count:16];
                      }

                      while (v41);
                    }

                    v37 = v85 + 1;
                  }

                  while (v85 + 1 != v81);
                  v81 = [v77 countByEnumeratingWithState:&v99 objects:v130 count:16];
                }

                while (v81);
              }

              v22 = obja + 1;
            }

            while (obja + 1 != v73);
            v73 = [v71 countByEnumeratingWithState:&v107 objects:v132 count:16];
          }

          while (v73);
        }

        v20 = v70 + 1;
      }

      while (v70 + 1 != v69);
      v69 = [v67 countByEnumeratingWithState:&v111 objects:v133 count:16];
    }

    while (v69);
  }

  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v50 = v67;
  v86 = [v50 countByEnumeratingWithState:&v91 objects:v128 count:16];
  if (v86)
  {
    v51 = *v92;
    v83 = *v92;
    do
    {
      for (n = 0; n != v86; n = n + 1)
      {
        if (*v92 != v51)
        {
          objc_enumerationMutation(v50);
        }

        v53 = *(*(&v91 + 1) + 8 * n);
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v54 = [v53 tasks];
        v55 = [v54 countByEnumeratingWithState:&v87 objects:v127 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v88;
          while (2)
          {
            for (ii = 0; ii != v56; ++ii)
            {
              if (*v88 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v87 + 1) + 8 * ii);
              v60 = [v59 name];
              v61 = [v66 objectForKey:v60];

              if (!v61 && !PSCheckGraphsAreDAGHelper(v59, v4, v66, v65))
              {

                v62 = 0;
                goto LABEL_83;
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v87 objects:v127 count:16];
            if (v56)
            {
              continue;
            }

            break;
          }
        }

        v51 = v83;
      }

      v62 = 1;
      v86 = [v50 countByEnumeratingWithState:&v91 objects:v128 count:16];
    }

    while (v86);
  }

  else
  {
    v62 = 1;
  }

LABEL_83:

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

uint64_t PSCheckGraphsAreDAGHelper(void *a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v10 = v8;
  v11 = a3;
  v12 = a4;
  v13 = [v7 name];
  v14 = [v11 objectForKey:v13];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v17 = [v7 name];
    [v11 setObject:v16 forKeyedSubscript:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v19 = [v7 name];
    [v12 setObject:v18 forKeyedSubscript:v19];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = v7;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    v39 = v10;
    v21 = [v10 objectForKeyedSubscript:v20];
    v22 = [v21 allObjects];

    v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v40 + 1) + 8 * i);
          v28 = [v27 name];
          v29 = [v11 objectForKey:v28];
          if ([v29 BOOLValue])
          {
          }

          else
          {
            v30 = PSCheckGraphsAreDAGHelper(v27, v39, v11, v12);

            if ((v30 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          v31 = [v27 name];
          v32 = [v12 objectForKey:v31];
          if (v32)
          {
            v33 = v32;
            v34 = [v27 name];
            v35 = [v12 objectForKeyedSubscript:v34];

            if (v35)
            {
LABEL_18:
              v15 = 0;
              v9 = v38;
              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v9 = v38;
    v22 = [v38 name];
    [v12 setObject:0 forKeyedSubscript:v22];
    v15 = 1;
LABEL_19:

    v10 = v39;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t PSGraphApplyThreadPoolSizeLimits(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v5 objectForKey:v11];
        v13 = [v12 objectForKeyedSubscript:@"maxThreadPoolSize"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [v10 name];
          v16 = [v5 objectForKey:v15];
          v17 = [v16 objectForKeyedSubscript:@"maxThreadPoolSize"];

          v18 = [v17 unsignedIntegerValue];
        }

        else
        {
          v18 = -1;
        }

        [v10 setMaxThreadPoolSize:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t PSGraphResolveStreamDomains(void *a1, void *a2, void *a3)
{
  v187 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v6 = [v4 allExternalStreams];
  v7 = [v6 countByEnumeratingWithState:&v168 objects:v186 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v169;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v169 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v168 + 1) + 8 * i);
        v12 = [v11 domain];
        if (v12)
        {
        }

        else
        {
          v13 = [v11 resolvedDomain];

          if (!v13)
          {
            v15 = +[PSStreamDomain mixedDomain];
            goto LABEL_12;
          }
        }

        v14 = [v11 resolvedDomain];

        if (v14)
        {
          goto LABEL_13;
        }

        v15 = [v11 domain];
LABEL_12:
        v16 = v15;
        [v11 setResolvedDomain:v15];

LABEL_13:
      }

      v8 = [v6 countByEnumeratingWithState:&v168 objects:v186 count:16];
    }

    while (v8);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = v5;
  v114 = [obj countByEnumeratingWithState:&v164 objects:v185 count:16];
  if (v114)
  {
    v112 = *v165;
    do
    {
      v17 = 0;
      do
      {
        if (*v165 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v118 = v17;
        v18 = *(*(&v164 + 1) + 8 * v17);
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v116 = v18;
        v122 = [v18 sourceTasks];
        v19 = [v122 countByEnumeratingWithState:&v160 objects:v184 count:16];
        if (v19)
        {
          v20 = v19;
          v126 = *v161;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v161 != v126)
              {
                objc_enumerationMutation(v122);
              }

              v22 = *(*(&v160 + 1) + 8 * j);
              v156 = 0u;
              v157 = 0u;
              v158 = 0u;
              v159 = 0u;
              v23 = [v22 outputs];
              v24 = [v23 countByEnumeratingWithState:&v156 objects:v183 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v157;
                do
                {
                  for (k = 0; k != v25; ++k)
                  {
                    if (*v157 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = [*(*(&v156 + 1) + 8 * k) resourceKey];
                    v29 = [v4 resourceStreamForKey:v28];

                    v30 = [v29 domain];
                    if (v30)
                    {
                    }

                    else
                    {
                      v31 = [v29 resolvedDomain];

                      if (!v31)
                      {
                        v33 = +[PSStreamDomain mixedDomain];
                        goto LABEL_36;
                      }
                    }

                    v32 = [v29 resolvedDomain];

                    if (v32)
                    {
                      goto LABEL_37;
                    }

                    v33 = [v29 domain];
LABEL_36:
                    v34 = v33;
                    [v29 setResolvedDomain:v33];

LABEL_37:
                  }

                  v25 = [v23 countByEnumeratingWithState:&v156 objects:v183 count:16];
                }

                while (v25);
              }
            }

            v20 = [v122 countByEnumeratingWithState:&v160 objects:v184 count:16];
          }

          while (v20);
        }

        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v35 = [v116 writers];
        v36 = [v35 countByEnumeratingWithState:&v152 objects:v182 count:16];
        if (!v36)
        {
          goto LABEL_55;
        }

        v37 = v36;
        v38 = *v153;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v153 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [*(*(&v152 + 1) + 8 * m) output];
            v41 = [v40 resourceKey];
            v42 = [v4 resourceStreamForKey:v41];

            v43 = [v42 domain];
            if (v43)
            {
            }

            else
            {
              v44 = [v42 resolvedDomain];

              if (!v44)
              {
                v46 = +[PSStreamDomain mixedDomain];
                goto LABEL_52;
              }
            }

            v45 = [v42 resolvedDomain];

            if (v45)
            {
              goto LABEL_53;
            }

            v46 = [v42 domain];
LABEL_52:
            v47 = v46;
            [v42 setResolvedDomain:v46];

LABEL_53:
          }

          v37 = [v35 countByEnumeratingWithState:&v152 objects:v182 count:16];
        }

        while (v37);
LABEL_55:

        v17 = v118 + 1;
      }

      while (v118 + 1 != v114);
      v114 = [obj countByEnumeratingWithState:&v164 objects:v185 count:16];
    }

    while (v114);
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v127 = obj;
  v48 = [v127 countByEnumeratingWithState:&v148 objects:v181 count:16];
  if (!v48)
  {
    goto LABEL_79;
  }

  v49 = v48;
  v50 = *v149;
  v113 = *v149;
LABEL_59:
  v51 = 0;
  while (1)
  {
    if (*v149 != v50)
    {
      objc_enumerationMutation(v127);
    }

    v119 = v51;
    v52 = *(*(&v148 + 1) + 8 * v51);
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v53 = [v52 tasks];
    v123 = [v53 countByEnumeratingWithState:&v144 objects:v180 count:16];
    if (v123)
    {
      break;
    }

LABEL_77:

    v51 = v119 + 1;
    if (v119 + 1 == v49)
    {
      v49 = [v127 countByEnumeratingWithState:&v148 objects:v181 count:16];
      if (!v49)
      {
LABEL_79:

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v64 = v127;
        v65 = [v64 countByEnumeratingWithState:&v136 objects:v178 count:16];
        if (v65)
        {
          v66 = v65;
          v67 = *v137;
          do
          {
            v68 = 0;
            do
            {
              if (*v137 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = *(*(&v136 + 1) + 8 * v68);
              v70 = [v69 sourceTasks];
              v71 = [v70 count];

              if (v71 || ([v69 writers], v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "count"), v72, v73))
              {
                v74 = +[PSStreamDomain mixedDomain];
                [v69 setResolvedDomain:v74];
              }

              else if ((resolveGraphDomain(v69, v4, v64, a3) & 1) == 0)
              {
                goto LABEL_130;
              }

              ++v68;
            }

            while (v66 != v68);
            v75 = [v64 countByEnumeratingWithState:&v136 objects:v178 count:16];
            v66 = v75;
          }

          while (v75);
        }

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v76 = v64;
        v77 = [v76 countByEnumeratingWithState:&v132 objects:v177 count:16];
        if (!v77)
        {
LABEL_108:

          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v64 = [v4 allStreams];
          v125 = [v64 countByEnumeratingWithState:&v128 objects:v176 count:16];
          if (v125)
          {
            v121 = *v129;
            while (2)
            {
              for (n = 0; n != v125; n = n + 1)
              {
                if (*v129 != v121)
                {
                  objc_enumerationMutation(v64);
                }

                v53 = *(*(&v128 + 1) + 8 * n);
                v88 = [v53 resolvedDomain];

                if (v88)
                {
                  v89 = [v53 resolvedDomain];
                  v90 = +[PSStreamDomain mixedDomain];
                  v91 = [v89 isEqual:v90];

                  v92 = [v53 domain];
                  if (v92)
                  {
                    v93 = [v53 domain];
                    v94 = +[PSStreamDomain mixedDomain];
                    v95 = [v93 isEqual:v94];
                  }

                  else
                  {
                    v95 = 1;
                  }

                  if (!(v91 & 1 | ((v95 & 1) == 0)) && [v53 options] == 2)
                  {
                    v96 = __PSGraphLogSharedInstance();
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                    {
                      v97 = [v53 key];
                      v98 = [v53 resolvedDomain];
                      *buf = 138478083;
                      v173 = v97;
                      v174 = 2113;
                      v175 = v98;
                      _os_log_impl(&dword_25EC85000, v96, OS_LOG_TYPE_DEBUG, "Shared stream %{private}@ was declared as a mixed domain stream, but resolved to something nicer (domain: %{private}@).", buf, 0x16u);
                    }
                  }

                  if (!(v95 & 1 | ((v91 & 1) == 0)))
                  {
                    v105 = MEMORY[0x277CCACA8];
                    v106 = [v53 key];
                    v107 = [v53 domain];
                    v57 = [v105 stringWithFormat:@"Resolved domain for key %@ was mixed domain, but this stream was declared as something stricter (domain: %@).", v106, v107];
LABEL_135:

                    populateStreamError(v57, a3);
                    goto LABEL_129;
                  }

                  if (((v95 | v91) & 1) == 0)
                  {
                    v99 = [v53 domain];
                    v100 = [v53 resolvedDomain];
                    v101 = [v99 isEqual:v100];

                    if ((v101 & 1) == 0)
                    {
                      v108 = MEMORY[0x277CCACA8];
                      v106 = [v53 resolvedDomain];
                      v107 = [v53 key];
                      v109 = [v53 domain];
                      v57 = [v108 stringWithFormat:@"Resolved domain (%@) for key %@ was different from the declared domain (%@).", v106, v107, v109];

                      goto LABEL_135;
                    }
                  }
                }
              }

              v102 = 1;
              v125 = [v64 countByEnumeratingWithState:&v128 objects:v176 count:16];
              if (v125)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v102 = 1;
          }

          goto LABEL_131;
        }

        v78 = v77;
        v79 = *v133;
        v120 = v76;
        while (2)
        {
          v80 = 0;
LABEL_95:
          if (*v133 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v132 + 1) + 8 * v80);
          v82 = [v81 readers];
          if (![v82 count])
          {
            goto LABEL_102;
          }

          v83 = [v81 tasks];
          if ([v83 count])
          {
            goto LABEL_101;
          }

          v84 = [v81 sourceTasks];
          if ([v84 count])
          {

LABEL_101:
LABEL_102:
          }

          else
          {
            v85 = [v81 writers];
            v124 = [v85 count];

            v76 = v120;
            if (!v124)
            {
              v82 = +[PSStreamDomain mixedDomain];
              [v81 setResolvedDomain:v82];
              goto LABEL_102;
            }
          }

          if (v78 == ++v80)
          {
            v86 = [v76 countByEnumeratingWithState:&v132 objects:v177 count:16];
            v78 = v86;
            if (!v86)
            {
              goto LABEL_108;
            }

            continue;
          }

          goto LABEL_95;
        }
      }

      goto LABEL_59;
    }
  }

  v54 = *v145;
  v115 = v49;
  v117 = *v145;
LABEL_64:
  v55 = 0;
  while (1)
  {
    if (*v145 != v54)
    {
      objc_enumerationMutation(v53);
    }

    v56 = *(*(&v144 + 1) + 8 * v55);
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v57 = [v56 outputs];
    v58 = [v57 countByEnumeratingWithState:&v140 objects:v179 count:16];
    if (v58)
    {
      break;
    }

LABEL_75:

    v55 = v55 + 1;
    v54 = v117;
    if (v55 == v123)
    {
      v50 = v113;
      v49 = v115;
      v123 = [v53 countByEnumeratingWithState:&v144 objects:v180 count:16];
      if (!v123)
      {
        goto LABEL_77;
      }

      goto LABEL_64;
    }
  }

  v59 = v58;
  v60 = *v141;
LABEL_69:
  v61 = 0;
  while (1)
  {
    if (*v141 != v60)
    {
      objc_enumerationMutation(v57);
    }

    v62 = [*(*(&v140 + 1) + 8 * v61) resourceKey];
    v63 = [v4 resourceStreamForKey:v62];

    LODWORD(v62) = resolveStreamDomain(v63, v4, v127, a3);
    if (!v62)
    {
      break;
    }

    if (v59 == ++v61)
    {
      v59 = [v57 countByEnumeratingWithState:&v140 objects:v179 count:16];
      if (!v59)
      {
        goto LABEL_75;
      }

      goto LABEL_69;
    }
  }

  v64 = v127;
LABEL_129:

LABEL_130:
  v102 = 0;
LABEL_131:

  v103 = *MEMORY[0x277D85DE8];
  return v102;
}

uint64_t resolveStreamDomain(void *a1, void *a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 resolvedDomain];

  if (!v10)
  {
    v47 = a4;
    v48 = v9;
    v49 = v8;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v59;
      v45 = v12;
      v39 = *v59;
      do
      {
        v16 = 0;
        v40 = v13;
        do
        {
          if (*v59 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v42 = v16;
          v17 = *(*(&v58 + 1) + 8 * v16);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v18 = [v17 tasks];
          v43 = [v18 countByEnumeratingWithState:&v54 objects:v63 count:16];
          if (v43)
          {
            v19 = *v55;
            v46 = v18;
            v41 = *v55;
            do
            {
              v20 = 0;
              do
              {
                if (*v55 != v19)
                {
                  objc_enumerationMutation(v18);
                }

                v44 = v20;
                v21 = *(*(&v54 + 1) + 8 * v20);
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v22 = [v21 outputs];
                v23 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v51;
                  while (2)
                  {
                    for (i = 0; i != v24; ++i)
                    {
                      if (*v51 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = [*(*(&v50 + 1) + 8 * i) resourceKey];
                      v28 = [v7 key];
                      v29 = [v27 isEqualToString:v28];

                      if (v29)
                      {
                        if (v14)
                        {
                          v32 = MEMORY[0x277CCACA8];
                          v33 = [v7 key];
                          v34 = [v32 stringWithFormat:@"Multiple producing graphs found for task output %@", v33];

                          populateStreamError(v34, v47);
                          v11 = 0;
                          v31 = v45;
                          goto LABEL_34;
                        }

                        v14 = v17;
                      }
                    }

                    v24 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
                    if (v24)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v20 = v44 + 1;
                v18 = v46;
                v19 = v41;
              }

              while (v44 + 1 != v43);
              v43 = [v46 countByEnumeratingWithState:&v54 objects:v63 count:16];
            }

            while (v43);
          }

          v16 = v42 + 1;
          v15 = v39;
          v12 = v45;
        }

        while (v42 + 1 != v40);
        v13 = [v45 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v13);

      if (v14)
      {
        v30 = [v14 resolvedDomain];

        if (!v30 && !resolveGraphDomain(v14, v49, v45, v47))
        {
          v11 = 0;
          goto LABEL_35;
        }

        v31 = [v14 resolvedDomain];
        [v7 setResolvedDomain:v31];
        v11 = 1;
LABEL_34:

LABEL_35:
        v9 = v48;
        v8 = v49;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v35 = MEMORY[0x277CCACA8];
    v36 = [v7 key];
    v31 = [v35 stringWithFormat:@"Could not find a producing graph for task output %@", v36];

    populateStreamError(v31, v47);
    v14 = 0;
    v11 = 0;
    goto LABEL_34;
  }

  v11 = 1;
LABEL_36:

  v37 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t resolveGraphDomain(void *a1, void *a2, void *a3, uint64_t a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v63 = a3;
  v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v8 = v6;
  v9 = v7;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v64 = v8;
  obj = [v8 tasks];
  v70 = [obj countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v70)
  {
    v68 = *v99;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v99 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v98 + 1) + 8 * i);
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v72 = v13;
        v14 = [v13 inputs];
        v15 = [v14 countByEnumeratingWithState:&v94 objects:v107 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v95;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v95 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v94 + 1) + 8 * j);
              if (![v19 type])
              {
                v20 = [v19 resolvedResourceKey];
                v21 = [v9 resourceStreamForKey:v20];

                [v10 addObject:v21];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v94 objects:v107 count:16];
          }

          while (v16);
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v22 = [v72 outputs];
        v23 = [v22 countByEnumeratingWithState:&v90 objects:v106 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v91;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v91 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v90 + 1) + 8 * k) resourceKey];
              v28 = [v9 resourceStreamForKey:v27];

              [v11 addObject:v28];
            }

            v24 = [v22 countByEnumeratingWithState:&v90 objects:v106 count:16];
          }

          while (v24);
        }
      }

      v70 = [obj countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v70);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v69 = [v64 sourceTasks];
  v73 = [v69 countByEnumeratingWithState:&v86 objects:v105 count:16];
  if (v73)
  {
    v71 = *v87;
    do
    {
      for (m = 0; m != v73; ++m)
      {
        if (*v87 != v71)
        {
          objc_enumerationMutation(v69);
        }

        v30 = *(*(&v86 + 1) + 8 * m);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v31 = [v30 outputs];
        v32 = [v31 countByEnumeratingWithState:&v82 objects:v104 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v83;
          do
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v83 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v82 + 1) + 8 * n) resourceKey];
              v37 = [v9 resourceStreamForKey:v36];

              [v11 addObject:v37];
            }

            v33 = [v31 countByEnumeratingWithState:&v82 objects:v104 count:16];
          }

          while (v33);
        }
      }

      v73 = [v69 countByEnumeratingWithState:&v86 objects:v105 count:16];
    }

    while (v73);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v38 = [v64 writers];
  v39 = [v38 countByEnumeratingWithState:&v78 objects:v103 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v79;
    do
    {
      for (ii = 0; ii != v40; ++ii)
      {
        if (*v79 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v78 + 1) + 8 * ii) output];
        v44 = [v43 resourceKey];
        v45 = [v9 resourceStreamForKey:v44];

        [v11 addObject:v45];
      }

      v40 = [v38 countByEnumeratingWithState:&v78 objects:v103 count:16];
    }

    while (v40);
  }

  [v10 minusSet:v11];
  v46 = [v10 countByEnumeratingWithState:&v74 objects:v102 count:16];
  v47 = v63;
  if (v46)
  {
    v48 = v46;
    v49 = *v75;
    while (2)
    {
      for (jj = 0; jj != v48; ++jj)
      {
        if (*v75 != v49)
        {
          objc_enumerationMutation(v10);
        }

        v51 = *(*(&v74 + 1) + 8 * jj);
        v52 = [v51 resolvedDomain];

        if (!v52)
        {
          if (!resolveStreamDomain(v51, v9, v47, a4))
          {
            v59 = 0;
            v56 = v64;
            v55 = v66;
            goto LABEL_67;
          }

          v53 = [v51 resolvedDomain];
          if (!v53)
          {
            resolveGraphDomain_cold_1();
          }
        }

        v54 = [v51 resolvedDomain];
        [v66 addObject:v54];
      }

      v48 = [v10 countByEnumeratingWithState:&v74 objects:v102 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }
  }

  v55 = v66;
  v56 = v64;
  if ([v66 count] || !objc_msgSend(v64, "workloadWait"))
  {
    v57 = [v64 tasks];
    v58 = [v57 count];

    if (v58 && ![v66 count])
    {
      resolveGraphDomain_cold_2();
    }

    v10 = [MEMORY[0x277CBEB98] setWithArray:v66];
    if ([v10 count] < 2)
    {
      [v10 anyObject];
    }

    else
    {
      +[PSStreamDomain mixedDomain];
    }
    v60 = ;
    [v64 setResolvedDomain:v60];
  }

  else
  {
    v10 = +[PSStreamDomain mixedDomain];
    [v64 setResolvedDomain:v10];
  }

  v59 = 1;
LABEL_67:

  v61 = *MEMORY[0x277D85DE8];
  return v59;
}

void populateStreamError(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = a1;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a1;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v3 errorWithDomain:@"com.apple.polaris" code:-1 userInfo:v6];

    v8 = v7;
    *a2 = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ps_graph_get_sync_data(uint64_t a1)
{
  if (a1)
  {
    return (*(a1 + 8))();
  }

  else
  {
    return 3758097084;
  }
}

uint64_t ps_graph_populate_sync_data(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);

    return v3();
  }

  else
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = ps_graph_populate_sync_data_cold_1(v6);
    return ps_graph_sync_data_get_timestamp(v5);
  }
}

uint64_t ps_graph_sync_data_get_timestamp(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 < 3)
    {
      return *(a1 + 24 * a2 + 24);
    }
  }

  else
  {
    ps_graph_sync_data_get_timestamp_cold_2(&v4);
  }

  timestamp_cold_1 = ps_graph_sync_data_get_timestamp_cold_1(&v4, a2);
  return ps_graph_sync_data_get_virtual_frameid(timestamp_cold_1);
}

uint64_t ps_graph_sync_data_get_virtual_frameid(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 < 3)
    {
      return *(a1 + 24 * a2 + 32);
    }
  }

  else
  {
    ps_graph_sync_data_get_virtual_frameid_cold_2(&v4);
  }

  virtual_frameid_cold_1 = ps_graph_sync_data_get_virtual_frameid_cold_1(&v4, a2);
  return ps_graph_sync_data_get_physical_frameid(virtual_frameid_cold_1);
}

uint64_t ps_graph_sync_data_get_physical_frameid(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 < 3)
    {
      return *(a1 + 24 * a2 + 40);
    }
  }

  else
  {
    ps_graph_sync_data_get_physical_frameid_cold_2(&v4);
  }

  physical_frameid_cold_1 = ps_graph_sync_data_get_physical_frameid_cold_1(&v4, a2);
  return ps_complexity_update_current_workload(physical_frameid_cold_1);
}

uint64_t ps_complexity_update_current_workload(uint64_t a1)
{
  complexity_context = ps_task_context_get_complexity_context(a1);
  if (!complexity_context)
  {
    return 1;
  }

  v2 = *(complexity_context + 16);
  if (!v2)
  {
    return 1;
  }

  return v2();
}

_BYTE *ps_task_reuse_previous_outputs(uint64_t a1)
{
  result = ps_task_context_get_output_reuse_context(a1);
  *result = 1;
  return result;
}

const char *ps_graph_criticality_description(unint64_t a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_279A4E2F8[a1];
  }
}

const char *ps_graph_frequency_type_description(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return "fixed";
  }

  else
  {
    return off_279A4E318[a1 - 1];
  }
}

const char *ps_graph_ane_priority_description(uint64_t a1)
{
  if ((a1 + 1) > 8)
  {
    return "2 (realtime or critical)";
  }

  else
  {
    return off_279A4E330[a1 + 1];
  }
}

uint64_t ps_graph_criticality_from_description(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (strcmp([v1 UTF8String], "real_time"))
  {
    if (!strcmp([v1 UTF8String], "critical"))
    {
      v3 = 1;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "application_support"))
    {
      v3 = 3;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "best_effort"))
    {
      v3 = 2;
      goto LABEL_12;
    }

    v2 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_ERROR, "Invalid criticality value provided: %@. RealTime Criticality selected", &v6, 0xCu);
    }
  }

  v3 = 0;
LABEL_12:

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ps_graph_frequency_type_from_description(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (strcmp([v1 UTF8String], "fixed"))
  {
    if (!strcmp([v1 UTF8String], "input_driven"))
    {
      v3 = 1;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "consumer_driven"))
    {
      v3 = 2;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "variable"))
    {
      v3 = 3;
      goto LABEL_12;
    }

    v2 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_ERROR, "Invalid frequency type value provided: %@. Fixed Frequency selected", &v6, 0xCu);
    }
  }

  v3 = 0;
LABEL_12:

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ps_graph_ane_priority_from_description(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!strcmp([v1 UTF8String], "2 (realtime or critical)"))
  {
    v5 = 2;
  }

  else if (!strcmp([v1 UTF8String], "3 (critical)"))
  {
    v5 = 3;
  }

  else if (!strcmp([v1 UTF8String], "4 (application support)"))
  {
    v5 = 4;
  }

  else if (!strcmp([v1 UTF8String], "5 (best effort)"))
  {
    v5 = 5;
  }

  else
  {
    v2 = [v1 UTF8String];
    if (*v2 == 54 && !v2[1])
    {
      v5 = 6;
    }

    else
    {
      v3 = [v1 UTF8String];
      if (*v3 == 55 && !v3[1])
      {
        v5 = 7;
      }

      else
      {
        if (strcmp([v1 UTF8String], "uninitialized"))
        {
          v4 = __PSGraphLogSharedInstance();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            v8 = 138412290;
            v9 = v1;
            _os_log_impl(&dword_25EC85000, v4, OS_LOG_TYPE_ERROR, "Invalid criticality value provided: %@.", &v8, 0xCu);
          }
        }

        v5 = -1;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __PSGraphResolveFrequenciesImpl_block_invoke(uint64_t a1, void *a2, id *a3)
{
  v229 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  memset(&v219, 0, sizeof(v219));
  if (v5)
  {
    [v5 minInterval];
  }

  v7 = [*(a1 + 32) objectForKey:v6];

  if (!v7)
  {
    v9 = [v6 graphFrequency];
    v10 = v9;
    if (!v9)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = MEMORY[0x277CCACA8];
      v18 = [v6 name];
      v19 = [v17 stringWithFormat:@"Graph '%@' must hardcode frequency or use graphFrequency property.", v18];
      *a3 = [v16 internalErrorWithCode:-2 description:v19];

      v15 = __PSGraphLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (![(PSTimeWrapper *)v9 type])
    {
      if (a3)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = MEMORY[0x277CCACA8];
        v22 = [v6 name];
        v23 = [v21 stringWithFormat:@"Graph '%@' has PSGraphFrequencyTypeFixedFrequency. This should've been resolved up front", v22];
        *a3 = [v20 internalErrorWithCode:-2 description:v23];

        v15 = __PSGraphLogSharedInstance();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          v24 = [*a3 localizedDescription];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v24;
          _os_log_impl(&dword_25EC85000, v15, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }

LABEL_16:
        v8 = 0;
LABEL_17:

LABEL_94:
        goto LABEL_95;
      }

LABEL_93:
      v8 = 0;
      goto LABEL_94;
    }

    if ([(PSTimeWrapper *)v10 type]== 3)
    {
      if (a3)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = MEMORY[0x277CCACA8];
        v13 = [v6 name];
        v14 = [v12 stringWithFormat:@"Graph '%@' has PSGraphFrequencyTypeVariableFrequency. This should've been resolved up front", v13];
        *a3 = [v11 internalErrorWithCode:-2 description:v14];

        v15 = __PSGraphLogSharedInstance();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_93;
    }

    if ([(PSTimeWrapper *)v10 type]== 1)
    {
      v153 = a3;
      v159 = v6;
      v162 = v10;
      v25 = [v6 getExternalInputs];
      v156 = objc_opt_new();
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v218 = 0u;
      obj = v25;
      v26 = [obj countByEnumeratingWithState:&v215 objects:v228 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v216;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v216 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v215 + 1) + 8 * i);
            if (![v30 type])
            {
              v31 = *(a1 + 40);
              v32 = [v30 resourceKey];
              v33 = [v31 objectForKeyedSubscript:v32];

              if (v33)
              {
                WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
                v35 = WeakRetained[2](WeakRetained, v33, v153);

                if ((v35 & 1) == 0)
                {
                  v98 = v153;
                  v15 = v162;
                  if (v153)
                  {
                    v106 = MEMORY[0x277CCA9B8];
                    v107 = MEMORY[0x277CCACA8];
                    v108 = [v30 resourceKey];
                    v109 = [v107 stringWithFormat:@"Unable to resolve input frequency. Missing input graph for resource %@", v108];
                    *v153 = [v106 internalErrorWithCode:-2 description:v109];

                    v103 = __PSGraphLogSharedInstance();
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_103;
                    }

                    goto LABEL_104;
                  }

LABEL_105:

                  v111 = obj;
                  v6 = v159;
                  goto LABEL_106;
                }
              }

              v36 = *(a1 + 48);
              v37 = [v30 resourceKey];
              v38 = [v36 objectForKeyedSubscript:v37];

              if (!v38)
              {
                v98 = v153;
                v15 = v162;
                if (v153)
                {
                  v99 = MEMORY[0x277CCA9B8];
                  v100 = MEMORY[0x277CCACA8];
                  v101 = [v30 resourceKey];
                  v102 = [v100 stringWithFormat:@"Unable to resolve input frequency. Missing input graph for resource %@", v101];
                  *v153 = [v99 internalErrorWithCode:-2 description:v102];

                  v103 = __PSGraphLogSharedInstance();
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                  {
LABEL_103:
                    v110 = [*v98 localizedDescription];
                    LODWORD(buf.value) = 138412290;
                    *(&buf.value + 4) = v110;
                    _os_log_impl(&dword_25EC85000, v103, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
                  }

LABEL_104:
                }

                goto LABEL_105;
              }

              v39 = [v162 subsampledInputs];
              v40 = [v30 resourceKey];
              v41 = [v39 objectForKeyedSubscript:v40];

              if (v41)
              {
                [v38 time];
                v42 = [v41 unsignedIntegerValue] * v213;
                [v38 time];
                CMTimeMake(&v214, v42, timescale);
                buf = v214;
                [v38 setTime:&buf];
              }

              [v156 addObject:v38];
            }
          }

          v27 = [obj countByEnumeratingWithState:&v215 objects:v228 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      if (![v156 count])
      {
        v6 = v159;
        v15 = v162;
        if (v153)
        {
          v112 = MEMORY[0x277CCA9B8];
          v113 = MEMORY[0x277CCACA8];
          v114 = [v159 name];
          v115 = [v113 stringWithFormat:@"Requested graph to use input driven frequency, but graph did not have any 'wait' triggered inputs. %@", v114];
          *v153 = [v112 internalErrorWithCode:-2 description:v115];

          v111 = __PSGraphLogSharedInstance();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            v116 = [*v153 localizedDescription];
            LODWORD(buf.value) = 138412290;
            *(&buf.value + 4) = v116;
            _os_log_impl(&dword_25EC85000, v111, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
          }

LABEL_106:
        }

        v8 = 0;
        v10 = v15;
        goto LABEL_17;
      }

      v6 = v159;
      if ((v219.flags & 0x1D) == 1)
      {
        v43 = [PSTimeWrapper alloc];
        buf = v219;
        v44 = [(PSTimeWrapper *)v43 initWithTime:&buf];
        [v156 addObject:v44];
      }

      _largestCommonInterval(v156, &buf);
      value = buf.value;
      v46 = buf.timescale;
      flags = buf.flags;
      epoch = buf.epoch;

LABEL_129:
      if ((flags & 0x1D) == 1)
      {
        v133 = [PSTimeWrapper alloc];
        buf.value = value;
        buf.timescale = v46;
        buf.flags = flags;
        buf.epoch = epoch;
        v10 = [(PSTimeWrapper *)v133 initWithTime:&buf];
        [*(a1 + 32) setObject:v10 forKey:v6];
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v15 = [v6 tasks];
        v134 = [v15 countByEnumeratingWithState:&v174 objects:v221 count:16];
        if (v134)
        {
          v135 = v134;
          v161 = v6;
          v165 = v15;
          objc = *v175;
          do
          {
            for (j = 0; j != v135; ++j)
            {
              if (*v175 != objc)
              {
                objc_enumerationMutation(v165);
              }

              v137 = *(*(&v174 + 1) + 8 * j);
              v170 = 0u;
              v171 = 0u;
              v172 = 0u;
              v173 = 0u;
              v138 = [v137 outputs];
              v139 = [v138 countByEnumeratingWithState:&v170 objects:v220 count:16];
              if (v139)
              {
                v140 = v139;
                v141 = *v171;
                do
                {
                  for (k = 0; k != v140; ++k)
                  {
                    if (*v171 != v141)
                    {
                      objc_enumerationMutation(v138);
                    }

                    v143 = *(a1 + 48);
                    v144 = [*(*(&v170 + 1) + 8 * k) resourceKey];
                    [v143 setObject:v10 forKey:v144];
                  }

                  v140 = [v138 countByEnumeratingWithState:&v170 objects:v220 count:16];
                }

                while (v140);
              }
            }

            v15 = v165;
            v135 = [v165 countByEnumeratingWithState:&v174 objects:v221 count:16];
            v8 = 1;
          }

          while (v135);
          v6 = v161;
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        if (!v153)
        {
          v8 = 0;
          goto LABEL_95;
        }

        v145 = MEMORY[0x277CCA9B8];
        v146 = MEMORY[0x277CCACA8];
        v10 = [v6 name];
        v15 = [v146 stringWithFormat:@"Cannot resolve frequency interval for graph (%@).", v10];
        [v145 internalErrorWithCode:-2 description:v15];
        *v153 = v8 = 0;
      }

      goto LABEL_17;
    }

    if ([(PSTimeWrapper *)v10 type]!= 2)
    {
      goto LABEL_93;
    }

    v153 = a3;
    v147 = v10;
    v154 = objc_opt_new();
    v157 = objc_opt_new();
    v49 = objc_opt_new();
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v160 = v6;
    v163 = [v6 tasks];
    v50 = [v163 countByEnumeratingWithState:&v208 objects:v226 count:16];
    if (v50)
    {
      v51 = v50;
      obja = *v209;
      do
      {
        for (m = 0; m != v51; ++m)
        {
          if (*v209 != obja)
          {
            objc_enumerationMutation(v163);
          }

          v53 = *(*(&v208 + 1) + 8 * m);
          v204 = 0u;
          v205 = 0u;
          v206 = 0u;
          v207 = 0u;
          v54 = [v53 outputs];
          v55 = [v54 countByEnumeratingWithState:&v204 objects:v225 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v205;
            do
            {
              for (n = 0; n != v56; ++n)
              {
                if (*v205 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                v59 = [*(*(&v204 + 1) + 8 * n) resourceKey];
                [v49 addObject:v59];
              }

              v56 = [v54 countByEnumeratingWithState:&v204 objects:v225 count:16];
            }

            while (v56);
          }
        }

        v51 = [v163 countByEnumeratingWithState:&v208 objects:v226 count:16];
      }

      while (v51);
    }

    v60 = MEMORY[0x277CC0898];
    v61 = MEMORY[0x277CC08B0];

    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v62 = v49;
    v63 = [v62 countByEnumeratingWithState:&v200 objects:v224 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v201;
      do
      {
        for (ii = 0; ii != v64; ++ii)
        {
          if (*v201 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = [*(a1 + 56) objectForKey:*(*(&v200 + 1) + 8 * ii)];
          [v157 unionSet:v67];
        }

        v64 = [v62 countByEnumeratingWithState:&v200 objects:v224 count:16];
      }

      while (v64);
    }

    v151 = *v60;
    v149 = *(v60 + 12);
    v150 = *(v60 + 8);
    v148 = *(v60 + 16);
    v68 = *v61;
    v69 = *(v61 + 12);
    v164 = *(v61 + 8);
    v70 = v157;
    v71 = *(v61 + 16);

    if (![v157 count])
    {
      v72 = __PSGraphLogSharedInstance();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v73 = [v160 name];
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = v73;
        _os_log_impl(&dword_25EC85000, v72, OS_LOG_TYPE_ERROR, "graph %@ is specified as consumer driven but with 0 consumers, it will fall back to run at its default frequency", &buf, 0xCu);
      }

      v70 = v157;
    }

    v158 = v69;
    objb = v68;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v155 = v70;
    v74 = [v155 countByEnumeratingWithState:&v196 objects:v223 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v197;
      while (2)
      {
        for (jj = 0; jj != v75; ++jj)
        {
          if (*v197 != v76)
          {
            objc_enumerationMutation(v155);
          }

          v78 = *(*(&v196 + 1) + 8 * jj);
          v79 = [v78 graphFrequency];
          v80 = [v79 type];

          if (v78 != v160 && v80 != 1)
          {
            v82 = [*(a1 + 32) objectForKey:v78];

            if (!v82)
            {
              v83 = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
              v84 = v83[2](v83, v78, v153);

              if (!v84)
              {
                v104 = v155;
                v6 = v160;
                goto LABEL_100;
              }
            }

            v85 = [*(a1 + 32) objectForKey:v78];
            [v154 addObject:v85];
            if (v85)
            {
              [v85 time];
            }

            else
            {
              memset(&time2, 0, sizeof(time2));
            }

            time1.value = objb;
            time1.timescale = v164;
            time1.flags = v158;
            time1.epoch = v71;
            CMTimeMinimum(&buf, &time1, &time2);
            v164 = buf.timescale;
            objb = buf.value;
            v158 = buf.flags;
            v71 = buf.epoch;
          }
        }

        v75 = [v155 countByEnumeratingWithState:&v196 objects:v223 count:16];
        if (v75)
        {
          continue;
        }

        break;
      }
    }

    if ([v154 count])
    {
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v152 = v154;
      v86 = [v152 countByEnumeratingWithState:&v190 objects:v222 count:16];
      if (v86)
      {
        v87 = v86;
        v88 = *v191;
        while (2)
        {
          for (kk = 0; kk != v87; ++kk)
          {
            if (*v191 != v88)
            {
              objc_enumerationMutation(v152);
            }

            v90 = *(*(&v190 + 1) + 8 * kk);
            if (v90)
            {
              [*(*(&v190 + 1) + 8 * kk) time];
              v91 = v187 * v164;
              [v90 time];
              v92 = v185;
            }

            else
            {
              v92 = 0;
              v91 = 0;
              v187 = 0;
              v188 = 0;
              v189 = 0;
              v185 = 0;
              v186 = 0;
              v184 = 0;
            }

            if (v91 % (objb * v92))
            {
              if (v153)
              {
                v117 = MEMORY[0x277CCA9B8];
                v118 = MEMORY[0x277CCACA8];
                v6 = v160;
                v119 = [v160 name];
                v105 = v147;
                if (v90)
                {
                  [v90 time];
                  v120 = v182;
                  [v90 time];
                  v121 = v178;
                }

                else
                {
                  v121 = 0;
                  v120 = 0;
                  v181 = 0;
                  v182 = 0;
                  v183 = 0;
                  v179 = 0;
                  v180 = 0;
                  v178 = 0;
                }

                v130 = [v118 stringWithFormat:@"Unable to compute a valid consumer frequency for graph %@. %d/%lld and %d/%lld are not divisible", v119, v120, v121, v164, objb];
                *v153 = [v117 internalErrorWithCode:-2 description:v130];

                v131 = __PSGraphLogSharedInstance();
                if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                {
                  v132 = [*v153 localizedDescription];
                  LODWORD(buf.value) = 138412290;
                  *(&buf.value + 4) = v132;
                  _os_log_impl(&dword_25EC85000, v131, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
                }
              }

              else
              {
                v6 = v160;
                v105 = v147;
              }

              v104 = v152;
              goto LABEL_127;
            }
          }

          v87 = [v152 countByEnumeratingWithState:&v190 objects:v222 count:16];
          if (v87)
          {
            continue;
          }

          break;
        }
      }

      v93 = v164;
      v94 = objb;
      v95 = v158;
    }

    else
    {
      [(PSTimeWrapper *)v147 defaultInterval];
      v94 = buf.value;
      v93 = buf.timescale;
      v95 = buf.flags;
      v71 = buf.epoch;
    }

    buf.value = v94;
    buf.timescale = v93;
    buf.flags = v95;
    buf.epoch = v71;
    time2 = v219;
    if (CMTimeCompare(&buf, &time2) < 0)
    {
      v122 = v153;
      if (v153)
      {
        v123 = v93;
        v124 = MEMORY[0x277CCA9B8];
        v125 = MEMORY[0x277CCACA8];
        v126 = v94;
        v6 = v160;
        v127 = [v160 name];
        v128 = [v125 stringWithFormat:@"Unable to limit frequency of graph %@ to %d/%lld hz. It needs to run at %d/%lld hz to produce for it's consumers.", v127, v219.timescale, v219.value, v123, v126];
        *v153 = [v124 internalErrorWithCode:-2 description:v128];

        v104 = __PSGraphLogSharedInstance();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v129 = [*v153 localizedDescription];
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v129;
          _os_log_impl(&dword_25EC85000, v104, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }

LABEL_100:
        v105 = v147;
LABEL_127:

        v122 = 0;
LABEL_128:

        value = v151;
        flags = v149;
        v46 = v150;
        epoch = v148;
        if (!v122)
        {
          v8 = 0;
          v10 = v105;
          goto LABEL_94;
        }

        goto LABEL_129;
      }
    }

    else
    {
      v122 = 1;
      v148 = v71;
      v149 = v95;
      v150 = v93;
      v151 = v94;
    }

    v6 = v160;
    v105 = v147;
    goto LABEL_128;
  }

  v8 = 1;
LABEL_95:

  v96 = *MEMORY[0x277D85DE8];
  return v8;
}

void _largestCommonInterval(void *a1@<X0>, CMTime *a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = *MEMORY[0x277CC08A0];
  v27.epoch = *(MEMORY[0x277CC08A0] + 16);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  *&v27.value = v4;
  v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (v9)
        {
          [v9 time];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        time1 = v27;
        CMTimeMaximum(&v27, &time1, &time2);
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }

  *a2 = v27;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        if (v15)
        {
          [v15 time];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        time1 = *a2;
        PSGreatestCommonTimeFactor(&time1, &time2, a2);
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

id __PSGraphResolveFrequenciesImpl_block_invoke_525(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graphFrequency];
  v5 = [v4 type];

  if (v5 == 2)
  {
    v6 = a1[4];
    v7 = [v3 name];
    v8 = [v6 objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CBEB58]);
    v10 = a1[4];
    v11 = [v3 name];
    v12 = [v10 objectForKeyedSubscript:v11];
    v8 = [v9 initWithSet:v12];

    [v8 intersectSet:a1[5]];
    v13 = a1[6];
    v7 = [v3 name];
    v14 = [v13 objectForKeyedSubscript:v7];
    [v8 unionSet:v14];
  }

  return v8;
}

id __PSGraphResolveFrequenciesImpl_block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graphFrequency];
  v5 = [v4 type];

  if (v5 == 2)
  {
    v6 = a1[4];
    v7 = [v3 name];
    v8 = [v6 objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = [v3 graphFrequency];
    v10 = [v9 type];

    if (v10 == 1)
    {
      v11 = objc_alloc(MEMORY[0x277CBEB58]);
      v12 = a1[5];
      v13 = [v3 name];
      v14 = [v12 objectForKeyedSubscript:v13];
      v8 = [v11 initWithSet:v14];

      [v8 minusSet:a1[6]];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }
  }

  return v8;
}

void __PSGraphResolveFrequenciesImpl_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (([a2 needsLiveness] & 1) == 0)
  {
    [v4 setNeedsLiveness:0];
  }
}

uint64_t OUTLINED_FUNCTION_0()
{
  v2 = *v0;

  return abort_with_reason();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return usleep(0x1E8480u);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void setPixelInfo(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a1;
  v9 = [v7 numberWithUnsignedInteger:a2];
  [v8 setObject:v9 forKey:@"width"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v8 setObject:v10 forKey:@"height"];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", HIBYTE(a4), BYTE2(a4), BYTE1(a4), a4];
  [v8 setObject:v11 forKey:@"pixel_format"];
}

void setProvider(void *a1, unsigned int a2)
{
  v5 = a1;
  if (a2 == 9)
  {
    v3 = "default";
  }

  else
  {
    v3 = ps_resource_stream_provider_representation(a2);
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  [v5 setObject:v4 forKey:@"provider"];
}

uint64_t ps_reader_state_update(uint64_t a1, unsigned int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = atomic_load((a1 + 24));
  do
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
LABEL_24:
          v14 = 0;
          asprintf(&v14, "Undefined current state %d, desired state %d", v2, a2);
          v9 = __PSGraphLogSharedInstance();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315906;
            v16 = "_ps_reader_state_get_next_state";
            v17 = 1024;
            v18 = 159;
            v19 = 1024;
            v20 = v2;
            v21 = 1024;
            v22 = a2;
            _os_log_impl(&dword_25EC85000, v9, OS_LOG_TYPE_FAULT, "%s:%d Undefined current state %d, desired state %d", buf, 0x1Eu);
          }

          v10 = OSLogFlushBuffers();
          if (v10)
          {
            v11 = v10;
            v12 = __PSGraphLogSharedInstance();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v16 = "_ps_reader_state_get_next_state";
              v17 = 1024;
              v18 = v11;
              _os_log_impl(&dword_25EC85000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
            }
          }

          else
          {
            usleep(0x1E8480u);
          }

          abort_with_reason();
        }

        if (a2 == 2)
        {
LABEL_18:
          v4 = 0;
          v3 = a2;
          goto LABEL_21;
        }

        v3 = 1;
      }

      else
      {
        if (a2 == 1 || a2 == 4)
        {
          goto LABEL_18;
        }

        v3 = 0;
      }
    }

    else
    {
      switch(v2)
      {
        case 2:
          if (a2 == 3)
          {
            goto LABEL_18;
          }

          v3 = 2;
          break;
        case 3:
          if (!a2)
          {
            goto LABEL_18;
          }

          v3 = 3;
          break;
        case 4:
          if (!a2)
          {
            goto LABEL_18;
          }

          v3 = 4;
          break;
        default:
          goto LABEL_24;
      }
    }

    v4 = 2;
LABEL_21:
    v5 = v2;
    atomic_compare_exchange_strong((a1 + 24), &v5, v3);
    v6 = v5 == v2;
    v2 = v5;
  }

  while (!v6);
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

_BYTE *ps_task_context_create()
{
  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800402F7D6A24uLL);
  v1 = +[PSGraphSettings currentSettings];
  v2 = [v1 enableFastTransition];

  v0[42] = v2;
  return v0;
}

void ps_task_context_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t ps_task_context_set_mtl_device(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    result = [a2 conformsToProtocol:&unk_2870E2168];
    if (result)
    {
      *(a1 + 8) = v2;
      return result;
    }
  }

  else
  {
    ps_task_context_set_mtl_device_cold_2(&v6);
  }

  v5 = ps_task_context_set_mtl_device_cold_1(v2, &v6);
  return ps_task_context_get_mtl_command_queue(v5);
}

uint64_t ps_task_context_set_mtl_command_queue(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    result = [a2 conformsToProtocol:&unk_2870E2318];
    if (result)
    {
      *(a1 + 16) = v2;
      return result;
    }
  }

  else
  {
    ps_task_context_set_mtl_command_queue_cold_2(&v7);
  }

  v5 = ps_task_context_set_mtl_command_queue_cold_1(v2, &v7);
  return ps_task_context_set_ps_handle(v5, v6);
}

uint64_t ps_task_context_get_graph_stride(uint64_t a1)
{
  if (*(a1 + 42) == 1)
  {
    return *(a1 + 41);
  }

  else
  {
    return 0;
  }
}

const char *ps_compute_agent_description(unint64_t a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_279A4E378[a1];
  }
}

uint64_t ps_compute_agent_from_description(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (strcmp([v1 UTF8String], "cpu"))
  {
    if (!strcmp([v1 UTF8String], "gpu"))
    {
      v3 = 1;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "ane"))
    {
      v3 = 2;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "per_segment"))
    {
      v3 = 3;
      goto LABEL_12;
    }

    v2 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_ERROR, "Invalid compute agent value provided: %@. CPUSerial Compute Agent selected", &v6, 0xCu);
    }
  }

  v3 = 0;
LABEL_12:

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

id PSLogInstance()
{
  if (PSLogInstance_onceToken_0 != -1)
  {
    PSLogInstance_cold_1();
  }

  v1 = PSLogInstance_log_0;

  return v1;
}

uint64_t __PSLogInstance_block_invoke_0()
{
  PSLogInstance_log_0 = os_log_create("com.apple.polarisgraph", "espresso");

  return MEMORY[0x2821F96F8]();
}

const char *ps_input_type_description(unint64_t a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_279A4E398[a1];
  }
}

uint64_t ps_input_type_from_description(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (strcmp([v1 UTF8String], "wait"))
  {
    if (!strcmp([v1 UTF8String], "pull"))
    {
      v3 = 1;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "synced"))
    {
      v3 = 3;
      goto LABEL_12;
    }

    if (!strcmp([v1 UTF8String], "pull_optional"))
    {
      v3 = 2;
      goto LABEL_12;
    }

    v2 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_ERROR, "Invalid input type value provided: %@. Wait InputType selected", &v6, 0xCu);
    }
  }

  v3 = 0;
LABEL_12:

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void vertex_new(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10800405064B18AuLL);
  if (v2)
  {
    *v2 = a1;
    v2[1] = 0;
    *(v2 + 4) = 0;
    v2[3] = 0;
    *(v2 + 8) = 0;
  }

  else
  {
    v3 = vertex_new_cold_1(v6);
    [(PSDependencyResolver *)v3 resolveWithBlock:v4, v5];
  }
}

void vertex_free(void *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    free(v2);
    *(a1 + 1) = 0;
  }

  if (*(a1 + 8))
  {
    free(*(a1 + 3));
  }

  free(a1);
}

uint64_t __PSUtilitiesLogSharedInstance()
{
  if (__PSUtilitiesLogSharedInstance_onceToken != -1)
  {
    __PSUtilitiesLogSharedInstance_cold_1();
  }

  return sharedInstance;
}

uint64_t ps_writer_state_update(uint64_t a1, unsigned int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = atomic_load((a1 + 80));
  do
  {
    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          if (a2 != 2)
          {
            v3 = 1;
            goto LABEL_24;
          }
        }

        else
        {
          if (v2 != 2)
          {
            goto LABEL_29;
          }

          if (a2 != 3)
          {
            v3 = 2;
            goto LABEL_24;
          }
        }
      }

      else if ((a2 | 8) != 9)
      {
        v3 = 0;
        goto LABEL_24;
      }
    }

    else if (v2 > 4)
    {
      if (v2 == 5)
      {
        if (a2)
        {
          v3 = 5;
          goto LABEL_24;
        }
      }

      else
      {
        if (v2 != 9)
        {
LABEL_29:
          v14 = 0;
          asprintf(&v14, "Undefined current state %d, desired state %d", v2, a2);
          v9 = __PSGraphLogSharedInstance();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315906;
            v16 = "_ps_writer_state_get_next_state";
            v17 = 1024;
            v18 = 349;
            v19 = 1024;
            v20 = v2;
            v21 = 1024;
            v22 = a2;
            _os_log_impl(&dword_25EC85000, v9, OS_LOG_TYPE_FAULT, "%s:%d Undefined current state %d, desired state %d", buf, 0x1Eu);
          }

          v10 = OSLogFlushBuffers();
          if (v10)
          {
            v11 = v10;
            v12 = __PSGraphLogSharedInstance();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v16 = "_ps_writer_state_get_next_state";
              v17 = 1024;
              v18 = v11;
              _os_log_impl(&dword_25EC85000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
            }
          }

          else
          {
            usleep(0x1E8480u);
          }

          abort_with_reason();
        }

        if (a2)
        {
          v3 = 9;
          goto LABEL_24;
        }
      }
    }

    else if (v2 == 3)
    {
      if (a2 != 4)
      {
        v3 = 3;
        goto LABEL_24;
      }
    }

    else if (a2 != 5)
    {
      v3 = 4;
LABEL_24:
      v4 = 2;
      goto LABEL_26;
    }

    v4 = 0;
    v3 = a2;
LABEL_26:
    v5 = v2;
    atomic_compare_exchange_strong((a1 + 80), &v5, v3);
    v6 = v5 == v2;
    v2 = v5;
  }

  while (!v6);
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void **ps_resource_array_free(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    std::vector<ps_resource>::__destroy_vector::operator()[abi:nn200100](&v2);
    return MEMORY[0x25F8CC240](v1, 0x20C40960023A9);
  }

  return result;
}

uint64_t ps_resource_array_get_resource(void *a1, unint64_t a2)
{
  if (0x823EE08FB823EE09 * ((a1[1] - *a1) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *a1 + 456 * a2;
  }
}

ps_resource *ps_resource_set_timestamp_seconds(ps_resource *a1, unint64_t a2, Float64 a3)
{
  memset(&v8, 0, sizeof(v8));
  CMTimeMakeWithSeconds(&v8, a3, 1000000000);
  v7 = v8;
  v5 = CMClockConvertHostTimeToSystemUnits(&v7);
  return ps_resource::set_timestamp(a1, a2, v5);
}

Float64 ps_resource_get_timestamp_seconds(ps_resource *a1, unint64_t a2)
{
  timestamp = ps_resource::get_timestamp(a1, a2);
  memset(&v5, 0, sizeof(v5));
  CMClockMakeHostTimeFromSystemUnits(&v5, timestamp);
  v4 = v5;
  return CMTimeGetSeconds(&v4);
}

uint64_t ps_resource_pixelbuffer_get_metadata(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t ps_resource_pixelbuffer_get_cfdata_metadata(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t ps_resource_pixelbuffer_get_iosurface_metadata(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t ps_resource_databuffer_get_metadata(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t ps_resource_databuffer_get_cfdata_metadata(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t ps_resource_databuffer_get_iosurface_metadata(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t ps_resource_jasperbuffer_get_metadata_array(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  else
  {
    return a1 + 48;
  }
}

uint64_t ps_resource_jasperbuffer_get_cfdata_metadata_array(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  else
  {
    return a1 + 48;
  }
}

uint64_t ps_resource_jasperbuffer_get_iosurface_metadata_array(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    return a1 + 48;
  }

  else
  {
    return 0;
  }
}

uint64_t ps_resource_get_fastpath_reader_with_ret_code(ps_resource *a1, ps_resource_fastpath_reader **a2)
{
  fastpath_reader_ptr = ps_resource::get_fastpath_reader_ptr(a1);
  *a2 = fastpath_reader_ptr;
  return *(fastpath_reader_ptr + 1);
}

uint64_t ps_resource_fastpath_reader_get_latest_sample(uint64_t a1)
{
  if ((*a1 & 0xFE) == 6)
  {
    return MEMORY[0x2821743A8](*(a1 + 8));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t ps_resource_fastpath_reader_get_previous_sample(uint64_t a1)
{
  if ((*a1 & 0xFE) == 6)
  {
    return MEMORY[0x2821743B8](*(a1 + 8));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t ps_resource_fastpath_reader_get_next_sample(uint64_t a1)
{
  if ((*a1 & 0xFE) == 6)
  {
    return MEMORY[0x2821743B0](*(a1 + 8));
  }

  else
  {
    return 3758097084;
  }
}

const char *ps_resource_class_description(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "unknown";
  }

  else
  {
    return off_279A4E3D8[a1];
  }
}

const char *ps_resource_storage_mode_description(unint64_t a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_279A4E430[a1];
  }
}

const char *ps_resource_creation_mode_description(unint64_t a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_279A4E448[a1];
  }
}

void *std::vector<ps_resource>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ps_resource>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void std::vector<ps_resource>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x8FB823EE08FB83)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource>>(a1, a2);
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

void *std::vector<ps_resource>::__construct_at_end(void *result, uint64_t a2)
{
  v2 = result;
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = result[1];
  if (a2)
  {
    v4 = v3 + 456 * a2;
    do
    {
      *(v3 + 448) = 0;
      *(v3 + 416) = 0u;
      *(v3 + 432) = 0u;
      *(v3 + 384) = 0u;
      *(v3 + 400) = 0u;
      *(v3 + 352) = 0u;
      *(v3 + 368) = 0u;
      *(v3 + 320) = 0u;
      *(v3 + 336) = 0u;
      *(v3 + 288) = 0u;
      *(v3 + 304) = 0u;
      *(v3 + 256) = 0u;
      *(v3 + 272) = 0u;
      *(v3 + 224) = 0u;
      *(v3 + 240) = 0u;
      *(v3 + 192) = 0u;
      *(v3 + 208) = 0u;
      *(v3 + 160) = 0u;
      *(v3 + 176) = 0u;
      *(v3 + 128) = 0u;
      *(v3 + 144) = 0u;
      *(v3 + 96) = 0u;
      *(v3 + 112) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      v6[0] = 1;
      result = std::vector<ps_resource_item_status>::vector[abi:nn200100]((v3 + 280), v6, 1uLL);
      *(v3 + 416) = 0u;
      *(v3 + 432) = 0u;
      *(v3 + 384) = 0u;
      *(v3 + 400) = 0u;
      *(v3 + 352) = 0u;
      *(v3 + 368) = 0u;
      *(v3 + 320) = 0u;
      *(v3 + 336) = 0u;
      *(v3 + 304) = 0u;
      v3 += 456;
    }

    while (v3 != v4);
    v3 = v4;
  }

  v2[1] = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x8FB823EE08FB83)
  {
    operator new();
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

void *std::vector<ps_resource_item_status>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<ps_resource_item_status>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void std::vector<ps_resource_item_status>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource_item_status>>(a1, a2);
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource_item_status>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

void std::vector<ps_resource>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        ps_resource::~ps_resource(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ps_resource::~ps_resource(ps_resource *this)
{
  begin = this->_buffer_usage_completed_timestamps.__begin_;
  if (begin)
  {
    this->_buffer_usage_completed_timestamps.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->_buffer_expiry_timestamps.__begin_;
  if (v3)
  {
    this->_buffer_expiry_timestamps.__end_ = v3;
    operator delete(v3);
  }

  v4 = this->_resource_items.__begin_;
  if (v4)
  {
    this->_resource_items.__end_ = v4;
    operator delete(v4);
  }

  v5 = this->_physical_frameids.__begin_;
  if (v5)
  {
    this->_physical_frameids.__end_ = v5;
    operator delete(v5);
  }

  v6 = this->_frameids.__begin_;
  if (v6)
  {
    this->_frameids.__end_ = v6;
    operator delete(v6);
  }

  v7 = this->_timestamps.__begin_;
  if (v7)
  {
    this->_timestamps.__end_ = v7;
    operator delete(v7);
  }

  v8 = this->_item_status.__begin_;
  if (v8)
  {
    this->_item_status.__end_ = v8;
    operator delete(v8);
  }
}

size_t ps_resource::set_key(ps_resource *this, const char *a2)
{
  v3 = -2128831035;
  resource_key_strong = this->_resource_key_strong;
  result = strlcpy(this->_resource_key_strong, a2, 0x100uLL);
  this->_key = resource_key_strong;
  v6 = this->_resource_key_strong[0];
  if (this->_resource_key_strong[0])
  {
    v7 = &this->_resource_key_strong[1];
    do
    {
      v3 = 16777619 * (v3 ^ v6);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  this->_resource_name_hash = v3;
  return result;
}

void ps_resource::set_metadata_type(ps_resource *this, int a2)
{
  v2 = this->_class;
  v3 = v2 > 0xB;
  v4 = (1 << v2) & 0xB80;
  if (!v3 && v4 != 0)
  {
    begin = this->_timestamps.__begin_;
    end = this->_timestamps.__end_;
    v10 = this->_item_status.__begin_;
    v11 = this->_item_status.__end_;
    v12 = *v10;
    if (v11 != v10)
    {
      v13 = v11 - v10;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      bzero(this->_item_status.__begin_, 8 * v13);
    }

    if (end != begin)
    {
      v14 = 0;
      v15 = 0;
      if ((end - begin) <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = end - begin;
      }

      while (1)
      {
        v17 = this->_class;
        if (v17 > 7)
        {
          break;
        }

        if (v17 == 7)
        {
          v23 = ps_resource::get_pixelbuffer_ptr(this, v15) + 8;
LABEL_21:
          *v23 = a2;
        }

LABEL_22:
        ++v15;
        v14 += 32;
        if (v16 == v15)
        {
          v10 = this->_item_status.__begin_;
          v11 = this->_item_status.__end_;
          goto LABEL_28;
        }
      }

      switch(v17)
      {
        case 8:
          item_size = ps_resource::get_item_size(this);
          v19 = this->_resource_items.__begin_;
          v20 = this->_resource_items.__end_ - v19;
          v21 = &v19[v14];
          if (item_size * v15 >= v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = v21;
          }

          v23 = v22 + 16;
          break;
        case 9:
          v23 = (ps_resource::get_jasperbuffer_ptr(this) + 40);
          break;
        case 11:
          v23 = (ps_resource::get_pearlbuffer_ptr(this) + 88);
          break;
        default:
          goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_28:
    v24 = v12 != 0;
    if (v11 != v10)
    {
      if ((v11 - v10) <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v11 - v10;
      }

      v26 = (v25 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v27 = vdupq_n_s64(v25 - 1);
      v28 = xmmword_25ECAE420;
      v29 = (v10 + 1);
      v30 = vdupq_n_s64(2uLL);
      do
      {
        v31 = vmovn_s64(vcgeq_u64(v27, v28));
        if (v31.i8[0])
        {
          *(v29 - 1) = v24;
        }

        if (v31.i8[4])
        {
          *v29 = v24;
        }

        v28 = vaddq_s64(v28, v30);
        v29 += 2;
        v26 -= 2;
      }

      while (v26);
    }
  }
}

ps_resource *ps_resource::set_valid(ps_resource *this, int a2)
{
  begin = this->_item_status.__begin_;
  end = this->_item_status.__end_;
  v4 = end - begin;
  if (end != begin)
  {
    v5 = a2 ^ 1u;
    v6 = v4 >> 3;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = (v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(v7 - 1);
    v10 = xmmword_25ECAE420;
    v11 = begin + 1;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v9, v10));
      if (v13.i8[0])
      {
        *(v11 - 1) = v5;
      }

      if (v13.i8[4])
      {
        *v11 = v5;
      }

      v10 = vaddq_s64(v10, v12);
      v11 += 2;
      v8 -= 2;
    }

    while (v8);
  }

  return this;
}

char *ps_resource::get_pixelbuffer_ptr(ps_resource *this, uint64_t a2)
{
  if (this->_class == 7)
  {
    item_size = ps_resource::get_item_size(this);
    if (this->_item_status.__begin_[a2] != 1)
    {
      begin = this->_resource_items.__begin_;
      if ((item_size * a2) < (this->_resource_items.__end_ - begin))
      {
        return &begin[24 * a2];
      }
    }

    return 0;
  }

  pearlbuffer_ptr = ps_resource::get_pearlbuffer_ptr(this);
  if (pearlbuffer_ptr)
  {
    result = (pearlbuffer_ptr + 64);
  }

  else
  {
    result = 0;
  }

  if (this->_item_status.__begin_[a2] == 1)
  {
    return 0;
  }

  return result;
}

void ps_resource::clear(ps_resource *this)
{
  this->_timestamps.__end_ = this->_timestamps.__begin_;
  this->_frameids.__end_ = this->_frameids.__begin_;
  this->_physical_frameids.__end_ = this->_physical_frameids.__begin_;
  this->_resource_items.__end_ = this->_resource_items.__begin_;
  this->_buffer_expiry_timestamps.__end_ = this->_buffer_expiry_timestamps.__begin_;
  begin = this->_item_status.__begin_;
  v3 = this->_item_status.__end_ - begin;
  if (v3 >= 1)
  {
    memset_pattern16(begin, &unk_25ECAE430, v3);
  }
}

void ps_resource::resize(ps_resource *this, unint64_t a2)
{
  item_size = ps_resource::get_item_size(this);
  if (item_size)
  {
    begin = this->_resource_items.__begin_;
    v6 = this->_resource_items.__end_ - begin;
    if (item_size * a2 <= v6)
    {
      if (item_size * a2 < v6)
      {
        this->_resource_items.__end_ = &begin[item_size * a2];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&this->_resource_items.__begin_, item_size * a2 - v6);
    }

    std::vector<unsigned long long>::resize(&this->_timestamps.__begin_, a2);
    std::vector<unsigned long long>::resize(&this->_frameids.__begin_, a2);
    std::vector<unsigned long long>::resize(&this->_physical_frameids.__begin_, a2);
    std::vector<unsigned long long>::resize(&this->_buffer_expiry_timestamps.__begin_, a2);
    std::vector<unsigned long long>::resize(&this->_buffer_usage_completed_timestamps.__begin_, a2);
    v7 = *this->_item_status.__begin_;
    p_item_status = &this->_item_status;
    if (a2)
    {
      std::vector<unsigned long long>::resize(p_item_status, a2);
      v9 = this->_item_status.__begin_;
      v10 = this->_item_status.__end_ - v9;
      v11 = v10 - 1;
      if (v10 >= 1)
      {
        v12 = 0;
        v13 = (v10 + 1) & 0x7FFFFFFFFFFFFFFELL;
        v14 = vdupq_n_s64(v11);
        v15 = v9 + 1;
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_25ECAE420)));
          if (v16.i8[0])
          {
            *(v15 - 1) = v7;
          }

          if (v16.i8[4])
          {
            *v15 = v7;
          }

          v12 += 2;
          v15 += 2;
        }

        while (v13 != v12);
      }
    }

    else
    {
      std::vector<unsigned long long>::resize(p_item_status, 1uLL);
      *this->_item_status.__begin_ = v7;
    }
  }
}

void std::vector<unsigned long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1, a2 - v2);
  }
}

ps_resource *ps_resource::set_timestamp(ps_resource *this, unint64_t a2, unint64_t a3)
{
  begin = this->_timestamps.__begin_;
  if (a2 < this->_timestamps.__end_ - begin)
  {
    begin[a2] = a3;
  }

  return this;
}

ps_resource *ps_resource::set_buffer_expiry_timestamp(ps_resource *this, unint64_t a2, unint64_t a3)
{
  begin = this->_buffer_expiry_timestamps.__begin_;
  if (a2 < this->_buffer_expiry_timestamps.__end_ - begin)
  {
    begin[a2] = a3;
  }

  return this;
}

ps_resource *ps_resource::set_frameid(ps_resource *this, unint64_t a2, unint64_t a3)
{
  begin = this->_frameids.__begin_;
  if (a2 < this->_frameids.__end_ - begin)
  {
    begin[a2] = a3;
  }

  return this;
}

ps_resource *ps_resource::set_physical_frameid(ps_resource *this, unint64_t a2, unint64_t a3)
{
  begin = this->_physical_frameids.__begin_;
  if (a2 < this->_physical_frameids.__end_ - begin)
  {
    begin[a2] = a3;
  }

  return this;
}

char *ps_resource::get_data_ptr(ps_resource *this, uint64_t a2)
{
  v4 = (ps_resource::get_item_size)();
  begin = this->_resource_items.__begin_;
  v6 = this->_resource_items.__end_ - begin;
  v7 = &begin[16 * a2];
  if (v4 * a2 >= v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t ps_resource::get_pixelbuffer(ps_resource *this, uint64_t a2)
{
  pixelbuffer_ptr = ps_resource::get_pixelbuffer_ptr(this, a2);
  if (this->_item_status.__begin_[a2] == 1 || pixelbuffer_ptr == 0)
  {
    return 0;
  }

  else
  {
    return *pixelbuffer_ptr;
  }
}

uint64_t ps_resource::get_metadata_type(ps_resource *this, uint64_t a2)
{
  v4 = this->_class;
  result = 2;
  if (v4 <= 7)
  {
    if (v4 != 7)
    {
      return result;
    }

    v11 = ps_resource::get_pixelbuffer_ptr(this, a2) + 8;
    return *v11;
  }

  switch(v4)
  {
    case 8:
      item_size = ps_resource::get_item_size(this);
      begin = this->_resource_items.__begin_;
      v8 = this->_resource_items.__end_ - begin;
      v9 = &begin[32 * a2];
      if (item_size * a2 >= v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      v11 = v10 + 16;
      return *v11;
    case 9:
      v11 = (ps_resource::get_jasperbuffer_ptr(this) + 40);
      return *v11;
    case 11:
      v11 = (ps_resource::get_pearlbuffer_ptr(this) + 88);
      return *v11;
  }

  return result;
}

uint64_t ps_resource::set_data(ps_resource *this, uint64_t a2, void *a3, uint64_t a4)
{
  result = ps_resource::get_item_size(this);
  if (a3)
  {
    begin = this->_resource_items.__begin_;
    v10 = this->_resource_items.__end_ - begin;
    v11 = &begin[16 * a2];
    if (result * a2 >= v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    *v12 = a3;
    *(v12 + 1) = a4;
  }

  return result;
}

ps_resource *ps_resource::set_pixelbuffer(ps_resource *this, uint64_t a2, __CVBuffer *a3, void *a4)
{
  if (this->_class != 11)
  {
    this = ps_resource::get_pixelbuffer_ptr(this, a2);
    if (this)
    {
      *&this->_resource_name_hash = a3;
      if (LODWORD(this->_key) <= 1)
      {
        *this->_resource_key_strong = a4;
      }
    }
  }

  return this;
}

ps_resource *ps_resource::set_pixelbuffer(ps_resource *this, uint64_t a2, __CVBuffer *a3, const __CFData *a4)
{
  if (this->_class != 11)
  {
    this = ps_resource::get_pixelbuffer_ptr(this, a2);
    if (this)
    {
      *&this->_resource_name_hash = a3;
      *this->_resource_key_strong = a4;
    }
  }

  return this;
}

uint64_t ps_resource::get_valid_item_count(ps_resource *this)
{
  v1 = this->_timestamps.__end_ - this->_timestamps.__begin_;
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = v1 >> 3;
  begin = this->_item_status.__begin_;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  do
  {
    if (!*begin++)
    {
      ++result;
    }

    --v4;
  }

  while (v4);
  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource_item_status>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

__n128 OUTLINED_FUNCTION_5_0(uint64_t a1)
{
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 40) = v3;
  *(a1 + 96) = v2;
  *(a1 + 56) = v1;
  *(a1 + 64) = v1;
  result = *(a1 + 88);
  *(a1 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  v1 = *(a1 + 272);
  result = 16;
  switch(v1)
  {
    case 0:
      ps_resource::get_item_size();
    case 1:
    case 12:
      return result;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      result = 8;
      break;
    case 7:
      result = 24;
      break;
    case 8:
      result = 32;
      break;
    case 9:
      result = 112;
      break;
    case 10:
      result = 88;
      break;
    case 11:
      result = 104;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void OUTLINED_FUNCTION_7_1(uint64_t a1@<X8>)
{
  v4 = a1 + 32 * v3;
  *(v4 + 8) = v2;
  *(v4 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{

  v1 = *(a1 + 272);
  result = 16;
  switch(v1)
  {
    case 0:
      ps_resource::get_item_size(16);
    case 1:
    case 12:
      return result;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      result = 8;
      break;
    case 7:
      result = 24;
      break;
    case 8:
      result = 32;
      break;
    case 9:
      result = 112;
      break;
    case 10:
      result = 88;
      break;
    case 11:
      result = 104;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10(ps_resource *this)
{

  return ps_resource::get_pearlbuffer_ptr(this);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{

  v1 = *(a1 + 272);
  result = 16;
  switch(v1)
  {
    case 0:
      ps_resource::get_item_size(16);
    case 1:
    case 12:
      return result;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      result = 8;
      break;
    case 7:
      result = 24;
      break;
    case 8:
      result = 32;
      break;
    case 9:
      result = 112;
      break;
    case 10:
      result = 88;
      break;
    case 11:
      result = 104;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_25ECA088C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a9.super_class = PSResourceWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *ps_resource::operator=(void *a1, uint64_t a2)
{
  memcpy(a1, a2, 0x118uLL);
  if (a1 != a2)
  {
    std::vector<ps_resource_item_status>::__assign_with_size[abi:nn200100]<ps_resource_item_status*,ps_resource_item_status*>(a1 + 35, *(a2 + 280), *(a2 + 288), (*(a2 + 288) - *(a2 + 280)) >> 3);
    std::vector<ps_resource_item_status>::__assign_with_size[abi:nn200100]<ps_resource_item_status*,ps_resource_item_status*>(a1 + 38, *(a2 + 304), *(a2 + 312), (*(a2 + 312) - *(a2 + 304)) >> 3);
    std::vector<ps_resource_item_status>::__assign_with_size[abi:nn200100]<ps_resource_item_status*,ps_resource_item_status*>(a1 + 41, *(a2 + 328), *(a2 + 336), (*(a2 + 336) - *(a2 + 328)) >> 3);
    std::vector<ps_resource_item_status>::__assign_with_size[abi:nn200100]<ps_resource_item_status*,ps_resource_item_status*>(a1 + 44, *(a2 + 352), *(a2 + 360), (*(a2 + 360) - *(a2 + 352)) >> 3);
    std::vector<unsigned char>::__assign_with_size[abi:nn200100]<unsigned char *,unsigned char *>(a1 + 47, *(a2 + 376), *(a2 + 384), *(a2 + 384) - *(a2 + 376));
    std::vector<ps_resource_item_status>::__assign_with_size[abi:nn200100]<ps_resource_item_status*,ps_resource_item_status*>(a1 + 50, *(a2 + 400), *(a2 + 408), (*(a2 + 408) - *(a2 + 400)) >> 3);
    std::vector<ps_resource_item_status>::__assign_with_size[abi:nn200100]<ps_resource_item_status*,ps_resource_item_status*>(a1 + 53, *(a2 + 424), *(a2 + 432), (*(a2 + 432) - *(a2 + 424)) >> 3);
  }

  a1[56] = *(a2 + 448);
  return a1;
}

void sub_25ECA0D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = PSResourceHeap;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_25ECA0DB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_25ECA3C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  std::__function::__value_func<void ()(PSTask *)>::~__value_func[abi:nn200100](v45 - 176);
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::~__hash_table(&a34);
  std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::~__hash_table(&a40);
  v47 = std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::~__hash_table(v45 - 240);
  *(v45 - 240) = v45 - 200;
  std::vector<PSTask * {__strong}>::__destroy_vector::operator()[abi:nn200100](v47);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::function<void ()(PSTask *)>::operator()(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    v5 = v4;

    _Unwind_Resume(v5);
  }

  (*(*v3 + 48))(v3, &v6);
}

void std::vector<ps_resource_array *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource_array *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t _copy_resource(uint64_t result, ps_resource *a2)
{
  if (result)
  {
    v3 = result;
    key = ps_resource_get_key(result);
    ps_resource_set_key(a2, key);
    v5 = ps_resource_get_class(v3);
    ps_resource_set_class(a2, v5);
    is_valid = ps_resource_is_valid(v3);
    ps_resource_set_valid(a2, is_valid);
    item_count = ps_resource_get_item_count(v3, v7);
    result = ps_resource_set_item_count(a2, item_count);
    if (item_count)
    {
      for (i = 0; i != item_count; ++i)
      {
        timestamp = ps_resource_get_timestamp(v3, i);
        ps_resource_set_timestamp(a2, i, timestamp);
        v11 = ps_resource_get_class(v3);
        if (v11 > 3)
        {
          switch(v11)
          {
            case 4:
              surface_item = ps_resource_get_surface_item(v3, i);
              iosurface = ps_resource_surface_get_iosurface(surface_item);
              if (!iosurface)
              {
                _copy_resource();
              }

              result = ps_resource_set_iosurface(a2, i, iosurface);
              break;
            case 7:
              pixelbuffer_item = ps_resource_get_pixelbuffer_item(v3, i);
              cvpixelbuffer = ps_resource_pixelbuffer_get_cvpixelbuffer(pixelbuffer_item);
              metadata = ps_resource_pixelbuffer_get_metadata(pixelbuffer_item);
              if (!cvpixelbuffer)
              {
                _copy_resource();
              }

              result = ps_resource_set_cvpixelbuffer(a2, i, cvpixelbuffer, metadata);
              break;
            case 8:
              databuffer_item = ps_resource_get_databuffer_item(v3, i);
              databuffer = ps_resource_databuffer_get_databuffer(databuffer_item);
              v16 = ps_resource_databuffer_get_metadata(databuffer_item);
              if (!databuffer)
              {
                _copy_resource();
              }

              result = ps_resource_set_cvdatabuffer(a2, i, databuffer, v16);
              break;
            default:
              goto LABEL_23;
          }
        }

        else if ((v11 - 2) >= 2)
        {
          if (v11 != 1)
          {
LABEL_23:
            _copy_resource();
          }

          data_item = ps_resource_get_data_item(v3, i);
          bytes = ps_resource_data_get_bytes(data_item);
          length = ps_resource_data_get_length(data_item);
          result = ps_resource_set_data(a2, i, bytes, length);
        }

        else
        {
          object_item = ps_resource_get_object_item(v3, i);
          object = ps_resource_object_get_object(object_item);
          result = ps_resource_set_object(a2, i, object);
        }
      }
    }
  }

  return result;
}

uint64_t testengine_source_writer_func(id *a1, ps_resource_array *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v28 = a1[2];
    v5 = *a1;
    v27 = a1[1];
    count = ps_resource_array_get_count(a2);
    if (count)
    {
      v7 = 0;
      v8 = 1;
      v26 = "Failed to find resource stream for %s. Verify that this resource stream has been added to the context.";
      while (1)
      {
        resource = ps_resource_array_get_resource(a2, v7);
        key = ps_resource_get_key(resource);
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:key];
        v12 = [v28 resourceStreamForKey:v11];

        if (!v12)
        {
          break;
        }

        v13 = [v12 key];
        v14 = [v5 getResource:v13];

        if (!v14)
        {
          v16 = [v12 key];
          v14 = [v27 getResource:v16];

          if (!v14)
          {
            v26 = "Resource (%s) not populated in internal resource heap. Setup source task was probably not called before next execution";
            break;
          }

          v17 = [v27 resources];
          v18 = [v12 key];
          v19 = [v17 objectForKey:v18];

          v20 = [v12 key];
          [v5 addResource:v19 forKey:v20];
        }

        item_count = ps_resource_get_item_count(v14, v15);
        v23 = ps_resource_get_item_count(resource, v22);
        timestamp = ps_resource_get_timestamp(resource, v23 - 1);
        ps_resource_set_timestamp(v14, item_count - 1, timestamp);

        v8 = ++v7 < count;
        if (count == v7)
        {
          goto LABEL_10;
        }
      }

      printf(v26, key);

      v2 = v8;
    }

    else
    {
LABEL_10:
      v2 = 0;
    }
  }

  return v2;
}

void *std::vector<ps_resource_item_status>::__assign_with_size[abi:nn200100]<ps_resource_item_status*,ps_resource_item_status*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ps_resource_item_status>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<unsigned char>::__assign_with_size[abi:nn200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned char>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

uint64_t std::pair<std::string const,PSTask * {__strong}>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 3;
        std::pair<objc_object * {__strong}&,void({block_pointer} {__strong}&)(objc_object *)>::operator=[abi:nn200100]<objc_object * const {__strong},void({block_pointer} {__strong})(objc_object *),0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__emplace_multi<std::pair<objc_object * const {__strong},void({block_pointer} {__strong})(objc_object *)> const&>();
  }
}

void *std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = [a2[2] hash];
  a2[1] = v5;
  inserted = std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi_prepare(a1, v5, v4);
  std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id **std::pair<objc_object * {__strong}&,void({block_pointer} {__strong}&)(objc_object *)>::operator=[abi:nn200100]<objc_object * const {__strong},void({block_pointer} {__strong})(objc_object *),0>(id **a1, uint64_t a2)
{
  objc_storeStrong(*a1, *a2);
  v4 = MEMORY[0x25F8CC5B0](*(a2 + 8));
  v5 = a1[1];
  v6 = *v5;
  *v5 = v4;

  return a1;
}

void *std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_25ECA5978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,void *>>>::operator()[abi:nn200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,void *>>>::operator()[abi:nn200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<void *,void (*)(void *)>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v8[3] = a2[3];
        v9 = *v8;
        std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__emplace_multi<std::pair<void * const,void (*)(void *)> const&>();
  }
}

void *std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_25ECA606C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = v4[3];
        v8[2] = v4[2];
        v12 = MEMORY[0x25F8CC5B0](v11);
        v13 = v8[3];
        v8[3] = v12;

        v10 = *v8;
        std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v14 = v4 == a3;
        }

        else
        {
          v14 = 1;
        }

        v8 = v10;
      }

      while (!v14);
    }

    std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__emplace_multi<std::pair<void * const,void({block_pointer} {__strong})(void *)> const&>();
  }
}

void std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_25ECA6294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::find<void *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::find<objc_object * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (i[2] == *a2)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_25ECA69F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::vector<PSTask * {__strong}>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,PSTask * {__strong}>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,PSTask * {__strong}>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *std::__hash_table<std::__hash_value_type<void *,BOOL>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BOOL>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BOOL>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BOOL>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PSTask * {__strong}>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::__construct_node_hash<std::pair<std::string const,PSTask * {__strong}>>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25ECA77D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSTask * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSTask * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSTask * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSTask * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,PSTask * {__strong}>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

std::string *std::pair<std::string const,PSTask * {__strong}>::pair[abi:nn200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  this[1].__r_.__value_.__r.__words[0] = v5;
  return this;
}

uint64_t std::__function::__value_func<void ()(PSTask *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id std::vector<PSTask * {__strong}>::push_back[abi:nn200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<PSTask * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<PSTask * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<PSTask * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_25ECA7D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PSTask * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}