@interface SUMarkupCellConfiguration
+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4;
@end

@implementation SUMarkupCellConfiguration

+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4
{
  if (a3 && a4)
  {
    [objc_msgSend(a3 webViewForMarkup:{objc_msgSend(a4, "humanReadableDescription")), "frame"}];
    return v4;
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUMarkupCellConfiguration;
    objc_msgSendSuper2(&v6, sel_rowHeightForContext_representedObject_, a3, a4);
  }

  return result;
}

@end