@interface TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds
+ (id)boundsWithLabelType:(int)type knobsMode:(int)mode;
- (BOOL)p_hasExtentPointsForBounds:(id)bounds returningMinPoint:(CGPoint *)point maxPoint:(CGPoint *)maxPoint;
- (CGPoint)p_maxPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint;
- (CGPoint)p_minPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint;
- (TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds)initWithLabelType:(int)type knobsMode:(int)mode;
- (void)addBounds:(CGRect)bounds;
- (void)addNewBoundsArray;
- (void)mergeBoundsIntoProjectedPoints:(id)points;
@end

@implementation TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds

+ (id)boundsWithLabelType:(int)type knobsMode:(int)mode
{
  v4 = *&mode;
  v5 = *&type;
  v6 = [self alloc];
  v11 = objc_msgSend_initWithLabelType_knobsMode_(v6, v7, v8, v9, v10, v5, v4);

  return v11;
}

- (TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds)initWithLabelType:(int)type knobsMode:(int)mode
{
  v11.receiver = self;
  v11.super_class = TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds;
  v6 = [(TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_labelType = type;
    v6->_knobsMode = mode;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labelsBounds = v7->_labelsBounds;
    v7->_labelsBounds = v8;
  }

  return v7;
}

- (void)addNewBoundsArray
{
  labelsBounds = self->_labelsBounds;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  objc_msgSend_addObject_(labelsBounds, v6, v7, v8, v9);
}

- (void)addBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v31 = objc_msgSend_lastObject(self->_labelsBounds, a2, bounds.origin.x, bounds.origin.y, bounds.size.width);
  if (!v31)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds addBounds:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 365, 0, "invalid nil value for '%{public}s'", "current");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v7, x, y, width, height);
  objc_msgSend_addObject_(v31, v27, v28, v29, v30, v26);
}

- (CGPoint)p_minPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint
{
  y = otherPoint.y;
  x = otherPoint.x;
  v6 = point.y;
  v7 = point.x;
  isHorizontal = objc_msgSend_p_isHorizontal(self, a2, point.x, point.y, otherPoint.x);
  if (v7 >= x)
  {
    v9 = y;
  }

  else
  {
    v9 = v6;
  }

  if (v7 >= x)
  {
    v10 = x;
  }

  else
  {
    v10 = v7;
  }

  if (v6 >= y)
  {
    v11 = y;
  }

  else
  {
    v11 = v6;
  }

  if (v6 >= y)
  {
    v12 = x;
  }

  else
  {
    v12 = v7;
  }

  if (isHorizontal)
  {
    v11 = v9;
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  result.y = v11;
  result.x = v13;
  return result;
}

- (CGPoint)p_maxPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint
{
  y = otherPoint.y;
  x = otherPoint.x;
  v6 = point.y;
  v7 = point.x;
  isHorizontal = objc_msgSend_p_isHorizontal(self, a2, point.x, point.y, otherPoint.x);
  if (v7 <= x)
  {
    v9 = y;
  }

  else
  {
    v9 = v6;
  }

  if (v7 <= x)
  {
    v10 = x;
  }

  else
  {
    v10 = v7;
  }

  if (v6 <= y)
  {
    v11 = y;
  }

  else
  {
    v11 = v6;
  }

  if (v6 <= y)
  {
    v12 = x;
  }

  else
  {
    v12 = v7;
  }

  if (isHorizontal)
  {
    v11 = v9;
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  result.y = v11;
  result.x = v13;
  return result;
}

- (BOOL)p_hasExtentPointsForBounds:(id)bounds returningMinPoint:(CGPoint *)point maxPoint:(CGPoint *)maxPoint
{
  v141 = *MEMORY[0x277D85DE8];
  boundsCopy = bounds;
  if (objc_msgSend_count(boundsCopy, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12, v13, v14);
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    obj = boundsCopy;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v17, v18, v19, &v135, v140, 16);
    pointCopy = point;
    if (v21)
    {
      v25 = *v136;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v136 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v135 + 1) + 8 * i);
          objc_msgSend_CGRectValue(v27, v20, v22, v23, v24);
          x = v142.origin.x;
          y = v142.origin.y;
          width = v142.size.width;
          height = v142.size.height;
          if (CGRectIsNull(v142))
          {
            v36 = MEMORY[0x277D81150];
            v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCH3DGetSelectionKnobsPositionsPipelineMergeLabelBounds p_hasExtentPointsForBounds:returningMinPoint:maxPoint:]");
            v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 394, 0, "invalid null rect added to label bounds for merging %@ %@", v27, obj);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
          }

          isHorizontal = objc_msgSend_p_isHorizontal(self, v32, v33, v34, v35);
          v52 = MEMORY[0x277CCAE60];
          v53 = x;
          v54 = y;
          v55 = width;
          v56 = height;
          if (isHorizontal)
          {
            MinX = CGRectGetMinX(*&v53);
            v143.origin.x = x;
            v143.origin.y = y;
            v143.size.width = width;
            v143.size.height = height;
            MidY = CGRectGetMidY(v143);
            v61 = objc_msgSend_valueWithCGPoint_(v52, v59, MinX, MidY, v60);
            objc_msgSend_addObject_(v15, v62, v63, v64, v65, v61);

            v66 = MEMORY[0x277CCAE60];
            v144.origin.x = x;
            v144.origin.y = y;
            v144.size.width = width;
            v144.size.height = height;
            MaxX = CGRectGetMaxX(v144);
            v145.origin.x = x;
            v145.origin.y = y;
            v145.size.width = width;
            v145.size.height = height;
            MaxY = CGRectGetMidY(v145);
          }

          else
          {
            MidX = CGRectGetMidX(*&v53);
            v146.origin.x = x;
            v146.origin.y = y;
            v146.size.width = width;
            v146.size.height = height;
            MinY = CGRectGetMinY(v146);
            v80 = objc_msgSend_valueWithCGPoint_(v52, v78, MidX, MinY, v79);
            objc_msgSend_addObject_(v15, v81, v82, v83, v84, v80);

            v66 = MEMORY[0x277CCAE60];
            v147.origin.x = x;
            v147.origin.y = y;
            v147.size.width = width;
            v147.size.height = height;
            MaxX = CGRectGetMidX(v147);
            v148.origin.x = x;
            v148.origin.y = y;
            v148.size.width = width;
            v148.size.height = height;
            MaxY = CGRectGetMaxY(v148);
          }

          v71 = objc_msgSend_valueWithCGPoint_(v66, v68, MaxX, MaxY, v70);
          objc_msgSend_addObject_(v15, v72, v73, v74, v75, v71);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, v22, v23, v24, &v135, v140, 16);
      }

      while (v21);
    }

    v89 = objc_msgSend_count(v15, v85, v86, v87, v88);
    v94 = v89 != 0;
    if (v89)
    {
      v95 = objc_msgSend_objectAtIndexedSubscript_(v15, v90, v91, v92, v93, 0);
      objc_msgSend_CGPointValue(v95, v96, v97, v98, v99);
      v101 = v100;
      v103 = v102;

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v104 = v15;
      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, v106, v107, v108, &v131, v139, 16);
      if (v110)
      {
        v114 = *v132;
        v115 = v101;
        v116 = v103;
        do
        {
          for (j = 0; j != v110; ++j)
          {
            if (*v132 != v114)
            {
              objc_enumerationMutation(v104);
            }

            objc_msgSend_CGPointValue(*(*(&v131 + 1) + 8 * j), v109, v111, v112, v113);
            v119 = v118;
            v121 = v120;
            objc_msgSend_p_minPoint_otherPoint_(self, v122, v115, v116, v118, v120);
            v115 = v123;
            v116 = v124;
            objc_msgSend_p_maxPoint_otherPoint_(self, v125, v101, v103, v119, v121);
            v101 = v111;
            v103 = v112;
          }

          v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v109, v111, v112, v113, &v131, v139, 16);
        }

        while (v110);
      }

      else
      {
        v115 = v101;
        v116 = v103;
      }

      if (pointCopy)
      {
        pointCopy->x = v115;
        pointCopy->y = v116;
      }

      if (maxPoint)
      {
        maxPoint->x = v101;
        maxPoint->y = v103;
      }
    }
  }

  else
  {
    v94 = 0;
  }

  return v94;
}

- (void)mergeBoundsIntoProjectedPoints:(id)points
{
  v66 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v6 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = self->_labelsBounds;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v61, v65, 16);
  if (!v13)
  {
LABEL_21:

    goto LABEL_22;
  }

  v17 = 0;
  v55 = v5;
  v56 = v6;
  v18 = *v62;
  v19 = v6;
  v20 = v5;
  v21 = v6;
  v22 = v5;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v62 != v18)
      {
        objc_enumerationMutation(v7);
      }

      if (objc_msgSend_p_hasExtentPointsForBounds_returningMinPoint_maxPoint_(self, v12, v14, v15, v16, *(*(&v61 + 1) + 8 * i), &v59, &v57, *&v55, *&v56))
      {
        if (v17)
        {
          objc_msgSend_p_minPoint_otherPoint_(self, v12, v21, v22, v59, v60);
          v21 = v24;
          v22 = v25;
          objc_msgSend_p_maxPoint_otherPoint_(self, v26, v19, v20, v57, v58);
          v19 = v27;
          v20 = v28;
        }

        else
        {
          v19 = v57;
          v20 = v58;
          v21 = v59;
          v22 = v60;
        }

        TSUAddPoints();
        v55 = v30;
        v56 = v29;
        TSUAddPoints();
        ++v17;
      }
    }

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, v14, v15, v16, &v61, v65, 16);
  }

  while (v13);

  if (v17)
  {
    isHorizontal = objc_msgSend_p_isHorizontal(self, v31, v32, v33, v34);
    TSUMultiplyPointScalar();
    v37 = v36;
    v39 = v38;
    TSUMultiplyPointScalar();
    if (isHorizontal)
    {
      v20 = v39;
    }

    else
    {
      v19 = v37;
    }

    if (isHorizontal)
    {
      v41 = v21;
    }

    else
    {
      v42 = v22;
    }

    *&v41 = v41;
    *&v42 = v42;
    v43 = objc_msgSend_x_y_z_w_(TSCH3DVector, v40, v41, v42, 0.0, 0.0, *&v55, *&v56);
    objc_msgSend_addObject_(pointsCopy, v44, v45, v46, v47, v43);

    *&v48 = v19;
    *&v49 = v20;
    v7 = objc_msgSend_x_y_z_w_(TSCH3DVector, v50, v48, v49, 0.0, 0.0);
    objc_msgSend_addObject_(pointsCopy, v51, v52, v53, v54, v7);
    goto LABEL_21;
  }

LABEL_22:
}

@end