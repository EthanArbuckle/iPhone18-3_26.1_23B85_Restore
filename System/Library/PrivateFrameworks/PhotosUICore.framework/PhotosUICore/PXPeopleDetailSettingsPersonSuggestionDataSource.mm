@interface PXPeopleDetailSettingsPersonSuggestionDataSource
- (PXPeopleDetailSettingsPersonSuggestionDataSource)initWithTitle:(id)title personSuggestions:(id)suggestions;
- (id)personNameAtIndex:(int64_t)index;
- (unint64_t)faceCount:(int64_t)count;
- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler;
@end

@implementation PXPeopleDetailSettingsPersonSuggestionDataSource

- (unint64_t)faceCount:(int64_t)count
{
  v3 = [(NSArray *)self->_personSuggestions objectAtIndex:count];
  person = [v3 person];
  faceCount = [person faceCount];

  return faceCount;
}

- (id)personNameAtIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_personSuggestions objectAtIndex:index];
  name = [v3 name];

  return name;
}

- (void)imageAtIndex:(unint64_t)index targetSize:(CGSize)size displayScale:(double)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v12 = [(NSArray *)self->_personSuggestions objectAtIndex:index];
  v13 = [PXPeopleFaceCropFetchOptions alloc];
  person = [v12 person];
  keyFace = [v12 keyFace];
  scale = [(PXPeopleFaceCropFetchOptions *)v13 initWithPerson:person face:keyFace targetSize:width displayScale:height, scale];

  [(PXPeopleFaceCropFetchOptions *)scale setCropFactor:0];
  [(PXPeopleFaceCropFetchOptions *)scale setCornerStyle:0];
  [(PXPeopleFaceCropFetchOptions *)scale setShouldCacheResult:0];
  v17 = +[PXPeopleFaceCropManager sharedManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__PXPeopleDetailSettingsPersonSuggestionDataSource_imageAtIndex_targetSize_displayScale_resultHandler___block_invoke;
  v19[3] = &unk_1E774B680;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [v17 requestFaceCropForOptions:scale resultHandler:v19];
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

- (PXPeopleDetailSettingsPersonSuggestionDataSource)initWithTitle:(id)title personSuggestions:(id)suggestions
{
  titleCopy = title;
  suggestionsCopy = suggestions;
  v12.receiver = self;
  v12.super_class = PXPeopleDetailSettingsPersonSuggestionDataSource;
  v9 = [(PXPeopleDetailSettingsPersonSuggestionDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_personSuggestions, suggestions);
  }

  return v10;
}

@end