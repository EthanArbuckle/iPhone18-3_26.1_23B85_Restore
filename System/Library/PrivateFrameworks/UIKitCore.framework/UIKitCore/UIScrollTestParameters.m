@interface UIScrollTestParameters
- (UIScrollTestParameters)init;
- (double)endOffset;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation UIScrollTestParameters

- (UIScrollTestParameters)init
{
  v3.receiver = self;
  v3.super_class = UIScrollTestParameters;
  result = [(UIScrollTestParameters *)&v3 init];
  if (result)
  {
    result->_iterations = 3;
    *&result->_delta = xmmword_18A683740;
    result->_axis = 2;
  }

  return result;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  v4.receiver = self;
  v4.super_class = UIScrollTestParameters;
  [(UIScrollTestParameters *)&v4 dealloc];
}

- (double)endOffset
{
  [(UIScrollTestParameters *)self startOffset];
  v4 = v3;
  [(UIScrollTestParameters *)self length];
  return v4 + v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UIScrollTestParameters);
  v5 = [(UIScrollTestParameters *)self testName];
  [(UIScrollTestParameters *)v4 setTestName:v5];

  [(UIScrollTestParameters *)v4 setIterations:[(UIScrollTestParameters *)self iterations]];
  [(UIScrollTestParameters *)self delta];
  [(UIScrollTestParameters *)v4 setDelta:?];
  [(UIScrollTestParameters *)self length];
  [(UIScrollTestParameters *)v4 setLength:?];
  [(UIScrollTestParameters *)v4 setAxis:[(UIScrollTestParameters *)self axis]];
  v6 = [(UIScrollTestParameters *)self extraResultsBlock];
  [(UIScrollTestParameters *)v4 setExtraResultsBlock:v6];

  return v4;
}

@end