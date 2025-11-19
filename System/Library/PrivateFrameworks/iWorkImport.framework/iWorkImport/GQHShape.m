@interface GQHShape
+ (int)handleShape:(id)a3 isFloating:(BOOL)a4 state:(id)a5;
+ (void)mapPath:(id)a3 shapeContext:(id)a4 state:(id)a5;
@end

@implementation GQHShape

+ (int)handleShape:(id)a3 isFloating:(BOOL)a4 state:(id)a5
{
  v8 = [objc_msgSend(a3 "path")];
  if (v8)
  {
    v9 = v8;
    [a5 enterGraphicObject];
    v10 = [a5 shapeContext];
    v11 = [a3 geometry];
    v12 = [a3 graphicStyle];
    [v11 angle];
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
    v24 = [a5 htmlDoc];
    v25 = v24;
    if (a4)
    {
      v26 = [a5 createUniqueShapeId:0];
      [v10 createShapeWithId:v26 path:objc_msgSend(a3 geometry:"path") graphicStyle:v11 isFloating:v12 state:{1, a5}];
      CFRelease(v26);
    }

    else
    {
      v43 = v10;
      [v24 startElement:"span"];
      v44 = 0;
      if ([v12 hasValueForObjectProperty:72 value:&v44] && v44)
      {
        v27 = objc_alloc_init(GQHStyle);
        [GQHGraphicStyle mapExternalWrap:v44 style:v27 state:a5];
        [(GQHStyle *)v27 setStyleOnCurrentNode:a5];
      }

      [v25 startElement:"div"];
      v28 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v28 addAttribute:off_9CE60 value:off_9D000];
      [(GQHStyle *)v28 addAttribute:off_9CEE8 value:off_9CFE8];
      [GQHBounds mapSize:0 angle:v28 srcGraphicStyle:a5 style:width state:height, 0.0];
      [(GQHStyle *)v28 setStyleOnCurrentNode:a5];

      [v25 startElement:"div"];
      v29 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v29 addAttribute:off_9CF18 value:off_9CFA0];
      [GQHBounds mapSize:0 angle:v29 srcGraphicStyle:a5 style:width state:height, 0.0];
      [(GQHStyle *)v29 setStyleOnCurrentNode:a5];

      v30 = [a5 createUniqueShapeId:0];
      [v43 createShapeWithId:v30 path:objc_msgSend(a3 geometry:"path") graphicStyle:v11 isFloating:v12 state:{0, a5}];
      CFRelease(v30);
      [v25 endElement];
    }

    [v11 position];
    v32 = v31;
    [v11 position];
    v34 = v33;
    [v11 size];
    v36 = v35;
    [v11 size];
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
    if (a4)
    {
      [GQHTextBox handleShapeText:a3 boundsRect:1 floating:a5 state:-x, -y, v21, v23];
    }

    else
    {
      [GQHTextBox handleShapeText:a3 boundsRect:0 floating:a5 state:(v40 - v21) * 0.5 - x, (v41 - v23) * 0.5 - y, v21, v23];
      [v25 endElement];
      [v25 endElement];
    }

    [a5 leaveGraphicObject];
  }

  return 1;
}

+ (void)mapPath:(id)a3 shapeContext:(id)a4 state:(id)a5
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [a3 pathStr];

    [a4 setBezierPath:v8 state:a5];
  }
}

@end