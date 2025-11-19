@interface GQHCanvasContext
- (GQHPathEndPointInfo)endPointInfoForPath:(SEL)a3;
- (float)strokeWidthWithGraphicStyle:(id)a3;
- (id)strokeColorWithGraphicStyle:(id)a3;
- (void)addScriptTagToHtml:(id)a3 state:(id)a4;
- (void)createMaskedImageWithId:(__CFString *)a3 geometry:(id)a4 imageBinary:(id)a5 cropGeometry:(id)a6 maskingShapePath:(id)a7 alphaMaskBezier:(CGPath *)a8 graphicStyle:(id)a9 isFloating:(BOOL)a10 state:(id)a11;
- (void)createShapeWithId:(__CFString *)a3 path:(id)a4 geometry:(id)a5 graphicStyle:(id)a6 isFloating:(BOOL)a7 state:(id)a8;
- (void)dealloc;
- (void)mapFill:(id)a3 state:(id)a4;
- (void)mapLineEndFillStyle:(id)a3 state:(id)a4;
- (void)mapLineEndStrokeStyle:(id)a3 state:(id)a4;
- (void)mapStroke:(id)a3 state:(id)a4;
- (void)mapStyle:(id)a3 state:(id)a4;
- (void)setBezierPath:(char *)a3 state:(id)a4;
- (void)setCGPath:(CGPath *)a3 state:(id)a4;
- (void)setContextOpacity:(float)a3 state:(id)a4;
- (void)setFillColor:(id)a3 state:(id)a4;
- (void)setGradient:(id)a3 state:(id)a4;
- (void)setImageFill:(__CFURL *)a3 srcSize:(CGSize)a4 mode:(int)a5 state:(id)a6;
- (void)setStrokeColor:(id)a3 width:(float)a4 state:(id)a5;
- (void)teardownContext:(id)a3;
- (void)translate:(CGSize)a3 state:(id)a4;
@end

@implementation GQHCanvasContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQHCanvasContext;
  [(GQHCanvasContext *)&v3 dealloc];
}

- (void)addScriptTagToHtml:(id)a3 state:(id)a4
{
  [a3 startElement:"script"];
  [a3 setAttribute:"type" value:"text/javascript"];
  [a3 setAttribute:"src" cfStringValue:{objc_msgSend(a4, "uriForBundleResource:ofType:", @"GQCanvas", @"js"}];

  [a3 endElement];
}

- (void)teardownContext:(id)a3
{
  self->mFunctionName = 0;
  *&self->mHasFill = 0;
  mBezierStr = self->mBezierStr;
  if (mBezierStr)
  {
    CFRelease(mBezierStr);
    self->mBezierStr = 0;
  }
}

- (void)createShapeWithId:(__CFString *)a3 path:(id)a4 geometry:(id)a5 graphicStyle:(id)a6 isFloating:(BOOL)a7 state:(id)a8
{
  v44 = a7;
  [(GQHCanvasContext *)self strokeWidthWithGraphicStyle:a6];
  v15 = v14;
  v16 = [a4 createBezierPath];
  path = 0;
  v48 = 0;
  if (v15 != 0.0 && self)
  {
    [(GQHCanvasContext *)self endPointInfoForPath:v16];
  }

  v46 = 0u;
  v45 = 0u;
  v17 = [a4 hasVerticalFlip];
  v18 = [a4 hasVerticalFlip];
  v19 = [a4 hasHorizontalFlip];
  v20 = [a4 horizontalFlip];
  if (a5)
  {
    [a5 transformHasVFlip:v17 vFlip:v18 hasHFlip:v19 hFlip:v20];
  }

  else
  {
    v46 = 0u;
    v45 = 0u;
  }

  BoundingBox = CGPathGetBoundingBox(v16);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGPathRelease(v16);
  v25 = -v15;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v51 = CGRectInset(v50, v25, v25);
  v26 = v51.origin.x;
  v27 = v51.origin.y;
  v28 = v51.size.width;
  v29 = v51.size.height;
  if (path)
  {
    v52 = CGPathGetBoundingBox(path);
    v57 = CGRectInset(v52, v25, v25);
    v53.origin.x = v26;
    v53.origin.y = v27;
    v53.size.width = v28;
    v53.size.height = v29;
    v54 = CGRectUnion(v53, v57);
    v26 = v54.origin.x;
    v27 = v54.origin.y;
    v28 = v54.size.width;
    v29 = v54.size.height;
  }

  if (v48)
  {
    v58 = CGPathGetBoundingBox(v48);
    v55.origin.x = v26;
    v55.origin.y = v27;
    v55.size.width = v28;
    v55.size.height = v29;
    v56 = CGRectUnion(v55, v58);
    v26 = v56.origin.x;
    v27 = v56.origin.y;
    v28 = v56.size.width;
    v29 = v56.size.height;
  }

  [a5 nonrotatedPosition];
  v31 = v30;
  v33 = v32;
  [(GQHCanvasContext *)self prepareContext:a8];
  self->mGeometry = a5;
  v34 = a5;
  v35 = [a8 htmlDoc];
  [v35 startElement:"canvas"];
  *&v36 = v28;
  [v35 setAttribute:"width" floatValue:v36];
  *&v37 = v29;
  [v35 setAttribute:"height" floatValue:v37];
  [v35 setAttribute:"id" cfStringValue:a3];
  v38 = objc_alloc_init(GQHStyle);
  v39 = v38;
  if (v44)
  {
    [(GQHStyle *)v38 addAttribute:off_9CF18 value:off_9CFA0];
    [(GQHStyle *)v39 addAttribute:off_9CEA0 intValue:(v26 + v31)];
    [(GQHStyle *)v39 addAttribute:off_9CF50 intValue:(v27 + v33)];
  }

  v40 = CFStringCreateWithFormat(0, 0, @"matrix(%f, %f, %f, %f, 0, 0)", v45, v46);
  [(GQHStyle *)v39 addAttribute:off_9CF90 value:v40];
  CFRelease(v40);
  [(GQHStyle *)v39 setStyleOnCurrentNode:a8];

  [v35 startElement:"script"];
  [v35 setAttribute:"type" value:"text/javascript"];
  v41 = [[NSMutableString alloc] initWithString:a3];
  self->mFunctionName = v41;
  [(NSMutableString *)v41 replaceOccurrencesOfString:@"-" withString:@"_" options:2 range:0, [(NSMutableString *)v41 length]];
  v42 = CFStringCreateWithFormat(0, 0, @"\nfunction %@() {\nvar canvas = document.getElementById('%@'); \nvar context = canvas.getContext('2d'); \ncontext.translate(%f, %f);\n", self->mFunctionName, a3, -v26, -v27);
  [v35 addContent:v42];
  CFRelease(v42);
  -[GQHCanvasContext setBezierPath:state:](self, "setBezierPath:state:", [a4 pathStr], a8);
  [(GQHCanvasContext *)self mapStyle:a6 state:a8];
  if (self->mHasFill)
  {
    [v35 addContent:@"context.fill();\n"];
  }

  if (self->mHasStroke)
  {
    [v35 addContent:@"context.stroke();\n"];
  }

  if (v48)
  {
    [v35 addContent:@"context.beginPath();\n"];
    [(GQHCanvasContext *)self setCGPath:v48 state:a8];
    [(GQHCanvasContext *)self mapLineEndFillStyle:a6 state:a8];
    [v35 addContent:@"context.fill();\n"];
    CGPathRelease(v48);
    v48 = 0;
  }

  if (path)
  {
    [v35 addContent:@"context.beginPath();\n"];
    [(GQHCanvasContext *)self setCGPath:path state:a8];
    [(GQHCanvasContext *)self mapLineEndStrokeStyle:a6 state:a8];
    [v35 addContent:@"context.stroke();\n"];
    CGPathRelease(path);
    path = 0;
  }

  v43 = CFStringCreateWithFormat(0, 0, @"}\n%@();\n", self->mFunctionName);
  [v35 addContent:v43];
  CFRelease(v43);
  [v35 endElement];

  self->mGeometry = 0;
  [v35 endElement];
  [(GQHCanvasContext *)self teardownContext:a8];
}

- (void)createMaskedImageWithId:(__CFString *)a3 geometry:(id)a4 imageBinary:(id)a5 cropGeometry:(id)a6 maskingShapePath:(id)a7 alphaMaskBezier:(CGPath *)a8 graphicStyle:(id)a9 isFloating:(BOOL)a10 state:(id)a11
{
  memset(&v73, 0, sizeof(v73));
  if (a4)
  {
    [a4 transform];
  }

  if (a6)
  {
    v17 = a6;
  }

  else
  {
    a6 = objc_alloc_init(GQDAffineGeometry);
    [a4 size];
    [a6 setNaturalSize:?];
    [a4 size];
    [a6 setSize:?];
    [a4 position];
    [a6 setPosition:?];
    [a4 angle];
    [a6 setAngle:?];
    [a6 setHorizontalFlip:{objc_msgSend(a4, "horizontalFlip")}];
    [a6 setVerticalFlip:{objc_msgSend(a4, "verticalFlip")}];
    [a4 shearXAngle];
    [a6 setShearXAngle:?];
    [a4 shearYAngle];
    [a6 setShearYAngle:?];
  }

  memset(&transform, 0, sizeof(transform));
  v18 = [a7 hasVerticalFlip];
  v19 = [a7 verticalFlip];
  v20 = [a7 hasHorizontalFlip];
  v21 = [a7 horizontalFlip];
  if (a6)
  {
    [a6 transformHasVFlip:v18 vFlip:v19 hasHFlip:v20 hFlip:v21];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  v22 = [a7 createBezierPath];
  if (!a7)
  {
    y = CGPointZero.y;
    [a6 naturalSize];
    v75.size.width = v24;
    v75.size.height = v25;
    v75.origin.x = CGPointZero.x;
    v75.origin.y = y;
    v22 = CGPathCreateWithRect(v75, 0);
  }

  v26 = v22;
  if (a8)
  {
    CFRetain(a8);
  }

  else
  {
    v27 = CGPointZero.y;
    [a4 naturalSize];
    v76.size.width = v28;
    v76.size.height = v29;
    v76.origin.x = CGPointZero.x;
    v76.origin.y = v27;
    a8 = CGPathCreateWithRect(v76, 0);
  }

  v30 = CGPathCreateCopyByTransformingPath(v26, &transform);
  v31 = CGPathCreateCopyByTransformingPath(a8, &v73);
  values[0] = v30;
  values[1] = v31;
  v32 = CFArrayCreate(0, values, 2, &kCFTypeArrayCallBacks);
  v33 = sub_50C94(v32);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v31);
  CFRelease(v26);
  CFRelease(a8);
  if (CGPathIsEmpty(v33))
  {
    CFRelease(v33);
  }

  else
  {
    v34 = [a9 valueForObjectProperty:68];
    v71 = v34;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = ([GQHGraphicStyle strokeWidth:v34]* -0.5);
    }

    else
    {
      v35 = -0.0;
    }

    PathBoundingBox = CGPathGetPathBoundingBox(v33);
    v78 = CGRectInset(PathBoundingBox, v35, v35);
    x = v78.origin.x;
    v37 = v78.origin.y;
    width = v78.size.width;
    height = v78.size.height;
    memset(&v70, 0, sizeof(v70));
    CGAffineTransformMakeTranslation(&v70, -v78.origin.x, -v78.origin.y);
    v40 = CGPathCreateCopyByTransformingPath(v33, &v70);
    CFRelease(v33);
    v41 = [a11 htmlDoc];
    v42 = v41;
    if (a10)
    {
      [v41 startElement:"div"];
      v43 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v43 addAttribute:off_9CF18 value:off_9CFA0];
      v44 = off_9CEA0;
      v45 = x;
      v46 = llroundf(v45);
      [a11 scale];
      [(GQHStyle *)v43 addAttribute:v44 intValue:(v47 * v46)];
      v48 = off_9CF50;
      v49 = v37;
      v50 = llroundf(v49);
      [a11 scale];
      [(GQHStyle *)v43 addAttribute:v48 intValue:(v51 * v50)];
      [(GQHStyle *)v43 setStyleOnCurrentNode:a11];
    }

    [(GQHCanvasContext *)self prepareContext:a11];
    self->mGeometry = a4;
    v52 = a4;
    [v42 startElement:"canvas"];
    *&v53 = width;
    [v42 setAttribute:"width" floatValue:v53];
    *&v54 = height;
    [v42 setAttribute:"height" floatValue:v54];
    [v42 setAttribute:"id" cfStringValue:a3];
    v55 = objc_alloc_init(GQHStyle);
    v71 = 0;
    if ([a9 hasValueForObjectProperty:72 value:&v71])
    {
      [GQHGraphicStyle mapExternalWrap:v71 style:v55 state:a11];
    }

    [(GQHStyle *)v55 setStyleOnCurrentNode:a11];

    [v42 startElement:"script"];
    [v42 setAttribute:"type" value:"text/javascript"];
    v56 = [[NSMutableString alloc] initWithString:a3];
    self->mFunctionName = v56;
    [(NSMutableString *)v56 replaceOccurrencesOfString:@"-" withString:@"_" options:2 range:0, [(NSMutableString *)v56 length]];
    v57 = CFStringCreateWithFormat(0, 0, @"\n                                                                         function %@() {\n                                                                         var canvas = document.getElementById('%@'); \n                                                                         var context = canvas.getContext('2d'); \n                                                                         ", self->mFunctionName, a3);
    [v42 addContent:v57];
    CFRelease(v57);
    v58 = sub_42CE8(v40);
    [(GQHCanvasContext *)self setBezierPath:v58 state:a11];
    CFRelease(v40);
    free(v58);
    [(GQHCanvasContext *)self mapStyle:a9 state:a11];
    if (a5)
    {
      v59 = [a5 createAbsoluteUrlForState:{objc_msgSend(a11, "processorState")}];
      if (v59)
      {
        v60 = v59;
        v61 = CFURLGetString(v59);
        v62 = sub_41BA4(v61);
        v63 = CFStringCreateWithFormat(0, 0, @"                                                                              var img = new Image();\n                                                                              img.src = '%@';\n                                                                              img.onload = function () {\n", v62);
        [v42 addContent:v63];
        CFRelease(v63);
        CFRelease(v62);
        [v42 addContent:@"                                  context.clip();\n"];
        t1 = v73;
        memset(&v69, 0, sizeof(v69));
        t2 = v70;
        CGAffineTransformConcat(&v69, &t1, &t2);
        v64 = CFStringCreateWithFormat(0, 0, @"context.transform(%f, %f, %f, %f, %f, %f);\n", *&v69.a, *&v69.b, *&v69.c, *&v69.d, *&v69.tx, *&v69.ty);
        [v42 addContent:v64];
        CFRelease(v64);
        [v42 addContent:{@"                                  context.drawImage(img, 0, 0);\n                                  }\n"}];
        CFRelease(v60);
      }
    }

    if (self->mHasFill)
    {
      [v42 addContent:@"context.fill();\n"];
    }

    if (self->mHasStroke)
    {
      [v42 addContent:@"context.stroke();\n"];
    }

    v65 = CFStringCreateWithFormat(0, 0, @"}\n%@();\n", self->mFunctionName);
    [v42 addContent:v65];
    CFRelease(v65);
    [v42 endElement];

    self->mGeometry = 0;
    [v42 endElementWithExpectedName:"canvas"];
    if (a10)
    {
      [v42 endElementWithExpectedName:"div"];
    }

    [(GQHCanvasContext *)self teardownContext:a11];
  }
}

- (void)setContextOpacity:(float)a3 state:(id)a4
{
  v5 = CFStringCreateWithFormat(0, 0, @"context.globalAlpha = %f;\n", a3);
  [objc_msgSend(a4 "htmlDoc")];

  CFRelease(v5);
}

- (void)setStrokeColor:(id)a3 width:(float)a4 state:(id)a5
{
  v9 = [a3 htmlRed];
  v10 = [a3 htmlGreen];
  v11 = [a3 htmlBlue];
  [a3 alphaComponent];
  v13 = CFStringCreateWithFormat(0, 0, @"setColorStrokeStyle(context, %d, %d, %d, %f, %ld);\n", v9, v10, v11, v12, llroundf(a4));
  [objc_msgSend(a5 "htmlDoc")];
  CFRelease(v13);
  self->mHasStroke = 1;
}

- (void)setFillColor:(id)a3 state:(id)a4
{
  v7 = [a3 htmlRed];
  v8 = [a3 htmlGreen];
  v9 = [a3 htmlBlue];
  [a3 alphaComponent];
  v11 = CFStringCreateWithFormat(0, 0, @"setColorFillStyle(context, %d, %d, %d, %f);\n", v7, v8, v9, v10);
  [objc_msgSend(a4 "htmlDoc")];
  CFRelease(v11);
  self->mHasFill = 1;
}

- (void)setGradient:(id)a3 state:(id)a4
{
  if ([a3 type])
  {
    if ([a3 type] != 1)
    {
      return;
    }

    [a3 start];
    *&v7 = v7;
    v8 = llroundf(*&v7);
    [a3 start];
    v10 = v9;
    v11 = llroundf(v10);
    [a3 start];
    *&v12 = v12;
    v13 = llroundf(*&v12);
    [a3 start];
    v15 = v14;
    v16 = llroundf(v15);
    [a3 start];
    v18 = v17;
    [a3 end];
    *&v18 = v18 - v19;
    [a3 start];
    v21 = v20;
    [a3 end];
    *&v22 = v21 - v22;
    v44 = llroundf(hypotf(*&v18, *&v22));
    v23 = CFStringCreateWithFormat(0, 0, @"context.fillStyle = context.createRadialGradient(%ld, %ld, %d, %ld, %ld, %ld);\n", v8, v11, 0, v13, v16, v44);
  }

  else
  {
    [a3 angle];
    v25 = 3.14159265 - v24;
    [(GQDAffineGeometry *)self->mGeometry size];
    *&v26 = v26;
    v27 = llroundf(*&v26);
    [(GQDAffineGeometry *)self->mGeometry size];
    v29 = v28;
    v23 = CFStringCreateWithFormat(0, 0, @"createLinearGradientFillStyle(context, %f, %ld, %ld);\n", *&v25, v27, llroundf(v29));
  }

  v30 = v23;
  if (v23)
  {
    v31 = objc_alloc_init(NSMutableString);
    v32 = [a3 stops];
    Count = CFArrayGetCount(v32);
    if (Count >= 1)
    {
      v45 = v30;
      v46 = self;
      v34 = 0;
      v35 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v32, v34);
        v37 = [ValueAtIndex color];
        v38 = [v37 htmlRed];
        v39 = [v37 htmlGreen];
        v40 = [v37 htmlBlue];
        [v37 alphaComponent];
        v42 = v41;
        [ValueAtIndex fraction];
        [v31 appendFormat:@"setGradientColorStop(context.fillStyle, %d, %d, %d, %f, %f);\n", v38, v39, v40, v42, v43];
        ++v34;
      }

      while (v35 != v34);
      v30 = v45;
      [objc_msgSend(a4 "htmlDoc")];
      [objc_msgSend(a4 "htmlDoc")];
      v46->mHasFill = 1;
    }

    CFRelease(v30);
  }
}

- (void)setImageFill:(__CFURL *)a3 srcSize:(CGSize)a4 mode:(int)a5 state:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = CFURLGetString(a3);
  v12 = sub_41BA4(v11);
  v13 = CFStringCreateWithFormat(0, 0, @"var img = new Image();\nimg.src = '%@';\nimg.onload = function () {\n", v12);
  [objc_msgSend(a6 "htmlDoc")];
  CFRelease(v13);
  CFRelease(v12);
  if (a5 == 2)
  {
    goto LABEL_5;
  }

  if (!a5)
  {
    if (self->mBezierStr)
    {
      [(GQDAffineGeometry *)self->mGeometry size];
      v15 = (v14 - width) * 0.5;
      v17 = (v16 - height) * 0.5;
      v18 = 1.0;
      v19 = 1.0;
      v20 = 1.0;
      v21 = 1.0;
LABEL_37:
      v38 = v15;
      v39 = v17;
      if (v18 == 1.0 && v20 == 1.0)
      {
        v23 = CFStringCreateWithFormat(0, 0, @"    context.clip();\n    context.translate(%f, %f);\n    context.drawImage(img, 0, 0);\n   }\n", *&v38, *&v39);
      }

      else
      {
        v23 = CFStringCreateWithFormat(0, 0, @"    context.clip();\n    context.translate(%f, %f);\n    context.scale(%f,%f);\n    context.drawImage(img, 0, 0);\n   }\n", *&v38, *&v39, *&v21, *&v19);
      }

LABEL_42:
      v40 = v23;
      [objc_msgSend(a6 "htmlDoc")];

      CFRelease(v40);
      return;
    }

LABEL_5:
    v22 = @"repeat";
    if (!a5)
    {
      v22 = @"no-repeat";
    }

    v23 = CFStringCreateWithFormat(0, 0, @"    context.fillStyle = context.createPattern(img, '%@');\n    context.fill();\n }\n", v22);
    goto LABEL_42;
  }

  if (self->mBezierStr)
  {
    [(GQDAffineGeometry *)self->mGeometry size];
    v18 = v24 / width;
    v20 = v25 / height;
    v26 = fmaxf(v18, v20);
    v27 = (v24 - v26 * width) * 0.5;
    v28 = 0.0;
    if (width * v26 >= v24)
    {
      v27 = 0.0;
    }

    v29 = (v25 + -v26 * height) * 0.5;
    if (height * v26 >= v25)
    {
      v29 = 0.0;
    }

    v30 = fminf(v18, v20);
    if (width * v30 >= v24)
    {
      v32 = 0.0;
    }

    else
    {
      v31 = (v24 - v30 * width) * 0.5;
      v32 = v31;
    }

    v33 = height * v30 < v25;
    v34 = (v25 + -v30 * height) * 0.5;
    if (!v33)
    {
      v34 = 0.0;
    }

    v35 = v18;
    v36 = v20;
    if (a5 == 4)
    {
      v36 = v30;
      v35 = v30;
      v18 = v30;
      v20 = v30;
      v37 = v32;
    }

    else
    {
      v37 = 0.0;
    }

    if (a5 == 4)
    {
      v28 = v34;
    }

    v19 = a5 == 3 ? v26 : v36;
    v21 = a5 == 3 ? v26 : v35;
    if (a5 == 3)
    {
      v18 = v26;
      v20 = v26;
      v15 = v27;
    }

    else
    {
      v15 = v37;
    }

    v17 = a5 == 3 ? v29 : v28;
    if (v18 != 0.0 && v20 != 0.0)
    {
      goto LABEL_37;
    }
  }
}

- (void)setBezierPath:(char *)a3 state:(id)a4
{
  mBezierStr = self->mBezierStr;
  if (mBezierStr)
  {
    CFRelease(mBezierStr);
    self->mBezierStr = 0;
  }

  v8 = CFStringCreateWithCString(0, a3, 0x8000100u);
  v9 = sub_41BA4(v8);
  CFRelease(v8);
  self->mBezierStr = CFStringCreateWithFormat(0, 0, @"bezierPath(context, '%@');\n", v9);
  CFRelease(v9);
  v10 = [a4 htmlDoc];
  v11 = self->mBezierStr;

  [v10 addContent:v11];
}

- (void)translate:(CGSize)a3 state:(id)a4
{
  v5 = CFStringCreateWithFormat(0, 0, @"context.translate(%f, %f);\n", *&a3.width, *&a3.height);
  [objc_msgSend(a4 "htmlDoc")];

  CFRelease(v5);
}

- (void)mapStyle:(id)a3 state:(id)a4
{
  [a3 valueForFloatProperty:69];
  [(GQHCanvasContext *)self setContextOpacity:a4 state:?];
  -[GQHCanvasContext mapFill:state:](self, "mapFill:state:", [a3 valueForObjectProperty:67], a4);
  v7 = [a3 valueForObjectProperty:68];

  [(GQHCanvasContext *)self mapStroke:v7 state:a4];
}

- (void)mapFill:(id)a3 state:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self;
    v8 = a3;
LABEL_3:

    [(GQHCanvasContext *)v7 setFillColor:v8 state:a4];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(GQHCanvasContext *)self setGradient:a3 state:a4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v9 = [a3 imageBinary];
    if (!v9)
    {
      if (![a3 color])
      {
        return;
      }

      v8 = [a3 color];
      v7 = self;
      goto LABEL_3;
    }

    v10 = v9;
    v11 = [v9 createAbsoluteUrlForState:{objc_msgSend(a4, "processorState")}];
    if (v11)
    {
      v12 = v11;
      v13 = [a3 technique];
      [v10 size];
      [(GQHCanvasContext *)self setImageFill:v12 srcSize:v13 mode:a4 state:?];

      CFRelease(v12);
    }
  }
}

- (void)mapStroke:(id)a3 state:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a3 pattern];
    if (!v7 || [v7 type] != 2)
    {
      v8 = [a3 color];
      [a3 width];

      [(GQHCanvasContext *)self setStrokeColor:v8 width:a4 state:?];
    }
  }
}

- (void)mapLineEndFillStyle:(id)a3 state:(id)a4
{
  v6 = [(GQHCanvasContext *)self strokeColorWithGraphicStyle:a3];

  [(GQHCanvasContext *)self setFillColor:v6 state:a4];
}

- (void)mapLineEndStrokeStyle:(id)a3 state:(id)a4
{
  v7 = [(GQHCanvasContext *)self strokeColorWithGraphicStyle:?];
  [(GQHCanvasContext *)self strokeWidthWithGraphicStyle:a3];

  [(GQHCanvasContext *)self setStrokeColor:v7 width:a4 state:?];
}

- (GQHPathEndPointInfo)endPointInfoForPath:(SEL)a3
{
  *&retstr->var0 = 0u;
  *&retstr->var1.y = 0u;
  *&retstr->var2.y = 0u;
  *&retstr->var3.y = 0u;
  retstr->var0 = 1;
  *&retstr->var4.y = 0u;
  v5 = CGPointZero;
  retstr->var1 = CGPointZero;
  retstr->var2 = v5;
  retstr->var3 = v5;
  retstr->var4 = v5;
  CGPathApply(a4, retstr, sub_4B160);
  if (retstr->var5 <= 1)
  {
    retstr->var0 = 0;
  }

  return result;
}

- (float)strokeWidthWithGraphicStyle:(id)a3
{
  v3 = [a3 valueForObjectProperty:68];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [GQHGraphicStyle strokeWidth:v5];
    }
  }

  return v4;
}

- (id)strokeColorWithGraphicStyle:(id)a3
{
  v3 = [a3 valueForObjectProperty:68];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v4 color];
}

- (void)setCGPath:(CGPath *)a3 state:(id)a4
{
  objc_msgSend(objc_msgSend(a4, "htmlDoc"), "addContent:", @"bezierPath(context, '");
  v6 = [GQDBezierPath createCFStringFromPath:a3];
  [objc_msgSend(a4 "htmlDoc")];
  CFRelease(v6);
  v7 = [a4 htmlDoc];

  [v7 addContent:@"';\n"]);
}

@end