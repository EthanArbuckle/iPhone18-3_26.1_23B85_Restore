@interface UIKBSplitRow
- (CGSize)defaultKeySize;
- (UIKBSplitRow)init;
- (id)description;
- (id)keyAtIndex:(int)a3;
- (id)listOfType:(int)a3 left:(BOOL)a4;
- (void)addKey:(id)a3;
- (void)dealloc;
- (void)setRowIndex:(unsigned __int8)a3;
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

- (void)addKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBSplitRow *)self keys];
  [v5 addObject:v4];
}

- (void)setRowIndex:(unsigned __int8)a3
{
  v3 = a3;
  self->_rowIndex = a3;
  [(UIKBTree *)self->_keylistLeft setDisplayRowHint:(a3 + 1)];
  [(UIKBTree *)self->_keylistRight setDisplayRowHint:(v3 + 1)];
  [(UIKBTree *)self->_geolistLeft setDisplayRowHint:(v3 + 1)];
  geolistRight = self->_geolistRight;

  [(UIKBTree *)geolistRight setDisplayRowHint:(v3 + 1)];
}

- (id)keyAtIndex:(int)a3
{
  v5 = [(UIKBSplitRow *)self keys];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(UIKBSplitRow *)self keys];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)listOfType:(int)a3 left:(BOOL)a4
{
  switch(a3)
  {
    case 2:
      v5 = !a4;
      v6 = 112;
      v7 = 88;
      goto LABEL_7;
    case 1:
      v5 = !a4;
      v6 = 104;
      v7 = 80;
      goto LABEL_7;
    case 0:
      v5 = !a4;
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
  v4 = [(UIKBSplitRow *)self keys];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@\n", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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