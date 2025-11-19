@interface SearchUICardSectionCreator
+ (Class)viewClassForCardSection:(id)a3 horizontal:(BOOL)a4;
+ (id)cardSectionViewForModel:(id)a3 feedbackDelegate:(id)a4;
@end

@implementation SearchUICardSectionCreator

+ (Class)viewClassForCardSection:(id)a3 horizontal:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = [v5 _searchUIHorizontalViewClass];
    if (!v7)
    {
      v7 = [v6 _searchUIViewClass];
    }

    v8 = v7;
  }

  else
  {
    v8 = [v5 _searchUIViewClass];
  }

  v9 = v8;

  return v9;
}

+ (id)cardSectionViewForModel:(id)a3 feedbackDelegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_msgSend(v6 "cardSectionViewClass"))];

  return v7;
}

@end