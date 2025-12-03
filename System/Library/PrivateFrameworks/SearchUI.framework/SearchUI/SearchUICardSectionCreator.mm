@interface SearchUICardSectionCreator
+ (Class)viewClassForCardSection:(id)section horizontal:(BOOL)horizontal;
+ (id)cardSectionViewForModel:(id)model feedbackDelegate:(id)delegate;
@end

@implementation SearchUICardSectionCreator

+ (Class)viewClassForCardSection:(id)section horizontal:(BOOL)horizontal
{
  horizontalCopy = horizontal;
  sectionCopy = section;
  v6 = sectionCopy;
  if (horizontalCopy)
  {
    _searchUIHorizontalViewClass = [sectionCopy _searchUIHorizontalViewClass];
    if (!_searchUIHorizontalViewClass)
    {
      _searchUIHorizontalViewClass = [v6 _searchUIViewClass];
    }

    _searchUIViewClass = _searchUIHorizontalViewClass;
  }

  else
  {
    _searchUIViewClass = [sectionCopy _searchUIViewClass];
  }

  v9 = _searchUIViewClass;

  return v9;
}

+ (id)cardSectionViewForModel:(id)model feedbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  modelCopy = model;
  v7 = [objc_alloc(objc_msgSend(modelCopy "cardSectionViewClass"))];

  return v7;
}

@end