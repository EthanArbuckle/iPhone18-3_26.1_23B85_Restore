@interface SearchUICustomViewRowModel
- (SearchUICustomViewRowModel)init;
- (SearchUICustomViewRowModel)initWithCardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUICustomViewRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUICustomViewRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUICustomViewRowModel)initWithResult:(id)result itemIdentifier:(id)identifier;
- (SearchUICustomViewRowModel)initWithResults:(id)results itemIdentifier:(id)identifier;
@end

@implementation SearchUICustomViewRowModel

- (SearchUICustomViewRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  if (identifier)
  {
    v11 = sub_1DA25F244();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  resultCopy = result;
  sectionCopy = section;
  return sub_1DA2313B0(result, section, inline, id, v11, v13);
}

- (SearchUICustomViewRowModel)initWithResult:(id)result itemIdentifier:(id)identifier
{
  if (identifier)
  {
    v5 = sub_1DA25F244();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  resultCopy = result;
  return sub_1DA231500(result, v5, v7);
}

- (SearchUICustomViewRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  if (identifier)
  {
    v9 = sub_1DA25F244();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  resultCopy = result;
  sectionCopy = section;
  return sub_1DA2315F8(result, section, id, v9, v11);
}

- (SearchUICustomViewRowModel)initWithResults:(id)results itemIdentifier:(id)identifier
{
  resultsCopy = results;
  if (results)
  {
    sub_1DA173718(0, &unk_1ECBA0980);
    resultsCopy = sub_1DA25F324();
  }

  if (identifier)
  {
    v6 = sub_1DA25F244();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return sub_1DA231728(resultsCopy, v6, v8);
}

- (SearchUICustomViewRowModel)initWithCardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  if (identifier)
  {
    v7 = sub_1DA25F244();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sectionCopy = section;
  return sub_1DA231890(section, id, v7, v9);
}

- (SearchUICustomViewRowModel)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUICustomViewRowModel();
  return [(SearchUICustomViewRowModel *)&v3 init];
}

@end