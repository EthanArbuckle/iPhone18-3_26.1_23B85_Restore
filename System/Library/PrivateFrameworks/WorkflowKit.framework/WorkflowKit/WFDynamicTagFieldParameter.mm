@interface WFDynamicTagFieldParameter
- (WFDynamicTagFieldDataSource)dataSource;
- (id)suggestedTags;
@end

@implementation WFDynamicTagFieldParameter

- (WFDynamicTagFieldDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)suggestedTags
{
  dataSource = [(WFDynamicTagFieldParameter *)self dataSource];
  v4 = [dataSource suggestedTagsForTagField:self];

  return v4;
}

@end