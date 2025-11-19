@interface SBHGlobalIconGridSizeClassDomain
- (SBHGlobalIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5;
@end

@implementation SBHGlobalIconGridSizeClassDomain

- (SBHGlobalIconGridSizeClassDomain)initWithGridSizeClasses:(id)a3 order:(id)a4 fallbackDomain:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[SBHIconGridSizeClassDomain builtInDomain];
  v12.receiver = self;
  v12.super_class = SBHGlobalIconGridSizeClassDomain;
  v10 = [(SBHMutableIconGridSizeClassDomain *)&v12 initWithGridSizeClasses:v8 order:v7 fallbackDomain:v9];

  return v10;
}

@end