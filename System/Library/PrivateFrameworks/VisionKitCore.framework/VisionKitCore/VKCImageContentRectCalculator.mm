@interface VKCImageContentRectCalculator
+ (CGRect)processNormalizedRect:(CGRect)rect scale:(double *)scale contentMode:(int64_t)mode;
+ (CGRect)unitContentsRectForBounds:(CGRect)bounds contentMode:(int64_t)mode imageSize:(CGSize)size orientation:(int64_t)orientation view:(id)view;
@end

@implementation VKCImageContentRectCalculator

+ (CGRect)unitContentsRectForBounds:(CGRect)bounds contentMode:(int64_t)mode imageSize:(CGSize)size orientation:(int64_t)orientation view:(id)view
{
  width = bounds.size.width;
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layer = [view layer];
  [layer contentsRect];
  vk_orientationApplyToRectAtPoint(orientation, v13, v14, v15, v16, 0.5, 0.5);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v66 = 1.0;
  if ((mode - 1) > 1 || (v69.origin.x = 0.0, v69.origin.y = 0.0, v69.size.width = 1.0, v69.size.height = 1.0, v67.origin.x = v18, v67.origin.y = v20, v67.size.width = v22, v67.size.height = v24, CGRectEqualToRect(v67, v69)) || VKMNearlyEqualRects(*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v18, v20, v22, v24))
  {
    v25 = VKMRectWithSize();
    VKMNormalizedSubrectInRect(v25, v26, v27, v28, x, y, width, height);
    [self processNormalizedRect:&v66 scale:mode contentMode:?];
  }

  else
  {
    v33 = VKMRectWithSize();
    v62 = v35;
    v63 = v34;
    v61 = v36;
    VKMRectFromNormalizedSubrect(v33, v34, v35, v36, v18, v20, v22, v24);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    VKMNormalizedSubrectInRect(v37, v39, v41, v43, x, y, width, height);
    [self processNormalizedRect:&v66 scale:mode contentMode:?];
    v49 = VKMClampRectToRect(v45, v46, v47, v48, 0.0, 0.0, 1.0, 1.0);
    VKMRectFromNormalizedSubrect(v38, v40, v42, v44, v49, v50, v51, v52);
    v53 = VKMCenterOfRect(v38, v40, v42, v44);
    v55 = v54;
    v56 = VKMMultiplyPointScalar(width, height, 1.0 / v66);
    v57 = VKMRectWithCenterAndSize(v53, v55, v56);
    VKMNormalizedSubrectInRect(v33, v63, v62, v61, v57, v58, v59, v60);
  }

  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (CGRect)processNormalizedRect:(CGRect)rect scale:(double *)scale contentMode:(int64_t)mode
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  *scale = 1.0;
  v10 = rect.origin.y;
  v11 = 0;
  v12 = 0;
  v13 = 0.0;
  v14 = 1;
  v15 = 1;
  v16 = 0.0;
  v17 = 0.0;
  switch(mode)
  {
    case 0:
      x = 0.0;
      y = 0.0;
      width = 1.0;
      height = 1.0;
      goto LABEL_14;
    case 1:
      goto LABEL_3;
    case 2:
    case 3:
      v14 = 0;
LABEL_3:
      if (VKMSizeIsEmptyOrHasNanOrInf(width, rect.size.height))
      {
        v27.origin.x = x;
        v27.origin.y = v10;
        v27.size.width = width;
        v27.size.height = height;
        v18 = NSStringFromCGRect(v27);
        +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "isValid", "+[VKCImageContentRectCalculator processNormalizedRect:scale:contentMode:]", 0, 0, @"Invalid rect for aspect fit / fill: %@", v18);
      }

      else
      {
        if (width < height != v14)
        {
          v19 = width;
        }

        else
        {
          v19 = height;
        }

        *scale = 1.0 / v19;
        VKMScaledRect(x, v10, width, height, 1.0 / v19);
        width = v20;
        height = v21;
      }

      goto LABEL_9;
    case 4:
LABEL_9:
      v13 = 0.5 - width * 0.5;
      goto LABEL_24;
    case 5:
      v16 = 0.5 - width * 0.5;
      v17 = 0.0;
      goto LABEL_25;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_24;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_25;
    case 10:
      v14 = 0;
      v11 = 0;
      y = 0.0;
      goto LABEL_16;
    case 11:
      v15 = 0;
      v12 = 0;
      x = 0.0;
      goto LABEL_18;
    case 12:
      v14 = 0;
      v11 = 1;
LABEL_16:
      v22 = x;
      v23 = v10;
      v24 = width;
      x = 1.0 - CGRectGetMaxX(rect);
      if (v11)
      {
        v15 = 0;
        v12 = v14;
LABEL_18:
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v17 = 1.0 - CGRectGetMaxY(v28);
        if (v15)
        {
          v13 = 0.5 - width * 0.5;
          v16 = v13;
          if ((v12 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v14 = v12;
      }

      else
      {
        v17 = y;
      }

      v13 = x;
      v16 = x;
      if (!v14)
      {
        goto LABEL_25;
      }

LABEL_24:
      v17 = 0.5 - height * 0.5;
      v16 = v13;
LABEL_25:
      v25 = width;
      v26 = height;
      result.size.height = v26;
      result.size.width = v25;
      result.origin.y = v17;
      result.origin.x = v16;
      return result;
    default:
LABEL_14:
      v16 = x;
      v17 = y;
      goto LABEL_25;
  }
}

@end