@interface TSWPTextWrapper
+ (double)p_skipHintForRect:(CGRect)rect wrapSegments:(id)segments type:(int)type;
+ (double)unobstructedSpanForWrapSegments:(id)segments startingSpan:(CGRect)span columnBounds:(CGRect)bounds;
+ (id)horizontalIntersectionsOfRectList:(id)list withRectList:(id)rectList minWidth:(double)width;
+ (id)modifyLineSegments:(id)segments lineRect:(CGRect)rect textAdornments:(id)adornments skipHint:(double *)hint;
+ (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrapSegments:(id)segments type:(int)type skipHint:(double *)hint;
@end

@implementation TSWPTextWrapper

+ (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrapSegments:(id)segments type:(int)type skipHint:(double *)hint
{
  height = line.size.height;
  width = line.size.width;
  y = line.origin.y;
  x = line.origin.x;
  rectsCopy = rects;
  segmentsCopy = segments;
  v19 = segmentsCopy;
  if (hint)
  {
    *hint = 1.0;
  }

  objc_msgSend_bounds(segmentsCopy, v17, v18);
  v73.origin.x = v20;
  v73.origin.y = v21;
  v73.size.width = v22;
  v73.size.height = v23;
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  if (CGRectIntersectsRect(v67, v73))
  {
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    MinX = CGRectGetMinX(v68);
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    MaxX = CGRectGetMaxX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    MinY = CGRectGetMinY(v70);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    MaxY = CGRectGetMaxY(v71);
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v61 = CGRectGetHeight(v72);
    __p = 0;
    v65 = 0;
    v66 = 0;
    sub_276DD2F84(&__p, 0x40uLL);
    v32 = objc_msgSend_segmentCount(v19, v30, v31);
    v35 = objc_msgSend_segments(v19, v33, v34);
    if (v32)
    {
      v37 = 0;
      v38 = (v35 + 16);
      do
      {
        v39 = *(v38 - 1);
        v40 = v38[1];
        if (v40 > MinY && v39 < MaxY)
        {
          v42 = *(v38 - 2);
          v43 = *v38;
          v63 = 0;
          if (v39 <= MinY)
          {
            v44 = 1;
            LOBYTE(v63) = 1;
            v42 = v42 + (MinY - v39) / (v40 - v39) * (v43 - v42);
            v39 = MinY;
          }

          else
          {
            v44 = 0;
          }

          if (v40 >= MaxY && v39 < MaxY)
          {
            v46 = 1;
            BYTE1(v63) = 1;
            v43 = v42 + (MaxY - v39) / (v40 - v39) * (v43 - v42);
          }

          else
          {
            v46 = 0;
          }

          if (v43 >= v42)
          {
            v47 = v42;
          }

          else
          {
            v47 = v43;
          }

          if (v42 >= v43)
          {
            v43 = v42;
          }

          *&v62 = v47;
          *(&v62 + 1) = v43;
          if (!v37)
          {
            goto LABEL_32;
          }

          v48 = *v37;
          v36.n128_u64[0] = *(v37 + 1);
          if (v43 >= v36.n128_f64[0])
          {
            v43 = *(v37 + 1);
          }

          v49 = v48 >= v47 ? *v37 : v47;
          if (v49 <= v43)
          {
            if (v47 >= v48)
            {
              v50 = *v37;
            }

            else
            {
              v50 = v47;
            }

            *v37 = v50;
            if (v36.n128_f64[0] < *(&v62 + 1))
            {
              v36.n128_f64[0] = *(&v62 + 1);
            }

            *(v37 + 1) = v36.n128_u64[0];
            v37[16] = v37[16] != v44;
            v37[17] = v37[17] != v46;
          }

          else
          {
LABEL_32:
            sub_276DD3044(&__p, &v62);
            v37 = &v65[-2].n128_i8[8];
          }
        }

        v38 += 4;
        --v32;
      }

      while (v32);
    }

    v51 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v65 - __p) >> 3));
    if (v65 == __p)
    {
      v52 = 0;
    }

    else
    {
      v52 = v51;
    }

    sub_276DD3B80(__p, v65, &v62, v52, 1, v36);
    v55 = __p;
    if (__p != v65)
    {
      v56 = type != 1;
      v57 = type != 1;
      do
      {
        if (!v56 && !v57 && MinX < v55->n128_f64[0])
        {
          if (MaxX - MinX >= v55->n128_f64[0] - MinX)
          {
            objc_msgSend_addRect_(rectsCopy, v53, v54, MinX, MinY, v55->n128_f64[0] - MinX, v61);
          }

          else
          {
            objc_msgSend_addRect_(rectsCopy, v53, v54, MinX, MinY, MaxX - MinX, v61);
          }
        }

        if (MinX < v55->n128_f64[1])
        {
          MinX = v55->n128_f64[1];
        }

        if (MinX >= MaxX)
        {
          break;
        }

        v57 = v55[1].n128_u8[1] != v57;
        v56 = v55[1].n128_u8[0] != v56;
        v55 = (v55 + 24);
      }

      while (v55 != v65);
    }

    if (type == 1 && MinX < MaxX)
    {
      objc_msgSend_addRect_(rectsCopy, v53, v54, MinX, MinY, MaxX - MinX, v61);
    }

    if (hint)
    {
      v58 = objc_msgSend_count(rectsCopy, v53, v54);
      if (type == 1 && !v58)
      {
        objc_msgSend_p_skipHintForRect_wrapSegments_type_(self, v59, v19, 1, x, y, width, height);
        *hint = v60;
      }
    }

    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }
  }

  else if (type == 1)
  {
    objc_msgSend_addRect_(rectsCopy, v24, v25, x, y, width, height);
  }
}

+ (double)unobstructedSpanForWrapSegments:(id)segments startingSpan:(CGRect)span columnBounds:(CGRect)bounds
{
  width = bounds.size.width;
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v6 = span.size.height;
  v7 = span.size.width;
  v8 = span.origin.y;
  v9 = span.origin.x;
  segmentsCopy = segments;
  v60.origin.x = v9;
  v60.origin.y = v8;
  v60.size.width = v7;
  v60.size.height = v6;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = v9;
  v61.origin.y = v8;
  v61.size.width = v7;
  v61.size.height = v6;
  MaxX = CGRectGetMaxX(v61);
  v62.origin.x = v9;
  v62.origin.y = v8;
  v62.size.width = v7;
  v62.size.height = v6;
  v51 = CGRectGetHeight(v62);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  sub_276DD2F84(&v57, 0x40uLL);
  v15 = objc_msgSend_segmentCount(segmentsCopy, v13, v14);
  v18 = objc_msgSend_segments(segmentsCopy, v16, v17);
  if (v15)
  {
    v20 = 0;
    v21 = (v18 + 16);
    do
    {
      v19.n128_f64[0] = *(v21 - 2);
      v22 = *v21;
      if ((v19.n128_f64[0] > MinX || v22 > MinX) && (v19.n128_f64[0] < MaxX || v22 < MaxX))
      {
        v25 = *(v21 - 1);
        v26 = v21[1];
        v56 = 0;
        if (v19.n128_f64[0] >= v22)
        {
          v27 = v22;
        }

        else
        {
          v27 = v19.n128_f64[0];
        }

        if (v19.n128_f64[0] >= v22)
        {
          v28 = v26;
        }

        else
        {
          v28 = v25;
        }

        if (v19.n128_f64[0] >= v22)
        {
          v29 = v19.n128_f64[0];
        }

        else
        {
          v29 = v22;
        }

        if (v19.n128_f64[0] >= v22)
        {
          v30 = v25;
        }

        else
        {
          v30 = v26;
        }

        if (v27 > MinX || v29 <= MinX)
        {
          v32 = 0;
        }

        else
        {
          v32 = 1;
          LOBYTE(v56) = 1;
          v28 = v25 + (MinX - v19.n128_f64[0]) / (v22 - v19.n128_f64[0]) * (v26 - v25);
          v27 = MinX;
        }

        if (v29 >= MaxX && v27 < MaxX)
        {
          v34 = 1;
          BYTE1(v56) = 1;
          v30 = v25 + (MaxX - v19.n128_f64[0]) / (v22 - v19.n128_f64[0]) * (v26 - v25);
        }

        else
        {
          v34 = 0;
        }

        if (v30 >= v28)
        {
          v35 = v28;
        }

        else
        {
          v35 = v30;
        }

        if (v28 < v30)
        {
          v28 = v30;
        }

        *&v55 = v35;
        *(&v55 + 1) = v28;
        if (!v20)
        {
          goto LABEL_48;
        }

        v37 = *v20;
        v36 = v20[1];
        if (v28 >= v36)
        {
          v28 = v20[1];
        }

        v38 = v37 >= v35 ? *v20 : v35;
        if (v38 <= v28)
        {
          if (v35 >= v37)
          {
            v35 = *v20;
          }

          *v20 = v35;
          v19.n128_u64[0] = *(&v55 + 1);
          if (v36 >= *(&v55 + 1))
          {
            v19.n128_f64[0] = v36;
          }

          v20[1] = v19.n128_f64[0];
          *(v20 + 16) = *(v20 + 16) != v32;
          *(v20 + 17) = *(v20 + 17) != v34;
        }

        else
        {
LABEL_48:
          sub_276DD3044(&v57, &v55);
          v20 = &v58[-2].n128_f64[1];
        }
      }

      v21 += 4;
      --v15;
    }

    while (v15);
  }

  v39 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3));
  if (v58 == v57)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  sub_276DD3B80(v57, v58, &v55, v40, 1, v19);
  v63.origin.x = v9;
  v63.origin.y = v8;
  v63.size.width = v7;
  v63.size.height = v6;
  MinY = CGRectGetMinY(v63);
  v42 = v57;
  if (v57 != v58)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      if (!v44 && !v43 && MinY < v42->n128_f64[0] && v42->n128_f64[0] - MinY >= v51)
      {
        break;
      }

      v46 = v42[1].n128_u8[0];
      v47 = v42[1].n128_u8[1];
      v48 = v42->n128_f64[1];
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      MaxY = CGRectGetMaxY(v64);
      if (MinY < v48 + 1.0)
      {
        MinY = v48 + 1.0;
      }

      if (MinY >= MaxY)
      {
        break;
      }

      v43 = v47 != v43;
      v44 = v46 != v44;
      v42 = (v42 + 24);
    }

    while (v42 != v58);
    v42 = v57;
  }

  if (v42)
  {
    v58 = v42;
    operator delete(v42);
  }

  return MinY;
}

+ (id)horizontalIntersectionsOfRectList:(id)list withRectList:(id)rectList minWidth:(double)width
{
  listCopy = list;
  rectListCopy = rectList;
  v10 = objc_opt_new();
  v11 = 0;
  v12 = 0;
  v41 = 0.000000999999997;
  while (v12 < objc_msgSend_count(listCopy, v8, v9, *&v41) && v11 < objc_msgSend_count(rectListCopy, v13, v14))
  {
    objc_msgSend_rectAtIndex_(listCopy, v15, v12);
    rect = v16;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    objc_msgSend_rectAtIndex_(rectListCopy, v23, v11);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v46.origin.x = rect;
    v46.origin.y = v18;
    v46.size.width = v20;
    v46.size.height = v22;
    MaxX = CGRectGetMaxX(v46);
    v47.origin.x = v25;
    v47.origin.y = v27;
    v47.size.width = v29;
    v47.size.height = v31;
    v32 = CGRectGetMaxX(v47);
    v48.origin.x = v25;
    v48.origin.y = v27;
    v48.size.width = v29;
    v48.size.height = v31;
    if (MaxX <= CGRectGetMinX(v48))
    {
      goto LABEL_10;
    }

    v49.origin.x = rect;
    v49.origin.y = v18;
    v49.size.width = v20;
    v49.size.height = v22;
    if (v32 <= CGRectGetMinX(v49))
    {
      goto LABEL_11;
    }

    v50.origin.x = rect;
    v50.origin.y = v18;
    v50.size.width = v20;
    v50.size.height = v22;
    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    v53.size.height = v31;
    v51 = CGRectIntersection(v50, v53);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    if (CGRectGetWidth(v51) >= width)
    {
      objc_msgSend_addRect_(v10, v37, v38, x, y, width, height);
    }

    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v39 = CGRectGetMaxX(v52);
    if (v39 == MaxX || vabdd_f64(v39, MaxX) < fabs(MaxX * v41))
    {
LABEL_10:
      ++v12;
    }

    else
    {
LABEL_11:
      ++v11;
    }
  }

  return v10;
}

+ (id)modifyLineSegments:(id)segments lineRect:(CGRect)rect textAdornments:(id)adornments skipHint:(double *)hint
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v33 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  adornmentsCopy = adornments;
  *hint = 1.0;
  v14 = segmentsCopy;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = adornmentsCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v32, 16);
  v19 = v14;
  if (v18)
  {
    v20 = *v29;
    v19 = v14;
    do
    {
      v21 = 0;
      v22 = v19;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v28 + 1) + 8 * v21);
        v27 = 0.0;
        v24 = objc_msgSend_splitLine_skipHint_(v23, v17, &v27, x, y, width, height);
        v19 = objc_msgSend_horizontalIntersectionsOfRectList_withRectList_minWidth_(TSWPTextWrapper, v25, v22, v24, 0.01);

        *hint = fmax(v27, *hint);
        ++v21;
        v22 = v19;
      }

      while (v18 != v21);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v28, v32, 16);
    }

    while (v18);
  }

  return v19;
}

+ (double)p_skipHintForRect:(CGRect)rect wrapSegments:(id)segments type:(int)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  segmentsCopy = segments;
  if (objc_msgSend_segmentCount(segmentsCopy, v10, v11) < 1)
  {
    v21 = 1.0;
  }

  else
  {
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    MinX = CGRectGetMinX(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    MinY = CGRectGetMinY(v44);
    v17 = objc_msgSend_segmentCount(segmentsCopy, v15, v16);
    v20 = objc_msgSend_segments(segmentsCopy, v18, v19);
    v21 = 1.0;
    if (v17)
    {
      v22 = MinY + 1.0;
      v23 = ceilf(v22);
      v24 = v17 - 1;
      v25 = (v20 + 16);
      v26 = 1.79769313e308;
      do
      {
        v27 = *(v25 - 1);
        v28 = v25[1];
        if (v28 > v23 && v27 < v26)
        {
          v30 = *(v25 - 2);
          v31 = *v25;
          if ((v30 > MinX || v31 > MinX) && (v30 < MaxX || v31 < MaxX))
          {
            if (v30 >= v31)
            {
              v34 = *v25;
            }

            else
            {
              v34 = *(v25 - 2);
            }

            if (v30 >= v31)
            {
              v35 = v25[1];
            }

            else
            {
              v35 = *(v25 - 1);
            }

            if (v30 >= v31)
            {
              v36 = *(v25 - 2);
            }

            else
            {
              v36 = *v25;
            }

            if (v30 >= v31)
            {
              v37 = *(v25 - 1);
            }

            else
            {
              v37 = v25[1];
            }

            if (v34 < MinX)
            {
              v35 = v27 + (MinX - v30) / (v31 - v30) * (v28 - v27);
            }

            if (v36 > MaxX)
            {
              v37 = v27 + (MaxX - v30) / (v31 - v30) * (v28 - v27);
            }

            if (v37 >= v35)
            {
              v38 = v35;
            }

            else
            {
              v38 = v37;
            }

            if (v38 < v26)
            {
              v26 = v38;
            }
          }
        }

        v39 = v26 <= v23 || v24-- == 0;
        v25 += 4;
      }

      while (!v39);
      if (v26 < 1.79769313e308 && v26 > v23)
      {
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v21 = v26 - CGRectGetMinY(v45);
      }
    }
  }

  return v21;
}

@end