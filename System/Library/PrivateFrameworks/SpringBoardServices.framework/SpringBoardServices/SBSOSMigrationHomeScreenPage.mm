@interface SBSOSMigrationHomeScreenPage
- (SBSOSMigrationHomeScreenPage)initWithCoder:(id)coder;
- (SBSOSMigrationHomeScreenPage)initWithIdentifier:(int64_t)identifier numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns layoutItems:(id)items;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSOSMigrationHomeScreenPage

- (SBSOSMigrationHomeScreenPage)initWithIdentifier:(int64_t)identifier numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns layoutItems:(id)items
{
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = SBSOSMigrationHomeScreenPage;
  v11 = [(SBSOSMigrationHomeScreenPage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = identifier;
    v13 = [itemsCopy copy];
    layoutItems = v12->_layoutItems;
    v12->_layoutItems = v13;

    v12->_numberOfRows = rows;
    v12->_numberOfColumns = columns;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenPage identifier](self forKey:{"identifier"), @"identifer"}];
  layoutItems = [(SBSOSMigrationHomeScreenPage *)self layoutItems];
  [coderCopy encodeObject:layoutItems forKey:@"layoutItems"];

  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenPage numberOfRows](self forKey:{"numberOfRows"), @"numberOfRows"}];
  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenPage numberOfColumns](self forKey:{"numberOfColumns"), @"numberOfColumns"}];
}

- (SBSOSMigrationHomeScreenPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"identifier"];
  v6 = objc_opt_self();
  v7 = [coderCopy decodeArrayOfObjectsOfClass:v6 forKey:@"layoutItems"];

  v8 = [coderCopy decodeIntegerForKey:@"numberOfRows"];
  v9 = [coderCopy decodeIntegerForKey:@"numberOfColumns"];

  v10 = [(SBSOSMigrationHomeScreenPage *)self initWithIdentifier:v5 numberOfRows:v8 numberOfColumns:v9 layoutItems:v7];
  return v10;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SBSOSMigrationHomeScreenPage_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

id __58__SBSOSMigrationHomeScreenPage_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"identifier"), @"identifier"}];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) layoutItems];
  v5 = [v3 appendObject:v4 withName:@"layoutItems"];

  v6 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"numberOfRows"), @"numberOfRows"}];
  return [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"numberOfColumns"), @"numberOfColumns"}];
}

@end