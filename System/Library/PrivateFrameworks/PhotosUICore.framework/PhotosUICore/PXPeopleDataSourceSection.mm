@interface PXPeopleDataSourceSection
- (PXPeopleDataSourceSection)initWithPersonFetchType:(unint64_t)type;
@end

@implementation PXPeopleDataSourceSection

- (PXPeopleDataSourceSection)initWithPersonFetchType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = PXPeopleDataSourceSection;
  v4 = [(PXPeopleDataSourceSection *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_disclosed = 1;
    disclosedTitle = v4->_disclosedTitle;
    v4->_personFetchType = type;
    v4->_disclosedTitle = &stru_1F1741150;

    unDisclosedTitle = v5->_unDisclosedTitle;
    v5->_unDisclosedTitle = &stru_1F1741150;
  }

  return v5;
}

@end