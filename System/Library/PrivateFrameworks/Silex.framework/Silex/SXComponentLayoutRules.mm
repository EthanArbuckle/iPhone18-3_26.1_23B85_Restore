@interface SXComponentLayoutRules
+ (id)bodyComponentLayoutRules;
+ (id)defaultLayoutRules;
+ (id)fullWidthLayoutRules;
+ (id)twoColumnLayoutRules;
- (SXComponentLayoutRules)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SXComponentLayoutRules

- (SXComponentLayoutRules)init
{
  v3.receiver = self;
  v3.super_class = SXComponentLayoutRules;
  result = [(SXComponentLayoutRules *)&v3 init];
  if (result)
  {
    result->_minimumColumnSpan = 1;
    *&result->_allowsIntersection = 0x10000;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setMinimumColumnSpan:{-[SXComponentLayoutRules minimumColumnSpan](self, "minimumColumnSpan")}];
  [v4 setAllowsIntersection:{-[SXComponentLayoutRules allowsIntersection](self, "allowsIntersection")}];
  [v4 setShouldSpanAllColumns:{-[SXComponentLayoutRules shouldSpanAllColumns](self, "shouldSpanAllColumns")}];
  [v4 setShouldIgnoreDocumentMargin:{-[SXComponentLayoutRules shouldIgnoreDocumentMargin](self, "shouldIgnoreDocumentMargin")}];
  [v4 setAllowsSiblingBasedResizing:{-[SXComponentLayoutRules allowsSiblingBasedResizing](self, "allowsSiblingBasedResizing")}];
  return v4;
}

+ (id)defaultLayoutRules
{
  if (defaultLayoutRules_onceToken != -1)
  {
    +[SXComponentLayoutRules(Definitions) defaultLayoutRules];
  }

  v3 = defaultLayoutRules___defaultComponentLayoutRules;

  return v3;
}

uint64_t __57__SXComponentLayoutRules_Definitions__defaultLayoutRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentLayoutRules);
  v1 = defaultLayoutRules___defaultComponentLayoutRules;
  defaultLayoutRules___defaultComponentLayoutRules = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)fullWidthLayoutRules
{
  if (fullWidthLayoutRules_onceToken != -1)
  {
    +[SXComponentLayoutRules(Definitions) fullWidthLayoutRules];
  }

  v3 = fullWidthLayoutRules___fullWidthComponentLayoutRules;

  return v3;
}

uint64_t __59__SXComponentLayoutRules_Definitions__fullWidthLayoutRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentLayoutRules);
  v1 = fullWidthLayoutRules___fullWidthComponentLayoutRules;
  fullWidthLayoutRules___fullWidthComponentLayoutRules = v0;

  [fullWidthLayoutRules___fullWidthComponentLayoutRules setMinimumColumnSpan:1];
  [fullWidthLayoutRules___fullWidthComponentLayoutRules setShouldSpanAllColumns:1];
  v2 = fullWidthLayoutRules___fullWidthComponentLayoutRules;

  return [v2 setAllowsSiblingBasedResizing:0];
}

+ (id)twoColumnLayoutRules
{
  if (twoColumnLayoutRules_onceToken != -1)
  {
    +[SXComponentLayoutRules(Definitions) twoColumnLayoutRules];
  }

  v3 = twoColumnLayoutRules___twoColumnComponentLayoutRules;

  return v3;
}

uint64_t __59__SXComponentLayoutRules_Definitions__twoColumnLayoutRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentLayoutRules);
  v1 = twoColumnLayoutRules___twoColumnComponentLayoutRules;
  twoColumnLayoutRules___twoColumnComponentLayoutRules = v0;

  [twoColumnLayoutRules___twoColumnComponentLayoutRules setMinimumColumnSpan:2];
  v2 = twoColumnLayoutRules___twoColumnComponentLayoutRules;

  return [v2 setAllowsSiblingBasedResizing:0];
}

+ (id)bodyComponentLayoutRules
{
  if (bodyComponentLayoutRules_onceToken != -1)
  {
    +[SXComponentLayoutRules(Definitions) bodyComponentLayoutRules];
  }

  v3 = bodyComponentLayoutRules___bodyComponentLayoutRules;

  return v3;
}

uint64_t __63__SXComponentLayoutRules_Definitions__bodyComponentLayoutRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentLayoutRules);
  v1 = bodyComponentLayoutRules___bodyComponentLayoutRules;
  bodyComponentLayoutRules___bodyComponentLayoutRules = v0;

  [bodyComponentLayoutRules___bodyComponentLayoutRules setMinimumColumnSpan:2];
  v2 = bodyComponentLayoutRules___bodyComponentLayoutRules;

  return [v2 setAllowsIntersection:1];
}

@end