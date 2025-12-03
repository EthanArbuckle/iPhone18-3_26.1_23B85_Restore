@interface PXSurveyQuestionPersonGroupConfiguration
- (BOOL)needsQuestionInvalidationForChange:(id)change;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionPersonGroupConfiguration)init;
- (PXSurveyQuestionPersonGroupConfiguration)initWithTitle:(id)title personGroup:(id)group;
- (id)contentViewForDisplayScale:(double)scale;
- (void)layoutContentViewInRect:(CGRect)rect;
@end

@implementation PXSurveyQuestionPersonGroupConfiguration

- (BOOL)needsQuestionInvalidationForChange:(id)change
{
  if (![(NSArray *)self->_personGroup count])
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  personGroup = self->_personGroup;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PXSurveyQuestionPersonGroupConfiguration_needsQuestionInvalidationForChange___block_invoke;
  v14[3] = &unk_1E773D250;
  v15 = array;
  v6 = array;
  [(NSArray *)personGroup enumerateObjectsUsingBlock:v14];
  firstObject = [(NSArray *)self->_personGroup firstObject];
  photoLibrary = [firstObject photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  v10 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v6 options:librarySpecificFetchOptions];
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

- (void)layoutContentViewInRect:(CGRect)rect
{
  v4 = rect.size.height * 0.75;
  [(UIView *)self->_personGroupContentView setFrame:(rect.size.width - rect.size.height * 0.75) * 0.5, (rect.size.height - rect.size.height * 0.75) * 0.75, rect.size.height * 0.75, rect.size.height * 0.75];
  personGroupContentView = self->_personGroupContentView;

  [PXPeopleSocialGroupViewGenerator resizeThumbnailSizeForSocialGroupView:personGroupContentView withSize:v4, v4];
}

- (id)contentViewForDisplayScale:(double)scale
{
  personGroup = [(PXSurveyQuestionPersonGroupConfiguration *)self personGroup];
  scale = [PXPeopleSocialGroupViewGenerator generateViewForSocialGroup:personGroup withSize:50.0 displayScale:50.0, scale];
  personGroupContentView = self->_personGroupContentView;
  self->_personGroupContentView = scale;

  v8 = self->_personGroupContentView;

  return v8;
}

- (PXSurveyQuestionPersonGroupConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPersonGroupConfiguration.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSurveyQuestionPersonGroupConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionPersonGroupConfiguration)initWithTitle:(id)title personGroup:(id)group
{
  titleCopy = title;
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionPersonGroupConfiguration;
  v8 = [(PXSurveyQuestionPersonGroupConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_personGroup, group);
    v8->_isStale = 0;
  }

  return v8;
}

@end