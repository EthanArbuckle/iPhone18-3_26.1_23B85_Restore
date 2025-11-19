@interface PLPhotosHighlightTitleGenerator
+ (BOOL)canUseSharingComposition:(signed __int16)a3 forPhotosHighlightFilter:(unsigned __int16)a4;
+ (id)titleForHighlight:(id)a3 filter:(unsigned __int16)a4 dateRangeTitleGenerator:(id)a5 options:(unint64_t)a6;
@end

@implementation PLPhotosHighlightTitleGenerator

+ (BOOL)canUseSharingComposition:(signed __int16)a3 forPhotosHighlightFilter:(unsigned __int16)a4
{
  v4 = (a3 & 0xFFFD) == 0;
  if (a4 != 1)
  {
    v4 = 0;
  }

  if (a4 == 2)
  {
    v4 = a3 - 1 < 2;
  }

  return !a4 || v4;
}

+ (id)titleForHighlight:(id)a3 filter:(unsigned __int16)a4 dateRangeTitleGenerator:(id)a5 options:(unint64_t)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  if (![a1 canUseSharingComposition:objc_msgSend(v11 forPhotosHighlightFilter:{"sharingComposition"), v8}])
  {
    goto LABEL_10;
  }

  if ([v11 sharingComposition] == 2)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = [v11 kind];
  if ((v13 - 1) < 2)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLPhotosHighlightTitleGenerator.m" lineNumber:152 description:{@"Cannot call %s on highlight of this kind: %@", "+[PLPhotosHighlightTitleGenerator titleForHighlight:filter:dateRangeTitleGenerator:options:]", v11}];

    goto LABEL_10;
  }

  if (v13 == 3)
  {
    v14 = PLDayGroupPhotosHighlightTitleGenerator;
    goto LABEL_12;
  }

  if (v13)
  {
LABEL_10:
    v16 = 0;
    goto LABEL_13;
  }

  v14 = PLDayPhotosHighlightTitleGenerator;
LABEL_12:
  v16 = [(__objc2_class *)v14 titleForHighlight:v11 filter:v8 dateRangeTitleGenerator:v12 options:a6];
LABEL_13:

  return v16;
}

@end