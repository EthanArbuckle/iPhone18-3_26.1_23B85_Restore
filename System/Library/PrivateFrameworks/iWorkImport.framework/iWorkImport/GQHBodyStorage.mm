@interface GQHBodyStorage
+ (int)handleBodyStorage:(id)storage state:(id)state;
+ (int)handleContainerHint:(id)hint state:(id)state;
+ (int)handleFootnotes:(id)footnotes state:(id)state;
+ (int)handleLayout:(id)layout state:(id)state;
+ (int)handleSection:(id)section state:(id)state;
+ (int)handleTocContent:(id)content state:(id)state;
+ (int)handleTocEntry:(id)entry state:(id)state;
@end

@implementation GQHBodyStorage

+ (int)handleBodyStorage:(id)storage state:(id)state
{
  generatorState = [state generatorState];
  body = [storage body];
  Count = CFArrayGetCount(body);
  v9 = Count;
  if (Count)
  {
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(body, v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [self handleSection:ValueAtIndex state:generatorState];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [self handlePageStart:ValueAtIndex state:generatorState];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = 3;
            goto LABEL_14;
          }

          v12 = [self handleContainerHint:ValueAtIndex state:generatorState];
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
  if (![storage footnotes] || (objc_msgSend(generatorState, "useOutline") & 1) != 0)
  {
    return v13;
  }

  footnotes = [storage footnotes];

  return [self handleFootnotes:footnotes state:generatorState];
}

+ (int)handleTocContent:(id)content state:(id)state
{
  children = [content children];
  Count = CFArrayGetCount(children);
  if (Count < 1)
  {
    return 1;
  }

  v8 = 0;
  v9 = Count & 0x7FFFFFFF;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(children, v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [self handleTocEntry:ValueAtIndex state:state];
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

+ (int)handleTocEntry:(id)entry state:(id)state
{
  bookmark = [entry bookmark];
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"a"];
  v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"#%@", bookmark);
  v10 = [GQHUtils createHtmlHrefForLinkUri:v9 state:state];
  CFRelease(v9);
  [htmlDoc setAttribute:"href" cfStringValue:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state pushTocHref:v10];
  }

  CFRelease(v10);
  [htmlDoc setAttribute:"title" cfStringValue:bookmark];
  children = [entry children];
  Count = CFArrayGetCount(children);
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
    ValueAtIndex = CFArrayGetValueAtIndex(children, v14);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [state inContent];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if ([state useOutline] && (objc_msgSend(ValueAtIndex, "isHidden") & 1) != 0)
    {
      v17 = 1;
      goto LABEL_22;
    }

    v18 = [GQHParagraph handleParagraph:ValueAtIndex state:state bulletStates:Mutable isMultiColumn:0];
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
    v18 = [self handleTocContent:ValueAtIndex state:state];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [self handleTocEntry:ValueAtIndex state:state];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [self handlePageStart:ValueAtIndex state:state];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [self handleContainerHint:ValueAtIndex state:state];
    goto LABEL_21;
  }

  v17 = 3;
LABEL_26:
  [htmlDoc endElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state popTocHref];
  }

  CFRelease(Mutable);
  return v17;
}

+ (int)handleSection:(id)section state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state setDidInsertPageHeader:0];
    if ([section style])
    {
      [state overrideSectionStyle:{objc_msgSend(section, "style")}];
    }
  }

  children = [section children];
  Count = CFArrayGetCount(children);
  v9 = Count;
  if (!Count)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(children, v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [state inContent];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [self handleLayout:ValueAtIndex state:state];
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [self handlePageStart:ValueAtIndex state:state];
      goto LABEL_15;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 3;
    }

    result = [self handleContainerHint:ValueAtIndex state:state];
LABEL_15:
    if (++v10 >= v9 || result != 1)
    {
      return result;
    }
  }
}

+ (int)handleLayout:(id)layout state:(id)state
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"div"];
  v8 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v8 addAttribute:off_9CE00 value:@"#FFFFFF"];
  [(GQHStyle *)v8 addAttribute:off_9CE60 value:off_9CFF8];
  [(GQHStyle *)v8 setStyleOnCurrentNode:state];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state setCurrentLayoutStyle:v8];
  }

  children = [layout children];
  Count = CFArrayGetCount(children);
  [state setParagraphCount:Count];
  if (!Count)
  {
    v14 = 1;
    goto LABEL_25;
  }

  v11 = 0;
  v12 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(children, v11);
    [state setParagraphIndex:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [state inContent];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if ([state useOutline] && (objc_msgSend(ValueAtIndex, "isHidden") & 1) != 0)
    {
      v14 = 1;
      goto LABEL_21;
    }

    v15 = [GQHParagraph handleParagraph:ValueAtIndex state:state bulletStates:Mutable isMultiColumn:0];
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
    v15 = [self handlePageStart:ValueAtIndex state:state];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v15 = [self handleTocContent:ValueAtIndex state:state];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [self handleContainerHint:ValueAtIndex state:state];
    goto LABEL_20;
  }

  v14 = 3;
LABEL_25:
  [state setParagraphCount:0];
  [state setParagraphIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state setCurrentLayoutStyle:0];
  }

  [htmlDoc endElement];
  CFRelease(Mutable);
  return v14;
}

+ (int)handleFootnotes:(id)footnotes state:(id)state
{
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"div"];
  v7 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v7 addAttribute:off_9CE00 value:@"#FFFFFF"];
  [(GQHStyle *)v7 addAttribute:off_9CE60 value:off_9CFF8];
  [(GQHStyle *)v7 setStyleOnCurrentNode:state];

  [htmlDoc startElement:"hr"];
  [htmlDoc endElement];
  [GQHTextBox handleLayoutStorage:footnotes state:state];
  [htmlDoc endElement];
  return 1;
}

+ (int)handleContainerHint:(id)hint state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state setDidFindContainerHint:1];
    [state handleContainerHint:hint];
  }

  return 1;
}

@end