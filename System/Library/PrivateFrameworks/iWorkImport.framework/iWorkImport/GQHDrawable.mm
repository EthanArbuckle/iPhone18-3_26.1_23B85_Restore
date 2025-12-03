@interface GQHDrawable
+ (int)handleDrawable:(id)drawable state:(id)state;
+ (int)handleFloatingDrawable:(id)drawable htmlState:(id)state;
+ (int)handleInlineDrawable:(id)drawable htmlState:(id)state;
+ (void)aboutToGenerateDrawable:(id)drawable htmlState:(id)state;
+ (void)doneGeneratingDrawable:(id)drawable htmlState:(id)state;
@end

@implementation GQHDrawable

+ (int)handleDrawable:(id)drawable state:(id)state
{
  generatorState = [state generatorState];

  return [self handleFloatingDrawable:drawable htmlState:generatorState];
}

+ (void)aboutToGenerateDrawable:(id)drawable htmlState:(id)state
{
  if ([objc_msgSend(state "processorState")])
  {
    v6 = [objc_msgSend(state "processorState")];
    [v6 thumbnailSize];
    v8 = v7;
    v10 = v9;
    [objc_msgSend(drawable "geometry")];
    v12 = v11;
    v14 = v13;
    [objc_msgSend(drawable "geometry")];
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

  if (([drawable hasPagesOrder] & 1) != 0 || objc_msgSend(state, "drawablesNeedCssZOrdering"))
  {
    htmlDoc = [state htmlDoc];
    [htmlDoc startElement:"div"];
    v18 = [state cssZOrderClassForDrawable:drawable];

    [htmlDoc setAttribute:"class" cfStringValue:v18];
  }
}

+ (void)doneGeneratingDrawable:(id)drawable htmlState:(id)state
{
  if (([drawable hasPagesOrder] & 1) != 0 || objc_msgSend(state, "drawablesNeedCssZOrdering"))
  {
    htmlDoc = [state htmlDoc];

    [htmlDoc endElementWithExpectedName:"div"];
  }
}

+ (int)handleFloatingDrawable:(id)drawable htmlState:(id)state
{
  htmlDoc = [state htmlDoc];
  urlString = [drawable urlString];
  if ([state shouldMapLinkWithUrl:urlString])
  {
    v9 = [GQHUtils createHtmlHrefForLinkUri:urlString state:state];
    if (v9)
    {
      [htmlDoc startElement:"a"];
      [htmlDoc setAttribute:"href" cfStringValue:v9];
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
    [self aboutToGenerateDrawable:drawable htmlState:state];
    v11 = [GQHImage handleFloatingMedia:drawable state:state];
LABEL_12:
    v12 = v11;
    [self doneGeneratingDrawable:drawable htmlState:state];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self aboutToGenerateDrawable:drawable htmlState:state];
    v11 = [GQHShape handleShape:drawable isFloating:1 state:state];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self aboutToGenerateDrawable:drawable htmlState:state];
    v11 = [GQHLine handleFloatingLine:drawable state:state];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self aboutToGenerateDrawable:drawable htmlState:state];
    v12 = [GQHPlaceholder handlePlaceholder:drawable state:state];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self aboutToGenerateDrawable:drawable htmlState:state];
    [htmlDoc startElement:?];
    [htmlDoc startElement:?];
    geometry = [drawable geometry];
    v22 = objc_alloc_init(GQHStyle);
    [(GQHStyle *)v22 addAttribute:off_9CF18 value:off_9CFA0];
    [geometry nonrotatedPosition];
    [GQHBounds mapPosition:0 srcGraphicStyle:v22 style:state state:?];
    [geometry size];
    v24 = v23;
    v26 = v25;
    [geometry angle];
    v28 = v27;
    horizontalFlip = [geometry horizontalFlip];
    verticalFlip = [geometry verticalFlip];
    LODWORD(v31) = v28;
    [GQHBounds mapSize:horizontalFlip angle:verticalFlip flipX:0 flipY:v22 srcGraphicStyle:state style:v24 state:v26, v31];
    +[GQHGraphicStyle mapExternalWrap:style:state:](GQHGraphicStyle, "mapExternalWrap:style:state:", [drawable externalTextWrap], v22, state);
    [(GQHStyle *)v22 setStyleOnCurrentNode:state];

    drawables = [drawable drawables];
    Count = CFArrayGetCount(drawables);
    v34 = Count;
    if (Count)
    {
      v35 = 0;
      do
      {
        [self handleFloatingDrawable:CFArrayGetValueAtIndex(drawables htmlState:{v35++), state}];
      }

      while (v34 != v35);
    }

    [htmlDoc endElementWithExpectedName:"div"];
    [htmlDoc endElementWithExpectedName:"span"];
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self aboutToGenerateDrawable:drawable htmlState:state];
    v11 = [GQHImage handleFloatingWebView:drawable state:state];
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
    [self aboutToGenerateDrawable:drawable htmlState:state];
    v11 = [GQHChart handleFloatingChart:drawable state:state];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self aboutToGenerateDrawable:drawable htmlState:state];
    [GQHChartLegend handleFloatingLegend:drawable state:state];
LABEL_25:
    [self doneGeneratingDrawable:drawable htmlState:state];
LABEL_26:
    v12 = 1;
    goto LABEL_13;
  }

  v12 = 3;
LABEL_13:
  if ((v10 & 1) == 0)
  {
    [htmlDoc endElementWithExpectedName:"a"];
    CFRelease(v9);
  }

  if (v12 == 1)
  {
    geometry2 = [drawable geometry];
    [geometry2 position];
    v15 = v14;
    v17 = v16;
    [geometry2 size];
    [state addedDrawableWithBounds:{v15, v17, v18, v19}];
  }

  return v12;
}

+ (int)handleInlineDrawable:(id)drawable htmlState:(id)state
{
  htmlDoc = [state htmlDoc];
  urlString = [drawable urlString];
  if (![state shouldMapLinkWithUrl:urlString])
  {
    v9 = 0;
    goto LABEL_5;
  }

  v9 = [GQHUtils createHtmlHrefForLinkUri:urlString state:state];
  if (!v9)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  [htmlDoc startElement:"a"];
  [htmlDoc setAttribute:"href" cfStringValue:v9];
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
    externalTextWrap = [objc_msgSend(drawable "graphicStyle")];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    externalTextWrap = [drawable externalTextWrap];
  }

  v12 = externalTextWrap;
  if (externalTextWrap && [externalTextWrap inlineWrapEnabled] && objc_msgSend(v12, "attachmentWrapType") == 1)
  {
    v13 = objc_alloc_init(GQHStyle);
    [htmlDoc startElement:"span"];
    [(GQHStyle *)v13 addAttribute:off_9CE60 value:off_9D000];
    [(GQHStyle *)v13 addAttribute:off_9CF68 value:@"100%"];
    [(GQHStyle *)v13 setStyleOnCurrentNode:state];

    v14 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
LABEL_17:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [GQHImage handleInlineMedia:drawable state:state];
LABEL_21:
    v16 = v15;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [GQHShape handleShape:drawable isFloating:0 state:state];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self aboutToGenerateDrawable:drawable htmlState:state];
    v18 = [GQHLine handleInlineLine:drawable state:state];
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [drawable walkTableWithGenerator:objc_opt_class() state:{objc_msgSend(state, "processorState")}];
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [GQHImage handleInlineWebView:drawable state:state];
      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self aboutToGenerateDrawable:drawable htmlState:state];
        [GQHChartLegend handleInlineLegend:drawable state:state];
        [self doneGeneratingDrawable:drawable htmlState:state];
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

    [self aboutToGenerateDrawable:drawable htmlState:state];
    v18 = [GQHChart handleInlineChart:drawable state:state];
LABEL_29:
    v16 = v18;
    [self doneGeneratingDrawable:drawable htmlState:state];
    goto LABEL_22;
  }

  if ((v14 & 1) == 0)
  {
    [htmlDoc startElement:"span"];
  }

  [htmlDoc startElement:"div"];
  geometry = [drawable geometry];
  v20 = objc_alloc_init(GQHStyle);
  [geometry size];
  v22 = v21;
  v24 = v23;
  [geometry angle];
  v26 = v25;
  horizontalFlip = [geometry horizontalFlip];
  verticalFlip = [geometry verticalFlip];
  LODWORD(v29) = v26;
  [GQHBounds mapSize:horizontalFlip angle:verticalFlip flipX:0 flipY:v20 srcGraphicStyle:state style:v22 state:v24, v29];
  [(GQHStyle *)v20 addAttribute:off_9CF18 value:off_9D040];
  [(GQHStyle *)v20 setStyleOnCurrentNode:state];

  drawables = [drawable drawables];
  Count = CFArrayGetCount(drawables);
  v32 = Count;
  if (Count)
  {
    v33 = 0;
    do
    {
      [self handleFloatingDrawable:CFArrayGetValueAtIndex(drawables htmlState:{v33++), state}];
    }

    while (v32 != v33);
  }

  [htmlDoc endElement];
  if ((v14 & 1) == 0)
  {
    [htmlDoc endElement];
    v16 = 1;
    if (v10)
    {
      return v16;
    }

    goto LABEL_25;
  }

  v16 = 1;
LABEL_23:
  [htmlDoc endElementWithExpectedName:"span"];
LABEL_24:
  if ((v10 & 1) == 0)
  {
LABEL_25:
    [htmlDoc endElement];
    CFRelease(v9);
  }

  return v16;
}

@end