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
  v3 = [(WFDynamicTagFieldParameter *)self dataSource];
  v4 = [v3 suggestedTagsForTagField:self];

  return v4;
}

@end