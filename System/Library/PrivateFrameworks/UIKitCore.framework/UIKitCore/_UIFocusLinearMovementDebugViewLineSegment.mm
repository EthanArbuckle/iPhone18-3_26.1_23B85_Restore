@interface _UIFocusLinearMovementDebugViewLineSegment
- (CGRect)endRect;
- (CGRect)startRect;
- (_UIFocusLinearMovementDebugViewLineSegment)initWithStartRect:(CGRect)rect endRect:(CGRect)endRect previousSegment:(id)segment;
- (id)_calculateArrowHeadPath;
- (id)_calculateStemPathFrom:(CGRect)from to:(CGRect)to startPoint:(CGPoint *)point endPoint:(CGPoint *)endPoint;
- (id)_flattenedBezierPathFromBezierPath:(id)path;
- (id)_pathElementsFromPath:(id)path;
- (int64_t)type;
- (void)_calculatePaths;
- (void)_subdivideBezier:(id)bezier startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint;
- (void)drawInRect:(CGRect)rect;
@end

@implementation _UIFocusLinearMovementDebugViewLineSegment

- (_UIFocusLinearMovementDebugViewLineSegment)initWithStartRect:(CGRect)rect endRect:(CGRect)endRect previousSegment:(id)segment
{
  height = endRect.size.height;
  width = endRect.size.width;
  y = endRect.origin.y;
  x = endRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  segmentCopy = segment;
  v19.receiver = self;
  v19.super_class = _UIFocusLinearMovementDebugViewLineSegment;
  v16 = [(_UIFocusLinearMovementDebugViewLineSegment *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_previousSegment, segment);
    v17->_startRect.origin.x = v13;
    v17->_startRect.origin.y = v12;
    v17->_startRect.size.width = v11;
    v17->_startRect.size.height = v10;
    v17->_endRect.origin.x = x;
    v17->_endRect.origin.y = y;
    v17->_endRect.size.width = width;
    v17->_endRect.size.height = height;
  }

  return v17;
}

- (int64_t)type
{
  [(_UIFocusLinearMovementDebugViewLineSegment *)self startRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIFocusLinearMovementDebugViewLineSegment *)self endRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  rect = v4;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = v12;
  v28.origin.y = v14;
  v28.size.width = v16;
  v28.size.height = v18;
  if (MidY > CGRectGetMinY(v28))
  {
    v29.origin.x = rect;
    v29.origin.y = v6;
    v29.size.width = v8;
    v29.size.height = v10;
    v20 = CGRectGetMidY(v29);
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    if (v20 < CGRectGetMaxY(v30))
    {
      return 0;
    }
  }

  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  v21 = CGRectGetMidY(v31);
  v32.origin.x = rect;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  if (v21 > CGRectGetMinY(v32))
  {
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    v22 = CGRectGetMidY(v33);
    v34.origin.x = rect;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    if (v22 < CGRectGetMaxY(v34))
    {
      return 0;
    }
  }

  v35.origin.x = rect;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  MinY = CGRectGetMinY(v35);
  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  if (MinY >= CGRectGetMinY(v36))
  {
    return 1;
  }

  v37.origin.x = rect;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  if (MinX <= CGRectGetMinX(v38))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)drawInRect:(CGRect)rect
{
  if (!self->_arrowHeadPath || (stemPath = self->_stemPath) == 0)
  {
    [(_UIFocusLinearMovementDebugViewLineSegment *)self _calculatePaths:rect.origin.x];
    stemPath = self->_stemPath;
  }

  [(UIBezierPath *)stemPath stroke:rect.origin.x];
  arrowHeadPath = self->_arrowHeadPath;

  [(UIBezierPath *)arrowHeadPath fill];
}

- (id)_calculateStemPathFrom:(CGRect)from to:(CGRect)to startPoint:(CGPoint *)point endPoint:(CGPoint *)endPoint
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v11 = from.size.height;
  v12 = from.size.width;
  v13 = from.origin.y;
  v14 = from.origin.x;
  type = [(_UIFocusLinearMovementDebugViewLineSegment *)self->_previousSegment type];
  v89.origin.x = v14;
  v89.origin.y = v13;
  v89.size.width = v12;
  v89.size.height = v11;
  MidY = CGRectGetMidY(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  if (MidY <= CGRectGetMinY(v90) || (v91.origin.x = v14, v91.origin.y = v13, v91.size.width = v12, v91.size.height = v11, v17 = CGRectGetMidY(v91), v92.origin.x = x, v92.origin.y = y, v92.size.width = width, v92.size.height = height, v17 >= CGRectGetMaxY(v92)))
  {
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    v18 = CGRectGetMidY(v93);
    v94.origin.x = v14;
    v94.origin.y = v13;
    v94.size.width = v12;
    v94.size.height = v11;
    if (v18 <= CGRectGetMinY(v94) || (v95.origin.x = x, v95.origin.y = y, v95.size.width = width, v95.size.height = height, v19 = CGRectGetMidY(v95), v96.origin.x = v14, v96.origin.y = v13, v96.size.width = v12, v96.size.height = v11, v19 >= CGRectGetMaxY(v96)))
    {
      v103.origin.x = v14;
      v103.origin.y = v13;
      v103.size.width = v12;
      v103.size.height = v11;
      MinY = CGRectGetMinY(v103);
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      v81 = CGRectGetMinY(v104);
      v84 = v14;
      v85 = v13;
      v105.origin.x = v14;
      v105.origin.y = v13;
      v86 = v12;
      v105.size.width = v12;
      v105.size.height = v11;
      MidX = CGRectGetMidX(v105);
      v106.origin.x = x;
      v32 = y;
      v106.origin.y = y;
      v33 = width;
      v106.size.width = width;
      v106.size.height = height;
      MinX = CGRectGetMinX(v106);
      if (MinY >= v81)
      {
        if (MidX <= MinX || (v116.origin.x = v84, v116.origin.y = v13, v116.size.width = v86, v116.size.height = v11, v46 = CGRectGetMidX(v116), v117.origin.x = x, v117.origin.y = y, v117.size.width = width, v117.size.height = height, v46 >= CGRectGetMaxX(v117)))
        {
          v118.origin.x = x;
          v118.origin.y = y;
          v118.size.width = width;
          v118.size.height = height;
          v47 = CGRectGetMidX(v118);
          v119.origin.x = v84;
          v119.origin.y = v85;
          v119.size.width = v86;
          v119.size.height = v11;
          if (v47 <= CGRectGetMinX(v119) || (v120.origin.x = x, v120.origin.y = y, v120.size.width = width, v120.size.height = height, v48 = CGRectGetMidX(v120), v121.origin.x = v84, v121.origin.y = v85, v121.size.width = v86, v121.size.height = v11, v48 >= CGRectGetMaxX(v121)))
          {
            v130.origin.x = v84;
            v130.origin.y = v85;
            v130.size.width = v86;
            v130.size.height = v11;
            v65 = CGRectGetMinX(v130);
            v131.origin.x = x;
            v131.origin.y = y;
            v131.size.width = width;
            v131.size.height = height;
            if (v65 < CGRectGetMinX(v131))
            {
              v132.origin.x = v84;
              v132.origin.y = v85;
              v132.size.width = v86;
              v132.size.height = v11;
              MaxX = CGRectGetMaxX(v132);
              v133.origin.x = v84;
              v133.origin.y = v85;
              v133.size.width = v86;
              v133.size.height = v11;
              MaxY = CGRectGetMidY(v133);
              v134.origin.x = x;
              v134.origin.y = y;
              v134.size.width = width;
              v134.size.height = height;
              v29 = CGRectGetMinX(v134);
              v135.origin.x = x;
              v135.origin.y = y;
              v135.size.width = width;
              v135.size.height = height;
              v57 = CGRectGetMidY(v135);
              v27 = v57;
              v25 = v29;
              v23 = MaxY;
              v26 = MaxX;
              goto LABEL_37;
            }

            v139.origin.x = v84;
            v139.origin.y = v85;
            v139.size.width = v86;
            v139.size.height = v11;
            v71 = CGRectGetMinX(v139);
            v140.origin.x = v84;
            v140.origin.y = v85;
            v140.size.width = v86;
            v140.size.height = v11;
            MaxY = CGRectGetMaxY(v140);
            v141.origin.x = x;
            v141.origin.y = y;
            v141.size.width = width;
            v141.size.height = height;
            v72 = CGRectGetMinX(v141);
            v142.origin.y = y;
            v25 = v72;
            v142.origin.x = x;
            v142.size.width = width;
            v26 = v71;
            v142.size.height = height;
            v57 = CGRectGetMidY(v142);
            v73 = dbl_18A67E390[vabdd_f64(v57, MaxY) > 20.0];
            v29 = v26 - v73;
            goto LABEL_35;
          }
        }

        v122.origin.x = v84;
        v122.origin.y = v85;
        v122.size.width = v86;
        v122.size.height = v11;
        v39 = CGRectGetMinX(v122);
        v49 = v84;
        v50 = v85;
        v51 = v86;
        v52 = v11;
        if (type == 1)
        {
          v53 = CGRectGetMaxY(*&v49);
        }

        else
        {
          v53 = CGRectGetMidY(*&v49);
        }

        MaxY = v53;
        v144.origin.x = x;
        v144.origin.y = y;
        v144.size.width = width;
        v144.size.height = height;
        v78 = CGRectGetMinX(v144);
        v75 = y;
        v25 = v78;
        v74 = x;
        v76 = width;
        v77 = height;
      }

      else
      {
        v35 = y;
        if (MidX <= MinX || (v107.origin.x = v84, v107.origin.y = v13, v107.size.width = v86, v107.size.height = v11, v36 = CGRectGetMidX(v107), v108.origin.x = x, v108.origin.y = y, v108.size.width = v33, v108.size.height = height, v36 >= CGRectGetMaxX(v108)))
        {
          v109.origin.x = x;
          v109.origin.y = y;
          v109.size.width = v33;
          v109.size.height = height;
          v37 = CGRectGetMidX(v109);
          v110.origin.x = v84;
          v110.origin.y = v85;
          v110.size.width = v86;
          v110.size.height = v11;
          if (v37 <= CGRectGetMinX(v110) || (v111.origin.x = x, v111.origin.y = y, v111.size.width = v33, v111.size.height = height, v38 = CGRectGetMidX(v111), v112.origin.x = v84, v112.origin.y = v85, v112.size.width = v86, v112.size.height = v11, v38 >= CGRectGetMaxX(v112)))
          {
            v127.origin.x = v84;
            v127.origin.y = v85;
            v127.size.width = v86;
            v127.size.height = v11;
            v58 = CGRectGetMinX(v127);
            v128.origin.x = x;
            v128.origin.y = y;
            v128.size.width = v33;
            v128.size.height = height;
            v59 = CGRectGetMinX(v128);
            v129.origin.x = v84;
            v129.origin.y = v85;
            v129.size.width = v86;
            v129.size.height = v11;
            v83 = CGRectGetMinX(v129);
            if (v58 >= v59)
            {
              v136.origin.x = v84;
              v136.origin.y = v85;
              v136.size.width = v86;
              v136.size.height = v11;
              v23 = CGRectGetMaxY(v136);
              v137.origin.x = x;
              v137.origin.y = v32;
              v137.size.width = v33;
              v137.size.height = height;
              v66 = CGRectGetMinY(v137) + -10.0;
              v138.origin.x = x;
              v138.origin.y = v32;
              v138.size.width = v33;
              v138.size.height = height;
              v25 = CGRectGetMinX(v138);
              v67 = x;
              v68 = v32;
              v69 = v33;
              v70 = height;
              if (v66 <= v23)
              {
                v57 = CGRectGetMidY(*&v67);
                MaxX = v25 - dbl_18A67E390[vabdd_f64(v57, v23) > 20.0];
                v29 = MaxX;
                MaxY = v23;
                v27 = v57;
                v26 = v83;
              }

              else
              {
                MaxY = CGRectGetMinY(*&v67);
                v26 = v83;
                v29 = v83 + 20.0;
                v57 = MaxY + -10.0;
                MaxX = v25;
                v27 = MaxY;
              }

              goto LABEL_37;
            }

            v60 = v84;
            v61 = v85;
            v62 = v86;
            v63 = v11;
            if (type == 1)
            {
              v64 = CGRectGetMaxY(*&v60);
            }

            else
            {
              v64 = CGRectGetMidY(*&v60);
            }

            MaxY = v64;
            v145.origin.x = x;
            v145.origin.y = v35;
            v145.size.width = v33;
            v145.size.height = height;
            v25 = CGRectGetMinX(v145);
            v146.origin.x = x;
            v146.origin.y = v35;
            v146.size.width = v33;
            v146.size.height = height;
            v57 = CGRectGetMidY(v146);
            v26 = v83;
            MaxX = v83 - dbl_18A67E390[vabdd_f64(v57, MaxY) > 20.0];
            v29 = MaxX;
LABEL_36:
            v27 = v57;
            v23 = MaxY;
            goto LABEL_37;
          }
        }

        v113.origin.x = v84;
        v113.origin.y = v85;
        v113.size.width = v86;
        v113.size.height = v11;
        v39 = CGRectGetMinX(v113);
        v40 = v84;
        v41 = v85;
        v42 = v86;
        v43 = v11;
        if (type == 1)
        {
          MaxY = CGRectGetMaxY(*&v40);
          v114.origin.x = x;
          v114.origin.y = y;
          v114.size.width = v33;
          v114.size.height = height;
          v25 = CGRectGetMinX(v114);
          v115.origin.x = x;
          v115.origin.y = v35;
          v115.size.width = v33;
          v115.size.height = height;
          v45 = CGRectGetMinY(v115);
LABEL_34:
          v57 = v45;
          v73 = dbl_18A67E390[vabdd_f64(v45, MaxY) > 20.0];
          v26 = v39;
          v29 = v39 - v73;
LABEL_35:
          MaxX = v25 - v73;
          goto LABEL_36;
        }

        MaxY = CGRectGetMidY(*&v40);
        v143.origin.x = x;
        v143.origin.y = y;
        v143.size.width = v33;
        v143.size.height = height;
        v25 = CGRectGetMinX(v143);
        v74 = x;
        v75 = v35;
        v76 = v33;
        v77 = height;
      }

      v45 = CGRectGetMidY(*&v74);
      goto LABEL_34;
    }
  }

  v97.origin.x = v14;
  v97.origin.y = v13;
  v97.size.width = v12;
  v97.size.height = v11;
  v20 = CGRectGetMinX(v97);
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  if (v20 >= CGRectGetMinX(v98))
  {
    v123.origin.x = v14;
    v123.origin.y = v13;
    v123.size.width = v12;
    v123.size.height = v11;
    v54 = CGRectGetMinX(v123);
    v124.origin.y = v13;
    v22 = v54;
    v124.origin.x = v14;
    v124.size.width = v12;
    v124.size.height = v11;
    v23 = CGRectGetMaxY(v124);
    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = width;
    v125.size.height = height;
    v55 = CGRectGetMaxX(v125);
    v126.origin.y = y;
    v25 = v55;
    v126.origin.x = x;
    v126.size.width = width;
    v26 = v22;
    v126.size.height = height;
    v27 = CGRectGetMaxY(v126);
    v28 = 3.0;
    v29 = v22 + (v25 - v22) / 3.0;
    v30 = 10.0;
  }

  else
  {
    v99.origin.x = v14;
    v99.origin.y = v13;
    v99.size.width = v12;
    v99.size.height = v11;
    v21 = CGRectGetMaxX(v99);
    v100.origin.y = v13;
    v22 = v21;
    v100.origin.x = v14;
    v100.size.width = v12;
    v100.size.height = v11;
    v23 = CGRectGetMinY(v100);
    v101.origin.x = x;
    v101.origin.y = y;
    v101.size.width = width;
    v101.size.height = height;
    v24 = CGRectGetMinX(v101);
    v102.origin.y = y;
    v25 = v24;
    v102.origin.x = x;
    v102.size.width = width;
    v26 = v22;
    v102.size.height = height;
    v27 = CGRectGetMinY(v102);
    v28 = 3.0;
    v29 = v22 + (v25 - v22) / 3.0;
    v30 = -10.0;
  }

  MaxY = v23 + v30;
  MaxX = v25 + (v22 - v25) / v28;
  v57 = v27 + v30;
LABEL_37:
  v79 = objc_alloc_init(UIBezierPath);
  [(UIBezierPath *)v79 moveToPoint:v26, v23];
  [(UIBezierPath *)v79 addCurveToPoint:v25 controlPoint1:v27 controlPoint2:v29, MaxY, MaxX, v57];
  if (point)
  {
    point->x = v26;
    point->y = v23;
  }

  if (endPoint)
  {
    endPoint->x = v25;
    endPoint->y = v27;
  }

  return v79;
}

- (id)_calculateArrowHeadPath
{
  v2 = objc_alloc_init(UIBezierPath);
  [(UIBezierPath *)v2 setLineCapStyle:0];
  [(UIBezierPath *)v2 moveToPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(UIBezierPath *)v2 addLineToPoint:-10.0, 4.5];
  [(UIBezierPath *)v2 addLineToPoint:-10.0, -4.5];
  [(UIBezierPath *)v2 closePath];

  return v2;
}

- (void)_calculatePaths
{
  x = self->_startRect.origin.x;
  y = self->_startRect.origin.y;
  width = self->_startRect.size.width;
  height = self->_startRect.size.height;
  v7 = self->_endRect.origin.x;
  v8 = self->_endRect.origin.y;
  v9 = self->_endRect.size.width;
  v10 = self->_endRect.size.height;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  if (!CGRectIsEmpty(v43))
  {
    v44.origin.x = v7;
    v44.origin.y = v8;
    v44.size.width = v9;
    v44.size.height = v10;
    if (!CGRectIsEmpty(v44))
    {
      v42[0] = 0;
      v42[1] = 0;
      v41 = 0uLL;
      v11 = [(_UIFocusLinearMovementDebugViewLineSegment *)self _calculateStemPathFrom:v42 to:&v41 startPoint:x endPoint:y, width, height, v7, v8, v9, v10];
      v12 = [(_UIFocusLinearMovementDebugViewLineSegment *)self _flattenedBezierPathFromBezierPath:v11];
      [v11 removeAllPoints];
      [v11 setLineCapStyle:1];
      v13 = [(_UIFocusLinearMovementDebugViewLineSegment *)self _pathElementsFromPath:v12];
      v14 = [v13 count];
      v35 = 0;
      v36 = &v35;
      v37 = 0x3010000000;
      v39 = 0;
      v40 = 0;
      v38 = "";
      v15 = [v13 objectAtIndexedSubscript:v14 - 2];
      [v15 point];
      v39 = v16;
      v40 = v17;

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __61___UIFocusLinearMovementDebugViewLineSegment__calculatePaths__block_invoke;
      v30[3] = &unk_1E710D9F0;
      v18 = v11;
      v32 = &v35;
      v33 = v14;
      v34 = v41;
      v31 = v18;
      [v13 enumerateObjectsUsingBlock:v30];
      _calculateArrowHeadPath = [(_UIFocusLinearMovementDebugViewLineSegment *)self _calculateArrowHeadPath];
      memset(&v29, 0, sizeof(v29));
      v20 = v41;
      CGAffineTransformMakeTranslation(&v29, *&v41, *(&v41 + 1));
      v21 = v36[4];
      v22 = *&v20 - v21;
      if (*&v20 >= v21)
      {
        v23 = atan((*(&v20 + 1) - v36[5]) / v22);
      }

      else
      {
        v23 = atan((*(&v20 + 1) - v36[5]) / v22) + 3.14159265;
      }

      v27 = v29;
      CGAffineTransformRotate(&v28, &v27, v23);
      v29 = v28;
      [(UIBezierPath *)_calculateArrowHeadPath applyTransform:&v28];
      [(UIBezierPath *)v18 setLineWidth:2.0];
      stemPath = self->_stemPath;
      self->_stemPath = v18;
      v25 = v18;

      arrowHeadPath = self->_arrowHeadPath;
      self->_arrowHeadPath = _calculateArrowHeadPath;

      _Block_object_dispose(&v35, 8);
    }
  }
}

- (id)_pathElementsFromPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_new();
  cGPath = [pathCopy CGPath];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___UIFocusLinearMovementDebugViewLineSegment__pathElementsFromPath___block_invoke;
  block[3] = &unk_1E710DA18;
  v6 = v4;
  v9 = v6;
  CGPathApplyWithBlock(cGPath, block);

  return v6;
}

- (id)_flattenedBezierPathFromBezierPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_new();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3010000000;
  v14[3] = "";
  v15 = *MEMORY[0x1E695EFF8];
  v6 = [(_UIFocusLinearMovementDebugViewLineSegment *)self _pathElementsFromPath:pathCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___UIFocusLinearMovementDebugViewLineSegment__flattenedBezierPathFromBezierPath___block_invoke;
  v10[3] = &unk_1E710DA40;
  v7 = v5;
  v11 = v7;
  selfCopy = self;
  v13 = v14;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = v7;
  _Block_object_dispose(v14, 8);

  return v8;
}

- (void)_subdivideBezier:(id)bezier startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint
{
  x = endPoint.x;
  y = endPoint.y;
  v43 = point2.y;
  point1Copy = point1;
  v36 = point1.y;
  v39 = point.y;
  v41 = point2.x;
  v45 = point.x;
  bezierCopy = bezier;
  v10.f64[0] = v45;
  v8.f64[0] = point1Copy.x;
  v8.f64[1] = v36;
  v9.f64[0] = v41;
  v10.f64[1] = v39;
  v11 = vsubq_f64(v8, v10);
  v9.f64[1] = v43;
  v12.f64[0] = x;
  v12.f64[1] = y;
  v13 = vsubq_f64(v9, v8);
  v14 = vsubq_f64(v12, v9);
  v15 = vsubq_f64(v13, v11);
  v16 = vsubq_f64(v14, v13);
  v17 = vpaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v16, v16));
  if (v17.f64[0] <= v17.f64[1])
  {
    v17.f64[0] = v17.f64[1];
  }

  v18 = v17.f64[0] * 9.0 * 0.0625;
  v47 = bezierCopy;
  if (v18 > 0.36)
  {
    v19 = vsubq_f64(v16, v15);
    __asm { FMOV            V5.2D, #3.0 }

    v25 = vaddq_f64(vmulq_f64(vaddq_f64(v11, v15), _Q5), v19);
    __asm { FMOV            V2.2D, #6.0 }

    v27 = vmulq_f64(vaddq_f64(v15, v19), _Q2);
    v28 = vmulq_f64(v19, _Q2);
    v29 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v33 = v29;
      v28 = vmulq_f64(v28, _Q2);
      v27 = vsubq_f64(vmulq_f64(v27, _Q3), v28);
      v25 = vsubq_f64(vmulq_f64(v25, _Q4), vmulq_f64(v27, _Q4));
      v29 *= 2;
      v18 = v18 * 0.0625;
    }

    while (v18 > 0.36 && v29 <= 0x10000);
    if (v29 >= 2)
    {
      v34 = (2 * v33) | 1;
      do
      {
        v42 = v28;
        v44 = vaddq_f64(v25, v27);
        v46 = vaddq_f64(v25, v10);
        v40 = vaddq_f64(v28, v27);
        [v47 addLineToPoint:{*&v46, point1Copy}];
        v27 = v40;
        v28 = v42;
        v25 = v44;
        v10 = v46;
        bezierCopy = v47;
        --v34;
      }

      while (v34 > 2);
    }
  }

  [bezierCopy addLineToPoint:{x, y, *&point1Copy.x}];
}

- (CGRect)startRect
{
  x = self->_startRect.origin.x;
  y = self->_startRect.origin.y;
  width = self->_startRect.size.width;
  height = self->_startRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endRect
{
  x = self->_endRect.origin.x;
  y = self->_endRect.origin.y;
  width = self->_endRect.size.width;
  height = self->_endRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end