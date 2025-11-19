@interface NSAttributedString(NSAttributedStringAgent)
+ (id)_allowedOptionClasses;
+ (uint64_t)_allowedTokensClasses;
@end

@implementation NSAttributedString(NSAttributedStringAgent)

+ (id)_allowedOptionClasses
{
  v0 = [MEMORY[0x1E695DFA8] setWithSet:{objc_msgSend(MEMORY[0x1E696AAB0], "allowedSecureCodingClasses")}];
  [v0 addObject:objc_opt_class()];
  [v0 addObject:objc_opt_class()];
  [v0 addObject:objc_opt_class()];
  v1 = NSClassFromString(@"NSAppearance");
  if (v1)
  {
    [v0 addObject:v1];
  }

  v2 = NSClassFromString(@"UIColor");
  if (v2)
  {
    [v0 addObject:v2];
  }

  v3 = [v0 copy];

  return v3;
}

+ (uint64_t)_allowedTokensClasses
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  return [v0 setWithObjects:{v1, objc_opt_class(), 0}];
}

@end