@interface GQHDrawable
+ (int)handleDrawable:(id)a3 state:(id)a4;
+ (int)handleFloatingDrawable:(id)a3 htmlState:(id)a4;
+ (int)handleInlineDrawable:(id)a3 htmlState:(id)a4;
+ (void)aboutToGenerateDrawable:(id)a3 htmlState:(id)a4;
+ (void)doneGeneratingDrawable:(id)a3 htmlState:(id)a4;
@end

@implementation GQHDrawable

+ (int)handleDrawable:(id)a3 state:(id)a4
{
  v6 = [a4 generatorState];

  return [a1 handleFloatingDrawable:a3 htmlState:v6];
}

+ (void)aboutToGenerateDrawable:(id)a3 htmlState:(id)a4
{
  if ([objc_msgSend(a4 "processorState")])
  {
    v6 = [objc_msgSend(a4 "processorState")];
    [v6 thumbnailSize];
    v8 = v7;
    v10 = v9;
    [objc_msgSend(a3 "geometry")];
    v12 = v11;
    v14 = v13;
    [objc_msgSend(a3 "geometry")];
    v22.size.width = v15 + 10.0;
    v22.size.height = v16 + 10.0;
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v8;
    v20.size.height = v10;
    v22.origin.x = v12;
    v22.origin.y = v14;
    v21 = NSUnionRect(v20, v22);
    [v6 setThumbnailSize:{v21.size.width, v21.size.height}];
  }

  if (([a3 hasPagesOrder] & 1) != 0 || objc_msgSend(a4, "drawablesNeedCssZOrdering"))
  {
    v17 = [a4 htmlDoc];
    [v17 startElement:"div"];
    v18 = [a4 cssZOrderClassForDrawable:a3];

    [v17 setAttribute:"class" cfStringValue:v18];
  }
}

+ (void)doneGeneratingDrawable:(id)a3 htmlState:(id)a4
{
  if (([a3 hasPagesOrder] & 1) != 0 || objc_msgSend(a4, "drawablesNeedCssZOrdering"))
  {
    v5 = [a4 htmlDoc];

    [v5 endElementWithExpectedName:"div"];
  }
}

+ (int)handleFloatingDrawable:(id)a3 htmlState:(id)a4
{
  v7 = [a4 htmlDoc];
  v8 = [a3 urlString];
  if ([a4 shouldMapLinkWithUrl:v8])
  {
    v9 = [GQHUtils createHtmlHrefForLinkUri:v8 state:a4];
    if (v9)
    {
      [v7 startElement:"a"];
      [v7 setAttribute:"href" cfStringValue:v9];
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 1;
LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v11 = [GQHImage handleFloatingMedia:a3 state:a4];
LABEL_12:
    v12 = v11;
    [a1 doneGeneratingDrawable:a3 htmlState:a4];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v11 = [GQHShape handleShape:a3 isFloating:1 state:a4];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v11 = [GQHLine handleFloatingLine:a3 state:a4];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v12 = [GQHPlaceholder handlePlaceholder:a3 state:a4];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    [v7 startElement:?];
    [v7 startElement:?];
    v21 = [a3 geometry];
    v22 = objc_alloc_init(GQHStyle);
    [(GQHStyle *)v22 addAttribute:off_9CF18 value:off_9CFA0];
    [v21 nonrotatedPosition];
    [GQHBounds mapPosition:0 srcGraphicStyle:v22 style:a4 state:?];
    [v21 size];
    v24 = v23;
    v26 = v25;
    [v21 angle];
    v28 = v27;
    v29 = [v21 horizontalFlip];
    v30 = [v21 verticalFlip];
    LODWORD(v31) = v28;
    [GQHBounds mapSize:v29 angle:v30 flipX:0 flipY:v22 srcGraphicStyle:a4 style:v24 state:v26, v31];
    +[GQHGraphicStyle mapExternalWrap:style:state:](GQHGraphicStyle, "mapExternalWrap:style:state:", [a3 externalTextWrap], v22, a4);
    [(GQHStyle *)v22 setStyleOnCurrentNode:a4];

    v32 = [a3 drawables];
    Count = CFArrayGetCount(v32);
    v34 = Count;
    if (Count)
    {
      v35 = 0;
      do
      {
        [a1 handleFloatingDrawable:CFArrayGetValueAtIndex(v32 htmlState:{v35++), a4}];
      }

      while (v34 != v35);
    }

    [v7 endElementWithExpectedName:"div"];
    [v7 endElementWithExpectedName:"span"];
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v11 = [GQHImage handleFloatingWebView:a3 state:a4];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v11 = [GQHChart handleFloatingChart:a3 state:a4];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    [GQHChartLegend handleFloatingLegend:a3 state:a4];
LABEL_25:
    [a1 doneGeneratingDrawable:a3 htmlState:a4];
LABEL_26:
    v12 = 1;
    goto LABEL_13;
  }

  v12 = 3;
LABEL_13:
  if ((v10 & 1) == 0)
  {
    [v7 endElementWithExpectedName:"a"];
    CFRelease(v9);
  }

  if (v12 == 1)
  {
    v13 = [a3 geometry];
    [v13 position];
    v15 = v14;
    v17 = v16;
    [v13 size];
    [a4 addedDrawableWithBounds:{v15, v17, v18, v19}];
  }

  return v12;
}

+ (int)handleInlineDrawable:(id)a3 htmlState:(id)a4
{
  v7 = [a4 htmlDoc];
  v8 = [a3 urlString];
  if (![a4 shouldMapLinkWithUrl:v8])
  {
    v9 = 0;
    goto LABEL_5;
  }

  v9 = [GQHUtils createHtmlHrefForLinkUri:v8 state:a4];
  if (!v9)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  [v7 startElement:"a"];
  [v7 setAttribute:"href" cfStringValue:v9];
  v10 = 0;
LABEL_6:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_msgSend(a3 "graphicStyle")];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v11 = [a3 externalTextWrap];
  }

  v12 = v11;
  if (v11 && [v11 inlineWrapEnabled] && objc_msgSend(v12, "attachmentWrapType") == 1)
  {
    v13 = objc_alloc_init(GQHStyle);
    [v7 startElement:"span"];
    [(GQHStyle *)v13 addAttribute:off_9CE60 value:off_9D000];
    [(GQHStyle *)v13 addAttribute:off_9CF68 value:@"100%"];
    [(GQHStyle *)v13 setStyleOnCurrentNode:a4];

    v14 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
LABEL_17:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [GQHImage handleInlineMedia:a3 state:a4];
LABEL_21:
    v16 = v15;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [GQHShape handleShape:a3 isFloating:0 state:a4];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v18 = [GQHLine handleInlineLine:a3 state:a4];
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [a3 walkTableWithGenerator:objc_opt_class() state:{objc_msgSend(a4, "processorState")}];
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [GQHImage handleInlineWebView:a3 state:a4];
      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 aboutToGenerateDrawable:a3 htmlState:a4];
        [GQHChartLegend handleInlineLegend:a3 state:a4];
        [a1 doneGeneratingDrawable:a3 htmlState:a4];
        v16 = 1;
      }

      else
      {
        v16 = 3;
      }

LABEL_22:
      if (!v14)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    [a1 aboutToGenerateDrawable:a3 htmlState:a4];
    v18 = [GQHChart handleInlineChart:a3 state:a4];
LABEL_29:
    v16 = v18;
    [a1 doneGeneratingDrawable:a3 htmlState:a4];
    goto LABEL_22;
  }

  if ((v14 & 1) == 0)
  {
    [v7 startElement:"span"];
  }

  [v7 startElement:"div"];
  v19 = [a3 geometry];
  v20 = objc_alloc_init(GQHStyle);
  [v19 size];
  v22 = v21;
  v24 = v23;
  [v19 angle];
  v26 = v25;
  v27 = [v19 horizontalFlip];
  v28 = [v19 verticalFlip];
  LODWORD(v29) = v26;
  [GQHBounds mapSize:v27 angle:v28 flipX:0 flipY:v20 srcGraphicStyle:a4 style:v22 state:v24, v29];
  [(GQHStyle *)v20 addAttribute:off_9CF18 value:off_9D040];
  [(GQHStyle *)v20 setStyleOnCurrentNode:a4];

  v30 = [a3 drawables];
  Count = CFArrayGetCount(v30);
  v32 = Count;
  if (Count)
  {
    v33 = 0;
    do
    {
      [a1 handleFloatingDrawable:CFArrayGetValueAtIndex(v30 htmlState:{v33++), a4}];
    }

    while (v32 != v33);
  }

  [v7 endElement];
  if ((v14 & 1) == 0)
  {
    [v7 endElement];
    v16 = 1;
    if (v10)
    {
      return v16;
    }

    goto LABEL_25;
  }

  v16 = 1;
LABEL_23:
  [v7 endElementWithExpectedName:"span"];
LABEL_24:
  if ((v10 & 1) == 0)
  {
LABEL_25:
    [v7 endElement];
    CFRelease(v9);
  }

  return v16;
}

@end