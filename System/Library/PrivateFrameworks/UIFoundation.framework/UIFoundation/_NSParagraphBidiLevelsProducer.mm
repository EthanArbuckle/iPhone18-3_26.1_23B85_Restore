@interface _NSParagraphBidiLevelsProducer
+ (uint64_t)resolvedBaseWritingDirectionForTextContentManager:(uint64_t)a3 AttributedString:(uint64_t)a4 paragraphRange:(size_t)a5 baseWritingDirection:(uint64_t)a6 fallbackBaseWritingDirection:(int)a7 bidiLevels:;
@end

@implementation _NSParagraphBidiLevelsProducer

+ (uint64_t)resolvedBaseWritingDirectionForTextContentManager:(uint64_t)a3 AttributedString:(uint64_t)a4 paragraphRange:(size_t)a5 baseWritingDirection:(uint64_t)a6 fallbackBaseWritingDirection:(int)a7 bidiLevels:
{
  objc_opt_self();
  if (a5)
  {
    if (a2)
    {
      v11 = [a2 baseWritingDirectionResolutionStrategy];
    }

    else
    {
      v11 = +[NSTextContentManager defaultBaseWritingDirectionResolutionStrategy];
    }

    v12 = v11 == 2 && a6 == -1;
    if (a6 == -1)
    {
      v13 = malloc_type_calloc(a5, 1uLL, 0x100004077774924uLL);
      memset(v13, a7, a5);
      if (v12)
      {
LABEL_10:
        CFAttributedStringGetStatisticalWritingDirections();
        if (!v13)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    CFAttributedStringGetBidiLevelsAndResolvedDirections();
    if (!v13)
    {
LABEL_15:
      free(v13);
      return a6;
    }

LABEL_14:
    a6 = *v13;
    goto LABEL_15;
  }

  return a6;
}

@end