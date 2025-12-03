@interface TSCHChartValueAxisLabelsLayoutItem
- (CGPoint)axisAnchorForPosition:(int)position degrees:(float)degrees inLayoutSize:(CGSize)size unrotatedSize:(CGSize)unrotatedSize unitSpaceValue:(double)value;
- (CGPoint)labelAnchorForPosition:(int)position degrees:(float)degrees;
- (TSCHChartValueAxisLabelsLayoutItem)initWithParent:(id)parent;
- (double)unitSpaceValueForAxis:(id)axis index:(unint64_t)index;
- (id)labelStringForAxis:(id)axis index:(unint64_t)index;
- (unint64_t)numberOfLabelsForAxis:(id)axis;
@end

@implementation TSCHChartValueAxisLabelsLayoutItem

- (TSCHChartValueAxisLabelsLayoutItem)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = TSCHChartValueAxisLabelsLayoutItem;
  return [(TSCHChartLayoutItem *)&v4 initWithParent:parent];
}

- (unint64_t)numberOfLabelsForAxis:(id)axis
{
  v6 = objc_msgSend_majorGridLocations(axis, a2, v3, v4, v5);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  return v11;
}

- (double)unitSpaceValueForAxis:(id)axis index:(unint64_t)index
{
  axisCopy = axis;
  v10 = objc_msgSend_majorGridLocations(axisCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, v12, v13, v14, index);

  if (v15)
  {
    objc_msgSend_doubleValue(v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = NAN;
  }

  objc_msgSend_unitSpaceValueForDataSpaceValue_(axisCopy, v16, v20, v18, v19);
  v22 = v21;

  return v22;
}

- (id)labelStringForAxis:(id)axis index:(unint64_t)index
{
  axisCopy = axis;
  v10 = objc_msgSend_majorGridLocations(axisCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, v12, v13, v14, index);

  v20 = objc_msgSend_formattedStringForAxisValue_(axisCopy, v16, v17, v18, v19, v15);

  return v20;
}

- (CGPoint)axisAnchorForPosition:(int)position degrees:(float)degrees inLayoutSize:(CGSize)size unrotatedSize:(CGSize)unrotatedSize unitSpaceValue:(double)value
{
  height = unrotatedSize.height;
  width = unrotatedSize.width;
  v85 = *MEMORY[0x277D85DE8];
  v13 = degrees * -0.0174532925;
  TSURectWithSize();
  v76 = v14;
  v77 = v15;
  v17 = v16;
  v19 = v18;
  CGAffineTransformMakeRotation(&v81, v13);
  v20 = sub_2762A1A7C(&v81, width, height);
  v75 = v20;
  v22 = v21;
  v23 = MEMORY[0x277CBF348];
  v24 = *(MEMORY[0x277CBF348] + 8);
  *&v20 = degrees;
  v27 = objc_msgSend_snappedLabelAngleInDegree_(self, v25, v20, v21, v26);
  if (position == 4 || position == 2)
  {
    v87.origin.x = v76;
    v87.origin.y = v77;
    v87.size.width = v17;
    v87.size.height = v19;
    v28 = CGRectGetMinX(v87) + v17 * value;
    if (position != 4)
    {
      if (v27 <= 179)
      {
        if (v27)
        {
          if (v27 != 90)
          {
            goto LABEL_30;
          }

LABEL_32:
          v91.origin.x = v76;
          v91.origin.y = v77;
          v91.size.width = v17;
          v91.size.height = v19;
          MaxY = CGRectGetMaxY(v91);
          v35 = MaxY + height * -0.5 * fabs(cos(v13));
          goto LABEL_31;
        }

LABEL_25:
        v89.origin.x = v76;
        v89.origin.y = v77;
        v89.size.width = v17;
        v89.size.height = v19;
        v36 = CGRectGetMaxY(v89);
        v37 = -0.5;
LABEL_29:
        v35 = v36 + v22 * v37;
        goto LABEL_31;
      }

      if (v27 == 270)
      {
        goto LABEL_32;
      }

      if (v27 == 180)
      {
        goto LABEL_25;
      }

LABEL_30:
      v35 = v24;
      goto LABEL_31;
    }

    if (v27 > 179)
    {
      if (v27 == 270)
      {
        goto LABEL_33;
      }

      if (v27 != 180)
      {
        goto LABEL_30;
      }
    }

    else if (v27)
    {
      if (v27 != 90)
      {
        goto LABEL_30;
      }

LABEL_33:
      v92.origin.x = v76;
      v92.origin.y = v77;
      v92.size.width = v17;
      v92.size.height = v19;
      MinY = CGRectGetMinY(v92);
      v35 = MinY + height * 0.5 * fabs(cos(v13));
      goto LABEL_31;
    }

    v90.origin.x = v76;
    v90.origin.y = v77;
    v90.size.width = v17;
    v90.size.height = v19;
    v36 = CGRectGetMinY(v90);
    v37 = 0.5;
    goto LABEL_29;
  }

  v28 = *v23;
  if (position > 5 || ((1 << position) & 0x2A) == 0)
  {
    goto LABEL_30;
  }

  v29 = height * 0.5 * fabs(sin(v13));
  if (position == 5)
  {
    v30 = v19 * 0.5;
  }

  else
  {
    v30 = v19;
  }

  v88.origin.x = v76;
  v88.origin.y = v77;
  v88.size.width = v17;
  v88.size.height = v30;
  v32 = CGRectGetMaxY(v88);
  v35 = v32 - v30 * value;
  switch(position)
  {
    case 3:
      v42 = objc_msgSend_chart(self, v31, v32, v33, v34);
      v47 = objc_msgSend_intValueForProperty_defaultValue_(v42, v43, v44, v45, v46, 1075, 0);

      if (v27 > 179)
      {
        if (v27 == 270)
        {
          goto LABEL_49;
        }

        if (v27 != 180)
        {
          break;
        }
      }

      else if (v27)
      {
        if (v27 != 90)
        {
          break;
        }

LABEL_49:
        if (v47)
        {
          v97.origin.x = v76;
          v97.origin.y = v77;
          v97.size.width = v17;
          v97.size.height = v30;
          MinX = CGRectGetMinX(v97);
          v74 = 0.5;
LABEL_52:
          v28 = MinX + v75 * v74;
          break;
        }

        goto LABEL_51;
      }

      if (v47)
      {
        v95.origin.x = v76;
        v95.origin.y = v77;
        v95.size.width = v17;
        v95.size.height = v30;
        v28 = v29 + CGRectGetMinX(v95);
        break;
      }

      goto LABEL_48;
    case 1:
      if (v27 <= 179)
      {
        if (v27)
        {
          if (v27 != 90)
          {
            break;
          }

          goto LABEL_51;
        }

LABEL_48:
        v96.origin.x = v76;
        v96.origin.y = v77;
        v96.size.width = v17;
        v96.size.height = v30;
        v28 = CGRectGetMaxX(v96) - v29;
        break;
      }

      if (v27 != 270)
      {
        if (v27 != 180)
        {
          break;
        }

        goto LABEL_48;
      }

LABEL_51:
      v98.origin.x = v76;
      v98.origin.y = v77;
      v98.size.width = v17;
      v98.size.height = v30;
      MinX = CGRectGetMaxX(v98);
      v74 = -0.5;
      goto LABEL_52;
    case 5:
      v93.origin.x = v76;
      v93.origin.y = v77;
      v93.size.width = v17;
      v93.size.height = v30;
      MaxX = CGRectGetMaxX(v93);
      objc_opt_class();
      v53 = objc_msgSend_parent(self, v49, v50, v51, v52);
      v54 = TSUCheckedDynamicCast();

      objc_msgSend_chartBodySize(v54, v55, v56, v57, v58);
      v60 = v59;
      v62 = v61;
      v94.origin.x = v76;
      v94.origin.y = v77;
      v94.size.width = v17;
      v94.size.height = v30;
      v63 = CGRectGetMaxY(v94);
      CGAffineTransformMakeTranslation(&v81, -MaxX, -v63);
      v68 = objc_msgSend_chartInfo(self, v64, v65, v66, v67);
      objc_msgSend_floatValueForProperty_defaultValue_(v68, v69, 0.0, v70, v71, 1109);
      CGAffineTransformMakeRotation(&v82, v72 * -0.0174532925);
      CGAffineTransformMakeScale(&v83, v60 / v62, 1.0);
      CGAffineTransformMakeTranslation(&v84, MaxX, v63);

      v79 = 0u;
      *v80 = 0u;
      v78 = 0u;
      sub_27628CF0C(&v81, 4, &v78);
      v28 = v80[0] + v35 * *&v79 + *&v78 * MaxX;
      v35 = v80[1] + v35 * *(&v79 + 1) + *(&v78 + 1) * MaxX;

      break;
  }

LABEL_31:
  v38 = v28;
  v39 = v35;
  result.y = v39;
  result.x = v38;
  return result;
}

- (CGPoint)labelAnchorForPosition:(int)position degrees:(float)degrees
{
  v8 = objc_msgSend_snappedLabelAngleInDegree_(self, a2, *&degrees, v4, v5);
  v12 = v8;
  v13 = 0.5;
  if (position > 2)
  {
    if (position == 3)
    {
      v18 = objc_msgSend_chart(self, v9, 0.5, v10, v11);
      v23 = objc_msgSend_intValueForProperty_defaultValue_(v18, v19, v20, v21, v22, 1075, 0);

      v13 = 0.5;
      v24 = 1.0;
      if (v23)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 0.0;
      }

      if (v23)
      {
        v24 = 0.0;
      }

      if (!v12)
      {
        v13 = v24;
      }

      if (v12 == 180)
      {
        v13 = v25;
      }
    }

    else
    {
      v17 = 0.5;
      if (v8 == 270)
      {
        v17 = 0.0;
      }

      if (v8 == 90)
      {
        v17 = 1.0;
      }

      if (position == 4)
      {
        v13 = v17;
      }
    }
  }

  else
  {
    v14 = 0.0;
    if (v8 == 180)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 0.5;
    }

    v16 = 1.0;
    if (!v8)
    {
      v15 = 1.0;
    }

    if (v8 != 270)
    {
      v16 = 0.5;
    }

    if (v8 != 90)
    {
      v14 = v16;
    }

    if (position == 2)
    {
      v13 = v14;
    }

    if (position == 1)
    {
      v13 = v15;
    }
  }

  v26 = 0.5;
  result.y = v26;
  result.x = v13;
  return result;
}

@end