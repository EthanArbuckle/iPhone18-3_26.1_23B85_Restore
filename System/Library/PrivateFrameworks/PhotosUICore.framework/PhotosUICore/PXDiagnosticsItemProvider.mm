@interface PXDiagnosticsItemProvider
+ (PXDiagnosticsItemProvider)providerWithItem:(id)item identifier:(id)identifier;
- (BOOL)hasItemForIdentifier:(id)identifier;
- (NSSet)registeredIdentifiers;
- (PXDiagnosticsItemProvider)init;
- (id)itemForIdentifier:(id)identifier;
- (void)registerItem:(id)item forIdentifier:(id)identifier;
- (void)registerItemForIdentifier:(id)identifier loadHandler:(id)handler;
@end

@implementation PXDiagnosticsItemProvider

- (void)registerItem:(id)item forIdentifier:(id)identifier
{
  itemCopy = item;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXDiagnosticsItemProvider_registerItem_forIdentifier___block_invoke;
  v8[3] = &unk_1E774BB70;
  v9 = itemCopy;
  v7 = itemCopy;
  [(PXDiagnosticsItemProvider *)self registerItemForIdentifier:identifier loadHandler:v8];
}

- (NSSet)registeredIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  _loadHandlers = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  allKeys = [_loadHandlers allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (id)itemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _loadHandlers = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  v6 = [_loadHandlers objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = v6[2](v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _loadHandlers = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  v6 = [_loadHandlers objectForKeyedSubscript:identifierCopy];

  return v6 != 0;
}

- (void)registerItemForIdentifier:(id)identifier loadHandler:(id)handler
{
  identifierCopy = identifier;
  v8 = [handler copy];
  _loadHandlers = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  [_loadHandlers setObject:v8 forKeyedSubscript:identifierCopy];
}

- (PXDiagnosticsItemProvider)init
{
  v6.receiver = self;
  v6.super_class = PXDiagnosticsItemProvider;
  v2 = [(PXDiagnosticsItemProvider *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    loadHandlers = v2->__loadHandlers;
    v2->__loadHandlers = dictionary;
  }

  return v2;
}

+ (PXDiagnosticsItemProvider)providerWithItem:(id)item identifier:(id)identifier
{
  identifierCopy = identifier;
  itemCopy = item;
  v8 = objc_alloc_init(self);
  [v8 registerItem:itemCopy forIdentifier:identifierCopy];

  return v8;
}

@end