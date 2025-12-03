@interface VKCBaseElement
- (BOOL)containsPoint:(CGPoint)point;
- (CGRect)boundingBox;
- (CGRect)imageSpaceBoundingBox;
- (NSString)stringValue;
- (VKCBaseElement)parent;
- (id)childAtIndex:(unint64_t)index;
- (id)description;
- (id)recursiveSearchForCROutputRegion:(id)region;
- (int64_t)type;
- (unint64_t)confidence;
- (unint64_t)numberOfChildren;
- (void)loadInfoFromCROutputRegion:(id)region;
- (void)setCrOutputRegion:(id)region;
@end

@implementation VKCBaseElement

- (NSString)stringValue
{
  crOutputRegion = [(VKCBaseElement *)self crOutputRegion];
  text = [crOutputRegion text];

  return text;
}

- (CGRect)boundingBox
{
  crOutputRegion = [(VKCBaseElement *)self crOutputRegion];
  boundingQuad = [crOutputRegion boundingQuad];
  [boundingQuad boundingBox];
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
  crOutputRegion = [(VKCBaseElement *)self crOutputRegion];
  boundingQuad = [crOutputRegion boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];
  [denormalizedQuad boundingBox];
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
  crOutputRegion = [(VKCBaseElement *)self crOutputRegion];
  confidence = [crOutputRegion confidence];

  return confidence;
}

- (int64_t)type
{
  crOutputRegion = [(VKCBaseElement *)self crOutputRegion];
  type = [crOutputRegion type];

  if (type == 2048)
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
  children = [(VKCBaseElement *)self children];
  v3 = [children count];

  return v3;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  quad = [(VKCBaseElement *)self quad];
  v6 = [quad containsPoint:{x, y}];

  return v6;
}

- (void)setCrOutputRegion:(id)region
{
  objc_storeStrong(&self->_crOutputRegion, region);
  regionCopy = region;
  [(VKCBaseElement *)self loadInfoFromCROutputRegion:regionCopy];
}

- (void)loadInfoFromCROutputRegion:(id)region
{
  regionCopy = region;
  v5 = [VKQuad alloc];
  boundingQuad = [regionCopy boundingQuad];
  [boundingQuad bottomLeft];
  v7 = v6;
  v9 = v8;
  boundingQuad2 = [regionCopy boundingQuad];
  [boundingQuad2 bottomRight];
  v12 = v11;
  v14 = v13;
  boundingQuad3 = [regionCopy boundingQuad];
  [boundingQuad3 topLeft];
  v17 = v16;
  v19 = v18;
  boundingQuad4 = [regionCopy boundingQuad];

  [boundingQuad4 topRight];
  v23 = [(VKQuad *)v5 initWithBottomLeft:v7 bottomRight:v9 topLeft:v12 topRight:v14, v17, v19, v21, v22];
  [(VKCBaseElement *)self setQuad:v23];
}

- (id)childAtIndex:(unint64_t)index
{
  children = [(VKCBaseElement *)self children];
  if ([children count] <= index)
  {
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[VKCBaseElement childAtIndex:]", 0, 0, @"Trying to ask for a child of index: %ld, where only %ld children exist", index, [children count]);
    v7 = 0;
  }

  else
  {
    children2 = [(VKCBaseElement *)self children];
    v7 = [children2 objectAtIndexedSubscript:index];
  }

  return v7;
}

- (id)recursiveSearchForCROutputRegion:(id)region
{
  v20 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  crOutputRegion = [(VKCBaseElement *)self crOutputRegion];
  v6 = [crOutputRegion isEqual:regionCopy];

  if (!v6 || (v7 = self) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    children = [(VKCBaseElement *)self children];
    v9 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(children);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) recursiveSearchForCROutputRegion:regionCopy];
          if (v13)
          {
            v7 = v13;
            goto LABEL_13;
          }
        }

        v10 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  stringValue = [(VKCBaseElement *)self stringValue];
  v7 = [v3 stringWithFormat:@"%@ - %@", v5, stringValue];

  return v7;
}

- (VKCBaseElement)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end