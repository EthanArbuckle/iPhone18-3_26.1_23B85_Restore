@interface SBHLocalizedIndexedCollationStrategy
+ (id)defaultCollationStrategy;
+ (id)dimSumCollationStrategy;
+ (id)myCurrentCollation;
+ (void)prewarm;
- (BOOL)isEqual:(id)a3;
- (SBHLocalizedIndexedCollationStrategy)initWithAdditionalSections:(id)a3;
- (id)sortedArrayFromArray:(id)a3 collationStringSelector:(SEL)a4;
- (int64_t)sectionForObject:(id)a3 collationStringSelector:(SEL)a4;
- (int64_t)sectionForSectionIndexTitleAtIndex:(int64_t)a3;
@end

@implementation SBHLocalizedIndexedCollationStrategy

+ (id)myCurrentCollation
{
  BSDispatchQueueAssertMain();
  if (myCurrentCollation_onceToken != -1)
  {
    +[SBHLocalizedIndexedCollationStrategy myCurrentCollation];
  }

  v2 = myCurrentCollation_currentCollation;

  return v2;
}

uint64_t __58__SBHLocalizedIndexedCollationStrategy_myCurrentCollation__block_invoke()
{
  v0 = [MEMORY[0x1E69DCC40] currentCollation];
  v1 = myCurrentCollation_currentCollation;
  myCurrentCollation_currentCollation = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)prewarm
{
  BSDispatchQueueAssertMain();
  v3 = [a1 myCurrentCollation];
  [v3 tokenizer];

  v4 = +[SBHLocalizedIndexedCollationStrategy myCurrentCollation];
  v5 = [v4 sectionTitles];
  v6 = __defaultSectionTitles;
  __defaultSectionTitles = v5;

  v7 = +[SBHLocalizedIndexedCollationStrategy myCurrentCollation];
  v8 = [v7 sectionIndexTitles];
  v9 = __defaultSectionIndexTitles;
  __defaultSectionIndexTitles = v8;

  v10 = [a1 dimSumCollationStrategy];
  v11 = [a1 defaultCollationStrategy];
}

+ (id)dimSumCollationStrategy
{
  if (dimSumCollationStrategy_onceToken != -1)
  {
    +[SBHLocalizedIndexedCollationStrategy dimSumCollationStrategy];
  }

  v3 = dimSumCollationStrategy_dimSumCollation;

  return v3;
}

void __63__SBHLocalizedIndexedCollationStrategy_dimSumCollationStrategy__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = [SBHLocalizedIndexedCollationStrategy alloc];
  v4[0] = *MEMORY[0x1E69DE3E0];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [(SBHLocalizedIndexedCollationStrategy *)v0 initWithAdditionalSections:v1];
  v3 = dimSumCollationStrategy_dimSumCollation;
  dimSumCollationStrategy_dimSumCollation = v2;
}

+ (id)defaultCollationStrategy
{
  if (defaultCollationStrategy_onceToken != -1)
  {
    +[SBHLocalizedIndexedCollationStrategy defaultCollationStrategy];
  }

  v3 = defaultCollationStrategy_defaultCollationStrategy;

  return v3;
}

uint64_t __64__SBHLocalizedIndexedCollationStrategy_defaultCollationStrategy__block_invoke()
{
  v0 = [[SBHLocalizedIndexedCollationStrategy alloc] initWithAdditionalSections:0];
  v1 = defaultCollationStrategy_defaultCollationStrategy;
  defaultCollationStrategy_defaultCollationStrategy = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBHLocalizedIndexedCollationStrategy)initWithAdditionalSections:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBHLocalizedIndexedCollationStrategy;
  v5 = [(SBHLocalizedIndexedCollationStrategy *)&v19 init];
  if (v5)
  {
    v6 = +[SBHLocalizedIndexedCollationStrategy myCurrentCollation];
    currentCollation = v5->_currentCollation;
    v5->_currentCollation = v6;

    v8 = [objc_opt_class() defaultSectionTitles];
    cachedSectionTitles = v5->_cachedSectionTitles;
    v5->_cachedSectionTitles = v8;

    v10 = [objc_opt_class() defaultSectionIndexTitles];
    cachedSectionIndexTitles = v5->_cachedSectionIndexTitles;
    v5->_cachedSectionIndexTitles = v10;

    if ([v4 count])
    {
      v12 = [(NSArray *)v5->_cachedSectionTitles arrayByAddingObjectsFromArray:v4];
      v13 = v5->_cachedSectionTitles;
      v5->_cachedSectionTitles = v12;

      v14 = [(NSArray *)v5->_cachedSectionIndexTitles arrayByAddingObjectsFromArray:v4];
      v15 = v5->_cachedSectionIndexTitles;
      v5->_cachedSectionIndexTitles = v14;

      v16 = [v4 copy];
      appendedSections = v5->_appendedSections;
      v5->_appendedSections = v16;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (v4 && (isKindOfClass & 1) != 0)
    {
      v6 = BSEqualObjects();
    }
  }

  return v6;
}

- (int64_t)sectionForObject:(id)a3 collationStringSelector:(SEL)a4
{
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [(UILocalizedIndexedCollation *)self->_currentCollation sectionForObject:v6 collationStringSelector:a4];
  if (self->_appendedSections)
  {
    v8 = [v6 performSelector:sel__sbhIconLibraryOverrideCollationSectionTitle];
    if (v8)
    {
      v7 = [(NSArray *)self->_cachedSectionIndexTitles indexOfObject:v8];
    }
  }

  return v7;
}

- (id)sortedArrayFromArray:(id)a3 collationStringSelector:(SEL)a4
{
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [(UILocalizedIndexedCollation *)self->_currentCollation sortedArrayFromArray:v6 collationStringSelector:a4];

  return v7;
}

- (int64_t)sectionForSectionIndexTitleAtIndex:(int64_t)a3
{
  BSDispatchQueueAssertMain();
  currentCollation = self->_currentCollation;

  return [(UILocalizedIndexedCollation *)currentCollation sectionForSectionIndexTitleAtIndex:a3];
}

@end