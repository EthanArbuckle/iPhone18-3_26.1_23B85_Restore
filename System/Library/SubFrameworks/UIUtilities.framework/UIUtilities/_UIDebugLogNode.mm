@interface _UIDebugLogNode
+ (id)rootNode;
- (_UIDebugLogNode)initWithString:(id)string;
- (id)description;
- (void)__genericAppendChildDescription:(id)description withPrefix:(id)prefix inheritedTreeStyle:(id)style recursionSelector:(SEL)selector appendHandler:(id)handler;
@end

@implementation _UIDebugLogNode

- (_UIDebugLogNode)initWithString:(id)string
{
  v7.receiver = self;
  v7.super_class = _UIDebugLogNode;
  v3 = [(_UIDebugLogMessage *)&v7 initWithString:string];
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

- (void)__genericAppendChildDescription:(id)description withPrefix:(id)prefix inheritedTreeStyle:(id)style recursionSelector:(SEL)selector appendHandler:(id)handler
{
  descriptionCopy = description;
  prefixCopy = prefix;
  styleCopy = style;
  handlerCopy = handler;
  if ([(NSMutableArray *)self->_childMessages count])
  {
    v12 = [(NSMutableArray *)self->_childMessages indexOfObjectWithOptions:2 passingTest:&__block_literal_global_100];
    treeStyle = [(_UIDebugLogNode *)self treeStyle];
    v14 = treeStyle;
    v28 = styleCopy;
    if (treeStyle || (v14 = styleCopy) != 0)
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
        _isNode = [v18 _isNode];
        v21 = v12 != 0x7FFFFFFFFFFFFFFFLL && v12 > v17;
        if (([v18 _isTransparent] & 1) == 0)
        {
          v22 = MEMORY[0x277CCACA8];
          v23 = _prefixForItem(_isNode, v21, v16);
          v24 = [v22 stringWithFormat:@"\n%@%@", prefixCopy, v23];

          handlerCopy[2](handlerCopy, v18, v24, descriptionCopy);
        }

        if (_isNode)
        {
          v25 = v18;
          if ([v25 _isTransparent])
          {
            v26 = prefixCopy;
          }

          else
          {
            v27 = _prefixForItem(0, v21, v16);
            v26 = [prefixCopy stringByAppendingString:v27];
          }

          [v25 selector];
        }

        ++v17;
      }

      while (v17 < [(NSMutableArray *)self->_childMessages count]);
    }

    styleCopy = v28;
  }
}

- (id)description
{
  _stringRepresentation = [(_UIDebugLogMessage *)self _stringRepresentation];
  v4 = [_stringRepresentation mutableCopy];

  [(_UIDebugLogNode *)self _appendChildDescription:v4 withPrefix:&stru_28865BF70 inheritedTreeStyle:0];

  return v4;
}

@end