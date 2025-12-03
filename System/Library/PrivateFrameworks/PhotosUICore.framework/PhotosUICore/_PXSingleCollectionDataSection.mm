@interface _PXSingleCollectionDataSection
- (_PXSingleCollectionDataSection)initWithDisplayCollection:(id)collection accessoryTitle:(id)title lockState:(unint64_t)state outlineObject:(id)object;
- (id)objectAtIndex:(int64_t)index;
- (int64_t)indexOfCollection:(id)collection;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation _PXSingleCollectionDataSection

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (var0 >= [(_PXSingleCollectionDataSection *)self count])
  {
    return 0;
  }

  result = 1;
  state->var0 = 1;
  state->var1 = self->_collectionArray;
  state->var2 = &self->_enumerationMutations;
  return result;
}

- (id)objectAtIndex:(int64_t)index
{
  if ([(_PXSingleCollectionDataSection *)self count]<= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%p: index (%lu) beyond bounds (%lu)", self, index, -[_PXSingleCollectionDataSection count](self, "count")}];
    v5 = 0;
  }

  else
  {
    v5 = self->_displayCollection;
  }

  return v5;
}

- (int64_t)indexOfCollection:(id)collection
{
  if ([collection isEqual:self->_displayCollection])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (_PXSingleCollectionDataSection)initWithDisplayCollection:(id)collection accessoryTitle:(id)title lockState:(unint64_t)state outlineObject:(id)object
{
  collectionCopy = collection;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = _PXSingleCollectionDataSection;
  v13 = [(PXDataSection *)&v18 initWithOutlineObject:object];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_displayCollection, collection);
    v14->_collectionArray[0] = collectionCopy;
    v15 = [titleCopy copy];
    accessoryTitle = v14->_accessoryTitle;
    v14->_accessoryTitle = v15;

    v14->_lockState = state;
    v14->_count = collectionCopy != 0;
  }

  return v14;
}

@end