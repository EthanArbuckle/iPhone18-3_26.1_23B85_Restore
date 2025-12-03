@interface TSDMetalShaderLibraryLoader
+ (id)loadApplicationLibraryWithDevice:(id)device library:(id)library;
+ (id)loadDefaultLibraryWithDevice:(id)device;
+ (id)loadLibraryWithDevice:(id)device path:(id)path;
@end

@implementation TSDMetalShaderLibraryLoader

+ (id)loadLibraryWithDevice:(id)device path:(id)path
{
  deviceCopy = device;
  pathCopy = path;
  v7 = pathCopy;
  if (!deviceCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalShaderLibraryLoader loadLibraryWithDevice:path:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    v17 = @"Can't initialize shader library with nil device";
    v18 = currentHandler;
    v19 = v15;
    v20 = v16;
    v21 = 26;
LABEL_8:
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:v21 description:v17];

    v9 = 0;
    goto LABEL_9;
  }

  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalShaderLibraryLoader loadLibraryWithDevice:path:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    v17 = @"Couldn't find path to shader library";
    v18 = currentHandler;
    v19 = v15;
    v20 = v16;
    v21 = 31;
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v23 = 0;
  v9 = [deviceCopy newLibraryWithURL:v8 error:&v23];
  v10 = v23;
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalShaderLibraryLoader loadLibraryWithDevice:path:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalShader.m"];
    [currentHandler2 handleFailureInFunction:v12 file:v13 lineNumber:38 description:{@"Failed to create library, error %@", v10}];
  }

LABEL_9:

  return v9;
}

+ (id)loadDefaultLibraryWithDevice:(id)device
{
  v3 = MEMORY[0x277CCA8D8];
  deviceCopy = device;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:@"TSDDefaultMetalLibrary" ofType:@"metallib"];
  v7 = [TSDMetalShaderLibraryLoader loadLibraryWithDevice:deviceCopy path:v6];

  return v7;
}

+ (id)loadApplicationLibraryWithDevice:(id)device library:(id)library
{
  v5 = MEMORY[0x277CCA8D8];
  libraryCopy = library;
  deviceCopy = device;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:libraryCopy ofType:@"metallib"];

  v10 = [TSDMetalShaderLibraryLoader loadLibraryWithDevice:deviceCopy path:v9];

  return v10;
}

@end