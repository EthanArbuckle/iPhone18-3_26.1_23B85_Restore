@interface PXSurveyQuestionPersonGroupConfiguration
- (BOOL)needsQuestionInvalidationForChange:(id)a3;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionPersonGroupConfiguration)init;
- (PXSurveyQuestionPersonGroupConfiguration)initWithTitle:(id)a3 personGroup:(id)a4;
- (id)contentViewForDisplayScale:(double)a3;
- (void)layoutContentViewInRect:(CGRect)a3;
@end

@implementation PXSurveyQuestionPersonGroupConfiguration

- (BOOL)needsQuestionInvalidationForChange:(id)a3
{
  if (![(NSArray *)self->_personGroup count])
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DF70] array];
  personGroup = self->_personGroup;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PXSurveyQuestionPersonGroupConfiguration_needsQuestionInvalidationForChange___block_invoke;
  v14[3] = &unk_1E773D250;
  v15 = v4;
  v6 = v4;
  [(NSArray *)personGroup enumerateObjectsUsingBlock:v14];
  v7 = [(NSArray *)self->_personGroup firstObject];
  v8 = [v7 photoLibrary];

  v9 = [v8 librarySpecificFetchOptions];
  [v9 setPersonContext:1];
  v10 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v6 options:v9];
  v11 = [v10 count];
  v12 = v11 != [(NSArray *)self->_personGroup count];

  return v12;
}

void __79__PXSurveyQuestionPersonGroupConfiguration_needsQuestionInvalidationForChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
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

- (void)layoutContentViewInRect:(CGRect)a3
{
  v4 = a3.size.height * 0.75;
  [(UIView *)self->_personGroupContentView setFrame:(a3.size.width - a3.size.height * 0.75) * 0.5, (a3.size.height - a3.size.height * 0.75) * 0.75, a3.size.height * 0.75, a3.size.height * 0.75];
  personGroupContentView = self->_personGroupContentView;

  [PXPeopleSocialGroupViewGenerator resizeThumbnailSizeForSocialGroupView:personGroupContentView withSize:v4, v4];
}

- (id)contentViewForDisplayScale:(double)a3
{
  v5 = [(PXSurveyQuestionPersonGroupConfiguration *)self personGroup];
  v6 = [PXPeopleSocialGroupViewGenerator generateViewForSocialGroup:v5 withSize:50.0 displayScale:50.0, a3];
  personGroupContentView = self->_personGroupContentView;
  self->_personGroupContentView = v6;

  v8 = self->_personGroupContentView;

  return v8;
}

- (PXSurveyQuestionPersonGroupConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPersonGroupConfiguration.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSurveyQuestionPersonGroupConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionPersonGroupConfiguration)initWithTitle:(id)a3 personGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionPersonGroupConfiguration;
  v8 = [(PXSurveyQuestionPersonGroupConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_personGroup, a4);
    v8->_isStale = 0;
  }

  return v8;
}

@end