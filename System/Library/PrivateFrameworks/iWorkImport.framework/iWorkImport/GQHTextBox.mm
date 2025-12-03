@interface GQHTextBox
+ (BOOL)outputWrapSandbagsForFrame:(CGRect)frame columnCount:(int)count drawable:(id)drawable state:(id)state isPageFrame:(BOOL)pageFrame;
+ (BOOL)styleNeedsImageFillMapping:(id)mapping;
+ (int)handleLayoutStorage:(id)storage state:(id)state;
+ (int)handleShapeText:(id)text boundsRect:(CGRect)rect floating:(BOOL)floating state:(id)state;
+ (int)outputInnerSandbagsForFrame:(CGRect)frame drawable:(id)drawable state:(id)state;
+ (int)outputInnerSandbagsForShape:(id)shape layoutStyle:(id)style state:(id)state;
+ (int)outputWrapSandbagsForShape:(id)shape layoutStyle:(id)style state:(id)state;
+ (void)createExternalWrapSandbagStyles:(id)styles;
+ (void)mapLayout:(id)layout style:(id)style state:(id)state;
+ (void)mapScaledImageFill:(id)fill style:(id)style size:(CGSize)size;
+ (void)mapStyle:(id)style style:(id)a4 state:(id)state;
+ (void)outputSandbag:(id)sandbag state:(id)state;
@end

@implementation GQHTextBox

+ (void)mapStyle:(id)style style:(id)a4 state:(id)state
{
  v7 = 0;
  if ([style overridesIntProperty:50 value:&v7] && (objc_msgSend(state, "multiColumned") & 1) == 0)
  {
    [a4 addAttribute:off_9CE60 value:@"table-cell"];
    if (v7 <= 3)
    {
      [a4 addAttribute:off_9CF58 value:*off_80828[v7]];
    }
  }
}

+ (int)handleShapeText:(id)text boundsRect:(CGRect)rect floating:(BOOL)floating state:(id)state
{
  floatingCopy = floating;
  y = rect.origin.y;
  x = rect.origin.x;
  htmlDoc = [state htmlDoc];
  geometry = [text geometry];
  layoutFrame = [text layoutFrame];
  layoutStyle = [layoutFrame layoutStyle];
  if (!layoutStyle)
  {
    v16 = [objc_msgSend(layoutFrame "storage")];
    if (v16 && (v17 = v16, CFArrayGetCount(v16) == 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v17, 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      layoutStyle = [ValueAtIndex layoutStyle];
    }

    else
    {
      layoutStyle = 0;
    }
  }

  v51 = htmlDoc;
  [htmlDoc startElement:{"div", layoutFrame}];
  v19 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v19 addAttribute:off_9CF18 value:off_9CFA0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GQHStyle *)v19 addAttribute:off_9CEE8 value:off_9CFE8];
    [(GQHStyle *)v19 addAttribute:off_9CF70 value:off_9CFB8];
  }

  if (floatingCopy)
  {
    [geometry position];
    v21 = x + v20;
    [geometry position];
    +[GQHBounds mapPosition:srcGraphicStyle:style:state:](GQHBounds, "mapPosition:srcGraphicStyle:style:state:", [text graphicStyle], v19, state, v21, y + v22);
    [geometry size];
    v24 = v23;
    v26 = v25;
    [geometry angle];
    LODWORD(v28) = v27;
    [GQHBounds mapSize:0 angle:v19 srcGraphicStyle:state style:v24 state:v26, v28];
    [GQHBounds setTransformOriginToZeroInStyle:v19];
  }

  else
  {
    [geometry size];
    v30 = v29;
    v32 = v31;
    [geometry angle];
    LODWORD(v34) = v33;
    [GQHBounds mapSize:0 angle:v19 srcGraphicStyle:state style:v30 state:v32, v34];
  }

  [self mapStyle:layoutStyle style:v19 state:state];
  [self mapLayout:layoutStyle style:v19 state:state];
  if (floatingCopy)
  {
    if (([text hasPagesOrder] & 1) != 0 || objc_msgSend(state, "drawablesNeedCssZOrdering"))
    {
      -[GQHStyle addClass:](v19, "addClass:", [state cssZOrderClassForDrawable:text]);
    }

    [(GQHStyle *)v19 setStyleOnCurrentNode:state mappingBaseStyleClass:layoutStyle baseClassType:objc_opt_class()];

    v53 = 0;
    v35 = 0;
    v36 = v51;
    if ([layoutStyle hasValueForIntProperty:50 value:&v53])
    {
      v37 = objc_alloc_init(GQHStyle);
      [v51 startElement:"div"];
      [geometry size];
      v39 = v38;
      [geometry size];
      v41 = v40;
      v52 = 0;
      if ([layoutStyle hasValueForObjectProperty:47 value:&v52])
      {
        [v52 left];
        v43 = v42;
        [v52 right];
        v41 = v41 - fminf(v43 + v44, 4.0);
        [v52 top];
        v46 = v45;
        [v52 bottom];
        v39 = v39 - fminf(v46 + v47, 4.0);
      }

      [(GQHStyle *)v37 addAttribute:off_9CE98 pxValue:llroundf(v39)];
      [(GQHStyle *)v37 addAttribute:off_9CF68 pxValue:llroundf(v41)];
      [(GQHStyle *)v37 addAttribute:off_9CE60 value:@"table-cell"];
      if (v53 <= 3)
      {
        [(GQHStyle *)v37 addAttribute:off_9CF58 value:*off_80828[v53]];
      }

      [(GQHStyle *)v37 setStyleOnCurrentNode:state];

      v35 = 1;
    }
  }

  else
  {
    [(GQHStyle *)v19 setStyleOnCurrentNode:state mappingBaseStyleClass:layoutStyle baseClassType:objc_opt_class()];

    v35 = 0;
    v53 = 0;
    v36 = v51;
  }

  [self outputInnerSandbagsForShape:text layoutStyle:layoutStyle state:state];
  v48 = [self outputWrapSandbagsForShape:text layoutStyle:layoutStyle state:state];
  if (v48 == 1)
  {
    v48 = [self handleLayoutStorage:objc_msgSend(v50 state:{"storage"), state}];
  }

  if (v35)
  {
    [v36 endElementWithExpectedName:"div"];
  }

  [v36 endElementWithExpectedName:"div"];
  return v48;
}

+ (int)handleLayoutStorage:(id)storage state:(id)state
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  body = [storage body];
  if (!body || (v8 = body, CFArrayGetCount(body) == 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v8, 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = [ValueAtIndex children]) == 0)
  {
    [state setParagraphCount:0];
    goto LABEL_16;
  }

  Count = CFArrayGetCount(v8);
  [state setParagraphCount:Count];
  if (!Count)
  {
LABEL_16:
    v14 = 1;
    goto LABEL_18;
  }

  v11 = 0;
  v12 = Count;
  while (1)
  {
    [state setParagraphIndex:v11];
    v13 = CFArrayGetValueAtIndex(v8, v11);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if ([state useOutline] && (objc_msgSend(v13, "isHidden") & 1) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = +[GQHParagraph handleParagraph:state:bulletStates:isMultiColumn:](GQHParagraph, "handleParagraph:state:bulletStates:isMultiColumn:", v13, state, Mutable, [state multiColumned]);
    }

    if (++v11 >= v12 || v14 != 1)
    {
      goto LABEL_18;
    }
  }

  v14 = 3;
LABEL_18:
  [state setParagraphCount:0];
  [state setParagraphIndex:0];
  CFRelease(Mutable);
  return v14;
}

+ (void)mapLayout:(id)layout style:(id)style state:(id)state
{
  v43 = 0;
  v44 = 0;
  if ([style getAttribute:off_9CF68 intValue:&v43 + 4] && objc_msgSend(style, "getAttribute:intValue:", off_9CE98, &v43))
  {
    if ([layout hasValueForObjectProperty:49 value:&v44])
    {
      columns = [v44 columns];
      equalColumns = [v44 equalColumns];
      Count = CFArrayGetCount(columns);
      v11 = Count;
      if (Count >= 2)
      {
        if (equalColumns)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(columns, 0);
          v13 = 1.0;
          if ([ValueAtIndex hasSpacing])
          {
            [ValueAtIndex spacing];
            v13 = v14;
          }
        }

        else
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v39 = Count;
          v18 = Count & 0x7FFFFFFF;
          do
          {
            v19 = CFArrayGetValueAtIndex(columns, v15);
            if ([v19 hasSpacing])
            {
              ++v16;
              [v19 spacing];
              v17 = (v20 + v17);
            }

            ++v15;
          }

          while (v18 != v15);
          if (v16)
          {
            v13 = (v17 / v16);
          }

          else
          {
            v13 = 1.0;
          }

          v11 = v39;
        }

        [state setMultiColumned:{1, v39}];
        [style addAttribute:@"-webkit-column-count" intValue:v11];
        [style addAttribute:@"-webkit-column-gap" pxValue:llroundf(v13 * SHIDWORD(v43))];
        [style addAttribute:off_9CEE8 value:off_9CFE8];
      }
    }

    v42 = 0;
    if ([layout hasValueForObjectProperty:47 value:&v42])
    {
      [v42 top];
      v22 = v21;
      [state scale];
      v24 = v23 * v22;
      [v42 bottom];
      v26 = v25;
      [state scale];
      v28 = v27 * v26;
      [v42 left];
      v30 = v29;
      [state scale];
      v32 = v31 * v30;
      [v42 right];
      v34 = v33;
      [state scale];
      v36 = v35 * v34;
      if (v32 > 2.0)
      {
        v32 = 2.0;
      }

      if (v36 <= 2.0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 2.0;
      }

      if (v24 > 2.0)
      {
        v24 = 2.0;
      }

      if (v28 > 2.0)
      {
        v28 = 2.0;
      }

      v38 = objc_alloc_init(GQHTrbl);
      [(GQHTrbl *)v38 setTop:v24 right:v37 bottom:v28 left:v32];
      [style addAttribute:off_9CEF0 trblValue:v38];

      [style addAttribute:off_9CF68 pxValue:((SHIDWORD(v43) - v32) - v37)];
      theString1 = 0;
      v40 = 0;
      if (![layout hasValueForIntProperty:50 value:&v40] || (objc_msgSend(state, "multiColumned") & 1) != 0 || objc_msgSend(style, "getAttribute:value:", off_9CF18, &theString1) && CFStringCompare(theString1, off_9CFA0, 1uLL) == kCFCompareEqualTo)
      {
        [style addAttribute:off_9CE98 pxValue:((v43 - v24) - v28)];
      }
    }
  }
}

+ (BOOL)styleNeedsImageFillMapping:(id)mapping
{
  v5 = 0;
  v3 = [mapping hasValueForObjectProperty:67 value:&v5];
  if (v3)
  {
    objc_opt_class();
    LOBYTE(v3) = objc_opt_isKindOfClass();
  }

  return v3 & 1;
}

+ (void)mapScaledImageFill:(id)fill style:(id)style size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v22 = 0;
  if ([fill hasValueForObjectProperty:67 value:&v22])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      technique = [v22 technique];
      imageBinary = [v22 imageBinary];
      if (imageBinary)
      {
        [imageBinary size];
        if (technique == 3)
        {
          v15 = width / v10;
          v16 = height / v11;
          v14 = fmaxf(v15, v16);
        }

        else
        {
          if (technique != 4)
          {
            return;
          }

          v12 = width / v10;
          v13 = height / v11;
          v14 = fminf(v12, v13);
        }

        if (v14 != 0.0)
        {
          v17 = v14;
          v18 = v10 * v17;
          v19 = llroundf(v18);
          v20 = v11 * v17;
          v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%ldpx %ldpx", v19, llroundf(v20));
          [style addAttribute:off_9CF78 value:v21];
          [style addAttribute:off_9CF80 value:v21];
          CFRelease(v21);
        }
      }
    }
  }
}

+ (void)createExternalWrapSandbagStyles:(id)styles
{
  v4 = CFStringCreateWithFormat(0, 0, @".%@ {float: %s; clear: %s; padding: 0; width: 0px; height: 10px;}\n\n", off_9D2B0[0], "left", "left");
  [styles addStyleClass:v4];
  CFRelease(v4);
  v5 = CFStringCreateWithFormat(0, 0, @".%@ {float: %s; clear: %s; padding: 0; width: 0px; height: 10px;}\n\n", off_9D2B8[0], "right", "right");
  [styles addStyleClass:v5];

  CFRelease(v5);
}

+ (BOOL)outputWrapSandbagsForFrame:(CGRect)frame columnCount:(int)count drawable:(id)drawable state:(id)state isPageFrame:(BOOL)pageFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  processorState = [state processorState];
  if ([drawable hasPagesOrder])
  {
    pagesOrder = [drawable pagesOrder];
  }

  else
  {
    pagesOrder = 0;
  }

  if (count >= 1)
  {
    v15 = width / count;
    v16 = (10 * ((y + 9.0) / 10)) + 10.0;
    v17 = 1;
    do
    {
      v57 = v17;
      if (v15 >= 0.1 && v16 <= (10 * ((y + height) / 10)))
      {
        v18 = x + (v15 * (v17 - 1));
        v19 = x + (v15 * v17);
        currentWrapPointGenerator = [processorState currentWrapPointGenerator];
        *&v21 = v16;
        *&v22 = v18;
        *&v23 = v19;
        v24 = [currentWrapPointGenerator createListOfWrapPointsAlongY:pagesOrder minX:v21 maxX:v22 zIndex:v23];
        v25 = *v24;
        v26 = v24[1];
        if (*v24 == v26)
        {
          v37 = v16 - y;
          v32 = v37;
          v33 = 0.0;
          v38 = 0.0;
          goto LABEL_40;
        }

        v27 = 0;
        v28 = 0;
        while (1)
        {
          v29 = *v25;
          if (*(*v25 + 32) != drawable)
          {
            v30 = *(v29 + 40);
            if (v30)
            {
              if (v30 != 2)
              {
                v46 = v16 - y;
                v32 = v46;
                goto LABEL_42;
              }

              if (!v27 || *(v29 + 8) > *(v27 + 8))
              {
                v27 = *v25;
              }
            }

            else if (!v28 || *(v29 + 8) < *(v28 + 8))
            {
              v28 = *v25;
            }
          }

          v25 += 8;
          if (v25 == v26)
          {
            v31 = v16 - y;
            v32 = v31;
            v33 = 0.0;
            if (v27)
            {
              v34 = *(v27 + 8);
              if (*(v27 + 24) == 0.0 || ((v35 = v34, v35 > v18) ? (v36 = v35 < v19) : (v36 = 0), v36))
              {
                LOBYTE(v27) = 0;
                v39 = v34 - v18;
                v33 = llroundf(v39);
              }

              else
              {
                LOBYTE(v27) = 1;
              }
            }

            if (v28)
            {
              v40 = *(v28 + 8);
              if (*(v28 + 24) == 0.0 || ((v41 = v40, v41 > v18) ? (v42 = v41 < v19) : (v42 = 0), v42))
              {
                if ((v27 & 1) == 0)
                {
                  v43 = v19 - v40;
                  v38 = llroundf(v43);
                  goto LABEL_40;
                }
              }

LABEL_42:
              v44 = v15;
              v45 = v15;
            }

            else
            {
              v38 = 0.0;
              v44 = v15;
              v45 = v15;
              if ((v27 & 1) == 0)
              {
LABEL_40:
                v44 = v33;
                v45 = v38;
              }
            }

            v47 = v44 + v45;
            if (v44 <= v45)
            {
              v48 = v44;
            }

            else
            {
              v48 = 0.0;
            }

            if (v47 >= v15)
            {
              v49 = v48;
            }

            else
            {
              v49 = v44;
            }

            if (v47 >= v15 && v44 <= v45)
            {
              v51 = 0.0;
            }

            else
            {
              v51 = v45;
            }

            v52 = [[GQHWrapSandbag alloc] initWithSize:1 floatsLeft:v49, v32];
            CFArrayAppendValue(Mutable, v52);

            v53 = [[GQHWrapSandbag alloc] initWithSize:0 floatsLeft:v51, v32];
            CFArrayAppendValue(Mutable, v53);

            v59 = v24;
            sub_35BA8(&v59);
            operator delete();
          }
        }
      }

      ++v17;
      v16 = (10 * ((y + 9.0) / 10)) + 10.0;
    }

    while (v57 != count);
  }

  CFRelease(Mutable);
  return 0;
}

+ (int)outputInnerSandbagsForFrame:(CGRect)frame drawable:(id)drawable state:(id)state
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13 = (10 * ((y + 9.0) / 10));
  v40 = (10 * ((y + height) / 10));
  if ([drawable hasPagesOrder])
  {
    v15 = [drawable pagesOrder] - 1;
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  v16 = v13 + 10.0;
  if ((v13 + 10.0) <= v40)
  {
    v17 = x;
    v18 = x + width;
    v38 = v18;
    v39 = v17;
    v19 = v17;
    v20 = v18;
    v36 = v20;
    v37 = v19;
    *&v20 = v13 + 10.0;
    *&v14 = v38;
    *&v19 = v39;
    v21 = [drawable createListOfWrapPointsAlongY:v15 minX:v20 maxX:v19 zIndex:{v14, self, state}];
    v22 = *v21;
    v23 = v21[1];
    if (*v21 == v23)
    {
      v32 = v16 - y;
      v29 = v32;
      goto LABEL_24;
    }

    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = *v22;
      if (*(*v22 + 32) == drawable)
      {
        v27 = *(v26 + 40);
        if (v27)
        {
          if (v27 != 2)
          {
            v33 = v16 - y;
            v29 = v33;
            goto LABEL_24;
          }

          if (!v25 || *(v26 + 8) < *(v25 + 8))
          {
            v25 = *v22;
          }
        }

        else if (!v24 || *(v26 + 8) > *(v24 + 8))
        {
          v24 = *v22;
        }
      }

      v22 += 8;
      if (v22 == v23)
      {
        v28 = v16 - y;
        v29 = v28;
        if (v24)
        {
          v30 = *(v24 + 8) - v37;
        }

        if (v25)
        {
          v31 = v36 - *(v25 + 8);
        }

LABEL_24:
        v34 = [[GQHWrapSandbag alloc] initWithSize:1 floatsLeft:width, v29];
        CFArrayAppendValue(Mutable, v34);

        v41 = v21;
        sub_35BA8(&v41);
        operator delete();
      }
    }
  }

  CFRelease(Mutable);
  return 1;
}

+ (void)outputSandbag:(id)sandbag state:(id)state
{
  v6 = *(sandbag + 1);
  v7 = llroundf(v6);
  v8 = *(sandbag + 2);
  v9 = llroundf(v8);
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"div"];
  v11 = objc_alloc_init(GQHStyle);
  v12 = v11;
  v13 = off_9D2B0;
  if (!*(sandbag + 24))
  {
    v13 = off_9D2B8;
  }

  [(GQHStyle *)v11 addClass:*v13];
  if (v7)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9 == 10;
  }

  if (!v14)
  {
    if (v9 != 10)
    {
      [(GQHStyle *)v12 addAttribute:off_9CE98 pxValue:v9];
    }

    if (v7)
    {
      [(GQHStyle *)v12 addAttribute:off_9CF68 pxValue:v7];
    }
  }

  [(GQHStyle *)v12 setStyleOnCurrentNode:state];

  [htmlDoc endElement];
}

+ (int)outputInnerSandbagsForShape:(id)shape layoutStyle:(id)style state:(id)state
{
  if ([objc_msgSend(shape "layoutFrame")])
  {
    return 1;
  }

  geometry = [shape geometry];
  [geometry position];
  v11 = v10;
  v13 = v12;
  [geometry size];

  return [self outputInnerSandbagsForFrame:shape drawable:state state:{v11, v13, v14, v15}];
}

+ (int)outputWrapSandbagsForShape:(id)shape layoutStyle:(id)style state:(id)state
{
  layoutFrame = [shape layoutFrame];
  v10 = [objc_msgSend(objc_msgSend(state "processorState")];
  if (!v10 || !v10[2] || ([layoutFrame isBlank] & 1) != 0)
  {
    return 1;
  }

  geometry = [shape geometry];
  [geometry position];
  v14 = v13;
  v16 = v15;
  [geometry size];
  v18 = v17;
  v20 = v19;
  v23 = 0;
  v21 = [style hasValueForObjectProperty:49 value:&v23];
  Count = 1;
  if (v21)
  {
    if (v23)
    {
      Count = CFArrayGetCount([v23 columns]);
    }
  }

  return [self outputWrapSandbagsForFrame:Count columnCount:shape drawable:state state:{v14, v16, v18, v20}];
}

@end