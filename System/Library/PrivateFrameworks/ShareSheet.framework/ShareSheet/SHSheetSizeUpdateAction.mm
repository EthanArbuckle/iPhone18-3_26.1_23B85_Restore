@interface SHSheetSizeUpdateAction
- (BOOL)isCompact;
- (BOOL)isResizable;
- (BOOL)isSLMEnabled;
- (SHSheetSizeUpdateAction)initWithSize:(BOOL)size isResizable:(BOOL)resizable;
@end

@implementation SHSheetSizeUpdateAction

- (SHSheetSizeUpdateAction)initWithSize:(BOOL)size isResizable:(BOOL)resizable
{
  resizableCopy = resizable;
  sizeCopy = size;
  v7 = _ShareSheetSolariumEnabled();
  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:sizeCopy];
  [v8 setObject:v9 forSetting:7];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:resizableCopy];
  [v8 setObject:v10 forSetting:8];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v8 setObject:v11 forSetting:9];

  v12 = [(SHSheetSizeUpdateAction *)self initWithInfo:v8 responder:0];
  return v12;
}

- (BOOL)isCompact
{
  info = [(SHSheetSizeUpdateAction *)self info];
  v3 = [info objectForSetting:7];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isResizable
{
  info = [(SHSheetSizeUpdateAction *)self info];
  v3 = [info objectForSetting:8];
  v4 = [v3 integerValue] != 0;

  return v4;
}

- (BOOL)isSLMEnabled
{
  info = [(SHSheetSizeUpdateAction *)self info];
  v3 = [info objectForSetting:9];
  v4 = [v3 integerValue] != 0;

  return v4;
}

@end