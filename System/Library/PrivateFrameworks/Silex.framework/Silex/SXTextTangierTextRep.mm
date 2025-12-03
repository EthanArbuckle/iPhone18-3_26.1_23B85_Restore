@interface SXTextTangierTextRep
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
@end

@implementation SXTextTangierTextRep

- (void)didUpdateLayer:(id)layer
{
  v5.receiver = self;
  v5.super_class = SXTextTangierTextRep;
  layerCopy = layer;
  [(SXTextTangierTextRep *)&v5 didUpdateLayer:layerCopy];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [layerCopy setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];
}

- (void)dealloc
{
  [(SXTextTangierTextRep *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SXTextTangierTextRep;
  [(SXTextTangierTextRep *)&v3 dealloc];
}

@end