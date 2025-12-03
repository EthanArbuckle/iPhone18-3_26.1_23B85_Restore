@interface UIKBSplitRow
- (CGSize)defaultKeySize;
- (UIKBSplitRow)init;
- (id)description;
- (id)keyAtIndex:(int)index;
- (id)listOfType:(int)type left:(BOOL)left;
- (void)addKey:(id)key;
- (void)dealloc;
- (void)setRowIndex:(unsigned __int8)index;
@end

@implementation UIKBSplitRow

- (UIKBSplitRow)init
{
  v19.receiver = self;
  v19.super_class = UIKBSplitRow;
  v2 = [(UIKBSplitRow *)&v19 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    keys = v2->_keys;
    v2->_keys = v3;

    v5 = [UIKBTree treeOfType:7];
    keylistLeft = v2->_keylistLeft;
    v2->_keylistLeft = v5;

    v7 = [UIKBTree treeOfType:7];
    geolistLeft = v2->_geolistLeft;
    v2->_geolistLeft = v7;

    v9 = [UIKBTree treeOfType:7];
    attrlistLeft = v2->_attrlistLeft;
    v2->_attrlistLeft = v9;

    v11 = [UIKBTree treeOfType:7];
    keylistRight = v2->_keylistRight;
    v2->_keylistRight = v11;

    v13 = [UIKBTree treeOfType:7];
    geolistRight = v2->_geolistRight;
    v2->_geolistRight = v13;

    v15 = [UIKBTree treeOfType:7];
    attrlistRight = v2->_attrlistRight;
    v2->_attrlistRight = v15;

    v17 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(UIKBSplitRow *)self setHints:0];
  v3.receiver = self;
  v3.super_class = UIKBSplitRow;
  [(UIKBSplitRow *)&v3 dealloc];
}

- (void)addKey:(id)key
{
  keyCopy = key;
  keys = [(UIKBSplitRow *)self keys];
  [keys addObject:keyCopy];
}

- (void)setRowIndex:(unsigned __int8)index
{
  indexCopy = index;
  self->_rowIndex = index;
  [(UIKBTree *)self->_keylistLeft setDisplayRowHint:(index + 1)];
  [(UIKBTree *)self->_keylistRight setDisplayRowHint:(indexCopy + 1)];
  [(UIKBTree *)self->_geolistLeft setDisplayRowHint:(indexCopy + 1)];
  geolistRight = self->_geolistRight;

  [(UIKBTree *)geolistRight setDisplayRowHint:(indexCopy + 1)];
}

- (id)keyAtIndex:(int)index
{
  keys = [(UIKBSplitRow *)self keys];
  v6 = [keys count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    keys2 = [(UIKBSplitRow *)self keys];
    v8 = [keys2 objectAtIndex:index];
  }

  return v8;
}

- (id)listOfType:(int)type left:(BOOL)left
{
  switch(type)
  {
    case 2:
      v5 = !left;
      v6 = 112;
      v7 = 88;
      goto LABEL_7;
    case 1:
      v5 = !left;
      v6 = 104;
      v7 = 80;
      goto LABEL_7;
    case 0:
      v5 = !left;
      v6 = 96;
      v7 = 72;
LABEL_7:
      if (!v5)
      {
        v6 = v7;
      }

      v8 = *(&self->super.isa + v6);

      return v8;
  }

  v8 = 0;

  return v8;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"row : %d\n", -[UIKBSplitRow rowIndex](self, "rowIndex")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keys = [(UIKBSplitRow *)self keys];
  v5 = [keys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(keys);
        }

        [v3 appendFormat:@"%@\n", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [keys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGSize)defaultKeySize
{
  objc_copyStruct(v4, &self->_defaultKeySize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end