@interface TSTStrokeLayerAbstractStack
- (TSTStrokeLayerAbstractStack)init;
- (id)lookupStrokeAtIndex:(int64_t)a3;
- (id)mutableStrokeLayerWithContext:(id)a3 subtractingDefaultsFrom:(id)a4 forRange:(TSTSimpleRange)a5;
- (unint64_t)count;
- (vector<TSTStrokeLayer)p_strokeLayerVector;
- (void)dealloc;
- (void)enumerateStrokesAndCapsFrom:(unsigned int)a3 to:(unsigned int)a4 usingBlock:(id)a5;
- (void)enumerateStrokesAndCapsInRange:(TSTSimpleRange)a3 usingBlock:(id)a4;
- (void)enumerateStrokesFrom:(unsigned int)a3 to:(unsigned int)a4 usingBlock:(id)a5;
- (void)enumerateStrokesInRange:(TSTSimpleRange)a3 usingBlock:(id)a4;
- (void)enumerateWidthsInRange:(TSTSimpleRange)a3 usingBlock:(id)a4;
@end

@implementation TSTStrokeLayerAbstractStack

- (TSTStrokeLayerAbstractStack)init
{
  v5.receiver = self;
  v5.super_class = TSTStrokeLayerAbstractStack;
  v2 = [(TSTStrokeLayerAbstractStack *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->mRWLock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->mRWLock);
  v3.receiver = self;
  v3.super_class = TSTStrokeLayerAbstractStack;
  [(TSTStrokeLayerAbstractStack *)&v3 dealloc];
}

- (vector<TSTStrokeLayer)p_strokeLayerVector
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTStrokeLayerAbstractStack p_strokeLayerVector]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 121, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v17 = *MEMORY[0x277CBE658];
  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s: %s", v19, v20, "Do not call method", "[TSTStrokeLayerAbstractStack p_strokeLayerVector]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v22, v17, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (unint64_t)count
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayerAbstractStack count]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 127, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s: %s", v18, v19, "Do not call method", "[TSTStrokeLayerAbstractStack count]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, v16, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (id)lookupStrokeAtIndex:(int64_t)a3
{
  objc_msgSend_p_strokeLayerVector(self, a2, a3, v3, v4);
  if (v32 == __p || (v9 = v32 - __p, v10 = v9 - 1, v9 < 1))
  {
    v11 = 0;
    goto LABEL_16;
  }

  v11 = 0;
  while (1)
  {
    v12 = objc_msgSend_findStrokeAndRangeAtIndex_(__p[v10], v6, a3, v7, v8);
    v17 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    v18 = objc_msgSend_range(v12, v13, v14, v15, v16);
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v23 = v19 && v18 <= a3;
    if (!v23 || &v19[v18 - 1] < a3)
    {
      goto LABEL_10;
    }

    v25 = objc_msgSend_stroke(v17, v19, v20, v21, v22);

    if ((objc_msgSend_isPortalStroke(v25, v26, v27, v28, v29) & 1) == 0)
    {
      break;
    }

    v11 = v25;
LABEL_10:

    v24 = v10-- + 1;
    if (v24 <= 1)
    {
      goto LABEL_16;
    }
  }

  v11 = v25;
LABEL_16:
  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

- (void)enumerateStrokesFrom:(unsigned int)a3 to:(unsigned int)a4 usingBlock:(id)a5
{
  v9 = a5;
  v10 = a3 - a4;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 >= a3)
  {
    v10 = 0;
  }

  else
  {
    v11 = a4;
  }

  if (a3 < a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  if (a3 < a4)
  {
    v13 = a4 - a3;
  }

  else
  {
    v13 = v10;
  }

  v14 = v9;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, v8, v12, v13, v9);
}

- (void)enumerateStrokesInRange:(TSTSimpleRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  origin = a3.origin;
  v76 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v73 = 0;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  objc_msgSend_p_strokeLayerVector(self, v7, v8, v9, v10);
  v15 = (v72 - __p) >> 3;
  if (v15 < 1)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    v21 = (v72 - __p) >> 3;
    if (origin <= v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = origin;
    }

    v69 = origin + length;
    while (1)
    {
      if (v22 >= v69)
      {
        goto LABEL_57;
      }

      v23 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v24 = v21 - 1;
        v25 = __p[v21 - 1];
        if (!v25)
        {
          goto LABEL_33;
        }

        v26 = *(v74 + v24);
        if (v26)
        {
          while (1)
          {
            v27 = objc_msgSend_range(v26, v11, v12, v13, v14);
            if (&v11[v27] > v22)
            {
              break;
            }

            v28 = objc_msgSend_nextStrokeAndRange_(v25, v11, *(v74 + v24), v13, v14);
            v29 = *(v74 + v24);
            *(v74 + v24) = v28;

            v26 = *(v74 + v24);
            if (!v26)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v30 = objc_msgSend_findStrokeAndRangeAtIndex_(__p[v21 - 1], v11, v22, v13, v14);
          v31 = *(v74 + v24);
          *(v74 + v24) = v30;
        }

        v32 = *(v74 + v24);
        if (!v32)
        {
LABEL_32:
          __p[v24] = 0;
          goto LABEL_33;
        }

        v33 = objc_msgSend_range(v32, v11, v12, v13, v14);
        v38 = v34 && v33 <= v22;
        if (v38 && &v34[v33 - 1] >= v22)
        {
          break;
        }

        v39 = objc_msgSend_range(*(v74 + v24), v34, v35, v36, v37);
        if (v23 >= v39)
        {
          v23 = v39;
        }

LABEL_33:
        if (v21 <= 1)
        {
          v73 = 1;
          goto LABEL_57;
        }

        --v21;
        if (v73)
        {
          goto LABEL_57;
        }
      }

      v40 = objc_msgSend_range(*(v74 + v24), v34, v35, v36, v37);
      v45 = &v41[v40];
      if (v23 < &v41[v40])
      {
        v45 = v23;
      }

      v46 = 0x7FFFFFFFFFFFFFFFLL;
      if (length)
      {
        v47 = 0;
        if (origin != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v22 <= origin)
          {
            v48 = origin;
          }

          else
          {
            v48 = v22;
          }

          v49 = origin + length;
          if (v45 < v69)
          {
            v49 = v45;
          }

          v38 = v49 < v48;
          v50 = v49 - v48;
          if (v38)
          {
            v48 = 0x7FFFFFFFFFFFFFFFLL;
            v50 = 0;
          }

          if (v45 == v22)
          {
            v47 = 0;
          }

          else
          {
            v46 = v48;
            v47 = v50;
          }
        }
      }

      else
      {
        v47 = 0;
      }

      v51 = objc_msgSend_stroke(*(v74 + v24), v41, v42, v43, v44);
      isPortalStroke = objc_msgSend_isPortalStroke(v51, v52, v53, v54, v55);

      if (isPortalStroke)
      {
        v61 = objc_msgSend_portalledStrokeLayer(self, v57, v58, v59, v60);
        objc_msgSend_enumerateStrokesInRange_usingBlock_(v61, v62, v46, v47, v6);
      }

      else
      {
        v61 = objc_msgSend_stroke(*(v74 + v24), v57, v58, v59, v60);
        v67 = objc_msgSend_order(*(v74 + v24), v63, v64, v65, v66);
        v6[2](v6, v61, v46, v47, v67, &v73);
      }

      v22 = v47 + v46;
      v21 = (v72 - __p) >> 3;
      if (v73)
      {
        goto LABEL_57;
      }
    }
  }

  v16 = 0;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v18 = __p[v16];
    v19 = *(v74 + v16);
    *(v74 + v16) = 0;

    if (v18)
    {
      v20 = objc_msgSend_startingIndex(v18, v11, v12, v13, v14);
      if (v20 < v17)
      {
        v17 = v20;
      }
    }

    ++v16;
  }

  while (v15 != v16);
  if ((v73 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_57:
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 64; i != -8; i -= 8)
  {
  }
}

- (void)enumerateWidthsInRange:(TSTSimpleRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  origin = a3.origin;
  v68[45] = *MEMORY[0x277D85DE8];
  v59 = a4;
  v67 = 0;
  v56 = self;
  objc_msgSend_p_strokeLayerVector(self, v6, v7, v8, v9);
  v14 = (v66 - __p) >> 3;
  if (v14 < 1)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    v20 = (v66 - __p) >> 3;
    if (origin <= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = origin;
    }

    v57 = origin + length;
    while (1)
    {
      if (v21 >= v57)
      {
        goto LABEL_56;
      }

      v22 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v23 = v20 - 1;
        v24 = *(__p + v20 - 1);
        if (!v24)
        {
          goto LABEL_31;
        }

        v25 = &v68[5 * v23];
        v26 = *(v25 + 1);
        v62 = *v25;
        v63 = v26;
        i = v25[4];
        if (sub_2213FC604(&v62))
        {
          v30 = *(v25 + 1);
          v62 = *v25;
          v63 = v30;
          for (i = v25[4]; sub_2213FC604(&v62); i = v36)
          {
            if (v25[2] + v25[1] > v21)
            {
              break;
            }

            v34 = *(v25 + 1);
            v60[0] = *v25;
            v60[1] = v34;
            v61 = v25[4];
            objc_msgSend_nextWidthAndRange_(v24, v31, v60, v32, v33);
            v35 = v63;
            *v25 = v62;
            *(v25 + 1) = v35;
            v36 = i;
            v25[4] = i;
            v37 = *(v25 + 1);
            v62 = *v25;
            v63 = v37;
          }
        }

        else
        {
          objc_msgSend_findWidthAndRangeAtIndex_(v24, v27, v21, v28, v29);
          v38 = v63;
          *v25 = v62;
          *(v25 + 1) = v38;
          v25[4] = i;
        }

        v39 = *(v25 + 1);
        v62 = *v25;
        v63 = v39;
        i = v25[4];
        if (!sub_2213FC604(&v62))
        {
          *(__p + v23) = 0;
          goto LABEL_31;
        }

        v44 = v25[1];
        v45 = v25[2];
        if (v45)
        {
          if (v44 <= v21)
          {
            v46 = v45 + v44;
            if (v46 - 1 >= v21)
            {
              break;
            }
          }
        }

        if (v22 >= v44)
        {
          v22 = v25[1];
        }

LABEL_31:
        if (v20 <= 1)
        {
          v67 = 1;
          goto LABEL_56;
        }

        --v20;
        if (v67)
        {
          goto LABEL_56;
        }
      }

      if (v22 >= v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = v22;
      }

      v48 = 0x7FFFFFFFFFFFFFFFLL;
      if (length)
      {
        v49 = 0;
        if (origin != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v21 <= origin)
          {
            v50 = origin;
          }

          else
          {
            v50 = v21;
          }

          v51 = origin + length;
          if (v47 < v57)
          {
            v51 = v47;
          }

          v52 = v51 < v50;
          v53 = v51 - v50;
          if (v52)
          {
            v50 = 0x7FFFFFFFFFFFFFFFLL;
            v53 = 0;
          }

          if (v47 == v21)
          {
            v49 = 0;
          }

          else
          {
            v48 = v50;
            v49 = v53;
          }
        }
      }

      else
      {
        v49 = 0;
      }

      if (*(v25 + 24) == 1)
      {
        v54 = objc_msgSend_portalledStrokeLayer(v56, v40, v41, v42, v43);
        objc_msgSend_enumerateWidthsInRange_usingBlock_(v54, v55, v48, v49, v59);
      }

      else
      {
        v59[2](v59, v48, v49, &v67, *v25);
      }

      v21 = v49 + v48;
      v20 = v14;
      if (v67)
      {
        goto LABEL_56;
      }
    }
  }

  v15 = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = v68;
  do
  {
    v18 = *(__p + v15);
    *v17 = xmmword_2217E1B70;
    *(v17 + 1) = xmmword_2217E1B80;
    v17[4] = 0x7FFFFFFFFFFFFFFFLL;
    if (v18)
    {
      v19 = objc_msgSend_startingIndex(v18, v10, v11, v12, v13);
      if (v19 < v16)
      {
        v16 = v19;
      }
    }

    ++v15;
    v17 += 5;
  }

  while (v14 != v15);
  if ((v67 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_56:
  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }
}

- (void)enumerateStrokesAndCapsFrom:(unsigned int)a3 to:(unsigned int)a4 usingBlock:(id)a5
{
  v9 = a5;
  v10 = a3 - a4;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 >= a3)
  {
    v10 = 0;
  }

  else
  {
    v11 = a4;
  }

  if (a3 < a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  if (a3 < a4)
  {
    v13 = a4 - a3;
  }

  else
  {
    v13 = v10;
  }

  v14 = v9;
  objc_msgSend_enumerateStrokesAndCapsInRange_usingBlock_(self, v8, v12, v13, v9);
}

- (void)enumerateStrokesAndCapsInRange:(TSTSimpleRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  origin = a3.origin;
  v7 = a4;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_2213828C8;
  v62 = sub_2213828D8;
  v63 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v57[3] = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x4012000000;
  v53 = sub_2213828E0;
  v54 = nullsub_56;
  v55 = &unk_22188E88F;
  v56 = xmmword_2217E1880;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v8 = origin + length;
  if ((origin + length) >= origin)
  {
    v9 = origin + length;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v49 = 0;
  v10 = origin - 1;
  if (origin < 1)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10 + length;
    if ((v10 + length) <= v10)
    {
      v11 = origin - 1;
    }

    v12 = v11 - origin + 2;
    if (origin == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = 1;
    }

    else
    {
      length = v12;
    }

    --origin;
  }

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (origin == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = 1;
      origin = v8;
    }

    else
    {
      v13 = length + origin - 1;
      if (origin > v9 || !length || v13 < v9)
      {
        if (origin >= v9)
        {
          origin = v9;
        }

        if (v13 <= v9)
        {
          v13 = v9;
        }

        length = v13 - origin + 1;
      }
    }
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2213828F0;
  v38[3] = &unk_278463870;
  v40 = v57;
  v41 = &v64;
  v42 = &v58;
  v43 = &v50;
  v44 = &v46;
  v45 = v10;
  v14 = v7;
  v39 = v14;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, v15, origin, length, v38);
  if (*(v65 + 24) == 1)
  {
    v37 = 0;
    v20 = v51[6];
    if (v20 != v9)
    {
      if (v20 <= v9 && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = v51[7];
        if (v21)
        {
          v22 = v21 - 1;
          if (v22 + v20 >= v9)
          {
            v51[7] = v22;
          }
        }
      }

      if (objc_msgSend_isPortalStroke(v59[5], v16, v17, v18, v19))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTStrokeLayerAbstractStack enumerateStrokesAndCapsInRange:usingBlock:]", v24, v25);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v29, v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 450, 0, "should never see portal strokes here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
      }

      (*(v14 + 2))(v14, v59[5], v51[6], v51[7], *(v47 + 6), 1, &v37);
    }
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
}

- (id)mutableStrokeLayerWithContext:(id)a3 subtractingDefaultsFrom:(id)a4 forRange:(TSTSimpleRange)a5
{
  length = a5.length;
  origin = a5.origin;
  v9 = a3;
  v10 = a4;
  v11 = [TSTMutableStrokeLayer alloc];
  v15 = objc_msgSend_initWithContext_(v11, v12, v9, v13, v14);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_221382CF4;
  v22[3] = &unk_2784638C0;
  v25 = origin;
  v26 = length;
  v16 = v10;
  v23 = v16;
  v17 = v15;
  v24 = v17;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, v18, origin, length, v22);
  v19 = v24;
  v20 = v17;

  return v17;
}

@end