@interface SBSOSMigrationHomeScreenWidget
- (SBSOSMigrationHomeScreenWidget)initWithCoder:(id)coder;
- (SBSOSMigrationHomeScreenWidget)initWithWidgetIdentifier:(id)identifier widgetKind:(id)kind hostApp:(id)app numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSOSMigrationHomeScreenWidget

- (SBSOSMigrationHomeScreenWidget)initWithWidgetIdentifier:(id)identifier widgetKind:(id)kind hostApp:(id)app numberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns
{
  identifierCopy = identifier;
  kindCopy = kind;
  appCopy = app;
  v23.receiver = self;
  v23.super_class = SBSOSMigrationHomeScreenWidget;
  v15 = [(SBSOSMigrationHomeScreenWidget *)&v23 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    widgetIdentifier = v15->_widgetIdentifier;
    v15->_widgetIdentifier = v16;

    v18 = [kindCopy copy];
    widgetKind = v15->_widgetKind;
    v15->_widgetKind = v18;

    v20 = [appCopy copy];
    hostApp = v15->_hostApp;
    v15->_hostApp = v20;

    v15->_numberOfRows = rows;
    v15->_numberOfColumns = columns;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  widgetIdentifier = [(SBSOSMigrationHomeScreenWidget *)self widgetIdentifier];
  [coderCopy encodeObject:widgetIdentifier forKey:@"widgetIdentifier"];

  widgetKind = [(SBSOSMigrationHomeScreenWidget *)self widgetKind];
  [coderCopy encodeObject:widgetKind forKey:@"widgetKind"];

  hostApp = [(SBSOSMigrationHomeScreenWidget *)self hostApp];
  [coderCopy encodeObject:hostApp forKey:@"hostApp"];

  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenWidget numberOfRows](self forKey:{"numberOfRows"), @"numberOfRows"}];
  [coderCopy encodeInteger:-[SBSOSMigrationHomeScreenWidget numberOfColumns](self forKey:{"numberOfColumns"), @"numberOfColumns"}];
}

- (SBSOSMigrationHomeScreenWidget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"widgetIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"widgetKind"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"hostApp"];

  v11 = [coderCopy decodeIntegerForKey:@"numberOfRows"];
  v12 = [coderCopy decodeIntegerForKey:@"numberOfColumns"];

  v13 = [(SBSOSMigrationHomeScreenWidget *)self initWithWidgetIdentifier:v6 widgetKind:v8 hostApp:v10 numberOfRows:v11 numberOfColumns:v12];
  return v13;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SBSOSMigrationHomeScreenWidget_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
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