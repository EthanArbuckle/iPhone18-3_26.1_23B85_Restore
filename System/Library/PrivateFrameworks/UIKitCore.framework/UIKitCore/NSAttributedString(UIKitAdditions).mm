@interface NSAttributedString(UIKitAdditions)
- (id)_ui_attributedStringWithOriginalFontAttributes;
- (id)_ui_glyphImageViewsScale:()UIKitAdditions outImageRect:outLineRect:outBaselineOffset:;
- (uint64_t)_ui_resolvedTextAlignment;
- (uint64_t)_ui_resolvedTextAlignmentForParagraphStyle:()UIKitAdditions;
- (uint64_t)_ui_resolvedTextAlignmentForParagraphStyle:()UIKitAdditions userInterfaceLayoutDirection:;
- (uint64_t)_ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:()UIKitAdditions;
- (uint64_t)_ui_resolvedWritingDirection;
- (uint64_t)_ui_resolvedWritingDirectionForUserInterfaceLayoutDirection:()UIKitAdditions;
@end

@implementation NSAttributedString(UIKitAdditions)

- (uint64_t)_ui_resolvedTextAlignment
{
  v2 = [UIApp userInterfaceLayoutDirection];

  return [a1 _ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:v2];
}

- (uint64_t)_ui_resolvedTextAlignmentForParagraphStyle:()UIKitAdditions userInterfaceLayoutDirection:
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 alignment];
    v8 = [v6 baseWritingDirection];
    if (v8 != -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 4;
  }

  v8 = a4 != 0;
LABEL_6:
  if ((v7 - 3) >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 2 * (v8 == 1);
  }

  return v9;
}

- (uint64_t)_ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:()UIKitAdditions
{
  if (![a1 length])
  {
    goto LABEL_4;
  }

  v5 = [a1 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_4:
    v5 = 0;
  }

  v6 = [a1 _ui_resolvedTextAlignmentForParagraphStyle:v5 userInterfaceLayoutDirection:a3];

  return v6;
}

- (uint64_t)_ui_resolvedTextAlignmentForParagraphStyle:()UIKitAdditions
{
  v4 = UIApp;
  v5 = a3;
  v6 = [a1 _ui_resolvedTextAlignmentForParagraphStyle:v5 userInterfaceLayoutDirection:{objc_msgSend(v4, "userInterfaceLayoutDirection")}];

  return v6;
}

- (uint64_t)_ui_resolvedWritingDirection
{
  v2 = [UIApp userInterfaceLayoutDirection];

  return [a1 _ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:v2];
}

- (uint64_t)_ui_resolvedWritingDirectionForUserInterfaceLayoutDirection:()UIKitAdditions
{
  if ([a1 length])
  {
    v5 = [a1 attribute:*off_1E70EC988 atIndex:0 effectiveRange:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v5)
      {
LABEL_8:
        v6 = a3 != 0;

        return v6;
      }
    }

    else
    {
    }
  }

  v6 = [0 baseWritingDirection];
  if (v6 == -1)
  {
    v5 = 0;
    goto LABEL_8;
  }

  return v6;
}

- (id)_ui_attributedStringWithOriginalFontAttributes
{
  v2 = [a1 length];
  if (!v2 || ((v3 = v2, v9 = 0, v10 = 0, [a1 attribute:*off_1E70EC978 atIndex:0 effectiveRange:&v9], v4 = objc_claimAutoreleasedReturnValue(), v5 = v10, v4, !v4) ? (v6 = v5 == v3) : (v6 = 0), v6))
  {
    v7 = a1;
  }

  else
  {
    v7 = [a1 mutableCopy];
    [v7 _ui_restoreOriginalFontAttributes];
  }

  return v7;
}

- (id)_ui_glyphImageViewsScale:()UIKitAdditions outImageRect:outLineRect:outBaselineOffset:
{
  v69 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E695DF70] array];
  if ([(__CFAttributedString *)a1 length])
  {
    v12 = CTLineCreateWithAttributedString(a1);
    if (v12)
    {
      v13 = v12;
      ImageBounds = CTLineGetImageBounds(v12, 0);
      v74.origin.x = UIRectIntegralWithScale(ImageBounds.origin.x, ImageBounds.origin.y, ImageBounds.size.width, ImageBounds.size.height, a2);
      v75 = CGRectInset(v74, -1.0, -1.0);
      x = v75.origin.x;
      y = v75.origin.y;
      height = v75.size.height;
      width = v75.size.width;
      _UIGraphicsBeginImageContextWithOptions(0, 0, v75.size.width, v75.size.height, a2);
      ContextStack = GetContextStack(0);
      if (*ContextStack >= 1)
      {
        v15 = ContextStack[3 * (*ContextStack - 1) + 1];
        if (v15)
        {
          v51 = a4;
          v53 = a5;
          v54 = a6;
          v76.origin.x = x;
          v76.origin.y = y;
          v76.size.height = height;
          v76.size.width = width;
          v16 = CGRectGetHeight(v76);
          CGContextTranslateCTM(v15, -x, y + v16);
          CGContextScaleCTM(v15, 1.0, -1.0);
          v52 = v13;
          CTLineGetGlyphRuns(v13);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          obj = v67 = 0u;
          v59 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
          if (v59)
          {
            v58 = *v65;
            do
            {
              for (i = 0; i != v59; ++i)
              {
                if (*v65 != v58)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v64 + 1) + 8 * i);
                GlyphCount = CTRunGetGlyphCount(v18);
                if (CTRunGetFont())
                {
                  v20 = GlyphCount < 1;
                }

                else
                {
                  v20 = 1;
                }

                if (!v20)
                {
                  v21 = 0;
                  do
                  {
                    v71.location = v21;
                    v71.length = 1;
                    CTRunDraw(v18, v15, v71);
                    Image = CGBitmapContextCreateImage(v15);
                    if (Image)
                    {
                      v23 = Image;
                      v72.location = v21;
                      v72.length = 1;
                      v77 = CTRunGetImageBounds(v18, v15, v72);
                      v78 = CGRectInset(v77, -1.0, -1.0);
                      v24 = v78.origin.x;
                      v25 = v78.origin.y;
                      v26 = v78.size.width;
                      v27 = v78.size.height;
                      v62 = (v78.origin.x - x) * a2;
                      v28 = height * a2 - (CGRectGetHeight(v78) + v78.origin.y - y) * a2;
                      v79.origin.x = v24;
                      v79.origin.y = v25;
                      v79.size.width = v26;
                      v79.size.height = v27;
                      v29 = CGRectGetWidth(v79) * a2;
                      v80.origin.x = v24;
                      v80.origin.y = v25;
                      v63 = v26;
                      v80.size.width = v26;
                      v80.size.height = v27;
                      v30 = CGRectGetHeight(v80);
                      v81.origin.x = UIRectIntegralWithScale(v62, v28, v29, v30 * a2, 1.0);
                      v93.origin.x = 0.0;
                      v93.origin.y = 0.0;
                      v93.size.width = width * a2;
                      v93.size.height = height * a2;
                      v82 = CGRectIntersection(v81, v93);
                      v31 = v82.origin.x;
                      v32 = v82.origin.y;
                      v33 = CGImageCreateWithImageInRect(v23, v82);
                      if (v33)
                      {
                        v34 = v33;
                        v35 = [UIImage imageWithCGImage:v33 scale:0 orientation:a2];
                        v36 = [[UIImageView alloc] initWithImage:v35];
                        [v35 size];
                        v38 = v37;
                        [v35 size];
                        [(UIImageView *)v36 setFrame:v31 / a2, v32 / a2, v38, v39];
                        [v11 addObject:v36];
                        CGImageRelease(v34);
                      }

                      CGImageRelease(v23);
                      v83.origin.x = v24;
                      v83.origin.y = v25;
                      v83.size.width = v63;
                      v83.size.height = v27;
                      CGContextClearRect(v15, v83);
                    }

                    ++v21;
                  }

                  while (GlyphCount != v21);
                }
              }

              v59 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
            }

            while (v59);
          }

          a5 = v53;
          a6 = v54;
          a4 = v51;
          v13 = v52;
        }
      }

      UIGraphicsEndImageContext();
      if (a4)
      {
        v84.origin.x = x;
        v84.origin.y = y;
        v84.size.width = width;
        v84.size.height = height;
        v40 = 0.0 - (y + CGRectGetHeight(v84));
        v85.origin.x = x;
        v85.origin.y = y;
        v85.size.width = width;
        v85.size.height = height;
        v41 = CGRectGetWidth(v85);
        v86.origin.x = x;
        v86.origin.y = y;
        v86.size.width = width;
        v86.size.height = height;
        v42 = CGRectGetHeight(v86);
        *a4 = x;
        a4[1] = v40;
        a4[2] = v41;
        a4[3] = v42;
      }

      if (a5)
      {
        BoundsWithOptions = CTLineGetBoundsWithOptions(v13, 0x11uLL);
        v88.origin.x = UIRectIntegralWithScale(BoundsWithOptions.origin.x, BoundsWithOptions.origin.y, BoundsWithOptions.size.width, BoundsWithOptions.size.height, a2);
        v89 = CGRectInset(v88, -1.0, -1.0);
        v43 = v89.origin.x;
        v44 = v89.origin.y;
        v45 = v89.size.width;
        v46 = v89.size.height;
        v47 = 0.0 - (CGRectGetHeight(v89) + v89.origin.y);
        v90.origin.x = v43;
        v90.origin.y = v44;
        v90.size.width = v45;
        v90.size.height = v46;
        v48 = CGRectGetWidth(v90);
        v91.origin.x = v43;
        v91.origin.y = v44;
        v91.size.width = v45;
        v91.size.height = v46;
        v49 = CGRectGetHeight(v91);
        *a5 = v43;
        a5[1] = v47;
        a5[2] = v48;
        a5[3] = v49;
      }

      if (a6)
      {
        v92.origin.x = x;
        v92.origin.y = y;
        v92.size.height = height;
        v92.size.width = width;
        *a6 = y + CGRectGetHeight(v92);
      }

      CFRelease(v13);
    }
  }

  return v11;
}

@end