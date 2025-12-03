@interface EQKitEquation
+ (id)equationWithData:(id)data format:(int)format environment:(id)environment error:(id *)error;
+ (id)equationWithString:(id)string format:(int)format environment:(id)environment error:(id *)error;
+ (id)equationWithString:(id)string format:(int)format error:(id *)error;
+ (id)equationWithXMLDoc:(_xmlDoc *)doc node:(_xmlNode *)node environment:(id)environment error:(id *)error;
- (EQKitEquation)initWithRoot:(id)root source:(id)source;
- (id)description;
- (id)pdfDataWithLayoutContext:(id)context baselineOffset:(double *)offset;
- (void)dealloc;
@end

@implementation EQKitEquation

- (EQKitEquation)initWithRoot:(id)root source:(id)source
{
  if (!root)
  {
    [EQKitEquation initWithRoot:a2 source:self];
  }

  v9.receiver = self;
  v9.super_class = EQKitEquation;
  v7 = [(EQKitEquation *)&v9 init];
  if (v7)
  {
    v7->mRoot = root;
    v7->mSource = source;
  }

  return v7;
}

+ (id)equationWithData:(id)data format:(int)format environment:(id)environment error:(id *)error
{
  if (format != 1)
  {
    if (!format && error && !*error)
    {
      parse = 0;
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"String format unknown. String format should be LaTeX or MathML.", &stru_287D36338, 0), *MEMORY[0x277CCA450], 0)}];
      return parse;
    }

    return 0;
  }

  dataCopy = data;
  if (!dataCopy)
  {
    return 0;
  }

  v10 = dataCopy;
  if (xmlSAXVersion(&hdlr, 2))
  {
    parse = 0;
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
    parse = 0;
    if (environment && v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        environmentCopy = environment;
      }

      else
      {
        environmentCopy = 0;
      }

      v15 = [[EQKitMathMLParser alloc] initWithDocument:v13 node:0 source:v10 environment:environmentCopy];
      parse = [(EQKitMathMLParser *)v15 parse];
      if (error && !*error)
      {
        *error = [(EQKitMathMLParser *)v15 error];
      }

      xmlFreeDoc(v13);
    }
  }

  if (error && !parse)
  {
    if (!*error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Unable to create equation.", &stru_287D36338, 0), *MEMORY[0x277CCA450], 0)}];
    }

    return 0;
  }

  if (parse)
  {
    parse[3] = environment;
  }

  return parse;
}

+ (id)equationWithString:(id)string format:(int)format environment:(id)environment error:(id *)error
{
  v8 = *&format;
  uTF8String = [string UTF8String];
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:uTF8String length:strlen(uTF8String)];

  return [self equationWithData:v11 format:v8 environment:environment error:error];
}

+ (id)equationWithString:(id)string format:(int)format error:(id *)error
{
  v6 = *&format;
  uTF8String = [string UTF8String];
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:uTF8String length:strlen(uTF8String)];
  v10 = +[EQKitEnvironment defaultEnvironment];

  return [self equationWithData:v9 format:v6 environment:v10 error:error];
}

+ (id)equationWithXMLDoc:(_xmlDoc *)doc node:(_xmlNode *)node environment:(id)environment error:(id *)error
{
  parse = 0;
  if (doc && node)
  {
    v11 = [EQKitMathMLParser alloc];
    v12 = objc_opt_class();
    v13 = [(EQKitMathMLParser *)v11 initWithDocument:doc node:node source:0 environment:EQKitUtilDynamicCast(v12, environment)];
    parse = [(EQKitMathMLParser *)v13 parse];
    if (error)
    {
      *error = [(EQKitMathMLParser *)v13 error];
    }
  }

  return parse;
}

- (id)pdfDataWithLayoutContext:(id)context baselineOffset:(double *)offset
{
  newLayout = [(EQKitExpression *)[(EQKitEquation *)self root] newLayout];
  if (!newLayout)
  {
    return 0;
  }

  v8 = newLayout;
  [newLayout layoutWithContext:context];
  v9 = [(EQKitEquation *)self pdfDataWithLayout:v8 layoutContext:context];
  if (offset)
  {
    [v8 depth];
    *offset = -v10;
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