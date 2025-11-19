@interface PXPeopleDetailSettingsPersonSuggestionDataSource
- (PXPeopleDetailSettingsPersonSuggestionDataSource)initWithTitle:(id)a3 personSuggestions:(id)a4;
- (id)personNameAtIndex:(int64_t)a3;
- (unint64_t)faceCount:(int64_t)a3;
- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6;
@end

@implementation PXPeopleDetailSettingsPersonSuggestionDataSource

- (unint64_t)faceCount:(int64_t)a3
{
  v3 = [(NSArray *)self->_personSuggestions objectAtIndex:a3];
  v4 = [v3 person];
  v5 = [v4 faceCount];

  return v5;
}

- (id)personNameAtIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_personSuggestions objectAtIndex:a3];
  v4 = [v3 name];

  return v4;
}

- (void)imageAtIndex:(unint64_t)a3 targetSize:(CGSize)a4 displayScale:(double)a5 resultHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = [(NSArray *)self->_personSuggestions objectAtIndex:a3];
  v13 = [PXPeopleFaceCropFetchOptions alloc];
  v14 = [v12 person];
  v15 = [v12 keyFace];
  v16 = [(PXPeopleFaceCropFetchOptions *)v13 initWithPerson:v14 face:v15 targetSize:width displayScale:height, a5];

  [(PXPeopleFaceCropFetchOptions *)v16 setCropFactor:0];
  [(PXPeopleFaceCropFetchOptions *)v16 setCornerStyle:0];
  [(PXPeopleFaceCropFetchOptions *)v16 setShouldCacheResult:0];
  v17 = +[PXPeopleFaceCropManager sharedManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__PXPeopleDetailSettingsPersonSuggestionDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
  v19[3] = &unk_1E774B680;
  v20 = v11;
  v18 = v11;
  [v17 requestFaceCropForOptions:v16 resultHandler:v19];
}

void __103__PXPeopleDetailSettingsPersonSuggestionDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8 && *(a1 + 32))
  {
    v6 = [v5 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
    v7 = *(a1 + 32);
    [v6 CGRectValue];
    (*(v7 + 16))(v7, v8);
  }
}

- (PXPeopleDetailSettingsPersonSuggestionDataSource)initWithTitle:(id)a3 personSuggestions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsPersonSuggestionDataSource;
  v9 = [(PXPeopleDetailSettingsPersonSuggestionDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_personSuggestions, a4);
  }

  return v10;
}

@end