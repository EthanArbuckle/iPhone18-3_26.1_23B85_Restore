@interface UIWebPDFSearchOperation
- (UIWebPDFSearchOperation)init;
- (__CTFont)_fontWithPDFFont:(CGPDFFont *)font size:(double)size;
- (id)sanitizedAttributedStringForAttributedString:(id)string;
- (void)_notifyDelegateOfStatus;
- (void)_search;
- (void)cancel;
- (void)dealloc;
- (void)main;
@end

@implementation UIWebPDFSearchOperation

- (UIWebPDFSearchOperation)init
{
  v4.receiver = self;
  v4.super_class = UIWebPDFSearchOperation;
  v2 = [(UIWebPDFSearchOperation *)&v4 init];
  if (v2)
  {
    v2->_results = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(UIWebPDFSearchOperation *)v2 setResultLimit:101];
    [(UIWebPDFSearchOperation *)v2 setDocumentScale:1.0];
  }

  return v2;
}

- (void)dealloc
{
  [(UIWebPDFSearchOperation *)self setDocumentToSearch:0];
  [(UIWebPDFSearchOperation *)self setSearchString:0];

  v3.receiver = self;
  v3.super_class = UIWebPDFSearchOperation;
  [(UIWebPDFSearchOperation *)&v3 dealloc];
}

- (void)_notifyDelegateOfStatus
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIWebPDFSearchOperation__notifyDelegateOfStatus__block_invoke;
  block[3] = &unk_1E70F5CA0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __50__UIWebPDFSearchOperation__notifyDelegateOfStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    [*(v3 + 312) searchWasCancelled:?];
    v4 = *(a1 + 32);

    return [v4 setSearchDelegate:0];
  }

  else
  {
    *(*(a1 + 32) + 280) = [*(v3 + 248) count];
    v6 = *(a1 + 32);
    if (*(v6 + 280))
    {
      [*(v6 + 312) search:v6 hasPartialResults:*(v6 + 248)];
      [*(*(a1 + 32) + 248) removeAllObjects];
      v6 = *(a1 + 32);
    }

    if (*(v6 + 288) == 1)
    {
      v7 = *(v6 + 312);

      return [v7 searchDidFinish:?];
    }

    else
    {
      result = [v6 _hitSearchLimit];
      if (result)
      {
        v8 = *(*(a1 + 32) + 312);

        return [v8 searchLimitHit:?];
      }
    }
  }

  return result;
}

- (__CTFont)_fontWithPDFFont:(CGPDFFont *)font size:(double)size
{
  Font = CGPDFFontGetFont();
  for (i = CGFontCopyPostScriptName(Font); ; i = [(__CFString *)v7 substringFromIndex:7])
  {
    v7 = i;
    if (!i)
    {
      break;
    }

    v8 = CTFontDescriptorCreateWithNameAndSize(i, size);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    MatchingFontDescriptorsWithOptions = CTFontDescriptorCreateMatchingFontDescriptorsWithOptions();
    if (MatchingFontDescriptorsWithOptions)
    {
      CFRelease(MatchingFontDescriptorsWithOptions);
      result = CTFontCreateWithFontDescriptor(v9, size, 0);
      if (result)
      {
        return result;
      }
    }

    if ([(__CFString *)v7 length]< 8 || [(__CFString *)v7 characterAtIndex:6]!= 43)
    {
      break;
    }
  }

  if (([(__CFString *)v7 isEqualToString:@"Arial, Bold"]& 1) != 0)
  {
    v12 = @"Arial-BoldMT";
  }

  else if (([(__CFString *)v7 isEqualToString:@"Arial, BoldItalic"]& 1) != 0)
  {
    v12 = @"Arial-BoldItalicMT";
  }

  else if (([(__CFString *)v7 isEqualToString:@"Arial, Italic"]& 1) != 0)
  {
    v12 = @"Arial-ItalicMT";
  }

  else if (([(__CFString *)v7 isEqualToString:@"Helvetica-Black"]& 1) != 0 || ([(__CFString *)v7 isEqualToString:@"Helvetica-Narrow-Bold"]& 1) != 0)
  {
    v12 = @"Helvetica-Bold";
  }

  else if (([(__CFString *)v7 isEqualToString:@"HelveticaNeue-Black"]& 1) != 0)
  {
    v12 = @"HelveticaNeue-Bold";
  }

  else if (([(__CFString *)v7 isEqualToString:@"TimesNewRoman"]& 1) != 0)
  {
    v12 = @"TimesNewRomanPSMT";
  }

  else if (([(__CFString *)v7 isEqualToString:@"TimesNewRoman, Bold"]& 1) != 0)
  {
    v12 = @"TimesNewRomanPS-BoldMT";
  }

  else if (([(__CFString *)v7 isEqualToString:@"TimesNewRoman, BoldItalic"]& 1) != 0)
  {
    v12 = @"TimesNewRomanPS-BoldItalicMT";
  }

  else if (([(__CFString *)v7 isEqualToString:@"TimesNewRoman, Italic"]& 1) != 0)
  {
    v12 = @"TimesNewRomanPS-ItalicMT";
  }

  else
  {
    if (![(__CFString *)v7 isEqualToString:@"ZapfDingbats"]|| ([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]!= 1)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v12 = @"ZapfDingbatsITC";
  }

  result = CTFontCreateWithName(v12, size, 0);
  if (result)
  {
    return result;
  }

LABEL_19:
  CGPDFFontGetFontDescriptor();
  Flags = CGPDFFontDescriptorGetFlags();
  if ((Flags & 2) != 0)
  {
    if (Flags)
    {
      v12 = @"Courier";
    }

    else
    {
      v12 = @"TimesNewRomanPSMT";
    }

    goto LABEL_26;
  }

  if ((Flags & 1) == 0)
  {
    v12 = @"Helvetica";
    goto LABEL_26;
  }

  if (v12)
  {
LABEL_26:
    result = CTFontCreateWithName(v12, size, 0);
    if (result)
    {
      return result;
    }
  }

  return CTFontCreateWithName(@"TimesNewRomanPSMT", size, 0);
}

- (id)sanitizedAttributedStringForAttributedString:(id)string
{
  if (!string)
  {
    return 0;
  }

  result = [string string];
  if (result)
  {
    v6 = result;
    result = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:result];
    if (result)
    {
      v7 = result;
      v8 = [v6 length];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v23 = *MEMORY[0x1E6965658];
        v11 = *MEMORY[0x1E6965B48];
        v12 = *MEMORY[0x1E69659D8];
        do
        {
          v26 = 0;
          v27 = 0;
          v13 = [string attributesAtIndex:v10 effectiveRange:&v26];
          if (v13)
          {
            v14 = v13;
            v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            v16 = [v14 valueForKey:*MEMORY[0x1E695F440]];
            v17 = [v14 valueForKey:*MEMORY[0x1E695F438]];
            if (v17)
            {
              v18 = v16 == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = v17;
              v25 = 0.0;
              [v16 getBytes:&v25 range:{0, 8}];
              v24 = 0;
              [v19 getBytes:&v24 range:{0, 8}];
              v20 = [(UIWebPDFSearchOperation *)self _fontWithPDFFont:v24 size:v25];
              if (v20)
              {
                v21 = v20;
                [v15 setValue:v20 forKey:v23];
                CFRelease(v21);
              }
            }

            v22 = [v7 length];
            [v7 beginEditing];
            [v7 removeAttribute:v11 range:{0, v22}];
            [v7 addAttribute:v12 value:-[UIColor CGColor](+[UIColor blackColor](UIColor range:{"blackColor"), "CGColor"), 0, v22}];
            [v7 endEditing];
            [v7 setAttributes:v15 range:{v26, v27}];
          }

          v10 = v27 + v26;
        }

        while (v27 + v26 < v9);
      }

      return v7;
    }
  }

  return result;
}

- (void)_search
{
  searchString = [(UIWebPDFSearchOperation *)self searchString];
  if ([(NSString *)searchString length]&& (v4 = [(UIWebPDFSearchOperation *)self documentToSearch]) != 0 && (v5 = v4, v6 = 256, pageIndex = self->_pageIndex, pageIndex < [(UIPDFDocument *)v4 numberOfPages]) && (v8 = [(UIPDFDocument *)v5 pageAtIndex:self->_pageIndex]) != 0)
  {
    v9 = v8;
    v42 = *(MEMORY[0x1E695EFD0] + 16);
    v44 = *MEMORY[0x1E695EFD0];
    *&v51.a = *MEMORY[0x1E695EFD0];
    *&v51.c = v42;
    v41 = *(MEMORY[0x1E695EFD0] + 32);
    *&v51.tx = v41;
    rotation = [v8 rotation];
    if (rotation)
    {
      CGAffineTransformMakeRotation(&t2, rotation * -3.14159265 / 180.0);
      *&t1.a = v44;
      *&t1.c = v42;
      *&t1.tx = v41;
      CGAffineTransformConcat(&v51, &t1, &t2);
    }

    if (!self->_complete)
    {
      v11 = 0;
      v12 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
      v13 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
      v39 = v9;
      v40 = 256;
      do
      {
        if (([(UIWebPDFSearchOperation *)self isCancelled:v39]& 1) != 0)
        {
          break;
        }

        v14 = v12[552];
        v15 = *(&self->super.super.isa + v14);
        if (v15 >= [(UIWebPDFSearchOperation *)self resultLimit])
        {
          break;
        }

        v16 = [v9 findString:searchString fromSelection:v11 options:1];
        if (!v16)
        {
          ++*(&self->super.super.isa + v6);
          break;
        }

        v17 = v13[557];
        v18 = *(&self->super.super.isa + v17);
        if (v18)
        {
          *(&self->super.super.isa + v17) = (v18 - 1);
          v19 = v11;
        }

        else
        {
          v19 = v16;
          v20 = objc_alloc_init(UIWebPDFSearchResult);
          if (v20)
          {
            v21 = v20;
            [(UIWebPDFSearchResult *)v20 setPageIndex:*(&self->super.super.isa + v6)];
            [(UIWebPDFSearchResult *)v21 setString:self->searchString];
            [v19 bounds];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            [v19 transform];
            v52.origin.x = v23;
            v52.origin.y = v25;
            v52.size.width = v27;
            v52.size.height = v29;
            v53 = CGRectApplyAffineTransform(v52, &t2);
            v43 = v21;
            [(UIWebPDFSearchResult *)v21 setBoundingBox:v53.origin.x, v53.origin.y, v53.size.width, v53.size.height];
            array = [MEMORY[0x1E695DF70] array];
            array2 = [MEMORY[0x1E695DF70] array];
            array3 = [MEMORY[0x1E695DF70] array];
            numberOfRectangles = [v19 numberOfRectangles];
            if (numberOfRectangles)
            {
              v33 = numberOfRectangles;
              for (i = 0; i != v33; ++i)
              {
                memset(&t2, 0, sizeof(t2));
                memset(&v48, 0, sizeof(v48));
                if (([v19 getBounds:&v48 transform:&t2 index:i] & 1) == 0)
                {
                  v35 = -[UIWebPDFSearchOperation sanitizedAttributedStringForAttributedString:](self, "sanitizedAttributedStringForAttributedString:", [v19 attributedStringAtIndex:i]);
                  if (v35)
                  {
                    v36 = v35;
                    t1 = t2;
                    v48 = CGRectApplyAffineTransform(v48, &t1);
                    v47 = t2;
                    v46 = v51;
                    CGAffineTransformConcat(&t1, &v47, &v46);
                    t2 = t1;
                    v37 = MEMORY[0x1E696AD98];
                    v38 = atan2(t1.b, t1.a);
                    *&v38 = v38;
                    *&v38 = -*&v38;
                    [array3 addObject:{objc_msgSend(v37, "numberWithFloat:", v38)}];
                    [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGRect:", *&v48.origin, *&v48.size)}];
                    [array2 addObject:v36];
                  }
                }
              }
            }

            [(UIWebPDFSearchResult *)v43 setRotationAngles:array3];
            [(UIWebPDFSearchResult *)v43 setRects:array];
            [(UIWebPDFSearchResult *)v43 setStrings:array2];
            [(NSMutableArray *)self->_results addObject:v43];

            ++*(&self->super.super.isa + v14);
            v9 = v39;
            v6 = v40;
            v12 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
            v13 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
          }
        }

        v11 = v19;
      }

      while (!self->_complete);
    }
  }

  else
  {
    self->_complete = 1;
  }
}

- (void)main
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__UIWebPDFSearchOperation_main__block_invoke;
  block[3] = &unk_1E70F5CA0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  while (!self->_complete)
  {
    if ([(UIWebPDFSearchOperation *)self _hitSearchLimit])
    {
      break;
    }

    if (([(UIWebPDFSearchOperation *)self isCancelled]& 1) != 0)
    {
      break;
    }

    v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [(UIWebPDFSearchOperation *)self _search];
    [(UIWebPDFSearchOperation *)self _notifyDelegateOfStatus];
    [v4 drain];
  }

  [v3 drain];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = UIWebPDFSearchOperation;
  [(UIWebPDFSearchOperation *)&v3 cancel];
  if (!self->_complete)
  {
    [(UIWebPDFSearchOperation *)self _notifyDelegateOfStatus];
  }
}

@end