@interface PXArrayDataSection
- (PXArrayDataSection)initWithOutlineObject:(id)object;
- (PXArrayDataSection)initWithOutlineObject:(id)object sectionContent:(id)content;
- (id)objectAtIndex:(int64_t)index;
- (int64_t)count;
- (int64_t)indexOfObject:(id)object;
- (int64_t)validatedIndexOfObject:(id)object hintIndex:(int64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation PXArrayDataSection

- (int64_t)validatedIndexOfObject:(id)object hintIndex:(int64_t)index
{
  objectCopy = object;
  if (index == 0x7FFFFFFFFFFFFFFFLL || (-[PXArrayDataSection objectAtIndex:](self, "objectAtIndex:", index), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:objectCopy], v7, (v8 & 1) == 0))
  {
    index = [(PXArrayDataSection *)self indexOfObject:objectCopy];
  }

  return index;
}

- (int64_t)indexOfObject:(id)object
{
  objectCopy = object;
  sectionContent = [(PXArrayDataSection *)self sectionContent];
  v6 = [sectionContent indexOfObject:objectCopy];

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  sectionContent = [(PXArrayDataSection *)self sectionContent];
  v9 = [sectionContent countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (id)objectAtIndex:(int64_t)index
{
  sectionContent = [(PXArrayDataSection *)self sectionContent];
  v5 = [sectionContent objectAtIndex:index];

  return v5;
}

- (int64_t)count
{
  sectionContent = [(PXArrayDataSection *)self sectionContent];
  v3 = [sectionContent count];

  return v3;
}

- (PXArrayDataSection)initWithOutlineObject:(id)object
{
  objectCopy = object;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDataSection.m" lineNumber:90 description:{@"%s is not available as initializer", "-[PXArrayDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXArrayDataSection)initWithOutlineObject:(id)object sectionContent:(id)content
{
  contentCopy = content;
  v11.receiver = self;
  v11.super_class = PXArrayDataSection;
  v7 = [(PXDataSection *)&v11 initWithOutlineObject:object];
  if (v7)
  {
    v8 = [contentCopy copy];
    sectionContent = v7->_sectionContent;
    v7->_sectionContent = v8;
  }

  return v7;
}

@end