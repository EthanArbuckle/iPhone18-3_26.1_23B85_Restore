@interface _NSParagraphBidiLevelsProducer
+ (uint64_t)resolvedBaseWritingDirectionForTextContentManager:(uint64_t)manager AttributedString:(uint64_t)string paragraphRange:(size_t)range baseWritingDirection:(uint64_t)direction fallbackBaseWritingDirection:(int)writingDirection bidiLevels:;
@end

@implementation _NSParagraphBidiLevelsProducer

+ (uint64_t)resolvedBaseWritingDirectionForTextContentManager:(uint64_t)manager AttributedString:(uint64_t)string paragraphRange:(size_t)range baseWritingDirection:(uint64_t)direction fallbackBaseWritingDirection:(int)writingDirection bidiLevels:
{
  objc_opt_self();
  if (range)
  {
    if (a2)
    {
      baseWritingDirectionResolutionStrategy = [a2 baseWritingDirectionResolutionStrategy];
    }

    else
    {
      baseWritingDirectionResolutionStrategy = +[NSTextContentManager defaultBaseWritingDirectionResolutionStrategy];
    }

    v12 = baseWritingDirectionResolutionStrategy == 2 && direction == -1;
    if (direction == -1)
    {
      v13 = malloc_type_calloc(range, 1uLL, 0x100004077774924uLL);
      memset(v13, writingDirection, range);
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
      return direction;
    }

LABEL_14:
    direction = *v13;
    goto LABEL_15;
  }

  return direction;
}

@end