@interface PXStoryConcreteViewChromeTitleSpec
- (PXStoryConcreteViewChromeTitleSpec)init;
- (PXStoryConcreteViewChromeTitleSpec)initWithNumberOfTitleLines:(int64_t)lines numberOfSubtitleLines:(int64_t)subtitleLines configuration:(id)configuration;
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

- (PXStoryConcreteViewChromeTitleSpec)initWithNumberOfTitleLines:(int64_t)lines numberOfSubtitleLines:(int64_t)subtitleLines configuration:(id)configuration
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = PXStoryConcreteViewChromeTitleSpec;
  v9 = [(PXStoryConcreteViewChromeTitleSpec *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_numberOfTitleLines = lines;
    v9->_numberOfSubtitleLines = subtitleLines;
    v9->_textAlignment = [configurationCopy textAlignment];
    [configurationCopy margins];
    v10->_margins.top = v11;
    v10->_margins.left = v12;
    v10->_margins.bottom = v13;
    v10->_margins.right = v14;
    v10->_hidden = [configurationCopy hidden];
  }

  return v10;
}

- (PXStoryConcreteViewChromeTitleSpec)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLayoutSpec.m" lineNumber:815 description:{@"%s is not available as initializer", "-[PXStoryConcreteViewChromeTitleSpec init]"}];

  abort();
}

@end