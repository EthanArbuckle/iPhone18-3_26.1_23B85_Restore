@interface EQKitMathMLBinaryNode
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLBinaryNode)initWithFirst:(id)a3 second:(id)a4;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLBinaryNode

- (EQKitMathMLBinaryNode)initWithFirst:(id)a3 second:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [EQKitMathMLBinaryNode initWithFirst:a2 second:self];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [EQKitMathMLBinaryNode initWithFirst:a2 second:self];
LABEL_3:
  v10.receiver = self;
  v10.super_class = EQKitMathMLBinaryNode;
  v8 = [(EQKitMathMLBinaryNode *)&v10 init];
  if (v8)
  {
    v8->mFirst = a3;
    v8->mSecond = a4;
    [(EQKitMathMLNode *)v8->mFirst setParent:v8];
    [(EQKitMathMLNode *)v8->mSecond setParent:v8];
  }

  return v8;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v7 = [a4 parseChildrenAsArrayFromXMLNode:?];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndex:0];
    v9 = [v7 objectAtIndex:1];

    return [(EQKitMathMLBinaryNode *)self initWithFirst:v8 second:v9];
  }

  else
  {
    [a4 reportError:5 withNode:a3];

    return 0;
  }
}

- (BOOL)isBaseFontNameUsed
{
  if ([(EQKitMathMLNode *)self->mFirst isBaseFontNameUsed])
  {
    return 1;
  }

  mSecond = self->mSecond;

  return [(EQKitMathMLNode *)mSecond isBaseFontNameUsed];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLBinaryNode;
  [(EQKitMathMLBinaryNode *)&v3 dealloc];
}

- (uint64_t)initWithFirst:(uint64_t)a1 second:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLBinaryNode.mm" lineNumber:22 description:@"inFirst should not be nil"];
}

- (uint64_t)initWithFirst:(uint64_t)a1 second:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLBinaryNode.mm" lineNumber:23 description:@"inSecond should not be nil"];
}

@end