@interface REHTTPDebugCoordinator
- (REHTTPDebugCoordinator)initWithSimulator:(id)simulator;
- (id)_createContentItemWithTitle:(id)title content:(id)content;
- (id)_createHTMLTableFromDictionary:(id)dictionary;
- (id)_createHTMLTableRowFromArray:(id)array itemElementTag:(id)tag;
- (id)_createTableWithItems:(id)items itemFormatBlock:(id)block valueBlock:(id)valueBlock;
- (id)_linkElementForTableItem:(id)item paths:(id)paths;
- (id)_linkToPaths:(id)paths;
- (id)_stringElementForObject:(id)object;
- (id)_stringForObject:(id)object;
- (id)_urlFromPaths:(id)paths;
- (void)generateDiagnosticsForPaths:(id)paths completion:(id)completion;
@end

@implementation REHTTPDebugCoordinator

- (REHTTPDebugCoordinator)initWithSimulator:(id)simulator
{
  simulatorCopy = simulator;
  v9.receiver = self;
  v9.super_class = REHTTPDebugCoordinator;
  v6 = [(REHTTPDebugCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_simulator, simulator);
  }

  return v7;
}

- (id)_urlFromPaths:(id)paths
{
  v20 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  relevanceEngineName = [(RETrainingSimulator *)self->_simulator relevanceEngineName];
  v6 = [@"/" stringByAppendingString:relevanceEngineName];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 = [v12 stringByAppendingPathComponent:{*(*(&v15 + 1) + 8 * v11), v15}];

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_linkElementForTableItem:(id)item paths:(id)paths
{
  pathsCopy = paths;
  v7 = [(REHTTPDebugCoordinator *)self _stringElementForObject:item];
  v8 = [(REHTTPDebugCoordinator *)self _urlFromPaths:pathsCopy];

  v9 = [REHTMLElement link:v8 title:&stru_283B97458];

  v10 = [v9 addChild:v7];

  return v10;
}

- (id)_linkToPaths:(id)paths
{
  pathsCopy = paths;
  lastObject = [pathsCopy lastObject];
  v6 = REDisplayStringForPropertyName(lastObject);

  v7 = [(REHTTPDebugCoordinator *)self _urlFromPaths:pathsCopy];

  v8 = [REHTMLElement link:v7 title:v6];

  return v8;
}

- (id)_stringForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(objectCopy)))
    {
      bOOLValue = [objectCopy BOOLValue];
      v7 = @"NO";
      if (bOOLValue)
      {
        v7 = @"YES";
      }

      v4 = v7;
    }

    else
    {
      v4 = [objectCopy description];
    }
  }

  v8 = v4;
  v9 = [MEMORY[0x277CCAB68] stringWithString:v4];
  [v9 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"\n" withString:@"<br>" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"\t" withString:@"&#9;" options:0 range:{0, objc_msgSend(v9, "length")}];
  v10 = [v9 copy];

  return v10;
}

- (id)_stringElementForObject:(id)object
{
  v3 = [(REHTTPDebugCoordinator *)self _stringForObject:object];
  v4 = [REHTMLElement elementWithHTMLString:v3];

  return v4;
}

- (void)generateDiagnosticsForPaths:(id)paths completion:(id)completion
{
  v158 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  completionCopy = completion;
  if (completionCopy)
  {
    v108 = completionCopy;
    v6 = RELogForDomain(21);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [pathsCopy componentsJoinedByString:@"->"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "Loading diagnostics for object path %@", &buf, 0xCu);
    }

    v109 = [(RETrainingSimulator *)self->_simulator encodedObjectAtPath:pathsCopy];
    v110 = [v109 dataUsingEncoding:4];
    v8 = RELogForDomain(21);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [REHTTPDebugCoordinator generateDiagnosticsForPaths:v109 completion:v8];
    }

    lastObject = [pathsCopy lastObject];
    v111 = REDisplayStringForPropertyName(lastObject);

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString integerValue](v111, "integerValue")}];
    stringValue = [v10 stringValue];
    v107 = [stringValue isEqualToString:v111];

    if (v110 && ([MEMORY[0x277CCAAA0] JSONObjectWithData:v110 options:4 error:0], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v120 = v12;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        keyEnumerator = [v120 keyEnumerator];
        v16 = [keyEnumerator countByEnumeratingWithState:&v148 objects:&buf count:16];
        if (v16)
        {
          v17 = *v149;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v149 != v17)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              v19 = *(*(&v148 + 1) + 8 * i);
              if (REPropertyIsInternalAttribute(v19, v15))
              {
                v20 = [v120 objectForKeyedSubscript:v19];
                v21 = REPropertyNameFromInternalAttribute(v19);
                [dictionary setObject:v20 forKeyedSubscript:v21];
              }
            }

            v16 = [keyEnumerator countByEnumeratingWithState:&v148 objects:&buf count:16];
          }

          while (v16);
        }

        v105 = [dictionary copy];
        v22 = [v105 objectForKeyedSubscript:@"type"];
        v23 = [v22 isEqualToString:@"table"];

        if (v23)
        {
          v122 = [(REHTTPDebugCoordinator *)self _createHTMLTableFromDictionary:v120];
        }

        else
        {
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v116 = v120;
          v70 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v116, "count")}];
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          keyEnumerator2 = [v116 keyEnumerator];
          v73 = [keyEnumerator2 countByEnumeratingWithState:&v148 objects:&buf count:16];
          if (v73)
          {
            v74 = *v149;
            do
            {
              for (j = 0; j != v73; ++j)
              {
                if (*v149 != v74)
                {
                  objc_enumerationMutation(keyEnumerator2);
                }

                v76 = *(*(&v148 + 1) + 8 * j);
                if ((REPropertyIsInternalAttribute(v76, v72) & 1) == 0)
                {
                  [v70 addObject:v76];
                }
              }

              v73 = [keyEnumerator2 countByEnumeratingWithState:&v148 objects:&buf count:16];
            }

            while (v73);
          }

          [v70 sortUsingSelector:?];
          v113 = [v70 copy];

          v118 = [v113 countByEnumeratingWithState:&v144 objects:v154 count:16];
          if (v118)
          {
            v122 = 0;
            v114 = *v145;
            do
            {
              for (k = 0; k != v118; ++k)
              {
                if (*v145 != v114)
                {
                  objc_enumerationMutation(v113);
                }

                v78 = *(*(&v144 + 1) + 8 * k);
                v79 = [pathsCopy arrayByAddingObject:v78];
                v125 = [(REHTTPDebugCoordinator *)self _linkToPaths:v79];
                v80 = [v116 objectForKeyedSubscript:v78];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v81 = v80;
                  v82 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v81, "count")}];
                  v150 = 0u;
                  v151 = 0u;
                  v148 = 0u;
                  v149 = 0u;
                  keyEnumerator3 = [v81 keyEnumerator];
                  v85 = [keyEnumerator3 countByEnumeratingWithState:&v148 objects:&buf count:16];
                  if (v85)
                  {
                    v86 = *v149;
                    do
                    {
                      for (m = 0; m != v85; ++m)
                      {
                        if (*v149 != v86)
                        {
                          objc_enumerationMutation(keyEnumerator3);
                        }

                        v88 = *(*(&v148 + 1) + 8 * m);
                        if ((REPropertyIsInternalAttribute(v88, v84) & 1) == 0)
                        {
                          [v82 addObject:v88];
                        }
                      }

                      v85 = [keyEnumerator3 countByEnumeratingWithState:&v148 objects:&buf count:16];
                    }

                    while (v85);
                  }

                  [v82 sortUsingSelector:sel_compare_];
                  v89 = [v82 copy];

                  v90 = MEMORY[0x277D85DD0];
                  v142[0] = MEMORY[0x277D85DD0];
                  v142[1] = 3221225472;
                  v142[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke;
                  v142[3] = &unk_2785FBB58;
                  v142[4] = self;
                  v143 = v79;
                  v139[0] = v90;
                  v139[1] = 3221225472;
                  v139[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_2;
                  v139[3] = &unk_2785FBB58;
                  v140 = v81;
                  selfCopy = self;
                  v91 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v89 itemFormatBlock:v142 valueBlock:v139];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *&buf = 0;
                    *(&buf + 1) = &buf;
                    v156 = 0x2020000000;
                    v157 = 0;
                    v136[0] = MEMORY[0x277D85DD0];
                    v136[1] = 3221225472;
                    v136[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_3;
                    v136[3] = &unk_2785FBB80;
                    p_buf = &buf;
                    v136[4] = self;
                    v137 = v79;
                    v91 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v80 itemFormatBlock:v136 valueBlock:0];

                    _Block_object_dispose(&buf, 8);
                  }

                  else
                  {
                    v92 = +[REHTMLElement div];
                    v93 = [(REHTTPDebugCoordinator *)self _stringElementForObject:v80];
                    v91 = [v92 addChild:v93];
                  }
                }

                v94 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:v125 content:v91];
                if (v122)
                {
                  v95 = [v122 append:v94];

                  v122 = v95;
                }

                else
                {
                  v122 = v94;
                }
              }

              v118 = [v113 countByEnumeratingWithState:&v144 objects:v154 count:16];
            }

            while (v118);
          }

          else
          {
            v122 = 0;
          }
        }

        if (v107)
        {
          v96 = v120;
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v151 = 0u;
          v97 = REEncodeIdentificationProperites();
          v98 = [v97 countByEnumeratingWithState:&v148 objects:&buf count:16];
          if (v98)
          {
            v99 = *v149;
LABEL_110:
            v100 = 0;
            while (1)
            {
              if (*v149 != v99)
              {
                objc_enumerationMutation(v97);
              }

              v101 = [v96 objectForKeyedSubscript:*(*(&v148 + 1) + 8 * v100)];
              if (v101)
              {
                break;
              }

              if (v98 == ++v100)
              {
                v98 = [v97 countByEnumeratingWithState:&v148 objects:&buf count:16];
                if (v98)
                {
                  goto LABEL_110;
                }

                goto LABEL_116;
              }
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_120;
            }

            v102 = [MEMORY[0x277CCAB68] stringWithString:v101];
            [v102 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v102, "length")}];
            [v102 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v102, "length")}];
            [v102 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v102, "length")}];
            [v102 replaceOccurrencesOfString:@"\n" withString:@"<br>" options:0 range:{0, objc_msgSend(v102, "length")}];
            [v102 replaceOccurrencesOfString:@"\t" withString:@"&#9;" options:0 range:{0, objc_msgSend(v102, "length")}];
            v24 = [v102 copy];
          }

          else
          {
LABEL_116:

            v101 = 0;
LABEL_120:
            v24 = &stru_283B97458;
          }
        }

        else
        {
          v24 = v111;
        }

        v108[2](v108, v122, v24);

        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v106 = v12;
        if ([v106 count])
        {
          firstObject = [v106 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            obj = v106;
            v117 = [obj countByEnumeratingWithState:&v132 objects:v153 count:16];
            if (v117)
            {
              v121 = 0;
              v124 = 0;
              v115 = *v133;
              do
              {
                for (n = 0; n != v117; ++n)
                {
                  if (*v133 != v115)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v132 + 1) + 8 * n);
                  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                  v150 = 0u;
                  v151 = 0u;
                  v148 = 0u;
                  v149 = 0u;
                  keyEnumerator4 = [v29 keyEnumerator];
                  v33 = [keyEnumerator4 countByEnumeratingWithState:&v148 objects:&buf count:16];
                  if (v33)
                  {
                    v34 = *v149;
                    do
                    {
                      for (ii = 0; ii != v33; ++ii)
                      {
                        if (*v149 != v34)
                        {
                          objc_enumerationMutation(keyEnumerator4);
                        }

                        v36 = *(*(&v148 + 1) + 8 * ii);
                        if (REPropertyIsInternalAttribute(v36, v32))
                        {
                          v37 = [v29 objectForKeyedSubscript:v36];
                          v38 = REPropertyNameFromInternalAttribute(v36);
                          [dictionary2 setObject:v37 forKeyedSubscript:v38];
                        }
                      }

                      v33 = [keyEnumerator4 countByEnumeratingWithState:&v148 objects:&buf count:16];
                    }

                    while (v33);
                  }

                  v123 = [dictionary2 copy];
                  v39 = [v123 objectForKeyedSubscript:@"type"];
                  v40 = [v39 isEqualToString:@"table"];

                  if (v40)
                  {
                    v41 = [(REHTTPDebugCoordinator *)self _createHTMLTableFromDictionary:v29];
                  }

                  else
                  {
                    v42 = v29;
                    v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v42, "count")}];
                    v150 = 0u;
                    v151 = 0u;
                    v148 = 0u;
                    v149 = 0u;
                    keyEnumerator5 = [v42 keyEnumerator];
                    v46 = [keyEnumerator5 countByEnumeratingWithState:&v148 objects:&buf count:16];
                    if (v46)
                    {
                      v47 = *v149;
                      do
                      {
                        for (jj = 0; jj != v46; ++jj)
                        {
                          if (*v149 != v47)
                          {
                            objc_enumerationMutation(keyEnumerator5);
                          }

                          v49 = *(*(&v148 + 1) + 8 * jj);
                          if ((REPropertyIsInternalAttribute(v49, v45) & 1) == 0)
                          {
                            [v43 addObject:v49];
                          }
                        }

                        v46 = [keyEnumerator5 countByEnumeratingWithState:&v148 objects:&buf count:16];
                      }

                      while (v46);
                    }

                    [v43 sortUsingSelector:sel_compare_];
                    v50 = [v43 copy];

                    v51 = MEMORY[0x277D85DD0];
                    v129[0] = MEMORY[0x277D85DD0];
                    v129[1] = 3221225472;
                    v129[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_4;
                    v129[3] = &unk_2785FBBA8;
                    v129[4] = self;
                    v130 = pathsCopy;
                    v131 = v124;
                    v128[0] = v51;
                    v128[1] = 3221225472;
                    v128[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_5;
                    v128[3] = &unk_2785FBB58;
                    v128[4] = self;
                    v128[5] = v42;
                    v41 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v50 itemFormatBlock:v129 valueBlock:v128];
                  }

                  v52 = v29;
                  v148 = 0u;
                  v149 = 0u;
                  v150 = 0u;
                  v151 = 0u;
                  v53 = REEncodeIdentificationProperites();
                  v54 = [v53 countByEnumeratingWithState:&v148 objects:&buf count:16];
                  if (v54)
                  {
                    v55 = *v149;
                    while (2)
                    {
                      for (kk = 0; kk != v54; ++kk)
                      {
                        if (*v149 != v55)
                        {
                          objc_enumerationMutation(v53);
                        }

                        v57 = [v52 objectForKeyedSubscript:*(*(&v148 + 1) + 8 * kk)];
                        if (v57)
                        {

                          v59 = [(REHTTPDebugCoordinator *)self _stringForObject:v57];
                          v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v124];
                          stringValue2 = [v60 stringValue];
                          v152 = stringValue2;
                          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:1];
                          v63 = [pathsCopy arrayByAddingObjectsFromArray:v62];
                          v58 = [(REHTTPDebugCoordinator *)self _linkElementForTableItem:v59 paths:v63];

                          goto LABEL_63;
                        }
                      }

                      v54 = [v53 countByEnumeratingWithState:&v148 objects:&buf count:16];
                      if (v54)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v58 = 0;
LABEL_63:
                  v64 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:v58 content:v41];

                  if (v121)
                  {
                    v65 = [v121 append:v64];

                    v121 = v65;
                  }

                  else
                  {
                    v121 = v64;
                  }

                  ++v124;
                }

                v117 = [obj countByEnumeratingWithState:&v132 objects:v153 count:16];
              }

              while (v117);
            }

            else
            {
              v121 = 0;
            }
          }

          else
          {
            v127[0] = MEMORY[0x277D85DD0];
            v127[1] = 3221225472;
            v127[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_6;
            v127[3] = &unk_2785FBBD0;
            v127[4] = self;
            v103 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v106 itemFormatBlock:v127 valueBlock:0];
            v121 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:0 content:v103];
          }

          v104 = v111;
          if (v107)
          {

            v104 = &stru_283B97458;
          }

          v111 = v104;
          (v108[2])(v108, v121);
        }

        else
        {
          v121 = +[REHTMLElement div];
          v108[2](v108, v121, v111);
        }
      }

      else
      {
        v66 = +[REHTMLElement div];
        v67 = [(REHTTPDebugCoordinator *)self _stringElementForObject:v12];
        v68 = [v66 addChild:v67];
        v69 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:0 content:v68];

        v108[2](v108, v69, v111);
      }
    }

    else
    {
      v108[2](v108, 0, v111);
    }

    v24 = v111;
LABEL_22:

    completionCopy = v108;
  }

  v25 = *MEMORY[0x277D85DE8];
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 arrayByAddingObject:v4];
  v6 = [v2 _linkElementForTableItem:v4 paths:v5];

  return v6;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [*(a1 + 40) _stringElementForObject:v3];

  return v4;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = REEncodeIdentificationProperites();
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i), v20}];
          if (v10)
          {
            v12 = v10;

            v13 = *(a1 + 32);
            v14 = *(a1 + 40);
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24) - 1];
            v16 = [v15 stringValue];
            v17 = [v14 arrayByAddingObject:v16];
            v11 = [v13 _linkElementForTableItem:v4 paths:v17];

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = [*(a1 + 32) _stringElementForObject:{v3, v20}];
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_4(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = MEMORY[0x277CCABB0];
  v5 = a1[6];
  v6 = a2;
  v7 = [v4 numberWithUnsignedInteger:v5];
  v8 = [v7 stringValue];
  v14[0] = v8;
  v14[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v3 arrayByAddingObjectsFromArray:v9];
  v11 = [v2 _linkElementForTableItem:v6 paths:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  v4 = [v2 _stringElementForObject:v3];

  return v4;
}

- (id)_createContentItemWithTitle:(id)title content:(id)content
{
  titleCopy = title;
  contentCopy = content;
  if (titleCopy)
  {
    v7 = +[REHTMLElement div];
    v8 = [v7 elementByAddingClass:@"section"];

    v9 = [v8 addChild:titleCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[REHTMLElement div];
  v11 = [v10 elementByAddingClass:@"content-item"];

  if (v9)
  {
    v12 = [v11 addChild:v9];

    v11 = v12;
  }

  if (contentCopy)
  {
    v13 = [v11 addChild:contentCopy];

    v11 = v13;
  }

  return v11;
}

- (id)_createHTMLTableRowFromArray:(id)array itemElementTag:(id)tag
{
  v27 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  tagCopy = tag;
  v7 = [REHTMLElement htmlElementWithTag:@"tr" content:0];
  if (_createHTMLTableRowFromArray_itemElementTag__onceToken != -1)
  {
    [REHTTPDebugCoordinator _createHTMLTableRowFromArray:itemElementTag:];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v12);
        if ([v14 hasPrefix:{@"0x", v22}])
        {
          v15 = 1;
        }

        else
        {
          v16 = [v14 stringByTrimmingCharactersInSet:_createHTMLTableRowFromArray_itemElementTag__NumericCharacterSet];
          v15 = [v16 length] == 0;
        }

        v17 = [REHTMLElement htmlElementWithTag:tagCopy content:v14];
        v18 = v17;
        if (v15)
        {
          v19 = [v17 elementByAddingClass:@"monospaced"];

          v18 = v19;
        }

        v7 = [v13 addChild:v18];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __70__REHTTPDebugCoordinator__createHTMLTableRowFromArray_itemElementTag___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890.-+"];
  v1 = _createHTMLTableRowFromArray_itemElementTag__NumericCharacterSet;
  _createHTMLTableRowFromArray_itemElementTag__NumericCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_createHTMLTableFromDictionary:(id)dictionary
{
  v42 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  keyEnumerator = [dictionaryCopy keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        if (REPropertyIsInternalAttribute(v12, v8))
        {
          v13 = [dictionaryCopy objectForKeyedSubscript:v12];
          v14 = REPropertyNameFromInternalAttribute(v12);
          [dictionary setObject:v13 forKeyedSubscript:v14];
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v9);
  }

  v15 = [dictionary copy];
  v16 = [v15 objectForKeyedSubscript:@"sortable"];
  bOOLValue = [v16 BOOLValue];

  v18 = [REHTMLElement htmlElementWithTag:@"table" content:0];
  v19 = v18;
  v36 = v15;
  if (bOOLValue)
  {
    v20 = [v18 elementByAddingClasses:&unk_283BBD9B0];

    v19 = v20;
  }

  v21 = [REHTMLElement htmlElementWithTag:@"thead" content:0];
  v22 = [dictionaryCopy objectForKeyedSubscript:@"header"];
  v23 = [(REHTTPDebugCoordinator *)self _createHTMLTableRowFromArray:v22 itemElementTag:@"th"];
  v24 = [v21 addChild:v23];

  v35 = [v19 addChild:v24];

  v25 = [REHTMLElement htmlElementWithTag:@"tbody" content:0];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 0];
  v27 = [dictionaryCopy objectForKeyedSubscript:v26];

  if (v27)
  {
    v28 = 1;
    do
    {
      v29 = [(REHTTPDebugCoordinator *)self _createHTMLTableRowFromArray:v27 itemElementTag:@"td"];
      v30 = [v25 addChild:v29];

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v28];
      v27 = [dictionaryCopy objectForKeyedSubscript:v31];

      ++v28;
      v25 = v30;
    }

    while (v27);
  }

  else
  {
    v30 = v25;
  }

  v32 = [v35 addChild:v30];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_createTableWithItems:(id)items itemFormatBlock:(id)block valueBlock:(id)valueBlock
{
  v40 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  valueBlockCopy = valueBlock;
  v10 = +[REHTMLElement div];
  v11 = [v10 elementByAddingClass:@"content-table"];

  v31 = [itemsCopy count];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = itemsCopy;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v33 = *v36;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        v13 = v11;
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = +[REHTMLElement div];
        v16 = [v15 elementByAddingClass:@"table-item"];

        v17 = blockCopy[2](blockCopy, v14);
        v18 = +[REHTMLElement div];
        v19 = [v18 elementByAddingClass:@"item-key"];
        v20 = [v19 addChild:v17];

        v21 = [v16 addChild:v20];

        if (valueBlockCopy)
        {
          v22 = valueBlockCopy[2](valueBlockCopy, v14);
          if (v22)
          {
            v23 = v22;
            v24 = +[REHTMLElement div];
            v25 = [v24 elementByAddingClass:@"item-value"];
            v26 = [v25 addChild:v23];

            v27 = [v21 addChild:v26];

            v21 = v27;
          }
        }

        v11 = [v13 addChild:v21];
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v34);
  }

  if (v31 <= 2)
  {
    v28 = [v11 elementByAddingClass:@"two-column"];

    v11 = v28;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)generateDiagnosticsForPaths:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "Received json %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end