@interface PXDiagnosticsItemProvider
+ (PXDiagnosticsItemProvider)providerWithItem:(id)a3 identifier:(id)a4;
- (BOOL)hasItemForIdentifier:(id)a3;
- (NSSet)registeredIdentifiers;
- (PXDiagnosticsItemProvider)init;
- (id)itemForIdentifier:(id)a3;
- (void)registerItem:(id)a3 forIdentifier:(id)a4;
- (void)registerItemForIdentifier:(id)a3 loadHandler:(id)a4;
@end

@implementation PXDiagnosticsItemProvider

- (void)registerItem:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXDiagnosticsItemProvider_registerItem_forIdentifier___block_invoke;
  v8[3] = &unk_1E774BB70;
  v9 = v6;
  v7 = v6;
  [(PXDiagnosticsItemProvider *)self registerItemForIdentifier:a4 loadHandler:v8];
}

- (NSSet)registeredIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)itemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  v6 = [v5 objectForKeyedSubscript:v4];

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

- (BOOL)hasItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)registerItemForIdentifier:(id)a3 loadHandler:(id)a4
{
  v6 = a3;
  v8 = [a4 copy];
  v7 = [(PXDiagnosticsItemProvider *)self _loadHandlers];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (PXDiagnosticsItemProvider)init
{
  v6.receiver = self;
  v6.super_class = PXDiagnosticsItemProvider;
  v2 = [(PXDiagnosticsItemProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    loadHandlers = v2->__loadHandlers;
    v2->__loadHandlers = v3;
  }

  return v2;
}

+ (PXDiagnosticsItemProvider)providerWithItem:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 registerItem:v7 forIdentifier:v6];

  return v8;
}

@end