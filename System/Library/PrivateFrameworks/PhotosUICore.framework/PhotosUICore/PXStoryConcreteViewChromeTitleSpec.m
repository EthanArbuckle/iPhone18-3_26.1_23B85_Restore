@interface PXStoryConcreteViewChromeTitleSpec
- (PXStoryConcreteViewChromeTitleSpec)init;
- (PXStoryConcreteViewChromeTitleSpec)initWithNumberOfTitleLines:(int64_t)a3 numberOfSubtitleLines:(int64_t)a4 configuration:(id)a5;
- (UIEdgeInsets)margins;
@end

@implementation PXStoryConcreteViewChromeTitleSpec

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXStoryConcreteViewChromeTitleSpec)initWithNumberOfTitleLines:(int64_t)a3 numberOfSubtitleLines:(int64_t)a4 configuration:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = PXStoryConcreteViewChromeTitleSpec;
  v9 = [(PXStoryConcreteViewChromeTitleSpec *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_numberOfTitleLines = a3;
    v9->_numberOfSubtitleLines = a4;
    v9->_textAlignment = [v8 textAlignment];
    [v8 margins];
    v10->_margins.top = v11;
    v10->_margins.left = v12;
    v10->_margins.bottom = v13;
    v10->_margins.right = v14;
    v10->_hidden = [v8 hidden];
  }

  return v10;
}

- (PXStoryConcreteViewChromeTitleSpec)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryViewLayoutSpec.m" lineNumber:815 description:{@"%s is not available as initializer", "-[PXStoryConcreteViewChromeTitleSpec init]"}];

  abort();
}

@end