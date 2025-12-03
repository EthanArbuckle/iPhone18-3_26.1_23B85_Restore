@interface GQHImage
+ (int)handleFloatingImageBinary:(id)binary geometry:(id)geometry style:(id)style cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier state:(id)state;
+ (int)handleInlineImageBinary:(id)binary geometry:(id)geometry cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier style:(id)style state:(id)state;
+ (void)handleSimpleImageBinary:(id)binary geometry:(id)geometry style:(id)style state:(id)state;
+ (void)mapCropGeometry:(id)geometry bounds:(id)bounds style:(id)style;
+ (void)mapMaskedImage:(id)image geometry:(id)geometry cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier graphicStyle:(id)style isFloating:(BOOL)floating state:(id)self0;
@end

@implementation GQHImage

+ (void)mapCropGeometry:(id)geometry bounds:(id)bounds style:(id)style
{
  if (geometry)
  {
    [geometry position];
    v9 = v8;
    [bounds position];
    v11 = v9 - v10;
    [geometry position];
    v13 = v12;
    [bounds position];
    *&v13 = v13 - v14;
    [geometry size];
    v16 = v15 + v11;
    [geometry size];
    *&v17 = v17 + *&v13;
    v18 = CFStringCreateWithFormat(0, 0, @"rect(%ldpx %ldpx %ldpx %ldpx)", llroundf(v11), llroundf(*&v17), llroundf(v16), llroundf(*&v13));
    [style addAttribute:@"clip" value:v18];

    CFRelease(v18);
  }
}

+ (void)mapMaskedImage:(id)image geometry:(id)geometry cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier graphicStyle:(id)style isFloating:(BOOL)floating state:(id)self0
{
  if (cropGeometry | bezier)
  {
    v16 = [state createUniqueShapeId:0];
    LOBYTE(v17) = floating;
    [objc_msgSend(state "shapeContext")];

    CFRelease(v16);
  }
}

+ (void)handleSimpleImageBinary:(id)binary geometry:(id)geometry style:(id)style state:(id)state
{
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"img"];
  v11 = objc_alloc_init(GQHStyle);
  [geometry size];
  v13 = v12;
  v15 = v14;
  [geometry angle];
  v17 = v16;
  horizontalFlip = [geometry horizontalFlip];
  verticalFlip = [geometry verticalFlip];
  LODWORD(v20) = v17;
  [GQHBounds mapSize:horizontalFlip angle:verticalFlip flipX:style flipY:v11 srcGraphicStyle:state style:v13 state:v15, v20];
  [GQHGraphicStyle mapStyle:style style:v11 state:state];
  [(GQHStyle *)v11 setStyleOnCurrentNode:state mappingBaseStyleClass:style baseClassType:objc_opt_class()];

  v21 = [binary createAbsoluteUrlForState:{objc_msgSend(state, "processorState")}];
  [htmlDoc setAttribute:"src" cfStringValue:CFURLGetString(v21)];
  if (v21)
  {
    CFRelease(v21);
  }

  [htmlDoc endElement];
}

+ (int)handleFloatingImageBinary:(id)binary geometry:(id)geometry style:(id)style cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier state:(id)state
{
  processorState = [state processorState];
  if (binary)
  {
    v17 = [binary createAbsoluteUrlForState:processorState];
    if (v17)
    {
      v18 = v17;
      if (cropGeometry | bezier)
      {
        [state enterGraphicObject];
        LOBYTE(v22) = 1;
        [self mapMaskedImage:binary geometry:geometry cropGeometry:cropGeometry maskingShapePath:path alphaMaskBezier:bezier graphicStyle:style isFloating:v22 state:state];
        [state leaveGraphicObject];
      }

      else
      {
        htmlDoc = [state htmlDoc];
        [htmlDoc startElement:"div"];
        v20 = objc_alloc_init(GQHStyle);
        [(GQHStyle *)v20 addAttribute:off_9CF18 value:off_9CFA0];
        [geometry nonrotatedPosition];
        [GQHBounds mapPosition:style srcGraphicStyle:v20 style:state state:?];
        [(GQHStyle *)v20 setStyleOnCurrentNode:state];

        [state enterGraphicObject];
        [self handleSimpleImageBinary:binary geometry:geometry style:style state:state];
        [state leaveGraphicObject];
        [htmlDoc endElement];
      }

      CFRelease(v18);
    }
  }

  return 1;
}

+ (int)handleInlineImageBinary:(id)binary geometry:(id)geometry cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier style:(id)style state:(id)state
{
  processorState = [state processorState];
  if (binary)
  {
    v17 = [binary createAbsoluteUrlForState:processorState];
    if (v17)
    {
      v18 = v17;
      [state enterGraphicObject];
      if (cropGeometry | bezier)
      {
        LOBYTE(v20) = 0;
        [self mapMaskedImage:binary geometry:geometry cropGeometry:cropGeometry maskingShapePath:path alphaMaskBezier:bezier graphicStyle:style isFloating:v20 state:state];
      }

      else
      {
        [self handleSimpleImageBinary:binary geometry:geometry style:style state:state];
      }

      [state leaveGraphicObject];
      CFRelease(v18);
    }
  }

  return 1;
}

@end