@interface SBSOSMigrationHomeScreenPage
- (SBSOSMigrationHomeScreenPage)initWithCoder:(id)a3;
- (SBSOSMigrationHomeScreenPage)initWithIdentifier:(int64_t)a3 numberOfRows:(unint64_t)a4 numberOfColumns:(unint64_t)a5 layoutItems:(id)a6;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSOSMigrationHomeScreenPage

- (SBSOSMigrationHomeScreenPage)initWithIdentifier:(int64_t)a3 numberOfRows:(unint64_t)a4 numberOfColumns:(unint64_t)a5 layoutItems:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = SBSOSMigrationHomeScreenPage;
  v11 = [(SBSOSMigrationHomeScreenPage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = a3;
    v13 = [v10 copy];
    layoutItems = v12->_layoutItems;
    v12->_layoutItems = v13;

    v12->_numberOfRows = a4;
    v12->_numberOfColumns = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[SBSOSMigrationHomeScreenPage identifier](self forKey:{"identifier"), @"identifer"}];
  v4 = [(SBSOSMigrationHomeScreenPage *)self layoutItems];
  [v5 encodeObject:v4 forKey:@"layoutItems"];

  [v5 encodeInteger:-[SBSOSMigrationHomeScreenPage numberOfRows](self forKey:{"numberOfRows"), @"numberOfRows"}];
  [v5 encodeInteger:-[SBSOSMigrationHomeScreenPage numberOfColumns](self forKey:{"numberOfColumns"), @"numberOfColumns"}];
}

- (SBSOSMigrationHomeScreenPage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"identifier"];
  v6 = objc_opt_self();
  v7 = [v4 decodeArrayOfObjectsOfClass:v6 forKey:@"layoutItems"];

  v8 = [v4 decodeIntegerForKey:@"numberOfRows"];
  v9 = [v4 decodeIntegerForKey:@"numberOfColumns"];

  v10 = [(SBSOSMigrationHomeScreenPage *)self initWithIdentifier:v5 numberOfRows:v8 numberOfColumns:v9 layoutItems:v7];
  return v10;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SBSOSMigrationHomeScreenPage_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
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