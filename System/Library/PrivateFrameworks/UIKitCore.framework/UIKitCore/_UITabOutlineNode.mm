@interface _UITabOutlineNode
- (BOOL)isEqual:(id)equal;
- (_UITabOutlineNode)initWithIdentifier:(id)identifier;
- (_UITabOutlineNode)parent;
- (id)_descriptionWithIndentationLevel:(int64_t)level;
- (void)addActionIdentifier:(id)identifier;
- (void)addChild:(id)child;
- (void)removeChild:(id)child;
@end

@implementation _UITabOutlineNode

- (_UITabOutlineNode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _UITabOutlineNode;
  v6 = [(_UITabOutlineNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (void)addChild:(id)child
{
  childCopy = child;
  [childCopy setParent:self];
  children = self->_children;
  if (children)
  {
    [(NSMutableArray *)children addObject:childCopy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{childCopy, 0}];
    v6 = self->_children;
    self->_children = v5;
  }
}

- (void)removeChild:(id)child
{
  children = self->_children;
  childCopy = child;
  [(NSMutableArray *)children removeObject:childCopy];
  [childCopy setParent:0];
}

- (void)addActionIdentifier:(id)identifier
{
  actions = self->_actions;
  if (actions)
  {

    [(NSMutableArray *)actions addObject:identifier];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:identifier];
    v6 = self->_actions;
    self->_actions = v5;
  }
}

- (id)_descriptionWithIndentationLevel:(int64_t)level
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [&stru_1EFB14550 stringByPaddingToLength:2 * level withString:@" " startingAtIndex:0];
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@ (%lu actions)", v5, self->_identifier, -[NSMutableArray count](self->_actions, "count")];
  children = [(_UITabOutlineNode *)self children];
  v8 = [children count];

  if (v8)
  {
    [v6 appendString:@" {\n"];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    children2 = [(_UITabOutlineNode *)self children];
    v10 = [children2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(children2);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) _descriptionWithIndentationLevel:level + 1];
          [v6 appendString:v14];
          [v6 appendString:@"\n"];
        }

        v11 = [children2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [v6 appendString:v5];
    [v6 appendString:@"}\n"];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(_UITabOutlineNode *)self identifier];
    identifier2 = [(_UITabOutlineNode *)equalCopy identifier];
    v7 = identifier;
    v8 = identifier2;
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

    children = [(_UITabOutlineNode *)self children];
    children2 = [(_UITabOutlineNode *)equalCopy children];
    v7 = children;
    v14 = children2;
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