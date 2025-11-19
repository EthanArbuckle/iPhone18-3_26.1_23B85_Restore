@interface SBHWidgetDisplayConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBHWidgetDisplayConfiguration)init;
- (SBHWidgetDisplayConfiguration)initWithRenderScheme:(id)a3 colorScheme:(unint64_t)a4 tintParameters:(id)a5;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBHWidgetDisplayConfiguration

- (SBHWidgetDisplayConfiguration)initWithRenderScheme:(id)a3 colorScheme:(unint64_t)a4 tintParameters:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = SBHWidgetDisplayConfiguration;
  v10 = [(SBHWidgetDisplayConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    renderScheme = v10->_renderScheme;
    v10->_renderScheme = v11;

    v10->_colorScheme = a4;
    v13 = [v9 copy];
    tintParameters = v10->_tintParameters;
    v10->_tintParameters = v13;
  }

  return v10;
}

- (SBHWidgetDisplayConfiguration)init
{
  v3 = objc_alloc_init(MEMORY[0x1E6994420]);
  v4 = [(SBHWidgetDisplayConfiguration *)self initWithRenderScheme:v3 colorScheme:0 tintParameters:0];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      if (BSEqualObjects() && self->_colorScheme == v7->_colorScheme)
      {
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SBHWidgetDisplayConfiguration *)self renderScheme];
  v4 = [v3 hash];
  v5 = [(SBHWidgetDisplayConfiguration *)self colorScheme]^ v4;
  v6 = [(SBHWidgetDisplayConfiguration *)self tintParameters];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHWidgetDisplayConfiguration *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SBHWidgetDisplayConfiguration_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __62__SBHWidgetDisplayConfiguration_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) renderScheme];
  v4 = [v2 appendObject:v3 withName:@"renderScheme"];

  v5 = *(a1 + 32);
  v6 = MEMORY[0x1BFB4F610]([*(a1 + 40) colorScheme]);
  [v5 appendString:v6 withName:@"colorScheme" skipIfEmpty:0];

  v7 = *(a1 + 32);
  v9 = [*(a1 + 40) tintParameters];
  v8 = [v7 appendObject:v9 withName:@"tintParameters"];
}

@end