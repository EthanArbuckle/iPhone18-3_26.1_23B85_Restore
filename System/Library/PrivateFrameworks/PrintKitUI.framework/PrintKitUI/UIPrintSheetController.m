@interface UIPrintSheetController
- (CGSize)getNUpLayout;
- (CGSize)sizeForSheetNum:(int64_t)a3 showingPageView:(BOOL)a4;
- (UIPrintSheetController)initWithPrintInfo:(id)a3 printPageImageDelegate:(id)a4 usingWebKitFormatter:(BOOL)a5;
- (id)imageForSheetNum:(int64_t)a3 showingPageView:(BOOL)a4;
- (int64_t)calcNumberOfSheetsForLayoutType:(int64_t)a3;
- (int64_t)convertSelectionPageNumToPageNum:(int64_t)a3;
- (int64_t)numberOfPagesInSelection;
- (int64_t)pageOffsetForRow:(int64_t)a3 column:(int64_t)a4 nUpLayout:(CGSize)a5;
- (void)clearCacheForSheetNum:(int64_t)a3;
- (void)clearPagesCache;
- (void)dealloc;
- (void)generateWebKitThumbnailsWithCompletionBlock:(id)a3;
- (void)recalculateWebKitPageCount;
- (void)updateSelectionPageMap;
@end

@implementation UIPrintSheetController

- (UIPrintSheetController)initWithPrintInfo:(id)a3 printPageImageDelegate:(id)a4 usingWebKitFormatter:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = UIPrintSheetController;
  v10 = [(UIPrintSheetController *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(UIPrintSheetController *)v10 setPrintInfo:v8];
    v12 = [[UIPrintPagesController alloc] initWithPrintInfo:v8 delegate:v9 usingWebKitFormatter:v5];
    [(UIPrintSheetController *)v11 setPagesController:v12];
  }

  return v11;
}

- (void)dealloc
{
  selectionPageMap = self->_selectionPageMap;
  if (selectionPageMap)
  {
    free(selectionPageMap);
  }

  v4.receiver = self;
  v4.super_class = UIPrintSheetController;
  [(UIPrintSheetController *)&v4 dealloc];
}

- (int64_t)numberOfPagesInSelection
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(UIPrintSheetController *)self printInfo];
  v3 = [v2 pageRanges];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) rangeValue];
        v6 += v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateSelectionPageMap
{
  v28 = *MEMORY[0x277D85DE8];
  selectionPageMap = self->_selectionPageMap;
  if (selectionPageMap)
  {
    free(selectionPageMap);
  }

  v4 = malloc_type_calloc([(UIPrintSheetController *)self numberOfPagesInSelection], 8uLL, 0x100004000313F17uLL);
  self->_selectionPageMap = v4;
  if (v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [(UIPrintSheetController *)self printInfo];
    v6 = [v5 pageRanges];

    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
      v21 = vdupq_n_s64(1uLL);
      v22 = xmmword_25F6D4290;
      v20 = vdupq_n_s64(2uLL);
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v23 + 1) + 8 * i) rangeValue];
          if (v13)
          {
            v14 = 0;
            v15 = vaddq_s64(vdupq_n_s64(v12), v22);
            v16 = vdupq_n_s64(v13 - 1);
            v17 = &self->_selectionPageMap[v9];
            do
            {
              v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v14), v22)));
              v19 = vaddq_s64(v15, v21);
              if (v18.i8[0])
              {
                v17[v14] = v19.i64[0];
              }

              if (v18.i8[4])
              {
                v17[v14 + 1] = v19.i64[1];
              }

              v14 += 2;
              v15 = vaddq_s64(v15, v20);
            }

            while (((v13 + 1) & 0xFFFFFFFFFFFFFFFELL) != v14);
            v9 += v13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }
  }
}

- (int64_t)calcNumberOfSheetsForLayoutType:(int64_t)a3
{
  v5 = [(UIPrintSheetController *)self printInfo];
  v6 = [v5 pageCount];

  if (a3)
  {
    v7 = [(UIPrintSheetController *)self numberOfPagesInSelection];
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = [(UIPrintSheetController *)self printInfo];
      v10 = [v9 numNUpColumns];
      v11 = [(UIPrintSheetController *)self printInfo];
      v6 = vcvtps_s32_f32(v8 / ([v11 numNUpRows] * v10));
    }
  }

  return v6;
}

- (CGSize)sizeForSheetNum:(int64_t)a3 showingPageView:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIPrintSheetController *)self pagesController];
  [v7 sizeForPageNum:a3];

  if (v4)
  {
    v8 = [(UIPrintSheetController *)self pagesController];
    [v8 sizeForPageNum:a3];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(UIPrintSheetController *)self convertSelectionPageNumToPageNum:a3];
    v14 = [(UIPrintSheetController *)self pagesController];
    [v14 sizeForPageNum:v13];
    v10 = v15;
    v12 = v16;

    v17 = [(UIPrintSheetController *)self printInfo];
    v18 = [v17 numNUpRows];
    v19 = [(UIPrintSheetController *)self printInfo];
    v20 = [v19 numNUpColumns];

    if (v18 != v20)
    {
      v21 = v10 / v12;
      if (v10 / v12 <= 1.0)
      {
        v10 = ceil(v12 / v21);
      }

      else
      {
        v12 = ceil(v10 * v21);
      }
    }
  }

  v22 = v10;
  v23 = v12;
  result.height = v23;
  result.width = v22;
  return result;
}

- (id)imageForSheetNum:(int64_t)a3 showingPageView:(BOOL)a4
{
  if (a4)
  {
    v6 = [(UIPrintSheetController *)self pagesController];
    v7 = v6;
    v8 = a3;
    v9 = 1;
LABEL_20:
    v14 = [v6 imageForPageNum:v8 showingPageView:v9];

    goto LABEL_21;
  }

  v10 = [(UIPrintSheetController *)self printInfo];
  v11 = [v10 nUpActive];

  if ((v11 & 1) == 0)
  {
    v34 = [(UIPrintSheetController *)self convertSelectionPageNumToPageNum:a3];
    v6 = [(UIPrintSheetController *)self pagesController];
    v7 = v6;
    v8 = v34;
    v9 = 0;
    goto LABEL_20;
  }

  [(UIPrintSheetController *)self sizeForSheetNum:a3 showingPageView:0];
  v14 = 0;
  v15 = ceil(v12);
  if (v15 > 0.0)
  {
    v16 = v13;
    if (v13 > 0.0)
    {
      v17 = v12;
      v18 = [(UIPrintSheetController *)self printInfo];
      if ([v18 outputType] != 2)
      {
        v19 = [(UIPrintSheetController *)self printInfo];
        if ([v19 outputType] != 3)
        {
          v36 = [(UIPrintSheetController *)self printInfo];
          v37 = [v36 currentPrinter];
          if (v37)
          {
            v38 = v37;
            v39 = [(UIPrintSheetController *)self printInfo];
            v40 = [v39 currentPrinter];
            v41 = [v40 supportsColor];

            if ((v41 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else
          {
          }

          DeviceRGB = CGColorSpaceCreateDeviceRGB();
LABEL_11:
          v21 = DeviceRGB;
          v14 = CGBitmapContextCreate(0, v15, v16, 8uLL, vcvtd_n_u64_f64(v15, 2uLL), DeviceRGB, 1u);
          CGColorSpaceRelease(v21);
          if (v14)
          {
            eraseCGBitmapContext(v14);
            CGContextScaleCTM(v14, v15 / v17, v16 / v16);
            CGContextSaveGState(v14);
            v22 = [(UIPrintSheetController *)self printInfo];
            v23 = [v22 flipHorizontal];

            if (v23)
            {
              CGContextTranslateCTM(v14, v17, 0.0);
              CGContextScaleCTM(v14, -1.0, 1.0);
            }

            [(UIPrintSheetController *)self getNUpLayout];
            v25 = v24;
            v27 = v26;
            v28 = v17 / v24;
            v29 = v26 == v25;
            v30 = v16 / v26;
            if (v29)
            {
              v42 = v28 / v17;
              v43 = v30 / v16;
              if (v42 >= v43)
              {
                v42 = v43;
              }

              v56 = v17;
              v57 = v42;
              v55 = v16;
            }

            else
            {
              v31 = v28 / v16;
              v32 = v30 / v17;
              if (v31 >= v32)
              {
                v33 = v32;
              }

              else
              {
                v33 = v31;
              }

              v57 = v33;
              CGContextTranslateCTM(v14, (v17 + -(v16 * v33) * v25) * 0.5, (v16 + -(v17 * v33) * v27) * 0.5);
              v55 = v17;
              v56 = v16;
            }

            v44 = [(UIPrintSheetController *)self printInfo];
            v45 = [v44 pageCount];

            if (v27 > 0.0)
            {
              v46 = (v27 * v25 * (a3 - 1));
              v47 = 0.0;
              do
              {
                if (v25 <= 0.0)
                {
                  v47 = v47 + 1.0;
                }

                else
                {
                  v48 = v47;
                  v47 = v47 + 1.0;
                  v49 = 0.0;
                  do
                  {
                    v50 = [(UIPrintSheetController *)self pageOffsetForRow:v48 column:v49 nUpLayout:v25, v27]+ v46;
                    if (v50 < v45 && [(UIPrintSheetController *)self convertSelectionPageNumToPageNum:v50 + 1]>= 1)
                    {
                      v51 = [(UIPrintSheetController *)self pagesController];
                      v52 = [v51 imageForPageNum:-[UIPrintSheetController convertSelectionPageNumToPageNum:](self showingPageView:{"convertSelectionPageNumToPageNum:", v50 + 1), 0}];

                      if (v52)
                      {
                        CGContextSaveGState(v14);
                        CGContextTranslateCTM(v14, v56 * (v57 * v49), v55 * (v57 * (v27 - v47)));
                        memset(&v59, 0, sizeof(v59));
                        CGContextGetBaseCTM();
                        CGContextGetCTM(&v58, v14);
                        CGContextSetBaseCTM();
                        v53 = [v52 CGImage];
                        v61.origin.x = 0.0;
                        v61.origin.y = 0.0;
                        v61.size.width = v57 * v56;
                        v61.size.height = v57 * v55;
                        CGContextDrawImage(v14, v61, v53);
                        v58 = v59;
                        CGContextSetBaseCTM();
                        CGContextRestoreGState(v14);
                      }
                    }

                    v49 = v49 + 1.0;
                  }

                  while (v49 < v25);
                }
              }

              while (v47 < v27);
            }

            Image = CGBitmapContextCreateImage(v14);
            CGContextRelease(v14);
            if (Image)
            {
              v14 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:Image];
              CFRelease(Image);
            }

            else
            {
              v14 = 0;
            }
          }

          goto LABEL_21;
        }
      }

LABEL_10:
      DeviceRGB = CGColorSpaceCreateDeviceGray();
      goto LABEL_11;
    }
  }

LABEL_21:

  return v14;
}

- (int64_t)convertSelectionPageNumToPageNum:(int64_t)a3
{
  if (!self->_selectionPageMap)
  {
    [(UIPrintSheetController *)self updateSelectionPageMap];
  }

  if ([(UIPrintSheetController *)self numberOfPagesInSelection]< a3)
  {
    return 0;
  }

  if (a3 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3;
  }

  return self->_selectionPageMap[v6 - 1];
}

- (CGSize)getNUpLayout
{
  v3 = [(UIPrintSheetController *)self printInfo];
  v4 = [v3 numNUpRows];

  v5 = [(UIPrintSheetController *)self printInfo];
  v6 = [v5 numNUpColumns];

  v7 = [(UIPrintSheetController *)self pagesController];
  [v7 sizeForPageNum:1];
  v9 = v8;
  v11 = v10;

  v12 = (v6 < v4) ^ (v11 > v9);
  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = v4;
  }

  if (v12)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (int64_t)pageOffsetForRow:(int64_t)a3 column:(int64_t)a4 nUpLayout:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = [(UIPrintSheetController *)self printInfo];
  v10 = [v9 nUpLayoutDirection];
  v11 = width - (a4 + 1);
  v12 = v11 + a3 * width;
  v13 = a3 + v11 * height;
  v14 = a4 + a3 * width;
  if (v10 == 3)
  {
    v14 = v13;
  }

  if (v10 == 2)
  {
    v14 = a3 + a4 * height;
  }

  if (v10 == 1)
  {
    v14 = v12;
  }

  v15 = v14;

  return v15;
}

- (void)clearPagesCache
{
  v2 = [(UIPrintSheetController *)self pagesController];
  [v2 clearPagesCache];
}

- (void)clearCacheForSheetNum:(int64_t)a3
{
  v4 = [(UIPrintSheetController *)self pagesController];
  [v4 clearCacheForPageNum:a3];
}

- (void)generateWebKitThumbnailsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintSheetController *)self pagesController];
  [v5 generateWebKitThumbnailsWithCompletionBlock:v4];
}

- (void)recalculateWebKitPageCount
{
  v2 = [(UIPrintSheetController *)self pagesController];
  [v2 recalculateWebKitPageCount];
}

@end