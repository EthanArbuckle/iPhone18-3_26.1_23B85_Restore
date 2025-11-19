@interface TSCHScatterElementBuilder
- (unint64_t)countOfHitCheckRegionsInSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewElementPaths:(const CGPath *)a6 outSelectionKnobLocations:(id *)a7;
- (void)p_addKnobsForPoint:(CGPoint)a3 strokedUnitSymbolRect:(CGRect)a4 toKnobSet:(id)a5 symbolsShowing:(BOOL)a6 includePoint:(BOOL)a7;
- (void)p_addTopStroke:(id *)a3 toPath:(CGPath *)a4 withPointsArray:(id *)a5 withCount:(unint64_t)a6 lineType:(int)a7;
- (void)p_addZeroToSinglePointWithState:(id *)a3 toPath:(CGPath *)a4 withPointsArray:(id *)a5 withCount:(unint64_t)a6 lineType:(int)a7;
@end

@implementation TSCHScatterElementBuilder

- (void)p_addTopStroke:(id *)a3 toPath:(CGPath *)a4 withPointsArray:(id *)a5 withCount:(unint64_t)a6 lineType:(int)a7
{
  if (a7)
  {
    v7.receiver = self;
    v7.super_class = TSCHScatterElementBuilder;
    [(TSCHLineAreaScatterElementBuilder *)&v7 p_addTopStroke:a3 toPath:a4 withPointsArray:a5 withCount:a6 lineType:?];
  }
}

- (void)p_addKnobsForPoint:(CGPoint)a3 strokedUnitSymbolRect:(CGRect)a4 toKnobSet:(id)a5 symbolsShowing:(BOOL)a6 includePoint:(BOOL)a7
{
  v7 = a7;
  y = a3.y;
  x = a3.x;
  v21 = a5;
  objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v10, x, y, v11);
  if (v7)
    v12 = {;
    objc_msgSend_addObject_(v21, v13, v14, v15, v16, v12);
  }

  else
    v12 = {;
    objc_msgSend_removeObject_(v21, v17, v18, v19, v20, v12);
  }
}

- (unint64_t)countOfHitCheckRegionsInSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewElementPaths:(const CGPath *)a6 outSelectionKnobLocations:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v15 = a5;
  if (!v13)
  {
    v19 = objc_msgSend_model(v12, v14, v16, v17, v18);
    v13 = objc_msgSend_allGroupsIndexSetForSeries_(v19, v20, v21, v22, v23, v12);
  }

  v25 = objc_msgSend_needsSeparateHitTestingPaths(self, v14, v16, v17, v18) ^ 1;
  if (!a6)
  {
    LOBYTE(v25) = 1;
  }

  if ((v25 & 1) != 0 || objc_msgSend_count(v13, v24, v26, v27, v28) <= 1)
  {
    v60.receiver = self;
    v60.super_class = TSCHScatterElementBuilder;
    v33 = [(TSCHLineAreaScatterElementBuilder *)&v60 countOfHitCheckRegionsInSeries:v12 forGroups:v13 forBodyLayout:v15 outNewElementPaths:a6 outSelectionKnobLocations:a7];
  }

  else
  {
    if (a7)
    {
      *a7 = 0;
      v34 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31, v32);
    }

    else
    {
      v34 = 0;
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x4812000000;
    v54 = sub_2763410CC;
    v55 = sub_2763410F0;
    v56 = &unk_27657B92B;
    v58 = 0;
    v59 = 0;
    __p = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_276341108;
    v43[3] = &unk_27A6B9C90;
    v49 = a6;
    v44 = v12;
    v50 = a7 != 0;
    v45 = v15;
    v46 = self;
    v48 = &v51;
    v35 = v34;
    v47 = v35;
    objc_msgSend_enumerateIndexesUsingBlock_(v13, v36, v37, v38, v39, v43);
    v40 = malloc_type_malloc(v52[7] - v52[6], 0x6004044C4A2DFuLL);
    *a6 = v40;
    memcpy(v40, v52[6], v52[7] - v52[6]);
    if (a7)
    {
      v41 = v35;
      *a7 = v35;
    }

    v33 = (v52[7] - v52[6]) >> 3;

    _Block_object_dispose(&v51, 8);
    if (__p)
    {
      v58 = __p;
      operator delete(__p);
    }
  }

  return v33;
}

- (void)p_addZeroToSinglePointWithState:(id *)a3 toPath:(CGPath *)a4 withPointsArray:(id *)a5 withCount:(unint64_t)a6 lineType:(int)a7
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CBF348];
  v13 = 0.0;
  v14 = 0;
  *&v15[7] = 0x7FFFFFFFFFFFFFFFLL;
  var0 = v12;
  v17 = 0.0;
  v18 = 0;
  *&v19[7] = 0x7FFFFFFFFFFFFFFFLL;
  if (a6 == 1)
  {
    v7 = a3->var2.origin.y + a3->var2.size.height + a3->var2.size.height * -0.5;
    v8 = a3->var2.origin.x + a3->var2.size.width * 0.5;
    var1 = a5->var1;
    *v19 = *(&a5->var2 + 1);
    v10 = *v19;
    *&v19[7] = a5->var3;
    *v15 = v10;
    *&v15[7] = *&v19[7];
    v12.x = v8;
    v12.y = v7;
    v13 = var1;
    v14 = 1;
    var0 = a5->var0;
    v17 = var1;
    v18 = 1;
  }

  v11.receiver = self;
  v11.super_class = TSCHScatterElementBuilder;
  [TSCHLineAreaScatterElementBuilder p_addTopStroke:sel_p_addTopStroke_toPath_withPointsArray_withCount_lineType_ toPath:? withPointsArray:? withCount:? lineType:?];
}

@end