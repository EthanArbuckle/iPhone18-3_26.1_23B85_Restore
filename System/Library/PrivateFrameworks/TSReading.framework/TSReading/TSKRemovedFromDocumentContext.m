@interface TSKRemovedFromDocumentContext
+ (id)hidingContext;
+ (id)movingContext;
@end

@implementation TSKRemovedFromDocumentContext

+ (id)movingContext
{
  {
    +[TSKRemovedFromDocumentContext movingContext]::sMovingContext = objc_alloc_init(TSKRemovedFromDocumentContext_Moving);
  }

  return +[TSKRemovedFromDocumentContext movingContext]::sMovingContext;
}

+ (id)hidingContext
{
  {
    +[TSKRemovedFromDocumentContext hidingContext]::sHidingContext = objc_alloc_init(TSKRemovedFromDocumentContext_Hiding);
  }

  return +[TSKRemovedFromDocumentContext hidingContext]::sHidingContext;
}

@end