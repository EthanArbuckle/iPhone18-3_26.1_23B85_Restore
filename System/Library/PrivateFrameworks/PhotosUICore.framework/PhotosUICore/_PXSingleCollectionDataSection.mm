@interface _PXSingleCollectionDataSection
- (_PXSingleCollectionDataSection)initWithDisplayCollection:(id)a3 accessoryTitle:(id)a4 lockState:(unint64_t)a5 outlineObject:(id)a6;
- (id)objectAtIndex:(int64_t)a3;
- (int64_t)indexOfCollection:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation _PXSingleCollectionDataSection

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (var0 >= [(_PXSingleCollectionDataSection *)self count])
  {
    return 0;
  }

  result = 1;
  a3->var0 = 1;
  a3->var1 = self->_collectionArray;
  a3->var2 = &self->_enumerationMutations;
  return result;
}

- (id)objectAtIndex:(int64_t)a3
{
  if ([(_PXSingleCollectionDataSection *)self count]<= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%p: index (%lu) beyond bounds (%lu)", self, a3, -[_PXSingleCollectionDataSection count](self, "count")}];
    v5 = 0;
  }

  else
  {
    v5 = self->_displayCollection;
  }

  return v5;
}

- (int64_t)indexOfCollection:(id)a3
{
  if ([a3 isEqual:self->_displayCollection])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (_PXSingleCollectionDataSection)initWithDisplayCollection:(id)a3 accessoryTitle:(id)a4 lockState:(unint64_t)a5 outlineObject:(id)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = _PXSingleCollectionDataSection;
  v13 = [(PXDataSection *)&v18 initWithOutlineObject:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_displayCollection, a3);
    v14->_collectionArray[0] = v11;
    v15 = [v12 copy];
    accessoryTitle = v14->_accessoryTitle;
    v14->_accessoryTitle = v15;

    v14->_lockState = a5;
    v14->_count = v11 != 0;
  }

  return v14;
}

@end