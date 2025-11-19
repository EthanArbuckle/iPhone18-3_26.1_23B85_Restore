uint64_t TSTTableRepDrawTableName(TSTTableRep *a1, CGContext *a2, TSTAnimation *a3)
{
  v6 = [(TSTTableRep *)a1 tableLayout];
  v38.origin.x = TSTLayoutGetFrameForTableName(v6);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    result = TSTLayoutIsPartitionAlongLeft(v6);
    if (result)
    {
      v12 = [(TSTTableModel *)[(TSTTableRep *)a1 tableModel] tableName];
      if (!a1->mRecursivelyDrawingInContext && ![(TSTLayout *)v6 inPrintPreviewMode]&& (![(TSTAnimation *)a3 enabled]|| ![(TSTAnimation *)a3 drawTableName]))
      {
        [(TSDRep *)a1 setupForDrawingInLayer:a1->mOverlayTableName context:a2];
      }

      if ([(TSTEditingState *)[(TSTTableRep *)a1 editingState] editingMode]!= 7)
      {
        [-[TSTMasterLayout tableNameTextEngine](-[TSTTableRep masterLayout](a1 "masterLayout")];
      }

      result = TSTLayoutTableNameBorderEnabled(v6);
      if (result)
      {
        Space = TSTLayoutGetSpace(v6);
        [(TSTLayoutSpace *)Space lockForRead];
        v14 = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTableRep *)a1 tableInfo] tableModel] tableNameBorderStroke];
        v15 = [(TSTLayout *)v6 masterLayout];
        v39.origin.x = TSTLayoutGetFrameForTableNameBorder(v6);
        v16 = v39.origin.x;
        v17 = v39.origin.y;
        v18 = v39.size.width;
        v19 = v39.size.height;
        MaxX = CGRectGetMaxX(v39);
        v36 = v16;
        v37 = v17;
        v35.x = MaxX;
        v35.y = v17;
        [(TSDStroke *)v14 width];
        v34 = v21;
        v22 = TSTLayoutSpaceStrokeWidthForDrawing(v21, v21);
        TSTLayoutSpaceAlignStrokeCoordinates(Space, &v36, &v35, &v34);
        TSTLayoutSpaceDrawSingleStroke(v14, a2, v36, v37, v35.x, v35.y, v34, v22, v23, v24, v16, v17, v18, v19);
        Range = TSTLayoutSpaceGetRange(Space);
        VisibleRow = TSTMasterLayoutNextVisibleRow(v15, Range);
        VisibleColumn = TSTMasterLayoutNextVisibleColumn(v15, BYTE2(Range));
        LODWORD(v15) = TSTMasterLayoutPreviousVisibleColumn(v15, (BYTE4(Range) + BYTE2(Range) - 1));
        v40.origin.x = TSTLayoutSpaceGetAlignedStrokeFrameForCellRange(Space, VisibleRow | (VisibleColumn << 16) | 0x1000100000000);
        v36 = v16;
        v37 = v37 - v34 * 0.5;
        v33.x = v16;
        v33.y = CGRectGetMinY(v40);
        TSTLayoutSpaceAlignStrokeCoordinates(Space, &v36, &v33, &v34);
        TSTLayoutSpaceDrawSingleStroke(v14, a2, v36, v37, v33.x, v33.y, v34, v22, v28, v29, v16, v17, v18, v19);
        v41.origin.x = TSTLayoutSpaceGetAlignedStrokeFrameForCellRange(Space, VisibleRow | (v15 << 16) | 0x1000100000000);
        v35.x = MaxX;
        v35.y = v35.y - v34 * 0.5;
        v32.x = MaxX;
        v32.y = CGRectGetMinY(v41);
        TSTLayoutSpaceAlignStrokeCoordinates(Space, &v35.x, &v32, &v34);
        TSTLayoutSpaceDrawSingleStroke(v14, a2, v35.x, v35.y, v32.x, v32.y, v34, v22, v30, v31, v16, v17, v18, v19);
        return [(TSTLayoutSpace *)Space unlock];
      }
    }
  }

  return result;
}

void TSTTableRepDrawFrozenHeaderRegion(TSTTableRep *a1, TSTLayoutSpace *a2, CALayer *a3, CGContext *a4)
{
  v8 = a2;
  if (a2)
  {
    [(TSTLayoutSpace *)a2 lockForRead];
    GridRange = TSTLayoutSpaceGetGridRange(a2);
    if (GridRange != -1 && v10 != -1 && GridRange <= v10 && HIDWORD(GridRange) != 0xFFFFFFFF && HIDWORD(v10) != 0xFFFFFFFF && HIDWORD(GridRange) <= HIDWORD(v10))
    {
      [(TSDRep *)a1 setupForDrawingInLayer:a3 context:a4];
      ClipBoundingBox = CGContextGetClipBoundingBox(a4);
      x = ClipBoundingBox.origin.x;
      y = ClipBoundingBox.origin.y;
      width = ClipBoundingBox.size.width;
      height = ClipBoundingBox.size.height;
      if (a1)
      {
        [(TSTTableRep *)a1 transformFromCanvas];
      }

      else
      {
        memset(&v15, 0, sizeof(v15));
      }

      CGContextConcatCTM(a4, &v15);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      TSTTableRepDrawSpaceInContext(a1, a2, v17, a4);
    }

    [(TSTLayoutSpace *)a2 unlock:*&v15.a];
  }
}

void TSTTableRepDrawSpaceInContext(TSTTableRep *a1, TSTLayoutSpace *a2, CGRect a3, CGContext *a4)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] enabled])
  {
    v11 = 1;
    goto LABEL_5;
  }

  v11 = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] cellRangeCount];
  if (v11)
  {
LABEL_5:
    for (i = 0; v11 != i; ++i)
    {
      NearestRangeForLayoutRect = TSTLayoutSpaceGetNearestRangeForLayoutRect(a2, x, y, width, height);
      if (![(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] enabled])
      {
LABEL_32:
        if (a1->mIsZoomToEditOperationInProgress)
        {
          NearestRangeForLayoutRect = TSTCellRangeUnionCellRange(NearestRangeForLayoutRect, *&a1->mZoomToEditVisibleCellRange);
        }

        TSTTableRepDrawSpaceRangeInContext(a1, a2, NearestRangeForLayoutRect, a4);
        continue;
      }

      v14 = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] cellRangeAtIndex:i];
      v15 = 0;
      if (NearestRangeForLayoutRect == 0xFFFF)
      {
        goto LABEL_30;
      }

      v16 = 0xFFFFLL;
      v17 = 16711680;
      v18 = 0;
      if ((NearestRangeForLayoutRect & 0xFF0000) == 0xFF0000)
      {
        goto LABEL_31;
      }

      v15 = 0;
      if (!HIWORD(NearestRangeForLayoutRect))
      {
        goto LABEL_30;
      }

      v16 = 0xFFFFLL;
      v17 = 16711680;
      v18 = 0;
      if ((NearestRangeForLayoutRect & 0xFFFF00000000) == 0)
      {
        goto LABEL_31;
      }

      v15 = 0;
      if (v14.var0.var0 == 0xFFFF)
      {
        goto LABEL_30;
      }

      v16 = 0xFFFFLL;
      v17 = 16711680;
      v18 = 0;
      if ((*&v14 & 0xFF0000) == 0xFF0000)
      {
        goto LABEL_31;
      }

      v15 = 0;
      if (!HIWORD(*&v14))
      {
LABEL_30:
        v16 = 0xFFFFLL;
        v17 = 16711680;
        v18 = 0;
      }

      else
      {
        v16 = 0xFFFFLL;
        v17 = 16711680;
        v18 = 0;
        if ((*&v14 & 0xFFFF00000000) != 0)
        {
          v16 = 0;
          v19 = BYTE2(NearestRangeForLayoutRect) <= v14.var0.var1 ? v14.var0.var1 : BYTE2(NearestRangeForLayoutRect);
          v20 = NearestRangeForLayoutRect <= v14.var0.var0 ? v14.var0.var0 : NearestRangeForLayoutRect;
          v21 = (BYTE4(NearestRangeForLayoutRect) + BYTE2(NearestRangeForLayoutRect) - 1) >= (LOBYTE(v14.var1.var0) + v14.var0.var1 - 1) ? (LOBYTE(v14.var1.var0) + v14.var0.var1 - 1) : (BYTE4(NearestRangeForLayoutRect) + BYTE2(NearestRangeForLayoutRect) - 1);
          v22 = (NearestRangeForLayoutRect + HIWORD(NearestRangeForLayoutRect) - 1) >= (v14.var0.var0 + v14.var1.var1 - 1) ? (v14.var0.var0 + v14.var1.var1 - 1) : (NearestRangeForLayoutRect + HIWORD(NearestRangeForLayoutRect) - 1);
          v17 = 0;
          v15 = 0;
          v18 = 0;
          if (v20 <= v22 && v19 <= v21)
          {
            v18 = ((v22 - v20) << 48) + 0x1000000000000;
            v15 = (((v21 - v19) << 32) + 0x100000000) & 0xFFFF00000000;
            v17 = v19 << 16;
            v16 = v20;
          }
        }
      }

LABEL_31:
      NearestRangeForLayoutRect = v17 | v16 | v15 | v18;
      if (!TSTMasterLayoutIsEntireCellRangeHidden([(TSTTableRep *)a1 masterLayout], NearestRangeForLayoutRect))
      {
        goto LABEL_32;
      }
    }
  }
}

uint64_t TSTTableRepDrawRangeInContext(void *a1, unint64_t a2, uint64_t a3)
{
  if (BYTE2(a2) == 255)
  {
    v6 = -1;
  }

  else
  {
    v6 = BYTE2(a2);
  }

  v7 = HIDWORD(a2);
  v8 = a2;
  if (WORD2(a2))
  {
    v9 = WORD2(a2) + v6 - 1;
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v10 = [a1 tableLayout];
  if (v8 == 0xFFFF)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v8;
  }

  v12 = v6 | (v11 << 32);
  v13 = (((v11 << 32) + (v7 << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v13 = 0xFFFFFFFF00000000;
  }

  v14 = v13 | v9;
  v15 = [v10 spaceBundle];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __TSTTableRepDrawRangeInContext_block_invoke;
  v17[3] = &unk_279D4A328;
  v17[6] = v12;
  v17[7] = v14;
  v17[4] = a1;
  v17[5] = a3;
  return [v15 performActionOnEachLayoutSpace:v17];
}

uint64_t __TSTTableRepDrawRangeInContext_block_invoke(uint64_t a1, TSTLayoutSpace *a2)
{
  if (![(TSTLayoutSpace *)a2 isFrozen])
  {
    v4 = TSTLayoutSpaceIntersectionGridRange(a2, *(a1 + 48), *(a1 + 56));
    v6 = HIDWORD(v5);
    if (HIDWORD(v4) == 0xFFFFFFFF || v6 == 0xFFFFFFFF || HIDWORD(v4) > v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = ((v5 - (v4 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v5 - v4 + 1)) + 0x100000000;
    }

    if (v4 == -1 || v5 == -1 || v4 > v5)
    {
      v9 = 0;
    }

    v12 = v4 << 16;
    if (v4 == -1)
    {
      v12 = 16711680;
    }

    TSTTableRepDrawSpaceRangeInContext(*(a1 + 32), a2, v12 & 0xFFFFFFFFFFFF0000 | WORD2(v4) | (((v9 >> 16) & 0xFFFF0000 | v9) << 32), *(a1 + 40));
  }

  return 0;
}

void TSTTableRepDrawSpaceRangeInContext(TSTTableRep *a1, TSTLayoutSpace *a2, unint64_t a3, CGContext *a4)
{
  v5 = BYTE2(a3);
  if (BYTE2(a3) == 255)
  {
    v6 = -1;
  }

  else
  {
    v6 = BYTE2(a3);
  }

  v252[16] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (WORD2(a3))
  {
    v8 = WORD2(a3) + v6 - 1;
  }

  else
  {
    v8 = -1;
  }

  if (a3 == 0xFFFF)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = ((((HIDWORD(a3) << 16) - 0x100000000) >> 32) + v9);
  GridRange = TSTLayoutSpaceGetGridRange(a2);
  v13 = 0xFFFFFFFFLL;
  if (HIWORD(a3))
  {
    v13 = v10;
  }

  if (v5 != 255 && v8 != -1 && v6 <= v8 && v7 != 0xFFFF && v13 != 0xFFFFFFFF && v13 >= v9 && GridRange != -1 && v12 != -1 && GridRange <= v12)
  {
    v14 = HIDWORD(GridRange);
    if (HIDWORD(GridRange) != 0xFFFFFFFF)
    {
      v15 = HIDWORD(v12);
      if (HIDWORD(v12) != 0xFFFFFFFF && v14 <= v15)
      {
        if (v5 <= GridRange)
        {
          v5 = GridRange;
        }

        if (v8 >= v12)
        {
          v8 = v12;
        }

        if (v5 <= v8)
        {
          if (v13 >= v15)
          {
            v17 = HIDWORD(v12);
          }

          else
          {
            v17 = v13;
          }

          if (v9 <= v14)
          {
            v9 = HIDWORD(GridRange);
          }

          if (v9 <= v17 && v9 != 0xFFFFFFFF)
          {
            TSTTableRepPrepareToDrawLayoutSpace(a1, a2, a4);
            v18 = [(TSTTableRep *)a1 masterLayout];
            [(TSTTableRep *)a1 tableModel];
            v211 = [MEMORY[0x277CBEB18] array];
            v212 = [(TSTTableRep *)a1 currentAnimation];
            Range = TSTMasterLayoutGetRange(v18);
            v20 = BYTE2(Range);
            if (BYTE2(Range) == 255)
            {
              v20 = -1;
            }

            v21 = WORD2(Range) + v20 - 1;
            if (!WORD2(Range))
            {
              v21 = 0xFFFFFFFFLL;
            }

            if (Range == 0xFFFF)
            {
              v22 = 0xFFFFFFFFLL;
            }

            else
            {
              v22 = Range;
            }

            v23 = v20 | (v22 << 32);
            v24 = (((v22 << 32) + (HIDWORD(Range) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(Range))
            {
              v24 = 0xFFFFFFFF00000000;
            }

            v251[0] = v23;
            v251[1] = v24 | v21;
            EntireHeaderColumnsCellRange = TSTMasterLayoutGetEntireHeaderColumnsCellRange(v18);
            v26 = BYTE2(EntireHeaderColumnsCellRange);
            if (BYTE2(EntireHeaderColumnsCellRange) == 255)
            {
              v26 = -1;
            }

            v27 = WORD2(EntireHeaderColumnsCellRange) + v26 - 1;
            if (!WORD2(EntireHeaderColumnsCellRange))
            {
              v27 = 0xFFFFFFFFLL;
            }

            if (EntireHeaderColumnsCellRange == 0xFFFF)
            {
              v28 = 0xFFFFFFFFLL;
            }

            else
            {
              v28 = EntireHeaderColumnsCellRange;
            }

            v29 = v26 | (v28 << 32);
            v30 = (((v28 << 32) + (HIDWORD(EntireHeaderColumnsCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(EntireHeaderColumnsCellRange))
            {
              v30 = 0xFFFFFFFF00000000;
            }

            v251[2] = v29;
            v251[3] = v30 | v27;
            EntireHeaderRowsCellRange = TSTMasterLayoutGetEntireHeaderRowsCellRange(v18);
            v32 = BYTE2(EntireHeaderRowsCellRange);
            if (BYTE2(EntireHeaderRowsCellRange) == 255)
            {
              v32 = -1;
            }

            v33 = WORD2(EntireHeaderRowsCellRange) + v32 - 1;
            if (!WORD2(EntireHeaderRowsCellRange))
            {
              v33 = 0xFFFFFFFFLL;
            }

            if (EntireHeaderRowsCellRange == 0xFFFF)
            {
              v34 = 0xFFFFFFFFLL;
            }

            else
            {
              v34 = EntireHeaderRowsCellRange;
            }

            v35 = v32 | (v34 << 32);
            v36 = (((v34 << 32) + (HIDWORD(EntireHeaderRowsCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(EntireHeaderRowsCellRange))
            {
              v36 = 0xFFFFFFFF00000000;
            }

            v251[4] = v35;
            v251[5] = v36 | v33;
            EntireFooterRowsCellRange = TSTMasterLayoutGetEntireFooterRowsCellRange(v18);
            v38 = 0;
            v39 = BYTE2(EntireFooterRowsCellRange);
            if (BYTE2(EntireFooterRowsCellRange) == 255)
            {
              v39 = -1;
            }

            v40 = WORD2(EntireFooterRowsCellRange) + v39 - 1;
            if (!WORD2(EntireFooterRowsCellRange))
            {
              v40 = 0xFFFFFFFFLL;
            }

            if (EntireFooterRowsCellRange == 0xFFFF)
            {
              v41 = 0xFFFFFFFFLL;
            }

            else
            {
              v41 = EntireFooterRowsCellRange;
            }

            v42 = v39 | (v41 << 32);
            v43 = (((v41 << 32) + (HIDWORD(EntireFooterRowsCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(EntireFooterRowsCellRange))
            {
              v43 = 0xFFFFFFFF00000000;
            }

            v251[6] = v42;
            v251[7] = v43 | v40;
            do
            {
              v45 = v251[v38];
              v44 = v251[v38 + 1];
              v47 = v45 == -1 || v44 == -1 || v45 > v44;
              if (v47 || ((v48 = HIDWORD(v45), v49 = HIDWORD(v44), HIDWORD(v45) != 0xFFFFFFFF) ? (v50 = v49 == 0xFFFFFFFF) : (v50 = 1), !v50 ? (v51 = v48 > v49) : (v51 = 1), v51 || (v5 <= v45 ? (v45 = v45) : (v45 = v5), v8 >= v44 ? (v44 = v44) : (v44 = v8), v45 > v44 || (v17 >= v49 ? (v52 = v49) : (v52 = v17), v9 <= v48 ? (v53 = v48) : (v53 = v9), v53 > v52))))
              {
                v54 = -1;
                v55 = -1;
              }

              else
              {
                v55 = v44 | (v52 << 32);
                v54 = v45 | (v53 << 32);
              }

              v251[v38] = v54;
              v251[v38 + 1] = v55;
              v38 += 2;
            }

            while (v38 != 8);
            v56 = 0;
            v57 = -1;
            LODWORD(v58) = -1;
            LODWORD(v59) = -1;
            v60 = a4;
            v61 = v212;
            do
            {
              v63 = v251[v56];
              v62 = v251[v56 + 1];
              if (v59 == -1 || v57 == -1 || v59 > v57 || v58 == -1 || (v64 = HIDWORD(v57), HIDWORD(v57) == 0xFFFFFFFF) || v64 < v58)
              {
                v57 = v251[v56 + 1];
                v59 = v251[v56];
              }

              else if (v63 == -1 || v62 == -1 || v63 > v62 || (v65 = HIDWORD(v63), HIDWORD(v63) == 0xFFFFFFFF) || (v66 = HIDWORD(v62), HIDWORD(v62) == 0xFFFFFFFF) || v65 > v66)
              {
                LODWORD(v62) = v57;
                LODWORD(v63) = v59;
                v59 = v59 | (v58 << 32);
              }

              else
              {
                if (v59 >= v63)
                {
                  v63 = v63;
                }

                else
                {
                  v63 = v59;
                }

                if (v58 >= v65)
                {
                  v67 = v65;
                }

                else
                {
                  v67 = v58;
                }

                if (v57 <= v62)
                {
                  v62 = v62;
                }

                else
                {
                  v62 = v57;
                }

                if (v64 <= v66)
                {
                  v68 = v66;
                }

                else
                {
                  v68 = HIDWORD(v57);
                }

                v57 = v62 | (v68 << 32);
                v59 = v63 | (v67 << 32);
              }

              v70 = v63 == -1 || v62 == -1 || v63 > v62;
              if (v70 || (HIDWORD(v59) <= HIDWORD(v57) ? (v71 = HIDWORD(v59) == 0xFFFFFFFF) : (v71 = 1), !v71 ? (v72 = HIDWORD(v57) == 0xFFFFFFFF) : (v72 = 1), v72))
              {
                v57 = -1;
                v59 = -1;
              }

              v58 = HIDWORD(v59);
              v56 += 2;
            }

            while (v56 != 8);
            if (v59 == -1)
            {
              goto LABEL_468;
            }

            if (v57 == -1)
            {
              goto LABEL_468;
            }

            if (v59 > v57)
            {
              goto LABEL_468;
            }

            if (v58 == 0xFFFFFFFF)
            {
              goto LABEL_468;
            }

            v73 = HIDWORD(v57);
            if (HIDWORD(v57) == 0xFFFFFFFF || v73 < v58)
            {
              goto LABEL_468;
            }

            v74 = [(TSTAnimation *)v212 enabled];
            v210 = v59;
            if (v74)
            {
              v75 = [(TSDBezierPath *)TSTLayoutSpaceGetAlignedStrokeFramePathForGridRange(a2 CGPath:v59];
              path = CGPathRetain(v75);
            }

            else
            {
              path = 0;
            }

            v76 = a1;
            if ([(TSTAnimation *)v212 drawTableName])
            {
              TSTTableRepDrawTableName(a1, a4, v212);
            }

            if ((![(TSTAnimation *)v212 enabled]|| [(TSTAnimation *)v212 drawTableBackground]) && TSTTableGetBackgroundFill())
            {
              CGContextSaveGState(a4);
              if (v74)
              {
                CGContextAddPath(a4, path);
                CGContextClip(a4);
              }

              CGContextSetBlendMode(a4, kCGBlendModeClear);
              v253.origin.x = TSTLayoutSpaceGetFrame(a2);
              CGContextFillRect(a4, v253);
              CGContextRestoreGState(a4);
            }

            v206 = v74;
            if (v210)
            {
              v77 = v210 - 1;
            }

            else
            {
              v77 = 0;
            }

            if (v58)
            {
              v78 = (v58 - 1);
            }

            else
            {
              v78 = 0;
            }

            v79 = TSTLayoutSpaceGetGridRange(a2);
            LODWORD(v81) = v57 + 1;
            v82 = -1;
            v83 = -1;
            if (v57 != -2 && v77 <= v81)
            {
              v84 = v73 + 1;
              if (v73 != 4294967294 && v84 >= v78 && v79 != -1 && v80 != -1 && v79 <= v80)
              {
                v85 = HIDWORD(v79);
                if (HIDWORD(v79) != 0xFFFFFFFF)
                {
                  v86 = HIDWORD(v80);
                  if (HIDWORD(v80) != 0xFFFFFFFF && v85 <= v86)
                  {
                    v87 = v77 <= v79 ? v79 : v77;
                    v81 = v81 >= v80 ? v80 : v81;
                    if (v87 <= v81)
                    {
                      if (v84 < v86)
                      {
                        v86 = v73 + 1;
                      }

                      if (v78 <= v85)
                      {
                        v88 = HIDWORD(v79);
                      }

                      else
                      {
                        v88 = v78;
                      }

                      if (v88 <= v86)
                      {
                        v83 = v81 | (v86 << 32);
                        v82 = v87 | (v88 << 32);
                      }
                    }
                  }
                }
              }
            }

            v207 = v83;
            v208 = v82;
            v89 = v206;
            if ([(TSTAnimation *)v212 enabled]&& ![(TSTAnimation *)v212 drawCellBackground])
            {
LABEL_228:
              if (![(TSTAnimation *)v61 enabled]|| [(TSTAnimation *)v61 drawCellContent])
              {
                CGContextSaveGState(v60);
                if (v89)
                {
                  CGContextAddPath(v60, path);
                  CGContextClip(v60);
                }

                TSTTableRepDrawCellContent(v76, a2, v210, v57, v60);
                CGContextRestoreGState(v60);
              }

              if ([(TSTAnimation *)v61 enabled]&& ![(TSTAnimation *)v61 drawStrokes])
              {
                v99 = v211;
                v100 = path;
                if (![(TSTAnimation *)v61 enabled])
                {
LABEL_449:
                  if ((!-[TSTAnimation enabled](v61, "enabled") || -[TSTAnimation drawCellContent](v61, "drawCellContent")) && [v99 count])
                  {
                    CGContextSaveGState(v60);
                    if (v89)
                    {
                      CGContextAddPath(v60, v100);
                      CGContextClip(v60);
                    }

                    v247 = 0u;
                    v248 = 0u;
                    v249 = 0u;
                    v250 = 0u;
                    v195 = [v99 countByEnumeratingWithState:&v247 objects:v252 count:16];
                    if (v195)
                    {
                      v196 = v195;
                      v197 = *v248;
                      do
                      {
                        for (i = 0; i != v196; ++i)
                        {
                          if (*v248 != v197)
                          {
                            objc_enumerationMutation(v99);
                          }

                          [*(*(&v247 + 1) + 8 * i) drawInContext:v60];
                        }

                        v196 = [v99 countByEnumeratingWithState:&v247 objects:v252 count:16];
                      }

                      while (v196);
                    }

                    CGContextRestoreGState(v60);
                  }

                  if ((![(TSTAnimation *)v61 enabled]|| [(TSTAnimation *)v61 drawTableBackground]) && TSTTableGetBackgroundFill())
                  {
                    v199 = [MEMORY[0x277D6C290] currentHandler];
                    v200 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRepDrawGridRange(TSTTableRep *, TSTLayoutSpace *, TSTGridRange, TSTAnimation *, CGContextRef)"}];
                    [v199 handleFailureInFunction:v200 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 5999, @"background fill is not supported yet"}];
                  }

                  if (v100)
                  {
                    CGPathRelease(v100);
                  }

LABEL_468:
                  if (a2 && a4)
                  {
                    CGContextRestoreGState(a4);
                  }

                  goto LABEL_29;
                }

                CGContextSaveGState(v60);
                if (v89)
                {
                  CGContextAddPath(v60, path);
                  CGContextClip(v60);
                }

                v101 = v208;
                if (v208 == -1)
                {
                  v102 = v207;
                }

                else
                {
                  v102 = v207;
                  if (v207 != -1 && v208 <= v207 && HIDWORD(v208) != 0xFFFFFFFF && HIDWORD(v207) != 0xFFFFFFFF && HIDWORD(v208) <= HIDWORD(v207))
                  {
                    v102 = (v207 & 0xFFFFFFFF00000000 | (v207 + 1)) + 0x100000000;
                  }
                }

                v193 = a2;
                v194 = 1;
              }

              else
              {
                CGContextSaveGState(v60);
                v99 = v211;
                v100 = path;
                if (v89)
                {
                  CGContextAddPath(v60, path);
                  CGContextClip(v60);
                }

                v101 = v208;
                if (v208 == -1)
                {
                  v102 = v207;
                }

                else
                {
                  v102 = v207;
                  if (v207 != -1 && v208 <= v207 && HIDWORD(v208) != 0xFFFFFFFF && HIDWORD(v207) != 0xFFFFFFFF && HIDWORD(v208) <= HIDWORD(v207))
                  {
                    v102 = (v207 & 0xFFFFFFFF00000000 | (v207 + 1)) + 0x100000000;
                  }
                }

                v193 = a2;
                v194 = 0;
              }

              TSTLayoutSpaceDrawStrokes(v193, v101, v102, v194, v60);
              CGContextRestoreGState(v60);
              goto LABEL_449;
            }

            CGContextSaveGState(a4);
            if (v206)
            {
              CGContextAddPath(a4, path);
              CGContextClip(a4);
            }

            v91 = v207;
            v90 = v208;
            if (v212)
            {
              if (![(TSTAnimation *)v212 enabled]|| (v92 = [(TSTAnimation *)v212 expandBackgroundFill], v91 = v207, v90 = v208, !v92))
              {
                v90 = v210;
                v91 = v57;
              }
            }

            v214 = v90;
            v225 = HIDWORD(v90);
            v213 = HIDWORD(v91);
            v93 = [(TSTTableRep *)a1 tableLayout];
            v246 = [(TSTTableRep *)a1 masterLayout];
            v231 = v93;
            v240 = [(TSTTableInfo *)[(TSTLayout *)v93 tableInfo] tableModel];
            v94 = 0;
            if (v214 != -1 && v91 != -1 && v214 <= v91)
            {
              v94 = 0;
              if (v225 != 0xFFFFFFFF && v213 != 0xFFFFFFFF && v225 <= v213)
              {
                v94 = ((v91 - (v214 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v91 - v214 + 1)) + 0x100000000;
              }
            }

            v205 = v57;
            if (v214 == -1)
            {
              v95 = 16711680;
            }

            else
            {
              v95 = v214 << 16;
            }

            v96 = (v94 >> 16) & 0xFFFF0000;
            v221 = [(TSTMasterLayout *)v246 useBandedFill];
            v233 = objc_alloc_init(TSTCell);
            v244 = objc_alloc_init(TSTCell);
            v235 = [MEMORY[0x277CBEB68] null];
            if ([(TSTMasterLayout *)v246 isDynamicallySwappingColumns]|| [(TSTMasterLayout *)v246 isDynamicallySwappingRows])
            {
              v97 = v240;
              v98 = [(TSTTableModel *)v240 range];
              v76 = a1;
            }

            else
            {
              v98 = WORD2(v214) | ((v96 | v94) << 32) | v95;
              v76 = a1;
              v97 = v240;
            }

            v223 = TSTTableMergeRangesForCellRange(v97, v98);
            v228 = [v223 count];
            if (![(TSDCanvas *)[(TSDRep *)v76 canvas] isCanvasInteractive])
            {
              CGContextBeginTransparencyLayer(a4, 0);
            }

            if (v225 > v213)
            {
LABEL_223:
              v60 = a4;
              if (!CGRectIsEmpty(v76->mSearchSelectionBounds))
              {
                CGContextSetFillColorWithColor(a4, [objc_msgSend(MEMORY[0x277D6C2A8] "orangeColor")]);
                CGContextFillRect(a4, v76->mSearchSelectionBounds);
              }

              v61 = v212;
              v89 = v206;
              v57 = v205;
              if (![(TSDCanvas *)[(TSDRep *)v76 canvas] isCanvasInteractive])
              {
                CGContextEndTransparencyLayer(a4);
              }

              CGContextRestoreGState(a4);
              goto LABEL_228;
            }

            if (v94)
            {
              v103 = v96 == 0;
            }

            else
            {
              v103 = 1;
            }

            v104 = v103;
            v227 = v104;
            v224 = v225 + WORD2(v94) - 1;
            v222 = v95 >> 16;
            v219 = v94 + WORD1(v95) + 255;
            v106 = WORD2(v214) == 0xFFFFLL || v95 == 16711680;
            v215 = v106;
            LOWORD(VisibleRow) = v225;
            v217 = v91;
            while (1)
            {
              v108 = v240;
              v230 = VisibleRow;
              RowFill = TSTTableGetRowFill(v240, VisibleRow);
              if (v214 <= v91)
              {
                break;
              }

LABEL_258:
              VisibleRow = TSTMasterLayoutNextVisibleRow(v246, (VisibleRow + 1));
              if (VisibleRow > v213)
              {
                goto LABEL_223;
              }
            }

            v229 = RowFill;
            v110 = v214 << 16;
            v111 = v214;
            v234 = VisibleRow;
            while (1)
            {
              v242 = v110;
              v112 = v110 & 0xFF0000 | v230;
              v252[0] = 0;
              if (!v228)
              {
                break;
              }

              v232 = v232 & 0xFFFFFFFF00000000 | v112;
              [(TSTMasterLayout *)v246 modelCellIDForLayoutCellID:?];
              v113 = [v223 mergedRangeForCellID:?];
              v114 = 0;
              if (v113 == 0xFFFF || (v113 & 0xFF0000) == 0xFF0000)
              {
                goto LABEL_270;
              }

              if (!HIWORD(v113) || (v113 & 0xFFFF00000000) == 0)
              {
                break;
              }

              v218 = v218 & 0xFFFFFFFF00000000 | v113;
              v120 = [(TSTMasterLayout *)v246 layoutCellIDForModelCellID:?];
              VisibleRow = HIWORD(*&v120);
              v114 = *&v120 & 0xFF000000;
LABEL_271:
              v243 = v243 & 0xFFFFFFFF00000000 | v112;
              v116 = [(TSTMasterLayout *)v246 tableAreaForCellID:?];
              [(TSTTableModel *)v108 defaultCell:v244 forTableArea:v116];
              CellFill = TSTCellGetCellFill(v244);
              ColumnFill = TSTTableGetColumnFill(v108, VisibleRow);
              v118 = [(TSTLayout *)v231 editingSpillingTextRange];
              v119 = 0;
              if (v118 != 0xFFFF && (v118 & 0xFF0000) != 0xFF0000)
              {
                v119 = 0;
                if (HIWORD(v118))
                {
                  if ((v118 & 0xFFFF00000000) != 0)
                  {
                    if (v120.var0 >= v118)
                    {
                      v119 = 0;
                      if ((v118 + HIWORD(v118) - 1) >= v120.var0 && BYTE2(v118) <= VisibleRow)
                      {
                        v119 = (BYTE4(v118) + BYTE2(v118) - 1) >= VisibleRow;
                      }
                    }

                    else
                    {
                      v119 = 0;
                    }
                  }
                }
              }

              v239 = v112;
              v121 = v91;
              v122 = v120.var0 | (VisibleRow << 16);
              v123 = v122 | v114;
              if ([(TSTMasterLayout *)v246 isDynamicallyChangingContent])
              {
                if (v119)
                {
                  v124 = [(TSTEditingState *)[(TSTTableRep *)v76 editingState] editingCellID];
                  v125 = v124;
                  if (v124.var0 == 0xFFFF || (*&v124 & 0xFF0000) == 0xFF0000)
                  {
                    v216 = [MEMORY[0x277D6C290] currentHandler];
                    v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRepDrawBackgroundFill(TSTTableRep *, TSTLayoutSpace *, TSTGridRange, CGContextRef)"}];
                    [v216 handleFailureInFunction:v126 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 5129, @"Valid editing spilling text range but no editing cell ID"}];
                  }
                }

                else
                {
                  v125 = v122 | v114;
                }

                v226 = v125 | v226 & 0xFFFFFFFF00000000;
                if ([(TSTLayoutDynamicContentProtocol *)[(TSTMasterLayout *)v246 dynamicContentDelegate] cell:v252 forCellID:v226])
                {
                  v127 = v252[0];
                  v76 = a1;
                  v128 = v233;
LABEL_290:
                  TSTCellCopyJustStyleAndStrokes(v127, v128);
                  goto LABEL_291;
                }

                v76 = a1;
              }

              v238 = v238 & 0xFFFFFFFF00000000 | v123;
              v128 = v233;
              v129 = TSTCellAtCellIDSuppressingFormula(v240, v123, v233, 1);
              v127 = v244;
              if (v129)
              {
                goto LABEL_290;
              }

LABEL_291:
              LOWORD(VisibleRow) = v234;
              v130 = v76->mContainedTextEditingRep && ([(TSTEditingState *)[(TSTTableRep *)v76 editingState] editingCellID]& 0xFFFFFF) == v122 || ([(TSTMasterLayout *)[(TSTTableRep *)v76 masterLayout] dynamicSuppressingConditionalStylesCellID]& 0xFFFFFF) == v122;
              LOBYTE(v247) = 0;
              CellFillAndIsDefault = TSTCellGetCellFillAndIsDefault(v128, CellFill, v130, &v247);
              v132 = (v116 == 0) & v247;
              if (((v116 == 0) & v247) != 0)
              {
                v133 = v229;
              }

              else
              {
                v133 = CellFillAndIsDefault;
              }

              if (v132 && !v229)
              {
                v133 = ColumnFill ? ColumnFill : CellFillAndIsDefault;
                if (ColumnFill == 0 && v221)
                {
                  v134 = v239 == v122 ? v234 : v120.var0;
                  v133 = CellFillAndIsDefault;
                  if ([(TSTMasterLayout *)v246 shouldRowUseBandedFill:v134])
                  {
                    v133 = [(TSTMasterLayout *)v246 bandedFillObject];
                  }
                }
              }

              if (v133)
              {
                v135 = v133 == v235;
              }

              else
              {
                v135 = 1;
              }

              v136 = v135;
              if ((v136 | v227))
              {
                v91 = v121;
              }

              else
              {
                v91 = v121;
                if (v225 <= v234 && v224 >= v234 && v222 <= v239 >> 16 && (v239 >> 16) <= v219)
                {
                  v137 = TSTMasterLayoutMergeRangeAtCellID([(TSTTableRep *)v76 masterLayout], v239);
                  v220 = v220 & 0xFFFFFFFF00000000 | v239;
                  if (v119)
                  {
                    v138 = [(TSTLayout *)v231 editingSpillingTextRange];
                    if (v138 == 0xFFFF)
                    {
                      goto LABEL_330;
                    }

                    v139 = 0xFFFFLL;
                    v140 = 16711680;
                    if ((v138 & 0xFF0000) != 0xFF0000)
                    {
                      v142 = (v138 & 0xFFFF00000000) == 0 || HIWORD(v138) == 0;
                      if (v142 || v215)
                      {
LABEL_330:
                        v139 = 0xFFFFLL;
                        v140 = 16711680;
                      }

                      else
                      {
                        v139 = 0;
                        v176 = v219;
                        v177 = BYTE2(v138);
                        if (BYTE2(v138) <= v222)
                        {
                          v177 = v222;
                        }

                        if (v138 <= v225)
                        {
                          v178 = v225;
                        }

                        else
                        {
                          v178 = v138;
                        }

                        if ((BYTE4(v138) + BYTE2(v138) - 1) < v219)
                        {
                          v176 = (BYTE4(v138) + BYTE2(v138) - 1);
                        }

                        v179 = (v138 + HIWORD(v138) - 1);
                        if (v179 >= v224)
                        {
                          v179 = v224;
                        }

                        if (v178 > v179)
                        {
                          v140 = 0;
                        }

                        else
                        {
                          v140 = 0;
                          if (v177 <= v176)
                          {
                            v140 = v177 << 16;
                            v139 = v178;
                          }
                        }
                      }
                    }

                    v143 = v140 | v139;
                    v144 = v143 == v239;
                    if (v143 == v239)
                    {
                      v145 = v138;
                    }

                    else
                    {
                      v145 = v239 | 0x1000100000000;
                    }

LABEL_334:
                    if (!v144)
                    {
                      v133 = v235;
                    }
                  }

                  else
                  {
                    v145 = v137;
                    if (v137 != 0xFFFF && (v137 & 0xFF0000) != 0xFF0000 && HIWORD(v137) && (v137 & 0xFFFF00000000) != 0)
                    {
                      if (v215)
                      {
                        v146 = 0xFFFFLL;
                        v147 = 16711680;
                      }

                      else
                      {
                        v146 = 0;
                        v180 = v219;
                        v181 = BYTE2(v137);
                        if (BYTE2(v137) <= v222)
                        {
                          v181 = v222;
                        }

                        if (v137 <= v225)
                        {
                          v182 = v225;
                        }

                        else
                        {
                          v182 = v137;
                        }

                        if ((BYTE4(v137) + BYTE2(v137) - 1) < v219)
                        {
                          v180 = (BYTE4(v137) + BYTE2(v137) - 1);
                        }

                        v183 = (v137 + HIWORD(v137) - 1);
                        if (v183 >= v224)
                        {
                          v183 = v224;
                        }

                        if (v182 > v183)
                        {
                          v147 = 0;
                        }

                        else
                        {
                          v147 = 0;
                          if (v181 <= v180)
                          {
                            v147 = v181 << 16;
                            v146 = v182;
                          }
                        }
                      }

                      v144 = (v147 | v146) == v239;
                      goto LABEL_334;
                    }

                    v145 = v239 | 0x1000100000000;
                  }

                  v148 = BYTE2(v145);
                  if (BYTE2(v145) == 255)
                  {
                    v149 = -1;
                  }

                  else
                  {
                    v149 = BYTE2(v145);
                  }

                  v150 = v145;
                  if (WORD2(v145))
                  {
                    v151 = WORD2(v145) + v149 - 1;
                  }

                  else
                  {
                    v151 = -1;
                  }

                  if (v145 == 0xFFFF)
                  {
                    v152 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v152 = v145;
                  }

                  v153 = TSTLayoutSpaceGetGridRange(a2);
                  if (HIWORD(v145))
                  {
                    v155 = ((((HIDWORD(v145) << 16) - 0x100000000) >> 32) + v152);
                  }

                  else
                  {
                    v155 = 0xFFFFFFFFLL;
                  }

                  v156 = -1;
                  if (BYTE2(v145) == 255 || v151 == -1)
                  {
                    v157 = -1;
                    v76 = a1;
                  }

                  else
                  {
                    v157 = -1;
                    v47 = v149 > v151;
                    v76 = a1;
                    if (!v47 && v150 != 0xFFFF && v155 != 0xFFFFFFFF && v155 >= v152 && v153 != -1 && v154 != -1 && v153 <= v154)
                    {
                      v158 = HIDWORD(v153);
                      if (HIDWORD(v153) != 0xFFFFFFFF)
                      {
                        v159 = HIDWORD(v154);
                        if (HIDWORD(v154) != 0xFFFFFFFF && v158 <= v159)
                        {
                          v160 = v148 <= v153 ? v153 : v148;
                          v161 = v151 >= v154 ? v154 : v151;
                          if (v160 <= v161)
                          {
                            if (v155 < v159)
                            {
                              v159 = v155;
                            }

                            if (v152 <= v158)
                            {
                              v162 = HIDWORD(v153);
                            }

                            else
                            {
                              v162 = v152;
                            }

                            if (v162 <= v159)
                            {
                              v157 = v161 | (v159 << 32);
                              v156 = v160 | (v162 << 32);
                            }
                          }
                        }
                      }
                    }
                  }

                  AlignedFrameForGridRange = TSTLayoutSpaceGetAlignedFrameForGridRange(a2, v156, v157);
                  if (v133 == v235)
                  {
                    v108 = v240;
                    v128 = v233;
                    v91 = v217;
                    LOWORD(VisibleRow) = v234;
                  }

                  else
                  {
                    v167 = AlignedFrameForGridRange;
                    v168 = v164;
                    v169 = v165;
                    v170 = v166;
                    objc_opt_class();
                    v108 = v240;
                    v128 = v233;
                    v91 = v217;
                    LOWORD(VisibleRow) = v234;
                    if (objc_opt_isKindOfClass())
                    {
                      if (![(TSDFill *)v133 isClear])
                      {
                        [(TSDFill *)v133 paintRect:a4 inContext:v167, v168, v169, v170];
                      }
                    }

                    else
                    {
                      v171 = MEMORY[0x277CCACA8];
                      v172 = HIDWORD(v156);
                      if (v156 != -1 || (v173 = @"{invalid, invalid}", v172 != 0xFFFFFFFF))
                      {
                        if (v156 == -1)
                        {
                          v202 = HIDWORD(v156);
                          v184 = MEMORY[0x277CCACA8];
                          v185 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v202];
                          v171 = v184;
                          v173 = v185;
                        }

                        else
                        {
                          v201 = v156;
                          if (v172 == 0xFFFFFFFF)
                          {
                            v174 = MEMORY[0x277CCACA8];
                            v175 = @"{%u, invalid}";
                          }

                          else
                          {
                            v204 = HIDWORD(v156);
                            v174 = MEMORY[0x277CCACA8];
                            v175 = @"{%u, %u}";
                          }

                          v186 = MEMORY[0x277CCACA8];
                          v187 = [v174 stringWithFormat:v175, v201, v204];
                          v171 = v186;
                          v173 = v187;
                        }
                      }

                      v188 = HIDWORD(v157);
                      if (v157 != -1 || (v189 = @"{invalid, invalid}", v188 != 0xFFFFFFFF))
                      {
                        if (v157 == -1)
                        {
                          v203 = HIDWORD(v157);
                          v191 = v171;
                          v189 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v203];
                          v171 = v191;
                        }

                        else
                        {
                          v190 = v171;
                          if (v188 == 0xFFFFFFFF)
                          {
                            v189 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", v157, v204];
                          }

                          else
                          {
                            v189 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", v157, HIDWORD(v157)];
                          }

                          v171 = v190;
                        }
                      }

                      v192 = [v171 stringWithFormat:@"{%@->%@}", v173, v189];
                      v204 = v133;
                      NSLog(@"WARNING: invalid cell fill %@ %@", v192);
                    }
                  }

                  goto LABEL_339;
                }
              }

              v108 = v240;
LABEL_339:
              TSTCellClear(v128);
              TSTCellClear(v244);
              ++v111;
              v110 = v242 + 0x10000;
              if (v111 > v91)
              {
                goto LABEL_258;
              }
            }

            v114 = 0;
LABEL_270:
            v120.var0 = VisibleRow;
            LOBYTE(VisibleRow) = v111;
            goto LABEL_271;
          }
        }
      }
    }
  }

LABEL_29:
  [(TSDCanvas *)[(TSDRep *)a1 canvas] viewScale];
  TSTTableRepSetupUserSpaceToDeviceSpaceTransform(a1, v16, a1->mCurrentScreenScale);
}

double TSTTableRepGetImageFrameForRange(double *a1, unint64_t a2, int a3)
{
  v6 = [a1 tableLayout];
  AlignedStrokeFrameForRange = TSTLayoutGetAlignedStrokeFrameForRange(v6, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a3)
  {
    v28.origin.x = TSTLayoutGetAlignedStrokeFrameForTableNameBorder(v6);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    if (!CGRectIsEmpty(v28))
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v33.origin.x = AlignedStrokeFrameForRange;
      v33.origin.y = v9;
      v33.size.width = v11;
      v33.size.height = v13;
      v30 = CGRectUnion(v29, v33);
      AlignedStrokeFrameForRange = v30.origin.x;
      v9 = v30.origin.y;
      v11 = v30.size.width;
      v13 = v30.size.height;
    }
  }

  memset(&v27, 0, sizeof(v27));
  TSTLayoutGetTransformToDevice(v6, &v27);
  v26 = v27;
  v31.origin.x = AlignedStrokeFrameForRange;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  v32 = CGRectApplyAffineTransform(v31, &v26);
  v18 = a1[55];
  v19 = TSDMultiplyRectScalar(v32.origin.x, v32.origin.y, v32.size.width, v32.size.height, 1.0 / v18);
  v23 = TSDRoundedRectForScale(v19, v20, v21, v22, v18);
  TSDCeilSize(v24);
  return v23;
}

double TSTTableRepGetDrawnFrameInsideImageFrameForRange(double *a1, unint64_t a2)
{
  v4 = [a1 tableLayout];
  AlignedStrokeFrameForRange = TSTLayoutGetAlignedStrokeFrameForRange(v4, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memset(&v19, 0, sizeof(v19));
  TSTLayoutGetTransformToDevice(v4, &v19);
  v18 = v19;
  v20.origin.x = AlignedStrokeFrameForRange;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  v12 = a1[55];
  v13 = TSDMultiplyRectScalar(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, 1.0 / v12);
  TSDRoundedRectForScale(v13, v14, v15, v16, v12);
  return *MEMORY[0x277CBF348];
}

uint64_t TSTTableRepGetImageForRange(TSTTableRep *a1, unint64_t a2)
{
  v4 = [TSTAnimation newAnimationWithLayout:[(TSTTableRep *)a1 tableLayout] andCellRange:a2];
  v5 = v4;
  ImageFrameForRange = TSTTableRepGetImageFrameForRange(a1, a2, 0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  DrawnFrameInsideImageFrameForRange = TSTTableRepGetDrawnFrameInsideImageFrameForRange(a1, a2);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  v21 = TSDMultiplyRectScalar(ImageFrameForRange, v8, v10, v12, v20);
  v23 = v22;
  v25 = v24;
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  v27 = TSDMultiplyRectScalar(DrawnFrameInsideImageFrameForRange, v15, v17, v19, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = TSDBitmapContextCreate(3, v23);
  CGContextTranslateCTM(v34, 0.0, v25);
  CGContextScaleCTM(v34, 1.0, -1.0);
  v48.origin.x = v27;
  v48.origin.y = v29;
  v48.size.width = v31;
  v48.size.height = v33;
  CGContextClipToRect(v34, v48);
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  CGContextScaleCTM(v34, v35, v35);
  [(TSDCanvas *)[(TSDRep *)a1 canvas] viewScale];
  v37 = v36;
  CGContextTranslateCTM(v34, -ImageFrameForRange, -v8);
  [(TSTTableRep *)a1 layerFrameInScaledCanvas];
  CGContextTranslateCTM(v34, -v38, -v39);
  CGContextScaleCTM(v34, v37, v37);
  v40 = [(TSDRep *)a1 layout];
  if (v40)
  {
    [(TSDAbstractLayout *)v40 transformInRoot];
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  CGContextConcatCTM(v34, &v47);
  if (a1)
  {
    [(TSTTableRep *)a1 transformFromCanvas];
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  CGContextConcatCTM(v34, &v47);
  [(TSTTableRep *)a1 pushAnimation:v4];
  TSTTableRepDrawRangeInContext(a1, a2, v34);
  [(TSTTableRep *)a1 popAnimation];
  Image = CGBitmapContextCreateImage(v34);
  v42 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image];
  CGImageRelease(Image);
  CGContextRelease(v34);
  [(TSDCanvas *)[(TSDRep *)a1 canvas] viewScale];
  v44 = v43;
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  TSTTableRepSetupUserSpaceToDeviceSpaceTransform(a1, v44, v45);
  return v42;
}

uint64_t TSTTableRepPrepareToDrawLayoutSpace(TSTTableRep *a1, TSTLayoutSpace *a2, CGContextRef c)
{
  if (a2)
  {
    CGContextSaveGState(c);
    [(TSTLayoutSpace *)a2 transformToCanvas];
  }

  else
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRepPrepareToDrawLayoutSpace(TSTTableRep *, TSTLayoutSpace *, CGContextRef)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 4786, @"invalid nil value for '%s'", "space"}];
    CGContextSaveGState(c);
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(c, &transform);
  if ([(TSDCanvas *)[(TSDRep *)a1 canvas] isDrawingIntoPDF])
  {
    goto LABEL_5;
  }

  v10 = 0uLL;
  memset(&transform, 0, sizeof(transform));
  if (a2)
  {
    [(TSTLayoutSpace *)a2 transformToDevice];
    v10 = 0uLL;
  }

  *&v11.c = v10;
  *&v11.tx = v10;
  *&v11.a = v10;
  CGContextGetCTM(&v11, c);
  if (transform.a >= 0.0 && transform.d >= 0.0 && transform.ty + transform.b + transform.d * 0.0 == transform.ty + transform.d * 0.0 + transform.b * 0.0 && transform.tx + transform.c + transform.a * 0.0 == transform.tx + transform.c * 0.0 + transform.a * 0.0 && v11.b == 0.0 && v11.c == 0.0)
  {
    v8 = 1;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  [(TSTLayoutSpace *)a2 setDrawPreventAntialias:v8];
  [(TSTLayoutSpace *)a2 setDrawBlackAndWhite:0];
  result = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] enabled];
  if (result)
  {
    result = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] drawsBlackAndWhite];
    if (result)
    {
      return [(TSTLayoutSpace *)a2 setDrawBlackAndWhite:1];
    }
  }

  return result;
}

uint64_t TSTTableRepDrawCellContent(void *a1, TSTLayoutSpace *a2, unint64_t a3, unint64_t a4, CGContext *a5)
{
  v361 = *MEMORY[0x277D85DE8];
  v320 = [a1 tableLayout];
  v10 = [v320 masterLayout];
  if (![objc_msgSend(a1 "masterLayout")] || (result = TSTTableNumberOfPopulatedCells(objc_msgSend(a1, "tableModel")), result <= 0x19))
  {
    v12 = HIDWORD(a3);
    v13 = HIDWORD(a4);
    result = [a1 isDrawingInFlippedContext];
    v297 = result;
    v14 = a4 == -1 || a3 == -1;
    v15 = v14 || a3 > a4;
    v16 = v15;
    v309 = v16;
    v17 = 0;
    if (v15)
    {
      v18 = HIDWORD(a3);
    }

    else
    {
      v18 = HIDWORD(a3);
      if (v12 != 0xFFFFFFFF && v13 != 0xFFFFFFFF && v12 <= v13)
      {
        v17 = ((a4 - (a3 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (a4 - a3 + 1)) + 0x100000000;
      }
    }

    v287 = v18;
    if (v18 <= v13)
    {
      v19 = a3 << 16;
      v307 = v19;
      if (a3 == -1)
      {
        v19 = 16711680;
      }

      v306 = (a4 - a3 + 1) | 0x100000000;
      v20 = a3 << 16;
      v22 = (~a3 & 0xFFFF00000000) != 0 && v19 != 16711680;
      v322 = v22;
      v23 = (v17 & 0xFFFF00000000) != 0;
      if (!v17)
      {
        v23 = 0;
      }

      v304 = v23;
      v286 = v19 >> 16;
      v284 = v287 + WORD2(v17) - 1;
      v285 = v17 + WORD1(v19) + 255;
      LODWORD(result) = v287;
      v272 = a5;
      v333 = a1;
      v326 = v10;
      v308 = HIDWORD(a4);
      v305 = a3 << 16;
      do
      {
        v325 = result;
        v24 = v309;
        if (result == -1)
        {
          v24 = 1;
        }

        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v306;
        }

        v26 = v307 | (((v25 >> 16) & 0x10000 | v25) << 32) | result;
        if (v20)
        {
          v27 = result | v20;
          v354.a = 0.0;
          v314 = v314 & 0xFFFFFFFF00000000 | v27;
          v28 = [v10 cell:&v354 forCellID:?];
          v354.a = 0.0;
          if ((v28 & 1) == 0)
          {
            v293 = v293 & 0xFFFFFFFF00000000 | v27;
            v292 = v292 & 0xFFFFFFFF00000000 | TSTLayoutCellLeftOfCell(v320, v293, 0);
            v26 = TSTCellRangeUnionCellID(v26, v292);
          }
        }

        v29 = BYTE2(v26);
        v30 = HIDWORD(v26);
        v31 = (BYTE4(v26) + BYTE2(v26) - 1);
        if (v31 != TSTMasterLayoutGetTableNumberOfColumns(v10) - 1)
        {
          v32 = v26 | (v31 << 16);
          v354.a = 0.0;
          v303 = v303 & 0xFFFFFFFF00000000 | v32;
          v33 = [v10 cell:&v354 forCellID:?];
          v354.a = 0.0;
          if ((v33 & 1) == 0)
          {
            v283 = v283 & 0xFFFFFFFF00000000 | v32;
            v282 = v282 & 0xFFFFFFFF00000000 | TSTLayoutCellRightOfCell(v320, v32, 0);
            v26 = TSTCellRangeUnionCellID(v26, v282);
            v30 = HIDWORD(v26);
            v29 = BYTE2(v26);
          }
        }

        v34 = v5;
        if (v29 == 255)
        {
          v35 = -1;
        }

        else
        {
          v35 = v29;
        }

        if (v30)
        {
          v36 = v30 + v35 - 1;
        }

        else
        {
          v36 = -1;
        }

        if (v26 == 0xFFFF)
        {
          v37 = 0xFFFFFFFFLL;
        }

        else
        {
          v37 = v26;
        }

        v38 = ((((v30 << 16) - 0x100000000) >> 32) + v37);
        GridRange = TSTLayoutSpaceGetGridRange(a2);
        v41 = 0;
        LOWORD(v42) = -1;
        if (HIWORD(v26))
        {
          v43 = v38;
        }

        else
        {
          v43 = 0xFFFFFFFFLL;
        }

        v44 = -1;
        v45 = -1;
        if (v29 == 255)
        {
          v323 = -1;
          v47 = v333;
          v5 = v34;
        }

        else
        {
          v46 = v36 == -1 || v35 > v36;
          v323 = -1;
          v47 = v333;
          v5 = v34;
          if (!v46)
          {
            v41 = 0;
            LOWORD(v42) = -1;
            v45 = -1;
            if (v26 == 0xFFFF)
            {
              goto LABEL_86;
            }

            v48 = v43 != 0xFFFFFFFF && v43 >= v37;
            v323 = -1;
            if (v48)
            {
              v41 = 0;
              LOWORD(v42) = -1;
              v45 = -1;
              if (GridRange == -1 || v40 == -1)
              {
                goto LABEL_86;
              }

              v323 = -1;
              if (GridRange > v40)
              {
                goto LABEL_88;
              }

              v41 = 0;
              v49 = HIDWORD(GridRange);
              LOWORD(v42) = -1;
              v45 = -1;
              if (HIDWORD(GridRange) == 0xFFFFFFFF)
              {
                goto LABEL_86;
              }

              v50 = HIDWORD(v40);
              if (HIDWORD(v40) == 0xFFFFFFFF)
              {
                v323 = -1;
                LOWORD(v42) = -1;
              }

              else
              {
                v323 = -1;
                LOWORD(v42) = -1;
                if (v49 > v50)
                {
                  goto LABEL_88;
                }

                if (v29 <= GridRange)
                {
                  v51 = GridRange;
                }

                else
                {
                  v51 = v29;
                }

                if (v36 >= v40)
                {
                  v45 = v40;
                }

                else
                {
                  v45 = v36;
                }

                v323 = v51;
                if (v51 > v45)
                {
                  goto LABEL_85;
                }

                if (v43 >= v50)
                {
                  v43 = HIDWORD(v40);
                }

                v42 = v37 <= v49 ? HIDWORD(GridRange) : v37;
                v52 = v43 < v42;
                if (v43 < v42)
                {
LABEL_85:
                  v41 = 0;
                  LOWORD(v42) = -1;
                  v45 = -1;
LABEL_86:
                  v323 = -1;
                  goto LABEL_88;
                }

                v44 = v323;
                if (v45 == -1)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = 0;
                  if (v43 == 0xFFFFFFFF)
                  {
                    v52 = 1;
                  }

                  if (v42 != 0xFFFFFFFF && !v52)
                  {
                    v41 = ((v45 - v323 + 1) | ((v43 - v42) << 32)) + 0x100000000;
                  }
                }
              }
            }
          }
        }

LABEL_88:
        v310 = v44;
        v311 = v45;
        if (v44 == -1)
        {
          v53 = 16711680;
        }

        else
        {
          v53 = v44 << 16;
        }

        v54 = (v41 >> 16) & 0xFFFF0000;
        v55 = v42;
        v56 = [[TSTLayoutCellIterator alloc] initWithLayout:v320 range:v53 & 0xFFFFFFFFFFFF0000 | ((v54 | v41) << 32) | v42 flags:1];
        v346 = [v326 isDynamicallyHidingRowsCols];
        v349 = v56;
        if (TSTLayoutCellIteratorGetNextCell(v56, v351))
        {
          v58 = v55 != 0xFFFFLL && v53 != 16711680;
          v302 = v58;
          if (v41)
          {
            v59 = v54 == 0;
          }

          else
          {
            v59 = 1;
          }

          v60 = !v59;
          v296 = v60;
          v290 = v53 >> 16;
          v291 = v55;
          v288 = v55 + WORD2(v41) - 1;
          v289 = v41 + WORD1(v53) + 255;
          v342 = 0xFFFFFFLL;
          v10 = v326;
          while (2)
          {
            v61 = v352;
            v350 = v351[1];
            v62 = HIBYTE(v351[0]);
            if (v352 == 0xFFFF)
            {
              goto LABEL_117;
            }

            v63 = (v352 & 0xFF0000) == 0xFF0000 || HIWORD(v352) == 0;
            v64 = v63 || (v352 & 0xFFFF00000000) == 0;
            if (v64 || (WORD2(v351[0]) | (BYTE6(v351[0]) << 16)) == (v352 & 0xFFFFFF))
            {
              goto LABEL_117;
            }

            v66 = v352 >> 16;
            if (v322 && v304)
            {
              v77 = 0;
              if (BYTE2(v352) <= v286)
              {
                v78 = v286;
              }

              else
              {
                v78 = BYTE2(v352);
              }

              if (v352 <= v287)
              {
                v79 = v287;
              }

              else
              {
                v79 = v352;
              }

              if ((BYTE4(v352) + BYTE2(v352) - 1) >= v285)
              {
                v80 = v285;
              }

              else
              {
                v80 = (BYTE4(v352) + BYTE2(v352) - 1);
              }

              if ((v352 + HIWORD(v352) - 1) >= v284)
              {
                v81 = v284;
              }

              else
              {
                v81 = (v352 + HIWORD(v352) - 1);
              }

              v82 = 0;
              v83 = 0;
              v84 = 0;
              if (v79 <= v81 && v78 <= v80)
              {
                v84 = ((v81 - v79) << 48) + 0x1000000000000;
                v83 = (((v80 - v78) << 32) + 0x100000000) & 0xFFFF00000000;
                v82 = v78 << 16;
                v77 = v79;
              }
            }

            else
            {
              v83 = 0;
              v84 = 0;
              v77 = 0xFFFFLL;
              v82 = 16711680;
            }

            v85 = v82 | v77 | v83 | v84;
            if (v85 == 0xFFFF || (v85 & 0xFF0000) == 0xFF0000 || !HIWORD(v85) || (v85 & 0xFFFF00000000) == 0 || v325 != v85)
            {
              goto LABEL_117;
            }

            if (v302 && v296)
            {
              v86 = 0;
              v87 = BYTE2(v352);
              if (BYTE2(v352) <= v290)
              {
                v87 = v290;
              }

              if (v352 <= v291)
              {
                v88 = v291;
              }

              else
              {
                v88 = v352;
              }

              if ((BYTE4(v352) + BYTE2(v352) - 1) >= v289)
              {
                v89 = v289;
              }

              else
              {
                v89 = (BYTE4(v352) + BYTE2(v352) - 1);
              }

              if ((v352 + HIWORD(v352) - 1) >= v288)
              {
                v90 = v288;
              }

              else
              {
                v90 = (v352 + HIWORD(v352) - 1);
              }

              v91 = 0;
              v92 = 0;
              v93 = 0;
              if (v88 <= v90 && v87 <= v89)
              {
                v93 = ((v90 - v88) << 48) + 0x1000000000000;
                v92 = (((v89 - v87) << 32) + 0x100000000) & 0xFFFF00000000;
                v91 = v87 << 16;
                v86 = v88;
              }
            }

            else
            {
              v92 = 0;
              v93 = 0;
              v86 = 0xFFFFLL;
              v91 = 16711680;
            }

            v128 = v91 | v86 | v92 | v93;
            if (v128 == 0xFFFF || (v128 & 0xFF0000) == 0xFF0000 || !HIWORD(v128) || (v128 & 0xFFFF00000000) == 0 || BYTE6(v351[0]) != BYTE2(v128))
            {
LABEL_117:
              LOBYTE(v66) = BYTE6(v351[0]);
              LOWORD(v61) = WORD2(v351[0]);
            }

            else
            {
              v62 = BYTE3(v352);
              v275 = v275 & 0xFFFFFFFF00000000 | v352;
              if (([v10 cell:&v350 forCellID:?] & 1) == 0)
              {
                v350 = objc_alloc_init(TSTCell);
                v129 = [v47 tableModel];
                v271 = v61 | v271 & 0xFFFFFFFF00000000;
                TSTCellAtCellID(v129, v61, v350);
              }
            }

            if (!v350)
            {
              goto LABEL_177;
            }

            v67 = (v66 << 16) | (v62 << 24) | v61;
            v5 = v67 | v5 & 0xFFFFFFFF00000000;
            v68 = [v10 modelCellIDForLayoutCellID:v5];
            v69 = [v10 cellIDToWPColumnCache];
            HIDWORD(v70) = v68;
            LODWORD(v70) = v68;
            v71 = [v69 objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", (v70 >> 16) & 0xFFFF00FF)}];
            if (!v71)
            {
              if (v350 && *(&v350->mPrivate + 1) << 8 == 2304)
              {
                v72 = [(TSTRichTextPayload *)v350->mPrivate.mRichTextPayload storage];
              }

              else
              {
                v72 = NSStringFromNativeTSTCell(v350);
              }

              v71 = v72;
            }

            if (v346)
            {
              r1_24 = v67 | r1_24 & 0xFFFFFFFF00000000;
              if ([v10 isDynamicallyHidingRowsColsCellID:?])
              {
                goto LABEL_177;
              }
            }

            v73 = v71;
            r1 = v350;
            v336 = HIDWORD(v351[0]);
            v341 = [v47 tableLayout];
            v74 = [v47 tableModel];
            v337 = [objc_msgSend(v47 "masterLayout")];
            v358 = 0;
            v75 = [objc_msgSend(v47 "masterLayout")];
            context = objc_autoreleasePoolPush();
            objc_opt_class();
            v348 = v71;
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [(TSWPStorage *)v71 length])
            {
              v76 = 1;
            }

            else
            {
              objc_opt_class();
              v76 = (objc_opt_isKindOfClass() & 1) != 0 && [(TSWPStorage *)v71 length]!= 0;
            }

            v94 = v67 | 0x1000100000000;
            if (([objc_msgSend(v47 "masterLayout")] & 1) == 0 && (objc_msgSend(objc_msgSend(v47, "masterLayout"), "isDynamicallyHidingRowsColsCellID:", v67) & 1) == 0)
            {
              if (![objc_msgSend(v47 "masterLayout")])
              {
                goto LABEL_184;
              }

              if (r1 && (r1->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType - 263) <= 4)
              {
                TSTCellClearValue(r1);
              }

              if (TSTTableBadgeIsDrawingControlCell(r1))
              {
LABEL_184:
                v335 = v5;
                v95 = TSTMasterLayoutMergeRangeAtCellID([v47 masterLayout], v67);
                v96 = v95;
                v97 = (~v95 & 0xFF0000) != 0 && v95 != 0xFFFF;
                v328 = v97;
                if (v97)
                {
                  v98 = (v95 & 0xFFFF00000000) != 0;
                  v99 = HIWORD(v95);
                  v100 = HIWORD(v95) != 0;
                  v101 = v76;
                  v102 = v100 && v98;
                  v103 = v47;
                  if (v100 && v98)
                  {
                    v104 = v96;
                  }

                  else
                  {
                    v104 = v67 | 0x1000100000000;
                  }

                  v105 = [v103 canvas];
                  v324 = v101;
                  if (!v101)
                  {
                    v94 = v104;
                    v47 = v333;
                    v10 = v326;
                    v5 = v335;
                    v76 = v101;
                    goto LABEL_480;
                  }

                  v319 = v105;
                  if (v102)
                  {
                    v94 = v96;
                    if (BYTE2(v96) == 255)
                    {
                      v106 = -1;
                    }

                    else
                    {
                      v106 = BYTE2(v96);
                    }

                    v107 = WORD2(v96) + v106 - 1;
                    if (!WORD2(v96))
                    {
                      v107 = 0xFFFFFFFFLL;
                    }

                    if (v96 == 0xFFFF)
                    {
                      v108 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v108 = v96;
                    }

                    v109 = v106 | (v108 << 32);
                    v110 = (((v108 << 32) + (HIDWORD(v96) << 16)) & 0xFFFFFFFF00000000 | v107) - 0x100000000;
                    tx = TSTLayoutSpaceGetAlignedContentFrameForGridRange(a2, v109, v110);
                    ty = v111;
                    ContentFrameForGridRange = TSTLayoutSpaceGetContentFrameForGridRange(a2, v109, v110);
                    v113 = v112;
                    if ([objc_msgSend(v333 "masterLayout")])
                    {
                      v114 = [objc_msgSend(v333 "tableModel")];
                      if (HIWORD(v114))
                      {
                        if ((v114 & 0xFFFF00000000) != 0 && v114 <= v96 && (v114 + HIWORD(v114) - 1) >= v96 && BYTE2(v114) <= BYTE2(v96))
                        {
                          v115 = (BYTE4(v114) + BYTE2(v114) - 1);
                          if (v115 >= BYTE2(v96) && v115 >= (BYTE4(v96) + BYTE2(v96) - 1) && (v114 + HIWORD(v114) - 1) >= (v96 + v99 - 1))
                          {
                            rect = v96 + v99 - 1;
                            v116 = [objc_msgSend(v333 "tableModel")];
                            v117 = [objc_msgSend(v333 "masterLayout")];
                            v118 = 0;
                            if (v116 == 0xFFFF)
                            {
                              v119 = 0xFFFFLL;
                              v120 = 16711680;
                              v121 = 0;
                              a5 = v272;
                            }

                            else
                            {
                              v119 = 0xFFFFLL;
                              v120 = 16711680;
                              v121 = 0;
                              a5 = v272;
                              if ((v116 & 0xFF0000) != 0xFF0000)
                              {
                                v118 = 0;
                                if ((v116 & 0xFFFF00000000) != 0)
                                {
                                  v122 = v117 + HIWORD(v116);
                                  v119 = 0xFFFFLL;
                                  v120 = 16711680;
                                  v121 = 0;
                                  if (v117 + HIWORD(v116))
                                  {
                                    v119 = 0;
                                    v123 = BYTE2(v96);
                                    if (BYTE2(v96) <= BYTE2(v116))
                                    {
                                      v123 = BYTE2(v116);
                                    }

                                    if (v96 <= v116)
                                    {
                                      v124 = v116;
                                    }

                                    else
                                    {
                                      v124 = v96;
                                    }

                                    if ((BYTE4(v96) + BYTE2(v96) - 1) >= (BYTE4(v116) + BYTE2(v116) - 1))
                                    {
                                      v125 = (BYTE4(v116) + BYTE2(v116) - 1);
                                    }

                                    else
                                    {
                                      v125 = (BYTE4(v96) + BYTE2(v96) - 1);
                                    }

                                    if (rect >= (v116 + v122 - 1))
                                    {
                                      v126 = (v116 + v122 - 1);
                                    }

                                    else
                                    {
                                      v126 = rect;
                                    }

                                    v120 = 0;
                                    v118 = 0;
                                    v121 = 0;
                                    if (v124 <= v126 && v123 <= v125)
                                    {
                                      v121 = ((v126 - v124) << 48) + 0x1000000000000;
                                      v118 = (((v125 - v123) << 32) + 0x100000000) & 0xFFFF00000000;
                                      v120 = v123 << 16;
                                      v119 = v124;
                                    }
                                  }
                                }

                                else
                                {
                                  v119 = 0xFFFFLL;
                                  v120 = 16711680;
                                  v121 = 0;
                                }
                              }
                            }

                            v140 = v120 | v119 | v118 | v121;
                            if (BYTE2(v140) == 255)
                            {
                              v141 = -1;
                            }

                            else
                            {
                              v141 = BYTE2(v140);
                            }

                            v142 = WORD2(v140) + v141 - 1;
                            v143 = HIDWORD(v140);
                            if (!WORD2(v140))
                            {
                              v142 = 0xFFFFFFFFLL;
                            }

                            if (v140 == 0xFFFF)
                            {
                              v140 = 0xFFFFFFFFLL;
                            }

                            else
                            {
                              v140 = v140;
                            }

                            v109 = v141 | (v140 << 32);
                            v144 = (((v140 << 32) + (v143 << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
                            if (!HIWORD(v121))
                            {
                              v144 = 0xFFFFFFFF00000000;
                            }

                            v110 = v144 | v142;
                          }
                        }
                      }
                    }

                    v145 = TSTLayoutSpaceIntersectionGridRange(a2, v109, v110);
                    AlignedContentFrameForGridRange = TSTLayoutSpaceGetAlignedContentFrameForGridRange(a2, v145, v146);
                    v299 = v148;
                    v300 = AlignedContentFrameForGridRange;
                    width = v149;
                    recta = v150;
                    v47 = v333;
                    v10 = v326;
LABEL_262:
                    v357 = 0;
                    v356 = 0;
                    v355 = 1;
                    v152 = 0.0;
                    v151 = 0.0;
                    v154 = 0.0;
                    v153 = 0.0;
                    CGContextSaveGState(a5);
                    v155 = v75;
                    TSTCellTextProperties(r1, v74, v75, &v357, &v356, &v355, &v358);
                    v156 = [objc_msgSend(v47 "layout")];
                    if (objc_opt_respondsToSelector())
                    {
                      v157 = [v156 pageNumber];
                    }

                    else
                    {
                      v157 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v76 = v324;
                    v158 = r1;
                    if (objc_opt_respondsToSelector())
                    {
                      v159 = [v156 pageCount];
                    }

                    else
                    {
                      v159 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v321 = v155;
                    if ([objc_msgSend(v47 "masterLayout")])
                    {
                      objc_opt_class();
                      v160 = v348;
                      if (TSUDynamicCast())
                      {
                        if (r1 && *(&r1->mPrivate + 1) << 8 == 2304)
                        {
                          v161 = [(TSTRichTextPayload *)r1->mPrivate.mRichTextPayload storage];
                        }

                        else
                        {
                          v161 = NSStringFromNativeTSTCell(r1);
                        }

                        v160 = v161;
                      }

                      v165 = [v47 masterLayout];
                      LODWORD(v270) = 0;
                      v164 = [v165 validateCellForDrawing:v321 cell:r1 contents:v160 wrap:v357 verticalAlignment:v355 padding:v358 layoutCacheFlags:v270 pageNumber:v157 pageCount:v159];
LABEL_280:
                      if (!v164)
                      {
                        goto LABEL_281;
                      }
                    }

                    else
                    {
                      if (v337)
                      {
                        v162 = [v47 masterLayout];
                        LODWORD(v270) = 15;
                        v163 = v155;
                        v160 = v348;
                        v164 = [v162 validateCellForDrawing:v163 cell:r1 contents:v348 wrap:v357 verticalAlignment:v355 padding:v358 layoutCacheFlags:v270 pageNumber:v157 pageCount:v159];
                        goto LABEL_280;
                      }

                      objc_opt_class();
                      v160 = v348;
                      v164 = TSUDynamicCast();
                      if (!v164)
                      {
LABEL_281:
                        v166 = [v47 masterLayout];
                        LODWORD(v270) = 15;
                        v164 = [v166 validateCellForDrawing:v321 cell:r1 contents:v160 wrap:v357 verticalAlignment:v355 padding:v358 layoutCacheFlags:v270 pageNumber:v157 pageCount:v159];
                        if (!v164)
                        {
                          v167 = [MEMORY[0x277D6C290] currentHandler];
                          v168 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellRange TSTTableRepDrawIndividualCellContent(TSTTableRep *, TSTLayoutSpace *, TSTGridRange, TSTCell *, TSTCellID, id, TSTCellIteratorData, TSTCellRange, BOOL, NSMutableArray *, CGContextRef)"}];
                          [v167 handleFailureInFunction:v168 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 5533, @"No TSWPColumn layout rock found."}];
                          v164 = 0;
                        }
                      }
                    }

                    v317 = v164;
                    [v164 typographicBoundsForCell];
                    v173 = v171;
                    v174 = v172;
                    if (v358)
                    {
                      v312 = v172;
                      v175 = v171;
                      v176 = v169;
                      v338 = width;
                      v177 = v170;
                      [v358 topInset];
                      v179 = v178;
                      [v358 leftInset];
                      v180 = v113;
                      v182 = v181;
                      [v358 bottomInset];
                      v154 = v183;
                      [v358 rightInset];
                      v185 = v184;
                      v186 = v182;
                      v113 = v180;
                      v152 = v179;
                      v151 = TSTMasterLayoutApplyMinimumHorizontalInset(v186);
                      v153 = TSTMasterLayoutApplyMinimumHorizontalInset(v185);
                      v298 = v176 - v151;
                      v295 = v177 - v152;
                      width = v338;
                      v173 = v175 - (-v153 - v151);
                      v174 = v312 - (-v154 - v152);
                    }

                    else
                    {
                      v295 = v170;
                      v298 = v169;
                    }

                    memset(&v354, 0, sizeof(v354));
                    CGAffineTransformMakeTranslation(&v354, tx, ty);
                    v318 = v153;
                    if (v328 && HIWORD(v96) && (v96 & 0xFFFF00000000) != 0)
                    {
                      v359 = v354;
                      CGAffineTransformInvert(&transform, &v359);
                      *&v362.origin.y = v299;
                      v362.origin.x = v300;
                      v362.size.width = width;
                      v362.size.height = recta;
                      v363 = CGRectApplyAffineTransform(v362, &transform);
                      y = v363.origin.y;
                      width = v363.size.width;
                      recta = v363.size.height;
LABEL_312:
                      v5 = v335;
                      goto LABEL_457;
                    }

                    if (r1)
                    {
                      v188 = *&r1->mPrivate >> 8;
                    }

                    else
                    {
                      LOBYTE(v188) = 0;
                    }

                    v363.origin.x = *MEMORY[0x277CBF348];
                    y = *(MEMORY[0x277CBF348] + 8);
                    if (v328 && HIWORD(v96) && (v96 & 0xFFFF00000000) != 0 || v188 != 9 && v188 != 3)
                    {
                      goto LABEL_312;
                    }

                    v5 = v335;
                    if (!v357 && v173 > v113)
                    {
                      v189 = v356;
                      v190 = [v47 tableLayout];
                      v191 = v190;
                      *&v192 = 0xFFFFFFLL;
                      *(&v192 + 1) = 0xFFFFFFLL;
                      *&v359.a = v192;
                      if (BYTE2(v336) == 255)
                      {
                        v193 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v193 = BYTE2(v336);
                      }

                      if (v336 == 0xFFFF)
                      {
                        v194 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v194 = v336;
                      }

                      *&v195 = v193 | (v194 << 32);
                      transform.a = v195;
                      transform.b = v195;
                      transform.c = v195;
                      transform.d = v195;
                      TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns([v190 masterLayout]);
                      txa = v191;
                      v197 = [v191 editingSpillingTextRange];
                      v198 = 0;
                      if (v197 != 0xFFFF && (v197 & 0xFF0000) != 0xFF0000)
                      {
                        v198 = 0;
                        if (HIWORD(v197))
                        {
                          if ((v197 & 0xFFFF00000000) != 0)
                          {
                            v198 = v336 >= v197 && (v197 + HIWORD(v197) - 1) >= v336;
                          }
                        }
                      }

                      v280 = v197;
                      v329 = v189;
                      if ([txa layoutDirectionIsLeftToRight])
                      {
                        if (v189 <= 4 && ((1 << v189) & 0x15) != 0)
                        {
                          goto LABEL_317;
                        }

LABEL_326:
                        v199 = v189;
                        goto LABEL_327;
                      }

                      if ((v189 & 0xFFFFFFFB) == 0)
                      {
                        goto LABEL_328;
                      }

                      if (v189 == 1)
                      {
                        v199 = 0;
                      }

                      else
                      {
                        if (v189 != 2 && v189 != 4)
                        {
                          goto LABEL_326;
                        }

LABEL_317:
                        v199 = v189;
                      }

                      if (v311 != BYTE2(v336))
                      {
                        LOWORD(v359.a) = v336;
                        BYTE2(v359.a) = BYTE2(v336) + 1;
                        HIWORD(v359.a) = 1;
                        v200 = v311 - BYTE2(v336);
                        if (v311 <= BYTE2(v336))
                        {
                          v200 = 0;
                        }

                        WORD2(v359.a) = v200;
                      }

LABEL_327:
                      if (v199 - 1 > 1)
                      {
                        v273 = 0;
                        v205 = 0.0;
LABEL_342:
                        v274 = -1;
                      }

                      else
                      {
LABEL_328:
                        LOWORD(v359.b) = v336;
                        HIWORD(v359.b) = 1;
                        if (TableNumberOfHeaderColumns <= BYTE2(v336))
                        {
                          v201 = v323 + TableNumberOfHeaderColumns;
                        }

                        else
                        {
                          v201 = v323;
                        }

                        if (TableNumberOfHeaderColumns <= BYTE2(v336))
                        {
                          v202 = v323 + TableNumberOfHeaderColumns;
                        }

                        else
                        {
                          v202 = v310;
                        }

                        v203 = BYTE2(v336) - v201;
                        if (BYTE2(v336) <= v201)
                        {
                          v203 = 0;
                        }

                        v273 = v203;
                        v274 = v202;
                        BYTE2(v359.b) = v202;
                        WORD2(v359.b) = v203;
                        TSTLayoutSpaceGetFrameForGridRange(a2, *&v195, *&v195);
                        if (v189 == 2)
                        {
                          v205 = v204 * 0.5;
                        }

                        else
                        {
                          v205 = 0.0;
                        }

                        if (BYTE2(v336) == v323)
                        {
                          LODWORD(v359.b) = 0xFFFFFF;
                          goto LABEL_342;
                        }
                      }

                      v206 = 0;
                      rectb = 0;
                      v301 = v336 & 0xFF000000 | (BYTE2(v336) << 16) | v336;
                      v207 = BYTE2(v336) < BYTE2(v280) && v198;
                      v279 = v207;
                      v208 = BYTE2(v336) > (BYTE4(v280) + BYTE2(v280) - 1) && v198;
                      v278 = v208;
                      v339 = &v359;
                      p_transform = &transform;
                      v210 = 1;
                      v5 = v335;
                      while (1)
                      {
                        v211 = v210;
                        a = v339->a;
                        if (LOWORD(v339->a) != 0xFFFF)
                        {
                          v14 = (*&a & 0xFF0000) == 16711680;
                          v213 = *&a & 0xFFFF00000000;
                          v214 = HIWORD(*&a);
                          v215 = v14 || v214 == 0;
                          if (!v215 && v213 != 0)
                          {
                            if (v206)
                            {
                              v281 = v281 & 0xFFFFFFFF00000000 | v301;
                              v217 = TSTLayoutCellLeftOfCell(txa, v281, 1);
                              v218 = v342;
                              if (v278)
                              {
                                v218 = v342;
                                if (BYTE2(v217) < (BYTE4(v280) + BYTE2(v280) - 1))
                                {
                                  v218 = v280;
                                  v217 = v280;
                                }
                              }

                              if (v217 != 0xFFFF && (*&v217 & 0xFF0000) != 0xFF0000 && v218 != 0xFFFF && (v218 & 0xFF0000) != 0xFF0000 && HIWORD(v218) && (v218 & 0xFFFF00000000) != 0)
                              {
                                v219 = HIDWORD(v218) + WORD1(v218);
                                BYTE2(v359.b) = v219;
                                v273 += v274 + (-v219 | 0xFFFFFF00);
                                v274 = v219;
                                WORD2(v359.b) = v273;
                              }
                            }

                            else
                            {
                              v217 = TSTLayoutCellRightOfCell(txa, v301, 1);
                              v299 = v299 & 0xFFFFFFFF00000000 | v301;
                              if (v279 && BYTE2(v280) < BYTE2(v217))
                              {
                                WORD2(v359.a) = ~BYTE2(v336) + BYTE2(v280);
                              }
                            }

                            v220 = (~v217 & 0xFF0000) != 0 && v217 != 0xFFFF;
                            v221 = BYTE2(v339->a);
                            v222 = v221;
                            if ((v211 & 1) == 0)
                            {
                              v222 = v221 + WORD2(v339->a) - 1;
                            }

                            rectb |= v220;
                            v223 = BYTE2(v217);
                            if ((v211 & 1) == 0)
                            {
LABEL_381:
                              if (v222 < v221)
                              {
LABEL_401:
                                v231 = *&transform.a;
                                v230 = *&transform.b;
                                LODWORD(c_low) = LODWORD(transform.c);
                                LODWORD(d_low) = LODWORD(transform.d);
                                v234 = HIDWORD(*&transform.a);
                                v235 = HIDWORD(*&transform.b);
                                if (LODWORD(transform.a) == -1 || LODWORD(transform.b) == -1 || LODWORD(transform.a) > LODWORD(transform.b) || v234 == 0xFFFFFFFF || v235 == 0xFFFFFFFF || v234 > v235)
                                {
                                  v230 = *&transform.d;
                                  v231 = *&transform.c;
                                  a5 = v272;
                                  v47 = v333;
LABEL_419:
                                  v158 = r1;
                                  v76 = v324;
                                  goto LABEL_420;
                                }

                                v47 = v333;
                                if (LODWORD(transform.c) == -1)
                                {
                                  LODWORD(d_low) = LODWORD(transform.b);
                                  LODWORD(c_low) = LODWORD(transform.a);
                                  a5 = v272;
                                  goto LABEL_419;
                                }

                                a5 = v272;
                                v158 = r1;
                                v76 = v324;
                                if (LODWORD(transform.d) == -1 || LODWORD(transform.c) > LODWORD(transform.d) || (v268 = HIDWORD(*&transform.c), HIDWORD(*&transform.c) == 0xFFFFFFFFLL) || (v269 = HIDWORD(*&transform.d), HIDWORD(*&transform.d) == 0xFFFFFFFFLL) || v268 > v269)
                                {
                                  LODWORD(d_low) = LODWORD(transform.b);
                                  LODWORD(c_low) = LODWORD(transform.a);
                                }

                                else
                                {
                                  if (LODWORD(transform.a) >= LODWORD(transform.c))
                                  {
                                    c_low = LODWORD(transform.c);
                                  }

                                  else
                                  {
                                    c_low = LODWORD(transform.a);
                                  }

                                  if (v234 >= v268)
                                  {
                                    v234 = HIDWORD(*&transform.c);
                                  }

                                  if (LODWORD(transform.b) <= LODWORD(transform.d))
                                  {
                                    d_low = LODWORD(transform.d);
                                  }

                                  else
                                  {
                                    d_low = LODWORD(transform.b);
                                  }

                                  if (v235 <= v269)
                                  {
                                    v235 = HIDWORD(*&transform.d);
                                  }

                                  v230 = d_low | (v235 << 32);
                                  v231 = c_low | (v234 << 32);
                                }

LABEL_420:
                                if (c_low == -1 || d_low == -1 || c_low > d_low || (HIDWORD(v231) <= HIDWORD(v230) ? (v241 = HIDWORD(v231) == 0xFFFFFFFF) : (v241 = 1), !v241 ? (v242 = HIDWORD(v230) == 0xFFFFFFFF) : (v242 = 1), v242))
                                {
                                  v230 = -1;
                                  v231 = -1;
                                }

                                v243 = 0;
                                if (v231 != -1 && v230 != -1 && v231 <= v230)
                                {
                                  v243 = 0;
                                  if (HIDWORD(v231) != 0xFFFFFFFF && HIDWORD(v230) != 0xFFFFFFFF && HIDWORD(v231) <= HIDWORD(v230))
                                  {
                                    v243 = ((v230 - (v231 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v230 - v231 + 1)) + 0x100000000;
                                  }
                                }

                                v244 = v231 << 16;
                                if (v231 == -1)
                                {
                                  v244 = 16711680;
                                }

                                v245 = 0x100000000;
                                v246 = 0x1000000000000;
                                if (WORD2(v231) != 0xFFFFLL && v244 != 16711680)
                                {
                                  v247 = v243;
                                  if (v243)
                                  {
                                    v248 = (v243 >> 16) & 0xFFFF0000;
                                    if (v248)
                                    {
                                      v249 = v76;
                                      v250 = (v248 | v247) << 32;
                                      v246 = v250 & 0xFFFF000000000000;
                                      LODWORD(v301) = v244 & 0xFFFF0000 | WORD2(v231);
                                      TSTMasterLayoutSetStrokesValidForRange([v47 masterLayout], v244 & 0xFFFF000000FF0000 | WORD2(v231) | v250 & 0xFFFF000000FFFFFFLL | (v250 + 0x100000000) & 0x1FF00000000);
                                      v245 = v250 & 0xFF00000000;
                                      v76 = v249;
                                    }
                                  }
                                }

                                v251 = TSTLayoutSpaceGetContentFrameForGridRange(a2, v231, v230);
                                width = v252;
                                recta = v253;
                                if (v329 == 1)
                                {
                                  goto LABEL_452;
                                }

                                if (v329 != 2)
                                {
                                  v255 = [txa layoutDirectionIsLeftToRight];
                                  if (v329 != 4 || (v255 & 1) != 0)
                                  {
                                    goto LABEL_455;
                                  }

LABEL_452:
                                  if (width <= v113)
                                  {
                                    goto LABEL_455;
                                  }

                                  v254 = v113 - width;
LABEL_454:
                                  v256 = 0;
                                  v363.origin.x = v254;
                                  goto LABEL_456;
                                }

                                if (v252 > v113)
                                {
                                  v254 = v251 - ContentFrameForGridRange;
                                  goto LABEL_454;
                                }

LABEL_455:
                                v363.origin = *MEMORY[0x277CBF348];
LABEL_456:
                                v94 = v245 | v246 | v301;
                                y = v257;
                                v10 = v326;
                                break;
                              }

                              goto LABEL_384;
                            }

                            while (1)
                            {
                              if (v222 >= WORD2(v339->a) + v221)
                              {
                                goto LABEL_359;
                              }

LABEL_384:
                              if ((rectb & (v223 == v222)) != 0)
                              {
                                break;
                              }

                              v224 = [v333 masterLayout];
                              v225 = +[TSDStroke emptyStroke];
                              if (v211)
                              {
                                v226 = v222;
                              }

                              else
                              {
                                v226 = v222 + 1;
                              }

                              TSTMasterLayoutSetStrokeForGridColumn(v224, v225, v226, 0, v336, v336 + 1);
                              TSTMasterLayoutSetStrokeForGridColumn([v333 masterLayout], +[TSDStroke emptyStroke](TSDStroke, "emptyStroke"), v226, 1, v336, v336 + 1);
                              p_b = &p_transform->b;
                              if (LODWORD(p_transform->b) >= v222)
                              {
                                p_b = p_transform;
                              }

                              *p_b = v222;
                              TSTLayoutSpaceGetContentFrameForGridRange(a2, *&p_transform->a, *&p_transform->b);
                              if (v189 == 2)
                              {
                                v229 = v173 * 0.5 > v228 - v205;
                              }

                              else
                              {
                                v229 = v173 > v228;
                              }

                              v5 = v335;
                              if (!v229)
                              {
                                goto LABEL_359;
                              }

                              if (v211)
                              {
                                ++v222;
                              }

                              else
                              {
                                --v222;
                              }

                              if ((v211 & 1) == 0)
                              {
                                goto LABEL_381;
                              }
                            }

                            rectb = 1;
                          }
                        }

LABEL_359:
                        v210 = 0;
                        v206 = 1;
                        p_transform = &transform.c;
                        v339 = &v359.b;
                        if ((v211 & 1) == 0)
                        {
                          goto LABEL_401;
                        }
                      }
                    }

LABEL_457:
                    r1a = v363.origin.x;
                    v258 = 0;
                    if (v94 != 0xFFFF && (v94 & 0xFF0000) != 0xFF0000)
                    {
                      v258 = 0;
                      if (HIWORD(v94))
                      {
                        if ((v94 & 0xFFFF00000000) != 0)
                        {
                          v258 = 0;
                          if (v158)
                          {
                            if ((v94 & 0xFFFFFFFF00000000) == 0x1000100000000)
                            {
                              v258 = *(&v158->mPrivate + 1) << 8 == 2304 && [(TSWPStorage *)[(TSTRichTextPayload *)v158->mPrivate.mRichTextPayload storage] listStyleCount]!= 0;
                            }
                          }
                        }
                      }
                    }

                    if ([objc_msgSend(v47 "info")])
                    {
                      [v341 parent];
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v340 = v152;
                        memset(&transform, 0, sizeof(transform));
                        v276 = v151;
                        v277 = v154;
                        v313 = v174;
                        v259 = v113;
                        if (v341)
                        {
                          [v341 transformInParent];
                        }

                        else
                        {
                          memset(&v359, 0, sizeof(v359));
                        }

                        CGAffineTransformInvert(&transform, &v359);
                        [objc_msgSend(v341 "parent")];
                        v359 = transform;
                        v365 = CGRectApplyAffineTransform(v364, &v359);
                        x = v365.origin.x;
                        v261 = v365.origin.y;
                        v262 = v365.size.width;
                        height = v365.size.height;
                        v353 = v354;
                        CGAffineTransformInvert(&v359, &v353);
                        v366.origin.x = x;
                        v366.origin.y = v261;
                        v366.size.width = v262;
                        v366.size.height = height;
                        v367 = CGRectApplyAffineTransform(v366, &v359);
                        v371.origin.y = v367.origin.y;
                        v371.size.height = v367.size.height;
                        v367.origin.x = r1a;
                        v367.origin.y = y;
                        v367.size.width = width;
                        v367.size.height = recta;
                        v371.origin.x = r1a;
                        v371.size.width = width;
                        v368 = CGRectIntersection(v367, v371);
                        r1a = v368.origin.x;
                        y = v368.origin.y;
                        width = v368.size.width;
                        recta = v368.size.height;
                        v113 = v259;
                        v152 = v340;
                        v151 = v276;
                        v154 = v277;
                        v174 = v313;
                      }
                    }

                    transform = v354;
                    CGContextConcatCTM(a5, &transform);
                    v369.origin.x = r1a;
                    v369.origin.y = y;
                    v369.size.width = width;
                    v369.size.height = recta;
                    CGContextClipToRect(a5, v369);
                    if (!v357 && ((TSTCellFormatUsesAccountingStyle(v158) | v258) & 1) == 0)
                    {
                      if (v356 == 2)
                      {
                        v264 = v113 * 0.5 - v173 * 0.5 - v298;
LABEL_478:
                        CGContextTranslateCTM(a5, v264, 0.0);
                      }

                      else if (v356 == 1)
                      {
                        v370.origin.x = v298;
                        v370.origin.y = v295;
                        v370.size.width = v173;
                        v370.size.height = v174;
                        v264 = v113 - CGRectGetMaxX(v370);
                        goto LABEL_478;
                      }
                    }

                    v265 = [TSTTextEngineDelegate alloc];
                    v266 = [(TSTTextEngineDelegate *)v265 initWithPadding:v355 verticalAlignment:v152, v151, v154, v318];
                    v267 = [objc_msgSend(v47 "masterLayout")];
                    [v267 setDelegate:v266];
                    [v319 viewScale];
                    [v267 drawColumn:v317 inContext:a5 isFlipped:v297 viewScale:?];
                    [v267 setDelegate:0];

                    CGContextRestoreGState(a5);
LABEL_480:
                    objc_autoreleasePoolPop(context);
                    if (!v76)
                    {
                      v94 = v342;
                    }

LABEL_176:

                    v342 = v94;
LABEL_177:
                    if (!TSTLayoutCellIteratorGetNextCell(v349, v351))
                    {
                      goto LABEL_504;
                    }

                    continue;
                  }

                  v47 = v333;
                  v10 = v326;
                }

                else
                {
                  v127 = [v47 canvas];
                  if (!v76)
                  {
                    v5 = v335;
                    goto LABEL_480;
                  }

                  v319 = v127;
                  v324 = v76;
                }

                if (BYTE2(v67) == 255)
                {
                  v130 = 0xFFFFFFFFLL;
                }

                else
                {
                  v130 = BYTE2(v67);
                }

                if (v67 == 0xFFFF)
                {
                  v131 = 0xFFFFFFFFLL;
                }

                else
                {
                  v131 = v67;
                }

                v132 = v130 | (v131 << 32);
                v133 = TSTLayoutSpaceGetAlignedContentFrameForGridRange(a2, v132, v132);
                v135 = v134;
                width = v136;
                recta = v138;
                ContentFrameForGridRange = TSTLayoutSpaceGetContentFrameForGridRange(a2, v132, v132);
                v113 = v139;
                v299 = *&v135;
                v300 = v133;
                ty = v135;
                tx = v133;
                goto LABEL_262;
              }
            }

            break;
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_176;
        }

        v10 = v326;
LABEL_504:

        result = TSTMasterLayoutNextVisibleRow(v10, (v325 + 1));
        v20 = v305;
      }

      while (result <= v308);
    }
  }

  return result;
}

unint64_t TSTCellRangeUnionCellID(unint64_t a1, unint64_t a2)
{
  LOWORD(v2) = 1;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  LOWORD(v5) = 1;
  if (a1 == 0xFFFF || (a1 & 0xFF0000) == 0xFF0000 || !HIWORD(a1) || (a1 & 0xFFFF00000000) == 0)
  {
    LOWORD(a1) = a2;
    return (v4 << 24) | ((v2 | (v5 << 16)) << 32) | (v3 << 16) | a1;
  }

  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000)
  {
    v3 = a1 >> 16;
    v4 = a1 >> 24;
    v2 = HIDWORD(a1);
LABEL_24:
    v5 = HIWORD(a1);
    return (v4 << 24) | ((v2 | (v5 << 16)) << 32) | (v3 << 16) | a1;
  }

  if (a1 <= a2 && (a1 + HIWORD(a1) - 1) >= a2 && BYTE2(a1) <= BYTE2(a2))
  {
    v2 = HIDWORD(a1);
    if ((BYTE4(a1) + BYTE2(a1) - 1) >= BYTE2(a2))
    {
      v3 = a1 >> 16;
      v4 = a1 >> 24;
      goto LABEL_24;
    }
  }

  LOBYTE(v4) = 0;
  v6 = a1 >> 16;
  if (BYTE2(a2) <= BYTE2(a1))
  {
    LOBYTE(v6) = BYTE2(a2);
  }

  if (a2 <= a1)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  v8 = HIDWORD(a1) + WORD1(a1);
  v9 = a1 + HIWORD(a1);
  LOWORD(a1) = v7;
  if (BYTE2(a2) < (v8 - 1))
  {
    LOBYTE(v3) = v8 - 1;
  }

  v10 = v9 - 1;
  if (a2 >= v10)
  {
    v10 = a2;
  }

  LOWORD(v5) = v10 - v7 + 1;
  LOWORD(v2) = v3 - v6 + 1;
  LOBYTE(v3) = v6;
  return (v4 << 24) | ((v2 | (v5 << 16)) << 32) | (v3 << 16) | a1;
}

{
  v2 = a2 >> 16;
  v3 = a2 >> 24;
  v4 = 0x10000;
  v5 = 1;
  if (a1 == 0xFFFF || (a1 & 0xFF0000) == 0xFF0000 || !HIWORD(a1) || (a1 & 0xFFFF00000000) == 0)
  {
    LOWORD(a1) = a2;
  }

  else if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000)
  {
    v2 = a1 >> 16;
    v3 = a1 >> 24;
  }

  else if (a1 <= a2 && (a1 + HIWORD(a1) - 1) >= a2 && BYTE2(a1) <= BYTE2(a2) && (BYTE4(a1) + BYTE2(a1) - 1) >= BYTE2(a2))
  {
    v2 = a1 >> 16;
    v3 = a1 >> 24;
    v4 = 0x10000;
    v5 = 1;
  }

  else
  {
    LOBYTE(v3) = 0;
    v6 = a1 >> 16;
    if (BYTE2(a2) <= BYTE2(a1))
    {
      LOBYTE(v6) = BYTE2(a2);
    }

    if (a2 <= a1)
    {
      v7 = a2;
    }

    else
    {
      v7 = a1;
    }

    v8 = HIDWORD(a1) + WORD1(a1);
    v9 = a1 + HIWORD(a1);
    LOWORD(a1) = v7;
    v10 = v8 - 1;
    if (BYTE2(a2) < v10)
    {
      LOBYTE(v2) = v10;
    }

    v11 = v9 - 1;
    if (a2 >= (v9 - 1))
    {
      v11 = a2;
    }

    v4 = ((v11 - v7) << 16) + 0x10000;
    v5 = (v2 - v6 + 1);
    LOBYTE(v2) = v6;
  }

  return (v3 << 24) | ((v4 | v5) << 32) | (v2 << 16) | a1;
}

void sub_26C9B36D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<TSTMergeRangeElem,TSTMergeRangeElemCompare,std::allocator<TSTMergeRangeElem>>::__emplace_unique_key_args<TSTMergeRangeElem,TSTMergeRangeElem const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *(a2 + 56);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 88);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t TSTTableRBTreeLeftRotate(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 8);
  *(a2 + 16) = v3;
  if (v3 != &TSTTableRBTreeNil)
  {
    *(v3 + 24) = a2;
  }

  v4 = *(a2 + 24);
  *(v2 + 24) = v4;
  v5 = v2;
  if (v4 != &TSTTableRBTreeNil)
  {
    v6 = 16;
    if (*(v4 + 8) == a2)
    {
      v6 = 8;
    }

    *(v4 + v6) = v2;
    v5 = a1;
  }

  *(v2 + 8) = a2;
  *(a2 + 24) = v2;
  return v5;
}

uint64_t TSTTableRBTreeRightRotate(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 16);
  *(a2 + 8) = v3;
  if (v3 != &TSTTableRBTreeNil)
  {
    *(v3 + 24) = a2;
  }

  v4 = *(a2 + 24);
  *(v2 + 24) = v4;
  v5 = v2;
  if (v4 != &TSTTableRBTreeNil)
  {
    v6 = 16;
    if (*(v4 + 8) == a2)
    {
      v6 = 8;
    }

    *(v4 + v6) = v2;
    v5 = a1;
  }

  *(v2 + 16) = a2;
  *(a2 + 24) = v2;
  return v5;
}

uint64_t TSTTableRBTreeInsertFixup(uint64_t result, TSTTableRBTreeNode_s *a2)
{
  var4 = a2->var4;
  p_var5 = &var4->var5;
  var5 = var4->var5;
  if (var5 == 1)
  {
    do
    {
      v5 = var4->var4;
      var2 = v5->var2;
      if (var4 == var2)
      {
        var3 = v5->var3;
        if (var3->var5 != 1)
        {
          v9 = var4->var3;
          if (a2 == v9)
          {
            v17 = v9->var2;
            var4->var3 = v17;
            if (v17 != &TSTTableRBTreeNil)
            {
              v17->var4 = var4;
              v5 = var4->var4;
            }

            v9->var4 = v5;
            v18 = v9;
            if (v5 != &TSTTableRBTreeNil)
            {
              if (v5->var2 == var4)
              {
                v19 = 8;
              }

              else
              {
                v19 = 16;
              }

              *(&v5->var0 + v19) = v9;
              v18 = result;
            }

            v9->var2 = var4;
            var4->var4 = v9;
            v5 = v9->var4;
            var2 = v5->var2;
            result = v18;
          }

          else
          {
            v9 = var4;
            var4 = a2;
          }

          v9->var5 = 0;
          v5->var5 = var5;
          v20 = var2->var3;
          v5->var2 = v20;
          if (v20 != &TSTTableRBTreeNil)
          {
            v20->var4 = v5;
          }

          v21 = v5->var4;
          var2->var4 = v21;
          v15 = var2;
          if (v21 != &TSTTableRBTreeNil)
          {
            if (v21->var2 == v5)
            {
              v22 = 8;
            }

            else
            {
              v22 = 16;
            }

            *(&v21->var0 + v22) = var2;
            v15 = result;
          }

          var2->var3 = v5;
          goto LABEL_44;
        }

        *p_var5 = 0;
        var3->var5 = 0;
      }

      else
      {
        if (var2->var5 != 1)
        {
          v8 = var4->var2;
          if (a2 == v8)
          {
            v10 = v8->var3;
            var4->var2 = v10;
            if (v10 != &TSTTableRBTreeNil)
            {
              v10->var4 = var4;
              v5 = var4->var4;
            }

            v8->var4 = v5;
            v11 = v8;
            if (v5 != &TSTTableRBTreeNil)
            {
              if (v5->var2 == var4)
              {
                v12 = 8;
              }

              else
              {
                v12 = 16;
              }

              *(&v5->var0 + v12) = v8;
              v11 = result;
            }

            v8->var3 = var4;
            var4->var4 = v8;
            v5 = v8->var4;
            result = v11;
          }

          else
          {
            v8 = var4;
            var4 = a2;
          }

          v8->var5 = 0;
          v5->var5 = var5;
          var2 = v5->var3;
          v13 = var2->var2;
          v5->var3 = v13;
          if (v13 != &TSTTableRBTreeNil)
          {
            v13->var4 = v5;
          }

          v14 = v5->var4;
          var2->var4 = v14;
          v15 = var2;
          if (v14 != &TSTTableRBTreeNil)
          {
            if (v14->var2 == v5)
            {
              v16 = 8;
            }

            else
            {
              v16 = 16;
            }

            *(&v14->var0 + v16) = var2;
            v15 = result;
          }

          var2->var2 = v5;
LABEL_44:
          v5->var4 = var2;
          result = v15;
          goto LABEL_45;
        }

        *p_var5 = 0;
        var2->var5 = 0;
      }

      var4 = v5;
      v5->var5 = var5;
LABEL_45:
      a2 = var4;
      var4 = var4->var4;
      p_var5 = &var4->var5;
    }

    while (var4->var5 == 1);
  }

  *(result + 32) = 0;
  return result;
}

TSTTableRBTreeNode_s *TSTTableRBTreeInsert(TSTTableRBTreeNode_s *a1, TSTTableRBTreeNode_s *a2)
{
  if (a1)
  {
    if (a1 == &TSTTableRBTreeNil)
    {
      a2->var4 = &TSTTableRBTreeNil;
      a1 = a2;
    }

    else
    {
      v2 = a1;
      do
      {
        v3 = v2;
        if (a2->var0 >= v2->var0)
        {
          v4 = 16;
        }

        else
        {
          v4 = 8;
        }

        v2 = *(&v3->var0 + v4);
      }

      while (v2 != &TSTTableRBTreeNil);
      a2->var4 = v3;
      if (a2->var0 >= v3->var0)
      {
        v3->var3 = a2;
      }

      else
      {
        v3->var2 = a2;
      }
    }

    a2->var2 = &TSTTableRBTreeNil;
    a2->var3 = &TSTTableRBTreeNil;
    a2->var5 = 1;
    return TSTTableRBTreeInsertFixup(a1, a2);
  }

  else
  {
    a2->var5 = 0;
    return a2;
  }
}

_WORD *TSTTableRBTreeNewNode(__int16 a1, __int16 a2)
{
  result = malloc_type_malloc(0x28uLL, 0x1020040D3174BDAuLL);
  *result = a1;
  result[1] = a2;
  *(result + 1) = &TSTTableRBTreeNil;
  *(result + 2) = &TSTTableRBTreeNil;
  *(result + 3) = &TSTTableRBTreeNil;
  *(result + 32) = 1;
  return result;
}

void TSTTableRBTreeFree(void **a1)
{
  if (a1)
  {
    if (a1[1] != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeFree();
    }

    if (a1[2] != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeFree();
    }

    free(a1);
  }
}

TSTTableRBTreeNode_s *TSTTableRBTreeMaximum(TSTTableRBTreeNode_s *a1)
{
  do
  {
    v1 = a1;
    a1 = a1->var3;
  }

  while (a1 != &TSTTableRBTreeNil);
  return v1;
}

TSTTableRBTreeNode_s *TSTTableRBTreeMinimum(TSTTableRBTreeNode_s *a1)
{
  do
  {
    v1 = a1;
    a1 = a1->var2;
  }

  while (a1 != &TSTTableRBTreeNil);
  return v1;
}

TSTTableRBTreeNode_s **TSTTableRBTreePredecessor(TSTTableRBTreeNode_s *a1)
{
  var2 = a1->var2;
  if (var2 == &TSTTableRBTreeNil)
  {
    v3 = a1;
    while (1)
    {
      result = v3->var4;
      if (result == &TSTTableRBTreeNil)
      {
        break;
      }

      v4 = v3 == result[1];
      v3 = v3->var4;
      if (!v4)
      {
        return result;
      }
    }

    return &TSTTableRBTreeNil;
  }

  else
  {
    do
    {
      result = var2;
      var2 = var2->var3;
    }

    while (var2 != &TSTTableRBTreeNil);
  }

  return result;
}

TSTTableRBTreeNode_s **TSTTableRBTreeSuccessor(TSTTableRBTreeNode_s *a1)
{
  var3 = a1->var3;
  if (var3 == &TSTTableRBTreeNil)
  {
    v3 = a1;
    while (1)
    {
      result = v3->var4;
      if (result == &TSTTableRBTreeNil)
      {
        break;
      }

      v4 = v3 == result[2];
      v3 = v3->var4;
      if (!v4)
      {
        return result;
      }
    }

    return &TSTTableRBTreeNil;
  }

  else
  {
    do
    {
      result = var3;
      var3 = var3->var2;
    }

    while (var3 != &TSTTableRBTreeNil);
  }

  return result;
}

unsigned __int16 *TSTTableRBFirstNodeGreaterThanOrEqualTo(unsigned __int16 *result, unsigned int a2)
{
  if (!result)
  {
    return &TSTTableRBTreeNil;
  }

  if (result == &TSTTableRBTreeNil)
  {
    return 0;
  }

  do
  {
    v2 = *result;
    if (v2 == a2)
    {
      break;
    }

    if (v2 >= a2)
    {
      v3 = *(result + 1);
      if (v3 == &TSTTableRBTreeNil)
      {
        return result;
      }
    }

    else
    {
      v3 = *(result + 2);
      if (v3 == &TSTTableRBTreeNil)
      {
        v4 = result;
        while (1)
        {
          result = *(v4 + 3);
          if (result == &TSTTableRBTreeNil)
          {
            break;
          }

          v5 = v4 == *(result + 2);
          v4 = *(v4 + 3);
          if (!v5)
          {
            return result;
          }
        }

        return &TSTTableRBTreeNil;
      }
    }

    result = v3;
  }

  while (v3);
  return result;
}

unsigned __int16 *TSTTableRBFirstNodeLessThanOrEqualTo(unsigned __int16 *a1, unsigned int a2)
{
  result = &TSTTableRBTreeNil;
  if (a1 && a1 != &TSTTableRBTreeNil)
  {
    result = a1;
    while (1)
    {
      v4 = *result;
      if (v4 == a2)
      {
        break;
      }

      if (v4 >= a2)
      {
        v5 = *(result + 1);
        if (v5 == &TSTTableRBTreeNil)
        {
          v6 = result;
          while (1)
          {
            result = *(v6 + 3);
            if (result == &TSTTableRBTreeNil)
            {
              break;
            }

            v7 = v6 == *(result + 1);
            v6 = *(v6 + 3);
            if (!v7)
            {
              return result;
            }
          }

          return &TSTTableRBTreeNil;
        }
      }

      else
      {
        v5 = *(result + 2);
        if (v5 == &TSTTableRBTreeNil)
        {
          return result;
        }
      }

      result = v5;
      if (!v5)
      {
        return &TSTTableRBTreeNil;
      }
    }
  }

  return result;
}

uint64_t TSTTableRBTreeStripIDForCellIndex(unsigned __int16 *a1, unsigned int a2, unsigned __int16 *a3)
{
  v4 = TSTTableRBFirstNodeLessThanOrEqualTo(a1, a2);
  if (v4 == &TSTTableRBTreeNil)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *v4;
  }

  return v4[1];
}

TSTTableRBTreeNode_s *TSTTableRBTreeDeleteFixup(TSTTableRBTreeNode_s *result, TSTTableRBTreeNode_s *a2)
{
  if (a2 != result)
  {
    while (!a2->var5)
    {
      var4 = a2->var4;
      var2 = var4->var2;
      if (a2 == var2)
      {
        var2 = var4->var3;
        if (var2->var5 == 1)
        {
          var2->var5 = 0;
          var4->var5 = 1;
          v10 = var2->var2;
          var4->var3 = v10;
          if (v10 != &TSTTableRBTreeNil)
          {
            v10->var4 = var4;
          }

          v11 = var4->var4;
          var2->var4 = v11;
          v12 = var2;
          if (v11 != &TSTTableRBTreeNil)
          {
            if (v11->var2 == var4)
            {
              v13 = 8;
            }

            else
            {
              v13 = 16;
            }

            *(&v11->var0 + v13) = var2;
            v12 = result;
          }

          var2->var2 = var4;
          var4->var4 = var2;
          var4 = a2->var4;
          var2 = var4->var3;
          result = v12;
        }

        v14 = var2->var2;
        var3 = var2->var3;
        if (v14->var5)
        {
          if (!var3->var5)
          {
            v14->var5 = 0;
            var2->var5 = 1;
            v23 = v14->var3;
            var2->var2 = v23;
            if (v23 != &TSTTableRBTreeNil)
            {
              v23->var4 = var2;
            }

            v24 = var2->var4;
            v14->var4 = v24;
            v25 = v14;
            if (v24 != &TSTTableRBTreeNil)
            {
              v26 = 16;
              if (v24->var2 == var2)
              {
                v26 = 8;
              }

              *(&v24->var0 + v26) = v14;
              v25 = result;
            }

            v14->var3 = var2;
            var2->var4 = v14;
            var4 = a2->var4;
            var2 = var4->var3;
            v14 = var2->var2;
            var3 = var2->var3;
            result = v25;
          }

LABEL_53:
          var2->var5 = var4->var5;
          var4->var5 = 0;
          var3->var5 = 0;
          var4->var3 = v14;
          if (v14 != &TSTTableRBTreeNil)
          {
            v14->var4 = var4;
          }

          v27 = var4->var4;
          var2->var4 = v27;
          v21 = var2;
          if (v27 != &TSTTableRBTreeNil)
          {
            v28 = 16;
            if (v27->var2 == var4)
            {
              v28 = 8;
            }

            *(&v27->var0 + v28) = var2;
            v21 = result;
          }

          var2->var2 = var4;
LABEL_60:
          var4->var4 = var2;
          var4 = v21;
          result = v21;
          goto LABEL_61;
        }

        if (var3->var5)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (var2->var5 == 1)
        {
          var2->var5 = 0;
          var4->var5 = 1;
          v4 = var2->var3;
          var4->var2 = v4;
          if (v4 != &TSTTableRBTreeNil)
          {
            v4->var4 = var4;
          }

          v5 = var4->var4;
          var2->var4 = v5;
          v6 = var2;
          if (v5 != &TSTTableRBTreeNil)
          {
            if (v5->var2 == var4)
            {
              v7 = 8;
            }

            else
            {
              v7 = 16;
            }

            *(&v5->var0 + v7) = var2;
            v6 = result;
          }

          var2->var3 = var4;
          var4->var4 = var2;
          var4 = a2->var4;
          var2 = var4->var2;
          result = v6;
        }

        v9 = var2->var2;
        v8 = var2->var3;
        if (v8->var5)
        {
          if (!v9->var5)
          {
            v8->var5 = 0;
            var2->var5 = 1;
            v16 = v8->var2;
            var2->var3 = v16;
            if (v16 != &TSTTableRBTreeNil)
            {
              v16->var4 = var2;
            }

            v17 = var2->var4;
            v8->var4 = v17;
            v18 = v8;
            if (v17 != &TSTTableRBTreeNil)
            {
              v19 = 16;
              if (v17->var2 == var2)
              {
                v19 = 8;
              }

              *(&v17->var0 + v19) = v8;
              v18 = result;
            }

            v8->var2 = var2;
            var2->var4 = v8;
            var4 = a2->var4;
            var2 = var4->var2;
            v9 = var2->var2;
            v8 = var2->var3;
            result = v18;
          }

LABEL_38:
          var2->var5 = var4->var5;
          var4->var5 = 0;
          v9->var5 = 0;
          var4->var2 = v8;
          if (v8 != &TSTTableRBTreeNil)
          {
            v8->var4 = var4;
          }

          v20 = var4->var4;
          var2->var4 = v20;
          v21 = var2;
          if (v20 != &TSTTableRBTreeNil)
          {
            v22 = 16;
            if (v20->var2 == var4)
            {
              v22 = 8;
            }

            *(&v20->var0 + v22) = var2;
            v21 = result;
          }

          var2->var3 = var4;
          goto LABEL_60;
        }

        if (v9->var5)
        {
          goto LABEL_38;
        }
      }

      var2->var5 = 1;
      a2 = var4;
      if (var4 == result)
      {
        goto LABEL_61;
      }
    }
  }

  var4 = a2;
LABEL_61:
  var4->var5 = 0;
  return result;
}

TSTTableRBTreeNode_s *TSTTableRBTreeDelete(TSTTableRBTreeNode_s *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2;
  if (v2 == &TSTTableRBTreeNil)
  {
    goto LABEL_4;
  }

  v4 = a2[2];
  if (v4 != &TSTTableRBTreeNil)
  {
    do
    {
      v3 = v4;
      v4 = *(v4 + 8);
    }

    while (v4 != &TSTTableRBTreeNil);
LABEL_4:
    v2 = *(v3 + 2);
    goto LABEL_6;
  }

  v3 = a2;
LABEL_6:
  v5 = *(v3 + 3);
  *(v2 + 24) = v5;
  v6 = v2;
  if (v5 != &TSTTableRBTreeNil)
  {
    v7 = 16;
    if (v3 == *(v5 + 8))
    {
      v7 = 8;
    }

    *(v5 + v7) = v2;
    v6 = a1;
  }

  if (v3 != a2)
  {
    *a2 = *v3;
  }

  if (!v3[32])
  {
    v6 = TSTTableRBTreeDeleteFixup(v6, v2);
  }

  free(v3);
  return v6;
}

uint64_t TSTTableRBTreeShiftCellIndices(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  if (a3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = -a3;
  }

  while (1)
  {
    if (v8 >= 0xFFFF)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRBTreeShiftCellIndices(TSTTableRBTreeNode *, UInt16, int, BOOL)"}];
      result = [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 443, @"shiftAmount out of range"}];
    }

    if (v7 == &TSTTableRBTreeNil)
    {
      break;
    }

    v11 = *v7;
    if (v11 == a2)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    if (v11 <= a2 && v12 == 0)
    {
      v14 = 8;
    }

    else
    {
      *v7 = v11 + a3;
      result = TSTTableRBTreeShiftCellIndices(*(v7 + 2), a2, a3, a4);
      v14 = 4;
    }

    v7 = *&v7[v14];
  }

  return result;
}

unsigned __int16 *TSTTableRBTreeFind(unsigned __int16 *a1, unsigned int a2)
{
  result = &TSTTableRBTreeNil;
  if (a1 && a1 != &TSTTableRBTreeNil)
  {
    while (1)
    {
      v4 = *a1;
      if (v4 == a2)
      {
        break;
      }

      if (v4 <= a2)
      {
        v5 = 8;
      }

      else
      {
        v5 = 4;
      }

      a1 = *&a1[v5];
      if (a1 == &TSTTableRBTreeNil)
      {
        return result;
      }
    }

    return a1;
  }

  return result;
}

uint64_t TSTTableRBTreeShiftNodesAfter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (v6 >= 0xFFFF)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRBTreeShiftNodesAfter(TSTTableRBTreeNode *, UInt16, int)"}];
    result = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 486, @"shiftAmount out of range"}];
  }

  if (v5 != &TSTTableRBTreeNil)
  {
    v9 = *v5;
    if (v9 <= a2)
    {
      v10 = 8;
    }

    else
    {
      *v5 = v9 + a3;
      TSTTableRBTreeShiftCellIndices(*(v5 + 2), a2, a3, 0);
      v10 = 4;
    }

    v11 = *&v5[v10];

    return TSTTableRBTreeShiftCellIndices(v11, a2, a3, 0);
  }

  return result;
}

uint64_t TSTTableRBTreeShiftNodesAtOrAfter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (v6 >= 0xFFFF)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRBTreeShiftNodesAtOrAfter(TSTTableRBTreeNode *, UInt16, int)"}];
    result = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 509, @"shiftAmount out of range"}];
  }

  if (v5 != &TSTTableRBTreeNil)
  {
    v9 = *v5;
    if (v9 >= a2)
    {
      *v5 = v9 + a3;
      TSTTableRBTreeShiftCellIndices(*(v5 + 2), a2, a3, 1);
      v10 = 4;
    }

    else
    {
      v10 = 8;
    }

    v11 = *&v5[v10];

    return TSTTableRBTreeShiftCellIndices(v11, a2, a3, 1);
  }

  return result;
}

TSTTableRBTreeNode_s *TSTTableRBTreeDeleteKey(TSTTableRBTreeNode_s *result, unsigned int a2)
{
  if (result && result != &TSTTableRBTreeNil)
  {
    v2 = result;
    while (1)
    {
      var0 = v2->var0;
      if (var0 == a2)
      {
        break;
      }

      if (var0 <= a2)
      {
        v4 = 16;
      }

      else
      {
        v4 = 8;
      }

      v2 = *(&v2->var0 + v4);
      if (v2 == &TSTTableRBTreeNil)
      {
        return result;
      }
    }

    if (v2 != &TSTTableRBTreeNil)
    {
      return TSTTableRBTreeDelete(result, v2);
    }
  }

  return result;
}

uint64_t p_validateNode(unsigned int a1, unsigned __int16 a2, void *a3)
{
  v4 = a1;
  if ([a3 containsIndex:a1])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_validateNode(UInt16, UInt16, void *)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 540, @"Duplicate keys in rbtree!"}];
  }

  return [a3 addIndex:v4];
}

void TSTTableRBTreeValidate(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  TSTTableRBTreeApply(a1, p_validateNode, v2);
}

uint64_t TSTTableRBTreeApply(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  if (result)
  {
    v4 = a2;
    v5 = result;
    v6 = *(result + 8);
    if (v6 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeApply(v6, a2, a3);
      v4 = a2;
    }

    v7 = *(v5 + 2);
    if (v7 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeApply(v7, v4, a3);
      v4 = a2;
    }

    v8 = *v5;
    v9 = v5[1];

    return v4(v8, v9, a3);
  }

  return result;
}

void TSTTableRBTreeDump(unsigned __int16 *a1)
{
  if (a1)
  {
    if (*(a1 + 1) != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeDump();
    }

    if (*(a1 + 2) != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeDump();
    }

    NSLog(@"node %p: key:%d, value: %d", a1, *a1, a1[1]);
  }
}

uint64_t TSTTableSelectionSetCellRegion(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 16) = a2;
  *(a1 + 12) = [a2 upperLeftCellID];
  result = [a2 upperLeftCellID];
  *(a1 + 32) = result;
  return result;
}

uint64_t TSTTableSelectionSetCellRange(uint64_t a1, unint64_t a2)
{
  result = [*(a1 + 16) equalsCellRange:a2];
  if ((result & 1) == 0)
  {

    *(a1 + 16) = 0;
    result = [TSTCellRegion regionFromRange:a2];
    *(a1 + 16) = result;
    *(a1 + 12) = a2;
    *(a1 + 32) = (a2 + ((a2 >> 16) & 0xFF0000) + 16711680) & 0xFF0000 | (a2 + HIWORD(a2) - 1);
  }

  return result;
}

void TSTTableSelectionAddCellRange(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 16) = [TSTCellRegion region:"region:addingRange:" addingRange:?];
}

void TSTTableSelectionSubtractCellRange(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 16) = [TSTCellRegion region:"region:subtractingRange:" subtractingRange:?];
}

void sub_26C9B8184(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_26C9B8610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t p_TSTCellRangeSplitForAdding(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = 0;
  *a3 = 0xFFFFFFLL;
  v6 = *a1;
  v7 = *a2;
  v8 = 16711680;
  v9 = 0xFFFFLL;
  if (v6 == 0xFFFFLL)
  {
    goto LABEL_27;
  }

  v10 = 0;
  if ((v6 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_28;
  }

  v5 = 0;
  if (HIWORD(v6))
  {
    v11 = (v6 & 0xFFFF00000000) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v10 = 0;
    v8 = 16711680;
    v9 = 0xFFFFLL;
    goto LABEL_28;
  }

  v8 = 16711680;
  v9 = 0xFFFFLL;
  if (v7 == 0xFFFF)
  {
    goto LABEL_27;
  }

  v10 = 0;
  if ((v7 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_28;
  }

  v5 = 0;
  v8 = 16711680;
  v9 = 0xFFFFLL;
  if (!HIWORD(v7))
  {
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  v10 = 0;
  if ((v7 & 0xFFFF00000000) != 0)
  {
    v9 = 0;
    if (BYTE2(v6) <= BYTE2(v7))
    {
      v12 = BYTE2(v7);
    }

    else
    {
      v12 = BYTE2(v6);
    }

    if (v6 <= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v6;
    }

    if ((BYTE4(v6) + BYTE2(v6) - 1) >= (BYTE4(v7) + BYTE2(v7) - 1))
    {
      v14 = (BYTE4(v7) + BYTE2(v7) - 1);
    }

    else
    {
      v14 = (BYTE4(v6) + BYTE2(v6) - 1);
    }

    v15 = (v6 + HIWORD(v6) - 1);
    if (v15 >= (v7 + HIWORD(v7) - 1))
    {
      v15 = (v7 + HIWORD(v7) - 1);
    }

    v8 = 0;
    v5 = 0;
    v10 = 0;
    if (v13 <= v15 && v12 <= v14)
    {
      v10 = ((v15 - v13) << 48) + 0x1000000000000;
      v5 = (((v14 - v12) << 32) + 0x100000000) & 0xFFFF00000000;
      v8 = v12 << 16;
      v9 = v13;
    }
  }

LABEL_28:
  v16 = 0;
  v17 = v8 | v9 | v5 | v10;
  if (v17 != 0xFFFF && (v17 & 0xFF0000) != 0xFF0000)
  {
    v16 = 0;
    if (HIWORD(v17))
    {
      if ((v17 & 0xFFFF00000000) != 0)
      {
        v18 = HIWORD(v7);
        v19 = v17 - v7;
        v20 = v17 > v7;
        v21 = 0xFFFFFFLL;
        if (v17 > v7)
        {
          v21 = v7;
        }

        if (v17 < v7)
        {
          v19 = 0;
        }

        v56 = v19;
        v22 = v17 + HIWORD(v17) - 1;
        if ((v7 + HIWORD(v7) - 1) <= v22)
        {
          v23 = 0;
          v55 = 0xFFFFLL;
          v54 = 16711680;
        }

        else
        {
          v23 = v7 + HIWORD(v7) - (v17 + HIWORD(v17));
          if (v17 <= v7)
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          v54 = v7 & 0xFFFFFFFF0000;
          v55 = (HIWORD(v10) + v17);
        }

        v24 = (BYTE4(v7) + BYTE2(v7) - 1);
        if (BYTE2(v7) >= BYTE2(v17))
        {
          v27 = 0;
          v53 = 0;
          v26 = 0xFFFFLL;
          v25 = 16711680;
        }

        else
        {
          ++v20;
          v53 = (BYTE2(v17) - BYTE2(v7)) << 32;
          v25 = v7 & 0xFFFF0000;
          v26 = v7;
          v27 = HIWORD(v7);
        }

        v28 = (BYTE4(v17) + BYTE2(v17) - 1);
        if (v28 >= v24)
        {
          v18 = 0;
          v29 = 0;
          v30 = 0;
          v32 = 0xFFFFLL;
          v31 = 16711680;
        }

        else
        {
          v29 = (BYTE4(v7) + BYTE2(v7) - 1) - (BYTE4(v17) + BYTE2(v17) - 1);
          ++v20;
          v30 = v7 & 0xFF000000;
          v31 = (v28 + 1) << 16;
          v32 = v7;
        }

        if (v20 == 3)
        {
          if (v17 > v7)
          {
            if ((v7 + HIWORD(v7) - 1) > v22)
            {
              if (BYTE2(v17) > BYTE2(v7))
              {
                *(a1 + 2) = BYTE4(v17) + BYTE2(v6);
              }

              *(a1 + 4) = WORD2(v6) - WORD2(v17);
              return 1;
            }

            *a1 = v6 + HIWORD(v17);
          }

          *(a1 + 6) = HIWORD(v6) - HIWORD(v17);
          return 1;
        }

        v33 = (BYTE4(v6) + BYTE2(v6) - 1);
        if (v20 != 2)
        {
          if (v20 == 1)
          {
            v34 = (v7 + HIWORD(v7) - 1) > v22 || v17 > v7;
            if (v34 && BYTE2(v6) == BYTE2(v7) && v33 == v24 || (v28 >= v24 ? (v35 = BYTE2(v17) > BYTE2(v7)) : (v35 = 1), v35 && v6 == v7 && (v6 + HIWORD(v6) - 1) == (v7 + HIWORD(v7) - 1)))
            {
              v36 = TSTCellRangeUnionCellRange(v6, v7);
              *a1 = 0xFFFFFFLL;
              *a2 = v36;
            }

            else
            {
              v43 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
              v44 = v31 | v30 | v32 | (v18 << 48) | (v29 << 32);
              if (BYTE2(v17) <= BYTE2(v7))
              {
                v45 = v44;
              }

              else
              {
                v45 = v25 | (v27 << 48) | v53 | v26;
              }

              if ((v7 + HIWORD(v7) - 1) > v22)
              {
                v45 = v54 | (v23 << 48) | v55;
              }

              if (v17 <= v7)
              {
                v43 = v45;
              }

              *a2 = v43;
            }
          }

          return 1;
        }

        if (v17 > v7 && (v7 + HIWORD(v7) - 1) > v22)
        {
          *a2 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
          v37 = v23;
LABEL_69:
          v38 = v55;
          v39 = v54 | (v37 << 48);
LABEL_70:
          v40 = v39 | v38;
LABEL_79:
          *a3 = v40;
          return 1;
        }

        v41 = v28 >= v24;
        if (BYTE2(v17) > BYTE2(v7) && !v41)
        {
          *a2 = v25 | (v27 << 48) | v53 | v26;
          v40 = v31 | v30 | v32 | (v18 << 48) | (v29 << 32);
          goto LABEL_79;
        }

        if (v17 <= v7 || v41)
        {
          if ((v7 + HIWORD(v7) - 1) <= v22 || v41)
          {
            if (BYTE2(v17) <= BYTE2(v7) || (v7 + HIWORD(v7) - 1) <= v22)
            {
              if (v17 <= v7 || BYTE2(v17) <= BYTE2(v7))
              {
                return 1;
              }

              if ((v6 + HIWORD(v6) - 1) == (v7 + HIWORD(v7) - 1))
              {
                *a2 = v6;
                *(a2 + 2) = BYTE2(v7);
                v42 = WORD2(v6) + BYTE2(v6) - BYTE2(v7);
LABEL_98:
                *(a2 + 4) = v42;
                v46 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
LABEL_110:
                *a3 = v46;
                *a1 = 0xFFFFFFLL;
                return 1;
              }

              if (v33 != v24)
              {
                *a2 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
                v39 = v17 & 0xFFFF000000000000 | v25 | v6;
                v38 = v53;
                goto LABEL_70;
              }

              *a2 = v6;
              *a2 = v7;
              v52 = v6 - v7 + HIWORD(v6);
              goto LABEL_119;
            }

            if (v6 != v7)
            {
              if (v33 != v24)
              {
                *a2 = v25 | ((v27 - v23) << 48) | v53 | v26;
                v37 = v23;
                goto LABEL_69;
              }

              *a2 = v6;
              v52 = v23 + HIWORD(v6);
LABEL_119:
              *(a2 + 6) = v52;
              v50 = v25 | (v27 << 48);
              v49 = v53 | v26;
              goto LABEL_106;
            }

            *a2 = v6;
            *(a2 + 2) = BYTE2(v7);
            *(a2 + 4) = WORD2(v6) + BYTE2(v6) - BYTE2(v7);
            v47 = v23;
LABEL_105:
            v49 = v55;
            v50 = v54 | (v47 << 48);
LABEL_106:
            v46 = v50 | v49;
            goto LABEL_110;
          }

          if (v6 == v7)
          {
            *a2 = v6;
            *(a2 + 4) = v29 + WORD2(v6);
            v47 = v23;
            goto LABEL_105;
          }

          if (BYTE2(v6) != BYTE2(v7))
          {
            *a2 = v31 | v30 | v32 | (v29 << 32) | ((v18 - v23) << 48);
            v37 = v23;
            goto LABEL_69;
          }

          *a2 = v6;
          v48 = v23 + HIWORD(v6);
        }

        else
        {
          if ((v6 + HIWORD(v6) - 1) == (v7 + HIWORD(v7) - 1))
          {
            *a2 = v6;
            v42 = v29 + WORD2(v6);
            goto LABEL_98;
          }

          if (BYTE2(v6) != BYTE2(v7))
          {
            *a2 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
            v40 = v17 & 0xFFFF000000000000 | (v29 << 32) | v6 | v30 | v31;
            goto LABEL_79;
          }

          *a2 = v6;
          *a2 = v7;
          v48 = v6 - v7 + HIWORD(v6);
        }

        *(a2 + 6) = v48;
        v46 = v31 | v30 | v32 | (v18 << 48) | (v29 << 32);
        goto LABEL_110;
      }
    }
  }

  return v16;
}

void sub_26C9B91B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9BA570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BA7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BAF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BB2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BCBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 72), 8);
  _Unwind_Resume(a1);
}

uint64_t TSTTableDataListAddObject(TSTTableDataList *a1, TSTTableDataObject *a2)
{
  mIDs = a1->mIDs;
  if (mIDs && (v5 = [(TSTTableDataObjectKeyDict *)mIDs keyForObject:a2], v5))
  {
    mNextID = v5;
    TSTTableDataListAddReferenceForKey(&a1->super.super.isa, v5);
  }

  else
  {
    [(TSPObject *)a1 willModify];
    mNextID = a1->mNextID;
    a1->mNextID = mNextID + 1;
    [(TSTIntegerKeyDict *)a1->mData setObject:a2 forKey:mNextID];
    v7 = a1->mIDs;
    if (v7)
    {
      [(TSTTableDataObjectKeyDict *)v7 setKey:mNextID forObject:a2];
    }
  }

  return mNextID;
}

uint64_t TSTTableDataListAddReferenceForKey(id *a1, uint64_t a2)
{
  [a1 willModify];
  result = [a1[7] objectForKey:a2];
  v5 = result;
  if (!result)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataListAddReferenceForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    result = [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1089, @"No object with key %u!", a2}];
  }

  ++*(v5 + 8);
  return result;
}

void *TSTTableDataListPrintCFDictionary(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  v3 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a1, v3, 0);
  v4 = [MEMORY[0x277CCACA8] string];
  if (Count >= 1)
  {
    v5 = v3;
    do
    {
      v6 = *v5++;
      [v4 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ : %ld\n", objc_msgSend(v6, "description"), CFDictionaryGetValue(a1, v6))}];
      --Count;
    }

    while (Count);
  }

  free(v3);
  return v4;
}

uint64_t TSTTableDataListAddString(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddString(TSTTableDataList *, NSString *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 810, @"Can only store strings in this list!"}];
  }

  v6 = [[TSTTableDataString alloc] initObjectWithString:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddConditionalStyleSet(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 9)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddConditionalStyleSet(TSTTableDataList *, TSTConditionalStyleSet *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 818, @"Can only store conditional styles in this list!"}];
  }

  v6 = [[TSTTableDataConditionalStyleSet alloc] initObjectWithConditionalStyleSet:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddCellFormat(TSTTableDataList *a1, uint64_t a2)
{
  if (*a2 == 266)
  {
    *(a2 + 16) = 0;
  }

  if (a1->mListType != 2)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddCellFormat(TSTTableDataList *, TSUFormatStruct, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 830, @"Can only store formats in this list!"}];
  }

  v6 = [TSTTableDataFormat alloc];
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v12 = *(a2 + 32);
  v8 = [(TSTTableDataFormat *)v6 initObjectWithFormat:v11];
  v9 = TSTTableDataListAddObject(a1, v8);

  return v9;
}

uint64_t TSTTableDataListAddStyle(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 4)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddStyle(TSTTableDataList *, TSSStyle *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 850, @"Can only store styles in this list!"}];
  }

  v6 = [[TSTTableDataStyle alloc] initObjectWithStyle:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddFormulaError(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 5)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddFormulaError(TSTTableDataList *, TSWPStorage *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 859, @"Can only store formula errors in this list!"}];
  }

  v6 = [[TSTTableDataFormulaError alloc] initObjectWithFormulaError:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddRichTextPayload(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 8)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddRichTextPayload(TSTTableDataList *, TSTRichTextPayload *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 868, @"Can only store text objects in this list!"}];
  }

  v6 = [[TSTTableDataRichTextPayload alloc] initObjectWithRichTextPayload:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddCommentStorage(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 10)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddCommentStorage(TSTTableDataList *, TSDCommentStorage *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 877, @"Can only store cell comment objects in this list!"}];
  }

  v6 = [[TSTTableDataCommentStorage alloc] initObjectWithCommentStorage:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddCustomFormat(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 6)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddCustomFormat(TSTTableDataList *, TSUCustomFormat *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 886, @"Can only store custom formats in this list!"}];
  }

  v6 = [[TSTTableDataCustomFormat alloc] initObjectWithCustomFormat:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddMultipleChoiceListFormat(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 7)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddMultipleChoiceListFormat(TSTTableDataList *, TSTPopUpMenuModel *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 895, @"Can only store pop up menu model in this list!"}];
  }

  v6 = [[TSTTableDataMultipleChoiceList alloc] initObjectWithPopUpMenuModel:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListGetStringForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSTTableDataListGetStringForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 904, @"Can only store strings in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

__n128 TSTTableDataListGetCellFormatForKey@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 48) != 2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUFormatStruct TSTTableDataListGetCellFormatForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 919, @"Can only store formats in this list!"}];
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = -1;
  v8 = [*(a1 + 56) objectForKey:a2];
  if (v8)
  {
    result = *(v8 + 16);
    v10 = *(v8 + 32);
    *a3 = result;
    *(a3 + 16) = v10;
    *(a3 + 32) = *(v8 + 48);
  }

  return result;
}

uint64_t TSTTableDataListGetStyleForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 4)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSSStyle *TSTTableDataListGetStyleForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 951, @"Can only store styles in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t TSTTableDataListGetConditionalStyleSetForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 9)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTConditionalStyleSet *TSTTableDataListGetConditionalStyleSetForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 966, @"Can only store conditional styles in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t TSTTableDataListGetFormulaErrorForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 5)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPStorage *TSTTableDataListGetFormulaErrorForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 983, @"Can only store formulaErrors in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t TSTTableDataListGetRichTextPayloadForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 8)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTRichTextPayload *TSTTableDataListGetRichTextPayloadForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 998, @"Can only store text storages in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t TSTTableDataListGetCommentStorageForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 10)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSDCommentStorage *TSTTableDataListGetCommentStorageForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1013, @"Can only store cell comment storage objects in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t TSTTableDataListGetCustomFormatForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 6)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUCustomFormat *TSTTableDataListGetCustomFormatForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1028, @"Can only store custom formats in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t TSTTableDataListGetMultipleChoiceListFormatForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 7)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTPopUpMenuModel *TSTTableDataListGetMultipleChoiceListFormatForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1044, @"Can only store pop up menu model in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t TSTTableDataListRefCountForKey(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t TSTTableDataListRemoveReferenceForKey(uint64_t a1, uint64_t a2)
{
  [a1 willModify];
  v4 = [*(a1 + 56) objectForKey:a2];
  if (v4)
  {
    v5 = v4[2] - 1;
    v4[2] = v5;
    if (!v5)
    {
      v10 = v4;
      [*(a1 + 56) removeObjectForKey:a2];
      v6 = *(a1 + 64);
      if (v6)
      {
        [v6 removeKeyForObject:v10];
      }
    }

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataListRemoveReferenceForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    return [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1099, @"No object with key %u!", a2}];
  }
}

uint64_t TSTTableDataListTransform(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 willModify];
  v6 = a1[7];

  return [v6 transformWithFunction:a2 withState:a3];
}

uint64_t TSTTableDataListGetKeyForCustomFormat(TSTTableDataList *a1, TSUCustomFormat *a2)
{
  if (!a1->mIDs)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListGetKeyForCustomFormat(TSTTableDataList *, TSUCustomFormat *)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1136, @"Can't do a reverse lookup on a list that doesn't support it!"}];
  }

  if (a1->mListType != 6)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListGetKeyForCustomFormat(TSTTableDataList *, TSUCustomFormat *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1137, @"Can only have custom formats in this list!"}];
  }

  v8 = [[TSTTableDataCustomFormat alloc] initObjectWithCustomFormat:a2];
  mIDs = a1->mIDs;
  if (mIDs)
  {
    v10 = [(TSTTableDataObjectKeyDict *)mIDs keyForObject:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t TSTTableDumpTile(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  NSLog(@"%@", [a1 description]);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = a1[7];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        TSTTableDumpTileRowInfo(*(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t TSTTableTileListRows(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 56);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        NSLog(@"%@", *(*(&v6 + 1) + 8 * v5++));
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t TSTTableTileValidate(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 56);
  result = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (result)
  {
    v2 = result;
    v3 = 0;
    LOWORD(v4) = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v24;
    do
    {
      v21 = v3;
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        if (*(v9 + 536) <= v4)
        {
          v4 = v4;
        }

        else
        {
          v4 = *(v9 + 536);
        }

        if ((*(v9 + 541) & 1) == 0)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v23 + 1) + 8 * v8));
        }

        v10 = *(v9 + 540);
        v11 = v5;
        if (v10 > v5)
        {
          v11 = *(v9 + 540);
        }

        if (v10 != 255)
        {
          v5 = v11;
        }

        TSTTableTileRowInfoValidate(v9);
        v6 += *(v9 + 538);
        ++v8;
      }

      while (v2 != v8);
      v3 = v21 + v2;
      result = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v2 = result;
    }

    while (result);
  }

  else
  {
    LOWORD(v3) = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  if (v4 != *(a1 + 50))
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    result = [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 903, @"max row in tile %@ does not match maximum row index in row infos stored in tile: %hu != %hu", a1, *(a1 + 50), v4}];
  }

  if (*(a1 + 48) != v5)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    result = [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 907, @"max row in tile %@ does not match maximum row index in row infos stored in tile: %hu != %hu", a1, *(a1 + 48), v5}];
  }

  if (*(a1 + 64) != v3)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    result = [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 911, @"number of rows in tile %@ does not match number of row infos stored in tile: %hu != %hu", a1, *(a1 + 64), v3}];
  }

  if (*(a1 + 52) != v6)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    return [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 915, @"number of cells in tile %@ not consistent with row cell count: %hu != %hu", a1, *(a1 + 52), v6}];
  }

  return result;
}

TSTTableTileRowInfo *TSTTableTileRowInfoForTileRowIndex(TSTTableTile *a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mRowInfos = a1->mRowInfos;
  v7 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(mRowInfos);
      }

      result = *(*(&v12 + 1) + 8 * v10);
      if (result->mTileRowIndex == a2)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (a3)
    {
      [(TSPObject *)a1 willModify];
      return p_AddRowInfoWithRowIndex(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

TSTTableTileRowInfo *p_AddRowInfoWithRowIndex(TSTTableTile *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [[TSTTableTileRowInfo alloc] initWithOwner:a1 tileRowIndex:a2];
  p_InsertRowInfoWithRowIndex(a1, v4, v2);

  return v4;
}

UInt8 *TSTTableTileGetCellStorageRef(TSTTableTile *a1, unsigned int a2, uint64_t a3)
{
  if (!a1->mNumCells)
  {
    return 0;
  }

  v4 = TSTTableTileRowInfoForTileRowIndex(a1, a3, 0);
  if (!v4)
  {
    return 0;
  }

  return TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(v4, a2);
}

void TSTTableTileSetCell(TSTTableTile *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  [(TSPObject *)a1 willModify];
  v8 = TSTTableTileRowInfoForTileRowIndex(a1, a3, 0);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = p_AddRowInfoWithRowIndex(a1, a3);
    if (!v9)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileSetCell(TSTTableTile *, TSUColumnIndex, TSURowIndex, TSTCell *)"}];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 374, @"Couldn't find row info for row index %hu", a3}];
    }
  }

  mCellCount = v9->mCellCount;
  TSTTableTileRowInfoSetCell(v9, a2, a4);
  v13 = v9->mCellCount;
  if (v13 <= mCellCount)
  {
    if (v13 >= mCellCount)
    {
      goto LABEL_10;
    }

    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  a1->mNumCells += v14;
LABEL_10:
  if (a1->mMaxColumn <= a2)
  {
    if (a4)
    {
      a1->mMaxColumn = a2;
    }

    else
    {
      a1->mMaxColumn = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      mRowInfos = a1->mRowInfos;
      v16 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(mRowInfos);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            if (*(v20 + 538))
            {
              if ((*(v20 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v38 + 1) + 8 * i));
              }

              v21 = *(v20 + 540);
              if (v21 != 255 && v21 > a1->mMaxColumn)
              {
                a1->mMaxColumn = v21;
              }
            }
          }

          v17 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v17);
      }
    }
  }

  if (!v9->mCellCount)
  {
    mTileRowIndex = v9->mTileRowIndex;
    if (!v9->mMaxTileColumnIndexValid)
    {
      TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v9);
    }

    mMaxTileColumnIndex = v9->mMaxTileColumnIndex;
    v23 = v9;
    [(NSMutableArray *)a1->mRowInfos removeObject:v9];
    --a1->mNumRows;
    a1->mNumCells -= v9->mCellCount;

    if (mTileRowIndex >= a1->mMaxRow)
    {
      a1->mMaxRow = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = a1->mRowInfos;
      v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(*(&v38 + 1) + 8 * j) + 536);
            if (v29 > a1->mMaxRow)
            {
              a1->mMaxRow = v29;
            }
          }

          v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v26);
      }
    }

    if (mMaxTileColumnIndex != 255 && mMaxTileColumnIndex >= a1->mMaxColumn)
    {
      a1->mMaxColumn = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v30 = a1->mRowInfos;
      v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v39;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v39 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v38 + 1) + 8 * k);
            if (*(v35 + 538))
            {
              if ((*(v35 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v38 + 1) + 8 * k));
              }

              v36 = *(v35 + 540);
              if (v36 != 255 && v36 > a1->mMaxColumn)
              {
                a1->mMaxColumn = v36;
              }
            }
          }

          v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v32);
      }
    }
  }
}

void TSTTableTileRemoveCell(TSTTableTile *a1, unsigned int a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a1->mMaxColumn < a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileRemoveCell(TSTTableTile *, TSUColumnIndex, TSURowIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 408, @"column index too large"}];
  }

  if (a1->mMaxRow < a3)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileRemoveCell(TSTTableTile *, TSUColumnIndex, TSURowIndex)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 412, @"row index too large"}];
  }

  v10 = TSTTableTileRowInfoForTileRowIndex(a1, a3, 0);
  if (v10)
  {
    v11 = v10;
    [(TSPObject *)a1 willModify];
    mCellCount = v11->mCellCount;
    TSTTableTileRowInfoSetCell(v11, a2, 0);
    v13 = v11->mCellCount;
    if (v13 <= mCellCount)
    {
      if (v13 >= mCellCount)
      {
LABEL_11:
        if (a1->mMaxColumn <= a2)
        {
          v37 = v11;
          a1->mMaxColumn = 0;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          mRowInfos = a1->mRowInfos;
          v16 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v40;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(mRowInfos);
                }

                v20 = *(*(&v39 + 1) + 8 * i);
                if (*(v20 + 538))
                {
                  if ((*(v20 + 541) & 1) == 0)
                  {
                    TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v39 + 1) + 8 * i));
                  }

                  v21 = *(v20 + 540);
                  if (v21 != 255 && v21 > a1->mMaxColumn)
                  {
                    a1->mMaxColumn = v21;
                  }
                }
              }

              v17 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v39 objects:v43 count:16];
            }

            while (v17);
          }

          v11 = v37;
        }

        if (!v11->mCellCount)
        {
          mTileRowIndex = v11->mTileRowIndex;
          if (!v11->mMaxTileColumnIndexValid)
          {
            TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v11);
          }

          mMaxTileColumnIndex = v11->mMaxTileColumnIndex;
          v23 = v11;
          [(NSMutableArray *)a1->mRowInfos removeObject:v11];
          --a1->mNumRows;
          a1->mNumCells -= v11->mCellCount;

          if (mTileRowIndex >= a1->mMaxRow)
          {
            a1->mMaxRow = 0;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v24 = a1->mRowInfos;
            v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v40;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v40 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(*(&v39 + 1) + 8 * j) + 536);
                  if (v29 > a1->mMaxRow)
                  {
                    a1->mMaxRow = v29;
                  }
                }

                v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
              }

              while (v26);
            }
          }

          if (mMaxTileColumnIndex != 255 && mMaxTileColumnIndex >= a1->mMaxColumn)
          {
            a1->mMaxColumn = 0;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v30 = a1->mRowInfos;
            v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v40;
              do
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v40 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v39 + 1) + 8 * k);
                  if (*(v35 + 538))
                  {
                    if ((*(v35 + 541) & 1) == 0)
                    {
                      TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v39 + 1) + 8 * k));
                    }

                    v36 = *(v35 + 540);
                    if (v36 != 255 && v36 > a1->mMaxColumn)
                    {
                      a1->mMaxColumn = v36;
                    }
                  }
                }

                v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v39 objects:v43 count:16];
              }

              while (v32);
            }
          }
        }

        return;
      }

      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    a1->mNumCells += v14;
    goto LABEL_11;
  }
}

uint64_t TSTTableTileInsertColumns(uint64_t a1, char a2, int a3, char a4)
{
  v23 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 56);
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        TSTTableTileRowInfoInsertColumns(v13, a2, a3, a4);
        if ((v13[541] & 1) == 0)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v13);
        }

        v14 = v13[540];
        v15 = v10;
        if (v14 > v10)
        {
          v15 = v13[540];
        }

        if (v14 != 255)
        {
          v10 = v15;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 48) = v10;
  return 0;
}

uint64_t TSTTableTileRemoveColumns(uint64_t a1, int a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 56);
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        mCellCount = v11->mCellCount;
        TSTTableTileRowInfoRemoveColumns(v11, a2, a3);
        v13 = v11->mCellCount - mCellCount;
        if (v13)
        {
          *(a1 + 52) += v13;
        }

        if (!v11->mMaxTileColumnIndexValid)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v11);
        }

        mMaxTileColumnIndex = v11->mMaxTileColumnIndex;
        v15 = v8;
        if (mMaxTileColumnIndex > v8)
        {
          v15 = v11->mMaxTileColumnIndex;
        }

        if (mMaxTileColumnIndex != 255)
        {
          v8 = v15;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 48) = v8;
  return 0;
}

void TSTTableTileMoveColumns(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  if (*(a1 + 64))
  {
    v8 = *(a1 + 48);
    if (v8 >= a2 || v8 >= a3)
    {
      v10 = malloc_type_malloc(0x57FFA8uLL, 0x100004052888210uLL);
      v11 = malloc_type_malloc(0x1FFFEuLL, 0x1000040BDFB0063uLL);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v20 = a1;
      obj = *(a1 + 56);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            TSTTableTileRowInfoMoveColumns(v17, a2, a3, a4, v10, v11);
            if (!v17->mMaxTileColumnIndexValid)
            {
              TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v17);
            }

            mMaxTileColumnIndex = v17->mMaxTileColumnIndex;
            v19 = v14;
            if (mMaxTileColumnIndex > v14)
            {
              v19 = v17->mMaxTileColumnIndex;
            }

            if (mMaxTileColumnIndex != 255)
            {
              v14 = v19;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      free(v10);
      free(v11);
      *(v20 + 48) = v14;
    }
  }
}

uint64_t TSTTableTileInsertRows(uint64_t a1, unsigned int a2, __int16 a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(a1 + 56);
  result = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = *(v12 + 536);
        if (v13 == a2)
        {
          v14 = a4;
        }

        else
        {
          v14 = 1;
        }

        if (v13 >= a2 && v14 != 0)
        {
          v16 = v13 + a3;
          [*(*(&v23 + 1) + 8 * v11) willModify];
          *(v12 + 536) = v16;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v9 = result;
    }

    while (result);
  }

  if (*(a1 + 64))
  {
    *(a1 + 50) = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = *(a1 + 56);
    result = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (result)
    {
      v18 = result;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(*(&v27 + 1) + 8 * v20) + 536);
          if (v21 > *(a1 + 50))
          {
            *(a1 + 50) = v21;
          }

          ++v20;
        }

        while (v18 != v20);
        result = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v18 = result;
      }

      while (result);
    }
  }

  return result;
}

void TSTTableTileRemoveRows(uint64_t a1, unsigned int a2, int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v6 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v7 = 0;
    v8 = 0;
    v27 = a3;
    v9 = a3 + a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), (v6 + ~v7));
      v11 = ValueAtIndex[268];
      if (v11 >= a2)
      {
        v12 = ValueAtIndex;
        if (v9 <= v11)
        {
          v13 = v11 - v27;
          [ValueAtIndex willModify];
          v12[268] = v13;
        }

        else
        {
          ++v8;
          *(a1 + 52) -= ValueAtIndex[269];
          CFArrayRemoveValueAtIndex(*(a1 + 56), (v6 + ~v7));
        }
      }

      ++v7;
    }

    while (v6 != v7);
    *(a1 + 64) -= v8;
    if (*(a1 + 64))
    {
      *(a1 + 50) = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = *(a1 + 56);
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(*(&v28 + 1) + 8 * i) + 536);
            if (v19 > *(a1 + 50))
            {
              *(a1 + 50) = v19;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }

      *(a1 + 48) = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = *(a1 + 56);
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v28 + 1) + 8 * j);
            if (*(v25 + 538))
            {
              if ((*(v25 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v28 + 1) + 8 * j));
              }

              v26 = *(v25 + 540);
              if (v26 != 255 && v26 > *(a1 + 48))
              {
                *(a1 + 48) = v26;
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v22);
      }
    }

    else
    {
      *(a1 + 50) = 0;
      *(a1 + 48) = 0;
    }
  }
}

void TSTTableTileYankRows(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v7 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), (v7 + ~v8));
      v11 = ValueAtIndex[268];
      if (v11 >= a2 && a3 + a2 > v11)
      {
        ++v9;
        *(a1 + 52) -= ValueAtIndex[269];
        [a4 insertObject:ValueAtIndex atIndex:0];
        CFArrayRemoveValueAtIndex(*(a1 + 56), (v7 + ~v8));
      }

      ++v8;
    }

    while (v7 != v8);
    *(a1 + 64) -= v9;
    if (*(a1 + 64))
    {
      *(a1 + 50) = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = *(a1 + 56);
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(*(&v27 + 1) + 8 * i) + 536);
            if (v18 > *(a1 + 50))
            {
              *(a1 + 50) = v18;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }

      *(a1 + 48) = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = *(a1 + 56);
      v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v27 + 1) + 8 * j);
            if (*(v24 + 538))
            {
              if ((*(v24 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v27 + 1) + 8 * j));
              }

              v25 = *(v24 + 540);
              if (v25 != 255 && v25 > *(a1 + 48))
              {
                *(a1 + 48) = v25;
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v21);
      }
    }

    else
    {
      *(a1 + 50) = 0;
      *(a1 + 48) = 0;
    }
  }
}

unsigned __int8 *TSTTableTileYankRow(uint64_t a1, unsigned int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 56);
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if (v9[268] == a2)
        {
          *(a1 + 52) -= v9[269];
          v10 = v9;
          [*(a1 + 56) removeObject:v9];
          --*(a1 + 64);
          if (v10)
          {
            if (*(a1 + 50) <= a2)
            {
              v11 = v10;
              *(a1 + 50) = 0;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v12 = *(a1 + 56);
              v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v32;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v32 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(*(&v31 + 1) + 8 * j) + 536);
                    if (v17 > *(a1 + 50))
                    {
                      *(a1 + 50) = v17;
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
                }

                while (v14);
              }

              v10 = v11;
            }

            if ((v10[541] & 1) == 0)
            {
              TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v10);
            }

            if (v10[540] >= *(a1 + 48))
            {
              v26 = v10;
              *(a1 + 48) = 0;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v18 = *(a1 + 56);
              v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v32;
                do
                {
                  for (k = 0; k != v20; ++k)
                  {
                    if (*v32 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v31 + 1) + 8 * k);
                    if (*(v23 + 538))
                    {
                      if ((*(v23 + 541) & 1) == 0)
                      {
                        TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v31 + 1) + 8 * k));
                      }

                      v24 = *(v23 + 540);
                      if (v24 != 255 && v24 > *(a1 + 48))
                      {
                        *(a1 + 48) = v24;
                      }
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
                }

                while (v20);
              }

              v10 = v26;
            }
          }

          return v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
  return v10;
}

uint64_t TSTTableTileSpliceRow(TSTTableTile *a1, unsigned int a2, TSTTableTileRowInfo *a3)
{
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileSpliceRow(TSTTableTile *, TSURowIndex, TSTTableTileRowInfo *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 703, @"Can't splice in a nil row!"}];
  }

  if ([(TSPContainedObject *)a3 owner]!= a1)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileSpliceRow(TSTTableTile *, TSURowIndex, TSTTableTileRowInfo *)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 704, @"Tile doesn't own that row!"}];
  }

  [(TSPObject *)a1 willModify];

  return p_InsertRowInfoWithRowIndex(a1, a3, a2);
}

uint64_t p_InsertRowInfoWithRowIndex(TSTTableTile *a1, TSTTableTileRowInfo *a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = 0x277D6C000uLL;
  if ([(TSPContainedObject *)a2 owner]!= a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_InsertRowInfoWithRowIndex(TSTTableTile *, TSTTableTileRowInfo *, TSURowIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 253, @"Tile doesn't own that row!"}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = a1;
  obj = a1->mRowInfos;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v27;
LABEL_5:
    v12 = 0;
    v22 = v10 + v9;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(*(&v26 + 1) + 8 * v12) + 536);
      if (v13 > a3)
      {
        break;
      }

      if (v13 == a3)
      {
        v14 = v5;
        v15 = [*(v5 + 656) currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_InsertRowInfoWithRowIndex(TSTTableTile *, TSTTableTileRowInfo *, TSURowIndex)"}];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"];
        v18 = v15;
        v5 = v14;
        [v18 handleFailureInFunction:v16 file:v17 lineNumber:263 description:@"Duplicate row indices!"];
      }

      ++v10;
      if (v9 == ++v12)
      {
        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        v10 = v22;
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  [(TSPObject *)v24 willModify];
  result = [(NSMutableArray *)v24->mRowInfos insertObject:a2 atIndex:v10];
  ++v24->mNumRows;
  v24->mNumCells += a2->mCellCount;
  if (v24->mMaxRow < a3)
  {
    v24->mMaxRow = a3;
  }

  if (!a2->mMaxTileColumnIndexValid)
  {
    result = TSTTableTileRowInfoRecalculateMaxTileColumnIndex(a2);
  }

  mMaxTileColumnIndex = a2->mMaxTileColumnIndex;
  if (mMaxTileColumnIndex != 255)
  {
    mMaxColumn = v24->mMaxColumn;
    if (mMaxColumn == 255 || mMaxTileColumnIndex > mMaxColumn)
    {
      v24->mMaxColumn = mMaxTileColumnIndex;
    }
  }

  return result;
}

uint64_t TSTTableTileFindMidpointForRowSplit(uint64_t a1)
{
  if (*(a1 + 64) <= 1u)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSTTableTileFindMidpointForRowSplit(TSTTableTile *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 747, @"Can't split a tile with out more than one row!"}];
  }

  v4 = *([*(a1 + 56) objectAtIndex:0] + 536);
  v5 = *(a1 + 64);
  v6 = 1;
  if (v5 >= 2)
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v6);
      v8 = ValueAtIndex[268];
      if (v4 + 1 != v8)
      {
        break;
      }

      ++v6;
      v5 = *(a1 + 64);
      v4 = ValueAtIndex[268];
      if (v5 <= v6)
      {
        v4 = ValueAtIndex[268];
        goto LABEL_10;
      }
    }

    if (v8 <= v4)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSTTableTileFindMidpointForRowSplit(TSTTableTile *)"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 768, @"Row indexes out of order in split!"}];
    }

    v5 = *(a1 + 64);
  }

LABEL_10:
  v11 = v6;
  if (v6 >= v5 >> 1)
  {
    LOWORD(v12) = v4;
  }

  else
  {
    do
    {
      v12 = *(CFArrayGetValueAtIndex(*(a1 + 56), v11) + 268);
      if (v12 <= v4)
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSTTableTileFindMidpointForRowSplit(TSTTableTile *)"];
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 779, @"Row indexes out of order in split!"}];
      }

      ++v6;
      ++v11;
      v4 = v12;
    }

    while (v6 < (*(a1 + 64) >> 1));
  }

  return v12;
}

TSTTableTile *TSTTableTileSplitRows(uint64_t a1, unsigned int a2)
{
  v53 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v31 = -[TSTTableTile initWithContext:]([TSTTableTile alloc], "initWithContext:", [a1 context]);
  if (*(a1 + 50) <= a2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 50) - a2];
  }

  obj = v4;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
  v6 = *(a1 + 56);
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(*(&v42 + 1) + 8 * i) + 536) >= a2)
        {
          [obj addObject:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v8);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v32)
  {
    v30 = *v39;
    v29 = a2;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        mTileRowIndex = v12->mTileRowIndex;
        if (!v12->mMaxTileColumnIndexValid)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v12);
        }

        v36 = v11;
        mMaxTileColumnIndex = v12->mMaxTileColumnIndex;
        v14 = v12;
        [*(a1 + v5[929]) removeObject:v12];
        --*(a1 + 64);
        *(a1 + 52) -= v12->mCellCount;

        if (mTileRowIndex >= *(a1 + 50))
        {
          v34 = v12;
          *(a1 + 50) = 0;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v15 = *(a1 + v5[929]);
          v16 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v47;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v47 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(*(&v46 + 1) + 8 * j) + 536);
                if (v20 > *(a1 + 50))
                {
                  *(a1 + 50) = v20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
            }

            while (v17);
          }

          LOWORD(a2) = v29;
          v5 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
          v12 = v34;
        }

        if (mMaxTileColumnIndex != 255 && mMaxTileColumnIndex >= *(a1 + 48))
        {
          v35 = v12;
          *(a1 + 48) = 0;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v21 = *(a1 + v5[929]);
          v22 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v47;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v47 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v46 + 1) + 8 * k);
                if (*(v26 + 538))
                {
                  if ((*(v26 + 541) & 1) == 0)
                  {
                    TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v46 + 1) + 8 * k));
                  }

                  v27 = *(v26 + 540);
                  if (v27 != 255 && v27 > *(a1 + 48))
                  {
                    *(a1 + 48) = v27;
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
            }

            while (v23);
          }

          LOWORD(a2) = v29;
          v5 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
          v12 = v35;
        }

        [(TSPContainedObject *)v12 setOwner:v31];
        [(TSPContainedObject *)v12 willModify];
        v12->mTileRowIndex = mTileRowIndex - a2;
        p_InsertRowInfoWithRowIndex(v31, v12, (mTileRowIndex - a2));
        v11 = v36 + 1;
      }

      while (v36 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v32);
  }

  return v31;
}

uint64_t TSTTableTileMergeRows(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  [a2 willModify];
  if (*(a1 + 50) >= a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileMergeRows(TSTTableTile *, TSTTableTile *, TSURowIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 841, @"Overlapping tiles in tile merge!"}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = *(a2 + 56);
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = v13[268] + a3;
        [v13 willModify];
        v13[268] = v14;
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(a2 + 56);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v22 + 1) + 8 * j) setOwner:a1];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [*(a1 + 56) addObjectsFromArray:*(a2 + 56)];
  v20 = *(a1 + 48);
  if (v20 <= *(a2 + 48))
  {
    LOBYTE(v20) = *(a2 + 48);
  }

  *(a1 + 48) = v20;
  *(a1 + 50) = *(a2 + 50) + a3;
  *(a1 + 52) += *(a2 + 52);
  *(a1 + 64) = [*(a1 + 56) count];
  result = [*(a2 + 56) removeAllObjects];
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 52) = 0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t TSTTableSetDefaultRowHeight(double *a1, double a2)
{
  result = [a1 willModify];
  a1[12] = a2;
  return result;
}

double TSTTableDefaultRowHeight(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 96);
  }

  else
  {
    return 10.0;
  }
}

uint64_t TSTTableSetDefaultColumnWidth(double *a1, double a2)
{
  result = [a1 willModify];
  a1[13] = a2;
  return result;
}

double TSTTableDefaultColumnWidth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 104);
  }

  else
  {
    return 0.0;
  }
}

id TSTTableMergeRangesForCellRegion(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = [a2 boundingCellRange];
  v5 = TSTTableDataStoreMergeRangesForCellRange(v3, v4);
  v6 = TSTTableDataStoreMergeRangesForCellRange(v3, v4);
  if (v6)
  {
    v7 = [v5 iterator];
    if ([v7 hasNextMergeRegion])
    {
      do
      {
        v8 = [v7 nextMergeRegion];
        if (([a2 intersectsCellRange:v8] & 1) == 0)
        {
          [v6 remove:v8];
        }
      }

      while (([v7 hasNextMergeRegion] & 1) != 0);
    }
  }

  return v6;
}

id TSTSetDefaultCellForTableArea(id *a1, int a2, void *a3)
{
  if (a2 <= 2)
  {
    if (!a2)
    {

      result = a3;
      *a1 = result;
      return result;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {

        result = a3;
        a1[2] = result;
        return result;
      }

      goto LABEL_12;
    }

LABEL_10:

    result = a3;
    a1[1] = result;
    return result;
  }

  switch(a2)
  {
    case 3:
      goto LABEL_9;
    case 4:
      goto LABEL_10;
    case 5:
LABEL_9:

      result = a3;
      a1[3] = result;
      return result;
  }

LABEL_12:
  v6 = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTSetDefaultCellForTableArea(TSTDefaultCellBlock *, TSTTableArea, TSTCell *)"}];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];

  return [v6 handleFailureInFunction:v7 file:v8 lineNumber:1651 description:@"illegal table region"];
}

uint64_t TSTTableDefaultCellForCellID(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (a2 >= a1[36])
  {
    return 3;
  }

  if (BYTE2(a2) >= a1[37])
  {
    return 3;
  }

  TSTCellCopy([a1 defaultCellForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a2 & 0xFF000000 | (BYTE2(a2) << 16) | a2)}], a3);
  return 0;
}

uint64_t TSTCellAtCellIDSuppressingFormula(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (a2 >= *(a1 + 72))
  {
    return 3;
  }

  if (BYTE2(a2) >= *(a1 + 74))
  {
    return 3;
  }

  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2 & 0xFF000000 | (BYTE2(a2) << 16) | a2);
  if (!v7)
  {
    return 1000;
  }

  [a3 inflateFromStorageRef:v7 dataStore:*(a1 + 48) suppressingFormulaInflation:a4];
  return 0;
}

uint64_t TSTTablePreflightSetCellAtCellID(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  if (a3 >= *(a1 + 72))
  {
    return 3;
  }

  v6 = BYTE2(a3);
  if (BYTE2(a3) >= *(a1 + 74))
  {
    return 3;
  }

  v8 = [a1 range];
  v9 = WORD2(v8) * HIWORD(v8);
  v10 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (v9 < v10 || (v12 = v10, v13 = TSTTableDataStoreCellExistsAtCellID(*(a1 + 48), a3 & 0xFF000000 | (v6 << 16) | v4), !a2) || v13)
  {
    if (!a2)
    {
      return 0;
    }
  }

  else if (TSTTableDataStoreNumberOfPopulatedCells(*(a1 + 48)) >= v12)
  {
    return 1001;
  }

  result = 0;
  v14 = *(a2 + 104);
  v15 = BYTE1(*(a2 + 8));
  if (v15 <= 5)
  {
    if (v15 == 2)
    {
      if (v14 & 0xFFFFFFFC) == 0x100 || (v14 - 262) < 9 && ((0x1BFu >> (v14 - 6)))
      {
        return 0;
      }

      v18 = (v14 & 0xFFFFFFF7) != 0x106 && v14 != 269 && (v14 - 268) < 0xFFFFFFFB;
      goto LABEL_43;
    }

    if (v15 != 3)
    {
      if (v15 == 5)
      {
        result = 0;
        if (v14 != 261 && v14 != 272)
        {
          goto LABEL_42;
        }
      }

      return result;
    }

LABEL_24:
    result = 0;
    if (v14 > 259)
    {
      if (v14 == 260 || v14 == 271)
      {
        return result;
      }
    }

    else if ((v14 + 1) < 3 || v14 == -999)
    {
      return result;
    }

    v18 = v14 != 271;
    goto LABEL_43;
  }

  switch(v15)
  {
    case 9u:
      goto LABEL_24;
    case 7u:
      if (v14 == 268)
      {
        return 0;
      }

      goto LABEL_42;
    case 6u:
      result = 0;
      if (v14 != 1 && v14 != 263)
      {
LABEL_42:
        v18 = 1;
LABEL_43:
        NSLog(@"%d", v18);
        v19 = [MEMORY[0x277D6C290] currentHandler];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUError TSTTablePreflightSetCellAtCellID(TSTTableModel *, TSTCell *, TSTCellID)"}];
        [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 1782, @"Attempting to add invalid cell to the model"}];
        return 0;
      }

      break;
  }

  return result;
}

uint64_t TSTTableSetCellAtCellIDIgnoringFormula(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a3;
  v6 = TSTTablePreflightSetCellAtCellID(a1, a2, a3);
  if (!v6)
  {
    TSTTableDataStoreSetCellAtCellID(*(a1 + 48), a2, v5);
  }

  return v6;
}

uint64_t TSTTablePreflightSetCellsWithCellMap(uint64_t a1, void *a2)
{
  v4 = [a2 count];
  v5 = TSTTableDataStoreNumberOfPopulatedCells(*(a1 + 48));
  v6 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (v4 + v5 < v6 || v4 == 0)
  {
    return 0;
  }

  v8 = v6;
  v9 = 0;
  for (i = v4 - 1; ; --i)
  {
    v11 = [a2 cellIDAtIndex:v9];
    v12 = [a2 cellAtIndex:v9];
    v4 = v4 & 0xFFFFFFFF00000000 | v11;
    v5 += (v12 != 0) & ~TSTTableDataStoreCellExistsAtCellID(*(a1 + 48), v4);
    if (v8 < v5)
    {
      break;
    }

    ++v9;
    if (i < v8 - v5 || i == 0)
    {
      return 0;
    }
  }

  return 1001;
}

uint64_t TSTTableSetCellsWithCellMapIgnoringFormulas(uint64_t a1, void *a2)
{
  v4 = TSTTablePreflightSetCellsWithCellMap(a1, a2);
  if (!v4)
  {
    TSTTableDataStoreSetCellsWithCellMap(*(a1 + 48), a2);
  }

  return v4;
}

uint64_t TSTCellAtCellIDHoldingReadLock(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v5 = 1;
  [a4 performRead:sel_p_fetchCellHoldingReadLock_returnCode_ withTarget:a1 argument:&v6 argument2:&v5];
  return v5;
}

void TSTTableGetFormatAtCellIDForFormulaReference(uint64_t a1@<X0>, int a2@<W1>, BOOL *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 >= *(a1 + 72) || BYTE2(a2) >= *(a1 + 74))
  {
    *(a5 + 32) = 0;
    *a5 = TSUInvalidFormat;
    *(a5 + 16) = unk_26CA67A30;
    return;
  }

  v9 = a2 & 0xFF000000 | (BYTE2(a2) << 16) | a2;
  v10 = TSTCellDictionaryCellAtCellID(*(a1 + 280), v9);
  if (v10)
  {
    if (a3)
    {
      *a3 = (*(v10 + 48) & 0x8010) == 0;
    }

    v11 = *(v10 + 17);
    v12 = *(v10 + 120);
    *a5 = *(v10 + 104);
    *(a5 + 16) = v12;
    *(a5 + 32) = v11;
    v13 = *a5;
    if ((*a5 & 0xFFFFFFFE) != 0x108)
    {
      goto LABEL_13;
    }

    TSTCellGetFormatOfType(v10, *(a5 + 32), a5);
    goto LABEL_12;
  }

  *v14.i64 = TSTTableDataStoreGetFormatAtCellID(*(a1 + 48), v9, a3, 0, a5);
  v13 = *a5;
  if ((*a5 & 0xFFFFFFFE) == 0x108)
  {
    TSTTableDataStoreGetFormatForFormatTypeAtCellID(*(a1 + 48), v9, *(a5 + 32), 0, v16, v14);
    v15 = v16[1];
    *a5 = v16[0];
    *(a5 + 16) = v15;
    *(a5 + 32) = v17;
LABEL_12:
    v13 = *a5;
  }

LABEL_13:
  if (a4)
  {
    if (v13 == 270)
    {
      *a4 = [objc_msgSend(objc_msgSend(a1 "documentRoot")];
      v13 = *a5;
    }

    else
    {
      *a4 = 0;
    }
  }

  if ((v13 - 270) <= 2)
  {
    TSTTableDataStorePopulateCustomFormat(*(a1 + 48), a5, 0.0);
  }
}

uint64_t TSTTableNumberOfComments(void *a1)
{
  v1 = [*(objc_msgSend(a1 "dataStore") + 120)];

  return TSTTableDataListGetCount(v1);
}

UInt8 *TSTTableHasCommentStorageAtCellID(uint64_t a1, int a2)
{
  result = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2);
  if (result)
  {
    return ((result[5] >> 4) & 1);
  }

  return result;
}

UInt8 *TSTTableGetCommentStorageAtCellID(uint64_t a1, int a2)
{
  result = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2);
  if (result)
  {
    v4 = result;
    v5 = objc_alloc_init(TSTCell);
    [(TSTCell *)v5 inflateFromStorageRef:v4 dataStore:*(a1 + 48)];
    if (v5)
    {
      mCommentStorage = v5->mPrivate.mCommentStorage;
    }

    else
    {
      mCommentStorage = 0;
    }

    v7 = mCommentStorage;

    return v7;
  }

  return result;
}

uint64_t TSTTableSetCommentStorageAtCellID(uint64_t a1, TSDCommentStorage *a2, unsigned int a3)
{
  v6 = objc_alloc_init(TSTCell);
  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a3);
  if (v7)
  {
    [(TSTCell *)v6 inflateFromStorageRef:v7 dataStore:*(a1 + 48)];
  }

  else
  {
    v6->mPrivate.mCommentStorageID = 0;
  }

  TSTCellSetCommentStorageClearingID(v6, a2, 1);
  v8 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v6, a3);

  return v8;
}

uint64_t TSTTableRemoveCommentStorageAtCellID(uint64_t a1, unsigned int a2)
{
  v4 = objc_alloc_init(TSTCell);
  v5 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2);
  if (v5)
  {
    [(TSTCell *)v4 inflateFromStorageRef:v5 dataStore:*(a1 + 48)];
    mCommentStorage = v4->mPrivate.mCommentStorage;
    if (mCommentStorage)
    {

      v4->mPrivate.mCommentStorage = 0;
    }

    v4->mPrivate.mCommentStorageID = 0;
    v7 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v4, a2);
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

BOOL TSTTableHeaderInfoForRowIsNilOrEmpty(uint64_t a1, uint64_t a2)
{
  v2 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
  if (!v2)
  {
    return 1;
  }

  if (*(v2 + 24) != 0.0 || *(v2 + 34) || *(v2 + 8) || *(v2 + 16))
  {
    return 0;
  }

  return *(v2 + 32) == 0;
}

BOOL TSTTableHeaderInfoForColumnIsNilOrEmpty(uint64_t a1, uint64_t a2)
{
  v2 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
  if (!v2)
  {
    return 1;
  }

  if (*(v2 + 24) != 0.0 || *(v2 + 34) || *(v2 + 8) || *(v2 + 16))
  {
    return 0;
  }

  return *(v2 + 32) == 0;
}

uint64_t TSTTableSetCellStyleAtRow(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 8) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveRowHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

uint64_t TSTTableSetTextStyleAtRow(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 16) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveRowHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

uint64_t TSTTableGetCellStyleAtRow(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForRow(a1[6], a2, 0, 0);
  if (v6 && (result = *(v6 + 8)) != 0)
  {
    *a3 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderRows] <= v4)
    {
      v8 = [a1 numberOfRows];
      if ((v8 - [a1 numberOfFooterRows]) >= v4)
      {

        return [a1 bodyCellStyle];
      }

      else
      {

        return [a1 footerRowCellStyle];
      }
    }

    else
    {

      return [a1 headerRowCellStyle];
    }
  }

  return result;
}

uint64_t TSTTableGetTextStyleAtRow(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForRow(a1[6], a2, 0, 0);
  if (v6 && (result = *(v6 + 16)) != 0)
  {
    *a3 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderRows] <= v4)
    {
      v8 = [a1 numberOfRows];
      if ((v8 - [a1 numberOfFooterRows]) >= v4)
      {

        return [a1 bodyTextStyle];
      }

      else
      {

        return [a1 footerRowTextStyle];
      }
    }

    else
    {

      return [a1 headerRowTextStyle];
    }
  }

  return result;
}

uint64_t TSTTableSetCellStyleAtColumn(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 8) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveColumnHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

uint64_t TSTTableSetTextStyleAtColumn(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 16) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveColumnHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

uint64_t TSTTableGetCellStyleAtColumn(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForColumn(a1[6], a2, 0, 0);
  if (v6 && *(v6 + 8))
  {
    *a3 = 0;
    return *(v6 + 8);
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderColumns] <= v4)
    {

      return [a1 bodyCellStyle];
    }

    else
    {

      return [a1 headerColumnCellStyle];
    }
  }
}

uint64_t TSTTableGetTextStyleAtColumn(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForColumn(a1[6], a2, 0, 0);
  if (v6 && (result = *(v6 + 16)) != 0)
  {
    *a3 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderColumns] <= v4)
    {

      return [a1 bodyTextStyle];
    }

    else
    {

      return [a1 headerColumnTextStyle];
    }
  }

  return result;
}

uint64_t TSTTableDefaultCellStyleForCellID(void *a1, unsigned int a2)
{
  v3 = [a1 tableAreaForCellID:a2];

  return [a1 defaultCellStyleForTableArea:v3];
}

uint64_t TSTTableCellStyleForCellWithEmptyStyleAtCellID(uint64_t *a1, unsigned int a2, char *a3)
{
  v10 = 0;
  CellStyleAtRow = TSTTableGetCellStyleAtRow(a1, a2, &v10 + 1);
  CellStyleAtColumn = TSTTableGetCellStyleAtColumn(a1, BYTE2(a2), &v10);
  if (HIBYTE(v10) == 1)
  {
    v8 = v10;
    if (v10)
    {
      CellStyleAtRow = [a1 defaultCellStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a2)}];
      if (a3)
      {
        v8 = 1;
LABEL_8:
        *a3 = v8;
      }
    }

    else
    {
      CellStyleAtRow = CellStyleAtColumn;
      if (a3)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  return CellStyleAtRow;
}

uint64_t TSTTableDefaultTextStyleForCellID(void *a1, unsigned int a2)
{
  v3 = [a1 tableAreaForCellID:a2];

  return [a1 defaultTextStyleForTableArea:v3];
}

uint64_t TSTTableTextStyleForCellWithEmptyStyleAtCellID(uint64_t *a1, unsigned int a2, char *a3)
{
  v10 = 0;
  TextStyleAtRow = TSTTableGetTextStyleAtRow(a1, a2, &v10 + 1);
  TextStyleAtColumn = TSTTableGetTextStyleAtColumn(a1, BYTE2(a2), &v10);
  if (HIBYTE(v10) == 1)
  {
    v8 = v10;
    if (v10)
    {
      TextStyleAtRow = [a1 defaultTextStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a2)}];
      if (a3)
      {
        v8 = 1;
LABEL_8:
        *a3 = v8;
      }
    }

    else
    {
      TextStyleAtRow = TextStyleAtColumn;
      if (a3)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  return TextStyleAtRow;
}

uint64_t TSTCellStyleIsEqualToDefaultCellStyleForCellID(void *a1, void *a2, unsigned int a3)
{
  v4 = [a1 defaultCellStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a3)}];
  if (!v4)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultCellStyleForCellID(TSTTableModel *, TSTCellStyle *, TSTCellID)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2378, @"null cell style"}];
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultCellStyleForCellID(TSTTableModel *, TSTCellStyle *, TSTCellID)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2383, @"null style"}];
    return 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:

  return [a2 isEqual:v4];
}

uint64_t TSTCellStyleIsEqualToDefaultTextStyleForCellID(void *a1, void *a2, unsigned int a3)
{
  v4 = [a1 defaultTextStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a3)}];
  if (!v4)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultTextStyleForCellID(TSTTableModel *, TSWPParagraphStyle *, TSTCellID)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2392, @"null cell style"}];
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultTextStyleForCellID(TSTTableModel *, TSWPParagraphStyle *, TSTCellID)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2397, @"null style"}];
    return 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:

  return [a2 isEqual:v4];
}

uint64_t TSTTableSetCellStyleAtCellID(uint64_t a1, TSTCellStyle *a2, unsigned int a3)
{
  v6 = objc_alloc_init(TSTCell);
  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a3);
  if (v7)
  {
    [(TSTCell *)v6 inflateFromStorageRef:v7 dataStore:*(a1 + 48)];
  }

  else
  {
    v6->mPrivate.mCellStyleID = 0;
  }

  mCellStyle = v6->mPrivate.mCellStyle;
  if (mCellStyle != a2)
  {

    v6->mPrivate.mCellStyle = a2;
    v6->mPrivate.mCellStyleID = 0;
  }

  v9 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v6, a3);

  return v9;
}

uint64_t TSTTableSetTextStyleAtCellID(uint64_t a1, TSWPParagraphStyle *a2, unsigned int a3)
{
  v6 = objc_alloc_init(TSTCell);
  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a3);
  if (v7)
  {
    [(TSTCell *)v6 inflateFromStorageRef:v7 dataStore:*(a1 + 48)];
  }

  else
  {
    v6->mPrivate.mTextStyleID = 0;
  }

  mTextStyle = v6->mPrivate.mTextStyle;
  if (mTextStyle != a2)
  {

    v6->mPrivate.mTextStyle = a2;
    v6->mPrivate.mTextStyleID = 0;
  }

  v9 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v6, a3);

  return v9;
}

uint64_t TSTTableGetCellStyleAtCellID(uint64_t *a1, unsigned int a2, char *a3)
{
  v10 = 0;
  v5 = a2;
  CellStyleAtCellID = TSTTableDataStoreGetCellStyleAtCellID(a1[6], a2, &v10);
  result = v10;
  if (CellStyleAtCellID)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10 == 0;
  }

  if (v8)
  {
    return TSTTableCellStyleForCellWithEmptyStyleAtCellID(a1, v5, a3);
  }

  if (a3)
  {
    v9 = [a1 defaultCellStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", v5)}];
    *a3 = [v9 isEqual:v10];
    return v10;
  }

  return result;
}

TSWPParagraphStyle *TSTTableGetTextStyleAtCellID(uint64_t *a1, unsigned int a2, char *a3)
{
  v10 = 0;
  v5 = a2;
  TextStyleAtCellID = TSTTableDataStoreGetTextStyleAtCellID(a1[6], a2, &v10);
  result = v10;
  if (TextStyleAtCellID)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10 == 0;
  }

  if (v8)
  {
    return TSTTableTextStyleForCellWithEmptyStyleAtCellID(a1, v5, a3);
  }

  if (a3)
  {
    v9 = [a1 defaultTextStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", v5)}];
    *a3 = [v9 isEqual:v10];
    return v10;
  }

  return result;
}

uint64_t TSTTableNumberOfPopulatedCellsInRows(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInRows(TSTTableModel *, TSURowIndex, TSUColumnRowCount)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2615, @"Invalid count argument in TSTTableNumberPopulatedCellsInColumns"}];
  }

  v8 = *(a1 + 72);
  v9 = v3 + a2;
  if (v8 <= a2 || v9 > v8)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInRows(TSTTableModel *, TSURowIndex, TSUColumnRowCount)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2616, @"Bounds violation in TSTTableNumberPopulatedCellsInColumns"}];
  }

  if (v3)
  {
    v3 = 0;
    do
    {
      v13 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
      if (v13)
      {
        v3 = v3 + *(v13 + 34);
      }

      LOWORD(a2) = a2 + 1;
    }

    while (v9 > a2);
  }

  return v3;
}

uint64_t TSTTableNumberOfPopulatedCellsInColumns(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInColumns(TSTTableModel *, TSUColumnIndex, TSUColumnRowCount)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2632, @"Invalid count argument in TSTTableNumberPopulatedCellsInColumns"}];
  }

  v8 = *(a1 + 74);
  v9 = v3 + a2;
  if (a2 >= v8 || v9 > v8)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInColumns(TSTTableModel *, TSUColumnIndex, TSUColumnRowCount)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2633, @"Bounds violation in TSTTableNumberPopulatedCellsInColumns"}];
  }

  if (v3)
  {
    v3 = 0;
    do
    {
      v13 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
      if (v13)
      {
        v3 = v3 + *(v13 + 34);
      }

      LOBYTE(a2) = a2 + 1;
    }

    while (v9 > a2);
  }

  return v3;
}

uint64_t TSTTableCellLeftOfCell(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 24;
  v5 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v5 == 0xFFFF || (v5 & 0xFF0000) == 0xFF0000)
  {
    v7 = v2;
  }

  else if ((v5 & 0xFFFF00000000) == 0 || HIWORD(v5) == 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 >> 16;
  v9 = [a1 range] >> 16;
  while (v8 > v9)
  {
    LOBYTE(v8) = v8 - 1;
    if (!TSTHidingActionForColumn(a1, v8))
    {
      return (v8 << 16) | (v4 << 24) | v2;
    }
  }

  LODWORD(v4) = 0;
  LOBYTE(v8) = -1;
  LOWORD(v2) = -1;
  return (v8 << 16) | (v4 << 24) | v2;
}

uint64_t TSTTableCellRightOfCell(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = a2 >> 24;
  v6 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v6 != 0xFFFF && (v6 & 0xFF0000) != 0xFF0000 && HIWORD(v6) != 0 && (v6 & 0xFFFF00000000) != 0)
  {
    LODWORD(v4) = HIDWORD(v6) + WORD1(v6) + 255;
  }

  v9 = [a1 range];
  v10 = HIDWORD(v9) + WORD1(v9) + 255;
  while (v4 < v10)
  {
    LOBYTE(v4) = v4 + 1;
    if (!TSTHidingActionForColumn(a1, v4))
    {
      return (v4 << 16) | (v5 << 24) | v2;
    }
  }

  LODWORD(v5) = 0;
  LOBYTE(v4) = -1;
  v2 = -1;
  return (v4 << 16) | (v5 << 24) | v2;
}

uint64_t TSTTableCellAboveCell(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v5 != 0xFFFF && (v5 & 0xFF0000) != 0xFF0000 && (v5 & 0xFFFF00000000) != 0 && HIWORD(v5) != 0)
  {
    v2 = v5;
  }

  v7 = [a1 range];
  while (v2 > v7)
  {
    if (!TSTHidingActionForRow(a1, --v2))
    {
      return v2 | (v4 << 16);
    }
  }

  LOWORD(v4) = 255;
  v2 = -1;
  return v2 | (v4 << 16);
}

uint64_t TSTTableCellBelowCell(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v5 != 0xFFFF && (v5 & 0xFF0000) != 0xFF0000 && HIWORD(v5) != 0 && (v5 & 0xFFFF00000000) != 0)
  {
    v2 = v5 + HIWORD(v5) - 1;
  }

  v8 = [a1 range];
  v9 = v8 + HIWORD(v8) - 1;
  while (v2 < v9)
  {
    if (!TSTHidingActionForRow(a1, ++v2))
    {
      return v2 | (v4 << 16);
    }
  }

  LOWORD(v4) = 255;
  v2 = -1;
  return v2 | (v4 << 16);
}

uint64_t TSTTableColumnLeftOfColumn(void *a1, unsigned __int8 a2)
{
  v4 = [a1 range] >> 16;
  while (a2 > v4)
  {
    if (!TSTHidingActionForColumn(a1, --a2))
    {
      return a2;
    }
  }

  return -1;
}

uint64_t TSTTableColumnRightOfColumn(void *a1, unsigned __int8 a2)
{
  v4 = [a1 range];
  v5 = HIDWORD(v4) + WORD1(v4) + 255;
  while (a2 < v5)
  {
    if (!TSTHidingActionForColumn(a1, ++a2))
    {
      return a2;
    }
  }

  return -1;
}

uint64_t TSTTableRowAboveRow(void *a1, unsigned __int16 a2)
{
  v4 = [a1 range];
  while (a2 > v4)
  {
    if (!TSTHidingActionForRow(a1, --a2))
    {
      return a2;
    }
  }

  return -1;
}

uint64_t TSTTableRowBelowRow(void *a1, unsigned __int16 a2)
{
  v4 = [a1 range];
  v5 = v4 + HIWORD(v4) - 1;
  while (a2 < v5)
  {
    if (!TSTHidingActionForRow(a1, ++a2))
    {
      return a2;
    }
  }

  return -1;
}

double TSTTableHeightOfRow(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 == 0xFFFF)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTTableHeightOfRow(TSTTableModel *, TSURowIndex, BOOL *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2799, @"Bad row index!"}];
  }

  v8 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
  if (v8 && *(v8 + 24) != 0.0)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v9 = v8 + 24;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v9 = a1 + 96;
  }

  return *v9;
}

double TSTTableWidthOfColumn(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 == 255)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTTableWidthOfColumn(TSTTableModel *, TSUColumnIndex, BOOL *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2819, @"Bad column index!"}];
  }

  v8 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
  if (v8 && *(v8 + 24) != 0.0)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v9 = v8 + 24;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v9 = a1 + 104;
  }

  return *v9;
}

uint64_t TSTTableSetHeightOfRow(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 == 0xFFFF)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetHeightOfRow(TSTTableModel *, TSURowIndex, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2839, @"Bad row index!"}];
  }

  if (a3 < 8.0 && a3 != 0.0)
  {
    a3 = 8.0;
  }

  result = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 1, 1);
  v10 = result;
  if (!result)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetHeightOfRow(TSTTableModel *, TSURowIndex, CGFloat)"}];
    result = [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2849, @"invalid nil value for '%s'", "hdr"}];
  }

  *(v10 + 24) = a3;
  if (*(v10 + 24) == 0.0 && !*(v10 + 34) && !*(v10 + 8) && !*(v10 + 16) && !*(v10 + 32))
  {
    v13 = *(a1 + 48);

    return TSTTableDataStoreRemoveRowHeadersAtIndex(v13, a2, 1);
  }

  return result;
}

uint64_t TSTTableSetWidthOfColumn(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 == 255)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetWidthOfColumn(TSTTableModel *, TSUColumnIndex, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2860, @"Bad column index!"}];
  }

  if (a3 < 8.0 && a3 != 0.0)
  {
    a3 = 8.0;
  }

  result = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 1, 1);
  v10 = result;
  if (!result)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetWidthOfColumn(TSTTableModel *, TSUColumnIndex, CGFloat)"}];
    result = [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2868, @"invalid nil value for '%s'", "hdr"}];
  }

  *(v10 + 24) = a3;
  if (*(v10 + 24) == 0.0 && !*(v10 + 34) && !*(v10 + 8) && !*(v10 + 16) && !*(v10 + 32))
  {
    v13 = *(a1 + 48);

    return TSTTableDataStoreRemoveColumnHeadersAtIndex(v13, a2, 1);
  }

  return result;
}

uint64_t TSTTableComputeDefaultRowHeight(double *a1)
{
  result = TSTTableComputeDefaultFontHeight(a1, 0);
  v4 = v3;
  if (a1)
  {
    v5 = a1[12];
  }

  else
  {
    v5 = 10.0;
  }

  if (v4 > v5)
  {
    result = [a1 willModify];
    a1[12] = v4;
  }

  return result;
}

uint64_t TSTTableComputeDefaultFontHeight(void *a1, uint64_t a2)
{
  result = [a1 defaultCellForTableArea:a2];
  if (result)
  {
    v3 = *(result + 56);
    v4 = [*(result + 40) valueForProperty:904];
    TSWPFastCreateFontForStyle(0, v3, 0x64uLL);
    TSWPFontGetLineHeight();
    [v4 topInset];
    return [v4 bottomInset];
  }

  return result;
}

uint64_t TSTTableInsertRows(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  [a1 willModify];
  result = TSTTableDataStoreInsertRows(*(a1 + 48), a2, a3, a4);
  if (!result)
  {
    *(a1 + 72) += a3;
  }

  return result;
}

uint64_t TSTTableInsertColumns(uint64_t a1, char a2, uint64_t a3, char a4)
{
  [a1 willModify];
  TSTTableDataStoreInsertColumns(*(a1 + 48), a2, a3, a4);
  *(a1 + 74) += a3;
  return 0;
}

uint64_t TSTTableRemoveRowsIgnoringSize(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  [a1 willModify];
  v10 = [a1 range];
  if (*(a1 + 84))
  {
    v6 = a2;
    do
    {
      if (a3 + a2 <= v6)
      {
        break;
      }

      if (!*(a1 + 88) && !*(a1 + 92))
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUError TSTTableRemoveRowsIgnoringSize(TSTTableModel *, TSURowIndex, TSUColumnRowCount, BOOL)"}];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3053, @"Either mNumberOfUserHiddenRows or mNumberOfFilteredRows should be larger than 0 when mNumberOfHiddenRows is larger than 0"}];
      }

      if (TSTHidingActionForRow(a1, v6))
      {
        --*(a1 + 88);
        --*(a1 + 84);
      }

      if ((TSTHidingActionForRow(a1, v6) & 2) != 0)
      {
        --*(a1 + 92);
        --*(a1 + 84);
      }

      ++v6;
    }

    while (*(a1 + 84));
  }

  [a1 p_clearDataListEntriesInRange:v10 & 0xFFFFFFFF0000 | (a3 << 48) | a2 ignoreSizeChecks:{a4, v10}];
  TSTTableDataStoreRemoveRows(*(a1 + 48), a2, a3);
  *(a1 + 72) -= a3;
  return 0;
}

uint64_t TSTTableRemoveColumnsIgnoringSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 willModify];
  v8 = [a1 range];
  if (*(a1 + 86))
  {
    v9 = a2;
    do
    {
      if (a3 + a2 <= v9)
      {
        break;
      }

      if (TSTHidingActionForColumn(a1, v9))
      {
        --*(a1 + 90);
        --*(a1 + 86);
      }

      ++v9;
    }

    while (*(a1 + 86));
  }

  [a1 p_clearDataListEntriesInRange:v8 & 0xFFFF0000FF000000 | (a3 << 32) | (a2 << 16) | v8 ignoreSizeChecks:a4];
  TSTTableDataStoreRemoveColumns(*(a1 + 48), a2, a3);
  *(a1 + 74) -= a3;
  return 0;
}

void TSTTableUpdateMergeRegionsRightOrBelowAndIncludingIndex(uint64_t *a1, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (!a1 || !a3)
  {
    return;
  }

  v8 = a1;
  v37 = a3;
  if (a4)
  {
    v9 = ([a1 numberOfColumns] - a2);
    v10 = [v8 numberOfRows];
    if (v9 >= 0xFF)
    {
      v11 = 255;
    }

    else
    {
      v11 = v9;
    }

    v12 = (v10 << 48) | (v11 << 32) | (a2 << 16);
  }

  else
  {
    v13 = [a1 numberOfColumns];
    v14 = [v8 numberOfRows];
    if (v13 >= 0xFF)
    {
      v15 = 255;
    }

    else
    {
      v15 = v13;
    }

    v12 = (v15 << 32) | ((v14 - a2) << 48) | a2;
  }

  v16 = TSTTableDataStoreMergeRangesForCellRange(v8[6], v12);
  *&v38[8] = 0;
  v39 = 0;
  v40 = 0;
  v17 = [v16 iterator];
  *v38 = a5 ^ 1u;
  v36 = v8;
  while ([v17 hasNextMergeRegion])
  {
    v18 = [v17 nextMergeRegion];
    v19 = v18;
    if (a4)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18 >= a2;
    }

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v38;
    }

    if (v21 != 1 || a4 == 1 && BYTE2(v18) >= a2)
    {
      TSTTableDataStoreUnmerge(v8[6], v18);
      v22 = v19 >> 16;
      v23 = HIDWORD(v19);
      v24 = HIWORD(v19);
      if (a4)
      {
        if (a2 > BYTE2(v19) && a2 <= (BYTE4(v19) + BYTE2(v19) - 1))
        {
          LOWORD(v23) = WORD2(v19) + v37;
        }

        else
        {
          LOBYTE(v22) = BYTE2(v19) + v37;
        }
      }

      else
      {
        if (a2 <= v19 || a2 > (v19 + HIWORD(v19) - 1))
        {
          v25 = v19 + v37;
          goto LABEL_33;
        }

        v24 = (v24 + v37);
      }

      v25 = v19;
LABEL_33:
      v26 = v19 & 0xFF000000;
      v27 = v39;
      if (v39 >= v40)
      {
        v29 = (v39 - *&v38[4]) >> 3;
        if ((v29 + 1) >> 61)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v30 = (v40 - *&v38[4]) >> 2;
        if (v30 <= v29 + 1)
        {
          v30 = v29 + 1;
        }

        if (v40 - *&v38[4] >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v38[4], v31);
        }

        v32 = (8 * v29);
        *v32 = (v23 << 32) | (v24 << 48) | (v22 << 16) | v25 | v26;
        v28 = 8 * v29 + 8;
        v33 = (v32 - (v39 - *&v38[4]));
        memcpy(v33, *&v38[4], v39 - *&v38[4]);
        v34 = *&v38[4];
        *&v38[4] = v33;
        v39 = v28;
        v40 = 0;
        if (v34)
        {
          operator delete(v34);
        }

        v8 = v36;
      }

      else
      {
        *v39 = (v23 << 32) | (v24 << 48) | (v22 << 16) | v25 | v26;
        v28 = (v27 + 1);
      }

      v39 = v28;
    }
  }

  v35 = *&v38[4];
  if (*&v38[4] != v39)
  {
    do
    {
      TSTTableDataStoreMerge(v8[6], *v35++);
    }

    while (v35 != v39);
    v35 = *&v38[4];
  }

  if (v35)
  {
    v39 = v35;
    operator delete(v35);
  }
}

void sub_26C9CAF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSTTableMoveMergeRegionsWithColumnsOrRows(uint64_t *a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if (a3 >= a2)
  {
    v7 = a3 - a2;
  }

  else
  {
    v7 = a2 - a3 + a4;
  }

  if (a3 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  if (a3 >= a2)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (a5)
  {
    v10 = [a1 numberOfRows];
    if (v7 >= 0xFFu)
    {
      v11 = 255;
    }

    else
    {
      v11 = v7;
    }

    v12 = (v11 << 32) | (v10 << 48) | (v8 << 16);
  }

  else
  {
    v13 = [a1 numberOfColumns];
    if (v13 >= 0xFF)
    {
      v14 = 255;
    }

    else
    {
      v14 = v13;
    }

    v12 = (v7 << 48) | (v14 << 32) | v8;
  }

  v15 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
  result = TSTTableDataStoreMergeRangesForCellRange(a1[6], v12);
  if (result)
  {
    v17 = result;
    v18 = [result iterator];
    if ([v18 hasNextMergeRegion])
    {
      do
      {
        TSTTableDataStoreUnmerge(a1[6], [v18 nextMergeRegion]);
      }

      while (([v18 hasNextMergeRegion] & 1) != 0);
    }

    v19 = [v17 iterator];
    result = [v19 hasNextMergeRegion];
    if (result)
    {
      v40 = a3 - v9 - a2;
      v44 = v8 + v7;
      v42 = a4 + a2;
      v43 = v8;
      do
      {
        v20 = v15;
        v21 = [v19 nextMergeRegion];
        v22 = v21;
        v23 = v21 >> 16;
        if (a5)
        {
          v24 = BYTE2(v21);
          if (BYTE2(v21) < v8)
          {
            v25 = [MEMORY[0x277D6C290] currentHandler];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v27 = v8;
            LODWORD(v8) = v43;
            [v25 handleFailureInFunction:v27 file:v26 lineNumber:3223 description:@"Merged cell range started before first row moved."];
          }

          if (v24 + WORD2(v22) > v44)
          {
            v28 = [MEMORY[0x277D6C290] currentHandler];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v30 = v8;
            LODWORD(v8) = v43;
            [v28 handleFailureInFunction:v30 file:v29 lineNumber:3224 description:@"Merged cell range ended after last row moved."];
          }

          if (v24 < a2 || v24 >= v42)
          {
            if (a3 < a2)
            {
              LOBYTE(v23) = v23 + a4;
            }

            else
            {
              LOBYTE(v23) = v23 - a4;
            }
          }

          else
          {
            LOBYTE(v23) = v40 + v23;
          }

          v38 = v22;
        }

        else
        {
          v31 = v21;
          if (v21 < v8)
          {
            v8 = [MEMORY[0x277D6C290] currentHandler];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v34 = v8;
            LODWORD(v8) = v43;
            [v34 handleFailureInFunction:v32 file:v33 lineNumber:3208 description:@"Merged cell range started before first row moved."];
          }

          if (v31 + HIWORD(v22) > v44)
          {
            v35 = [MEMORY[0x277D6C290] currentHandler];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v37 = v8;
            LODWORD(v8) = v43;
            [v35 handleFailureInFunction:v37 file:v36 lineNumber:3209 description:@"Merged cell range ended after last row moved."];
          }

          if (v31 < a2 || v31 >= v42)
          {
            v38 = v22 - a4;
            if (a3 < a2)
            {
              v38 = v22 + a4;
            }
          }

          else
          {
            v38 = v40 + v22;
          }
        }

        v15 = v20;
        TSTTableDataStoreMerge(*(a1 + v20[961]), v22 & 0xFFFFFFFFFF000000 | v38 | (v23 << 16));
        result = [v19 hasNextMergeRegion];
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void TSTTableSwapRows(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 willModify];
  v6 = a1[6];

  TSTTableDataStoreSwapRows(v6, a2, a3);
}

uint64_t TSTHidingActionForRow(uint64_t a1, uint64_t a2)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  if (!*(a1 + 84))
  {
    if (*(a1 + 88) || *(a1 + 92))
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTHidingAction TSTHidingActionForRow(TSTTableModel *, TSURowIndex)"}];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3279, @"Both mNumberOfUserHiddenRows and mNumberOfFilteredRows should equal to 0 when mNumberOfHiddenRows is equal to 0"}];
    }

    return 0;
  }

  result = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t TSTHidingActionForColumn(uint64_t a1, uint64_t a2)
{
  if (a2 == 255)
  {
    return 0;
  }

  if (!*(a1 + 86))
  {
    if (*(a1 + 90))
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTHidingAction TSTHidingActionForColumn(TSTTableModel *, TSUColumnIndex)"}];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3300, @"mNumberOfUserHiddenColumns should equal to 0 when mNumberOfHiddenColumns is equal to 0"}];
    }

    return 0;
  }

  result = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t TSTTableNumHiddenRowsInCellRange(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = (HIWORD(a2) + a2);
  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (TSTHidingActionForRow(a1, v2))
      {
        ++v5;
      }

      ++v2;
    }

    while (v3 > v2);
  }

  return v5;
}

uint64_t TSTTableNumHiddenColumnsInCellRange(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 16;
  v3 = (BYTE2(a2) + BYTE4(a2));
  if (v3 <= BYTE2(a2))
  {
    return 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (TSTHidingActionForColumn(a1, v2))
      {
        ++v5;
      }

      LOBYTE(v2) = v2 + 1;
    }

    while (v3 > v2);
  }

  return v5;
}

TSTEphemeralCellMap *TSTEphemeralCellMapForOrderedCellIDs(uint64_t a1, _WORD *a2, int a3)
{
  if (!a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTEphemeralCellMap *TSTEphemeralCellMapForOrderedCellIDs(TSTTableModel *, TSTCellID *, int)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3425, @"No cell id array given to TSTEphemeralCellMapForOrderedCellIDs!"}];
  }

  if (a3 <= 0)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTEphemeralCellMap *TSTEphemeralCellMapForOrderedCellIDs(TSTTableModel *, TSTCellID *, int)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3426, @"Need at least one cell ID in TSTEphemeralCellMapForOrderedCellIDs."}];
  }

  v10 = [[TSTEphemeralCellMap alloc] initWithCapacity:a3];
  v11 = *a2;
  v12 = *&a2[2 * a3 - 2];
  v13 = v12 >> 16;
  v14 = 0x10000;
  v15 = 1;
  if (*a2 == 0xFFFF || (v11 & 0xFF0000) == 0xFF0000)
  {
    LODWORD(v11) = *&a2[2 * a3 - 2];
    goto LABEL_27;
  }

  if (v12 == 0xFFFF || (v12 & 0xFF0000) == 0xFF0000)
  {
    v13 = v11 >> 16;
    v14 = 0x10000;
    goto LABEL_15;
  }

  v16 = v11 >> 16;
  if (*a2 == v12)
  {
    v17 = BYTE2(*a2);
    if (BYTE2(v11) <= BYTE2(v12) && BYTE2(v11) >= BYTE2(v12))
    {
      v14 = 0x10000;
      v15 = 1;
      v13 = v11 >> 16;
LABEL_15:
      LODWORD(v12) = *a2;
      goto LABEL_27;
    }
  }

  else
  {
    v17 = BYTE2(*a2);
  }

  v18 = *&a2[2 * a3 - 2];
  if (BYTE2(v12) <= BYTE2(v11))
  {
    LOBYTE(v16) = BYTE2(*&a2[2 * a3 - 2]);
  }

  if (BYTE2(v12) >= v17)
  {
    v17 = BYTE2(*&a2[2 * a3 - 2]);
  }

  if (v18 <= v11)
  {
    v19 = *&a2[2 * a3 - 2];
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= v11)
  {
    LODWORD(v11) = *&a2[2 * a3 - 2];
  }

  v20 = v19;
  LOBYTE(v13) = v16;
  LODWORD(v11) = v11 - v19;
  LOWORD(v15) = v17 - v16 + 1;
  v14 = (v11 << 16) + 0x10000;
  v15 = v15;
  LOWORD(v11) = v20;
  LODWORD(v12) = 0;
LABEL_27:
  v21 = v12 & 0xFF000000 | ((v14 | v15) << 32) | (v13 << 16) | v11;
  v22 = [[TSTCellIterator alloc] initWithTableModel:a1 range:v21];
  if (a3 >= 1)
  {
    v23 = 0;
    do
    {
      if (!TSTCellIteratorGetNextCell(v22, v25))
      {
        break;
      }

      if (((v26 ^ *&a2[2 * v23]) & 0xFFFFFF) == 0)
      {
        v21 = v21 & 0xFFFFFFFF00000000 | v26;
        [(TSTEphemeralCellMap *)v10 addCell:v27 andCellID:v21];
        ++v23;
      }
    }

    while (v23 < a3);
  }

  return v10;
}

BOOL TSTTableHasRowHiddenForActionInRange(_WORD *a1, unint64_t a2, int a3)
{
  if (!a1[42])
  {
    return 0;
  }

  v4 = a2;
  v6 = HIWORD(a2);
  if (!a1[44] && !a1[46])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTTableHasRowHiddenForActionInRange(TSTTableModel *, TSTCellRange, TSTHidingAction)"}];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3587, @"Either mNumberOfUserHiddenRows or mNumberOfFilteredRows should be larger than 0 when mNumberOfHiddenRows is larger than 0"}];
  }

  v9 = v6 + v4;
  do
  {
    v10 = v9 > v4;
    if (v9 <= v4)
    {
      break;
    }

    v11 = TSTHidingActionForRow(a1, v4++);
  }

  while ((v11 & a3) == 0);
  return v10;
}

uint64_t TSTTableHasRowShownInRange(_WORD *a1, unint64_t a2)
{
  if (!a1[42])
  {
    return 1;
  }

  v2 = a2;
  v4 = HIWORD(a2);
  if (!a1[44] && !a1[46])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTTableHasRowShownInRange(TSTTableModel *, TSTCellRange)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3603, @"Either mNumberOfUserHiddenRows or mNumberOfFilteredRows should be larger than 0 when mNumberOfHiddenRows is larger than 0"}];
  }

  v7 = v4 + v2;
  do
  {
    v8 = v7 > v2;
    if (v7 <= v2)
    {
      break;
    }
  }

  while (TSTHidingActionForRow(a1, v2++));
  return v8;
}