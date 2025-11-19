@interface GQHImage
+ (int)handleFloatingImageBinary:(id)a3 geometry:(id)a4 style:(id)a5 cropGeometry:(id)a6 maskingShapePath:(id)a7 alphaMaskBezier:(CGPath *)a8 state:(id)a9;
+ (int)handleInlineImageBinary:(id)a3 geometry:(id)a4 cropGeometry:(id)a5 maskingShapePath:(id)a6 alphaMaskBezier:(CGPath *)a7 style:(id)a8 state:(id)a9;
+ (void)handleSimpleImageBinary:(id)a3 geometry:(id)a4 style:(id)a5 state:(id)a6;
+ (void)mapCropGeometry:(id)a3 bounds:(id)a4 style:(id)a5;
+ (void)mapMaskedImage:(id)a3 geometry:(id)a4 cropGeometry:(id)a5 maskingShapePath:(id)a6 alphaMaskBezier:(CGPath *)a7 graphicStyle:(id)a8 isFloating:(BOOL)a9 state:(id)a10;
@end

@implementation GQHImage

+ (void)mapCropGeometry:(id)a3 bounds:(id)a4 style:(id)a5
{
  if (a3)
  {
    [a3 position];
    v9 = v8;
    [a4 position];
    v11 = v9 - v10;
    [a3 position];
    v13 = v12;
    [a4 position];
    *&v13 = v13 - v14;
    [a3 size];
    v16 = v15 + v11;
    [a3 size];
    *&v17 = v17 + *&v13;
    v18 = CFStringCreateWithFormat(0, 0, @"rect(%ldpx %ldpx %ldpx %ldpx)", llroundf(v11), llroundf(*&v17), llroundf(v16), llroundf(*&v13));
    [a5 addAttribute:@"clip" value:v18];

    CFRelease(v18);
  }
}

+ (void)mapMaskedImage:(id)a3 geometry:(id)a4 cropGeometry:(id)a5 maskingShapePath:(id)a6 alphaMaskBezier:(CGPath *)a7 graphicStyle:(id)a8 isFloating:(BOOL)a9 state:(id)a10
{
  if (a5 | a7)
  {
    v16 = [a10 createUniqueShapeId:0];
    LOBYTE(v17) = a9;
    [objc_msgSend(a10 "shapeContext")];

    CFRelease(v16);
  }
}

+ (void)handleSimpleImageBinary:(id)a3 geometry:(id)a4 style:(id)a5 state:(id)a6
{
  v10 = [a6 htmlDoc];
  [v10 startElement:"img"];
  v11 = objc_alloc_init(GQHStyle);
  [a4 size];
  v13 = v12;
  v15 = v14;
  [a4 angle];
  v17 = v16;
  v18 = [a4 horizontalFlip];
  v19 = [a4 verticalFlip];
  LODWORD(v20) = v17;
  [GQHBounds mapSize:v18 angle:v19 flipX:a5 flipY:v11 srcGraphicStyle:a6 style:v13 state:v15, v20];
  [GQHGraphicStyle mapStyle:a5 style:v11 state:a6];
  [(GQHStyle *)v11 setStyleOnCurrentNode:a6 mappingBaseStyleClass:a5 baseClassType:objc_opt_class()];

  v21 = [a3 createAbsoluteUrlForState:{objc_msgSend(a6, "processorState")}];
  [v10 setAttribute:"src" cfStringValue:CFURLGetString(v21)];
  if (v21)
  {
    CFRelease(v21);
  }

  [v10 endElement];
}

+ (int)handleFloatingImageBinary:(id)a3 geometry:(id)a4 style:(id)a5 cropGeometry:(id)a6 maskingShapePath:(id)a7 alphaMaskBezier:(CGPath *)a8 state:(id)a9
{
  v16 = [a9 processorState];
  if (a3)
  {
    v17 = [a3 createAbsoluteUrlForState:v16];
    if (v17)
    {
      v18 = v17;
      if (a6 | a8)
      {
        [a9 enterGraphicObject];
        LOBYTE(v22) = 1;
        [a1 mapMaskedImage:a3 geometry:a4 cropGeometry:a6 maskingShapePath:a7 alphaMaskBezier:a8 graphicStyle:a5 isFloating:v22 state:a9];
        [a9 leaveGraphicObject];
      }

      else
      {
        v19 = [a9 htmlDoc];
        [v19 startElement:"div"];
        v20 = objc_alloc_init(GQHStyle);
        [(GQHStyle *)v20 addAttribute:off_9CF18 value:off_9CFA0];
        [a4 nonrotatedPosition];
        [GQHBounds mapPosition:a5 srcGraphicStyle:v20 style:a9 state:?];
        [(GQHStyle *)v20 setStyleOnCurrentNode:a9];

        [a9 enterGraphicObject];
        [a1 handleSimpleImageBinary:a3 geometry:a4 style:a5 state:a9];
        [a9 leaveGraphicObject];
        [v19 endElement];
      }

      CFRelease(v18);
    }
  }

  return 1;
}

+ (int)handleInlineImageBinary:(id)a3 geometry:(id)a4 cropGeometry:(id)a5 maskingShapePath:(id)a6 alphaMaskBezier:(CGPath *)a7 style:(id)a8 state:(id)a9
{
  v16 = [a9 processorState];
  if (a3)
  {
    v17 = [a3 createAbsoluteUrlForState:v16];
    if (v17)
    {
      v18 = v17;
      [a9 enterGraphicObject];
      if (a5 | a7)
      {
        LOBYTE(v20) = 0;
        [a1 mapMaskedImage:a3 geometry:a4 cropGeometry:a5 maskingShapePath:a6 alphaMaskBezier:a7 graphicStyle:a8 isFloating:v20 state:a9];
      }

      else
      {
        [a1 handleSimpleImageBinary:a3 geometry:a4 style:a8 state:a9];
      }

      [a9 leaveGraphicObject];
      CFRelease(v18);
    }
  }

  return 1;
}

@end