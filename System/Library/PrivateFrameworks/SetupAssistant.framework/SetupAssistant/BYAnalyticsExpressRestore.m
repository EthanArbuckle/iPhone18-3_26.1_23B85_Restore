@interface BYAnalyticsExpressRestore
- (BYAnalyticsExpressRestore)initWithAnalyticsManager:(id)a3;
- (id)eventPayload;
@end

@implementation BYAnalyticsExpressRestore

- (BYAnalyticsExpressRestore)initWithAnalyticsManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BYAnalyticsExpressRestore;
  v5 = [(BYAnalyticsExpressRestore *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__BYAnalyticsExpressRestore_initWithAnalyticsManager___block_invoke;
    v8[3] = &unk_1E7D036A0;
    v9 = v5;
    [v4 addEvent:@"com.apple.setupassistant.ios.expressRestore.pane" withPayloadBlock:v8 persist:0];
  }

  return v6;
}

- (id)eventPayload
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = [(BYAnalyticsExpressRestore *)self restoreChoice];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7D03DF0[v3];
  }

  v10[0] = @"paneShown";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BYAnalyticsExpressRestore paneShown](self, "paneShown")}];
  v11[0] = v5;
  v10[1] = @"offeredBackup";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BYAnalyticsExpressRestore offeredBackup](self, "offeredBackup")}];
  v10[2] = @"restoreChoice";
  v11[1] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end