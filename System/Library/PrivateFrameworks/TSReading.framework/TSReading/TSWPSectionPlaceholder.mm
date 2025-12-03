@interface TSWPSectionPlaceholder
- (BOOL)isEqual:(id)equal;
- (TSWPSectionPlaceholder)initWithContext:(id)context;
- (id)copyWithContext:(id)context;
- (id)description;
- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet;
@end

@implementation TSWPSectionPlaceholder

- (TSWPSectionPlaceholder)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSWPSectionPlaceholder;
  return [(TSPObject *)&v4 initWithContext:context];
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = TSWPSectionPlaceholder;
  return [(TSWPSectionPlaceholder *)&v4 isEqual:equal];
}

- (id)copyWithContext:(id)context
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithContext:context];
}

- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSectionPlaceholder i_ensureHeaderFooterStoragesExistWithStylesheet:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSectionPlaceholder.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:89 description:@"Should be defined in the real section class: i_ensureHeaderFooterStoragesExistWithStylesheet:"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"[%@] 0x%p", NSStringFromClass(v4), self];
}

@end