@interface DBTDuxburyFormatNode
- (DBTDuxburyFormatNode)init;
- (id)LaTeXRepresentation;
- (id)_debugDescriptionWithIndent:(unint64_t)a3;
- (id)firstChildMatchingBlock:(id)a3;
@end

@implementation DBTDuxburyFormatNode

- (DBTDuxburyFormatNode)init
{
  v6.receiver = self;
  v6.super_class = DBTDuxburyFormatNode;
  v2 = [(DBTDuxburyFormatNode *)&v6 init];
  v3 = +[NSMutableArray array];
  children = v2->_children;
  v2->_children = v3;

  v2->_closed = 0;
  return v2;
}

- (id)firstChildMatchingBlock:(id)a3
{
  v4 = a3;
  v5 = [(DBTDuxburyFormatNode *)self children];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    while (1)
    {
      v7 = [v6 lastObject];
      [v6 removeLastObject];
      if (v4[2](v4, v7))
      {
        break;
      }

      v8 = [v7 children];
      [v6 addObjectsFromArray:v8];

      if (![v6 count])
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v7 = 0;
  }

  return v7;
}

- (id)LaTeXRepresentation
{
  v3 = +[NSMutableString string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_children;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) LaTeXRepresentation];
        [v3 appendString:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_debugDescriptionWithIndent:(unint64_t)a3
{
  v5 = +[NSMutableString string];
  if (a3)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@" "];
      --v6;
    }

    while (v6);
  }

  v7 = [(DBTDuxburyFormatNode *)self description];
  [v5 appendString:v7];

  if ([(NSMutableArray *)self->_children count])
  {
    [v5 appendString:@"\n"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_children;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 _debugDescriptionWithIndent:{a3 + 2, v17}];
          [v5 appendString:v14];

          v15 = [(NSMutableArray *)self->_children lastObject];

          if (v13 != v15)
          {
            [v5 appendString:@"\n"];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

@end