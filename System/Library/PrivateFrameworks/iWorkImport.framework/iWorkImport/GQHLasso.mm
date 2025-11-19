@interface GQHLasso
+ (int)beginDocument:(id)a3 state:(id)a4;
+ (int)beginWorkspace:(const char *)a3 state:(id)a4;
+ (int)endDocument:(id)a3 state:(id)a4;
+ (int)handleDrawableZOrder:(const char *)a3 state:(id)a4;
@end

@implementation GQHLasso

+ (int)beginDocument:(id)a3 state:(id)a4
{
  v5 = [[GQHLassoState alloc] initWithState:a4];
  [a4 setGeneratorState:v5];

  return 1;
}

+ (int)endDocument:(id)a3 state:(id)a4
{
  v5 = [a4 generatorState];
  [objc_msgSend(v5 "htmlDoc")];
  if ([v5 inProgressiveMode])
  {
    v6 = [v5 writeIndexPageWithIFrame:a4];
  }

  else
  {
    [v5 writeIndexPageWithDocumentSize:{1200.0, 960.0}];
    v6 = [v5 finishMainHtml];
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (int)beginWorkspace:(const char *)a3 state:(id)a4
{
  v6 = [a4 generatorState];
  [objc_msgSend(a4 "outputBundle")];
  [a4 outputBundle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a4 "outputBundle")];
  }

  [v6 beginNewSheet:a3 processorState:a4];
  return 1;
}

+ (int)handleDrawableZOrder:(const char *)a3 state:(id)a4
{
  v5 = [a4 generatorState];
  v6 = [v5 cssZOrderClassForDrawableUid:a3];
  if (v6)
  {
    v7 = v6;
    v8 = CFStringCreateWithFormat(0, 0, @".%@ {\nposition: relative; z-index: %u;\n}\n", v6, [v5 currentDrawableZOrder]);
    [v5 addStyle:v8 className:v7 srcStyle:0];
    CFRelease(v8);
  }

  return 1;
}

@end