@interface SBSAPlatformMetricsContext
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (SBSAPlatformMetricsContext)init;
- (SBSAPlatformMetricsContext)initWithPlatformMetricsContext:(id)context;
- (double)customLayoutOvalCornerRadius;
- (double)customLayoutSquareCornerRadius;
- (double)customLayoutSquareLargeCornerRadius;
- (double)customLayoutTallRectCornerRadius;
- (double)displayCornerRadius;
- (double)maximumCornerRadius;
- (double)minimumEdgePadding;
- (id)copyBySettingCustomLayoutOvalCornerRadius:(double)radius;
- (id)copyBySettingCustomLayoutSquareCornerRadius:(double)radius;
- (id)copyBySettingCustomLayoutSquareLargeCornerRadius:(double)radius;
- (id)copyBySettingCustomLayoutTallRectCornerRadius:(double)radius;
- (id)copyBySettingDisplayCornerRadius:(double)radius;
- (id)copyBySettingMaximumCornerRadius:(double)radius;
- (id)copyBySettingMinimumEdgePadding:(double)padding;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_setCustomLayoutOvalCornerRadius:(double)radius;
- (void)_setCustomLayoutSquareCornerRadius:(double)radius;
- (void)_setCustomLayoutSquareLargeCornerRadius:(double)radius;
- (void)_setCustomLayoutTallRectCornerRadius:(double)radius;
- (void)_setDisplayCornerRadius:(double)radius;
- (void)_setMaximumCornerRadius:(double)radius;
- (void)_setMinimumEdgePadding:(double)padding;
@end

@implementation SBSAPlatformMetricsContext

- (SBSAPlatformMetricsContext)init
{
  v6.receiver = self;
  v6.super_class = SBSAPlatformMetricsContext;
  v2 = [(SBSAPlatformMetricsContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v3;
  }

  return v2;
}

- (double)maximumCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"maximumCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (SBSAPlatformMetricsContext)initWithPlatformMetricsContext:(id)context
{
  contextCopy = context;
  v5 = [(SBSAPlatformMetricsContext *)self init];
  if (v5)
  {
    v6 = [contextCopy[1] mutableCopy];
    backingDictionary = v5->_backingDictionary;
    v5->_backingDictionary = v6;
  }

  return v5;
}

- (void)_setMaximumCornerRadius:(double)radius
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"maximumCornerRadius"];
}

- (id)copyBySettingMaximumCornerRadius:(double)radius
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SBSAPlatformMetricsContext_copyBySettingMaximumCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = radius;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutSquareCornerRadius:(double)radius
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutSquareCornerRadius"];
}

- (double)customLayoutSquareCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutSquareCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutSquareCornerRadius:(double)radius
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__SBSAPlatformMetricsContext_copyBySettingCustomLayoutSquareCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = radius;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutSquareLargeCornerRadius:(double)radius
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutSquareLargeCornerRadius"];
}

- (double)customLayoutSquareLargeCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutSquareLargeCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutSquareLargeCornerRadius:(double)radius
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__SBSAPlatformMetricsContext_copyBySettingCustomLayoutSquareLargeCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = radius;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutOvalCornerRadius:(double)radius
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutOvalCornerRadius"];
}

- (double)customLayoutOvalCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutOvalCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutOvalCornerRadius:(double)radius
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBSAPlatformMetricsContext_copyBySettingCustomLayoutOvalCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = radius;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutTallRectCornerRadius:(double)radius
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutTallRectCornerRadius"];
}

- (double)customLayoutTallRectCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutTallRectCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutTallRectCornerRadius:(double)radius
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__SBSAPlatformMetricsContext_copyBySettingCustomLayoutTallRectCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = radius;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setMinimumEdgePadding:(double)padding
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:padding];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"minimumEdgePadding"];
}

- (double)minimumEdgePadding
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"minimumEdgePadding"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingMinimumEdgePadding:(double)padding
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SBSAPlatformMetricsContext_copyBySettingMinimumEdgePadding___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = padding;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setDisplayCornerRadius:(double)radius
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"displayCornerRadius"];
}

- (double)displayCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"displayCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingDisplayCornerRadius:(double)radius
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SBSAPlatformMetricsContext_copyBySettingDisplayCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = radius;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  backingDictionary = self->_backingDictionary;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__SBSAPlatformMetricsContext_isEqual___block_invoke;
  v11[3] = &unk_2783ACDB8;
  v12 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:backingDictionary counterpart:v11];
  v9 = [v8 isEqual];

  return v9;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_backingDictionary];
  v5 = [v4 hash];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithPlatformMetricsContext:self];
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSAPlatformMetricsContext *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end