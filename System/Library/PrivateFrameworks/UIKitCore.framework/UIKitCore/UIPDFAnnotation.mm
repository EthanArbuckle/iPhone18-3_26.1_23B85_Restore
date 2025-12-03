@interface UIPDFAnnotation
+ (id)newAnnotationWithPage:(id)page fromArchive:(id)archive;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)hasPopUp;
- (CGPath)newPathFromQuadPoints;
- (CGRect)Rect;
- (CGRect)popUpAnnotationRect;
- (CGRect)rectIn:(CGPDFArray *)in;
- (UIPDFAnnotation)init;
- (UIPDFAnnotation)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary;
- (UIPDFSelection)selection;
- (const)pdfContents;
- (id)archive;
- (id)descriptionHOLD;
- (id)getImageNamed:(id)named ofType:(id)type;
- (id)newSelection;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)makeQuadpointsFrom:(id)from;
- (void)setAnnotationID:(id)d;
- (void)setColor:(CGColor *)color;
- (void)setSelection:(id)selection;
@end

@implementation UIPDFAnnotation

+ (id)newAnnotationWithPage:(id)page fromArchive:(id)archive
{
  v6 = [archive rangeOfString:@"<UIPDFSelection"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
    goto LABEL_3;
  }

  v12 = v6;
  v13 = [archive rangeOfString:@"</UIPDFSelection>"];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v15 = -[UIPDFSelection initWithPage:fromArchive:]([UIPDFSelection alloc], "initWithPage:fromArchive:", page, [archive substringWithRange:{v12, v13 - v12 + 17}]);
  v7 = v15;
  if (v15 && ![(UIPDFSelection *)v15 CGSelection])
  {

    return 0;
  }

LABEL_3:
  v8 = objc_alloc_init(UIPDFAnnotationParserDelegate);
  v9 = [archive dataUsingEncoding:4];
  v10 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:v9];
  [v10 setDelegate:v8];
  [v10 parse];
  if ([(UIPDFAnnotationParserDelegate *)v8 parseError])
  {
    annotation = 0;
  }

  else
  {
    annotation = [(UIPDFAnnotationParserDelegate *)v8 annotation];
    [(UIPDFAnnotation *)annotation setEditable:1];
    [(UIPDFAnnotation *)annotation setSelection:v7];
  }

  return annotation;
}

- (UIPDFAnnotation)init
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = UIPDFAnnotation;
  v2 = [(UIPDFAnnotation *)&v7 init];
  if (v2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = xmmword_18A681820;
    v9 = unk_18A681830;
    v2->_color = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    v2->_pdfContents = 0;
    v2->_index = -1;
    v4 = *MEMORY[0x1E695E480];
    v5 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    v2->_annotationID = CFUUIDCreateString(v4, v5);
    CFRelease(v5);
    v2->_quadPoints = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  }

  return v2;
}

- (UIPDFAnnotation)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = UIPDFAnnotation;
  v4 = [(UIPDFAnnotation *)&v23 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_hidden = 0;
  v4->_pdfContents = 0;
  v4->_dictionary = dictionary;
  v4->_color = 0;
  v4->_index = -1;
  v4->_quadPoints = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  value = 0;
  *components = xmmword_18A681820;
  *v25 = unk_18A681830;
  if (CGPDFDictionaryGetArray(dictionary, "C", &value))
  {
    Count = CGPDFArrayGetCount(value);
    switch(Count)
    {
      case 4uLL:
        DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
        CGPDFArrayGetNumber(value, 0, components);
        CGPDFArrayGetNumber(value, 1uLL, &components[1]);
        CGPDFArrayGetNumber(value, 2uLL, v25);
        v8 = value;
        v9 = &v25[1];
        v10 = 3;
        break;
      case 3uLL:
        DeviceCMYK = CGColorSpaceCreateDeviceRGB();
        CGPDFArrayGetNumber(value, 0, components);
        CGPDFArrayGetNumber(value, 1uLL, &components[1]);
        v8 = value;
        v9 = v25;
        v10 = 2;
        break;
      case 1uLL:
        DeviceCMYK = CGColorSpaceCreateDeviceGray();
        v8 = value;
        v9 = components;
        v10 = 0;
        break;
      default:
        goto LABEL_12;
    }

    CGPDFArrayGetNumber(v8, v10, v9);
  }

  else
  {
    DeviceCMYK = CGColorSpaceCreateDeviceRGB();
  }

  v5->_color = CGColorCreate(DeviceCMYK, components);
  CGColorSpaceRelease(DeviceCMYK);
LABEL_12:
  array = 0;
  if (CGPDFDictionaryGetArray(dictionary, "QuadPoints", &array))
  {
    v11 = CGPDFArrayGetCount(array);
    v12 = v11 - 1;
    if (v11 >= 1 && (v11 & 7) == 0)
    {
      v19 = 0.0;
      v20 = 0.0;
      if (v11 >= 2)
      {
        v13 = 0;
        do
        {
          CGPDFArrayGetNumber(array, v13, &v20);
          CGPDFArrayGetNumber(array, v13 + 1, &v19);
          -[NSMutableArray addObject:](v5->_quadPoints, "addObject:", [MEMORY[0x1E696B098] valueWithCGPoint:{v20, v19}]);
          v13 += 2;
        }

        while (v13 < v12);
      }
    }
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v5->_annotationID = CFUUIDCreateString(v14, v15);
  CFRelease(v15);
  v5->_appearanceStream = 0;
  v20 = 0.0;
  if (CGPDFDictionaryGetDictionary(dictionary, "AP", &v20))
  {
    v18 = 0;
    v19 = 0.0;
    if (CGPDFDictionaryGetObject(*&v20, "N", &v19) && CGPDFObjectGetValue(*&v19, kCGPDFObjectTypeStream, &v18))
    {
      v5->_appearanceStream = CGPDFFormCreate();
    }
  }

  v19 = 0.0;
  if (CGPDFDictionaryGetString(dictionary, "Contents", &v19))
  {
    BytePtr = CGPDFStringGetBytePtr(*&v19);
    v5->_contents = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:BytePtr length:CGPDFStringGetLength(*&v19) encoding:1];
  }

  return v5;
}

- (void)dealloc
{
  [(UIPDFAnnotation *)self setPopup:0];
  CGColorRelease(self->_color);
  CGPDFFormRelease();
  annotationID = self->_annotationID;
  if (annotationID)
  {
    CFRelease(annotationID);
  }

  annotationView = [(UIPDFAnnotation *)self annotationView];
  if (annotationView)
  {
    [(UIView *)annotationView removeFromSuperview];
    [(UIPDFAnnotation *)self setAnnotationView:0];
  }

  drawingLayer = [(UIPDFAnnotation *)self drawingLayer];
  if (drawingLayer)
  {
    v6 = drawingLayer;
    [(CALayer *)drawingLayer setDelegate:0];
    [(CALayer *)v6 removeFromSuperlayer];
    [(UIPDFAnnotation *)self setDrawingLayer:0];
  }

  v7.receiver = self;
  v7.super_class = UIPDFAnnotation;
  [(UIPDFAnnotation *)&v7 dealloc];
}

- (void)setAnnotationID:(id)d
{
  annotationID = self->_annotationID;
  if (annotationID)
  {
  }

  self->_annotationID = d;
}

- (id)archive
{
  newSelection = [(UIPDFAnnotation *)self newSelection];
  v4 = newSelection;
  if (newSelection)
  {
    archive = [newSelection archive];
  }

  else
  {
    archive = 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  annotationType = [(UIPDFAnnotation *)self annotationType];
  if (annotationType > 0xA)
  {
    v8 = @"UIPDFAnnotationTypeOther";
  }

  else
  {
    v8 = *(&off_1E711FCD0 + annotationType);
  }

  [v6 appendString:@"<UIPDFAnnotation type="];
  [v6 appendString:v8];
  [v6 appendString:@">"];
  [v6 appendString:@"<ID>"];
  [v6 appendString:self->_annotationID];
  [v6 appendString:@"</ID>"];
  ColorSpace = CGColorGetColorSpace(self->_color);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
  {
    Components = CGColorGetComponents(self->_color);
    [v6 appendFormat:@"<Color R=%g G=%g B=%g", *Components, *(Components + 1), *(Components + 2)];
    if (CGColorGetNumberOfComponents(self->_color) == 4)
    {
      [v6 appendFormat:@" A=%g", *(Components + 3)];
    }

    [v6 appendString:@"/>"];
  }

  if (archive)
  {
    [v6 appendString:archive];
  }

  contents = [(UIPDFAnnotation *)self contents];
  if (contents)
  {
    v12 = contents;
    [v6 appendString:@"<Contents>"];
    [v6 appendString:v12];
    [v6 appendString:@"</Contents>"];
  }

  popup = self->_popup;
  if (popup)
  {
    annotationID = [(UIPDFAnnotation *)popup annotationID];
    [v6 appendString:@"<PopupID>"];
    [v6 appendString:annotationID];
    [v6 appendString:@"</PopupID>"];
  }

  [v6 appendString:@"<Tag>"];
  [v6 appendFormat:@"%ld", -[UIPDFAnnotation tag](self, "tag")];
  [v6 appendString:@"</Tag>"];
  [v6 appendString:@"<Index>"];
  [v6 appendFormat:@"%ld", -[UIPDFAnnotation index](self, "index")];
  [v6 appendString:@"</Index>"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(UIPDFAnnotation *)self parent])
  {
    v15 = [-[UIPDFAnnotation parent](self "parent")];
    [v6 appendString:@"<ParentID>"];
    [v6 appendString:v15];
    [v6 appendString:@"</ParentID>"];
  }

  [v6 appendString:@"</UIPDFAnnotation>"];

  return v6;
}

- (id)getImageNamed:(id)named ofType:(id)type
{
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:named];
  v6 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", v5, type}];

  return [UIImage imageWithContentsOfFile:v6];
}

- (CGRect)rectIn:(CGPDFArray *)in
{
  if (CGPDFArrayGetCount(in) == 4 && (v10 = 0.0, value = 0.0, v8 = 0.0, v9 = 0.0, CGPDFArrayGetNumber(in, 0, &value)) && CGPDFArrayGetNumber(in, 1uLL, &v10) && CGPDFArrayGetNumber(in, 2uLL, &v9) && CGPDFArrayGetNumber(in, 3uLL, &v8))
  {
    *&v6 = value;
    v4 = v9 - value;
    v5 = v8 - v10;
    *(&v6 + 1) = v10;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 16);
    v5 = *(MEMORY[0x1E695F058] + 24);
  }

  v7 = *(&v6 + 1);
  result.origin.x = *&v6;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  return result;
}

- (CGRect)Rect
{
  value = 0;
  if (CGPDFDictionaryGetArray(self->_dictionary, "Rect", &value))
  {
    [(UIPDFAnnotation *)self rectIn:value];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIPDFAnnotation *)self Rect];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)setColor:(CGColor *)color
{
  color = self->_color;
  if (color)
  {
    CGColorRelease(color);
  }

  self->_color = color;

  CGColorRetain(color);
}

- (void)drawInContext:(CGContext *)context
{
  if (self->_appearanceStream)
  {
    CGPDFFormGetStream();
    CGPDFFormGetResources();
    CGPDFDrawingContextCreateWithStream();
    [(UIPDFAnnotation *)self Rect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    memset(&v22, 0, sizeof(v22));
    CGPDFFormGetMatrix();
    CGPDFFormGetBBox();
    memset(&v21, 0, sizeof(v21));
    v24 = CGRectApplyAffineTransform(v23, &v21);
    v13 = v10 / v24.size.width;
    v14 = v12 / v24.size.height;
    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeTranslation(&v21, v6 - v24.origin.x * v13, v8 - v24.origin.y * v14);
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeScale(&v20, v13, v14);
    t1 = v21;
    v17 = v20;
    CGAffineTransformConcat(&v19, &t1, &v17);
    v15 = *&v19.c;
    v21 = v19;
    v16 = *&v19.a;
    *&t1.tx = *&v19.tx;
    memset(&v19, 0, sizeof(v19));
    *&t1.a = v16;
    *&t1.c = v15;
    v17 = v22;
    CGAffineTransformConcat(&v19, &t1, &v17);
    CGContextSaveGState(context);
    t1 = v19;
    CGContextConcatCTM(context, &t1);
    CGPDFDrawingContextDraw();
    CGContextRestoreGState(context);
    CGPDFDrawingContextRelease();
  }
}

- (BOOL)hasPopUp
{
  String = CGPDFDictionaryGetString(self->_dictionary, "Contents", &self->_pdfContents);
  if (String)
  {
    LOBYTE(String) = CGPDFStringGetLength(self->_pdfContents) != 0;
  }

  return String;
}

- (const)pdfContents
{
  p_pdfContents = &self->_pdfContents;
  pdfContents = self->_pdfContents;
  if (!pdfContents)
  {
    CGPDFDictionaryGetString(self->_dictionary, "Contents", p_pdfContents);
    pdfContents = self->_pdfContents;
  }

  return CGPDFStringGetBytePtr(pdfContents);
}

- (CGRect)popUpAnnotationRect
{
  value = 0;
  if (CGPDFDictionaryGetDictionary(self->_dictionary, "Popup", &value) && (v7 = 0, CGPDFDictionaryGetArray(value, "Rect", &v7)))
  {
    [(UIPDFAnnotation *)self rectIn:v7];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)descriptionHOLD
{
  selection = [(UIPDFAnnotation *)self selection];
  if (!selection)
  {
    TextRange = 0;
    goto LABEL_6;
  }

  TextRange = [(UIPDFSelection *)selection CGSelection];
  if (!TextRange)
  {
LABEL_6:
    NumberOfTextRanges = 0;
    goto LABEL_7;
  }

  NumberOfTextRanges = CGPDFSelectionGetNumberOfTextRanges();
  if (NumberOfTextRanges >= 1)
  {
    TextRange = CGPDFSelectionGetTextRange();
    v7 = v6 - 1;
    goto LABEL_8;
  }

  TextRange = 0;
LABEL_7:
  v7 = -1;
LABEL_8:
  annotationView = [(UIPDFAnnotation *)self annotationView];
  if (annotationView)
  {
    [(UIView *)annotationView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  v17 = MEMORY[0x1E696AEC0];
  annotationID = [(UIPDFAnnotation *)self annotationID];
  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  return [v17 stringWithFormat:@"Annotation %@ Ranges: %ld Indexes (inclusive) <%ld, %ld>; view frame: %@", annotationID, NumberOfTextRanges, TextRange, TextRange + v7, NSStringFromCGRect(v20)];
}

- (void)setSelection:(id)selection
{
  [(UIPDFAnnotation *)self makeQuadpointsFrom:?];
  selection = self->_selection;
  if (selection != selection)
  {
  }

  self->_selection = selection;
}

- (UIPDFSelection)selection
{
  result = self->_selection;
  if (!result)
  {
    result = [(UIPDFAnnotation *)self newSelection];
    self->_selection = result;
  }

  return result;
}

- (id)newSelection
{
  newPathFromQuadPoints = [(UIPDFAnnotation *)self newPathFromQuadPoints];
  if (newPathFromQuadPoints)
  {
    v4 = newPathFromQuadPoints;
    [(UIPDFPage *)[(UIPDFAnnotation *)self page] CGPage];
    v5 = CGPDFSelectionCreateInPath();
    if (v5)
    {
      v6 = [[UIPDFSelection alloc] initWithPage:[(UIPDFAnnotation *)self page] cgSelection:v5];
      CGPathRelease(v4);
      CGPDFSelectionRelease();
      return v6;
    }

    CGPathRelease(v4);
  }

  return 0;
}

- (void)makeQuadpointsFrom:(id)from
{
  [(NSMutableArray *)self->_quadPoints removeAllObjects];
  numberOfRectangles = [from numberOfRectangles];
  if (numberOfRectangles)
  {
    v6 = numberOfRectangles;
    v7 = 0;
    memset(&v26, 0, sizeof(v26));
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    do
    {
      [from getBounds:&v26 transform:&v23 index:v7];
      origin = v26.origin;
      MinX = CGRectGetMinX(v26);
      MaxY = CGRectGetMaxY(v26);
      MaxX = CGRectGetMaxX(v26);
      v12 = CGRectGetMaxY(v26);
      v13 = CGRectGetMaxX(v26);
      MinY = CGRectGetMinY(v26);
      v15 = *&v25 + origin.x * *&v23 + origin.y * *&v24;
      v16 = *(&v25 + 1) + origin.x * *(&v23 + 1) + origin.y * *(&v24 + 1);
      v17 = *&v25 + MinX * *&v23 + MaxY * *&v24;
      v18 = *(&v25 + 1) + MinX * *(&v23 + 1) + MaxY * *(&v24 + 1);
      v19 = *&v25 + MaxX * *&v23 + v12 * *&v24;
      v20 = *(&v25 + 1) + MaxX * *(&v23 + 1) + v12 * *(&v24 + 1);
      v21 = *&v25 + v13 * *&v23 + MinY * *&v24;
      v22 = *(&v25 + 1) + v13 * *(&v23 + 1) + MinY * *(&v24 + 1);
      -[NSMutableArray addObject:](self->_quadPoints, "addObject:", [MEMORY[0x1E696B098] valueWithCGPoint:{v17, v18}]);
      -[NSMutableArray addObject:](self->_quadPoints, "addObject:", [MEMORY[0x1E696B098] valueWithCGPoint:{v19, v20}]);
      -[NSMutableArray addObject:](self->_quadPoints, "addObject:", [MEMORY[0x1E696B098] valueWithCGPoint:{v15, v16}]);
      -[NSMutableArray addObject:](self->_quadPoints, "addObject:", [MEMORY[0x1E696B098] valueWithCGPoint:{v21, v22}]);
      ++v7;
    }

    while (v6 != v7);
  }
}

- (CGPath)newPathFromQuadPoints
{
  v3 = [(NSMutableArray *)self->_quadPoints count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CGPathCreateMutable();
  for (i = 0; i < v4; i += 4)
  {
    [-[NSMutableArray objectAtIndex:](self->_quadPoints objectAtIndex:{i), "CGPointValue"}];
    v8 = v7;
    v10 = v9;
    [-[NSMutableArray objectAtIndex:](self->_quadPoints objectAtIndex:{i + 1), "CGPointValue"}];
    v12 = v11;
    v14 = v13;
    [-[NSMutableArray objectAtIndex:](self->_quadPoints objectAtIndex:{i + 2), "CGPointValue"}];
    v16 = v15;
    v18 = v17;
    [-[NSMutableArray objectAtIndex:](self->_quadPoints objectAtIndex:{i + 3), "CGPointValue"}];
    v19 = v8;
    v20 = (truncf(v19) + -1.0);
    v21 = v10;
    v22 = (ceilf(v21) + 1.0);
    v23 = v16;
    v24 = v18;
    v25 = v12;
    v26 = (ceilf(v25) + 1.0);
    v27 = v14;
    v28 = (ceilf(v27) + 1.0);
    *&v29 = v29;
    v30 = (ceilf(*&v29) + 1.0);
    *&v29 = v31;
    v32 = (truncf(*&v29) + -1.0);
    CGPathMoveToPoint(Mutable, 0, (truncf(v23) + -1.0), (truncf(v24) + -1.0));
    CGPathAddLineToPoint(Mutable, 0, v30, v32);
    CGPathAddLineToPoint(Mutable, 0, v26, v28);
    CGPathAddLineToPoint(Mutable, 0, v20, v22);
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

@end