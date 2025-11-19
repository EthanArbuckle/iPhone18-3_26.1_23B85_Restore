@interface PXSurveyQuestionPersonConfiguration
- (BOOL)needsQuestionInvalidationForChange:(id)a3;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionPersonConfiguration)init;
- (PXSurveyQuestionPersonConfiguration)initWithTitle:(id)a3 person:(id)a4;
- (UIView)contentView;
@end

@implementation PXSurveyQuestionPersonConfiguration

- (BOOL)needsQuestionInvalidationForChange:(id)a3
{
  v3 = [a3 changeDetailsForObject:self->_person];
  v4 = [v3 objectWasDeleted];

  return v4;
}

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
  avatarView = self->_avatarView;
  if (!avatarView)
  {
    v4 = objc_alloc_init(PXPeopleScalableAvatarView);
    v5 = self->_avatarView;
    self->_avatarView = v4;

    v6 = [(PXSurveyQuestionPersonConfiguration *)self person];
    [(PXPeopleScalableAvatarView *)self->_avatarView setPerson:v6];

    avatarView = self->_avatarView;
  }

  return avatarView;
}

- (PXSurveyQuestionPersonConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPersonConfiguration.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSurveyQuestionPersonConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionPersonConfiguration)initWithTitle:(id)a3 person:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionPersonConfiguration;
  v8 = [(PXSurveyQuestionPersonConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_person, a4);
    v8->_isStale = 0;
  }

  return v8;
}

@end