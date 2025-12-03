@interface GQHPlaceholder
+ (int)handlePlaceholder:(id)placeholder state:(id)state;
@end

@implementation GQHPlaceholder

+ (int)handlePlaceholder:(id)placeholder state:(id)state
{
  if (![placeholder isVisible])
  {
    return 1;
  }

  htmlDoc = [state htmlDoc];
  placeholderStyle = [placeholder placeholderStyle];
  geometry = 0;
  if (([placeholderStyle hasValueForObjectProperty:81 value:&geometry] & 1) == 0)
  {
    geometry = [placeholder geometry];
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
        layoutStyle = [placeholderStyle valueForObjectProperty:73];
        v10 = [layoutStyle valueForObjectProperty:45];
        v29 = 0;
        v30 = 0;
        goto LABEL_16;
      }

      v29 = 0;
      v30 = 0;
      goto LABEL_15;
    }
  }

  layoutStyle = [objc_msgSend(placeholder "layoutFrame")];
  v9 = [objc_msgSend(placeholder "layoutFrame")];
  v29 = [objc_msgSend(placeholder "layoutFrame")];
  v30 = v9;
  if (!layoutStyle)
  {
    body = [v9 body];
    if (CFArrayGetCount(body) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(body, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        layoutStyle = [ValueAtIndex layoutStyle];
        goto LABEL_7;
      }
    }

LABEL_15:
    v10 = 0;
    layoutStyle = 0;
    goto LABEL_16;
  }

LABEL_7:
  v10 = 0;
LABEL_16:
  [state enterGraphicObject];
  [htmlDoc startElement:"div"];
  v14 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v14 addAttribute:off_9CF18 value:off_9CFA0];
  [geometry position];
  [GQHBounds mapPosition:placeholderStyle srcGraphicStyle:v14 style:state state:?];
  [(GQHStyle *)v14 setStyleOnCurrentNode:state];

  v15 = objc_alloc_init(GQHStyle);
  [htmlDoc startElement:"div"];
  [geometry size];
  v17 = v16;
  v19 = v18;
  [geometry angle];
  LODWORD(v21) = v20;
  [GQHBounds mapSize:placeholderStyle angle:v15 srcGraphicStyle:state style:v17 state:v19, v21];
  [GQHGraphicStyle mapStyle:placeholderStyle style:v15 state:state];
  if (layoutStyle)
  {
    [GQHTextBox mapStyle:layoutStyle style:v15 state:state];
    [GQHTextBox mapLayout:layoutStyle style:v15 state:state];
    [geometry size];
    [GQHTextBox mapScaledImageFill:layoutStyle style:v15 size:?];
  }

  if (v10)
  {
    [GQHTextBox mapStyle:v10 style:v15 state:state];
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  v23 = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  CFArrayAppendValue(Mutable, placeholderStyle);
  v24 = objc_opt_class();
  CFArrayAppendValue(v23, v24);
  if (layoutStyle)
  {
    CFArrayAppendValue(Mutable, layoutStyle);
    v25 = objc_opt_class();
    CFArrayAppendValue(v23, v25);
  }

  if (v10)
  {
    CFArrayAppendValue(Mutable, v10);
    v26 = objc_opt_class();
    CFArrayAppendValue(v23, v26);
  }

  [(GQHStyle *)v15 setStyleOnCurrentNode:state mappingBaseStyleClasses:Mutable baseClassTypes:v23];

  CFRelease(v23);
  CFRelease(Mutable);
  if (v30)
  {
    if (v29)
    {
      [state setTextScale:?];
    }

    v11 = [GQHTextBox handleLayoutStorage:v30 state:state];
    [state invalidateTextScale];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", [state currentSlide]);
      [htmlDoc addContent:v27];
      CFRelease(v27);
    }

    v11 = 1;
  }

  [htmlDoc endElement];
  [htmlDoc endElement];
  [state leaveGraphicObject];
  return v11;
}

@end