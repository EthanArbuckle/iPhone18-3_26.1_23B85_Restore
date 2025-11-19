@interface WLMigrationContext
- (WLMigrationContext)init;
@end

@implementation WLMigrationContext

- (WLMigrationContext)init
{
  v5.receiver = self;
  v5.super_class = WLMigrationContext;
  v2 = [(WLMigrationContext *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D7B8A8]);
    [(WLMigrationContext *)v2 setPayload:v3];
  }

  return v2;
}

@end