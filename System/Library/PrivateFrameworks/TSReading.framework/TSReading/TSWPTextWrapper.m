@interface TSWPTextWrapper
+ (double)unobstructedSpanForPath:(id)a3 startingSpan:(CGRect)a4 columnBounds:(CGRect)a5;
+ (unsigned)p_wrappedSubrectsForRectGPC:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] polygon:(id)a5 type:(int)a6 skipHint:(double *)a7;
+ (unsigned)p_wrappedSubrectsForRectOptimized:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] polygon:(id)a5 type:(int)a6 skipHint:(double *)a7;
+ (unsigned)splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] polygon:(id)a5 type:(int)a6 skipHint:(double *)a7;
@end

@implementation TSWPTextWrapper

+ (unsigned)splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] polygon:(id)a5 type:(int)a6 skipHint:(double *)a7
{
  v8 = *&a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([a5 intersectsSelf])
  {

    return [a1 p_wrappedSubrectsForRectGPC:a4 lineSegmentRects:a5 polygon:v8 type:a7 skipHint:{x, y, width, height}];
  }

  else
  {

    return [a1 p_wrappedSubrectsForRectOptimized:a4 lineSegmentRects:a5 polygon:v8 type:a7 skipHint:{x, y, width, height}];
  }
}

+ (unsigned)p_wrappedSubrectsForRectGPC:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] polygon:(id)a5 type:(int)a6 skipHint:(double *)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = [a5 polygon];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v16 = polygonFromRect(v30);
  if (a7)
  {
    *a7 = 1.0;
  }

  TSDgpc_polygon_clip(a6 != 0, v16, v15, v29);
  TSDgpc_free_polygon(v16);
  free(v16);
  v17 = wrappedSubrectsFromPolygon(v29, &a4->origin.x, x, y, width, height);
  v18 = v17;
  if (a7)
  {
    if (!v17)
    {
      [a5 bounds];
      MaxY = CGRectGetMaxY(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v20 = MaxY - CGRectGetMinY(v32);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = v20;
      if (CGRectGetHeight(v33) > 0.0)
      {
        TSDgpc_free_polygon(v29);
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = v20;
        v21 = polygonFromRect(v34);
        TSDgpc_polygon_clip(3u, v21, v15, v29);
        TSDgpc_polygon_clip(0, v29, v15, v29);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        v22 = polygonFromRect(v35);
        TSDgpc_polygon_clip(0, v29, v22, v29);
        TSDgpc_free_polygon(v22);
        free(v22);
        if (v29[0])
        {
          v23 = bezierFromPolygon(v29);
          if ([v23 isEmpty])
          {
            v36.origin.x = x;
            v36.origin.y = y;
            v36.size.width = width;
            v36.size.height = v20;
            MinY = CGRectGetMaxY(v36);
          }

          else
          {
            [v23 bounds];
            MinY = CGRectGetMinY(v39);
          }

          v27 = MinY;
          v40.origin.x = x;
          v40.origin.y = y;
          v40.size.width = width;
          v40.size.height = height;
          v26 = v27 - CGRectGetMaxY(v40);
          if (floor(v26) <= 0.0)
          {
            v26 = 1.0;
          }
        }

        else
        {
          v37.origin.x = x;
          v37.origin.y = y;
          v37.size.width = width;
          v37.size.height = v20;
          v25 = CGRectGetMaxY(v37);
          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          v26 = fmax(floor(v25 - CGRectGetMaxY(v38)), 1.0);
        }

        *a7 = v26;
        TSDgpc_free_polygon(v21);
        free(v21);
      }
    }
  }

  TSDgpc_free_polygon(v29);
  return v18;
}

+ (double)unobstructedSpanForPath:(id)a3 startingSpan:(CGRect)a4 columnBounds:(CGRect)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MaxY = CGRectGetMaxY(a5);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v34.size.height = MaxY - CGRectGetMinY(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v11 = polygonFromRect(v34);
  v12 = polygonFromBezier(a3);
  TSDgpc_polygon_clip(1u, v11, v12, v12);
  TSDgpc_free_polygon(v11);
  free(v11);
  v30 = height;
  while (1)
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v13 = polygonFromRect(v35);
    TSDgpc_polygon_clip(1u, v13, v12, v31);
    TSDgpc_free_polygon(v13);
    free(v13);
    if (!v31[0])
    {
      break;
    }

    v14 = boundsForVertexList(v32);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (v31[0] >= 2)
    {
      v21 = 16;
      v22 = 1;
      do
      {
        v41.origin.x = boundsForVertexList(v32 + v21);
        v41.origin.y = v23;
        v41.size.width = v24;
        v41.size.height = v25;
        v36.origin.x = v14;
        v36.origin.y = v16;
        v36.size.width = v18;
        v36.size.height = v20;
        v37 = CGRectUnion(v36, v41);
        v14 = v37.origin.x;
        v16 = v37.origin.y;
        v18 = v37.size.width;
        v20 = v37.size.height;
        ++v22;
        v21 += 16;
      }

      while (v22 < v31[0]);
    }

    TSDgpc_free_polygon(v31);
    if (v20 < 1.0)
    {
      goto LABEL_10;
    }

    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    y = CGRectGetMaxY(v38) + 1.0;
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    height = v30;
    v39.size.height = v30;
    MinY = CGRectGetMinY(v39);
    if (MinY > CGRectGetMaxY(a5))
    {
      goto LABEL_11;
    }
  }

  TSDgpc_free_polygon(v31);
LABEL_10:
  height = v30;
LABEL_11:
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v27 = CGRectGetMinY(v40);
  TSDgpc_free_polygon(v12);
  free(v12);
  return v27;
}

+ (unsigned)p_wrappedSubrectsForRectOptimized:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] polygon:(id)a5 type:(int)a6 skipHint:(double *)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a7)
  {
    *a7 = 1.0;
  }

  MaxY = CGRectGetMaxY(a3);
  v101.origin.x = x;
  rect = y;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  MinY = CGRectGetMinY(v101);
  [a5 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v91 = v21;
  v22 = [a5 polygon];
  if (!v22)
  {
    a4->origin.x = x;
    LODWORD(v29) = 1;
    v28 = rect;
    goto LABEL_131;
  }

  v23 = v22;
  rect2 = v20;
  v93 = x;
  v94 = height;
  if (!+[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers)
  {
    +[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers = malloc_type_calloc(0x10uLL, 0x800uLL, 0x1000040F7F8B94BuLL);
  }

  v102.size.width = width;
  v102.origin.x = x;
  v102.origin.y = rect;
  v102.size.height = height;
  v123.origin.x = v16;
  v123.origin.y = v18;
  v123.size.width = v20;
  v123.size.height = v91;
  if (!CGRectIntersectsRect(v102, v123))
  {
    if (a6 != 1)
    {
      goto LABEL_103;
    }

    a4->origin.x = x;
    LODWORD(v29) = 1;
    v28 = rect;
    goto LABEL_131;
  }

  v103.origin.x = x;
  v103.origin.y = rect;
  v103.size.width = width;
  v103.size.height = height;
  v24 = CGRectGetMinY(v103);
  v104.origin.x = v16;
  v104.origin.y = v18;
  v104.size.width = v20;
  v104.size.height = v91;
  if (v24 >= CGRectGetMinY(v104) || (v25 = v18, v105.origin.x = v93, v105.size.height = v94, v105.origin.y = rect, v105.size.width = width, v26 = CGRectGetMaxY(v105), v106.origin.x = v16, v106.origin.y = v25, v106.size.width = v20, v106.size.height = v91, v26 <= CGRectGetMaxY(v106)))
  {
    v92 = a4;
    if (*v23 >= 1)
    {
      v30 = 0;
      v31 = 0;
      rect2a = 0;
      v32 = 0;
      if (a6 == 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = -1;
      }

      v34 = 0.0;
      v35 = 2048;
      v36 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = v93;
      v40 = &KNEffectIsActionEffect_onceToken;
      while (1)
      {
        v41 = *(v23 + 2);
        v42 = *(v41 + 16 * v30);
        if (v42)
        {
          v43 = (*(v41 + 16 * v30 + 8) + 8);
          v44 = -1;
          v45 = 1;
          do
          {
            v46 = *v43;
            v43 += 2;
            v47 = v46;
            if (v46 < MaxY)
            {
              v48 = 1;
            }

            else
            {
              v48 = 2;
            }

            if (v47 <= MinY)
            {
              v31 = 0;
            }

            else
            {
              v31 = v48;
            }

            ++v44;
            if (v45 >= v42)
            {
              break;
            }

            ++v45;
          }

          while (v31 == 1);
        }

        else
        {
          v49 = [MEMORY[0x277D6C290] currentHandler];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]"];
          [v49 handleFailureInFunction:v50 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextWrapper.mm"), 484, @"Invalid number of vertices in polygon."}];
          v40 = &KNEffectIsActionEffect_onceToken;
          v44 = 0;
        }

        v51 = 0;
        if (a6 == 1)
        {
          v52 = 0;
        }

        else
        {
          v52 = v42;
        }

        v53 = v44 + v52;
        do
        {
          v54 = v36;
          v55 = v34;
          v56 = (*(*(v23 + 2) + 16 * v30 + 8) + 16 * (v53 % v42));
          v36 = *v56;
          v34 = v56[1];
          if (v34 < MaxY)
          {
            v57 = 1;
          }

          else
          {
            v57 = 2;
          }

          if (v34 <= MinY)
          {
            v58 = 0;
          }

          else
          {
            v58 = v57;
          }

          if (!v51)
          {
            goto LABEL_100;
          }

          if (v58 == v31)
          {
            if (v37 >= v36)
            {
              v59 = v36;
            }

            else
            {
              v59 = v37;
            }

            if (v38 <= v36)
            {
              v60 = v36;
            }

            else
            {
              v60 = v38;
            }

            if (v31 == 1)
            {
              v38 = v60;
              v37 = v59;
              v58 = 1;
            }

            else
            {
              v58 = v31;
            }
          }

          else if (v31)
          {
            v61 = v34 - v55;
            v62 = v36 - v54;
            if (v31 != 1)
            {
              if (v58 == 1)
              {
                v73 = v54 + (MaxY - v55) / v61 * v62;
                if (v73 <= v36)
                {
                  v38 = v36;
                }

                else
                {
                  v38 = v73;
                }

                if (v73 >= v36)
                {
                  v37 = v36;
                }

                else
                {
                  v37 = v73;
                }

LABEL_86:
                rect2a = 2;
                goto LABEL_98;
              }

              v76 = v54 + (MinY - v55) / v61 * v62;
              v71 = v54 + (MaxY - v55) / v61 * v62;
              if (v76 > v71)
              {
                v71 = v76;
              }

              v72 = v40[46] + 16 * v32++;
              *v72 = 1;
              goto LABEL_97;
            }

            v63 = v40[46];
            v64 = v32 + 1;
            v65 = v63 + 16 * v32;
            if (v34 <= MinY || v34 < MaxY)
            {
              v67 = v54 + (MinY - v55) / v61 * v62;
              if (v38 <= v67)
              {
                v38 = v67;
              }

              *v65 = 1;
              *(v65 + 8) = v38;
              if (!rect2a)
              {
                rect2a = 0;
                if (v37 >= v67)
                {
                  v37 = v67;
                }

                v32 += 2;
                v68 = v63 + 16 * v64;
                *v68 = 0;
                *(v68 + 8) = v37;
                goto LABEL_98;
              }
            }

            else
            {
              v74 = v54 + (MaxY - v55) / v61 * v62;
              if (v37 >= v74)
              {
                v37 = v74;
              }

              *v65 = 0;
              *(v65 + 8) = v37;
              if (rect2a == 2)
              {
                if (v38 <= v74)
                {
                  v38 = v74;
                }

                v32 += 2;
                v75 = v63 + 16 * v64;
                *v75 = 1;
                *(v75 + 8) = v38;
                goto LABEL_86;
              }
            }

            ++v32;
          }

          else
          {
            v69 = v54 + (MinY - v55) / (v34 - v55) * (v36 - v54);
            if (v34 <= MinY || v34 >= MaxY)
            {
              v71 = v54 + (MaxY - v55) / (v34 - v55) * (v36 - v54);
              if (v69 < v71)
              {
                v71 = v69;
              }

              v72 = v40[46] + 16 * v32++;
              *v72 = 0;
LABEL_97:
              *(v72 + 8) = v71;
              goto LABEL_98;
            }

            rect2a = 0;
            if (v69 <= v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v54 + (MinY - v55) / (v34 - v55) * (v36 - v54);
            }

            if (v69 >= v36)
            {
              v37 = v36;
            }

            else
            {
              v37 = v54 + (MinY - v55) / (v34 - v55) * (v36 - v54);
            }
          }

LABEL_98:
          if (v35 - 2 <= v32)
          {
            v35 *= 2;
            +[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers = malloc_type_realloc(v40[46], v35, 0x1000040F7F8B94BuLL);
            bzero((+[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers + 16 * v32), 16 * (v35 - v32));
            v40 = &KNEffectIsActionEffect_onceToken;
          }

LABEL_100:
          v31 = v58;
          ++v51;
          v53 += v33;
        }

        while (v51 <= v42);
        if (++v30 >= *v23)
        {
          goto LABEL_105;
        }
      }
    }

    v32 = 0;
    v39 = v93;
    v40 = &KNEffectIsActionEffect_onceToken;
LABEL_105:
    qsort(v40[46], v32, 0x10uLL, TSWPTextWrapMarkerCompare);
    v113.origin.x = v39;
    v113.origin.y = rect;
    v113.size.width = width;
    v113.size.height = v94;
    MinX = CGRectGetMinX(v113);
    v78 = !a6 || *+[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers == 1;
    if (v32)
    {
      v79 = 0;
      v29 = 0;
      v80 = +[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers;
      v81 = 1;
      do
      {
        if (*(v80 + v79))
        {
          if (!--v78)
          {
            v78 = 0;
            if (*(v80 + v79 + 8) > MinX)
            {
              MinX = *(v80 + v79 + 8);
            }
          }
        }

        else
        {
          if (!v78)
          {
            v114.origin.x = v39;
            v114.origin.y = rect;
            v114.size.width = width;
            v114.size.height = v94;
            MaxX = CGRectGetMaxX(v114);
            v83 = *(+[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers + v79 + 8);
            if (MaxX < v83)
            {
              v115.origin.x = v39;
              v115.origin.y = rect;
              v115.size.width = width;
              v115.size.height = v94;
              v83 = CGRectGetMaxX(v115);
            }

            v116.origin.x = v39;
            v116.origin.y = rect;
            v116.size.width = width;
            v116.size.height = v94;
            v84 = CGRectGetMinY(v116);
            v117.origin.x = v39;
            v117.origin.y = rect;
            v117.size.width = width;
            v117.size.height = v94;
            v85 = CGRectGetHeight(v117);
            v86 = &v92[v29++];
            v86->origin.x = MinX;
            v86->origin.y = v84;
            v86->size.width = v83 - MinX;
            v86->size.height = v85;
            v80 = +[TSWPTextWrapper p_wrappedSubrectsForRectOptimized:lineSegmentRects:polygon:type:skipHint:]::markers;
          }

          ++v78;
        }

        v87 = v29 < 0x80;
        if (v81 >= v32)
        {
          break;
        }

        v79 += 16;
        ++v81;
      }

      while (v29 < 0x80);
    }

    else
    {
      v29 = 0;
      v87 = 1;
    }

    if (v78)
    {
      return v29;
    }

    if (!v87)
    {
      return v29;
    }

    v118.origin.x = v39;
    v118.origin.y = rect;
    v118.size.width = width;
    v118.size.height = v94;
    if (MinX >= CGRectGetMaxX(v118))
    {
      return v29;
    }

    v119.origin.x = v39;
    v119.origin.y = rect;
    v119.size.width = width;
    v119.size.height = v94;
    v28 = CGRectGetMinY(v119);
    v120.origin.x = v39;
    v120.origin.y = rect;
    v120.size.width = width;
    v120.size.height = v94;
    v88 = CGRectGetMaxX(v120) - MinX;
    v121.origin.x = v39;
    v121.origin.y = rect;
    v121.size.width = width;
    v121.size.height = v94;
    height = CGRectGetHeight(v121);
    a4 = &v92[v29];
    LODWORD(v29) = v29 + 1;
    a4->origin.x = MinX;
    width = v88;
LABEL_131:
    a4->origin.y = v28;
    a4->size.width = width;
    a4->size.height = height;
    return v29;
  }

  if (a6 != 1)
  {
LABEL_103:
    LODWORD(v29) = 0;
    return v29;
  }

  v107.origin.x = v16;
  v107.origin.y = v25;
  v107.size.width = v20;
  v107.size.height = v91;
  v97 = CGRectGetMinX(v107);
  v108.origin.x = v93;
  v108.origin.y = rect;
  v108.size.width = width;
  v108.size.height = v94;
  v90 = v97 - CGRectGetMinX(v108);
  v109.origin.x = v16;
  v109.origin.y = v25;
  v109.size.width = v20;
  v109.size.height = v91;
  v98 = CGRectGetMaxX(v109);
  v110.origin.x = v93;
  v110.origin.y = rect;
  v110.size.width = width;
  v110.size.height = v94;
  v27 = CGRectGetMaxX(v110);
  v111.origin.x = v16;
  v28 = rect;
  v111.origin.y = v25;
  v111.size.height = v91;
  v111.size.width = rect2;
  width = v27 - CGRectGetMaxX(v111);
  height = v94;
  v112.origin.x = v93;
  v112.origin.y = rect;
  v112.size.width = v90;
  v112.size.height = v94;
  if (CGRectGetWidth(v112) <= 0.0)
  {
    v29 = 0;
  }

  else
  {
    a4->origin.x = v93;
    a4->origin.y = rect;
    v29 = 1;
    a4->size.width = v90;
    a4->size.height = v94;
  }

  v122.origin.x = v98;
  v122.origin.y = rect;
  v122.size.width = width;
  v122.size.height = v94;
  if (CGRectGetWidth(v122) > 0.0)
  {
    a4 += v29;
    LODWORD(v29) = v29 + 1;
    a4->origin.x = v98;
    goto LABEL_131;
  }

  return v29;
}

@end