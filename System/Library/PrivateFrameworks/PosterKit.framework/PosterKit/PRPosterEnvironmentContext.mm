@interface PRPosterEnvironmentContext
+ (id)environmentContextForSettings:(id)a3 overrides:(id)a4;
+ (id)environmentContextWithMode:(int64_t)a3 isPreview:(BOOL)a4 previewContent:(unint64_t)a5 isSnapshot:(BOOL)a6 scriptIsExecuting:(BOOL)a7;
- (PRPosterEnvironmentContext)initWithMode:(int64_t)a3 isPreview:(BOOL)a4 previewContent:(unint64_t)a5 isSnapshot:(BOOL)a6 scriptIsExecuting:(BOOL)a7;
- (id)description;
@end

@implementation PRPosterEnvironmentContext

+ (id)environmentContextWithMode:(int64_t)a3 isPreview:(BOOL)a4 previewContent:(unint64_t)a5 isSnapshot:(BOOL)a6 scriptIsExecuting:(BOOL)a7
{
  v7 = [[a1 alloc] initWithMode:a3 isPreview:a4 previewContent:a5 isSnapshot:a6 scriptIsExecuting:a7];

  return v7;
}

+ (id)environmentContextForSettings:(id)a3 overrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 pui_content];
  if (PUIRenderingContentIsPreview())
  {
    IsPreview = 1;
  }

  else
  {
    v9 = [v7 objectForKey:@"pui_content"];
    [v9 unsignedIntegerValue];
    IsPreview = PUIRenderingContentIsPreview();
  }

  if ([v6 pui_isSnapshot])
  {
    v10 = 1;
  }

  else
  {
    v11 = [v7 objectForKey:@"pui_isSnapshot"];
    v10 = [v11 BOOLValue];
  }

  v12 = [v7 objectForKey:@"pui_scriptIsExecuting"];
  v13 = [v12 BOOLValue];

  v14 = [v7 objectForKey:@"pui_mode"];
  if (v14)
  {
    v15 = [v7 objectForKey:@"pui_mode"];
    v16 = [v15 unsignedIntegerValue];
  }

  else
  {
    v16 = [v6 pui_mode];
  }

  v17 = [v7 objectForKey:@"pui_previewContent"];
  if (v17)
  {
    v18 = [v7 objectForKey:@"pui_previewContent"];
    v19 = [v18 unsignedIntegerValue];
  }

  else
  {
    v19 = [v6 pui_previewContent];
  }

  v20 = [[a1 alloc] initWithMode:v16 isPreview:IsPreview previewContent:v19 isSnapshot:v10 scriptIsExecuting:v13];

  return v20;
}

- (PRPosterEnvironmentContext)initWithMode:(int64_t)a3 isPreview:(BOOL)a4 previewContent:(unint64_t)a5 isSnapshot:(BOOL)a6 scriptIsExecuting:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = PRPosterEnvironmentContext;
  result = [(PRPosterEnvironmentContext *)&v13 init];
  if (result)
  {
    result->_preview = a4;
    result->_snapshot = a6;
    result->_mode = a3;
    result->_previewContent = a5;
    result->_scriptIsExecuting = a7;
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
  v9 = [v3 build];

  return v9;
}

@end