@interface SBHLocalizedIndexedCollationStrategy
+ (id)defaultCollationStrategy;
+ (id)dimSumCollationStrategy;
+ (id)myCurrentCollation;
+ (void)prewarm;
- (BOOL)isEqual:(id)equal;
- (SBHLocalizedIndexedCollationStrategy)initWithAdditionalSections:(id)sections;
- (id)sortedArrayFromArray:(id)array collationStringSelector:(SEL)selector;
- (int64_t)sectionForObject:(id)object collationStringSelector:(SEL)selector;
- (int64_t)sectionForSectionIndexTitleAtIndex:(int64_t)index;
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
  myCurrentCollation = [self myCurrentCollation];
  [myCurrentCollation tokenizer];

  v4 = +[SBHLocalizedIndexedCollationStrategy myCurrentCollation];
  sectionTitles = [v4 sectionTitles];
  v6 = __defaultSectionTitles;
  __defaultSectionTitles = sectionTitles;

  v7 = +[SBHLocalizedIndexedCollationStrategy myCurrentCollation];
  sectionIndexTitles = [v7 sectionIndexTitles];
  v9 = __defaultSectionIndexTitles;
  __defaultSectionIndexTitles = sectionIndexTitles;

  dimSumCollationStrategy = [self dimSumCollationStrategy];
  defaultCollationStrategy = [self defaultCollationStrategy];
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

- (SBHLocalizedIndexedCollationStrategy)initWithAdditionalSections:(id)sections
{
  sectionsCopy = sections;
  v19.receiver = self;
  v19.super_class = SBHLocalizedIndexedCollationStrategy;
  v5 = [(SBHLocalizedIndexedCollationStrategy *)&v19 init];
  if (v5)
  {
    v6 = +[SBHLocalizedIndexedCollationStrategy myCurrentCollation];
    currentCollation = v5->_currentCollation;
    v5->_currentCollation = v6;

    defaultSectionTitles = [objc_opt_class() defaultSectionTitles];
    cachedSectionTitles = v5->_cachedSectionTitles;
    v5->_cachedSectionTitles = defaultSectionTitles;

    defaultSectionIndexTitles = [objc_opt_class() defaultSectionIndexTitles];
    cachedSectionIndexTitles = v5->_cachedSectionIndexTitles;
    v5->_cachedSectionIndexTitles = defaultSectionIndexTitles;

    if ([sectionsCopy count])
    {
      v12 = [(NSArray *)v5->_cachedSectionTitles arrayByAddingObjectsFromArray:sectionsCopy];
      v13 = v5->_cachedSectionTitles;
      v5->_cachedSectionTitles = v12;

      v14 = [(NSArray *)v5->_cachedSectionIndexTitles arrayByAddingObjectsFromArray:sectionsCopy];
      v15 = v5->_cachedSectionIndexTitles;
      v5->_cachedSectionIndexTitles = v14;

      v16 = [sectionsCopy copy];
      appendedSections = v5->_appendedSections;
      v5->_appendedSections = v16;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  BSDispatchQueueAssertMain();
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (equalCopy && (isKindOfClass & 1) != 0)
    {
      v6 = BSEqualObjects();
    }
  }

  return v6;
}

- (int64_t)sectionForObject:(id)object collationStringSelector:(SEL)selector
{
  objectCopy = object;
  BSDispatchQueueAssertMain();
  v7 = [(UILocalizedIndexedCollation *)self->_currentCollation sectionForObject:objectCopy collationStringSelector:selector];
  if (self->_appendedSections)
  {
    v8 = [objectCopy performSelector:sel__sbhIconLibraryOverrideCollationSectionTitle];
    if (v8)
    {
      v7 = [(NSArray *)self->_cachedSectionIndexTitles indexOfObject:v8];
    }
  }

  return v7;
}

- (id)sortedArrayFromArray:(id)array collationStringSelector:(SEL)selector
{
  arrayCopy = array;
  BSDispatchQueueAssertMain();
  v7 = [(UILocalizedIndexedCollation *)self->_currentCollation sortedArrayFromArray:arrayCopy collationStringSelector:selector];

  return v7;
}

- (int64_t)sectionForSectionIndexTitleAtIndex:(int64_t)index
{
  BSDispatchQueueAssertMain();
  currentCollation = self->_currentCollation;

  return [(UILocalizedIndexedCollation *)currentCollation sectionForSectionIndexTitleAtIndex:index];
}

@end