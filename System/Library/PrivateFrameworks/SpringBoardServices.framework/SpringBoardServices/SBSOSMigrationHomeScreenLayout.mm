@interface SBSOSMigrationHomeScreenLayout
- (SBSOSMigrationHomeScreenLayout)initWithCoder:(id)coder;
- (SBSOSMigrationHomeScreenLayout)initWithPages:(id)pages bottomBarItems:(id)items;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSOSMigrationHomeScreenLayout

- (SBSOSMigrationHomeScreenLayout)initWithPages:(id)pages bottomBarItems:(id)items
{
  pagesCopy = pages;
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = SBSOSMigrationHomeScreenLayout;
  v8 = [(SBSOSMigrationHomeScreenLayout *)&v14 init];
  if (v8)
  {
    v9 = [pagesCopy copy];
    pages = v8->_pages;
    v8->_pages = v9;

    v11 = [itemsCopy copy];
    bottomBarItems = v8->_bottomBarItems;
    v8->_bottomBarItems = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pages = [(SBSOSMigrationHomeScreenLayout *)self pages];
  [coderCopy encodeObject:pages forKey:@"pages"];

  bottomBarItems = [(SBSOSMigrationHomeScreenLayout *)self bottomBarItems];
  [coderCopy encodeObject:bottomBarItems forKey:@"bottomBarItems"];
}

- (SBSOSMigrationHomeScreenLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeArrayOfObjectsOfClass:v5 forKey:@"pages"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeArrayOfObjectsOfClass:v7 forKey:@"bottomBarItems"];

  v9 = [(SBSOSMigrationHomeScreenLayout *)self initWithPages:v6 bottomBarItems:v8];
  return v9;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SBSOSMigrationHomeScreenLayout_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

void __60__SBSOSMigrationHomeScreenLayout_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pages];
  v4 = [v2 appendObject:v3 withName:@"pages"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) bottomBarItems];
  v6 = [v5 appendObject:v7 withName:@"bottomBarItems"];
}

@end