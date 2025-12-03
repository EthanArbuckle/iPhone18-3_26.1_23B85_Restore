@interface IPAShortestEdgeImageSizePolicy
- (CGSize)transformSize:(CGSize)result;
- (IPAShortestEdgeImageSizePolicy)initWithCoder:(id)coder;
- (IPAShortestEdgeImageSizePolicy)initWithShortestEdge:(double)edge;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPAShortestEdgeImageSizePolicy

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IPAShortestEdgeImageSizePolicy;
  coderCopy = coder;
  [(IPAImageSizePolicy *)&v6 encodeWithCoder:coderCopy];
  shortestEdge = self->_shortestEdge;
  *&shortestEdge = shortestEdge;
  [coderCopy encodeFloat:@"shortest edge" forKey:{shortestEdge, v6.receiver, v6.super_class}];
}

- (IPAShortestEdgeImageSizePolicy)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IPAShortestEdgeImageSizePolicy;
  coderCopy = coder;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:coderCopy];
  [coderCopy decodeFloatForKey:{@"shortest edge", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_shortestEdge = v6;
  return v4;
}

- (CGSize)transformSize:(CGSize)result
{
  width = result.width;
  if (result.width >= result.height)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  shortestEdge = self->_shortestEdge;
  if (height > 0.0 && shortestEdge < height)
  {
    if (width == result.height)
    {
      result.height = self->_shortestEdge;
    }

    else
    {
      v7 = shortestEdge / height;
      if (width < result.height)
      {
        result.height = result.height * v7;
      }

      else
      {
        result.height = self->_shortestEdge;
        shortestEdge = width * v7;
      }
    }
  }

  else
  {
    shortestEdge = width;
  }

  result.width = shortestEdge;
  return result;
}

- (IPAShortestEdgeImageSizePolicy)initWithShortestEdge:(double)edge
{
  if (edge <= 0.0)
  {
    v5 = _PFAssertFailHandler();
    return [(IPAImageSizePolicy *)v5 bestFitPolicyInSquare:v6, v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IPAShortestEdgeImageSizePolicy;
    result = [(IPAShortestEdgeImageSizePolicy *)&v8 init];
    if (result)
    {
      result->_shortestEdge = edge;
    }
  }

  return result;
}

@end