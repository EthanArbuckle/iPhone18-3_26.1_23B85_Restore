@interface _UIDebugLogNodeTreeStyle
+ (id)defaultStyle;
+ (id)styleWithNode:(id)a3 lastNode:(id)a4 intermediate:(id)a5 trailing:(id)a6;
- (_UIDebugLogNodeTreeStyle)initWithNode:(id)a3 lastNode:(id)a4 intermediate:(id)a5 trailing:(id)a6;
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

- (_UIDebugLogNodeTreeStyle)initWithNode:(id)a3 lastNode:(id)a4 intermediate:(id)a5 trailing:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = _UIDebugLogNodeTreeStyle;
  v14 = [(_UIDebugLogNodeTreeStyle *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    node = v14->_node;
    v14->_node = v15;

    v17 = [v11 copy];
    lastNode = v14->_lastNode;
    v14->_lastNode = v17;

    v19 = [v12 copy];
    intermediate = v14->_intermediate;
    v14->_intermediate = v19;

    v21 = [v13 copy];
    trailing = v14->_trailing;
    v14->_trailing = v21;
  }

  return v14;
}

+ (id)styleWithNode:(id)a3 lastNode:(id)a4 intermediate:(id)a5 trailing:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithNode:v13 lastNode:v12 intermediate:v11 trailing:v10];

  return v14;
}

@end