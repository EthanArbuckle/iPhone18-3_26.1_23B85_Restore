@interface IPAShortestEdgeImageSizePolicy
- (CGSize)transformSize:(CGSize)result;
- (IPAShortestEdgeImageSizePolicy)initWithCoder:(id)a3;
- (IPAShortestEdgeImageSizePolicy)initWithShortestEdge:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPAShortestEdgeImageSizePolicy

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IPAShortestEdgeImageSizePolicy;
  v4 = a3;
  [(IPAImageSizePolicy *)&v6 encodeWithCoder:v4];
  shortestEdge = self->_shortestEdge;
  *&shortestEdge = shortestEdge;
  [v4 encodeFloat:@"shortest edge" forKey:{shortestEdge, v6.receiver, v6.super_class}];
}

- (IPAShortestEdgeImageSizePolicy)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IPAShortestEdgeImageSizePolicy;
  v3 = a3;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:v3];
  [v3 decodeFloatForKey:{@"shortest edge", v8.receiver, v8.super_class}];
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

- (IPAShortestEdgeImageSizePolicy)initWithShortestEdge:(double)a3
{
  if (a3 <= 0.0)
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
      result->_shortestEdge = a3;
    }
  }

  return result;
}

@end