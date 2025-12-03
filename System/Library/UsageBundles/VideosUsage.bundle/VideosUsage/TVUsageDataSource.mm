@interface TVUsageDataSource
- (TVUsageDataSource)initWithQuery:(id)query entityType:(int64_t)type categoryIdentifier:(id)identifier usageItemBlock:(id)block usageHeaderBlock:(id)headerBlock;
- (id)_prunedDataSource;
- (id)headerItem;
- (unint64_t)count;
@end

@implementation TVUsageDataSource

- (TVUsageDataSource)initWithQuery:(id)query entityType:(int64_t)type categoryIdentifier:(id)identifier usageItemBlock:(id)block usageHeaderBlock:(id)headerBlock
{
  identifierCopy = identifier;
  blockCopy = block;
  headerBlockCopy = headerBlock;
  v23.receiver = self;
  v23.super_class = TVUsageDataSource;
  v16 = [(TVUsageDataSource *)&v23 initWithQuery:query entityType:type];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_categoryIdentifier, identifier);
    v18 = [blockCopy copy];
    itemBlock = v17->_itemBlock;
    v17->_itemBlock = v18;

    v20 = [headerBlockCopy copy];
    headerBlock = v17->_headerBlock;
    v17->_headerBlock = v20;
  }

  return v17;
}

- (unint64_t)count
{
  categoryIdentifier = [(TVUsageDataSource *)self categoryIdentifier];
  v4 = [categoryIdentifier isEqualToString:@"CATEGORY_TV_SHOWS"];

  if (v4)
  {
    entities = [(TVUsageDataSource *)self entities];
    v6 = [entities count];

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
    query = [(TVUsageDataSource *)self query];
    headerBlock = (headerBlock)[2](headerBlock, query);
  }

  return headerBlock;
}

- (id)_prunedDataSource
{
  query = [(TVUsageDataSource *)self query];
  filterPredicates = [query filterPredicates];

  v5 = [[MPMediaQuery alloc] initWithFilterPredicates:filterPredicates];
  [v5 setIgnoreSystemFilterPredicates:1];
  [v5 setIgnoreRestrictionsPredicates:1];
  query2 = [(TVUsageDataSource *)self query];
  [v5 setGroupingType:{objc_msgSend(query2, "groupingType")}];

  v7 = [objc_alloc(objc_opt_class()) initWithQuery:v5 entityType:-[TVUsageDataSource entityType](self categoryIdentifier:"entityType") usageItemBlock:self->_categoryIdentifier usageHeaderBlock:{self->_itemBlock, self->_headerBlock}];

  return v7;
}

@end