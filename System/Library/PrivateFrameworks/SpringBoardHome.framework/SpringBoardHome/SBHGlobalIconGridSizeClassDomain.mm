@interface SBHGlobalIconGridSizeClassDomain
- (SBHGlobalIconGridSizeClassDomain)initWithGridSizeClasses:(id)classes order:(id)order fallbackDomain:(id)domain;
@end

@implementation SBHGlobalIconGridSizeClassDomain

- (SBHGlobalIconGridSizeClassDomain)initWithGridSizeClasses:(id)classes order:(id)order fallbackDomain:(id)domain
{
  orderCopy = order;
  classesCopy = classes;
  v9 = +[SBHIconGridSizeClassDomain builtInDomain];
  v12.receiver = self;
  v12.super_class = SBHGlobalIconGridSizeClassDomain;
  v10 = [(SBHMutableIconGridSizeClassDomain *)&v12 initWithGridSizeClasses:classesCopy order:orderCopy fallbackDomain:v9];

  return v10;
}

@end