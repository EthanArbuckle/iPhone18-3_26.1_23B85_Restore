@interface TSCEBinaryBooleanOperatorNode
+ (id)checkType:(id)type right:(id)right context:(id)context;
@end

@implementation TSCEBinaryBooleanOperatorNode

+ (id)checkType:(id)type right:(id)right context:(id)context
{
  typeCopy = type;
  rightCopy = right;
  contextCopy = context;
  v13 = objc_msgSend_deepType_(typeCopy, v10, contextCopy, v11, v12);
  v17 = objc_msgSend_deepType_(rightCopy, v14, contextCopy, v15, v16);
  v22 = v17;
  if (v13 == 2 && v17 != 2)
  {
    objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v18, 2, v17, v21);
    v23 = LABEL_7:;
    goto LABEL_8;
  }

  if (v17 == 2 && v13 != 2)
  {
    objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v18, v13, 2, v21);
    goto LABEL_7;
  }

  if (v17 == 5 && v13 == 3)
  {
    v25 = objc_msgSend_number(rightCopy, v18, v19, v20, v21);
    if (objc_msgSend_hasUnits(v25, v26, v27, v28, v29) && !objc_msgSend_dimension(v25, v30, v31, v32, v33))
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v30, 3, 4, v33);
    }

    else
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v30, 3, 5, v33);
    }

    v23 = LABEL_21:;

    goto LABEL_8;
  }

  if (v13 == 5 && v17 == 3)
  {
    v25 = objc_msgSend_number(typeCopy, v18, v19, v20, v21);
    if (objc_msgSend_hasUnits(v25, v34, v35, v36, v37) && !objc_msgSend_dimension(v25, v38, v39, v40, v41))
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v38, 4, 3, v41);
    }

    else
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v38, 5, 3, v41);
    }

    goto LABEL_21;
  }

  if (v13 == v17 || objc_msgSend_valueIsEmptyWithContext_(typeCopy, v18, contextCopy, v20, v21) && (v22 | 2) == 7 || objc_msgSend_valueIsEmptyWithContext_(rightCopy, v42, contextCopy, v43, v44) && (v13 | 2) == 7)
  {
    goto LABEL_30;
  }

  v23 = 0;
  if (v22 != 9 && v13 != 9)
  {
    objc_msgSend_reportComparisonWarningInContext_leftType_rightType_(TSCEWarning, v45, contextCopy, v13, v22);
LABEL_30:
    v23 = 0;
  }

LABEL_8:

  return v23;
}

@end