@interface GQHBodyStorage
+ (int)handleBodyStorage:(id)a3 state:(id)a4;
+ (int)handleContainerHint:(id)a3 state:(id)a4;
+ (int)handleFootnotes:(id)a3 state:(id)a4;
+ (int)handleLayout:(id)a3 state:(id)a4;
+ (int)handleSection:(id)a3 state:(id)a4;
+ (int)handleTocContent:(id)a3 state:(id)a4;
+ (int)handleTocEntry:(id)a3 state:(id)a4;
@end

@implementation GQHBodyStorage

+ (int)handleBodyStorage:(id)a3 state:(id)a4
{
  v6 = [a4 generatorState];
  v7 = [a3 body];
  Count = CFArrayGetCount(v7);
  v9 = Count;
  if (Count)
  {
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [a1 handleSection:ValueAtIndex state:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [a1 handlePageStart:ValueAtIndex state:v6];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = 3;
            goto LABEL_14;
          }

          v12 = [a1 handleContainerHint:ValueAtIndex state:v6];
        }
      }

      v13 = v12;
      if (++v10 >= v9 || v12 != 1)
      {
        goto LABEL_14;
      }
    }
  }

  v13 = 1;
LABEL_14:
  if (![a3 footnotes] || (objc_msgSend(v6, "useOutline") & 1) != 0)
  {
    return v13;
  }

  v15 = [a3 footnotes];

  return [a1 handleFootnotes:v15 state:v6];
}

+ (int)handleTocContent:(id)a3 state:(id)a4
{
  v6 = [a3 children];
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    return 1;
  }

  v8 = 0;
  v9 = Count & 0x7FFFFFFF;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [a1 handleTocEntry:ValueAtIndex state:a4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = 1;
      }

      else
      {
        result = 3;
      }
    }

    ++v8;
  }

  while (v8 < v9 && result == 1);
  return result;
}

+ (int)handleTocEntry:(id)a3 state:(id)a4
{
  v7 = [a3 bookmark];
  v8 = [a4 htmlDoc];
  [v8 startElement:"a"];
  v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"#%@", v7);
  v10 = [GQHUtils createHtmlHrefForLinkUri:v9 state:a4];
  CFRelease(v9);
  [v8 setAttribute:"href" cfStringValue:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 pushTocHref:v10];
  }

  CFRelease(v10);
  [v8 setAttribute:"title" cfStringValue:v7];
  v11 = [a3 children];
  Count = CFArrayGetCount(v11);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Count < 1)
  {
    v17 = 1;
    goto LABEL_26;
  }

  v14 = 0;
  v15 = Count & 0x7FFFFFFF;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [a4 inContent];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if ([a4 useOutline] && (objc_msgSend(ValueAtIndex, "isHidden") & 1) != 0)
    {
      v17 = 1;
      goto LABEL_22;
    }

    v18 = [GQHParagraph handleParagraph:ValueAtIndex state:a4 bulletStates:Mutable isMultiColumn:0];
LABEL_21:
    v17 = v18;
LABEL_22:
    if (++v14 >= v15 || v17 != 1)
    {
      goto LABEL_26;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [a1 handleTocContent:ValueAtIndex state:a4];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [a1 handleTocEntry:ValueAtIndex state:a4];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [a1 handlePageStart:ValueAtIndex state:a4];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [a1 handleContainerHint:ValueAtIndex state:a4];
    goto LABEL_21;
  }

  v17 = 3;
LABEL_26:
  [v8 endElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 popTocHref];
  }

  CFRelease(Mutable);
  return v17;
}

+ (int)handleSection:(id)a3 state:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 setDidInsertPageHeader:0];
    if ([a3 style])
    {
      [a4 overrideSectionStyle:{objc_msgSend(a3, "style")}];
    }
  }

  v7 = [a3 children];
  Count = CFArrayGetCount(v7);
  v9 = Count;
  if (!Count)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [a4 inContent];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [a1 handleLayout:ValueAtIndex state:a4];
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [a1 handlePageStart:ValueAtIndex state:a4];
      goto LABEL_15;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 3;
    }

    result = [a1 handleContainerHint:ValueAtIndex state:a4];
LABEL_15:
    if (++v10 >= v9 || result != 1)
    {
      return result;
    }
  }
}

+ (int)handleLayout:(id)a3 state:(id)a4
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v17 = [a4 htmlDoc];
  [v17 startElement:"div"];
  v8 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v8 addAttribute:off_9CE00 value:@"#FFFFFF"];
  [(GQHStyle *)v8 addAttribute:off_9CE60 value:off_9CFF8];
  [(GQHStyle *)v8 setStyleOnCurrentNode:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 setCurrentLayoutStyle:v8];
  }

  v9 = [a3 children];
  Count = CFArrayGetCount(v9);
  [a4 setParagraphCount:Count];
  if (!Count)
  {
    v14 = 1;
    goto LABEL_25;
  }

  v11 = 0;
  v12 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
    [a4 setParagraphIndex:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [a4 inContent];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if ([a4 useOutline] && (objc_msgSend(ValueAtIndex, "isHidden") & 1) != 0)
    {
      v14 = 1;
      goto LABEL_21;
    }

    v15 = [GQHParagraph handleParagraph:ValueAtIndex state:a4 bulletStates:Mutable isMultiColumn:0];
LABEL_20:
    v14 = v15;
LABEL_21:
    if (++v11 >= v12 || v14 != 1)
    {
      goto LABEL_25;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [a1 handlePageStart:ValueAtIndex state:a4];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v15 = [a1 handleTocContent:ValueAtIndex state:a4];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [a1 handleContainerHint:ValueAtIndex state:a4];
    goto LABEL_20;
  }

  v14 = 3;
LABEL_25:
  [a4 setParagraphCount:0];
  [a4 setParagraphIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 setCurrentLayoutStyle:0];
  }

  [v17 endElement];
  CFRelease(Mutable);
  return v14;
}

+ (int)handleFootnotes:(id)a3 state:(id)a4
{
  v6 = [a4 htmlDoc];
  [v6 startElement:"div"];
  v7 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v7 addAttribute:off_9CE00 value:@"#FFFFFF"];
  [(GQHStyle *)v7 addAttribute:off_9CE60 value:off_9CFF8];
  [(GQHStyle *)v7 setStyleOnCurrentNode:a4];

  [v6 startElement:"hr"];
  [v6 endElement];
  [GQHTextBox handleLayoutStorage:a3 state:a4];
  [v6 endElement];
  return 1;
}

+ (int)handleContainerHint:(id)a3 state:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 setDidFindContainerHint:1];
    [a4 handleContainerHint:a3];
  }

  return 1;
}

@end