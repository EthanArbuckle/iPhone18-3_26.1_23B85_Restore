@interface PXSurveyQuestionDefaultConfiguration
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionDefaultConfiguration)initWithTitle:(id)title;
- (UIView)contentView;
@end

@implementation PXSurveyQuestionDefaultConfiguration

- (CGRect)contentRectForOneUp
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIView)contentView
{
  placeholderView = self->_placeholderView;
  if (!placeholderView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_placeholderView;
    self->_placeholderView = v4;

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)self->_placeholderView setBackgroundColor:systemBackgroundColor];

    placeholderView = self->_placeholderView;
  }

  return placeholderView;
}

- (PXSurveyQuestionDefaultConfiguration)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = PXSurveyQuestionDefaultConfiguration;
  v5 = [(PXSurveyQuestionDefaultConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    v5->_isStale = 0;
  }

  return v5;
}

@end