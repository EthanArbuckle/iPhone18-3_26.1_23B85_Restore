@interface EQKitMathMLTernaryNode
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLTernaryNode)initWithFirst:(id)a3 second:(id)a4 third:(id)a5;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLTernaryNode

- (EQKitMathMLTernaryNode)initWithFirst:(id)a3 second:(id)a4 third:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    [EQKitMathMLTernaryNode initWithFirst:a2 second:self third:?];
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [EQKitMathMLTernaryNode initWithFirst:a2 second:self third:?];
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_9:
  [EQKitMathMLTernaryNode initWithFirst:a2 second:self third:?];
LABEL_4:
  v12.receiver = self;
  v12.super_class = EQKitMathMLTernaryNode;
  v10 = [(EQKitMathMLTernaryNode *)&v12 init];
  if (v10)
  {
    v10->mFirst = a3;
    v10->mSecond = a4;
    v10->mThird = a5;
    [(EQKitMathMLNode *)v10->mFirst setParent:v10];
    [(EQKitMathMLNode *)v10->mSecond setParent:v10];
    [(EQKitMathMLNode *)v10->mThird setParent:v10];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLTernaryNode;
  [(EQKitMathMLTernaryNode *)&v3 dealloc];
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v7 = [a4 parseChildrenAsArrayFromXMLNode:?];
  if ([v7 count] == 3)
  {
    v8 = [v7 objectAtIndex:0];
    v9 = [v7 objectAtIndex:1];
    v10 = [v7 objectAtIndex:2];

    return [(EQKitMathMLTernaryNode *)self initWithFirst:v8 second:v9 third:v10];
  }

  else
  {
    [a4 reportError:5 withNode:a3];

    return 0;
  }
}

- (BOOL)isBaseFontNameUsed
{
  if ([(EQKitMathMLNode *)self->mFirst isBaseFontNameUsed]|| [(EQKitMathMLNode *)self->mSecond isBaseFontNameUsed])
  {
    return 1;
  }

  mThird = self->mThird;

  return [(EQKitMathMLNode *)mThird isBaseFontNameUsed];
}

- (uint64_t)initWithFirst:(uint64_t)a1 second:(uint64_t)a2 third:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLTernaryNode.mm" lineNumber:23 description:@"inFirst should not be nil"];
}

- (uint64_t)initWithFirst:(uint64_t)a1 second:(uint64_t)a2 third:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLTernaryNode.mm" lineNumber:24 description:@"inSecond should not be nil"];
}

- (uint64_t)initWithFirst:(uint64_t)a1 second:(uint64_t)a2 third:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLTernaryNode.mm" lineNumber:25 description:@"inThird should not be nil"];
}

@end