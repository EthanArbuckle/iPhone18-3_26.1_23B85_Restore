@interface SBSOSMigrationHomeScreenWidget
- (SBSOSMigrationHomeScreenWidget)initWithCoder:(id)a3;
- (SBSOSMigrationHomeScreenWidget)initWithWidgetIdentifier:(id)a3 widgetKind:(id)a4 hostApp:(id)a5 numberOfRows:(unint64_t)a6 numberOfColumns:(unint64_t)a7;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSOSMigrationHomeScreenWidget

- (SBSOSMigrationHomeScreenWidget)initWithWidgetIdentifier:(id)a3 widgetKind:(id)a4 hostApp:(id)a5 numberOfRows:(unint64_t)a6 numberOfColumns:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v23.receiver = self;
  v23.super_class = SBSOSMigrationHomeScreenWidget;
  v15 = [(SBSOSMigrationHomeScreenWidget *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    widgetIdentifier = v15->_widgetIdentifier;
    v15->_widgetIdentifier = v16;

    v18 = [v13 copy];
    widgetKind = v15->_widgetKind;
    v15->_widgetKind = v18;

    v20 = [v14 copy];
    hostApp = v15->_hostApp;
    v15->_hostApp = v20;

    v15->_numberOfRows = a6;
    v15->_numberOfColumns = a7;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(SBSOSMigrationHomeScreenWidget *)self widgetIdentifier];
  [v7 encodeObject:v4 forKey:@"widgetIdentifier"];

  v5 = [(SBSOSMigrationHomeScreenWidget *)self widgetKind];
  [v7 encodeObject:v5 forKey:@"widgetKind"];

  v6 = [(SBSOSMigrationHomeScreenWidget *)self hostApp];
  [v7 encodeObject:v6 forKey:@"hostApp"];

  [v7 encodeInteger:-[SBSOSMigrationHomeScreenWidget numberOfRows](self forKey:{"numberOfRows"), @"numberOfRows"}];
  [v7 encodeInteger:-[SBSOSMigrationHomeScreenWidget numberOfColumns](self forKey:{"numberOfColumns"), @"numberOfColumns"}];
}

- (SBSOSMigrationHomeScreenWidget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"widgetIdentifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"widgetKind"];

  v9 = objc_opt_self();
  v10 = [v4 decodeObjectOfClass:v9 forKey:@"hostApp"];

  v11 = [v4 decodeIntegerForKey:@"numberOfRows"];
  v12 = [v4 decodeIntegerForKey:@"numberOfColumns"];

  v13 = [(SBSOSMigrationHomeScreenWidget *)self initWithWidgetIdentifier:v6 widgetKind:v8 hostApp:v10 numberOfRows:v11 numberOfColumns:v12];
  return v13;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SBSOSMigrationHomeScreenWidget_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

id __60__SBSOSMigrationHomeScreenWidget_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) widgetIdentifier];
  v4 = [v2 appendObject:v3 withName:@"widgetIdentifier"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) widgetKind];
  v7 = [v5 appendObject:v6 withName:@"widgetKind"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) hostApp];
  v10 = [v8 appendObject:v9 withName:@"hostApp"];

  v11 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"numberOfRows"), @"numberOfRows"}];
  return [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"numberOfColumns"), @"numberOfColumns"}];
}

@end