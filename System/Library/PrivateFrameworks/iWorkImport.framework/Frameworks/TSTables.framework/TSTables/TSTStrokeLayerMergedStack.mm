@interface TSTStrokeLayerMergedStack
+ (id)mergeLeftStrokes:(id)a3 withRightStrokes:(id)a4;
+ (id)mergeTopStrokes:(id)a3 withBottomStrokes:(id)a4;
+ (void)enumerateWidthsInLayers:(void *)a3 usingBlock:(id)a4;
- (TSTStrokeLayerMergedStack)initWithCopyOfMajorStrokes:(id)a3 andMinorStrokes:(id)a4;
- (double)maxWidthOfStrokesInRange:(TSTSimpleRange)a3 cachedMax:(double)a4;
- (double)p_widthOfStrokesAtIndex:(int64_t)a3;
- (id)portalledStrokeLayer;
- (unint64_t)count;
- (vector<TSTStrokeLayer)p_strokeLayerVector;
- (void)invalidateSpillStrokes;
- (void)lockForWrite;
@end

@implementation TSTStrokeLayerMergedStack

- (TSTStrokeLayerMergedStack)initWithCopyOfMajorStrokes:(id)a3 andMinorStrokes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v197.receiver = self;
  v197.super_class = TSTStrokeLayerMergedStack;
  v12 = [(TSTStrokeLayerAbstractStack *)&v197 init];
  if (v12)
  {
    v13 = objc_msgSend_defaultStrokeLayer(v7, v8, v9, v10, v11);
    v18 = objc_msgSend_startingStrokeOrder(v13, v14, v15, v16, v17);
    v23 = objc_msgSend_defaultStrokeLayer(v6, v19, v20, v21, v22);
    v28 = objc_msgSend_startingStrokeOrder(v23, v24, v25, v26, v27);

    if (v18 <= v28)
    {
      v50 = objc_msgSend_defaultStrokeLayer(v7, v29, v30, v31, v32);
      v55 = objc_msgSend_copy(v50, v51, v52, v53, v54);
      defaultMinorStrokeLayer = v12->_defaultMinorStrokeLayer;
      v12->_defaultMinorStrokeLayer = v55;

      objc_msgSend_defaultStrokeLayer(v6, v57, v58, v59, v60);
    }

    else
    {
      v33 = objc_msgSend_defaultStrokeLayer(v6, v29, v30, v31, v32);
      v38 = objc_msgSend_copy(v33, v34, v35, v36, v37);
      v39 = v12->_defaultMinorStrokeLayer;
      v12->_defaultMinorStrokeLayer = v38;

      objc_msgSend_defaultStrokeLayer(v7, v40, v41, v42, v43);
    }
    v44 = ;
    v49 = objc_msgSend_copy(v44, v45, v46, v47, v48);
    defaultMajorStrokeLayer = v12->_defaultMajorStrokeLayer;
    v12->_defaultMajorStrokeLayer = v49;

    v70 = objc_msgSend_customStrokeLayer(v6, v62, v63, v64, v65);
    if (v70 && (objc_msgSend_customStrokeLayer(v7, v66, v67, v68, v69), v71 = objc_claimAutoreleasedReturnValue(), v71, v70, v71))
    {
      v72 = objc_msgSend_customStrokeLayer(v6, v66, v67, v68, v69);
      v77 = objc_msgSend_copy(v72, v73, v74, v75, v76);

      v82 = objc_msgSend_customStrokeLayer(v7, v78, v79, v80, v81);
      customUnorderedStrokeLayer = objc_msgSend_copy(v82, v83, v84, v85, v86);

      v88 = [TSTStrokeOrderedLayer alloc];
      v90 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v88, v89, 0, v77, customUnorderedStrokeLayer);
      customOrderedStrokeLayer = v12->_customOrderedStrokeLayer;
      v12->_customOrderedStrokeLayer = v90;
    }

    else
    {
      v92 = objc_msgSend_customStrokeLayer(v6, v66, v67, v68, v69);

      if (v92)
      {
        v77 = objc_msgSend_customStrokeLayer(v6, v93, v94, v95, v96);
        v101 = objc_msgSend_copy(v77, v97, v98, v99, v100);
      }

      else
      {
        v102 = objc_msgSend_customStrokeLayer(v7, v93, v94, v95, v96);

        if (!v102)
        {
LABEL_14:
          v111 = objc_msgSend_clearedStrokeLayer(v7, v103, v104, v105, v106);
          v116 = objc_msgSend_copy(v111, v112, v113, v114, v115);
          clearedMinorStrokeLayer = v12->_clearedMinorStrokeLayer;
          v12->_clearedMinorStrokeLayer = v116;

          v122 = objc_msgSend_clearedStrokeLayer(v6, v118, v119, v120, v121);
          v127 = objc_msgSend_copy(v122, v123, v124, v125, v126);
          clearedMajorStrokeLayer = v12->_clearedMajorStrokeLayer;
          v12->_clearedMajorStrokeLayer = v127;

          v137 = objc_msgSend_dynamicStrokeLayer(v6, v129, v130, v131, v132);
          if (v137 && (objc_msgSend_dynamicStrokeLayer(v7, v133, v134, v135, v136), v138 = objc_claimAutoreleasedReturnValue(), v138, v137, v138))
          {
            v139 = objc_msgSend_dynamicStrokeLayer(v6, v133, v134, v135, v136);
            v144 = objc_msgSend_copy(v139, v140, v141, v142, v143);

            v149 = objc_msgSend_dynamicStrokeLayer(v7, v145, v146, v147, v148);
            dynamicUnorderedStrokeLayer = objc_msgSend_copy(v149, v150, v151, v152, v153);

            v155 = [TSTStrokeOrderedLayer alloc];
            v157 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v155, v156, 0, v144, dynamicUnorderedStrokeLayer);
            dynamicOrderedStrokeLayer = v12->_dynamicOrderedStrokeLayer;
            v12->_dynamicOrderedStrokeLayer = v157;
          }

          else
          {
            v159 = objc_msgSend_dynamicStrokeLayer(v6, v133, v134, v135, v136);

            if (v159)
            {
              v144 = objc_msgSend_dynamicStrokeLayer(v6, v160, v161, v162, v163);
              v168 = objc_msgSend_copy(v144, v164, v165, v166, v167);
            }

            else
            {
              v169 = objc_msgSend_dynamicStrokeLayer(v7, v160, v161, v162, v163);

              if (!v169)
              {
LABEL_23:
                v178 = objc_msgSend_spillStrokeLayer(v7, v170, v171, v172, v173);
                v183 = objc_msgSend_copy(v178, v179, v180, v181, v182);
                spillMinorStrokeLayer = v12->_spillMinorStrokeLayer;
                v12->_spillMinorStrokeLayer = v183;

                v189 = objc_msgSend_spillStrokeLayer(v6, v185, v186, v187, v188);
                v194 = objc_msgSend_copy(v189, v190, v191, v192, v193);
                spillMajorStrokeLayer = v12->_spillMajorStrokeLayer;
                v12->_spillMajorStrokeLayer = v194;

                goto LABEL_24;
              }

              v144 = objc_msgSend_dynamicStrokeLayer(v7, v170, v171, v172, v173);
              v168 = objc_msgSend_copy(v144, v174, v175, v176, v177);
            }

            dynamicUnorderedStrokeLayer = v12->_dynamicUnorderedStrokeLayer;
            v12->_dynamicUnorderedStrokeLayer = v168;
          }

          goto LABEL_23;
        }

        v77 = objc_msgSend_customStrokeLayer(v7, v103, v104, v105, v106);
        v101 = objc_msgSend_copy(v77, v107, v108, v109, v110);
      }

      customUnorderedStrokeLayer = v12->_customUnorderedStrokeLayer;
      v12->_customUnorderedStrokeLayer = v101;
    }

    goto LABEL_14;
  }

LABEL_24:

  return v12;
}

- (vector<TSTStrokeLayer)p_strokeLayerVector
{
  v3 = self;
  var1 = self[9].var1;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (__PAIR128__(self[9].var2, var1) != 0 || self[10].var0 || self[10].var1 || self[10].var2 || self[11].var0 || self[11].var1 || self[11].var2)
  {
    goto LABEL_8;
  }

  var2 = self[8].var2;
  v7 = self + 9;
  var0 = self[9].var0;
  if (!var2)
  {
    if (!var0)
    {
      goto LABEL_8;
    }

LABEL_36:
    sub_221281314(retstr, v7);
    return self;
  }

  if (!var0)
  {
    v7 = (self + 208);
    goto LABEL_36;
  }

  if (var2 == var0)
  {
    goto LABEL_36;
  }

LABEL_8:
  if (self[8].var2)
  {
    sub_221281314(retstr, &self[8].var2);
  }

  if (v3[9].var0)
  {
    sub_221281314(retstr, &v3[9].var0);
  }

  if (v3[9].var1)
  {
    sub_221281314(retstr, &v3[9].var1);
  }

  if (v3[9].var2)
  {
    v9 = v3[9].var2;
    sub_221281314(retstr, &v9);
  }

  if (v3[10].var0)
  {
    v9 = v3[10].var0;
    sub_221281314(retstr, &v9);
  }

  if (v3[10].var1)
  {
    v9 = v3[10].var1;
    sub_221281314(retstr, &v9);
  }

  if (v3[10].var2)
  {
    v9 = v3[10].var2;
    sub_221281314(retstr, &v9);
  }

  if (v3[11].var0)
  {
    v9 = v3[11].var0;
    sub_221281314(retstr, &v9);
  }

  if (v3[11].var1)
  {
    v9 = v3[11].var1;
    sub_221281314(retstr, &v9);
  }

  if (v3[11].var2)
  {
    v9 = v3[11].var2;
    sub_221281314(retstr, &v9);
  }

  return self;
}

- (unint64_t)count
{
  v6 = objc_msgSend_defaultMinorStrokeLayer(self, a2, v2, v3, v4);
  v11 = objc_msgSend_defaultMajorStrokeLayer(self, v7, v8, v9, v10);
  v16 = objc_msgSend_customUnorderedStrokeLayer(self, v12, v13, v14, v15);
  v21 = objc_msgSend_customOrderedStrokeLayer(self, v17, v18, v19, v20);
  v26 = objc_msgSend_clearedMinorStrokeLayer(self, v22, v23, v24, v25);
  v31 = objc_msgSend_clearedMajorStrokeLayer(self, v27, v28, v29, v30);
  v36 = objc_msgSend_dynamicUnorderedStrokeLayer(self, v32, v33, v34, v35);
  v41 = objc_msgSend_dynamicOrderedStrokeLayer(self, v37, v38, v39, v40);
  v46 = objc_msgSend_spillMinorStrokeLayer(self, v42, v43, v44, v45);
  v51 = objc_msgSend_spillMajorStrokeLayer(self, v47, v48, v49, v50);
  v52 = v11 != 0;
  if (v6)
  {
    ++v52;
  }

  if (v16)
  {
    ++v52;
  }

  if (v21)
  {
    ++v52;
  }

  if (v26)
  {
    ++v52;
  }

  if (v31)
  {
    ++v52;
  }

  if (v36)
  {
    ++v52;
  }

  if (v41)
  {
    ++v52;
  }

  if (v46)
  {
    ++v52;
  }

  if (v51)
  {
    v53 = v52 + 1;
  }

  else
  {
    v53 = v52;
  }

  return v53;
}

- (id)portalledStrokeLayer
{
  v6 = objc_msgSend_defaultMajorStrokeLayer(self, a2, v2, v3, v4);

  if (v6)
  {
    objc_msgSend_defaultMajorStrokeLayer(self, v7, v8, v9, v10);
  }

  else
  {
    objc_msgSend_defaultMinorStrokeLayer(self, v7, v8, v9, v10);
  }
  v11 = ;

  return v11;
}

- (void)invalidateSpillStrokes
{
  objc_msgSend_setSpillMinorStrokeLayer_(self, a2, 0, v2, v3);

  MEMORY[0x2821F9670](self, sel_setSpillMajorStrokeLayer_, 0, v5, v6);
}

+ (id)mergeTopStrokes:(id)a3 withBottomStrokes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [TSTStrokeLayerMergedStack alloc];
  v10 = objc_msgSend_initWithCopyOfMajorStrokes_andMinorStrokes_(v7, v8, v5, v6, v9);
  objc_msgSend_lockForRead(v10, v11, v12, v13, v14);

  return v10;
}

+ (id)mergeLeftStrokes:(id)a3 withRightStrokes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [TSTStrokeLayerMergedStack alloc];
  v10 = objc_msgSend_initWithCopyOfMajorStrokes_andMinorStrokes_(v7, v8, v5, v6, v9);
  objc_msgSend_lockForRead(v10, v11, v12, v13, v14);

  return v10;
}

- (double)maxWidthOfStrokesInRange:(TSTSimpleRange)a3 cachedMax:(double)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2213847C4;
  v6[3] = &unk_2784638E8;
  v6[4] = &v7;
  *&v6[5] = a4;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, a2, a3.origin, a3.length, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (double)p_widthOfStrokesAtIndex:(int64_t)a3
{
  v3 = a3 != 0x7FFFFFFFFFFFFFFELL;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a3 == 0x7FFFFFFFFFFFFFFELL)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = a3 - 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221384954;
  v7[3] = &unk_278463910;
  v7[4] = &v8;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, a2, v4, 2 * v3, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

+ (void)enumerateWidthsInLayers:(void *)a3 usingBlock:(id)a4
{
  v56 = a4;
  v64[0] = 0;
  v10 = *a3;
  v9 = *(a3 + 1);
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = v9 - *a3;
  if (v9 != *a3)
  {
    do
    {
      v13 = objc_msgSend_startingIndex(*v10, v5, v6, v7, v8);
      if (v13 < v11)
      {
        v11 = v13;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  v14 = v12 >> 3;
  sub_2213850A8(v63, v14);
  *&v59 = 0x7FFFFFFFFFFFFFFFLL;
  v55 = v14;
  sub_2213851E0(__p, v14);
  if ((v64[0] & 1) == 0 && v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v11 & ~(v11 >> 63);
    v16 = (*(a3 + 1) - *a3) >> 3;
    while (1)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v18 = v16 - 1;
        v19 = *(*a3 + 8 * (v16 - 1));
        if (!v19)
        {
          goto LABEL_24;
        }

        v20 = v63[0];
        v21 = v63[0] + 40 * v18;
        v22 = *(v21 + 4);
        v23 = *(v21 + 1);
        v59 = *v21;
        i = v23;
        v61 = v22;
        if (sub_2213FC604(&v59))
        {
          v27 = *v21;
          v28 = *(v21 + 1);
          v61 = *(v21 + 4);
          v59 = v27;
          for (i = v28; sub_2213FC604(&v59); i = v38)
          {
            if (*(v21 + 2) + *(v21 + 1) > v15)
            {
              break;
            }

            v32 = *v21;
            v33 = *(v21 + 1);
            v58 = *(v21 + 4);
            v57[0] = v32;
            v57[1] = v33;
            objc_msgSend_nextWidthAndRange_(v19, v29, v57, v30, v31);
            v20 = v63[0];
            v21 = v63[0] + 40 * v18;
            v34 = v61;
            v35 = v59;
            v36 = i;
            *(v21 + 4) = v61;
            *v21 = v35;
            *(v21 + 1) = v36;
            v37 = *v21;
            v38 = *(v21 + 1);
            v61 = v34;
            v59 = v37;
          }
        }

        else
        {
          objc_msgSend_findWidthAndRangeAtIndex_(v19, v24, v15, v25, v26);
          v20 = v63[0];
          v39 = v63[0] + 40 * v18;
          v40 = v59;
          v41 = i;
          *(v39 + 4) = v61;
          *v39 = v40;
          *(v39 + 1) = v41;
        }

        v42 = &v20[40 * v18];
        v43 = *v42;
        v44 = *(v42 + 1);
        v61 = *(v42 + 4);
        v59 = v43;
        i = v44;
        if (!sub_2213FC604(&v59))
        {
          *(*a3 + 8 * v18) = 0;
          *(__p[0] + v18) = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_24;
        }

        v46 = *(v42 + 1);
        v47 = *(v42 + 2);
        if (v47)
        {
          if (v46 <= v15)
          {
            v48 = v47 + v46;
            if (v48 - 1 >= v15)
            {
              break;
            }
          }
        }

        *(__p[0] + v18) = v46;
        if (v17 >= v46)
        {
          v17 = v46;
        }

LABEL_24:
        if (v16 <= 1)
        {
          v64[0] = 1;
          goto LABEL_45;
        }

        --v16;
        if (v64[0])
        {
          goto LABEL_45;
        }
      }

      if (v17 >= v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = v17;
      }

      v50 = v15 & ~(v15 >> 63);
      v51 = v49 - v50;
      if (v49 < v50)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
        v51 = 0;
      }

      v52 = v49 == v15;
      if (v49 == v15)
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v50;
      }

      if (v52)
      {
        v54 = 0;
      }

      else
      {
        v54 = v51;
      }

      if (v42[24] == 1)
      {
        objc_msgSend_enumerateWidthsInRange_usingBlock_(**a3, v45, v53, v54, v56);
      }

      else
      {
        v56[2](v56, v53, v54, v64, *v42);
      }

      if ((v64[0] & 1) == 0)
      {
        v15 = v54 + v53;
        v16 = v55;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_45:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }
}

- (void)lockForWrite
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayerMergedStack lockForWrite]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 1112, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s: %s", v18, v19, "Do not call method", "[TSTStrokeLayerMergedStack lockForWrite]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, v16, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

@end