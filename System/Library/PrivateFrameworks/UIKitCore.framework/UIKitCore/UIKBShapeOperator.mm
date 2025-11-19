@interface UIKBShapeOperator
+ (id)operatorWithScale:(double)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_scaleRange:(id)a3 factor:(double)a4;
- (CGPoint)offsetForCenteringShapes:(id)a3 insideRect:(CGRect)a4;
- (CGRect)_scaleRect:(CGRect)a3 factor:(CGSize)a4;
- (id)geometryByScalingShapeGeometry:(id)a3 factor:(CGSize)a4;
- (id)shapeByScalingShape:(id)a3 factor:(CGSize)a4;
- (id)shapesByCenteringShapes:(id)a3 insideRect:(CGRect)a4;
- (id)shapesByCenteringShapesPreservingLayout:(id)a3 insideRect:(CGRect)a4 horizontal:(BOOL)a5 vertical:(BOOL)a6;
- (id)shapesByElaboratingShapes:(id)a3 insideShape:(id)a4 count:(int64_t)a5;
- (id)shapesByInsettingShapes:(id)a3 withInsets:(UIEdgeInsets)a4;
- (id)shapesByRepositioningShapes:(id)a3 withOffset:(CGPoint)a4;
- (id)shapesByResizingShapes:(id)a3 withOffset:(CGPoint)a4;
- (id)shapesByScalingShapes:(id)a3 factor:(CGSize)a4;
@end

@implementation UIKBShapeOperator

+ (id)operatorWithScale:(double)a3
{
  v4 = objc_alloc_init(UIKBShapeOperator);
  [(UIKBShapeOperator *)v4 setScale:a3];

  return v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_scaleRange:(id)a3 factor:(double)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(UIKBShapeOperator *)self scale];
  v9 = a4;
  if (var0 != 1.0)
  {
    v10 = var0 * a4;
    if (v8 == 1.0)
    {
      v9 = round(v10);
    }

    else
    {
      v9 = round(v10 * v8) / v8;
    }
  }

  [(UIKBShapeOperator *)self scale];
  v12 = a4;
  v13 = a4;
  if (var1 != 1.0)
  {
    v12 = var1 * a4;
    if (v11 == 1.0)
    {
      v13 = round(v12);
    }

    else
    {
      v13 = round(v12 * v11) / v11;
    }
  }

  v14 = var0 * a4 - v9 + v12 - v13;
  [(UIKBShapeOperator *)self scale];
  v16 = 1.0;
  if (v14 != 1.0)
  {
    if (v15 == 1.0)
    {
      v16 = round(v14);
    }

    else
    {
      v16 = round(v15 * v14) / v15;
    }
  }

  v17 = v13 + v16;
  v18 = v9;
  result.var1 = v17;
  result.var0 = v18;
  return result;
}

- (CGRect)_scaleRect:(CGRect)a3 factor:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.size.height;
  v7 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsNull(a3))
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = v7;
    v19.size.height = v6;
    if (!CGRectEqualToRect(v19, *MEMORY[0x1E695F058]))
    {
      [(UIKBShapeOperator *)self _scaleRange:x factor:v7, width];
      x = v11;
      v7 = v12;
      [(UIKBShapeOperator *)self _scaleRange:y factor:v6, height];
      y = v13;
      v6 = v14;
    }
  }

  v15 = x;
  v16 = y;
  v17 = v7;
  v18 = v6;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)shapeByScalingShape:(id)a3 factor:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = v7;
  if (!v7 || (width == *MEMORY[0x1E695F060] ? (v9 = height == *(MEMORY[0x1E695F060] + 8)) : (v9 = 0), v9))
  {
LABEL_9:
    v12 = v8;
    goto LABEL_10;
  }

  if ([v7 scaled])
  {
    v10 = [v8 originalShape];

    if (v10)
    {
      v11 = [v8 originalShape];
      v12 = [(UIKBShapeOperator *)self shapeByScalingShape:v11 factor:width, height];

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [v8 frame];
  [UIKBShapeOperator _scaleRect:"_scaleRect:factor:" factor:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v8 paddedFrame];
  [UIKBShapeOperator _scaleRect:"_scaleRect:factor:" factor:?];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [UIKBShape alloc];
  v31 = [v8 geometry];
  v12 = [(UIKBShape *)v30 initWithGeometry:v31 frame:v15 paddedFrame:v17, v19, v21, v23, v25, v27, v29];

  [(UIKBShape *)v12 setScaled:1];
  [(UIKBShape *)v12 setOriginalShape:v8];
LABEL_10:

  return v12;
}

- (id)geometryByScalingShapeGeometry:(id)a3 factor:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [v7 geometry];
  v9 = v8;
  if (v7 && v8 && ![v7 scaled])
  {
    v11 = [v9 copy];
    [v11 x];
    if (v12 == 3)
    {
      v13 = COERCE_DOUBLE([v11 x]);
      [(UIKBShapeOperator *)self scale];
      v15 = width;
      if (v13 != 1.0)
      {
        v16 = width * v13;
        if (v14 == 1.0)
        {
          v15 = round(v16);
        }

        else
        {
          v15 = round(v14 * v16) / v14;
        }
      }

      [v11 setX:{*&v15, 3}];
    }

    [v11 y];
    if (v17 == 3)
    {
      v18 = COERCE_DOUBLE([v11 y]);
      [(UIKBShapeOperator *)self scale];
      v20 = height;
      if (v18 != 1.0)
      {
        v21 = height * v18;
        if (v19 == 1.0)
        {
          v20 = round(v21);
        }

        else
        {
          v20 = round(v19 * v21) / v19;
        }
      }

      [v11 setY:{*&v20, 3}];
    }

    [v11 w];
    if (v22 == 3)
    {
      v23 = COERCE_DOUBLE([v11 w]);
      [(UIKBShapeOperator *)self scale];
      if (v23 != 1.0)
      {
        v25 = width * v23;
        if (v24 == 1.0)
        {
          width = round(v25);
        }

        else
        {
          width = round(v24 * v25) / v24;
        }
      }

      [v11 setW:{*&width, 3}];
    }

    [v11 h];
    if (v26 == 3)
    {
      v27 = COERCE_DOUBLE([v11 h]);
      [(UIKBShapeOperator *)self scale];
      if (v27 != 1.0)
      {
        v29 = height * v27;
        if (v28 == 1.0)
        {
          height = round(v29);
        }

        else
        {
          height = round(v28 * v29) / v28;
        }
      }

      [v11 setH:{*&height, 3}];
    }

    v30 = [UIKBShape alloc];
    v10 = [(UIKBShape *)v30 initWithGeometry:v11 frame:*MEMORY[0x1E695F058] paddedFrame:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIKBShape *)v10 setScaled:1];
    [(UIKBShape *)v10 setOriginalShape:v7];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)shapesByScalingShapes:(id)a3 factor:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v87 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7 || (width == *MEMORY[0x1E695F060] ? (v9 = height == *(MEMORY[0x1E695F060] + 8)) : (v9 = 0), v9))
  {
    v10 = v7;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v69 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v12)
    {
      v13 = v12;
      v15 = *MEMORY[0x1E695F050];
      v14 = *(MEMORY[0x1E695F050] + 8);
      v17 = *(MEMORY[0x1E695F050] + 16);
      v16 = *(MEMORY[0x1E695F050] + 24);
      v18 = *v83;
      v71 = v16;
      v72 = *MEMORY[0x1E695F050];
      v73 = v17;
      v74 = width;
      v70 = v14;
      v75 = height;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v83 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v20 = *(*(&v82 + 1) + 8 * i);
          if ([v20 shouldUseGeometry])
          {
            v21 = [(UIKBShapeOperator *)self geometryByScalingShapeGeometry:v20 factor:width, height];
          }

          else
          {
            [v20 frame];
            [UIKBShapeOperator _scaleRect:"_scaleRect:factor:" factor:?];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v89.origin.x = v15;
            v89.origin.y = v14;
            v89.size.width = v17;
            v89.size.height = v16;
            if (CGRectIsNull(v89))
            {
              [v20 frame];
              v72 = v30;
              v73 = v31;
              v70 = v32;
              v71 = v33;
              v16 = v29;
              v77 = v23;
              v78 = v27;
              v14 = v25;
            }

            else
            {
              v90.origin.x = v23;
              v90.origin.y = v25;
              v90.size.width = v27;
              v90.size.height = v29;
              MidX = CGRectGetMidX(v90);
              v35 = v17 + v15 < MidX || v15 > MidX;
              v91.origin.x = v23;
              v91.origin.y = v25;
              v91.size.width = v27;
              v91.size.height = v29;
              MidY = CGRectGetMidY(v91);
              v37 = v14 <= MidY;
              if (v16 + v14 < MidY)
              {
                v37 = 0;
              }

              v77 = v15;
              v78 = v17;
              if (v35 || v37)
              {
                if (v37 && v35)
                {
                  v99.origin.x = v15;
                  v99.origin.y = v14;
                  v99.size.width = v17;
                  v99.size.height = v16;
                  v80 = v16;
                  MaxX = CGRectGetMaxX(v99);
                  [v20 frame];
                  v47 = v14;
                  MinX = CGRectGetMinX(v100);
                  v101.size.width = v73;
                  v101.origin.x = v72;
                  v101.origin.y = v70;
                  v101.size.height = v71;
                  v49 = MinX - CGRectGetMaxX(v101);
                  v14 = v47;
                  v23 = MaxX + v74 * v49;
                  v102.origin.x = v23;
                  v102.origin.y = v25;
                  v102.size.width = v27;
                  v102.size.height = v29;
                  v50 = CGRectGetMaxX(v102);
                  v103.origin.x = v15;
                  v103.origin.y = v14;
                  v103.size.width = v17;
                  v103.size.height = v80;
                  v78 = v50 - CGRectGetMinX(v103);
                  [v20 frame];
                  v51 = CGRectGetMaxX(v104);
                  v105.origin.x = v72;
                  v105.origin.y = v70;
                  v105.size.width = v73;
                  v105.size.height = v71;
                  v73 = v51 - CGRectGetMinX(v105);
                  v16 = v80;
                }
              }

              else
              {
                v92.origin.x = v15;
                v92.origin.y = v14;
                v92.size.width = v17;
                v92.size.height = v16;
                v79 = v16;
                MaxY = CGRectGetMaxY(v92);
                [v20 frame];
                v39 = v14;
                MinY = CGRectGetMinY(v93);
                v94.origin.x = v72;
                v94.size.width = v73;
                v94.origin.y = v70;
                v94.size.height = v71;
                v41 = MinY - CGRectGetMaxY(v94);
                v14 = v39;
                v95.size.width = v27;
                v25 = MaxY + v75 * v41;
                v95.origin.x = v23;
                v95.origin.y = v25;
                v95.size.height = v29;
                v42 = CGRectGetMaxY(v95);
                v96.origin.x = v15;
                v96.origin.y = v14;
                v96.size.width = v17;
                v96.size.height = v79;
                v43 = v42 - CGRectGetMinY(v96);
                [v20 frame];
                v44 = CGRectGetMaxY(v97);
                v98.origin.x = v72;
                v98.size.width = v73;
                v98.origin.y = v70;
                v98.size.height = v71;
                v71 = v44 - CGRectGetMinY(v98);
                v16 = v43;
              }
            }

            v76 = v14;
            v81 = v16;
            v52 = [v20 geometry];

            if (v52)
            {
              v53 = [v20 geometry];
              [v53 paddedFrameWithResolvedFrame:{v23, v25, v27, v29}];
              v55 = v54;
              v57 = v56;
              v59 = v58;
              v61 = v60;
            }

            else
            {
              [v20 paddedFrame];
              [UIKBShapeOperator _scaleRect:"_scaleRect:factor:" factor:?];
              v55 = v62;
              v57 = v63;
              v59 = v64;
              v61 = v65;
            }

            v66 = [UIKBShape alloc];
            v67 = [v20 geometry];
            v21 = [(UIKBShape *)v66 initWithGeometry:v67 frame:v23 paddedFrame:v25, v27, v29, v55, v57, v59, v61];

            [(UIKBShape *)v21 setOriginalShape:v20];
            width = v74;
            height = v75;
            v14 = v76;
            v15 = v77;
            v17 = v78;
            v16 = v81;
          }

          [v10 addObject:v21];
        }

        v13 = [v11 countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v13);
    }

    v8 = v69;
  }

  return v10;
}

- (id)shapesByElaboratingShapes:(id)a3 insideShape:(id)a4 count:(int64_t)a5
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v80 = a4;
  if (v7)
  {
    v8 = [v7 count];
    v78 = 0;
    if (a5 >= 1 && v80 && v8)
    {
      v77 = a5;
      v9 = [v7 count];
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v76 = v7;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v95 objects:v105 count:16];
      v12 = *MEMORY[0x1E695F060];
      v13 = a5 - v9;
      v14 = 0;
      v15 = 0;
      if (v11)
      {
        v16 = *v96;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v96 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v95 + 1) + 8 * i);
            if (v15 || ([*(*(&v95 + 1) + 8 * i) geometry], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isTemplate"), v19, !v20))
            {
              v24 = [v18 geometry];
              [v24 w];
              v26 = v25 == 100;

              if (v26)
              {
                ++v14;
              }

              else
              {
                v27 = [v18 geometry];
                [v80 frame];
                [v27 frameWithContainingFrame:?];
                v29 = v28;

                v12 = v12 + v29;
              }
            }

            else
            {
              v15 = v18;
              v21 = [v15 geometry];
              [v80 frame];
              [v21 frameWithContainingFrame:?];
              v23 = v22;

              v12 = v12 + v23 * ++v13;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v95 objects:v105 count:16];
        }

        while (v11);
      }

      [v15 frame];
      if (v14)
      {
        v30 = v14;
      }

      else
      {
        v30 = 2;
      }

      if (v15)
      {
        v31 = v14 == 0;
      }

      else
      {
        v31 = 0;
      }

      [v80 frame];
      v33 = v32;
      [(UIKBShapeOperator *)self scale];
      v35 = (v33 - v12) / v30;
      v36 = 1.0;
      if (v35 != 1.0)
      {
        if (v34 == 1.0)
        {
          v36 = round(v35);
        }

        else
        {
          v36 = round(v34 * v35) / v34;
        }
      }

      v78 = [MEMORY[0x1E695DF70] arrayWithCapacity:v77];
      [v80 frame];
      v38 = 0;
      v39 = 0;
      if (v31)
      {
        v40 = v36 + v37;
      }

      else
      {
        v40 = v37;
      }

      v41 = 0.0;
      v42 = v77;
      while (v38 < [v10 count])
      {
        v43 = [v10 objectAtIndex:v38];
        *buf = 0;
        v100 = buf;
        v101 = 0x4010000000;
        v102 = "";
        v103 = 0u;
        v104 = 0u;
        [v43 frame];
        *&v103 = v44;
        *(&v103 + 1) = v45;
        *&v104 = v46;
        *(&v104 + 1) = v47;
        v48 = [v43 geometry];

        if (v48)
        {
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __65__UIKBShapeOperator_shapesByElaboratingShapes_insideShape_count___block_invoke;
          v91[3] = &unk_1E70FB728;
          v94 = buf;
          v92 = v43;
          v93 = v80;
          [(UIKBShapeOperator *)self scale];
          [UIKBGeometry performOperations:v91 withScale:?];
        }

        v49 = [v43 geometry];
        [v49 w];
        v51 = v50 == 100;

        if (v51)
        {
          v100[6] = v36;
        }

        v52 = [v43 geometry];
        [v52 x];
        v54 = v53 == 100;

        v55 = v100;
        if (v54)
        {
          v56 = v40 + v41;
          v100[4] = v40 + v41;
        }

        else
        {
          v56 = v100[4];
        }

        v57 = *(v55 + 5);
        v58 = *(v55 + 6);
        v59 = *(v55 + 7);
        MaxX = CGRectGetMaxX(*&v56);
        v85 = 0;
        v86 = &v85;
        v87 = 0x4010000000;
        v88 = "";
        v89 = 0u;
        v90 = 0u;
        [v43 paddedFrame];
        *&v89 = v61;
        *(&v89 + 1) = v62;
        *&v90 = v63;
        *(&v90 + 1) = v64;
        v65 = [v43 geometry];

        if (v65)
        {
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __65__UIKBShapeOperator_shapesByElaboratingShapes_insideShape_count___block_invoke_2;
          v81[3] = &unk_1E71053E8;
          v83 = &v85;
          v82 = v43;
          v84 = buf;
          [(UIKBShapeOperator *)self scale];
          [UIKBGeometry performOperations:v81 withScale:?];
        }

        v66 = [UIKBShape alloc];
        v67 = [v43 geometry];
        v68 = [(UIKBShape *)v66 initWithGeometry:v67 frame:v100[4] paddedFrame:v100[5], v100[6], v100[7], v86[4], v86[5], v86[6], v86[7]];
        [v78 addObject:v68];

        v69 = v39 + 1;
        if (v43 == v15)
        {
          ++v39;
        }

        v70 = v69 == v13 || v43 != v15;
        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(buf, 8);

        v41 = MaxX - v40;
        v38 += v70;
        if (!--v42)
        {
          goto LABEL_52;
        }
      }

      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v72 = [v10 count];
      if (has_internal_diagnostics)
      {
        if (v38 >= v72)
        {
          v74 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109634;
            *&buf[4] = v77;
            LOWORD(v100) = 1024;
            *(&v100 + 2) = v13;
            HIWORD(v100) = 2112;
            v101 = v10;
            _os_log_fault_impl(&dword_188A29000, v74, OS_LOG_TYPE_FAULT, "keyboard requested %d shapes (%d templates) from %@", buf, 0x18u);
          }
        }
      }

      else if (v38 >= v72)
      {
        v75 = *(__UILogGetCategoryCachedImpl("Assert", &shapesByElaboratingShapes_insideShape_count____s_category) + 8);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109634;
          *&buf[4] = v77;
          LOWORD(v100) = 1024;
          *(&v100 + 2) = v13;
          HIWORD(v100) = 2112;
          v101 = v10;
          _os_log_impl(&dword_188A29000, v75, OS_LOG_TYPE_ERROR, "keyboard requested %d shapes (%d templates) from %@", buf, 0x18u);
        }
      }

LABEL_52:

      v7 = v76;
    }
  }

  else
  {
    v78 = 0;
  }

  return v78;
}

void __65__UIKBShapeOperator_shapesByElaboratingShapes_insideShape_count___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) geometry];
  [*(a1 + 40) frame];
  [v7 frameWithContainingFrame:?];
  v2 = *(*(a1 + 48) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
}

void __65__UIKBShapeOperator_shapesByElaboratingShapes_insideShape_count___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) geometry];
  [v7 paddedFrameWithResolvedFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
}

- (id)shapesByCenteringShapes:(id)a3 insideRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  if (CGRectIsNull(v57) || ![v8 count])
  {
    v16 = v8;
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v50;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v49 + 1) + 8 * i) frame];
          v13 = v13 + v15;
        }

        v11 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 0.0;
    }

    v16 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v9;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v43 = x + floor((width - v13) * 0.5);
      v20 = *v46;
      v21 = 0.0;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v45 + 1) + 8 * j);
          [v23 paddedFrame];
          v25 = v24;
          [v23 frame];
          v27 = v25 - v26;
          [v23 frame];
          v29 = v28;
          v31 = v30;
          v44 = v32;
          [v23 paddedFrame];
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v39 = [UIKBShape alloc];
          v40 = [v23 geometry];
          v41 = [(UIKBShape *)v39 initWithGeometry:v40 frame:v43 + v21 paddedFrame:v29, v31, v44, v43 + v21 + v27, v34, v36, v38];
          [v16 addObject:v41];

          v21 = v21 + v31;
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v19);
    }
  }

  return v16;
}

- (CGPoint)offsetForCenteringShapes:(id)a3 insideRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  if (CGRectIsNull(v30) || ![v8 count])
  {
    v19 = *MEMORY[0x1E695EFF8];
    v20 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      v13 = 1.79769313e308;
      MaxX = 2.22507386e-308;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          [v16 frame];
          if (v17 < v13)
          {
            [v16 frame];
            v13 = v18;
          }

          [v16 frame];
          if (MaxX < CGRectGetMaxX(v31))
          {
            [v16 frame];
            MaxX = CGRectGetMaxX(v32);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 1.79769313e308;
      MaxX = 2.22507386e-308;
    }

    v19 = x + floor(width - (MaxX - v13)) * 0.5 - v13;
    v20 = 0.0;
  }

  v21 = v19;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (id)shapesByCenteringShapesPreservingLayout:(id)a3 insideRect:(CGRect)a4 horizontal:(BOOL)a5 vertical:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  if (CGRectIsNull(v51) || ![v13 count])
  {
    v38 = v13;
  }

  else
  {
    v41 = y;
    v42 = width;
    v43 = height;
    v14 = [v13 objectAtIndexedSubscript:0];
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v52.origin.x = v16;
    v52.origin.y = v18;
    v52.size.width = v20;
    v52.size.height = v22;
    MinX = CGRectGetMinX(v52);
    v53.origin.x = v16;
    v53.origin.y = v18;
    v53.size.width = v20;
    v53.size.height = v22;
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = v16;
    v54.origin.y = v18;
    v54.size.width = v20;
    v54.size.height = v22;
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v16;
    v55.origin.y = v18;
    v55.size.width = v20;
    v55.size.height = v22;
    MaxY = CGRectGetMaxY(v55);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v27 = v13;
    v28 = [v27 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v45;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v44 + 1) + 8 * i);
          [v32 frame];
          if (CGRectGetMinX(v56) < MinX)
          {
            [v32 frame];
            MinX = CGRectGetMinX(v57);
          }

          [v32 frame];
          if (MaxX < CGRectGetMaxX(v58))
          {
            [v32 frame];
            MaxX = CGRectGetMaxX(v59);
          }

          [v32 frame];
          if (CGRectGetMinY(v60) < MinY)
          {
            [v32 frame];
            MinY = CGRectGetMinY(v61);
          }

          [v32 frame];
          if (MaxY < CGRectGetMaxY(v62))
          {
            [v32 frame];
            MaxY = CGRectGetMaxY(v63);
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v29);
    }

    v64.origin.x = x;
    v64.origin.y = v41;
    v64.size.width = v42;
    v64.size.height = v43;
    MidX = CGRectGetMidX(v64);
    v65.origin.x = x;
    v65.origin.y = v41;
    v65.size.width = v42;
    v65.size.height = v43;
    MidY = CGRectGetMidY(v65);
    v35 = MidX - (MinX + (MaxX - MinX) * 0.5);
    if (!v7)
    {
      v35 = *MEMORY[0x1E695EFF8];
    }

    v36 = MidY - (MinY + (MaxY - MinY) * 0.5);
    if (v6)
    {
      v37 = v36;
    }

    else
    {
      v37 = *(MEMORY[0x1E695EFF8] + 8);
    }

    v38 = [(UIKBShapeOperator *)self shapesByRepositioningShapes:v27 withOffset:v35, v37];
  }

  v39 = v38;

  return v39;
}

- (id)shapesByRepositioningShapes:(id)a3 withOffset:(CGPoint)a4
{
  v34 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        [v11 frame];
        v13 = v12;
        v15 = v14;
        v17 = v34.x + v16;
        v19 = v34.y + v18;
        [v11 paddedFrame];
        v21 = v20;
        v23 = v22;
        v25 = v34.x + v24;
        v27 = v34.y + v26;
        v28 = [UIKBShape alloc];
        v29 = [v11 geometry];
        v30 = [(UIKBShape *)v28 initWithGeometry:v29 frame:v17 paddedFrame:v19, v13, v15, v25, v27, v21, v23];

        v31 = [v11 originalShape];
        if (v31)
        {
          v32 = [v11 originalShape];
          [(UIKBShape *)v30 setOriginalShape:v32];
        }

        else
        {
          [(UIKBShape *)v30 setOriginalShape:v11];
        }

        [v5 addObject:v30];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)shapesByResizingShapes:(id)a3 withOffset:(CGPoint)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        [v11 frame];
        v34 = v12;
        v14 = v13;
        v16 = a4.x + v15;
        v18 = fmax(a4.y + v17, 0.0);
        [v11 paddedFrame];
        v20 = v19;
        v22 = v21;
        v24 = a4.x + v23;
        v26 = fmax(a4.y + v25, 0.0);
        v27 = [UIKBShape alloc];
        v28 = [v11 geometry];
        v29 = [(UIKBShape *)v27 initWithGeometry:v28 frame:v34 paddedFrame:v14, v16, v18, v20, v22, v24, v26];

        v30 = [v11 originalShape];
        if (v30)
        {
          v31 = [v11 originalShape];
          [(UIKBShape *)v29 setOriginalShape:v31];
        }

        else
        {
          [(UIKBShape *)v29 setOriginalShape:v11];
        }

        [v5 addObject:v29];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)shapesByInsettingShapes:(id)a3 withInsets:(UIEdgeInsets)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [v11 paddedFrame];
        v12 = [UIKBShape alloc];
        v13 = [v11 geometry];
        [v11 frame];
        v14 = [UIKBShape initWithGeometry:v12 frame:"initWithGeometry:frame:paddedFrame:" paddedFrame:v13];

        v15 = [v11 originalShape];
        if (v15)
        {
          v16 = [v11 originalShape];
          [(UIKBShape *)v14 setOriginalShape:v16];
        }

        else
        {
          [(UIKBShape *)v14 setOriginalShape:v11];
        }

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end