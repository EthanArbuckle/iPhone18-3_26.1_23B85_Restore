@interface _UIDebugLogNodeTreeStyle
+ (id)defaultStyle;
+ (id)styleWithNode:(id)node lastNode:(id)lastNode intermediate:(id)intermediate trailing:(id)trailing;
- (_UIDebugLogNodeTreeStyle)initWithNode:(id)node lastNode:(id)lastNode intermediate:(id)intermediate trailing:(id)trailing;
@end

@implementation _UIDebugLogNodeTreeStyle

+ (id)defaultStyle
{
  if (qword_280A6A380 != -1)
  {
    dispatch_once(&qword_280A6A380, &__block_literal_global);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

- (_UIDebugLogNodeTreeStyle)initWithNode:(id)node lastNode:(id)lastNode intermediate:(id)intermediate trailing:(id)trailing
{
  nodeCopy = node;
  lastNodeCopy = lastNode;
  intermediateCopy = intermediate;
  trailingCopy = trailing;
  v24.receiver = self;
  v24.super_class = _UIDebugLogNodeTreeStyle;
  v14 = [(_UIDebugLogNodeTreeStyle *)&v24 init];
  if (v14)
  {
    v15 = [nodeCopy copy];
    node = v14->_node;
    v14->_node = v15;

    v17 = [lastNodeCopy copy];
    lastNode = v14->_lastNode;
    v14->_lastNode = v17;

    v19 = [intermediateCopy copy];
    intermediate = v14->_intermediate;
    v14->_intermediate = v19;

    v21 = [trailingCopy copy];
    trailing = v14->_trailing;
    v14->_trailing = v21;
  }

  return v14;
}

+ (id)styleWithNode:(id)node lastNode:(id)lastNode intermediate:(id)intermediate trailing:(id)trailing
{
  trailingCopy = trailing;
  intermediateCopy = intermediate;
  lastNodeCopy = lastNode;
  nodeCopy = node;
  v14 = [[self alloc] initWithNode:nodeCopy lastNode:lastNodeCopy intermediate:intermediateCopy trailing:trailingCopy];

  return v14;
}

@end