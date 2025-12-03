@interface STUIStatusBarActivityAction
+ (id)actionForBackgroundActivityWithIdentifier:(id)identifier;
@end

@implementation STUIStatusBarActivityAction

+ (id)actionForBackgroundActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__STUIStatusBarActivityAction_actionForBackgroundActivityWithIdentifier___block_invoke;
  v8[3] = &unk_279D38240;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [self actionWithBlock:v8];

  return v6;
}

uint64_t __73__STUIStatusBarActivityAction_actionForBackgroundActivityWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = STUIStyleOverrideForBackgroundActivityIdentifier(*(a1 + 32));
  v5 = MEMORY[0x277D76620];
  v6 = objc_opt_respondsToSelector();
  v7 = *v5;
  if (v6)
  {
    v8 = [v7 handleStatusBarTapForBackgroundActivityWithIdentifier:*(a1 + 32)];
  }

  else
  {
    v8 = [v7 handleDoubleHeightStatusBarTapWithStyleOverride:v4];
  }

  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if ((v8 & 1) == 0 && v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D75590]) initWithStatusBarStyle:0 andStatusBarStyleOverride:v4];
    v11 = [v3 window];
    v12 = [v11 _StatusBar_fbsScene];
    v13 = [MEMORY[0x277CBEB98] setWithObject:v10];
    [v12 sendActions:v13];
  }

  return v9;
}

@end