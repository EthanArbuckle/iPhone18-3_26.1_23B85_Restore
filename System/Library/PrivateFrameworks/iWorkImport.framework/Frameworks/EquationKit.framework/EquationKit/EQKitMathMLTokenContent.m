@interface EQKitMathMLTokenContent
- (EQKitMathMLTokenContent)initWithChildren:(id)a3;
- (void)dealloc;
@end

@implementation EQKitMathMLTokenContent

- (EQKitMathMLTokenContent)initWithChildren:(id)a3
{
  v9.receiver = self;
  v9.super_class = EQKitMathMLTokenContent;
  v7 = [(EQKitMathMLTokenContent *)&v9 init];
  if (v7)
  {
    v7->mChildren = objc_msgSend_copy(a3, v4, v5, v6);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLTokenContent;
  [(EQKitMathMLTokenContent *)&v3 dealloc];
}

@end