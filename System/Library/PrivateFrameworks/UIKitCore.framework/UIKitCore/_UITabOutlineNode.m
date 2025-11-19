@interface _UITabOutlineNode
- (BOOL)isEqual:(id)a3;
- (_UITabOutlineNode)initWithIdentifier:(id)a3;
- (_UITabOutlineNode)parent;
- (id)_descriptionWithIndentationLevel:(int64_t)a3;
- (void)addActionIdentifier:(id)a3;
- (void)addChild:(id)a3;
- (void)removeChild:(id)a3;
@end

@implementation _UITabOutlineNode

- (_UITabOutlineNode)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UITabOutlineNode;
  v6 = [(_UITabOutlineNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (void)addChild:(id)a3
{
  v7 = a3;
  [v7 setParent:self];
  children = self->_children;
  if (children)
  {
    [(NSMutableArray *)children addObject:v7];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
    v6 = self->_children;
    self->_children = v5;
  }
}

- (void)removeChild:(id)a3
{
  children = self->_children;
  v4 = a3;
  [(NSMutableArray *)children removeObject:v4];
  [v4 setParent:0];
}

- (void)addActionIdentifier:(id)a3
{
  actions = self->_actions;
  if (actions)
  {

    [(NSMutableArray *)actions addObject:a3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:a3];
    v6 = self->_actions;
    self->_actions = v5;
  }
}

- (id)_descriptionWithIndentationLevel:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [&stru_1EFB14550 stringByPaddingToLength:2 * a3 withString:@" " startingAtIndex:0];
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@ (%lu actions)", v5, self->_identifier, -[NSMutableArray count](self->_actions, "count")];
  v7 = [(_UITabOutlineNode *)self children];
  v8 = [v7 count];

  if (v8)
  {
    [v6 appendString:@" {\n"];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(_UITabOutlineNode *)self children];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) _descriptionWithIndentationLevel:a3 + 1];
          [v6 appendString:v14];
          [v6 appendString:@"\n"];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [v6 appendString:v5];
    [v6 appendString:@"}\n"];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_UITabOutlineNode *)self identifier];
    v6 = [(_UITabOutlineNode *)v4 identifier];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = 0;
      if (!v7 || !v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      v11 = [v7 isEqual:v8];

      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = [(_UITabOutlineNode *)self children];
    v13 = [(_UITabOutlineNode *)v4 children];
    v7 = v12;
    v14 = v13;
    v9 = v14;
    if (v7 == v14)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v14)
      {
        v10 = [v7 isEqual:v14];
      }
    }

    goto LABEL_15;
  }

LABEL_7:
  v10 = 0;
LABEL_16:

  return v10;
}

- (_UITabOutlineNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end