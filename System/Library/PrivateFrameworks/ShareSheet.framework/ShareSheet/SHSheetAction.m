@interface SHSheetAction
- (SHSheetAction)initWithType:(int64_t)a3;
- (int64_t)type;
@end

@implementation SHSheetAction

- (SHSheetAction)initWithType:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:0];

  v7 = [(SHSheetAction *)self initWithInfo:v5 responder:0];
  return v7;
}

- (int64_t)type
{
  v2 = [(SHSheetAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 integerValue];

  return v4;
}

@end