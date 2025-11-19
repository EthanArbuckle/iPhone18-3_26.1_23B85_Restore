@interface GQPProcessorFactory
+ (BOOL)isTangierTEFDocumentUti:(__CFString *)a3;
+ (BOOL)isTemplateUti:(__CFString *)a3;
+ (__CFString)createUtiForDocument:(__CFString *)a3;
+ (__CFURL)newEmbeddedSageUrlForTangierDocumentUrl:(__CFURL *)a3 uti:(__CFString *)a4 isBundle:(BOOL *)a5;
+ (int)applicationForDocumentUti:(__CFString *)a3;
@end

@implementation GQPProcessorFactory

+ (BOOL)isTangierTEFDocumentUti:(__CFString *)a3
{
  v4 = 0;
  do
  {
    v5 = CFStringCompare(a3, off_80878[v4], 0);
    if (v5)
    {
      v6 = v4 > 1;
    }

    else
    {
      v6 = 1;
    }

    ++v4;
  }

  while (!v6);
  return v5 == kCFCompareEqualTo;
}

+ (BOOL)isTemplateUti:(__CFString *)a3
{
  v4 = 0;
  do
  {
    v5 = CFStringCompare(a3, off_80890[v4], 0);
    if (v5)
    {
      v6 = v4 > 4;
    }

    else
    {
      v6 = 1;
    }

    ++v4;
  }

  while (!v6);
  return v5 == kCFCompareEqualTo;
}

+ (__CFURL)newEmbeddedSageUrlForTangierDocumentUrl:(__CFURL *)a3 uti:(__CFString *)a4 isBundle:(BOOL *)a5
{
  if (qword_A4320 != -1)
  {
    sub_57DE8();
  }

  result = [qword_A4328 objectForKey:a4];
  if (result)
  {
    v9 = [-[__CFURL path](a3 "path")];
    v10 = 0;
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
    {
      if (a5)
      {
        *a5 = v10;
      }

      return [NSURL fileURLWithPath:v9];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (__CFString)createUtiForDocument:(__CFString *)a3
{
  v3 = CFURLCreateWithFileSystemPath(0, a3, kCFURLPOSIXPathStyle, 1u);
  v4 = CFURLCopyPathExtension(v3);
  CFRelease(v3);
  if (v4)
  {
    if (CFStringCompare(v4, @"pages", 1uLL))
    {
      if (CFStringCompare(v4, @"key", 1uLL))
      {
        if (CFStringCompare(v4, @"numbers", 1uLL))
        {
          Copy = 0;
LABEL_11:
          CFRelease(v4);
          return Copy;
        }

        v6 = @"com.apple.iwork.numbers.numbers";
      }

      else
      {
        v6 = @"com.apple.iwork.keynote.key";
      }
    }

    else
    {
      v6 = @"com.apple.iwork.pages.pages";
    }

    Copy = CFStringCreateCopy(0, v6);
    goto LABEL_11;
  }

  return 0;
}

+ (int)applicationForDocumentUti:(__CFString *)a3
{
  v4 = qword_A4330;
  if (!qword_A4330)
  {
    v5 = [[NSNumber alloc] initWithInt:1];
    v6 = [[NSNumber alloc] initWithInt:3];
    v7 = [[NSNumber alloc] initWithInt:2];
    qword_A4330 = [[NSDictionary alloc] initWithObjectsAndKeys:{v7, @"com.apple.iwork.pages.pages", v7, @"com.apple.iwork.pages.sffpages", v7, @"com.apple.iwork.pages.pages-tef", v7, @"com.apple.iwork.pages.sfftemplate", v7, @"com.apple.iwork.pages.template", v5, @"com.apple.iwork.keynote.key", v5, @"com.apple.iwork.keynote.sffkey", v5, @"com.apple.keynote.key", v5, @"com.apple.iwork.keynote.key-tef", v5, @"com.apple.iwork.keynote.sffkth", v5, @"com.apple.iwork.keynote.kth", v6, @"com.apple.iwork.numbers.numbers", v6, @"com.apple.iwork.numbers.sffnumbers", v6, @"com.apple.iwork.numbers.numbers-tef", v6, @"com.apple.iwork.numbers.sfftemplate", v6, @"com.apple.iwork.numbers.template", 0}];

    v4 = qword_A4330;
  }

  v8 = [v4 objectForKey:{-[__CFString lowercaseString](a3, "lowercaseString")}];
  if (v8)
  {

    LODWORD(v8) = [v8 intValue];
  }

  return v8;
}

@end