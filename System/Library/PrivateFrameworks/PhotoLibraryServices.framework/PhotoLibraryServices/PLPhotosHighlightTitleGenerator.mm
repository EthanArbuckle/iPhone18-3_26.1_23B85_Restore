@interface PLPhotosHighlightTitleGenerator
+ (BOOL)canUseSharingComposition:(signed __int16)composition forPhotosHighlightFilter:(unsigned __int16)filter;
+ (id)titleForHighlight:(id)highlight filter:(unsigned __int16)filter dateRangeTitleGenerator:(id)generator options:(unint64_t)options;
@end

@implementation PLPhotosHighlightTitleGenerator

+ (BOOL)canUseSharingComposition:(signed __int16)composition forPhotosHighlightFilter:(unsigned __int16)filter
{
  v4 = (composition & 0xFFFD) == 0;
  if (filter != 1)
  {
    v4 = 0;
  }

  if (filter == 2)
  {
    v4 = composition - 1 < 2;
  }

  return !filter || v4;
}

+ (id)titleForHighlight:(id)highlight filter:(unsigned __int16)filter dateRangeTitleGenerator:(id)generator options:(unint64_t)options
{
  filterCopy = filter;
  highlightCopy = highlight;
  generatorCopy = generator;
  if (![self canUseSharingComposition:objc_msgSend(highlightCopy forPhotosHighlightFilter:{"sharingComposition"), filterCopy}])
  {
    goto LABEL_10;
  }

  if ([highlightCopy sharingComposition] == 2)
  {
    filterCopy = filterCopy;
  }

  else
  {
    filterCopy = 0;
  }

  kind = [highlightCopy kind];
  if ((kind - 1) < 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlightTitleGenerator.m" lineNumber:152 description:{@"Cannot call %s on highlight of this kind: %@", "+[PLPhotosHighlightTitleGenerator titleForHighlight:filter:dateRangeTitleGenerator:options:]", highlightCopy}];

    goto LABEL_10;
  }

  if (kind == 3)
  {
    v14 = PLDayGroupPhotosHighlightTitleGenerator;
    goto LABEL_12;
  }

  if (kind)
  {
LABEL_10:
    v16 = 0;
    goto LABEL_13;
  }

  v14 = PLDayPhotosHighlightTitleGenerator;
LABEL_12:
  v16 = [(__objc2_class *)v14 titleForHighlight:highlightCopy filter:filterCopy dateRangeTitleGenerator:generatorCopy options:options];
LABEL_13:

  return v16;
}

@end