@interface PXArrayDataSection
- (PXArrayDataSection)initWithOutlineObject:(id)a3;
- (PXArrayDataSection)initWithOutlineObject:(id)a3 sectionContent:(id)a4;
- (id)objectAtIndex:(int64_t)a3;
- (int64_t)count;
- (int64_t)indexOfObject:(id)a3;
- (int64_t)validatedIndexOfObject:(id)a3 hintIndex:(int64_t)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation PXArrayDataSection

- (int64_t)validatedIndexOfObject:(id)a3 hintIndex:(int64_t)a4
{
  v6 = a3;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || (-[PXArrayDataSection objectAtIndex:](self, "objectAtIndex:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:v6], v7, (v8 & 1) == 0))
  {
    a4 = [(PXArrayDataSection *)self indexOfObject:v6];
  }

  return a4;
}

- (int64_t)indexOfObject:(id)a3
{
  v4 = a3;
  v5 = [(PXArrayDataSection *)self sectionContent];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(PXArrayDataSection *)self sectionContent];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (id)objectAtIndex:(int64_t)a3
{
  v4 = [(PXArrayDataSection *)self sectionContent];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)count
{
  v2 = [(PXArrayDataSection *)self sectionContent];
  v3 = [v2 count];

  return v3;
}

- (PXArrayDataSection)initWithOutlineObject:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXDataSection.m" lineNumber:90 description:{@"%s is not available as initializer", "-[PXArrayDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXArrayDataSection)initWithOutlineObject:(id)a3 sectionContent:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PXArrayDataSection;
  v7 = [(PXDataSection *)&v11 initWithOutlineObject:a3];
  if (v7)
  {
    v8 = [v6 copy];
    sectionContent = v7->_sectionContent;
    v7->_sectionContent = v8;
  }

  return v7;
}

@end