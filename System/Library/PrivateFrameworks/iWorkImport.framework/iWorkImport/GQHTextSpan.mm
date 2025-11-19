@interface GQHTextSpan
+ (int)handleAttachment:(id)a3 state:(id)a4;
+ (int)handleAutoNumber:(id)a3 state:(id)a4;
+ (int)handleContainerHint:(id)a3 state:(id)a4;
+ (int)handleTextBackgroundForStyle:(id)a3 destStyle:(id)a4 state:(id)a5;
+ (int)handleTextList:(id)a3 checkForTrailingBlanks:(BOOL)a4 state:(id)a5;
+ (int)handleTextMarker:(id)a3 outputBlanks:(BOOL)a4 state:(id)a5;
+ (int)nonWhitespaceCount:(__CFArray *)a3;
@end

@implementation GQHTextSpan

+ (int)handleTextList:(id)a3 checkForTrailingBlanks:(BOOL)a4 state:(id)a5
{
  v6 = a4;
  v8 = [a3 children];
  Count = CFArrayGetCount(v8);
  v10 = Count;
  if (v6)
  {
    Count = [GQHTextSpan nonWhitespaceCount:v8];
  }

  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  v12 = Count;
  do
  {
    result = [a1 handleTextListChild:CFArrayGetValueAtIndex(v8 outputBlanks:v11) state:{v11 < v12, a5}];
    ++v11;
  }

  while (v11 < v10 && result == 1);
  return result;
}

+ (int)handleTextBackgroundForStyle:(id)a3 destStyle:(id)a4 state:(id)a5
{
  v11 = 0;
  if ([a3 overridesObjectProperty:22 value:&v11])
  {
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [a5 getColorString:v11];
        [a4 addAttribute:off_9CE08 value:v7];
        v10 = 0.0;
        if ([objc_msgSend(a5 "implicitStyle")])
        {
          *&v8 = v10;
          if (v10 > 0.0)
          {
            [a4 addAttribute:off_9CF10 intValue:llroundf(v10)];
          }
        }

        if ([objc_msgSend(a5 implicitStyle] && v10 > 0.0)
        {
          [a4 addAttribute:off_9CEF8 intValue:llroundf(v10)];
        }
      }
    }
  }

  return 1;
}

+ (int)nonWhitespaceCount:(__CFArray *)a3
{
  result = CFArrayGetCount(a3);
  if (result >= 1)
  {
    for (i = result & 0x7FFFFFFF; ; --i)
    {
      v6 = i - 1;
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i - 1);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([ValueAtIndex isBlank] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }

      if ((v6 + 1) <= 1)
      {
        return 0;
      }
    }

    return i;
  }

  return result;
}

+ (int)handleTextMarker:(id)a3 outputBlanks:(BOOL)a4 state:(id)a5
{
  v5 = a4;
  v7 = [a5 htmlDoc];
  v8 = [a3 type];
  if (v8 - 2 < 4)
  {
    [v7 startElement:"br"];
LABEL_3:
    [v7 endElement];
    return 1;
  }

  if (v8 == 1 && v5)
  {
    [v7 startElement:"span"];
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%C %C %C %C ", 160, 160, 160, 160);
    [v7 addContent:v10];
    CFRelease(v10);
    goto LABEL_3;
  }

  return 1;
}

+ (int)handleAutoNumber:(id)a3 state:(id)a4
{
  v6 = [a4 htmlDoc];
  if ([a3 type] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(a4, "isMappingHeadersFooters"))
  {
    v7 = CFStringCreateWithFormat(0, 0, @"%d", [a4 pageNumberForHeaderOrFooter]);
    [v6 addContent:v7];
    CFRelease(v7);
  }

  else
  {
    [v6 addContent:{objc_msgSend(a3, "value")}];
  }

  return 1;
}

+ (int)handleAttachment:(id)a3 state:(id)a4
{
  v5 = [a3 drawable];
  v6 = [a4 useOutline];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_msgSend(v5 "graphicStyle")];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        LOBYTE(v6) = 0;
        if (!v5)
        {
          return 1;
        }

        goto LABEL_8;
      }

      v7 = [v5 externalTextWrap];
    }

    LOBYTE(v6) = [v7 inlineWrapEnabled];
  }

  if (!v5)
  {
    return 1;
  }

LABEL_8:
  if (v6)
  {
    return 1;
  }

  return [GQHDrawable handleInlineDrawable:v5 htmlState:a4];
}

+ (int)handleContainerHint:(id)a3 state:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 handleContainerHint:a3];
  }

  return 1;
}

@end