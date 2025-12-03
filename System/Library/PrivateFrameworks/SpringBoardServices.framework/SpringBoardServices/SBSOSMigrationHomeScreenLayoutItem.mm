@interface SBSOSMigrationHomeScreenLayoutItem
- (SBSOSMigrationHomeScreenLayoutItem)initWithCoder:(id)coder;
- (SBSOSMigrationHomeScreenLayoutItem)initWithIdentifier:(int64_t)identifier rowIndex:(unint64_t)index columnIndex:(unint64_t)columnIndex item:(id)item;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSOSMigrationHomeScreenLayoutItem

- (SBSOSMigrationHomeScreenLayoutItem)initWithIdentifier:(int64_t)identifier rowIndex:(unint64_t)index columnIndex:(unint64_t)columnIndex item:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = SBSOSMigrationHomeScreenLayoutItem;
  v11 = [(SBSOSMigrationHomeScreenLayoutItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = identifier;
    v13 = [itemCopy copyWithZone:0];
    item = v12->_item;
    v12->_item = v13;

    v12->_rowIndex = index;
    v12->_columnIndex = columnIndex;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenLayoutItem identifier](self forKey:{"identifier"), @"identifer"}];
  item = [(SBSOSMigrationHomeScreenLayoutItem *)self item];
  [coderCopy encodeObject:item forKey:@"item"];

  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenLayoutItem rowIndex](self forKey:{"rowIndex"), @"rowIndex"}];
  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenLayoutItem columnIndex](self forKey:{"columnIndex"), @"columnIndex"}];
}

- (SBSOSMigrationHomeScreenLayoutItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v6 setWithObjects:{v7, v8, v9, 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"item"];

  v12 = [coderCopy decodeIntegerForKey:@"rowIndex"];
  v13 = [coderCopy decodeIntegerForKey:@"columnIndex"];

  v14 = [(SBSOSMigrationHomeScreenLayoutItem *)self initWithIdentifier:v5 rowIndex:v12 columnIndex:v13 item:v11];
  return v14;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__SBSOSMigrationHomeScreenLayoutItem_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

id __64__SBSOSMigrationHomeScreenLayoutItem_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"identifier"), @"identifier"}];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) item];
  v5 = [v3 appendObject:v4 withName:@"item"];

  v6 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"rowIndex"), @"rowIndex"}];
  return [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"columnIndex"), @"columnIndex"}];
}

@end