@interface GQHLasso
+ (int)beginDocument:(id)document state:(id)state;
+ (int)beginWorkspace:(const char *)workspace state:(id)state;
+ (int)endDocument:(id)document state:(id)state;
+ (int)handleDrawableZOrder:(const char *)order state:(id)state;
@end

@implementation GQHLasso

+ (int)beginDocument:(id)document state:(id)state
{
  v5 = [[GQHLassoState alloc] initWithState:state];
  [state setGeneratorState:v5];

  return 1;
}

+ (int)endDocument:(id)document state:(id)state
{
  generatorState = [state generatorState];
  [objc_msgSend(generatorState "htmlDoc")];
  if ([generatorState inProgressiveMode])
  {
    finishMainHtml = [generatorState writeIndexPageWithIFrame:state];
  }

  else
  {
    [generatorState writeIndexPageWithDocumentSize:{1200.0, 960.0}];
    finishMainHtml = [generatorState finishMainHtml];
  }

  if (finishMainHtml)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (int)beginWorkspace:(const char *)workspace state:(id)state
{
  generatorState = [state generatorState];
  [objc_msgSend(state "outputBundle")];
  [state outputBundle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(state "outputBundle")];
  }

  [generatorState beginNewSheet:workspace processorState:state];
  return 1;
}

+ (int)handleDrawableZOrder:(const char *)order state:(id)state
{
  generatorState = [state generatorState];
  v6 = [generatorState cssZOrderClassForDrawableUid:order];
  if (v6)
  {
    v7 = v6;
    v8 = CFStringCreateWithFormat(0, 0, @".%@ {\nposition: relative; z-index: %u;\n}\n", v6, [generatorState currentDrawableZOrder]);
    [generatorState addStyle:v8 className:v7 srcStyle:0];
    CFRelease(v8);
  }

  return 1;
}

@end