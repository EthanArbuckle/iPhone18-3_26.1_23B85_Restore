@interface SearchUIGridRowModel
- (BOOL)hasLeadingImage;
- (BOOL)prefersNoSeparatorAbove;
- (SearchUIGridRowModel)initWithResult:(id)result cardSection:(id)section gridLayoutManager:(id)manager queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SearchUIGridRowModel

- (SearchUIGridRowModel)initWithResult:(id)result cardSection:(id)section gridLayoutManager:(id)manager queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  sectionCopy = section;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = SearchUIGridRowModel;
  v14 = [(SearchUICardSectionRowModel *)&v20 initWithResult:result cardSection:sectionCopy isInline:0 queryId:id itemIdentifier:identifier];
  v15 = v14;
  if (v14)
  {
    [(SearchUIGridRowModel *)v14 setGridLayoutManager:managerCopy];
    gridLayoutManager = [(SearchUIGridRowModel *)v15 gridLayoutManager];
    v17 = [gridLayoutManager tableRowForTableRowCardSection:sectionCopy];
    data = [v17 data];
    [(SearchUIGridRowModel *)v15 setShouldHide:[SearchUIGridLayoutManager shouldHideViewForRichData:data]];
  }

  return v15;
}

- (BOOL)prefersNoSeparatorAbove
{
  cardSection = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gridLayoutManager = [(SearchUIGridRowModel *)self gridLayoutManager];
    gridManager = [gridLayoutManager gridManager];
    tableContainsRowHeaders = [gridManager tableContainsRowHeaders];
  }

  else
  {
    tableContainsRowHeaders = 0;
  }

  return tableContainsRowHeaders;
}

- (BOOL)hasLeadingImage
{
  gridLayoutManager = [(SearchUIGridRowModel *)self gridLayoutManager];
  cardSection = [(SearchUIRowModel *)self cardSection];
  v5 = [gridLayoutManager tableRowForTableRowCardSection:cardSection];
  data = [v5 data];
  firstObject = [data firstObject];
  hasOnlyImage = [firstObject hasOnlyImage];

  return hasOnlyImage;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SearchUIGridRowModel;
  v4 = [(SearchUICardSectionRowModel *)&v7 copyWithZone:zone];
  gridLayoutManager = [(SearchUIGridRowModel *)self gridLayoutManager];
  [v4 setGridLayoutManager:gridLayoutManager];

  [v4 setShouldHide:{-[SearchUIGridRowModel shouldHide](self, "shouldHide")}];
  return v4;
}

@end