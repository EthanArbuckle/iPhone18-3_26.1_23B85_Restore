@interface SBSOSMigrationHomeScreenLayoutItem
- (SBSOSMigrationHomeScreenLayoutItem)initWithCoder:(id)a3;
- (SBSOSMigrationHomeScreenLayoutItem)initWithIdentifier:(int64_t)a3 rowIndex:(unint64_t)a4 columnIndex:(unint64_t)a5 item:(id)a6;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSOSMigrationHomeScreenLayoutItem

- (SBSOSMigrationHomeScreenLayoutItem)initWithIdentifier:(int64_t)a3 rowIndex:(unint64_t)a4 columnIndex:(unint64_t)a5 item:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = SBSOSMigrationHomeScreenLayoutItem;
  v11 = [(SBSOSMigrationHomeScreenLayoutItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = a3;
    v13 = [v10 copyWithZone:0];
    item = v12->_item;
    v12->_item = v13;

    v12->_rowIndex = a4;
    v12->_columnIndex = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[SBSOSMigrationHomeScreenLayoutItem identifier](self forKey:{"identifier"), @"identifer"}];
  v4 = [(SBSOSMigrationHomeScreenLayoutItem *)self item];
  [v5 encodeObject:v4 forKey:@"item"];

  [v5 encodeInteger:-[SBSOSMigrationHomeScreenLayoutItem rowIndex](self forKey:{"rowIndex"), @"rowIndex"}];
  [v5 encodeInteger:-[SBSOSMigrationHomeScreenLayoutItem columnIndex](self forKey:{"columnIndex"), @"columnIndex"}];
}

- (SBSOSMigrationHomeScreenLayoutItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v6 setWithObjects:{v7, v8, v9, 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"item"];

  v12 = [v4 decodeIntegerForKey:@"rowIndex"];
  v13 = [v4 decodeIntegerForKey:@"columnIndex"];

  v14 = [(SBSOSMigrationHomeScreenLayoutItem *)self initWithIdentifier:v5 rowIndex:v12 columnIndex:v13 item:v11];
  return v14;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__SBSOSMigrationHomeScreenLayoutItem_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
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