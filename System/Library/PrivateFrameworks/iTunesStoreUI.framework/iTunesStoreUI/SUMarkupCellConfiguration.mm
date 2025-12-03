@interface SUMarkupCellConfiguration
+ (double)rowHeightForContext:(id)context representedObject:(id)object;
@end

@implementation SUMarkupCellConfiguration

+ (double)rowHeightForContext:(id)context representedObject:(id)object
{
  if (context && object)
  {
    [objc_msgSend(context webViewForMarkup:{objc_msgSend(object, "humanReadableDescription")), "frame"}];
    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUMarkupCellConfiguration;
    objc_msgSendSuper2(&v6, sel_rowHeightForContext_representedObject_, context, object);
  }

  return result;
}

@end