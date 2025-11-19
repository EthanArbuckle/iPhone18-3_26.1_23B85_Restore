@interface PXSurveyQuestionTextConfiguration
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionTextConfiguration)init;
- (PXSurveyQuestionTextConfiguration)initWithTitle:(id)a3 questionText:(id)a4 shouldScaleForLongText:(BOOL)a5;
- (UIView)contentView;
@end

@implementation PXSurveyQuestionTextConfiguration

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
  questionLabel = self->_questionLabel;
  if (!questionLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_questionLabel;
    self->_questionLabel = v5;

    [(UILabel *)self->_questionLabel setTextAlignment:1];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_questionLabel setTextColor:v7];

    v8 = [(PXSurveyQuestionTextConfiguration *)self questionText];
    [(UILabel *)self->_questionLabel setText:v8];

    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_questionLabel setBackgroundColor:v9];

    v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD58] addingSymbolicTraits:0 options:0];
    v11 = self->_questionLabel;
    if (self->_shouldScaleForLongText)
    {
      [(UILabel *)v11 setNumberOfLines:0];
      [(UILabel *)self->_questionLabel setAdjustsFontSizeToFitWidth:0];
      [(UILabel *)self->_questionLabel setLineBreakMode:0];
      v12 = 26.0;
    }

    else
    {
      [(UILabel *)v11 setMinimumScaleFactor:0.75];
      [(UILabel *)self->_questionLabel setNumberOfLines:1];
      [(UILabel *)self->_questionLabel setAdjustsFontSizeToFitWidth:1];
      v12 = 64.0;
    }

    v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:v12];
    [(UILabel *)self->_questionLabel setFont:v13];

    questionLabel = self->_questionLabel;
  }

  return questionLabel;
}

- (PXSurveyQuestionTextConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionTextConfiguration.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSurveyQuestionTextConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionTextConfiguration)initWithTitle:(id)a3 questionText:(id)a4 shouldScaleForLongText:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PXSurveyQuestionTextConfiguration;
  v10 = [(PXSurveyQuestionTextConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [v9 copy];
    questionText = v10->_questionText;
    v10->_questionText = v13;

    v10->_isStale = 0;
    v10->_shouldScaleForLongText = a5;
  }

  return v10;
}

@end