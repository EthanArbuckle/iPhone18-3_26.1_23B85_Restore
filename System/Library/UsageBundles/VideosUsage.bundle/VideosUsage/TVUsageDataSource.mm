@interface TVUsageDataSource
- (TVUsageDataSource)initWithQuery:(id)a3 entityType:(int64_t)a4 categoryIdentifier:(id)a5 usageItemBlock:(id)a6 usageHeaderBlock:(id)a7;
- (id)_prunedDataSource;
- (id)headerItem;
- (unint64_t)count;
@end

@implementation TVUsageDataSource

- (TVUsageDataSource)initWithQuery:(id)a3 entityType:(int64_t)a4 categoryIdentifier:(id)a5 usageItemBlock:(id)a6 usageHeaderBlock:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = TVUsageDataSource;
  v16 = [(TVUsageDataSource *)&v23 initWithQuery:a3 entityType:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_categoryIdentifier, a5);
    v18 = [v14 copy];
    itemBlock = v17->_itemBlock;
    v17->_itemBlock = v18;

    v20 = [v15 copy];
    headerBlock = v17->_headerBlock;
    v17->_headerBlock = v20;
  }

  return v17;
}

- (unint64_t)count
{
  v3 = [(TVUsageDataSource *)self categoryIdentifier];
  v4 = [v3 isEqualToString:@"CATEGORY_TV_SHOWS"];

  if (v4)
  {
    v5 = [(TVUsageDataSource *)self entities];
    v6 = [v5 count];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TVUsageDataSource;
    return [(TVUsageDataSource *)&v8 count];
  }
}

- (id)headerItem
{
  headerBlock = self->_headerBlock;
  if (headerBlock)
  {
    v3 = [(TVUsageDataSource *)self query];
    headerBlock = (headerBlock)[2](headerBlock, v3);
  }

  return headerBlock;
}

- (id)_prunedDataSource
{
  v3 = [(TVUsageDataSource *)self query];
  v4 = [v3 filterPredicates];

  v5 = [[MPMediaQuery alloc] initWithFilterPredicates:v4];
  [v5 setIgnoreSystemFilterPredicates:1];
  [v5 setIgnoreRestrictionsPredicates:1];
  v6 = [(TVUsageDataSource *)self query];
  [v5 setGroupingType:{objc_msgSend(v6, "groupingType")}];

  v7 = [objc_alloc(objc_opt_class()) initWithQuery:v5 entityType:-[TVUsageDataSource entityType](self categoryIdentifier:"entityType") usageItemBlock:self->_categoryIdentifier usageHeaderBlock:{self->_itemBlock, self->_headerBlock}];

  return v7;
}

@end