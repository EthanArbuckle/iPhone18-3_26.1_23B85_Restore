@interface SXComponentTextRules
+ (id)bodyTextRules;
+ (id)defaultTextRules;
+ (id)headingTextRules;
+ (id)smallTextRules;
+ (id)titleTextRules;
- (SXComponentTextRules)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SXComponentTextRules

+ (id)defaultTextRules
{
  if (defaultTextRules_onceToken != -1)
  {
    +[SXComponentTextRules(Definitions) defaultTextRules];
  }

  v3 = defaultTextRules___defaultTextRules;

  return v3;
}

uint64_t __53__SXComponentTextRules_Definitions__defaultTextRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentTextRules);
  v1 = defaultTextRules___defaultTextRules;
  defaultTextRules___defaultTextRules = v0;

  v2 = defaultTextRules___defaultTextRules;
  v3 = *MEMORY[0x1E69DDCF8];

  return [v2 setFontTextStyle:v3];
}

+ (id)bodyTextRules
{
  if (bodyTextRules_onceToken != -1)
  {
    +[SXComponentTextRules(Definitions) bodyTextRules];
  }

  v3 = bodyTextRules___bodyTextRules;

  return v3;
}

uint64_t __50__SXComponentTextRules_Definitions__bodyTextRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentTextRules);
  v1 = bodyTextRules___bodyTextRules;
  bodyTextRules___bodyTextRules = v0;

  [bodyTextRules___bodyTextRules setShouldHyphenate:1];
  [bodyTextRules___bodyTextRules setFontResizingTresholdFactor:1.0];
  [bodyTextRules___bodyTextRules setFontSizeConstant:0.816];
  [bodyTextRules___bodyTextRules setAllowsScrollPositionRestore:1];
  [bodyTextRules___bodyTextRules setIsSelectable:1];
  [bodyTextRules___bodyTextRules setTextFlow:1];
  v2 = bodyTextRules___bodyTextRules;
  v3 = *MEMORY[0x1E69DDCF8];

  return [v2 setFontTextStyle:v3];
}

+ (id)smallTextRules
{
  if (smallTextRules_onceToken != -1)
  {
    +[SXComponentTextRules(Definitions) smallTextRules];
  }

  v3 = smallTextRules___smallTextRules;

  return v3;
}

uint64_t __51__SXComponentTextRules_Definitions__smallTextRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentTextRules);
  v1 = smallTextRules___smallTextRules;
  smallTextRules___smallTextRules = v0;

  [smallTextRules___smallTextRules setFontResizingTresholdFactor:1.0];
  [smallTextRules___smallTextRules setFontSizeConstant:0.816];
  v2 = smallTextRules___smallTextRules;
  v3 = *MEMORY[0x1E69DDD08];

  return [v2 setFontTextStyle:v3];
}

+ (id)titleTextRules
{
  if (titleTextRules_onceToken != -1)
  {
    +[SXComponentTextRules(Definitions) titleTextRules];
  }

  v3 = titleTextRules___titleTextRules;

  return v3;
}

uint64_t __51__SXComponentTextRules_Definitions__titleTextRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentTextRules);
  v1 = titleTextRules___titleTextRules;
  titleTextRules___titleTextRules = v0;

  [titleTextRules___titleTextRules setTextFlow:1];
  v2 = titleTextRules___titleTextRules;
  v3 = *MEMORY[0x1E69DDDB8];

  return [v2 setFontTextStyle:v3];
}

+ (id)headingTextRules
{
  if (headingTextRules_onceToken != -1)
  {
    +[SXComponentTextRules(Definitions) headingTextRules];
  }

  v3 = headingTextRules___headingTextRules;

  return v3;
}

uint64_t __53__SXComponentTextRules_Definitions__headingTextRules__block_invoke()
{
  v0 = objc_alloc_init(SXComponentTextRules);
  v1 = headingTextRules___headingTextRules;
  headingTextRules___headingTextRules = v0;

  [headingTextRules___headingTextRules setTextFlow:1];
  v2 = headingTextRules___headingTextRules;
  v3 = *MEMORY[0x1E69DDD40];

  return [v2 setFontTextStyle:v3];
}

- (SXComponentTextRules)init
{
  v5.receiver = self;
  v5.super_class = SXComponentTextRules;
  v2 = [(SXComponentTextRules *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_fontResizingTresholdFactor = xmmword_1D8392320;
    *&v2->_lineHeightConstant = xmmword_1D8392330;
    *&v2->_shouldHyphenate = 256;
    v2->_allowsScrollPositionRestore = 0;
    v2->_textFlow = 0;
    objc_storeStrong(&v2->_fontTextStyle, *MEMORY[0x1E69DDCF8]);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(SXComponentTextRules *)self fontResizingTresholdFactor];
  [v4 setFontResizingTresholdFactor:?];
  [(SXComponentTextRules *)self fontSizeConstant];
  [v4 setFontSizeConstant:?];
  [(SXComponentTextRules *)self lineHeightConstant];
  [v4 setLineHeightConstant:?];
  [(SXComponentTextRules *)self dropCapConstant];
  [v4 setDropCapConstant:?];
  [v4 setShouldHyphenate:{-[SXComponentTextRules shouldHyphenate](self, "shouldHyphenate")}];
  [v4 setAllowsScrollPositionRestore:{-[SXComponentTextRules allowsScrollPositionRestore](self, "allowsScrollPositionRestore")}];
  [v4 setIsSelectable:{-[SXComponentTextRules isSelectable](self, "isSelectable")}];
  [v4 setTextFlow:{-[SXComponentTextRules textFlow](self, "textFlow")}];
  v5 = [(SXComponentTextRules *)self fontTextStyle];
  [v4 setFontTextStyle:v5];

  return v4;
}

@end