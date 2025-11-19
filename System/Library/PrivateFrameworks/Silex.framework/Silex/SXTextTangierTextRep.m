@interface SXTextTangierTextRep
- (void)dealloc;
- (void)didUpdateLayer:(id)a3;
@end

@implementation SXTextTangierTextRep

- (void)didUpdateLayer:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextTangierTextRep;
  v3 = a3;
  [(SXTextTangierTextRep *)&v5 didUpdateLayer:v3];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];
}

- (void)dealloc
{
  [(SXTextTangierTextRep *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SXTextTangierTextRep;
  [(SXTextTangierTextRep *)&v3 dealloc];
}

@end