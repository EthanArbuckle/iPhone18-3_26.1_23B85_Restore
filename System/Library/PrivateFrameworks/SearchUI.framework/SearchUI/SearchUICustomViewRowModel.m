@interface SearchUICustomViewRowModel
- (SearchUICustomViewRowModel)init;
- (SearchUICustomViewRowModel)initWithCardSection:(id)a3 queryId:(unint64_t)a4 itemIdentifier:(id)a5;
- (SearchUICustomViewRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
- (SearchUICustomViewRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6;
- (SearchUICustomViewRowModel)initWithResult:(id)a3 itemIdentifier:(id)a4;
- (SearchUICustomViewRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4;
@end

@implementation SearchUICustomViewRowModel

- (SearchUICustomViewRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  if (a7)
  {
    v11 = sub_1DA25F244();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a3;
  v15 = a4;
  return sub_1DA2313B0(a3, a4, a5, a6, v11, v13);
}

- (SearchUICustomViewRowModel)initWithResult:(id)a3 itemIdentifier:(id)a4
{
  if (a4)
  {
    v5 = sub_1DA25F244();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  return sub_1DA231500(a3, v5, v7);
}

- (SearchUICustomViewRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6
{
  if (a6)
  {
    v9 = sub_1DA25F244();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a3;
  v13 = a4;
  return sub_1DA2315F8(a3, a4, a5, v9, v11);
}

- (SearchUICustomViewRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4
{
  v5 = a3;
  if (a3)
  {
    sub_1DA173718(0, &unk_1ECBA0980);
    v5 = sub_1DA25F324();
  }

  if (a4)
  {
    v6 = sub_1DA25F244();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return sub_1DA231728(v5, v6, v8);
}

- (SearchUICustomViewRowModel)initWithCardSection:(id)a3 queryId:(unint64_t)a4 itemIdentifier:(id)a5
{
  if (a5)
  {
    v7 = sub_1DA25F244();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  return sub_1DA231890(a3, a4, v7, v9);
}

- (SearchUICustomViewRowModel)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUICustomViewRowModel();
  return [(SearchUICustomViewRowModel *)&v3 init];
}

@end