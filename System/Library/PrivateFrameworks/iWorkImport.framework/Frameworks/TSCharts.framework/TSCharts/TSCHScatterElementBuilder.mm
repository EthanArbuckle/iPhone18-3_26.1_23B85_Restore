@interface TSCHScatterElementBuilder
- (unint64_t)countOfHitCheckRegionsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations;
- (void)p_addKnobsForPoint:(CGPoint)point strokedUnitSymbolRect:(CGRect)rect toKnobSet:(id)set symbolsShowing:(BOOL)showing includePoint:(BOOL)includePoint;
- (void)p_addTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count lineType:(int)type;
- (void)p_addZeroToSinglePointWithState:(id *)state toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count lineType:(int)type;
@end

@implementation TSCHScatterElementBuilder

- (void)p_addTopStroke:(id *)stroke toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count lineType:(int)type
{
  if (type)
  {
    v7.receiver = self;
    v7.super_class = TSCHScatterElementBuilder;
    [(TSCHLineAreaScatterElementBuilder *)&v7 p_addTopStroke:stroke toPath:path withPointsArray:array withCount:count lineType:?];
  }
}

- (void)p_addKnobsForPoint:(CGPoint)point strokedUnitSymbolRect:(CGRect)rect toKnobSet:(id)set symbolsShowing:(BOOL)showing includePoint:(BOOL)includePoint
{
  includePointCopy = includePoint;
  y = point.y;
  x = point.x;
  setCopy = set;
  objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v10, x, y, v11);
  if (includePointCopy)
    v12 = {;
    objc_msgSend_addObject_(setCopy, v13, v14, v15, v16, v12);
  }

  else
    v12 = {;
    objc_msgSend_removeObject_(setCopy, v17, v18, v19, v20, v12);
  }
}

- (unint64_t)countOfHitCheckRegionsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations
{
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  if (!groupsCopy)
  {
    v19 = objc_msgSend_model(seriesCopy, v14, v16, v17, v18);
    groupsCopy = objc_msgSend_allGroupsIndexSetForSeries_(v19, v20, v21, v22, v23, seriesCopy);
  }

  v25 = objc_msgSend_needsSeparateHitTestingPaths(self, v14, v16, v17, v18) ^ 1;
  if (!paths)
  {
    LOBYTE(v25) = 1;
  }

  if ((v25 & 1) != 0 || objc_msgSend_count(groupsCopy, v24, v26, v27, v28) <= 1)
  {
    v60.receiver = self;
    v60.super_class = TSCHScatterElementBuilder;
    v33 = [(TSCHLineAreaScatterElementBuilder *)&v60 countOfHitCheckRegionsInSeries:seriesCopy forGroups:groupsCopy forBodyLayout:layoutCopy outNewElementPaths:paths outSelectionKnobLocations:locations];
  }

  else
  {
    if (locations)
    {
      *locations = 0;
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
    pathsCopy = paths;
    v44 = seriesCopy;
    v50 = locations != 0;
    v45 = layoutCopy;
    selfCopy = self;
    v48 = &v51;
    v35 = v34;
    v47 = v35;
    objc_msgSend_enumerateIndexesUsingBlock_(groupsCopy, v36, v37, v38, v39, v43);
    v40 = malloc_type_malloc(v52[7] - v52[6], 0x6004044C4A2DFuLL);
    *paths = v40;
    memcpy(v40, v52[6], v52[7] - v52[6]);
    if (locations)
    {
      v41 = v35;
      *locations = v35;
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

- (void)p_addZeroToSinglePointWithState:(id *)state toPath:(CGPath *)path withPointsArray:(id *)array withCount:(unint64_t)count lineType:(int)type
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
  if (count == 1)
  {
    v7 = state->var2.origin.y + state->var2.size.height + state->var2.size.height * -0.5;
    v8 = state->var2.origin.x + state->var2.size.width * 0.5;
    var1 = array->var1;
    *v19 = *(&array->var2 + 1);
    v10 = *v19;
    *&v19[7] = array->var3;
    *v15 = v10;
    *&v15[7] = *&v19[7];
    v12.x = v8;
    v12.y = v7;
    v13 = var1;
    v14 = 1;
    var0 = array->var0;
    v17 = var1;
    v18 = 1;
  }

  v11.receiver = self;
  v11.super_class = TSCHScatterElementBuilder;
  [TSCHLineAreaScatterElementBuilder p_addTopStroke:sel_p_addTopStroke_toPath_withPointsArray_withCount_lineType_ toPath:? withPointsArray:? withCount:? lineType:?];
}

@end