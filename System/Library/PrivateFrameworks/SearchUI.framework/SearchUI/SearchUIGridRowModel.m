@interface SearchUIGridRowModel
- (BOOL)hasLeadingImage;
- (BOOL)prefersNoSeparatorAbove;
- (SearchUIGridRowModel)initWithResult:(id)a3 cardSection:(id)a4 gridLayoutManager:(id)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SearchUIGridRowModel

- (SearchUIGridRowModel)initWithResult:(id)a3 cardSection:(id)a4 gridLayoutManager:(id)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = SearchUIGridRowModel;
  v14 = [(SearchUICardSectionRowModel *)&v20 initWithResult:a3 cardSection:v12 isInline:0 queryId:a6 itemIdentifier:a7];
  v15 = v14;
  if (v14)
  {
    [(SearchUIGridRowModel *)v14 setGridLayoutManager:v13];
    v16 = [(SearchUIGridRowModel *)v15 gridLayoutManager];
    v17 = [v16 tableRowForTableRowCardSection:v12];
    v18 = [v17 data];
    [(SearchUIGridRowModel *)v15 setShouldHide:[SearchUIGridLayoutManager shouldHideViewForRichData:v18]];
  }

  return v15;
}

- (BOOL)prefersNoSeparatorAbove
{
  v3 = [(SearchUIRowModel *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SearchUIGridRowModel *)self gridLayoutManager];
    v5 = [v4 gridManager];
    v6 = [v5 tableContainsRowHeaders];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasLeadingImage
{
  v3 = [(SearchUIGridRowModel *)self gridLayoutManager];
  v4 = [(SearchUIRowModel *)self cardSection];
  v5 = [v3 tableRowForTableRowCardSection:v4];
  v6 = [v5 data];
  v7 = [v6 firstObject];
  v8 = [v7 hasOnlyImage];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SearchUIGridRowModel;
  v4 = [(SearchUICardSectionRowModel *)&v7 copyWithZone:a3];
  v5 = [(SearchUIGridRowModel *)self gridLayoutManager];
  [v4 setGridLayoutManager:v5];

  [v4 setShouldHide:{-[SearchUIGridRowModel shouldHide](self, "shouldHide")}];
  return v4;
}

@end