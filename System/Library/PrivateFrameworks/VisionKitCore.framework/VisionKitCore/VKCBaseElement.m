@interface VKCBaseElement
- (BOOL)containsPoint:(CGPoint)a3;
- (CGRect)boundingBox;
- (CGRect)imageSpaceBoundingBox;
- (NSString)stringValue;
- (VKCBaseElement)parent;
- (id)childAtIndex:(unint64_t)a3;
- (id)description;
- (id)recursiveSearchForCROutputRegion:(id)a3;
- (int64_t)type;
- (unint64_t)confidence;
- (unint64_t)numberOfChildren;
- (void)loadInfoFromCROutputRegion:(id)a3;
- (void)setCrOutputRegion:(id)a3;
@end

@implementation VKCBaseElement

- (NSString)stringValue
{
  v2 = [(VKCBaseElement *)self crOutputRegion];
  v3 = [v2 text];

  return v3;
}

- (CGRect)boundingBox
{
  v2 = [(VKCBaseElement *)self crOutputRegion];
  v3 = [v2 boundingQuad];
  [v3 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)imageSpaceBoundingBox
{
  v2 = [(VKCBaseElement *)self crOutputRegion];
  v3 = [v2 boundingQuad];
  v4 = [v3 denormalizedQuad];
  [v4 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (unint64_t)confidence
{
  v2 = [(VKCBaseElement *)self crOutputRegion];
  v3 = [v2 confidence];

  return v3;
}

- (int64_t)type
{
  v2 = [(VKCBaseElement *)self crOutputRegion];
  v3 = [v2 type];

  if (v3 == 2048)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)numberOfChildren
{
  v2 = [(VKCBaseElement *)self children];
  v3 = [v2 count];

  return v3;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKCBaseElement *)self quad];
  v6 = [v5 containsPoint:{x, y}];

  return v6;
}

- (void)setCrOutputRegion:(id)a3
{
  objc_storeStrong(&self->_crOutputRegion, a3);
  v5 = a3;
  [(VKCBaseElement *)self loadInfoFromCROutputRegion:v5];
}

- (void)loadInfoFromCROutputRegion:(id)a3
{
  v4 = a3;
  v5 = [VKQuad alloc];
  v24 = [v4 boundingQuad];
  [v24 bottomLeft];
  v7 = v6;
  v9 = v8;
  v10 = [v4 boundingQuad];
  [v10 bottomRight];
  v12 = v11;
  v14 = v13;
  v15 = [v4 boundingQuad];
  [v15 topLeft];
  v17 = v16;
  v19 = v18;
  v20 = [v4 boundingQuad];

  [v20 topRight];
  v23 = [(VKQuad *)v5 initWithBottomLeft:v7 bottomRight:v9 topLeft:v12 topRight:v14, v17, v19, v21, v22];
  [(VKCBaseElement *)self setQuad:v23];
}

- (id)childAtIndex:(unint64_t)a3
{
  v5 = [(VKCBaseElement *)self children];
  if ([v5 count] <= a3)
  {
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[VKCBaseElement childAtIndex:]", 0, 0, @"Trying to ask for a child of index: %ld, where only %ld children exist", a3, [v5 count]);
    v7 = 0;
  }

  else
  {
    v6 = [(VKCBaseElement *)self children];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (id)recursiveSearchForCROutputRegion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKCBaseElement *)self crOutputRegion];
  v6 = [v5 isEqual:v4];

  if (!v6 || (v7 = self) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(VKCBaseElement *)self children];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) recursiveSearchForCROutputRegion:v4];
          if (v13)
          {
            v7 = v13;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VKCBaseElement *)self stringValue];
  v7 = [v3 stringWithFormat:@"%@ - %@", v5, v6];

  return v7;
}

- (VKCBaseElement)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end