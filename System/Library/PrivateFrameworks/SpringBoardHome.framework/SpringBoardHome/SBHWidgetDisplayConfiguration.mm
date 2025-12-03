@interface SBHWidgetDisplayConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBHWidgetDisplayConfiguration)init;
- (SBHWidgetDisplayConfiguration)initWithRenderScheme:(id)scheme colorScheme:(unint64_t)colorScheme tintParameters:(id)parameters;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBHWidgetDisplayConfiguration

- (SBHWidgetDisplayConfiguration)initWithRenderScheme:(id)scheme colorScheme:(unint64_t)colorScheme tintParameters:(id)parameters
{
  schemeCopy = scheme;
  parametersCopy = parameters;
  v16.receiver = self;
  v16.super_class = SBHWidgetDisplayConfiguration;
  v10 = [(SBHWidgetDisplayConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [schemeCopy copy];
    renderScheme = v10->_renderScheme;
    v10->_renderScheme = v11;

    v10->_colorScheme = colorScheme;
    v13 = [parametersCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  renderScheme = [(SBHWidgetDisplayConfiguration *)self renderScheme];
  v4 = [renderScheme hash];
  v5 = [(SBHWidgetDisplayConfiguration *)self colorScheme]^ v4;
  tintParameters = [(SBHWidgetDisplayConfiguration *)self tintParameters];
  v7 = [tintParameters hash];

  return v5 ^ v7;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHWidgetDisplayConfiguration *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SBHWidgetDisplayConfiguration_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
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