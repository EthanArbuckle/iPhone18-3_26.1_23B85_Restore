@interface GQHTextSpan
+ (int)handleAttachment:(id)attachment state:(id)state;
+ (int)handleAutoNumber:(id)number state:(id)state;
+ (int)handleContainerHint:(id)hint state:(id)state;
+ (int)handleTextBackgroundForStyle:(id)style destStyle:(id)destStyle state:(id)state;
+ (int)handleTextList:(id)list checkForTrailingBlanks:(BOOL)blanks state:(id)state;
+ (int)handleTextMarker:(id)marker outputBlanks:(BOOL)blanks state:(id)state;
+ (int)nonWhitespaceCount:(__CFArray *)count;
@end

@implementation GQHTextSpan

+ (int)handleTextList:(id)list checkForTrailingBlanks:(BOOL)blanks state:(id)state
{
  blanksCopy = blanks;
  children = [list children];
  Count = CFArrayGetCount(children);
  v10 = Count;
  if (blanksCopy)
  {
    Count = [GQHTextSpan nonWhitespaceCount:children];
  }

  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  v12 = Count;
  do
  {
    result = [self handleTextListChild:CFArrayGetValueAtIndex(children outputBlanks:v11) state:{v11 < v12, state}];
    ++v11;
  }

  while (v11 < v10 && result == 1);
  return result;
}

+ (int)handleTextBackgroundForStyle:(id)style destStyle:(id)destStyle state:(id)state
{
  v11 = 0;
  if ([style overridesObjectProperty:22 value:&v11])
  {
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [state getColorString:v11];
        [destStyle addAttribute:off_9CE08 value:v7];
        v10 = 0.0;
        if ([objc_msgSend(state "implicitStyle")])
        {
          *&v8 = v10;
          if (v10 > 0.0)
          {
            [destStyle addAttribute:off_9CF10 intValue:llroundf(v10)];
          }
        }

        if ([objc_msgSend(state implicitStyle] && v10 > 0.0)
        {
          [destStyle addAttribute:off_9CEF8 intValue:llroundf(v10)];
        }
      }
    }
  }

  return 1;
}

+ (int)nonWhitespaceCount:(__CFArray *)count
{
  result = CFArrayGetCount(count);
  if (result >= 1)
  {
    for (i = result & 0x7FFFFFFF; ; --i)
    {
      v6 = i - 1;
      ValueAtIndex = CFArrayGetValueAtIndex(count, i - 1);
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

+ (int)handleTextMarker:(id)marker outputBlanks:(BOOL)blanks state:(id)state
{
  blanksCopy = blanks;
  htmlDoc = [state htmlDoc];
  type = [marker type];
  if (type - 2 < 4)
  {
    [htmlDoc startElement:"br"];
LABEL_3:
    [htmlDoc endElement];
    return 1;
  }

  if (type == 1 && blanksCopy)
  {
    [htmlDoc startElement:"span"];
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%C %C %C %C ", 160, 160, 160, 160);
    [htmlDoc addContent:v10];
    CFRelease(v10);
    goto LABEL_3;
  }

  return 1;
}

+ (int)handleAutoNumber:(id)number state:(id)state
{
  htmlDoc = [state htmlDoc];
  if ([number type] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(state, "isMappingHeadersFooters"))
  {
    v7 = CFStringCreateWithFormat(0, 0, @"%d", [state pageNumberForHeaderOrFooter]);
    [htmlDoc addContent:v7];
    CFRelease(v7);
  }

  else
  {
    [htmlDoc addContent:{objc_msgSend(number, "value")}];
  }

  return 1;
}

+ (int)handleAttachment:(id)attachment state:(id)state
{
  drawable = [attachment drawable];
  useOutline = [state useOutline];
  if (useOutline)
  {
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
        LOBYTE(useOutline) = 0;
        if (!drawable)
        {
          return 1;
        }

        goto LABEL_8;
      }

      externalTextWrap = [drawable externalTextWrap];
    }

    LOBYTE(useOutline) = [externalTextWrap inlineWrapEnabled];
  }

  if (!drawable)
  {
    return 1;
  }

LABEL_8:
  if (useOutline)
  {
    return 1;
  }

  return [GQHDrawable handleInlineDrawable:drawable htmlState:state];
}

+ (int)handleContainerHint:(id)hint state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state handleContainerHint:hint];
  }

  return 1;
}

@end