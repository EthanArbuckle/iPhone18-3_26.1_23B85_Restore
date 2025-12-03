@interface UIPDFSelection
- ($0AC6E346AE4835514AAA8AC86D8F4844)extent;
- ($0AC6E346AE4835514AAA8AC86D8F4844)stringRange;
- ($88E5F8DBFD3EF82B558D000E19B2526A)rectangleAtIndex:(SEL)index scale:(unint64_t)scale inset:(double)inset;
- (BOOL)getBounds:(CGRect *)bounds transform:(CGAffineTransform *)transform index:(unint64_t)index;
- (BOOL)isEmpty;
- (BOOL)isNonEmpty;
- (BOOL)isWord;
- (CGAffineTransform)transform;
- (CGRect)bounds;
- (UIPDFSelection)init;
- (UIPDFSelection)initWithPage:(id)page cgSelection:(CGPDFSelection *)selection;
- (UIPDFSelection)initWithPage:(id)page fromArchive:(id)archive;
- (UIPDFSelection)initWithPage:(id)page fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (UIPDFSelection)initWithSelection:(id)selection;
- (double)baseLineAtIndex:(unint64_t)index;
- (id)archive;
- (id)attributedStringAtIndex:(unint64_t)index;
- (id)containingTextLine;
- (id)description;
- (id)htmlAtIndex:(unint64_t)index;
- (id)selectionExtendedToLineBoundaries;
- (id)string;
- (id)textAtIndex:(unint64_t)index;
- (unint64_t)endIndex;
- (unint64_t)extendAtEnd:(unint64_t)end;
- (unint64_t)extendAtStart:(unint64_t)start;
- (unint64_t)numberOfRectangles;
- (unint64_t)startIndex;
- (void)copyToPasteboard;
- (void)dealloc;
- (void)extendToParagraph;
@end

@implementation UIPDFSelection

- (UIPDFSelection)init
{
  v3.receiver = self;
  v3.super_class = UIPDFSelection;
  result = [(UIPDFSelection *)&v3 init];
  if (result)
  {
    result->_dirty = 0;
    result->_cachedStartIndex = -1;
    result->_cachedEndIndex = -1;
    result->_string = 0;
    result->_cgSelection = 0;
  }

  return result;
}

- (UIPDFSelection)initWithPage:(id)page fromArchive:(id)archive
{
  v6 = [(UIPDFSelection *)self init];
  if (v6)
  {
    v6->_page = page;
    v7 = [archive dataUsingEncoding:4];
    v8 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:v7];
    v9 = objc_alloc_init(UIPDFParserDelegate);
    [v8 setDelegate:v9];
    [v8 parse];
    if ([(UIPDFParserDelegate *)v9 parserError])
    {
      MutableCopy = 0;
    }

    else
    {
      MutableCopy = CGPathCreateMutableCopy([(UIPDFParserDelegate *)v9 path]);
    }

    if (MutableCopy)
    {
      [page CGPage];
      v6->_cgSelection = CGPDFSelectionCreateInPath();
      CGPathRelease(MutableCopy);
    }
  }

  return v6;
}

- (UIPDFSelection)initWithSelection:(id)selection
{
  v4 = [(UIPDFSelection *)self init];
  if (v4)
  {
    v4->_page = [selection page];
    [selection CGSelection];
    v4->_cgSelection = CGPDFSelectionCreateFromSelection();
  }

  return v4;
}

- (UIPDFSelection)initWithPage:(id)page fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v6 = [(UIPDFSelection *)self init];
  if (v6)
  {
    v6->_page = page;
    [page CGPage];
    v6->_cgSelection = CGPDFSelectionCreateForRange();
  }

  return v6;
}

- (CGAffineTransform)transform
{
  result = self->_cgSelection;
  if (!result || (result = CGPDFSelectionGetNumberOfRectsAndTransforms(), result < 1))
  {
LABEL_8:
    v9 = MEMORY[0x1E695EFD0];
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v10;
    v8 = *(v9 + 32);
    goto LABEL_9;
  }

  v5 = result;
  memset(&v13[1], 0, sizeof(CGAffineTransform));
  result = CGPDFSelectionGetRectAndTransform();
  if (v5 != 1)
  {
    v6 = 1;
    do
    {
      memset(v13, 0, 48);
      CGPDFSelectionGetRectAndTransform();
      t1 = v13[1];
      v11 = v13[0];
      result = CGAffineTransformEqualToTransform(&t1, &v11);
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    while (v5 != ++v6);
  }

  v7 = *&v13[1].c;
  *&retstr->a = *&v13[1].a;
  *&retstr->c = v7;
  v8 = *&v13[1].tx;
LABEL_9:
  *&retstr->tx = v8;
  return result;
}

- (CGRect)bounds
{
  if (self->_cgSelection)
  {
    NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
    [(UIPDFSelection *)self transform];
    IsIdentity = CGAffineTransformIsIdentity(&v20);
    if (NumberOfRectsAndTransforms >= 1)
    {
      v9 = IsIdentity;
      for (i = 0; i != NumberOfRectsAndTransforms; ++i)
      {
        memset(&v19[48], 0, 32);
        memset(&v20, 0, sizeof(v20));
        CGPDFSelectionGetRectAndTransform();
        y = *&v19[56];
        x = *&v19[48];
        height = *&v19[72];
        width = *&v19[64];
        if (v9)
        {
          *v19 = v20;
          v21 = CGRectApplyAffineTransform(*&v19[48], v19);
          x = v21.origin.x;
          y = v21.origin.y;
          width = v21.size.width;
          height = v21.size.height;
          *&v19[48] = v21;
        }

        v22.origin.x = v4;
        v22.origin.y = v5;
        v22.size.width = v6;
        v22.size.height = v7;
        v23 = CGRectUnion(v22, *&x);
        v4 = v23.origin.x;
        v5 = v23.origin.y;
        v6 = v23.size.width;
        v7 = v23.size.height;
      }
    }
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)string
{
  dirty = self->_dirty;
  result = self->_string;
  if (dirty)
  {
    if (result)
    {
      CFRelease(result);
      self->_string = 0;
    }
  }

  else if (result)
  {
    goto LABEL_7;
  }

  result = self->_cgSelection;
  if (result)
  {
    result = CGPDFSelectionCreateString();
    self->_string = result;
  }

LABEL_7:
  self->_dirty = 0;
  return result;
}

- (id)attributedStringAtIndex:(unint64_t)index
{
  CGPDFSelectionGetRangeForRectIndex();
  if (!v3)
  {
    return 0;
  }

  CGPDFSelectionGetPage();
  CGPDFSelectionCreateForRange();
  AttributedString = CGPDFSelectionCreateAttributedString();
  CGPDFSelectionRelease();

  return AttributedString;
}

- (BOOL)isEmpty
{
  if (self->_cgSelection)
  {
    return CGPDFSelectionIsEmpty();
  }

  else
  {
    return 1;
  }
}

- (BOOL)isNonEmpty
{
  cgSelection = self->_cgSelection;
  if (cgSelection)
  {
    LOBYTE(cgSelection) = CGPDFSelectionIsEmpty() ^ 1;
  }

  return cgSelection;
}

- (id)selectionExtendedToLineBoundaries
{
  if (!self->_cgSelection)
  {
    return 0;
  }

  SelectionsByLine = CGPDFSelectionCreateSelectionsByLine();
  if (!SelectionsByLine)
  {
    return 0;
  }

  v4 = SelectionsByLine;
  Count = CFArrayGetCount(SelectionsByLine);
  if (!Count || (v6 = Count, ValueAtIndex = CFArrayGetValueAtIndex(v4, 0), v8 = CFArrayGetValueAtIndex(v4, v6 - 1), !ValueAtIndex) || !v8 || !CGPDFSelectionCreateContainingSelection())
  {
LABEL_16:
    CFRelease(v4);
    return 0;
  }

  if (!CGPDFSelectionCreateContainingSelection())
  {
    CGPDFSelectionRelease();
    goto LABEL_16;
  }

  [-[UIPDFSelection page](self "page")];
  CGPDFSelectionGetTextRange();
  if (CGPDFSelectionGetNumberOfTextRanges() >= 1 && (CGPDFSelectionGetTextRange(), (v9 = CGPDFSelectionCreateForRange()) != 0))
  {
    v10 = [[UIPDFSelection alloc] initWithPage:[(UIPDFSelection *)self page] cgSelection:v9];
    CGPDFSelectionRelease();
  }

  else
  {
    v10 = 0;
  }

  CGPDFSelectionRelease();
  CGPDFSelectionRelease();
  CFRelease(v4);

  return v10;
}

- (id)containingTextLine
{
  result = self->_cgSelection;
  if (result)
  {
    ContainingSelection = CGPDFSelectionCreateContainingSelection();
    if (ContainingSelection)
    {
      v5 = [[UIPDFSelection alloc] initWithPage:[(UIPDFSelection *)self page] cgSelection:ContainingSelection];
      CGPDFSelectionRelease();
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  return result;
}

- (BOOL)isWord
{
  cgSelection = self->_cgSelection;
  if (cgSelection)
  {
    LOBYTE(cgSelection) = MEMORY[0x1EEDBAA40](cgSelection, a2);
  }

  return cgSelection;
}

- (unint64_t)numberOfRectangles
{
  result = self->_cgSelection;
  if (result)
  {
    return CGPDFSelectionGetNumberOfRectsAndTransforms();
  }

  return result;
}

- (BOOL)getBounds:(CGRect *)bounds transform:(CGAffineTransform *)transform index:(unint64_t)index
{
  cgSelection = self->_cgSelection;
  if (cgSelection)
  {
    LOBYTE(cgSelection) = CGPDFSelectionGetRectAndTransform();
  }

  else
  {
    v6 = *(MEMORY[0x1E695F058] + 16);
    bounds->origin = *MEMORY[0x1E695F058];
    bounds->size = v6;
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&transform->a = *MEMORY[0x1E695EFD0];
    *&transform->c = v8;
    *&transform->tx = *(v7 + 32);
  }

  return cgSelection;
}

- (id)textAtIndex:(unint64_t)index
{
  CGPDFSelectionGetRangeForRectIndex();
  if (v3)
  {
    CGPDFSelectionGetPage();
    CGPDFSelectionCreateForStringRange();
    CGPDFArchiveCreate();
    CGPDFArchiveAddSelection();
    PlainText = CGPDFArchiveGetPlainText();
    v5 = PlainText;
    CGPDFArchiveRelease();
    CGPDFSelectionRelease();
    return PlainText;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];

    return [v7 string];
  }
}

- (id)htmlAtIndex:(unint64_t)index
{
  CGPDFSelectionGetRangeForRectIndex();
  if (v3)
  {
    CGPDFSelectionGetPage();
    CGPDFSelectionCreateForRange();
    CGPDFArchiveCreate();
    CGPDFArchiveAddSelection();
    HTML = CGPDFArchiveGetHTML();
    v5 = HTML;
    CGPDFArchiveRelease();
    CGPDFSelectionRelease();
    return HTML;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];

    return [v7 string];
  }
}

- ($88E5F8DBFD3EF82B558D000E19B2526A)rectangleAtIndex:(SEL)index scale:(unint64_t)scale inset:(double)inset
{
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  result = [(UIPDFSelection *)self numberOfRectangles];
  if (result > scale)
  {
    memset(&v45, 0, sizeof(v45));
    memset(&v44, 0, sizeof(v44));
    [(UIPDFSelection *)self getBounds:&v45 transform:&v44 index:scale];
    v45 = CGRectInset(v45, -1.0, -1.0);
    MidX = CGRectGetMidX(v45);
    MidY = CGRectGetMidY(v45);
    v14 = v44.tx + MidX * v44.a + MidY * v44.c;
    v15 = v44.ty + MidX * v44.b + MidY * v44.d;
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeScale(&v43, inset, inset);
    v42 = v43;
    v46 = CGRectApplyAffineTransform(v45, &v42);
    width = v46.size.width;
    height = v46.size.height;
    if (a6 != 0.0)
    {
      v46 = CGRectInset(v46, a6, a6);
      width = v18;
      height = v19;
    }

    x = v46.origin.x;
    y = v46.origin.y;
    v20 = width;
    v21 = height;
    v22 = CGRectGetMidX(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v23 = CGRectGetMidY(v47);
    v24 = v44.tx + v22 * v44.a + v23 * v44.c;
    v25 = v44.ty + v22 * v44.b + v23 * v44.d;
    v26 = v24 - v14;
    v27 = v25 - v15;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    MinX = CGRectGetMinX(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    MaxY = CGRectGetMaxY(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    MaxX = CGRectGetMaxX(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v34 = CGRectGetMaxY(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v33 = CGRectGetMaxX(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    MinY = CGRectGetMinY(v53);
    CGAffineTransformMakeTranslation(&t2, -v26, -v27);
    t1 = v44;
    result = CGAffineTransformConcat(&v42, &t1, &t2);
    v28 = *&v42.a;
    v29 = *&v42.c;
    v30 = *&v42.tx;
    v31 = vaddq_f64(*&v42.tx, vaddq_f64(vmulq_n_f64(*&v42.a, MinX), vmulq_n_f64(*&v42.c, MaxY)));
    retstr->var0 = vaddq_f64(*&v42.tx, vaddq_f64(vmulq_n_f64(*&v42.a, x), vmulq_n_f64(*&v42.c, y)));
    retstr->var1 = v31;
    retstr->var2 = vaddq_f64(v30, vaddq_f64(vmulq_n_f64(v28, MaxX), vmulq_n_f64(v29, v34)));
    retstr->var3 = vaddq_f64(v30, vaddq_f64(vmulq_n_f64(v28, v33), vmulq_n_f64(v29, MinY)));
  }

  return result;
}

- (id)archive
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<UIPDFSelection pageIndex=%lu count=%lu>", objc_msgSend(-[UIPDFSelection page](self, "page"), "pageIndex"), -[UIPDFSelection numberOfRectangles](self, "numberOfRectangles")];
  [v3 appendString:v4];

  if ([(UIPDFSelection *)self numberOfRectangles])
  {
    v5 = 0;
    do
    {
      if (self)
      {
        [(UIPDFSelection *)self rectangleAtIndex:v5 scale:1.0 inset:-1.0];
      }

      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<Rectangle><Point id=bottomLeft x=%g y=%g/><Point id=topLeft x=%g y=%g/><Point id=topRight x=%g y=%g/><Point id=bottomRight x=%g y=%g/></Rectangle>", 0, 0, 0, 0];
      [v3 appendString:v6];

      ++v5;
    }

    while (v5 < [(UIPDFSelection *)self numberOfRectangles]);
  }

  [v3 appendString:@"</UIPDFSelection>"];
  return v3;
}

- (unint64_t)extendAtStart:(unint64_t)start
{
  self->_dirty = 1;
  self->_cachedStartIndex = -1;
  self->_cachedEndIndex = -1;
  return MEMORY[0x1EEDBA970](self->_cgSelection, start);
}

- (unint64_t)extendAtEnd:(unint64_t)end
{
  self->_dirty = 1;
  self->_cachedStartIndex = -1;
  self->_cachedEndIndex = -1;
  return MEMORY[0x1EEDBA968](self->_cgSelection, end);
}

- (void)copyToPasteboard
{
  CGPDFArchiveCreate();
  CGPDFArchiveAddSelection();
  PlainText = CGPDFArchiveGetPlainText();
  WebArchiveData = CGPDFArchiveGetWebArchiveData();
  if (WebArchiveData)
  {
    v4 = WebArchiveData;
    if ([WebArchiveData length])
    {
      [+[UIPasteboard generalPasteboard](UIPasteboard setValue:"setValue:forPasteboardType:" forPasteboardType:v4, @"Apple Web Archive pasteboard type"];
    }
  }

  if (PlainText)
  {
    [+[UIPasteboard generalPasteboard](UIPasteboard setString:"setString:", PlainText];
  }

  CGPDFArchiveRelease();
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)extent
{
  FirstIndex = CGPDFSelectionGetFirstIndex();
  LastIndex = CGPDFSelectionGetLastIndex();
  v4 = FirstIndex == -1 || LastIndex == -1;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = LastIndex - FirstIndex + 1;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = FirstIndex;
  }

  result.var1 = v5;
  result.var0 = v6;
  return result;
}

- (double)baseLineAtIndex:(unint64_t)index
{
  [(UIPDFPage *)self->_page CGPage];
  CGPDFPageGetLayout();
  CGPDFLayoutGetRootNode();
  CGPDFSelectionGetRangeForRectIndex();
  NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange();

  MEMORY[0x1EEDBA6F8](NodeContainingTextRange);
  return result;
}

- (unint64_t)startIndex
{
  if (!self->_cgSelection)
  {
    return 0;
  }

  result = self->_cachedStartIndex;
  if (result == -1)
  {
    result = CGPDFSelectionGetStartIndex();
    self->_cachedStartIndex = result;
  }

  return result;
}

- (unint64_t)endIndex
{
  if (!self->_cgSelection)
  {
    return 0;
  }

  result = self->_cachedEndIndex;
  if (result == -1)
  {
    result = CGPDFSelectionGetEndIndex();
    self->_cachedEndIndex = result;
  }

  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)stringRange
{
  length = self->stringRange.length;
  location = self->stringRange.location;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- (UIPDFSelection)initWithPage:(id)page cgSelection:(CGPDFSelection *)selection
{
  v5 = [(UIPDFSelection *)self init];
  if (v5)
  {
    v5->_page = page;
    v5->_cgSelection = CGPDFSelectionRetain();
  }

  return v5;
}

- (void)dealloc
{
  string = self->_string;
  if (string)
  {
    CFRelease(string);
  }

  CGPDFSelectionRelease();

  v4.receiver = self;
  v4.super_class = UIPDFSelection;
  [(UIPDFSelection *)&v4 dealloc];
}

- (void)extendToParagraph
{
  if (self->_cgSelection)
  {
    ContainingSelection = CGPDFSelectionCreateContainingSelection();
    if (ContainingSelection)
    {
      v4 = ContainingSelection;
      CGPDFSelectionRelease();
      self->_cgSelection = v4;
    }
  }
}

- (id)description
{
  NumberOfTextRanges = CGPDFSelectionGetNumberOfTextRanges();
  if (!NumberOfTextRanges)
  {
    return @"[]";
  }

  v3 = NumberOfTextRanges;
  TextRange = CGPDFSelectionGetTextRange();
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%ld:%ld, %ld]", v3, TextRange, v5];
}

@end