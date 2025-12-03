@interface PRPosterEnvironmentContext
+ (id)environmentContextForSettings:(id)settings overrides:(id)overrides;
+ (id)environmentContextWithMode:(int64_t)mode isPreview:(BOOL)preview previewContent:(unint64_t)content isSnapshot:(BOOL)snapshot scriptIsExecuting:(BOOL)executing;
- (PRPosterEnvironmentContext)initWithMode:(int64_t)mode isPreview:(BOOL)preview previewContent:(unint64_t)content isSnapshot:(BOOL)snapshot scriptIsExecuting:(BOOL)executing;
- (id)description;
@end

@implementation PRPosterEnvironmentContext

+ (id)environmentContextWithMode:(int64_t)mode isPreview:(BOOL)preview previewContent:(unint64_t)content isSnapshot:(BOOL)snapshot scriptIsExecuting:(BOOL)executing
{
  v7 = [[self alloc] initWithMode:mode isPreview:preview previewContent:content isSnapshot:snapshot scriptIsExecuting:executing];

  return v7;
}

+ (id)environmentContextForSettings:(id)settings overrides:(id)overrides
{
  settingsCopy = settings;
  overridesCopy = overrides;
  [settingsCopy pui_content];
  if (PUIRenderingContentIsPreview())
  {
    IsPreview = 1;
  }

  else
  {
    v9 = [overridesCopy objectForKey:@"pui_content"];
    [v9 unsignedIntegerValue];
    IsPreview = PUIRenderingContentIsPreview();
  }

  if ([settingsCopy pui_isSnapshot])
  {
    bOOLValue = 1;
  }

  else
  {
    v11 = [overridesCopy objectForKey:@"pui_isSnapshot"];
    bOOLValue = [v11 BOOLValue];
  }

  v12 = [overridesCopy objectForKey:@"pui_scriptIsExecuting"];
  bOOLValue2 = [v12 BOOLValue];

  v14 = [overridesCopy objectForKey:@"pui_mode"];
  if (v14)
  {
    v15 = [overridesCopy objectForKey:@"pui_mode"];
    unsignedIntegerValue = [v15 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [settingsCopy pui_mode];
  }

  v17 = [overridesCopy objectForKey:@"pui_previewContent"];
  if (v17)
  {
    v18 = [overridesCopy objectForKey:@"pui_previewContent"];
    unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = [settingsCopy pui_previewContent];
  }

  v20 = [[self alloc] initWithMode:unsignedIntegerValue isPreview:IsPreview previewContent:unsignedIntegerValue2 isSnapshot:bOOLValue scriptIsExecuting:bOOLValue2];

  return v20;
}

- (PRPosterEnvironmentContext)initWithMode:(int64_t)mode isPreview:(BOOL)preview previewContent:(unint64_t)content isSnapshot:(BOOL)snapshot scriptIsExecuting:(BOOL)executing
{
  v13.receiver = self;
  v13.super_class = PRPosterEnvironmentContext;
  result = [(PRPosterEnvironmentContext *)&v13 init];
  if (result)
  {
    result->_preview = preview;
    result->_snapshot = snapshot;
    result->_mode = mode;
    result->_previewContent = content;
    result->_scriptIsExecuting = executing;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = NSStringFromPUIRenderingMode();
  [v3 appendString:v4 withName:@"_mode"];

  v5 = NSStringFromPUIPosterPreviewContent();
  [v3 appendString:v5 withName:@"_previewContent"];

  v6 = [v3 appendBool:self->_preview withName:@"isPreview"];
  v7 = [v3 appendBool:self->_snapshot withName:@"isSnapshot" ifEqualTo:1];
  v8 = [v3 appendBool:self->_scriptIsExecuting withName:@"scriptIsExecuting" ifEqualTo:1];
  build = [v3 build];

  return build;
}

@end