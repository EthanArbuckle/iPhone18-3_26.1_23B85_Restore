@interface PLInitialSuggestionDateFilter
- (PLInitialSuggestionDateFilter)initWithTemplateDateType:(unint64_t)a3 psiDateFilter:(id)a4;
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

  v4 = [(PLInitialSuggestionDateFilter *)self templateDateType];
  if (v4 - 1 > 8)
  {
    v5 = @"PLSearchSuggestionDateTemplateCategoryTypeNone";
  }

  else
  {
    v5 = off_1E7564C90[v4 - 1];
  }

  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(PLInitialSuggestionDateFilter *)self psiDateFilter];
  v9 = [v7 stringWithFormat:@"template date type: %@, date filter: %@, assetIds: %tu", v6, v8, Count];

  return v9;
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

- (PLInitialSuggestionDateFilter)initWithTemplateDateType:(unint64_t)a3 psiDateFilter:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLInitialSuggestionDateFilter;
  v8 = [(PLInitialSuggestionDateFilter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_templateDateType = a3;
    objc_storeStrong(&v8->_psiDateFilter, a4);
  }

  return v9;
}

@end