@interface GQHShape
+ (int)handleShape:(id)shape isFloating:(BOOL)floating state:(id)state;
+ (void)mapPath:(id)path shapeContext:(id)context state:(id)state;
@end

@implementation GQHShape

+ (int)handleShape:(id)shape isFloating:(BOOL)floating state:(id)state
{
  v8 = [objc_msgSend(shape "path")];
  if (v8)
  {
    v9 = v8;
    [state enterGraphicObject];
    shapeContext = [state shapeContext];
    geometry = [shape geometry];
    graphicStyle = [shape graphicStyle];
    [geometry angle];
    v14 = (360.0 - v13) * 3.14159265 / 180.0;
    Mutable = CGPathCreateMutable();
    memset(&m, 0, sizeof(m));
    CGAffineTransformMakeRotation(&m, v14);
    CGPathAddPath(Mutable, &m, v9);
    BoundingBox = CGPathGetBoundingBox(Mutable);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    CFRelease(Mutable);
    CFRelease(v9);
    v20 = width;
    v21 = llroundf(v20);
    v22 = height;
    v23 = llroundf(v22);
    htmlDoc = [state htmlDoc];
    v25 = htmlDoc;
    if (floating)
    {
      v26 = [state createUniqueShapeId:0];
      [shapeContext createShapeWithId:v26 path:objc_msgSend(shape geometry:"path") graphicStyle:geometry isFloating:graphicStyle state:{1, state}];
      CFRelease(v26);
    }

    else
    {
      v43 = shapeContext;
      [htmlDoc startElement:"span"];
      v44 = 0;
      if ([graphicStyle hasValueForObjectProperty:72 value:&v44] && v44)
      {
        v27 = objc_alloc_init(GQHStyle);
        [GQHGraphicStyle mapExternalWrap:v44 style:v27 state:state];
        [(GQHStyle *)v27 setStyleOnCurrentNode:state];
      }

      [v25 startElement:"div"];
      v28 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v28 addAttribute:off_9CE60 value:off_9D000];
      [(GQHStyle *)v28 addAttribute:off_9CEE8 value:off_9CFE8];
      [GQHBounds mapSize:0 angle:v28 srcGraphicStyle:state style:width state:height, 0.0];
      [(GQHStyle *)v28 setStyleOnCurrentNode:state];

      [v25 startElement:"div"];
      v29 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v29 addAttribute:off_9CF18 value:off_9CFA0];
      [GQHBounds mapSize:0 angle:v29 srcGraphicStyle:state style:width state:height, 0.0];
      [(GQHStyle *)v29 setStyleOnCurrentNode:state];

      v30 = [state createUniqueShapeId:0];
      [v43 createShapeWithId:v30 path:objc_msgSend(shape geometry:"path") graphicStyle:geometry isFloating:graphicStyle state:{0, state}];
      CFRelease(v30);
      [v25 endElement];
    }

    [geometry position];
    v32 = v31;
    [geometry position];
    v34 = v33;
    [geometry size];
    v36 = v35;
    [geometry size];
    v38 = v37;
    v39 = CGPathCreateMutable();
    v47.origin.x = v32;
    v47.origin.y = v34;
    v47.size.width = v36;
    v47.size.height = v38;
    CGPathAddRect(v39, &m, v47);
    v48 = CGPathGetBoundingBox(v39);
    v40 = v48.size.width;
    v41 = v48.size.height;
    CGPathRelease(v39);
    if (floating)
    {
      [GQHTextBox handleShapeText:shape boundsRect:1 floating:state state:-x, -y, v21, v23];
    }

    else
    {
      [GQHTextBox handleShapeText:shape boundsRect:0 floating:state state:(v40 - v21) * 0.5 - x, (v41 - v23) * 0.5 - y, v21, v23];
      [v25 endElement];
      [v25 endElement];
    }

    [state leaveGraphicObject];
  }

  return 1;
}

+ (void)mapPath:(id)path shapeContext:(id)context state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    pathStr = [path pathStr];

    [context setBezierPath:pathStr state:state];
  }
}

@end