@interface TSCHRadarAreaElementBuilder
- (BOOL)p_testIntersectionOfRect:(CGRect)rect againstSortedRects:(id)rects withInset:(double)inset isVertical:(BOOL)vertical;
- (id)coordinateAdapter;
@end

@implementation TSCHRadarAreaElementBuilder

- (id)coordinateAdapter
{
  if (qword_280A47AF8 != -1)
  {
    sub_2764A87C0();
  }

  v3 = qword_280A47B00;

  return v3;
}

- (BOOL)p_testIntersectionOfRect:(CGRect)rect againstSortedRects:(id)rects withInset:(double)inset isVertical:(BOOL)vertical
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v36 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectInset(v37, inset, inset);
  v12 = v38.origin.x;
  v13 = v38.origin.y;
  v14 = v38.size.width;
  v15 = v38.size.height;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = objc_msgSend_reverseObjectEnumerator(rectsCopy, v16, 0.0, v38.origin.y, v38.size.width, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, v19, v20, v21, &v31, v35, 16);
  if (v23)
  {
    v27 = *v32;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend_CGRectValue(*(*(&v31 + 1) + 8 * i), v22, v24, v25, v26);
        v41 = CGRectInset(v39, inset, inset);
        v40.origin.x = v12;
        v40.origin.y = v13;
        v40.size.width = v14;
        v40.size.height = v15;
        if (CGRectIntersectsRect(v40, v41))
        {
          v29 = 0;
          goto LABEL_11;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, v24, v25, v26, &v31, v35, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v29 = 1;
LABEL_11:

  return v29;
}

@end