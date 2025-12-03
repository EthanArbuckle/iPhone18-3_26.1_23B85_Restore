@interface _UIAssociationTable
- (BOOL)hasLeftValuesForRightValue:(id)value;
- (BOOL)hasRightValuesForLeftValue:(id)value;
- (_UIAssociationTable)initWithLeftValueOptions:(unint64_t)options rightValueOptions:(unint64_t)valueOptions;
- (id)description;
- (id)leftValuesForRightValue:(id)value;
- (id)rightValuesForLeftValue:(id)value;
- (void)registerAssociationWithLeftValue:(id)value rightValue:(id)rightValue;
- (void)unregisterAssociationWithLeftValue:(id)value rightValue:(id)rightValue;
@end

@implementation _UIAssociationTable

- (_UIAssociationTable)initWithLeftValueOptions:(unint64_t)options rightValueOptions:(unint64_t)valueOptions
{
  v13.receiver = self;
  v13.super_class = _UIAssociationTable;
  v6 = [(_UIAssociationTable *)&v13 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:options valueOptions:512 capacity:16];
    leftToRightHashTables = v6->_leftToRightHashTables;
    v6->_leftToRightHashTables = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:valueOptions valueOptions:512 capacity:16];
    rightToLeftHashTables = v6->_rightToLeftHashTables;
    v6->_rightToLeftHashTables = v9;

    v11 = v6;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p left->right=%@, right->left=%@>", v5, self, self->_leftToRightHashTables, self->_rightToLeftHashTables];

  return v6;
}

- (void)registerAssociationWithLeftValue:(id)value rightValue:(id)rightValue
{
  leftToRightHashTables = self->_leftToRightHashTables;
  rightValueCopy = rightValue;
  valueCopy = value;
  registerObjectInMapOfHashTables(leftToRightHashTables, valueCopy, rightValueCopy);
  registerObjectInMapOfHashTables(self->_rightToLeftHashTables, rightValueCopy, valueCopy);
}

- (void)unregisterAssociationWithLeftValue:(id)value rightValue:(id)rightValue
{
  leftToRightHashTables = self->_leftToRightHashTables;
  rightValueCopy = rightValue;
  valueCopy = value;
  unregisterObjectFromMapOfHashTables(leftToRightHashTables, valueCopy, rightValueCopy);
  unregisterObjectFromMapOfHashTables(self->_rightToLeftHashTables, rightValueCopy, valueCopy);
}

- (id)leftValuesForRightValue:(id)value
{
  v3 = [(NSMapTable *)self->_rightToLeftHashTables objectForKey:value];
  allObjects = [v3 allObjects];
  v5 = allObjects;
  if (allObjects)
  {
    v6 = allObjects;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (id)rightValuesForLeftValue:(id)value
{
  v3 = [(NSMapTable *)self->_leftToRightHashTables objectForKey:value];
  allObjects = [v3 allObjects];
  v5 = allObjects;
  if (allObjects)
  {
    v6 = allObjects;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (BOOL)hasLeftValuesForRightValue:(id)value
{
  v3 = [(NSMapTable *)self->_rightToLeftHashTables objectForKey:value];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasRightValuesForLeftValue:(id)value
{
  v3 = [(NSMapTable *)self->_leftToRightHashTables objectForKey:value];
  v4 = v3 != 0;

  return v4;
}

@end