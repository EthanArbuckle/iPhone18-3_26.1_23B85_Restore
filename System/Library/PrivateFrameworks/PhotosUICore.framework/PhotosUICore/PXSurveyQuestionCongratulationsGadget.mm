@interface PXSurveyQuestionCongratulationsGadget
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXGadgetDelegate)delegate;
- (PXSurveyQuestionCongratulationsGadget)initWithType:(unint64_t)type;
- (PXSurveyQuestionsCongratulationsGadgetContentView)contentView;
- (id)uniqueGadgetIdentifier;
- (void)congratulationsGadgetContentViewDidSelectActionButton:(id)button;
@end

@implementation PXSurveyQuestionCongratulationsGadget

- (PXGadgetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)congratulationsGadgetContentViewDidSelectActionButton:(id)button
{
  delegate = [(PXSurveyQuestionCongratulationsGadget *)self delegate];
  [delegate didSelectActionButtonForType:self->_type];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(PXSurveyQuestionCongratulationsGadget *)self contentView];
  [contentView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (PXSurveyQuestionsCongratulationsGadgetContentView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    type = self->_type;
    if (type)
    {
      if (type != 1)
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_8;
      }

      v5 = @"PXInternalPhotosChallengeCongratulationsLoadMore";
      v6 = @"PXInternalPhotosChallengeCongratulationsLoadMoreDetailMessage";
    }

    else
    {
      v5 = @"PXInternalPhotosChallengeCongratulationsFinishedDismiss";
      v6 = @"PXInternalPhotosChallengeCongratulationsFinishedDetailMessage";
    }

    v7 = PXLocalizedStringFromTable(v6, @"PhotosUICore");
    v8 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
LABEL_8:
    v9 = [[PXSurveyQuestionsCongratulationsGadgetContentView alloc] initWithDetailMessage:v7 buttonTitle:v8];
    v10 = self->_contentView;
    self->_contentView = v9;

    [(PXSurveyQuestionsCongratulationsGadgetContentView *)self->_contentView setDelegate:self];
    contentView = self->_contentView;
  }

  return contentView;
}

- (id)uniqueGadgetIdentifier
{
  type = self->_type;
  v3 = @"PXSurveyQuestionsCongratulationsTypeLoadMore";
  if (type != 1)
  {
    v3 = 0;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"PXSurveyQuestionsCongratulationsTypeDismiss";
  }
}

- (PXSurveyQuestionCongratulationsGadget)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PXSurveyQuestionCongratulationsGadget;
  result = [(PXSurveyQuestionCongratulationsGadget *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

@end