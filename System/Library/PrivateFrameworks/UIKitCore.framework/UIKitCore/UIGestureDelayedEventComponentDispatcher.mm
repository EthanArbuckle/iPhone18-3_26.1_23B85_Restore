@interface UIGestureDelayedEventComponentDispatcher
- (BOOL)pressesBeganWasDelayedForPress:(uint64_t)press;
- (BOOL)touchesBeganWasDelayedForTouch:(uint64_t)touch;
- (UIGestureDelayedEventComponentDispatcher)init;
- (uint64_t)enqueueDelayedPressToSend:(uint64_t)result;
- (uint64_t)enqueueDelayedTouchToSend:(uint64_t)result;
- (uint64_t)removeDelayedPress:(uint64_t)result;
- (void)cancelDelayedPresses:(void *)presses presses:(void *)a4 fromEvent:;
- (void)cancelDelayedTouches:(void *)touches touches:(void *)a4 fromEvent:;
- (void)delayedPressForPress:(void *)press event:;
- (void)delayedTouchForTouch:(void *)touch event:;
- (void)removeDelayedTouch:(id *)touch;
- (void)removeDelayedTouchesToSend:(id)send;
- (void)removePress:(uint64_t)press;
- (void)removeTouch:(void *)touch;
- (void)sendDelayedPresses;
- (void)sendDelayedTouches;
@end

@implementation UIGestureDelayedEventComponentDispatcher

- (void)sendDelayedPresses
{
  v198 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    if ([self[4] count])
    {
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v2 = selfCopy[4];
      v3 = [v2 countByEnumeratingWithState:&v168 objects:v189 count:16];
      v140 = selfCopy;
      if (v3)
      {
        v4 = v3;
        obj = 0;
        array2 = 0;
        v6 = *v169;
        do
        {
          v7 = 0;
          do
          {
            if (*v169 != v6)
            {
              objc_enumerationMutation(v2);
            }

            v8 = *(*(&v168 + 1) + 8 * v7);
            if (v8)
            {
              v9 = *(v8 + 24);
            }

            else
            {
              v9 = 0;
            }

            v10 = v9;
            if ([v10 phase] == 4 && (!v8 ? (v11 = 0) : (v11 = *(v8 + 32)), v12 = v11, v13 = objc_msgSend(v12, "phase"), v12, !v13))
            {
              array = obj;
              if (!obj)
              {
                array = [MEMORY[0x1E695DF70] array];
              }

              obj = array;
              [array addObject:v8];
            }

            else
            {
              phase = [v10 phase];
              if (v8)
              {
                v15 = *(v8 + 32);
              }

              else
              {
                v15 = 0;
              }

              v16 = v15;
              phase2 = [v16 phase];

              if (phase != phase2)
              {
                if ([v10 phase] != 2 || ((objc_msgSend(v10, "force"), v19 = v18, !v8) ? (v20 = 0) : (v20 = *(v8 + 32)), v21 = v20, objc_msgSend(v21, "force"), v23 = v22, v21, v19 != v23))
                {
                  if (v8)
                  {
                    v8 = [v8 copy];
                    *(v8 + 16) = 1;
                  }

                  [(UIGestureDelayedPress *)v8 saveCurrentPressState];
                  if (v8)
                  {
                    v24 = *(v8 + 40);
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v25 = v24;
                  phase3 = [v25 phase];

                  if (phase3 == 2)
                  {
                    if (v8)
                    {
                      v27 = *(v8 + 40);
                    }

                    else
                    {
                      v27 = 0;
                    }

                    v28 = v27;
                    [v28 setPhase:1];
                  }

                  if (!array2)
                  {
                    array2 = [MEMORY[0x1E695DF70] array];
                  }

                  [array2 addObject:v8];
                }
              }
            }

            ++v7;
          }

          while (v4 != v7);
          v30 = [v2 countByEnumeratingWithState:&v168 objects:v189 count:16];
          v4 = v30;
        }

        while (v30);

        selfCopy = v140;
        if (array2)
        {
          [v140[4] addObjectsFromArray:array2];
        }

        if (!obj)
        {
          goto LABEL_49;
        }

        [v140[4] removeObjectsInArray:obj];
        v2 = obj;
      }

LABEL_49:
      [selfCopy[4] sortUsingComparator:&__block_literal_global_8_0];
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      obja = selfCopy[4];
      v31 = [obja countByEnumeratingWithState:&v164 objects:v188 count:16];
      if (!v31)
      {
        v33 = 0;
        v34 = 0;
        goto LABEL_73;
      }

      v32 = v31;
      v33 = 0;
      v34 = 0;
      v35 = *v165;
      while (1)
      {
        v36 = 0;
        do
        {
          if (*v165 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v37 = *(*(&v164 + 1) + 8 * v36);
          if (v37)
          {
            v38 = *(v37 + 24);
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;
          [v39 setIsDelayed:0];
          if (!v37)
          {
            [(UIGestureDelayedPress *)0 saveCurrentPressState];
            v40 = 0;
            goto LABEL_59;
          }

          if ((*(v37 + 16) & 1) == 0)
          {
            [(UIGestureDelayedPress *)v37 saveCurrentPressState];
            v40 = *(v37 + 32);
LABEL_59:
            v41 = v40;
            [v39 _loadStateFromPress:v41];
          }

          if (!v33 || [v33 count] && (objc_msgSend(v33, "lastObject"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "phaseForDelivery"), v44 = objc_msgSend(v37, "phaseForDelivery"), v42, v43 != v44))
          {
            if (!v34)
            {
              v34 = objc_opt_new();
            }

            v45 = objc_opt_new();

            [v34 addObject:v45];
            v33 = v45;
          }

          [v33 addObject:v37];

          ++v36;
        }

        while (v32 != v36);
        v46 = [obja countByEnumeratingWithState:&v164 objects:v188 count:16];
        v32 = v46;
        if (!v46)
        {
LABEL_73:
          v129 = v33;

          [v140[4] removeAllObjects];
          v162 = 0u;
          v163 = 0u;
          v160 = 0u;
          v161 = 0u;
          v130 = v34;
          v133 = [v130 countByEnumeratingWithState:&v160 objects:v187 count:16];
          if (!v133)
          {
            goto LABEL_147;
          }

          allocator = *MEMORY[0x1E695E480];
          v132 = *v161;
          *&v47 = 138412802;
          v128 = v47;
LABEL_75:
          v48 = 0;
          while (1)
          {
            if (*v161 != v132)
            {
              objc_enumerationMutation(v130);
            }

            v49 = *(*(&v160 + 1) + 8 * v48);
            if (*__UILogGetCategoryCachedImpl("Gesture", &qword_1ED49C7E0))
            {
              v158 = 0u;
              v159 = 0u;
              v156 = 0u;
              v157 = 0u;
              v93 = v49;
              v94 = [v93 countByEnumeratingWithState:&v156 objects:v186 count:16];
              if (v94)
              {
                v95 = v94;
                v96 = *v157;
                do
                {
                  v97 = 0;
                  do
                  {
                    if (*v157 != v96)
                    {
                      objc_enumerationMutation(v93);
                    }

                    v98 = *(*(&v156 + 1) + 8 * v97);
                    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49C7E8);
                    if (*CategoryCachedImpl)
                    {
                      v100 = *(CategoryCachedImpl + 8);
                      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                      {
                        objc = v100;
                        v135 = v48;
                        if (v98)
                        {
                          v101 = *(v98 + 24);
                        }

                        else
                        {
                          v101 = 0;
                        }

                        v142 = v101;
                        v102 = objc_opt_class();
                        v103 = NSStringFromClass(v102);
                        if (v98)
                        {
                          v104 = *(v98 + 24);
                          v105 = *(v98 + 32);
                          v139 = v104;
                        }

                        else
                        {
                          v104 = 0;
                          v139 = 0;
                          v105 = 0;
                        }

                        v106 = v105;
                        _phaseDescription = [v106 _phaseDescription];
                        *buf = v128;
                        v193 = v103;
                        v194 = 2048;
                        v195 = v104;
                        v196 = 2112;
                        v197 = _phaseDescription;
                        _os_log_impl(&dword_188A29000, objc, OS_LOG_TYPE_ERROR, "Dispatching delayed press <%@: %p; phase = %@>", buf, 0x20u);

                        v48 = v135;
                      }
                    }

                    ++v97;
                  }

                  while (v95 != v97);
                  v108 = [v93 countByEnumeratingWithState:&v156 objects:v186 count:16];
                  v95 = v108;
                }

                while (v108);
              }
            }

            if ([v49 count])
            {
              break;
            }

LABEL_126:
            if (++v48 == v133)
            {
              v109 = [v130 countByEnumeratingWithState:&v160 objects:v187 count:16];
              v133 = v109;
              if (v109)
              {
                goto LABEL_75;
              }

LABEL_147:

              v154 = 0u;
              v155 = 0u;
              v152 = 0u;
              v153 = 0u;
              objd = v130;
              v110 = [objd countByEnumeratingWithState:&v152 objects:v185 count:16];
              if (!v110)
              {
                goto LABEL_170;
              }

              v111 = v110;
              v112 = *v153;
LABEL_149:
              v113 = 0;
              while (1)
              {
                if (*v153 != v112)
                {
                  objc_enumerationMutation(objd);
                }

                v114 = *(*(&v152 + 1) + 8 * v113);
                v148 = 0u;
                v149 = 0u;
                v150 = 0u;
                v151 = 0u;
                v115 = v114;
                v116 = [v115 countByEnumeratingWithState:&v148 objects:v184 count:16];
                if (v116)
                {
                  break;
                }

LABEL_168:

                if (++v113 == v111)
                {
                  v111 = [objd countByEnumeratingWithState:&v152 objects:v185 count:16];
                  if (!v111)
                  {
LABEL_170:

                    return;
                  }

                  goto LABEL_149;
                }
              }

              v117 = v116;
              v118 = *v149;
              while (2)
              {
                v119 = 0;
LABEL_155:
                if (*v149 != v118)
                {
                  objc_enumerationMutation(v115);
                }

                v120 = *(*(&v148 + 1) + 8 * v119);
                if (v120)
                {
                  v121 = *(v120 + 16);
                  v122 = *(v120 + 24);
                  v123 = v122;
                  if (v121 == 1)
                  {
                    phase4 = [v122 phase];

                    if (phase4 == 3)
                    {
                      v123 = *(v120 + 24);
                      [v123 setSentPressesEnded:1];
                      goto LABEL_163;
                    }

                    goto LABEL_164;
                  }

                  v125 = *(v120 + 40);
                }

                else
                {
                  v123 = 0;
                  v125 = 0;
                }

                v126 = v125;
                [v123 _loadStateFromPress:v126];

LABEL_163:
LABEL_164:
                if (v117 == ++v119)
                {
                  v127 = [v115 countByEnumeratingWithState:&v148 objects:v184 count:16];
                  v117 = v127;
                  if (!v127)
                  {
                    goto LABEL_168;
                  }

                  continue;
                }

                goto LABEL_155;
              }
            }
          }

          v134 = v48;
          Mutable = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
          v180 = 0u;
          v181 = 0u;
          v182 = 0u;
          v183 = 0u;
          v51 = v49;
          v52 = [v51 countByEnumeratingWithState:&v180 objects:buf count:16];
          if (!v52)
          {
            goto LABEL_100;
          }

          v53 = v52;
          v54 = *v181;
          while (2)
          {
            v55 = 0;
LABEL_83:
            if (*v181 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v180 + 1) + 8 * v55);
            if (v56)
            {
              v57 = *(v56 + 24);
              if (*(v56 + 16) == 1)
              {
                v58 = *(v56 + 40);
                [v57 _loadStateFromPress:v58];

                v59 = *(v56 + 32);
                responder = [v59 responder];
                [v57 setResponder:responder];

                v61 = *(v56 + 32);
                window = [v61 window];
                [v57 setWindow:window];

                v63 = *(v56 + 24);
                phase5 = [v63 phase];
                v65 = *(v56 + 32);
                [v65 setPhase:phase5];
              }
            }

            else
            {
              v57 = 0;
            }

            responder2 = [v57 responder];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              responder3 = [v57 responder];
              window2 = [responder3 window];
              if (window2)
              {

                goto LABEL_92;
              }

              responder4 = [v57 responder];
              objc_opt_class();
              v71 = objc_opt_isKindOfClass();

              if (v71)
              {
LABEL_92:

                goto LABEL_93;
              }
            }

            else
            {
LABEL_93:
              responder5 = [v57 responder];
              responder3 = CFDictionaryGetValue(Mutable, responder5);

              if (!responder3)
              {
                responder3 = [MEMORY[0x1E695DFA8] set];
                responder6 = [v57 responder];
                CFDictionarySetValue(Mutable, responder6, responder3);
              }

              [responder3 addObject:v57];
            }

            if (v53 == ++v55)
            {
              v74 = [v51 countByEnumeratingWithState:&v180 objects:buf count:16];
              v53 = v74;
              if (!v74)
              {
LABEL_100:

                v178 = 0u;
                v179 = 0u;
                v176 = 0u;
                v177 = 0u;
                v141 = Mutable;
                v138 = [(__CFDictionary *)v141 countByEnumeratingWithState:&v176 objects:v191 count:16];
                if (v138)
                {
                  v137 = *v177;
                  do
                  {
                    for (i = 0; i != v138; ++i)
                    {
                      if (*v177 != v137)
                      {
                        objc_enumerationMutation(v141);
                      }

                      objb = *(*(&v176 + 1) + 8 * i);
                      v76 = CFDictionaryGetValue(v141, objb);
                      v77 = UIApp;
                      anyObject = [v76 anyObject];
                      window3 = [anyObject window];
                      v80 = [v77 _pressesEventForWindow:window3];

                      v174 = 0u;
                      v175 = 0u;
                      v172 = 0u;
                      v173 = 0u;
                      v81 = v76;
                      v82 = [v81 countByEnumeratingWithState:&v172 objects:v190 count:16];
                      if (v82)
                      {
                        v83 = v82;
                        v84 = *v173;
                        do
                        {
                          for (j = 0; j != v83; ++j)
                          {
                            if (*v173 != v84)
                            {
                              objc_enumerationMutation(v81);
                            }

                            v86 = *(*(&v172 + 1) + 8 * j);
                            v87 = UIApp;
                            window4 = [v86 window];
                            v89 = [v87 _pressesEventForWindow:window4];

                            if (v89 != v80)
                            {
                              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                              v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void sendEventForDelayedPresses(NSArray<UIGestureDelayedPress *> *const __strong)"];
                              [currentHandler handleFailureInFunction:v90 file:@"UIGestureDelayedEventComponentDispatcher.m" lineNumber:512 description:@"events are from different window scenes"];
                            }

                            [v89 _addPress:v86 forDelayedDelivery:1];
                          }

                          v83 = [v81 countByEnumeratingWithState:&v172 objects:v190 count:16];
                        }

                        while (v83);
                      }

                      anyObject2 = [v81 anyObject];
                      phase6 = [anyObject2 phase];

                      if (phase6 > 2)
                      {
                        if (phase6 == 3)
                        {
                          [objb pressesEnded:v81 withEvent:v80];
                        }

                        else if (phase6 == 4)
                        {
                          [objb pressesCancelled:v81 withEvent:v80];
                        }
                      }

                      else if (phase6)
                      {
                        if (phase6 == 1)
                        {
                          [objb pressesChanged:v81 withEvent:v80];
                        }
                      }

                      else
                      {
                        [objb pressesBegan:v81 withEvent:v80];
                      }
                    }

                    v138 = [(__CFDictionary *)v141 countByEnumeratingWithState:&v176 objects:v191 count:16];
                  }

                  while (v138);
                }

                CFRelease(v141);
                v48 = v134;
                goto LABEL_126;
              }

              continue;
            }

            goto LABEL_83;
          }
        }
      }
    }
  }
}

- (UIGestureDelayedEventComponentDispatcher)init
{
  v12.receiver = self;
  v12.super_class = UIGestureDelayedEventComponentDispatcher;
  v2 = [(UIGestureDelayedEventComponentDispatcher *)&v12 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    delayedTouches = v2->_delayedTouches;
    v2->_delayedTouches = array;

    array2 = [MEMORY[0x1E695DF70] array];
    delayedTouchesToSend = v2->_delayedTouchesToSend;
    v2->_delayedTouchesToSend = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    delayedPresses = v2->_delayedPresses;
    v2->_delayedPresses = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    delayedPressesToSend = v2->_delayedPressesToSend;
    v2->_delayedPressesToSend = array4;
  }

  return v2;
}

- (void)sendDelayedTouches
{
  v188 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  if (![self[2] count])
  {
    return;
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v2 = selfCopy[2];
  v3 = [v2 countByEnumeratingWithState:&v158 objects:v179 count:16];
  v130 = selfCopy;
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    obj = 0;
    v6 = *v159;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v159 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v158 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 24);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        phase = [v10 phase];
        if (v8)
        {
          v12 = *(v8 + 32);
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        phase2 = [v13 phase];

        if (phase == 4 && !phase2)
        {
          if (!v5)
          {
            v5 = objc_opt_new();
          }

          [v5 addObject:v8];
          goto LABEL_36;
        }

        if (phase == phase2)
        {
          goto LABEL_36;
        }

        if (phase == 2)
        {
          [v10 locationInView:0];
          v16 = v15;
          v18 = v17;
          v19 = v8 ? *(v8 + 32) : 0;
          v20 = v19;
          [v20 locationInView:0];
          v22 = v21;
          v24 = v23;

          if (v16 == v22 && v18 == v24)
          {
            goto LABEL_36;
          }
        }

        if (v8)
        {
          v8 = [v8 copy];
          *(v8 + 16) = 1;
        }

        [(UIGestureDelayedTouch *)v8 saveCurrentTouchState];
        if (v8)
        {
          v25 = *(v8 + 40);
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        if ([v26 phase] == 2)
        {
          v27 = 1;
        }

        else
        {
          if (phase2 > 2 || [v26 phase] < 5)
          {
            goto LABEL_33;
          }

          v27 = 3;
        }

        [v26 setPhase:v27];
LABEL_33:
        v28 = obj;
        if (!obj)
        {
          v28 = objc_opt_new();
        }

        obj = v28;
        [v28 addObject:v8];

LABEL_36:
        ++v7;
      }

      while (v4 != v7);
      v29 = [v2 countByEnumeratingWithState:&v158 objects:v179 count:16];
      v4 = v29;
      if (!v29)
      {

        selfCopy = v130;
        if (obj)
        {
          [v130[2] addObjectsFromArray:obj];
        }

        if (v5)
        {
          [v130 removeDelayedTouchesToSend:v5];
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }
  }

  v5 = v2;
LABEL_48:

LABEL_49:
  [selfCopy[2] sortUsingComparator:&__block_literal_global_30];
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obja = selfCopy[2];
  v30 = [obja countByEnumeratingWithState:&v154 objects:v178 count:16];
  if (!v30)
  {
    v32 = 0;
    v33 = 0;
    goto LABEL_73;
  }

  v31 = v30;
  v32 = 0;
  v33 = 0;
  v34 = *v155;
  do
  {
    v35 = 0;
    do
    {
      if (*v155 != v34)
      {
        objc_enumerationMutation(obja);
      }

      v36 = *(*(&v154 + 1) + 8 * v35);
      if (v36)
      {
        v37 = *(v36 + 24);
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;
      [v38 setIsDelayed:0];
      if (!v36)
      {
        [(UIGestureDelayedTouch *)0 saveCurrentTouchState];
        v39 = 0;
        goto LABEL_59;
      }

      if ((*(v36 + 16) & 1) == 0)
      {
        [(UIGestureDelayedTouch *)v36 saveCurrentTouchState];
        v39 = *(v36 + 32);
LABEL_59:
        v40 = v39;
        [v38 _loadStateFromTouch:v40];
      }

      if (!v32 || [v32 count] && (objc_msgSend(v32, "lastObject"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "phaseForDelivery"), v43 = objc_msgSend(v36, "phaseForDelivery"), v41, v42 != v43))
      {
        if (!v33)
        {
          v33 = objc_opt_new();
        }

        v44 = objc_opt_new();

        [v33 addObject:v44];
        v32 = v44;
      }

      [v32 addObject:v36];

      ++v35;
    }

    while (v31 != v35);
    v45 = [obja countByEnumeratingWithState:&v154 objects:v178 count:16];
    v31 = v45;
  }

  while (v45);
LABEL_73:
  v126 = v32;

  [v130[2] removeAllObjects];
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v127 = v33;
  v129 = [v127 countByEnumeratingWithState:&v150 objects:v177 count:16];
  if (v129)
  {
    v128 = *v151;
    do
    {
      v46 = 0;
      do
      {
        if (*v151 != v128)
        {
          objc_enumerationMutation(v127);
        }

        v47 = *(*(&v150 + 1) + 8 * v46);
        if (*__UILogGetCategoryCachedImpl("Gesture", &_MergedGlobals_987))
        {
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v85 = v47;
          v86 = [v85 countByEnumeratingWithState:&v146 objects:v176 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v147;
            do
            {
              v89 = 0;
              do
              {
                if (*v147 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v90 = *(*(&v146 + 1) + 8 * v89);
                CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49C7D8);
                if (*CategoryCachedImpl)
                {
                  v92 = *(CategoryCachedImpl + 8);
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                  {
                    v132 = v46;
                    objc = v92;
                    if (v90)
                    {
                      v93 = *(v90 + 24);
                    }

                    else
                    {
                      v93 = 0;
                    }

                    v125 = v93;
                    v94 = objc_opt_class();
                    v95 = NSStringFromClass(v94);
                    if (v90)
                    {
                      v96 = *(v90 + 24);
                      v97 = *(v90 + 32);
                      v98 = v96;
                    }

                    else
                    {
                      v96 = 0;
                      v98 = 0;
                      v97 = 0;
                    }

                    v99 = v97;
                    _phaseDescription = [v99 _phaseDescription];
                    *buf = 138412802;
                    v183 = v95;
                    v184 = 2048;
                    v185 = v96;
                    v186 = 2112;
                    v187 = _phaseDescription;
                    _os_log_impl(&dword_188A29000, objc, OS_LOG_TYPE_ERROR, "Dispatching delayed touch <%@: %p; phase = %@>", buf, 0x20u);

                    v46 = v132;
                  }
                }

                ++v89;
              }

              while (v87 != v89);
              v101 = [v85 countByEnumeratingWithState:&v146 objects:v176 count:16];
              v87 = v101;
            }

            while (v101);
          }
        }

        if ([v47 count])
        {
          v131 = v46;
          strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
          objb = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
          v170 = 0u;
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          v49 = v47;
          v50 = [v49 countByEnumeratingWithState:&v170 objects:buf count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v171;
            do
            {
              v53 = 0;
              do
              {
                if (*v171 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                v54 = *(*(&v170 + 1) + 8 * v53);
                if (v54)
                {
                  v55 = *(v54 + 24);
                  if (*(v54 + 16) == 1)
                  {
                    v56 = *(v54 + 40);
                    [v55 _loadStateFromTouch:v56];

                    v57 = *(v54 + 32);
                    _responder = [v57 _responder];
                    [v55 _setResponder:_responder];

                    v59 = *(v54 + 32);
                    window = [v59 window];
                    [v55 setWindow:window];

                    v61 = *(v54 + 24);
                    phase3 = [v61 phase];
                    v63 = *(v54 + 32);
                    [v63 setPhase:phase3];
                  }
                }

                else
                {
                  v55 = 0;
                }

                _responder2 = [v55 _responder];
                _eventReceivingWindow = [_responder2 _eventReceivingWindow];

                if (_eventReceivingWindow)
                {
                  v66 = [strongToStrongObjectsMapTable objectForKey:_responder2];
                  if (!v66)
                  {
                    v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    [strongToStrongObjectsMapTable setObject:v66 forKey:_responder2];
                    if (v54)
                    {
                      v67 = *(v54 + 48);
                    }

                    else
                    {
                      v67 = 0;
                    }

                    v68 = v67;
                    [objb setObject:v68 forKey:_responder2];
                  }

                  [v66 addObject:v55];
                }

                ++v53;
              }

              while (v51 != v53);
              v69 = [v49 countByEnumeratingWithState:&v170 objects:buf count:16];
              v51 = v69;
            }

            while (v69);
          }

          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v70 = strongToStrongObjectsMapTable;
          v71 = [v70 countByEnumeratingWithState:&v166 objects:v181 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v167;
            do
            {
              for (i = 0; i != v72; ++i)
              {
                if (*v167 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v75 = *(*(&v166 + 1) + 8 * i);
                v76 = [v70 objectForKey:v75];
                v77 = [objb objectForKey:v75];
                v162 = 0u;
                v163 = 0u;
                v164 = 0u;
                v165 = 0u;
                v78 = v76;
                v79 = [v78 countByEnumeratingWithState:&v162 objects:v180 count:16];
                if (v79)
                {
                  v80 = v79;
                  v81 = *v163;
                  do
                  {
                    for (j = 0; j != v80; ++j)
                    {
                      if (*v163 != v81)
                      {
                        objc_enumerationMutation(v78);
                      }

                      [v77 _addTouch:*(*(&v162 + 1) + 8 * j) forDelayedDelivery:1];
                    }

                    v80 = [v78 countByEnumeratingWithState:&v162 objects:v180 count:16];
                  }

                  while (v80);
                }

                anyObject = [v78 anyObject];
                phase4 = [anyObject phase];

                if (phase4 > 2)
                {
                  if (phase4 == 3)
                  {
                    [v75 touchesEnded:v78 withEvent:v77];
                  }

                  else if (phase4 == 4)
                  {
                    [v75 touchesCancelled:v78 withEvent:v77];
                  }
                }

                else if (phase4)
                {
                  if (phase4 == 1)
                  {
                    [v75 touchesMoved:v78 withEvent:v77];
                  }
                }

                else
                {
                  [v75 touchesBegan:v78 withEvent:v77];
                }
              }

              v72 = [v70 countByEnumeratingWithState:&v166 objects:v181 count:16];
            }

            while (v72);
          }

          v46 = v131;
        }

        ++v46;
      }

      while (v46 != v129);
      v102 = [v127 countByEnumeratingWithState:&v150 objects:v177 count:16];
      v129 = v102;
    }

    while (v102);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  objd = v127;
  v103 = [objd countByEnumeratingWithState:&v142 objects:v175 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v143;
    do
    {
      for (k = 0; k != v104; ++k)
      {
        if (*v143 != v105)
        {
          objc_enumerationMutation(objd);
        }

        v107 = *(*(&v142 + 1) + 8 * k);
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v108 = v107;
        v109 = [v108 countByEnumeratingWithState:&v138 objects:v174 count:16];
        if (v109)
        {
          v110 = v109;
          v111 = *v139;
          do
          {
            v112 = 0;
            do
            {
              if (*v139 != v111)
              {
                objc_enumerationMutation(v108);
              }

              v113 = *(*(&v138 + 1) + 8 * v112);
              if (v113)
              {
                v114 = *(v113 + 16);
                v115 = *(v113 + 24);
                v116 = v115;
                if (v114 == 1)
                {
                  phase5 = [v115 phase];

                  if (phase5 == 3)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_167;
                }

                v118 = *(v113 + 40);
              }

              else
              {
                v116 = 0;
                v118 = 0;
              }

              v119 = v118;
              [v116 _loadStateFromTouch:v119];

              if ([v113 phaseForDelivery] == 3)
              {
                v120 = v113 ? *(v113 + 24) : 0;
                v121 = v120;
                CanBeConsideredForSentTouchesEnded = _UIDelayedTouchCanBeConsideredForSentTouchesEnded(v121);

                if (CanBeConsideredForSentTouchesEnded)
                {
                  if (v113)
                  {
LABEL_164:
                    v123 = *(v113 + 24);
                    if (v123)
                    {
                      v123[118] |= 8u;
                    }
                  }

                  else
                  {
                    v123 = 0;
                  }
                }
              }

LABEL_167:
              ++v112;
            }

            while (v110 != v112);
            v124 = [v108 countByEnumeratingWithState:&v138 objects:v174 count:16];
            v110 = v124;
          }

          while (v124);
        }
      }

      v104 = [objd countByEnumeratingWithState:&v142 objects:v175 count:16];
    }

    while (v104);
  }
}

uint64_t __62__UIGestureDelayedEventComponentDispatcher_sendDelayedTouches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 timestampForDelivery];
  v5 = v4;
  [a3 timestampForDelivery];
  if (v6 > v5)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (uint64_t)enqueueDelayedTouchToSend:(uint64_t)result
{
  v32 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    *(a2 + 8) = --v4;
  }

  if (!v4)
  {
    v5 = *(a2 + 24);
LABEL_7:
    v6 = v5;
    if ([v6 isDelayed])
    {
      if (a2)
      {
        v7 = *(a2 + 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = _UIGestureDelayedTouchForUITouch(v8, v3[2]);

      if (!v9)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &enqueueDelayedTouchToSend____s_category);
        if (*CategoryCachedImpl)
        {
          v11 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v23.receiver = v3;
            v23.super_class = UIGestureDelayedEventComponentDispatcher;
            v12 = v11;
            v13 = objc_msgSendSuper2(&v23, sel_description);
            if (a2)
            {
              v14 = *(a2 + 24);
            }

            else
            {
              v14 = 0;
            }

            v15 = v14;
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            if (a2)
            {
              v18 = *(a2 + 24);
              v19 = *(a2 + 32);
              v20 = v18;
            }

            else
            {
              v18 = 0;
              v20 = 0;
              v19 = 0;
            }

            v21 = v19;
            _phaseDescription = [v21 _phaseDescription];
            *buf = 138413058;
            v25 = v13;
            v26 = 2112;
            v27 = v17;
            v28 = 2048;
            v29 = v18;
            v30 = 2112;
            v31 = _phaseDescription;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@: Sending delayed touch <%@: %p; phase = %@>", buf, 0x2Au);
          }
        }

        [v3[2] addObject:a2];
      }
    }

    else
    {
    }

    return [v3[1] removeObject:a2];
  }

  return result;
}

- (uint64_t)enqueueDelayedPressToSend:(uint64_t)result
{
  v32 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    *(a2 + 8) = --v4;
  }

  if (!v4)
  {
    v5 = *(a2 + 24);
LABEL_7:
    v6 = v5;
    if ([v6 isDelayed])
    {
      if (a2)
      {
        v7 = *(a2 + 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = _UIGestureDelayedTouchForUITouch(v8, v3[4]);

      if (!v9)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &enqueueDelayedPressToSend____s_category);
        if (*CategoryCachedImpl)
        {
          v11 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v23.receiver = v3;
            v23.super_class = UIGestureDelayedEventComponentDispatcher;
            v12 = v11;
            v13 = objc_msgSendSuper2(&v23, sel_description);
            if (a2)
            {
              v14 = *(a2 + 24);
            }

            else
            {
              v14 = 0;
            }

            v15 = v14;
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            if (a2)
            {
              v18 = *(a2 + 24);
              v19 = *(a2 + 32);
              v20 = v18;
            }

            else
            {
              v18 = 0;
              v20 = 0;
              v19 = 0;
            }

            v21 = v19;
            _phaseDescription = [v21 _phaseDescription];
            *buf = 138413058;
            v25 = v13;
            v26 = 2112;
            v27 = v17;
            v28 = 2048;
            v29 = v18;
            v30 = 2112;
            v31 = _phaseDescription;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@: Sending delayed press <%@: %p; phase = %@>", buf, 0x2Au);
          }
        }

        [v3[4] addObject:a2];
      }
    }

    else
    {
    }

    return [v3[3] removeObject:a2];
  }

  return result;
}

- (void)delayedTouchForTouch:(void *)touch event:
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = _UIGestureDelayedTouchForUITouch(a2, self[1]);
    if (!v6)
    {
      _cloneEvent = [touch _cloneEvent];
      v8 = [[UIGestureDelayedTouch alloc] initWithEvent:_cloneEvent touch:a2];
      v6 = v8;
      if (v8)
      {
        v9 = v8[4];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      [v10 _loadStateFromTouch:a2];

      [self[1] addObject:v6];
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &delayedTouchForTouch_event____s_category);
    if (*CategoryCachedImpl)
    {
      v13 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19.receiver = self;
        v19.super_class = UIGestureDelayedEventComponentDispatcher;
        v14 = v13;
        v15 = objc_msgSendSuper2(&v19, sel_description);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        _phaseDescription = [a2 _phaseDescription];
        *buf = 138413058;
        v21 = v15;
        v22 = 2112;
        v23 = v17;
        v24 = 2048;
        v25 = a2;
        v26 = 2112;
        v27 = _phaseDescription;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%@: Delaying touch <%@: %p; phase = %@>", buf, 0x2Au);
      }
    }

    if (v6)
    {
      ++v6[1];
    }

    [a2 setIsDelayed:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)delayedPressForPress:(void *)press event:
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = _UIGestureDelayedTouchForUITouch(a2, self[3]);
    if (!v6)
    {
      _cloneEvent = [press _cloneEvent];
      v8 = [[UIGestureDelayedPress alloc] initWithEvent:_cloneEvent press:a2];
      v6 = v8;
      if (v8)
      {
        v9 = v8[4];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      [v10 _loadStateFromPress:a2];

      [self[3] addObject:v6];
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &delayedPressForPress_event____s_category);
    if (*CategoryCachedImpl)
    {
      v13 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19.receiver = self;
        v19.super_class = UIGestureDelayedEventComponentDispatcher;
        v14 = v13;
        v15 = objc_msgSendSuper2(&v19, sel_description);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        _phaseDescription = [a2 _phaseDescription];
        *buf = 138413058;
        v21 = v15;
        v22 = 2112;
        v23 = v17;
        v24 = 2048;
        v25 = a2;
        v26 = 2112;
        v27 = _phaseDescription;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%@: Delaying press <%@: %p; phase = %@>", buf, 0x2Au);
      }
    }

    if (v6)
    {
      ++v6[1];
    }

    [a2 setIsDelayed:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeDelayedTouch:(id *)touch
{
  v16 = *MEMORY[0x1E69E9840];
  if (!touch)
  {
    return;
  }

  if (!a2)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    *(a2 + 8) = --v4;
  }

  if (!v4)
  {
    v5 = *(a2 + 24);
LABEL_7:
    v6 = v5;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &removeDelayedTouch____s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11.receiver = touch;
        v11.super_class = UIGestureDelayedEventComponentDispatcher;
        v9 = v8;
        v10 = objc_msgSendSuper2(&v11, sel_description);
        *buf = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@: Clearing delay on touch %@", buf, 0x16u);
      }
    }

    [v6 setIsDelayed:{0, v11.receiver, v11.super_class}];
    [v6 _setIsFirstTouchForView:0];
    [touch[1] removeObject:a2];
  }
}

- (uint64_t)removeDelayedPress:(uint64_t)result
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      goto LABEL_6;
    }

    v4 = *(a2 + 8);
    if (v4 >= 1)
    {
      *(a2 + 8) = --v4;
    }

    if (!v4)
    {
LABEL_6:
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &removeDelayedPress____s_category);
      if (*CategoryCachedImpl)
      {
        v8 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13.receiver = v3;
          v13.super_class = UIGestureDelayedEventComponentDispatcher;
          v9 = v8;
          v10 = objc_msgSendSuper2(&v13, sel_description);
          if (a2)
          {
            v11 = *(a2 + 24);
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;
          *buf = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v12;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@: Clearing delay on press %@", buf, 0x16u);
        }
      }

      if (a2)
      {
        v6 = *(a2 + 24);
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      [v7 setIsDelayed:0];

      return [v3[3] removeObject:a2];
    }
  }

  return result;
}

- (void)removeDelayedTouchesToSend:(id)send
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sendCopy = send;
  v5 = [sendCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sendCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 24);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        [v11 setIsDelayed:{0, v13}];
        [v11 _setIsFirstTouchForView:0];
        [(NSMutableArray *)self->_delayedTouchesToSend removeObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v12 = [sendCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v12;
    }

    while (v12);
  }
}

- (BOOL)touchesBeganWasDelayedForTouch:(uint64_t)touch
{
  if (!touch)
  {
    return 0;
  }

  v4 = _UIGestureDelayedTouchForUITouch(a2, *(touch + 8));
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _UIGestureDelayedTouchForUITouch(a2, *(touch + 16));
    if (!v5)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (![a2 isDelayed])
  {
    goto LABEL_7;
  }

  v6 = v5[4];
  v7 = [v6 phase] == 0;

LABEL_8:
  return v7;
}

- (BOOL)pressesBeganWasDelayedForPress:(uint64_t)press
{
  if (!press)
  {
    return 0;
  }

  v4 = _UIGestureDelayedTouchForUITouch(a2, *(press + 24));
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _UIGestureDelayedTouchForUITouch(a2, *(press + 32));
    if (!v5)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (![a2 isDelayed])
  {
    goto LABEL_7;
  }

  v6 = v5[4];
  v7 = [v6 phase] == 0;

LABEL_8:
  return v7;
}

uint64_t __62__UIGestureDelayedEventComponentDispatcher_sendDelayedPresses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 timestampForDelivery];
  v5 = v4;
  [a3 timestampForDelivery];
  if (v6 > v5)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)removeTouch:(void *)touch
{
  v20 = *MEMORY[0x1E69E9840];
  if (touch)
  {
    v4 = _UIGestureDelayedTouchForUITouch(a2, touch[2]);
    if (v4)
    {
      do
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &removeTouch____s_category);
        if (*CategoryCachedImpl)
        {
          v8 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            log = v8;
            v9 = objc_opt_class();
            v11 = NSStringFromClass(v9);
            _phaseDescription = [a2 _phaseDescription];
            *buf = 138412802;
            v15 = v11;
            v16 = 2048;
            v17 = a2;
            v18 = 2112;
            v19 = _phaseDescription;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "Cancelling send of touch <%@: %p; phase = %@>", buf, 0x20u);
          }
        }

        v13 = v4;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
        [touch removeDelayedTouchesToSend:v6];

        v7 = _UIGestureDelayedTouchForUITouch(a2, touch[2]);

        v4 = v7;
      }

      while (v7);
    }
  }
}

- (void)removePress:(uint64_t)press
{
  v18 = *MEMORY[0x1E69E9840];
  if (press)
  {
    v4 = _UIGestureDelayedTouchForUITouch(a2, *(press + 32));
    if (v4)
    {
      do
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Gesture", &removePress____s_category);
        if (*CategoryCachedImpl)
        {
          v7 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            log = v7;
            v8 = objc_opt_class();
            v10 = NSStringFromClass(v8);
            _phaseDescription = [a2 _phaseDescription];
            *buf = 138412802;
            v13 = v10;
            v14 = 2048;
            v15 = a2;
            v16 = 2112;
            v17 = _phaseDescription;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "Cancelling send of press <%@: %p; phase = %@>", buf, 0x20u);
          }
        }

        [*(press + 32) removeObject:v4];
        v6 = _UIGestureDelayedTouchForUITouch(a2, *(press + 32));

        v4 = v6;
      }

      while (v6);
    }
  }
}

- (void)cancelDelayedTouches:(void *)touches touches:(void *)a4 fromEvent:
{
  v51 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = [a2 count];
    if (v5 < 1)
    {
      v27 = 0;
      v7 = 0;
    }

    else
    {
      v6 = v5;
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
      v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = a2;
    v8 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v8)
    {
      v9 = *v46;
      do
      {
        v10 = 0;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * v10);
          if (v11)
          {
            v12 = *(v11 + 24);
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          phase = [v13 phase];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedTouches_touches_fromEvent___block_invoke;
          aBlock[3] = &unk_1E70F32F0;
          v43 = v13;
          v44 = phase;
          v15 = v13;
          v16 = _Block_copy(aBlock);
          [v7 addObject:v16];

          if (v11)
          {
            v17 = *(v11 + 32);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          [v15 _loadStateFromTouch:v18];

          [v27 addObject:v15];
          ++v10;
        }

        while (v8 != v10);
        v19 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        v8 = v19;
      }

      while (v19);
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__11;
    v40 = __Block_byref_object_dispose__11;
    v41 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v33 = __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedTouches_touches_fromEvent___block_invoke_12;
    v34 = &unk_1E70F6678;
    v35 = &v36;
    __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedTouches_touches_fromEvent___block_invoke_12(v32, touches);
    v33(v32, v27);
    if ([v37[5] count])
    {
      [a4 _cancelComponents:v37[5]];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v49 count:16];
    if (v21)
    {
      v22 = *v29;
      do
      {
        v23 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v20);
          }

          (*(*(*(&v28 + 1) + 8 * v23++) + 16))();
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v28 objects:v49 count:16];
      }

      while (v21);
    }

    _Block_object_dispose(&v36, 8);
  }
}

void __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedTouches_touches_fromEvent___block_invoke_12(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 _responder];

        if (v9)
        {
          v10 = *(*(*(a1 + 32) + 8) + 40);
          if (!v10)
          {
            v11 = objc_opt_new();
            v12 = *(*(a1 + 32) + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;

            v10 = *(*(*(a1 + 32) + 8) + 40);
          }

          [v10 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)cancelDelayedPresses:(void *)presses presses:(void *)a4 fromEvent:
{
  v51 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = [a2 count];
    if (v5 < 1)
    {
      v27 = 0;
      v7 = 0;
    }

    else
    {
      v6 = v5;
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
      v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = a2;
    v8 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v8)
    {
      v9 = *v46;
      do
      {
        v10 = 0;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * v10);
          if (v11)
          {
            v12 = *(v11 + 24);
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          phase = [v13 phase];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedPresses_presses_fromEvent___block_invoke;
          aBlock[3] = &unk_1E70F32F0;
          v43 = v13;
          v44 = phase;
          v15 = v13;
          v16 = _Block_copy(aBlock);
          [v7 addObject:v16];

          if (v11)
          {
            v17 = *(v11 + 32);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          [v15 _loadStateFromPress:v18];

          [v27 addObject:v15];
          ++v10;
        }

        while (v8 != v10);
        v19 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        v8 = v19;
      }

      while (v19);
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__11;
    v40 = __Block_byref_object_dispose__11;
    v41 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v33 = __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedPresses_presses_fromEvent___block_invoke_2;
    v34 = &unk_1E70F6678;
    v35 = &v36;
    __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedPresses_presses_fromEvent___block_invoke_2(v32, presses);
    v33(v32, v27);
    if ([v37[5] count])
    {
      [a4 _cancelComponents:v37[5]];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v49 count:16];
    if (v21)
    {
      v22 = *v29;
      do
      {
        v23 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v20);
          }

          (*(*(*(&v28 + 1) + 8 * v23++) + 16))();
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v28 objects:v49 count:16];
      }

      while (v21);
    }

    _Block_object_dispose(&v36, 8);
  }
}

void __83__UIGestureDelayedEventComponentDispatcher_cancelDelayedPresses_presses_fromEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 responder];

        if (v9)
        {
          v10 = *(*(*(a1 + 32) + 8) + 40);
          if (!v10)
          {
            v11 = objc_opt_new();
            v12 = *(*(a1 + 32) + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;

            v10 = *(*(*(a1 + 32) + 8) + 40);
          }

          [v10 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

@end