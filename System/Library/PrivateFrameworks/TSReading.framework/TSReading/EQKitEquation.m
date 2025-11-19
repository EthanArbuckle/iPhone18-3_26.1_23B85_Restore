@interface EQKitEquation
+ (id)equationWithData:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6;
+ (id)equationWithString:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6;
+ (id)equationWithString:(id)a3 format:(int)a4 error:(id *)a5;
+ (id)equationWithXMLDoc:(_xmlDoc *)a3 node:(_xmlNode *)a4 environment:(id)a5 error:(id *)a6;
- (EQKitEquation)initWithRoot:(id)a3 source:(id)a4;
- (id)description;
- (id)pdfDataWithLayoutContext:(id)a3 baselineOffset:(double *)a4;
- (void)dealloc;
@end

@implementation EQKitEquation

- (EQKitEquation)initWithRoot:(id)a3 source:(id)a4
{
  if (!a3)
  {
    [EQKitEquation initWithRoot:a2 source:self];
  }

  v9.receiver = self;
  v9.super_class = EQKitEquation;
  v7 = [(EQKitEquation *)&v9 init];
  if (v7)
  {
    v7->mRoot = a3;
    v7->mSource = a4;
  }

  return v7;
}

+ (id)equationWithData:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6
{
  if (a4 != 1)
  {
    if (!a4 && a6 && !*a6)
    {
      v7 = 0;
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"String format unknown. String format should be LaTeX or MathML.", &stru_287D36338, 0), *MEMORY[0x277CCA450], 0)}];
      return v7;
    }

    return 0;
  }

  v9 = a3;
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (xmlSAXVersion(&hdlr, 2))
  {
    v7 = 0;
  }

  else
  {
    hdlr.getEntity = EQKitMathMLParserGetEntity;
    v11 = xmlSubstituteEntitiesDefault(1);
    ExternalEntityLoader = xmlGetExternalEntityLoader();
    xmlSetExternalEntityLoader(NoExternalEntityLoader);
    v13 = xmlSAXParseMemory(&hdlr, [v10 bytes], objc_msgSend(v10, "length"), 0);
    xmlSetExternalEntityLoader(ExternalEntityLoader);
    xmlSubstituteEntitiesDefault(v11);
    v7 = 0;
    if (a5 && v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = a5;
      }

      else
      {
        v14 = 0;
      }

      v15 = [[EQKitMathMLParser alloc] initWithDocument:v13 node:0 source:v10 environment:v14];
      v7 = [(EQKitMathMLParser *)v15 parse];
      if (a6 && !*a6)
      {
        *a6 = [(EQKitMathMLParser *)v15 error];
      }

      xmlFreeDoc(v13);
    }
  }

  if (a6 && !v7)
  {
    if (!*a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Unable to create equation.", &stru_287D36338, 0), *MEMORY[0x277CCA450], 0)}];
    }

    return 0;
  }

  if (v7)
  {
    v7[3] = a5;
  }

  return v7;
}

+ (id)equationWithString:(id)a3 format:(int)a4 environment:(id)a5 error:(id *)a6
{
  v8 = *&a4;
  v10 = [a3 UTF8String];
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:strlen(v10)];

  return [a1 equationWithData:v11 format:v8 environment:a5 error:a6];
}

+ (id)equationWithString:(id)a3 format:(int)a4 error:(id *)a5
{
  v6 = *&a4;
  v8 = [a3 UTF8String];
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:strlen(v8)];
  v10 = +[EQKitEnvironment defaultEnvironment];

  return [a1 equationWithData:v9 format:v6 environment:v10 error:a5];
}

+ (id)equationWithXMLDoc:(_xmlDoc *)a3 node:(_xmlNode *)a4 environment:(id)a5 error:(id *)a6
{
  v6 = 0;
  if (a3 && a4)
  {
    v11 = [EQKitMathMLParser alloc];
    v12 = objc_opt_class();
    v13 = [(EQKitMathMLParser *)v11 initWithDocument:a3 node:a4 source:0 environment:EQKitUtilDynamicCast(v12, a5)];
    v6 = [(EQKitMathMLParser *)v13 parse];
    if (a6)
    {
      *a6 = [(EQKitMathMLParser *)v13 error];
    }
  }

  return v6;
}

- (id)pdfDataWithLayoutContext:(id)a3 baselineOffset:(double *)a4
{
  v7 = [(EQKitExpression *)[(EQKitEquation *)self root] newLayout];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [v7 layoutWithContext:a3];
  v9 = [(EQKitEquation *)self pdfDataWithLayout:v8 layoutContext:a3];
  if (a4)
  {
    [v8 depth];
    *a4 = -v10;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitEquation;
  [(EQKitEquation *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p root=%@>", NSStringFromClass(v4), self, self->mRoot];
}

- (uint64_t)initWithRoot:(uint64_t)a1 source:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitEquation.mm" lineNumber:333 description:@"invalid root"];
}

@end