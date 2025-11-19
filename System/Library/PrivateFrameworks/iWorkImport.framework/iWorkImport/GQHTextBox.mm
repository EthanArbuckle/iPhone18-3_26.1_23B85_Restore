@interface GQHTextBox
+ (BOOL)outputWrapSandbagsForFrame:(CGRect)a3 columnCount:(int)a4 drawable:(id)a5 state:(id)a6 isPageFrame:(BOOL)a7;
+ (BOOL)styleNeedsImageFillMapping:(id)a3;
+ (int)handleLayoutStorage:(id)a3 state:(id)a4;
+ (int)handleShapeText:(id)a3 boundsRect:(CGRect)a4 floating:(BOOL)a5 state:(id)a6;
+ (int)outputInnerSandbagsForFrame:(CGRect)a3 drawable:(id)a4 state:(id)a5;
+ (int)outputInnerSandbagsForShape:(id)a3 layoutStyle:(id)a4 state:(id)a5;
+ (int)outputWrapSandbagsForShape:(id)a3 layoutStyle:(id)a4 state:(id)a5;
+ (void)createExternalWrapSandbagStyles:(id)a3;
+ (void)mapLayout:(id)a3 style:(id)a4 state:(id)a5;
+ (void)mapScaledImageFill:(id)a3 style:(id)a4 size:(CGSize)a5;
+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5;
+ (void)outputSandbag:(id)a3 state:(id)a4;
@end

@implementation GQHTextBox

+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5
{
  v7 = 0;
  if ([a3 overridesIntProperty:50 value:&v7] && (objc_msgSend(a5, "multiColumned") & 1) == 0)
  {
    [a4 addAttribute:off_9CE60 value:@"table-cell"];
    if (v7 <= 3)
    {
      [a4 addAttribute:off_9CF58 value:*off_80828[v7]];
    }
  }
}

+ (int)handleShapeText:(id)a3 boundsRect:(CGRect)a4 floating:(BOOL)a5 state:(id)a6
{
  v7 = a5;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = [a6 htmlDoc];
  v13 = [a3 geometry];
  v14 = [a3 layoutFrame];
  v15 = [v14 layoutStyle];
  if (!v15)
  {
    v16 = [objc_msgSend(v14 "storage")];
    if (v16 && (v17 = v16, CFArrayGetCount(v16) == 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v17, 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [ValueAtIndex layoutStyle];
    }

    else
    {
      v15 = 0;
    }
  }

  v51 = v12;
  [v12 startElement:{"div", v14}];
  v19 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v19 addAttribute:off_9CF18 value:off_9CFA0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GQHStyle *)v19 addAttribute:off_9CEE8 value:off_9CFE8];
    [(GQHStyle *)v19 addAttribute:off_9CF70 value:off_9CFB8];
  }

  if (v7)
  {
    [v13 position];
    v21 = x + v20;
    [v13 position];
    +[GQHBounds mapPosition:srcGraphicStyle:style:state:](GQHBounds, "mapPosition:srcGraphicStyle:style:state:", [a3 graphicStyle], v19, a6, v21, y + v22);
    [v13 size];
    v24 = v23;
    v26 = v25;
    [v13 angle];
    LODWORD(v28) = v27;
    [GQHBounds mapSize:0 angle:v19 srcGraphicStyle:a6 style:v24 state:v26, v28];
    [GQHBounds setTransformOriginToZeroInStyle:v19];
  }

  else
  {
    [v13 size];
    v30 = v29;
    v32 = v31;
    [v13 angle];
    LODWORD(v34) = v33;
    [GQHBounds mapSize:0 angle:v19 srcGraphicStyle:a6 style:v30 state:v32, v34];
  }

  [a1 mapStyle:v15 style:v19 state:a6];
  [a1 mapLayout:v15 style:v19 state:a6];
  if (v7)
  {
    if (([a3 hasPagesOrder] & 1) != 0 || objc_msgSend(a6, "drawablesNeedCssZOrdering"))
    {
      -[GQHStyle addClass:](v19, "addClass:", [a6 cssZOrderClassForDrawable:a3]);
    }

    [(GQHStyle *)v19 setStyleOnCurrentNode:a6 mappingBaseStyleClass:v15 baseClassType:objc_opt_class()];

    v53 = 0;
    v35 = 0;
    v36 = v51;
    if ([v15 hasValueForIntProperty:50 value:&v53])
    {
      v37 = objc_alloc_init(GQHStyle);
      [v51 startElement:"div"];
      [v13 size];
      v39 = v38;
      [v13 size];
      v41 = v40;
      v52 = 0;
      if ([v15 hasValueForObjectProperty:47 value:&v52])
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

      [(GQHStyle *)v37 setStyleOnCurrentNode:a6];

      v35 = 1;
    }
  }

  else
  {
    [(GQHStyle *)v19 setStyleOnCurrentNode:a6 mappingBaseStyleClass:v15 baseClassType:objc_opt_class()];

    v35 = 0;
    v53 = 0;
    v36 = v51;
  }

  [a1 outputInnerSandbagsForShape:a3 layoutStyle:v15 state:a6];
  v48 = [a1 outputWrapSandbagsForShape:a3 layoutStyle:v15 state:a6];
  if (v48 == 1)
  {
    v48 = [a1 handleLayoutStorage:objc_msgSend(v50 state:{"storage"), a6}];
  }

  if (v35)
  {
    [v36 endElementWithExpectedName:"div"];
  }

  [v36 endElementWithExpectedName:"div"];
  return v48;
}

+ (int)handleLayoutStorage:(id)a3 state:(id)a4
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = [a3 body];
  if (!v7 || (v8 = v7, CFArrayGetCount(v7) == 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v8, 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = [ValueAtIndex children]) == 0)
  {
    [a4 setParagraphCount:0];
    goto LABEL_16;
  }

  Count = CFArrayGetCount(v8);
  [a4 setParagraphCount:Count];
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
    [a4 setParagraphIndex:v11];
    v13 = CFArrayGetValueAtIndex(v8, v11);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if ([a4 useOutline] && (objc_msgSend(v13, "isHidden") & 1) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = +[GQHParagraph handleParagraph:state:bulletStates:isMultiColumn:](GQHParagraph, "handleParagraph:state:bulletStates:isMultiColumn:", v13, a4, Mutable, [a4 multiColumned]);
    }

    if (++v11 >= v12 || v14 != 1)
    {
      goto LABEL_18;
    }
  }

  v14 = 3;
LABEL_18:
  [a4 setParagraphCount:0];
  [a4 setParagraphIndex:0];
  CFRelease(Mutable);
  return v14;
}

+ (void)mapLayout:(id)a3 style:(id)a4 state:(id)a5
{
  v43 = 0;
  v44 = 0;
  if ([a4 getAttribute:off_9CF68 intValue:&v43 + 4] && objc_msgSend(a4, "getAttribute:intValue:", off_9CE98, &v43))
  {
    if ([a3 hasValueForObjectProperty:49 value:&v44])
    {
      v8 = [v44 columns];
      v9 = [v44 equalColumns];
      Count = CFArrayGetCount(v8);
      v11 = Count;
      if (Count >= 2)
      {
        if (v9)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
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
            v19 = CFArrayGetValueAtIndex(v8, v15);
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

        [a5 setMultiColumned:{1, v39}];
        [a4 addAttribute:@"-webkit-column-count" intValue:v11];
        [a4 addAttribute:@"-webkit-column-gap" pxValue:llroundf(v13 * SHIDWORD(v43))];
        [a4 addAttribute:off_9CEE8 value:off_9CFE8];
      }
    }

    v42 = 0;
    if ([a3 hasValueForObjectProperty:47 value:&v42])
    {
      [v42 top];
      v22 = v21;
      [a5 scale];
      v24 = v23 * v22;
      [v42 bottom];
      v26 = v25;
      [a5 scale];
      v28 = v27 * v26;
      [v42 left];
      v30 = v29;
      [a5 scale];
      v32 = v31 * v30;
      [v42 right];
      v34 = v33;
      [a5 scale];
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
      [a4 addAttribute:off_9CEF0 trblValue:v38];

      [a4 addAttribute:off_9CF68 pxValue:((SHIDWORD(v43) - v32) - v37)];
      theString1 = 0;
      v40 = 0;
      if (![a3 hasValueForIntProperty:50 value:&v40] || (objc_msgSend(a5, "multiColumned") & 1) != 0 || objc_msgSend(a4, "getAttribute:value:", off_9CF18, &theString1) && CFStringCompare(theString1, off_9CFA0, 1uLL) == kCFCompareEqualTo)
      {
        [a4 addAttribute:off_9CE98 pxValue:((v43 - v24) - v28)];
      }
    }
  }
}

+ (BOOL)styleNeedsImageFillMapping:(id)a3
{
  v5 = 0;
  v3 = [a3 hasValueForObjectProperty:67 value:&v5];
  if (v3)
  {
    objc_opt_class();
    LOBYTE(v3) = objc_opt_isKindOfClass();
  }

  return v3 & 1;
}

+ (void)mapScaledImageFill:(id)a3 style:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v22 = 0;
  if ([a3 hasValueForObjectProperty:67 value:&v22])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v22 technique];
      v9 = [v22 imageBinary];
      if (v9)
      {
        [v9 size];
        if (v8 == 3)
        {
          v15 = width / v10;
          v16 = height / v11;
          v14 = fmaxf(v15, v16);
        }

        else
        {
          if (v8 != 4)
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
          [a4 addAttribute:off_9CF78 value:v21];
          [a4 addAttribute:off_9CF80 value:v21];
          CFRelease(v21);
        }
      }
    }
  }
}

+ (void)createExternalWrapSandbagStyles:(id)a3
{
  v4 = CFStringCreateWithFormat(0, 0, @".%@ {float: %s; clear: %s; padding: 0; width: 0px; height: 10px;}\n\n", off_9D2B0[0], "left", "left");
  [a3 addStyleClass:v4];
  CFRelease(v4);
  v5 = CFStringCreateWithFormat(0, 0, @".%@ {float: %s; clear: %s; padding: 0; width: 0px; height: 10px;}\n\n", off_9D2B8[0], "right", "right");
  [a3 addStyleClass:v5];

  CFRelease(v5);
}

+ (BOOL)outputWrapSandbagsForFrame:(CGRect)a3 columnCount:(int)a4 drawable:(id)a5 state:(id)a6 isPageFrame:(BOOL)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13 = [a6 processorState];
  if ([a5 hasPagesOrder])
  {
    v14 = [a5 pagesOrder];
  }

  else
  {
    v14 = 0;
  }

  if (a4 >= 1)
  {
    v15 = width / a4;
    v16 = (10 * ((y + 9.0) / 10)) + 10.0;
    v17 = 1;
    do
    {
      v57 = v17;
      if (v15 >= 0.1 && v16 <= (10 * ((y + height) / 10)))
      {
        v18 = x + (v15 * (v17 - 1));
        v19 = x + (v15 * v17);
        v20 = [v13 currentWrapPointGenerator];
        *&v21 = v16;
        *&v22 = v18;
        *&v23 = v19;
        v24 = [v20 createListOfWrapPointsAlongY:v14 minX:v21 maxX:v22 zIndex:v23];
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
          if (*(*v25 + 32) != a5)
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

    while (v57 != a4);
  }

  CFRelease(Mutable);
  return 0;
}

+ (int)outputInnerSandbagsForFrame:(CGRect)a3 drawable:(id)a4 state:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13 = (10 * ((y + 9.0) / 10));
  v40 = (10 * ((y + height) / 10));
  if ([a4 hasPagesOrder])
  {
    v15 = [a4 pagesOrder] - 1;
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
    v21 = [a4 createListOfWrapPointsAlongY:v15 minX:v20 maxX:v19 zIndex:{v14, a1, a5}];
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
      if (*(*v22 + 32) == a4)
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

+ (void)outputSandbag:(id)a3 state:(id)a4
{
  v6 = *(a3 + 1);
  v7 = llroundf(v6);
  v8 = *(a3 + 2);
  v9 = llroundf(v8);
  v10 = [a4 htmlDoc];
  [v10 startElement:"div"];
  v11 = objc_alloc_init(GQHStyle);
  v12 = v11;
  v13 = off_9D2B0;
  if (!*(a3 + 24))
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

  [(GQHStyle *)v12 setStyleOnCurrentNode:a4];

  [v10 endElement];
}

+ (int)outputInnerSandbagsForShape:(id)a3 layoutStyle:(id)a4 state:(id)a5
{
  if ([objc_msgSend(a3 "layoutFrame")])
  {
    return 1;
  }

  v9 = [a3 geometry];
  [v9 position];
  v11 = v10;
  v13 = v12;
  [v9 size];

  return [a1 outputInnerSandbagsForFrame:a3 drawable:a5 state:{v11, v13, v14, v15}];
}

+ (int)outputWrapSandbagsForShape:(id)a3 layoutStyle:(id)a4 state:(id)a5
{
  v9 = [a3 layoutFrame];
  v10 = [objc_msgSend(objc_msgSend(a5 "processorState")];
  if (!v10 || !v10[2] || ([v9 isBlank] & 1) != 0)
  {
    return 1;
  }

  v12 = [a3 geometry];
  [v12 position];
  v14 = v13;
  v16 = v15;
  [v12 size];
  v18 = v17;
  v20 = v19;
  v23 = 0;
  v21 = [a4 hasValueForObjectProperty:49 value:&v23];
  Count = 1;
  if (v21)
  {
    if (v23)
    {
      Count = CFArrayGetCount([v23 columns]);
    }
  }

  return [a1 outputWrapSandbagsForFrame:Count columnCount:a3 drawable:a5 state:{v14, v16, v18, v20}];
}

@end