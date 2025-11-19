@interface SWInspectionScript
+ (id)executableSource;
- (NSString)executableScript;
- (SWInspectionScript)init;
@end

@implementation SWInspectionScript

- (SWInspectionScript)init
{
  v3.receiver = self;
  v3.super_class = SWInspectionScript;
  return [(SWInspectionScript *)&v3 init];
}

- (NSString)executableScript
{
  v2 = objc_opt_class();

  return [v2 executableSource];
}

+ (id)executableSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SWInspectionScript_executableSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (executableSource_onceToken != -1)
  {
    dispatch_once(&executableSource_onceToken, block);
  }

  v2 = executableSource_source;

  return v2;
}

void __38__SWInspectionScript_executableSource__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v2 URLForResource:@"inspection" withExtension:@"js"];

  v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v5 encoding:4 error:0];
  v4 = executableSource_source;
  executableSource_source = v3;
}

@end