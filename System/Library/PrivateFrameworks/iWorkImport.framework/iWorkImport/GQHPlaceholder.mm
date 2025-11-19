@interface GQHPlaceholder
+ (int)handlePlaceholder:(id)a3 state:(id)a4;
@end

@implementation GQHPlaceholder

+ (int)handlePlaceholder:(id)a3 state:(id)a4
{
  if (![a3 isVisible])
  {
    return 1;
  }

  v6 = [a4 htmlDoc];
  v7 = [a3 placeholderStyle];
  v31 = 0;
  if (([v7 hasValueForObjectProperty:81 value:&v31] & 1) == 0)
  {
    v31 = [a3 geometry];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 valueForObjectProperty:73];
        v10 = [v8 valueForObjectProperty:45];
        v29 = 0;
        v30 = 0;
        goto LABEL_16;
      }

      v29 = 0;
      v30 = 0;
      goto LABEL_15;
    }
  }

  v8 = [objc_msgSend(a3 "layoutFrame")];
  v9 = [objc_msgSend(a3 "layoutFrame")];
  v29 = [objc_msgSend(a3 "layoutFrame")];
  v30 = v9;
  if (!v8)
  {
    v12 = [v9 body];
    if (CFArrayGetCount(v12) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [ValueAtIndex layoutStyle];
        goto LABEL_7;
      }
    }

LABEL_15:
    v10 = 0;
    v8 = 0;
    goto LABEL_16;
  }

LABEL_7:
  v10 = 0;
LABEL_16:
  [a4 enterGraphicObject];
  [v6 startElement:"div"];
  v14 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v14 addAttribute:off_9CF18 value:off_9CFA0];
  [v31 position];
  [GQHBounds mapPosition:v7 srcGraphicStyle:v14 style:a4 state:?];
  [(GQHStyle *)v14 setStyleOnCurrentNode:a4];

  v15 = objc_alloc_init(GQHStyle);
  [v6 startElement:"div"];
  [v31 size];
  v17 = v16;
  v19 = v18;
  [v31 angle];
  LODWORD(v21) = v20;
  [GQHBounds mapSize:v7 angle:v15 srcGraphicStyle:a4 style:v17 state:v19, v21];
  [GQHGraphicStyle mapStyle:v7 style:v15 state:a4];
  if (v8)
  {
    [GQHTextBox mapStyle:v8 style:v15 state:a4];
    [GQHTextBox mapLayout:v8 style:v15 state:a4];
    [v31 size];
    [GQHTextBox mapScaledImageFill:v8 style:v15 size:?];
  }

  if (v10)
  {
    [GQHTextBox mapStyle:v10 style:v15 state:a4];
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  v23 = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  CFArrayAppendValue(Mutable, v7);
  v24 = objc_opt_class();
  CFArrayAppendValue(v23, v24);
  if (v8)
  {
    CFArrayAppendValue(Mutable, v8);
    v25 = objc_opt_class();
    CFArrayAppendValue(v23, v25);
  }

  if (v10)
  {
    CFArrayAppendValue(Mutable, v10);
    v26 = objc_opt_class();
    CFArrayAppendValue(v23, v26);
  }

  [(GQHStyle *)v15 setStyleOnCurrentNode:a4 mappingBaseStyleClasses:Mutable baseClassTypes:v23];

  CFRelease(v23);
  CFRelease(Mutable);
  if (v30)
  {
    if (v29)
    {
      [a4 setTextScale:?];
    }

    v11 = [GQHTextBox handleLayoutStorage:v30 state:a4];
    [a4 invalidateTextScale];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", [a4 currentSlide]);
      [v6 addContent:v27];
      CFRelease(v27);
    }

    v11 = 1;
  }

  [v6 endElement];
  [v6 endElement];
  [a4 leaveGraphicObject];
  return v11;
}

@end