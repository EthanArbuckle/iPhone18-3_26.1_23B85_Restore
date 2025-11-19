@interface SHSheetSizeUpdateAction
- (BOOL)isCompact;
- (BOOL)isResizable;
- (BOOL)isSLMEnabled;
- (SHSheetSizeUpdateAction)initWithSize:(BOOL)a3 isResizable:(BOOL)a4;
@end

@implementation SHSheetSizeUpdateAction

- (SHSheetSizeUpdateAction)initWithSize:(BOOL)a3 isResizable:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = _ShareSheetSolariumEnabled();
  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v8 setObject:v9 forSetting:7];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v8 setObject:v10 forSetting:8];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v8 setObject:v11 forSetting:9];

  v12 = [(SHSheetSizeUpdateAction *)self initWithInfo:v8 responder:0];
  return v12;
}

- (BOOL)isCompact
{
  v2 = [(SHSheetSizeUpdateAction *)self info];
  v3 = [v2 objectForSetting:7];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isResizable
{
  v2 = [(SHSheetSizeUpdateAction *)self info];
  v3 = [v2 objectForSetting:8];
  v4 = [v3 integerValue] != 0;

  return v4;
}

- (BOOL)isSLMEnabled
{
  v2 = [(SHSheetSizeUpdateAction *)self info];
  v3 = [v2 objectForSetting:9];
  v4 = [v3 integerValue] != 0;

  return v4;
}

@end