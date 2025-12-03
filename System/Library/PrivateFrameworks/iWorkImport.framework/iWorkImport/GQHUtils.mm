@interface GQHUtils
+ (__CFString)createHtmlHrefForLinkUri:(__CFString *)uri state:(id)state;
@end

@implementation GQHUtils

+ (__CFString)createHtmlHrefForLinkUri:(__CFString *)uri state:(id)state
{
  uriCopy = uri;
  if (CFStringHasPrefix(uri, @"#"))
  {
    Length = CFStringGetLength(uriCopy);
    if (Length >= 2)
    {
      v12.length = Length - 1;
      v12.location = 1;
      v7 = CFStringCreateWithSubstring(0, uriCopy, v12);
      uriCopy = CFStringCreateWithFormat(0, 0, @"javascript:location.hash='%@';", v7);
      CFRelease(v7);
      return uriCopy;
    }
  }

  if (!CFStringHasPrefix(uriCopy, @"?"))
  {
    CFRetain(uriCopy);
    return uriCopy;
  }

  currentSlide = [state currentSlide];
  if (CFStringCompare(uriCopy, @"?slide=first", 0))
  {
    if (CFStringCompare(uriCopy, @"?slide=last", 0) == kCFCompareEqualTo)
    {
      return @"#slideId_last";
    }

    if (CFStringCompare(uriCopy, @"?slide=+1", 0))
    {
      if (CFStringCompare(uriCopy, @"?slide=-1", 0))
      {
        if (CFStringHasPrefix(uriCopy, @"?id="))
        {
          v9 = CFStringGetLength(@"?id=");
          v13.length = CFStringGetLength(uriCopy) - v9;
          v13.location = v9;
          v10 = CFStringCreateWithSubstring(0, uriCopy, v13);
          uriCopy = CFStringCreateWithFormat(0, 0, @"#%@", v10);
          CFRelease(v10);
          if (uriCopy)
          {
            return uriCopy;
          }
        }
      }

      else
      {
        currentSlide = (currentSlide - 1);
      }
    }

    else
    {
      currentSlide = (currentSlide + 1);
    }
  }

  else
  {
    currentSlide = 1;
  }

  if (currentSlide == [state currentSlide])
  {
    return 0;
  }

  return CFStringCreateWithFormat(0, 0, @"#slideId_%d", currentSlide);
}

@end