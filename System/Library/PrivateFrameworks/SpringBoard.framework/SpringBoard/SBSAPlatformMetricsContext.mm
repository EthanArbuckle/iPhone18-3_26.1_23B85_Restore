@interface SBSAPlatformMetricsContext
+ (id)instanceWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBSAPlatformMetricsContext)init;
- (SBSAPlatformMetricsContext)initWithPlatformMetricsContext:(id)a3;
- (double)customLayoutOvalCornerRadius;
- (double)customLayoutSquareCornerRadius;
- (double)customLayoutSquareLargeCornerRadius;
- (double)customLayoutTallRectCornerRadius;
- (double)displayCornerRadius;
- (double)maximumCornerRadius;
- (double)minimumEdgePadding;
- (id)copyBySettingCustomLayoutOvalCornerRadius:(double)a3;
- (id)copyBySettingCustomLayoutSquareCornerRadius:(double)a3;
- (id)copyBySettingCustomLayoutSquareLargeCornerRadius:(double)a3;
- (id)copyBySettingCustomLayoutTallRectCornerRadius:(double)a3;
- (id)copyBySettingDisplayCornerRadius:(double)a3;
- (id)copyBySettingMaximumCornerRadius:(double)a3;
- (id)copyBySettingMinimumEdgePadding:(double)a3;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setCustomLayoutOvalCornerRadius:(double)a3;
- (void)_setCustomLayoutSquareCornerRadius:(double)a3;
- (void)_setCustomLayoutSquareLargeCornerRadius:(double)a3;
- (void)_setCustomLayoutTallRectCornerRadius:(double)a3;
- (void)_setDisplayCornerRadius:(double)a3;
- (void)_setMaximumCornerRadius:(double)a3;
- (void)_setMinimumEdgePadding:(double)a3;
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

- (SBSAPlatformMetricsContext)initWithPlatformMetricsContext:(id)a3
{
  v4 = a3;
  v5 = [(SBSAPlatformMetricsContext *)self init];
  if (v5)
  {
    v6 = [v4[1] mutableCopy];
    backingDictionary = v5->_backingDictionary;
    v5->_backingDictionary = v6;
  }

  return v5;
}

- (void)_setMaximumCornerRadius:(double)a3
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"maximumCornerRadius"];
}

- (id)copyBySettingMaximumCornerRadius:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SBSAPlatformMetricsContext_copyBySettingMaximumCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = a3;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutSquareCornerRadius:(double)a3
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutSquareCornerRadius"];
}

- (double)customLayoutSquareCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutSquareCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutSquareCornerRadius:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__SBSAPlatformMetricsContext_copyBySettingCustomLayoutSquareCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = a3;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutSquareLargeCornerRadius:(double)a3
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutSquareLargeCornerRadius"];
}

- (double)customLayoutSquareLargeCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutSquareLargeCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutSquareLargeCornerRadius:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__SBSAPlatformMetricsContext_copyBySettingCustomLayoutSquareLargeCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = a3;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutOvalCornerRadius:(double)a3
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutOvalCornerRadius"];
}

- (double)customLayoutOvalCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutOvalCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutOvalCornerRadius:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBSAPlatformMetricsContext_copyBySettingCustomLayoutOvalCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = a3;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setCustomLayoutTallRectCornerRadius:(double)a3
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"customLayoutTallRectCornerRadius"];
}

- (double)customLayoutTallRectCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"customLayoutTallRectCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingCustomLayoutTallRectCornerRadius:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__SBSAPlatformMetricsContext_copyBySettingCustomLayoutTallRectCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = a3;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setMinimumEdgePadding:(double)a3
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"minimumEdgePadding"];
}

- (double)minimumEdgePadding
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"minimumEdgePadding"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingMinimumEdgePadding:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SBSAPlatformMetricsContext_copyBySettingMinimumEdgePadding___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = a3;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (void)_setDisplayCornerRadius:(double)a3
{
  backingDictionary = self->_backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"displayCornerRadius"];
}

- (double)displayCornerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->_backingDictionary objectForKey:@"displayCornerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingDisplayCornerRadius:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SBSAPlatformMetricsContext_copyBySettingDisplayCornerRadius___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  *&v4[4] = a3;
  return [(SBSAPlatformMetricsContext *)self copyWithBlock:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  backingDictionary = self->_backingDictionary;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__SBSAPlatformMetricsContext_isEqual___block_invoke;
  v11[3] = &unk_2783ACDB8;
  v12 = v4;
  v7 = v4;
  v8 = [v5 appendObject:backingDictionary counterpart:v11];
  v9 = [v8 isEqual];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_backingDictionary];
  v5 = [v4 hash];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithPlatformMetricsContext:self];
}

+ (id)instanceWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:v3];

  return v5;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSAPlatformMetricsContext *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

@end