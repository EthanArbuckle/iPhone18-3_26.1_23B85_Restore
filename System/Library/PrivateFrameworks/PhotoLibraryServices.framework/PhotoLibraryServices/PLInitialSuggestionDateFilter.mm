@interface PLInitialSuggestionDateFilter
- (PLInitialSuggestionDateFilter)initWithTemplateDateType:(unint64_t)type psiDateFilter:(id)filter;
- (id)description;
- (void)dealloc;
@end

@implementation PLInitialSuggestionDateFilter

- (id)description
{
  if ([(PLInitialSuggestionDateFilter *)self assetIds])
  {
    Count = CFArrayGetCount([(PLInitialSuggestionDateFilter *)self assetIds]);
  }

  else
  {
    Count = 0;
  }

  templateDateType = [(PLInitialSuggestionDateFilter *)self templateDateType];
  if (templateDateType - 1 > 8)
  {
    v5 = @"PLSearchSuggestionDateTemplateCategoryTypeNone";
  }

  else
  {
    v5 = off_1E7564C90[templateDateType - 1];
  }

  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  psiDateFilter = [(PLInitialSuggestionDateFilter *)self psiDateFilter];
  count = [v7 stringWithFormat:@"template date type: %@, date filter: %@, assetIds: %tu", v6, psiDateFilter, Count];

  return count;
}

- (void)dealloc
{
  assetIds = self->_assetIds;
  if (assetIds)
  {
    CFRelease(assetIds);
  }

  v4.receiver = self;
  v4.super_class = PLInitialSuggestionDateFilter;
  [(PLInitialSuggestionDateFilter *)&v4 dealloc];
}

- (PLInitialSuggestionDateFilter)initWithTemplateDateType:(unint64_t)type psiDateFilter:(id)filter
{
  filterCopy = filter;
  v11.receiver = self;
  v11.super_class = PLInitialSuggestionDateFilter;
  v8 = [(PLInitialSuggestionDateFilter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_templateDateType = type;
    objc_storeStrong(&v8->_psiDateFilter, filter);
  }

  return v9;
}

@end