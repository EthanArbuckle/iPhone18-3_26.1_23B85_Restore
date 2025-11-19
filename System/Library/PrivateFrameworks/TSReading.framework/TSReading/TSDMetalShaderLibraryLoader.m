@interface TSDMetalShaderLibraryLoader
+ (id)loadApplicationLibraryWithDevice:(id)a3 library:(id)a4;
+ (id)loadDefaultLibraryWithDevice:(id)a3;
+ (id)loadLibraryWithDevice:(id)a3 path:(id)a4;
@end

@implementation TSDMetalShaderLibraryLoader

+ (id)loadLibraryWithDevice:(id)a3 path:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalShaderLibraryLoader loadLibraryWithDevice:path:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    v17 = @"Can't initialize shader library with nil device";
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = 26;
LABEL_8:
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:v21 description:v17];

    v9 = 0;
    goto LABEL_9;
  }

  if (!v6)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalShaderLibraryLoader loadLibraryWithDevice:path:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    v17 = @"Couldn't find path to shader library";
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = 31;
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v23 = 0;
  v9 = [v5 newLibraryWithURL:v8 error:&v23];
  v10 = v23;
  if (!v9)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalShaderLibraryLoader loadLibraryWithDevice:path:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:38 description:{@"Failed to create library, error %@", v10}];
  }

LABEL_9:

  return v9;
}

+ (id)loadDefaultLibraryWithDevice:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:@"TSDDefaultMetalLibrary" ofType:@"metallib"];
  v7 = [TSDMetalShaderLibraryLoader loadLibraryWithDevice:v4 path:v6];

  return v7;
}

+ (id)loadApplicationLibraryWithDevice:(id)a3 library:(id)a4
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:v6 ofType:@"metallib"];

  v10 = [TSDMetalShaderLibraryLoader loadLibraryWithDevice:v7 path:v9];

  return v10;
}

@end