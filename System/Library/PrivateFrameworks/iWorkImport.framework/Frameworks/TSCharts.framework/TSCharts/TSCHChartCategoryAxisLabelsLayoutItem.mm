@interface TSCHChartCategoryAxisLabelsLayoutItem
- (CGPoint)axisAnchorForPosition:(int)position degrees:(float)degrees inLayoutSize:(CGSize)size unrotatedSize:(CGSize)unrotatedSize unitSpaceValue:(double)value;
- (CGPoint)labelAnchorForPosition:(int)position degrees:(float)degrees;
- (TSCHChartCategoryAxisLabelsLayoutItem)initWithParent:(id)parent;
- (id)labelStringForAxis:(id)axis index:(unint64_t)index;
- (unint64_t)numberOfLabelsForAxis:(id)axis;
@end

@implementation TSCHChartCategoryAxisLabelsLayoutItem

- (TSCHChartCategoryAxisLabelsLayoutItem)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = TSCHChartCategoryAxisLabelsLayoutItem;
  return [(TSCHChartLayoutItem *)&v4 initWithParent:parent];
}

- (unint64_t)numberOfLabelsForAxis:(id)axis
{
  v6 = objc_msgSend_model(axis, a2, v3, v4, v5);
  v11 = objc_msgSend_numberOfValues(v6, v7, v8, v9, v10);

  return v11;
}

- (id)labelStringForAxis:(id)axis index:(unint64_t)index
{
  v8 = objc_msgSend_model(axis, a2, v4, v5, v6);
  v13 = objc_msgSend_nameForCategory_(v8, v9, v10, v11, v12, index);

  return v13;
}

- (CGPoint)axisAnchorForPosition:(int)position degrees:(float)degrees inLayoutSize:(CGSize)size unrotatedSize:(CGSize)unrotatedSize unitSpaceValue:(double)value
{
  height = unrotatedSize.height;
  width = unrotatedSize.width;
  v13 = degrees * -0.0174532925;
  TSURectWithSize();
  v83 = v15;
  rect.origin.x = v14;
  v17 = v16;
  v19 = v18;
  __x = v13;
  CGAffineTransformMakeRotation(&rect.origin.y, v13);
  v82 = height;
  v20 = sub_2762A1A7C(&rect.origin.y, width, height);
  v80 = v20;
  v22 = v21;
  v23 = *MEMORY[0x277CBF348];
  v24 = *(MEMORY[0x277CBF348] + 8);
  *&v20 = degrees;
  v27 = objc_msgSend_snappedLabelAngleInDegree_(self, v25, v20, v21, v26);
  if (position > 6)
  {
    goto LABEL_43;
  }

  v31 = v27;
  if (((1 << position) & 0x2A) != 0)
  {
    v90.origin.x = rect.origin.x;
    v90.origin.y = v17;
    v90.size.width = v83;
    v90.size.height = v19;
    MinY = CGRectGetMinY(v90);
    v32 = MinY + v19 * value;
    if (position != 3)
    {
      if (position != 1)
      {
        goto LABEL_46;
      }

      if (v31 > 179)
      {
        if (v31 == 270)
        {
LABEL_32:
          v93.origin.x = rect.origin.x;
          v72 = v32;
          v93.origin.y = v17;
          v93.size.width = v83;
          v93.size.height = v19;
          v23 = CGRectGetMaxX(v93) + v80 * -0.5;
          goto LABEL_33;
        }

        if (v31 != 180)
        {
          goto LABEL_46;
        }
      }

      else if (v31)
      {
        if (v31 != 90)
        {
          goto LABEL_46;
        }

        goto LABEL_32;
      }

      v91.origin.x = rect.origin.x;
      v72 = v32;
      v91.origin.y = v17;
      v91.size.width = v83;
      v91.size.height = v19;
      MaxX = CGRectGetMaxX(v91);
      v23 = MaxX + v82 * -0.5 * fabs(sin(__x));
LABEL_33:
      v32 = v72;
      goto LABEL_46;
    }

    v56 = MinY + v19 * value;
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, MinY, v32, v35, "[TSCHChartCategoryAxisLabelsLayoutItem axisAnchorForPosition:degrees:inLayoutSize:unrotatedSize:unitSpaceValue:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 96, 0, "Right vertical category axis label anchor position requires auditing as it has not been possible before");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    if (v31 > 179)
    {
      if (v31 == 270)
      {
LABEL_34:
        v94.origin.x = rect.origin.x;
        v94.origin.y = v17;
        v94.size.width = v83;
        v94.size.height = v19;
        v23 = CGRectGetMinX(v94) + v80 * 0.5;
        goto LABEL_35;
      }

      if (v31 != 180)
      {
LABEL_35:
        v32 = v56;
        goto LABEL_46;
      }
    }

    else if (v31)
    {
      if (v31 != 90)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v92.origin.x = rect.origin.x;
    v92.origin.y = v17;
    v92.size.width = v83;
    v92.size.height = v19;
    MinX = CGRectGetMinX(v92);
    v23 = MinX + v82 * 0.5 * fabs(sin(__x));
    goto LABEL_35;
  }

  if (((1 << position) & 0x14) == 0)
  {
    v32 = v24;
    if (position == 6)
    {
      v36 = objc_msgSend_chartInfo(self, v28, v29, v24, v30);
      objc_msgSend_floatValueForProperty_defaultValue_(v36, v37, 0.0, v38, v39, 1109);
      v41 = v40 * -0.0174532925;

      v46 = objc_msgSend_model(self, v42, v43, v44, v45);
      v51 = objc_msgSend_numberOfValues(v46, v47, v48, v49, v50);

      CGAffineTransformMakeRotation(&rect.origin.y, 6.28318531 / v51 * ((v51 + -1.0) * value));
      v52 = v86 + v19 * -0.5 * rect.size.height + rect.origin.y * 0.0;
      v53 = v87 + v19 * -0.5 * v85 + rect.size.width * 0.0;
      CGAffineTransformMakeRotation(&rect.origin.y, v41);
      v54 = v86 + v53 * rect.size.height + rect.origin.y * v52;
      v55 = v87 + v53 * v85 + rect.size.width * v52;
      CGAffineTransformMakeScale(&rect.origin.y, v83 / v19, 1.0);
      v23 = v86 + v55 * rect.size.height + rect.origin.y * v54;
      v32 = v87 + v55 * v85 + rect.size.width * v54;
    }

    goto LABEL_46;
  }

  v89.origin.y = v17;
  v89.origin.x = rect.origin.x;
  v89.size.width = v83;
  v89.size.height = v19;
  v23 = CGRectGetMinX(v89) + v83 * value;
  if (position == 4)
  {
    if (v31 > 179)
    {
      if (v31 == 270)
      {
        goto LABEL_45;
      }

      if (v31 != 180)
      {
LABEL_43:
        v32 = v24;
        goto LABEL_46;
      }
    }

    else if (v31)
    {
      if (v31 != 90)
      {
        goto LABEL_43;
      }

LABEL_45:
      v98.origin.x = rect.origin.x;
      v98.origin.y = v17;
      v98.size.width = v83;
      v98.size.height = v19;
      v78 = CGRectGetMinY(v98);
      v32 = v78 + v82 * 0.5 * fabs(cos(__x));
      goto LABEL_46;
    }

    v96.origin.x = rect.origin.x;
    v96.origin.y = v17;
    v96.size.width = v83;
    v96.size.height = v19;
    MaxY = CGRectGetMinY(v96);
    v76 = 0.5;
    goto LABEL_42;
  }

  v32 = v24;
  if (position == 2)
  {
    if (v31 <= 179)
    {
      if (v31)
      {
        if (v31 != 90)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

LABEL_38:
      v95.origin.x = rect.origin.x;
      v95.origin.y = v17;
      v95.size.width = v83;
      v95.size.height = v19;
      MaxY = CGRectGetMaxY(v95);
      v76 = -0.5;
LABEL_42:
      v32 = MaxY + v22 * v76;
      goto LABEL_46;
    }

    if (v31 == 270)
    {
LABEL_44:
      v97.origin.x = rect.origin.x;
      v97.origin.y = v17;
      v97.size.width = v83;
      v97.size.height = v19;
      v77 = CGRectGetMaxY(v97);
      v32 = v77 + v82 * -0.5 * fabs(cos(__x));
      goto LABEL_46;
    }

    if (v31 == 180)
    {
      goto LABEL_38;
    }
  }

LABEL_46:
  v79 = v23;
  result.y = v32;
  result.x = v79;
  return result;
}

- (CGPoint)labelAnchorForPosition:(int)position degrees:(float)degrees
{
  v7 = objc_msgSend_snappedLabelAngleInDegree_(self, a2, *&degrees, v4, v5);
  v11 = v7;
  v12 = 0.5;
  if (position > 2)
  {
    if (position == 3)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, 0.5, v10, "[TSCHChartCategoryAxisLabelsLayoutItem labelAnchorForPosition:degrees:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLabelsLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 141, 0, "Right vertical category axis label anchor position requires auditing as it has not been possible before");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
      v12 = 0.5;
      v13 = 1.0;
      v33 = 0.0;
      if (v11)
      {
        v33 = 0.5;
      }

      if (v11 != 180)
      {
        v13 = v33;
      }
    }

    else
    {
      v16 = 0.0;
      v17 = 1.0;
      if (v7 != 90)
      {
        v17 = 0.5;
      }

      if (v7 != 270)
      {
        v16 = v17;
      }

      if (position == 4)
      {
        v13 = v16;
      }

      else
      {
        v13 = 0.5;
      }

      if (position == 4)
      {
        v12 = 0.5;
      }
    }
  }

  else
  {
    v13 = 0.0;
    if (v7)
    {
      v14 = 0.5;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = 0.5;
    if (v7 == 180)
    {
      v14 = 0.0;
      v15 = 0.5;
    }

    if (v7 != 90)
    {
      v13 = 0.5;
    }

    if (v7 == 270)
    {
      v13 = 1.0;
    }

    if (position == 2)
    {
      v12 = 0.5;
    }

    else
    {
      v13 = 0.5;
    }

    if (position == 1)
    {
      v13 = v14;
      v12 = v15;
    }
  }

  result.y = v12;
  result.x = v13;
  return result;
}

@end