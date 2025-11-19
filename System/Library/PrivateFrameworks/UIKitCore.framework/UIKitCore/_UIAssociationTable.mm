@interface _UIAssociationTable
- (BOOL)hasLeftValuesForRightValue:(id)a3;
- (BOOL)hasRightValuesForLeftValue:(id)a3;
- (_UIAssociationTable)initWithLeftValueOptions:(unint64_t)a3 rightValueOptions:(unint64_t)a4;
- (id)description;
- (id)leftValuesForRightValue:(id)a3;
- (id)rightValuesForLeftValue:(id)a3;
- (void)registerAssociationWithLeftValue:(id)a3 rightValue:(id)a4;
- (void)unregisterAssociationWithLeftValue:(id)a3 rightValue:(id)a4;
@end

@implementation _UIAssociationTable

- (_UIAssociationTable)initWithLeftValueOptions:(unint64_t)a3 rightValueOptions:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = _UIAssociationTable;
  v6 = [(_UIAssociationTable *)&v13 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:a3 valueOptions:512 capacity:16];
    leftToRightHashTables = v6->_leftToRightHashTables;
    v6->_leftToRightHashTables = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:a4 valueOptions:512 capacity:16];
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

- (void)registerAssociationWithLeftValue:(id)a3 rightValue:(id)a4
{
  leftToRightHashTables = self->_leftToRightHashTables;
  v7 = a4;
  v8 = a3;
  registerObjectInMapOfHashTables(leftToRightHashTables, v8, v7);
  registerObjectInMapOfHashTables(self->_rightToLeftHashTables, v7, v8);
}

- (void)unregisterAssociationWithLeftValue:(id)a3 rightValue:(id)a4
{
  leftToRightHashTables = self->_leftToRightHashTables;
  v7 = a4;
  v8 = a3;
  unregisterObjectFromMapOfHashTables(leftToRightHashTables, v8, v7);
  unregisterObjectFromMapOfHashTables(self->_rightToLeftHashTables, v7, v8);
}

- (id)leftValuesForRightValue:(id)a3
{
  v3 = [(NSMapTable *)self->_rightToLeftHashTables objectForKey:a3];
  v4 = [v3 allObjects];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (id)rightValuesForLeftValue:(id)a3
{
  v3 = [(NSMapTable *)self->_leftToRightHashTables objectForKey:a3];
  v4 = [v3 allObjects];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (BOOL)hasLeftValuesForRightValue:(id)a3
{
  v3 = [(NSMapTable *)self->_rightToLeftHashTables objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasRightValuesForLeftValue:(id)a3
{
  v3 = [(NSMapTable *)self->_leftToRightHashTables objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

@end