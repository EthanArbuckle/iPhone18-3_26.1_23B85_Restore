@interface UIPrintSheetController
- (CGSize)getNUpLayout;
- (CGSize)sizeForSheetNum:(int64_t)num showingPageView:(BOOL)view;
- (UIPrintSheetController)initWithPrintInfo:(id)info printPageImageDelegate:(id)delegate usingWebKitFormatter:(BOOL)formatter;
- (id)imageForSheetNum:(int64_t)num showingPageView:(BOOL)view;
- (int64_t)calcNumberOfSheetsForLayoutType:(int64_t)type;
- (int64_t)convertSelectionPageNumToPageNum:(int64_t)num;
- (int64_t)numberOfPagesInSelection;
- (int64_t)pageOffsetForRow:(int64_t)row column:(int64_t)column nUpLayout:(CGSize)layout;
- (void)clearCacheForSheetNum:(int64_t)num;
- (void)clearPagesCache;
- (void)dealloc;
- (void)generateWebKitThumbnailsWithCompletionBlock:(id)block;
- (void)recalculateWebKitPageCount;
- (void)updateSelectionPageMap;
@end

@implementation UIPrintSheetController

- (UIPrintSheetController)initWithPrintInfo:(id)info printPageImageDelegate:(id)delegate usingWebKitFormatter:(BOOL)formatter
{
  formatterCopy = formatter;
  infoCopy = info;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = UIPrintSheetController;
  v10 = [(UIPrintSheetController *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(UIPrintSheetController *)v10 setPrintInfo:infoCopy];
    v12 = [[UIPrintPagesController alloc] initWithPrintInfo:infoCopy delegate:delegateCopy usingWebKitFormatter:formatterCopy];
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
  printInfo = [(UIPrintSheetController *)self printInfo];
  pageRanges = [printInfo pageRanges];

  v4 = [pageRanges countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pageRanges);
        }

        [*(*(&v11 + 1) + 8 * i) rangeValue];
        v6 += v9;
      }

      v5 = [pageRanges countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    printInfo = [(UIPrintSheetController *)self printInfo];
    pageRanges = [printInfo pageRanges];

    v7 = [pageRanges countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(pageRanges);
          }

          rangeValue = [*(*(&v23 + 1) + 8 * i) rangeValue];
          if (v13)
          {
            v14 = 0;
            v15 = vaddq_s64(vdupq_n_s64(rangeValue), v22);
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

        v8 = [pageRanges countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }
  }
}

- (int64_t)calcNumberOfSheetsForLayoutType:(int64_t)type
{
  printInfo = [(UIPrintSheetController *)self printInfo];
  pageCount = [printInfo pageCount];

  if (type)
  {
    numberOfPagesInSelection = [(UIPrintSheetController *)self numberOfPagesInSelection];
    if (numberOfPagesInSelection >= 1)
    {
      v8 = numberOfPagesInSelection;
      printInfo2 = [(UIPrintSheetController *)self printInfo];
      numNUpColumns = [printInfo2 numNUpColumns];
      printInfo3 = [(UIPrintSheetController *)self printInfo];
      pageCount = vcvtps_s32_f32(v8 / ([printInfo3 numNUpRows] * numNUpColumns));
    }
  }

  return pageCount;
}

- (CGSize)sizeForSheetNum:(int64_t)num showingPageView:(BOOL)view
{
  viewCopy = view;
  pagesController = [(UIPrintSheetController *)self pagesController];
  [pagesController sizeForPageNum:num];

  if (viewCopy)
  {
    pagesController2 = [(UIPrintSheetController *)self pagesController];
    [pagesController2 sizeForPageNum:num];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(UIPrintSheetController *)self convertSelectionPageNumToPageNum:num];
    pagesController3 = [(UIPrintSheetController *)self pagesController];
    [pagesController3 sizeForPageNum:v13];
    v10 = v15;
    v12 = v16;

    printInfo = [(UIPrintSheetController *)self printInfo];
    numNUpRows = [printInfo numNUpRows];
    printInfo2 = [(UIPrintSheetController *)self printInfo];
    numNUpColumns = [printInfo2 numNUpColumns];

    if (numNUpRows != numNUpColumns)
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

- (id)imageForSheetNum:(int64_t)num showingPageView:(BOOL)view
{
  if (view)
  {
    pagesController = [(UIPrintSheetController *)self pagesController];
    v7 = pagesController;
    numCopy = num;
    v9 = 1;
LABEL_20:
    v14 = [pagesController imageForPageNum:numCopy showingPageView:v9];

    goto LABEL_21;
  }

  printInfo = [(UIPrintSheetController *)self printInfo];
  nUpActive = [printInfo nUpActive];

  if ((nUpActive & 1) == 0)
  {
    v34 = [(UIPrintSheetController *)self convertSelectionPageNumToPageNum:num];
    pagesController = [(UIPrintSheetController *)self pagesController];
    v7 = pagesController;
    numCopy = v34;
    v9 = 0;
    goto LABEL_20;
  }

  [(UIPrintSheetController *)self sizeForSheetNum:num showingPageView:0];
  v14 = 0;
  v15 = ceil(v12);
  if (v15 > 0.0)
  {
    v16 = v13;
    if (v13 > 0.0)
    {
      v17 = v12;
      printInfo2 = [(UIPrintSheetController *)self printInfo];
      if ([printInfo2 outputType] != 2)
      {
        printInfo3 = [(UIPrintSheetController *)self printInfo];
        if ([printInfo3 outputType] != 3)
        {
          printInfo4 = [(UIPrintSheetController *)self printInfo];
          currentPrinter = [printInfo4 currentPrinter];
          if (currentPrinter)
          {
            v38 = currentPrinter;
            printInfo5 = [(UIPrintSheetController *)self printInfo];
            currentPrinter2 = [printInfo5 currentPrinter];
            supportsColor = [currentPrinter2 supportsColor];

            if ((supportsColor & 1) == 0)
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
            printInfo6 = [(UIPrintSheetController *)self printInfo];
            flipHorizontal = [printInfo6 flipHorizontal];

            if (flipHorizontal)
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

            printInfo7 = [(UIPrintSheetController *)self printInfo];
            pageCount = [printInfo7 pageCount];

            if (v27 > 0.0)
            {
              v46 = (v27 * v25 * (num - 1));
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
                    if (v50 < pageCount && [(UIPrintSheetController *)self convertSelectionPageNumToPageNum:v50 + 1]>= 1)
                    {
                      pagesController2 = [(UIPrintSheetController *)self pagesController];
                      v52 = [pagesController2 imageForPageNum:-[UIPrintSheetController convertSelectionPageNumToPageNum:](self showingPageView:{"convertSelectionPageNumToPageNum:", v50 + 1), 0}];

                      if (v52)
                      {
                        CGContextSaveGState(v14);
                        CGContextTranslateCTM(v14, v56 * (v57 * v49), v55 * (v57 * (v27 - v47)));
                        memset(&v59, 0, sizeof(v59));
                        CGContextGetBaseCTM();
                        CGContextGetCTM(&v58, v14);
                        CGContextSetBaseCTM();
                        cGImage = [v52 CGImage];
                        v61.origin.x = 0.0;
                        v61.origin.y = 0.0;
                        v61.size.width = v57 * v56;
                        v61.size.height = v57 * v55;
                        CGContextDrawImage(v14, v61, cGImage);
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

- (int64_t)convertSelectionPageNumToPageNum:(int64_t)num
{
  if (!self->_selectionPageMap)
  {
    [(UIPrintSheetController *)self updateSelectionPageMap];
  }

  if ([(UIPrintSheetController *)self numberOfPagesInSelection]< num)
  {
    return 0;
  }

  if (num <= 1)
  {
    numCopy = 1;
  }

  else
  {
    numCopy = num;
  }

  return self->_selectionPageMap[numCopy - 1];
}

- (CGSize)getNUpLayout
{
  printInfo = [(UIPrintSheetController *)self printInfo];
  numNUpRows = [printInfo numNUpRows];

  printInfo2 = [(UIPrintSheetController *)self printInfo];
  numNUpColumns = [printInfo2 numNUpColumns];

  pagesController = [(UIPrintSheetController *)self pagesController];
  [pagesController sizeForPageNum:1];
  v9 = v8;
  v11 = v10;

  v12 = (numNUpColumns < numNUpRows) ^ (v11 > v9);
  if (v12)
  {
    v13 = numNUpColumns;
  }

  else
  {
    v13 = numNUpRows;
  }

  if (v12)
  {
    v14 = numNUpRows;
  }

  else
  {
    v14 = numNUpColumns;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (int64_t)pageOffsetForRow:(int64_t)row column:(int64_t)column nUpLayout:(CGSize)layout
{
  height = layout.height;
  width = layout.width;
  printInfo = [(UIPrintSheetController *)self printInfo];
  nUpLayoutDirection = [printInfo nUpLayoutDirection];
  v11 = width - (column + 1);
  v12 = v11 + row * width;
  v13 = row + v11 * height;
  v14 = column + row * width;
  if (nUpLayoutDirection == 3)
  {
    v14 = v13;
  }

  if (nUpLayoutDirection == 2)
  {
    v14 = row + column * height;
  }

  if (nUpLayoutDirection == 1)
  {
    v14 = v12;
  }

  v15 = v14;

  return v15;
}

- (void)clearPagesCache
{
  pagesController = [(UIPrintSheetController *)self pagesController];
  [pagesController clearPagesCache];
}

- (void)clearCacheForSheetNum:(int64_t)num
{
  pagesController = [(UIPrintSheetController *)self pagesController];
  [pagesController clearCacheForPageNum:num];
}

- (void)generateWebKitThumbnailsWithCompletionBlock:(id)block
{
  blockCopy = block;
  pagesController = [(UIPrintSheetController *)self pagesController];
  [pagesController generateWebKitThumbnailsWithCompletionBlock:blockCopy];
}

- (void)recalculateWebKitPageCount
{
  pagesController = [(UIPrintSheetController *)self pagesController];
  [pagesController recalculateWebKitPageCount];
}

@end