@interface _UIDebugLogNode
+ (id)rootNode;
- (_UIDebugLogNode)initWithString:(id)a3;
- (id)description;
- (void)__genericAppendChildDescription:(id)a3 withPrefix:(id)a4 inheritedTreeStyle:(id)a5 recursionSelector:(SEL)a6 appendHandler:(id)a7;
@end

@implementation _UIDebugLogNode

- (_UIDebugLogNode)initWithString:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIDebugLogNode;
  v3 = [(_UIDebugLogMessage *)&v7 initWithString:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    childMessages = v3->_childMessages;
    v3->_childMessages = v4;
  }

  return v3;
}

+ (id)rootNode
{
  v2 = [(_UIDebugLogNode *)[__UIDebugLogRootNode alloc] initWithString:@"@rootNode"];

  return v2;
}

- (void)__genericAppendChildDescription:(id)a3 withPrefix:(id)a4 inheritedTreeStyle:(id)a5 recursionSelector:(SEL)a6 appendHandler:(id)a7
{
  v32 = a3;
  v31 = a4;
  v11 = a5;
  v30 = a7;
  if ([(NSMutableArray *)self->_childMessages count])
  {
    v12 = [(NSMutableArray *)self->_childMessages indexOfObjectWithOptions:2 passingTest:&__block_literal_global_100];
    v13 = [(_UIDebugLogNode *)self treeStyle];
    v14 = v13;
    v28 = v11;
    if (v13 || (v14 = v11) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = +[_UIDebugLogNodeTreeStyle defaultStyle];
    }

    v16 = v15;

    if ([(NSMutableArray *)self->_childMessages count])
    {
      v17 = 0;
      do
      {
        v18 = [(NSMutableArray *)self->_childMessages objectAtIndexedSubscript:v17];
        v19 = [v18 _isNode];
        v21 = v12 != 0x7FFFFFFFFFFFFFFFLL && v12 > v17;
        if (([v18 _isTransparent] & 1) == 0)
        {
          v22 = MEMORY[0x277CCACA8];
          v23 = _prefixForItem(v19, v21, v16);
          v24 = [v22 stringWithFormat:@"\n%@%@", v31, v23];

          v30[2](v30, v18, v24, v32);
        }

        if (v19)
        {
          v25 = v18;
          if ([v25 _isTransparent])
          {
            v26 = v31;
          }

          else
          {
            v27 = _prefixForItem(0, v21, v16);
            v26 = [v31 stringByAppendingString:v27];
          }

          [v25 a6];
        }

        ++v17;
      }

      while (v17 < [(NSMutableArray *)self->_childMessages count]);
    }

    v11 = v28;
  }
}

- (id)description
{
  v3 = [(_UIDebugLogMessage *)self _stringRepresentation];
  v4 = [v3 mutableCopy];

  [(_UIDebugLogNode *)self _appendChildDescription:v4 withPrefix:&stru_28865BF70 inheritedTreeStyle:0];

  return v4;
}

@end