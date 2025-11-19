@interface SiriNLUTypesConverterUtils
+ (Reader)getCppReaderFromObjCObject:(SEL)a3;
+ (id)convertMatchingSpanFromCppToObjC:(void *)a3;
+ (id)convertNLv4ParserRequestFromCppToObjC:(void *)a3;
+ (id)convertNLv4ParserResponseFromCppToObjC:(void *)a3;
+ (id)convertSSUResponseFromCppToObjC:(void *)a3;
+ (id)convertUsoGraphFromCppToObjC:(void *)a3;
+ (unique_ptr<sirinluexternal::EntityCandidate,)convertEntityCandidateFromObjCToCpp:(id)a3;
+ (unique_ptr<sirinluexternal::UsoGraph,)convertUsoGraphFromObjCToCpp:(id)a3;
+ (unique_ptr<sirinluinternal::MatchingSpan,)convertMatchingSpanFromObjCToCpp:(id)a3;
+ (unique_ptr<sirinluinternal::NLv4EmbeddingTensor,)convertNLv4EmbeddingTensorFromObjCToCpp:(id)a3;
+ (unique_ptr<sirinluinternal::TokenChain,)convertTokenChainFromObjCToCpp:(id)a3;
+ (unique_ptr<sirinluinternalnlv4_parser::NLv4ParserRequest,)convertNLv4ParserRequestToCpp:(id)a3;
+ (unique_ptr<sirinluinternalssu::SSURequest,)convertSSURequestFromObjCToCpp:(id)a3;
@end

@implementation SiriNLUTypesConverterUtils

+ (id)convertSSUResponseFromCppToObjC:(void *)a3
{
  if (*a3)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluinternalssu::SSURequest,)convertSSURequestFromObjCToCpp:(id)a3
{
  v5 = v3;
  v6 = a3;
  if (v6)
  {
    [a1 getCppReaderFromObjCObject:v6];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (id)convertUsoGraphFromCppToObjC:(void *)a3
{
  if (*a3)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluexternal::UsoGraph,)convertUsoGraphFromObjCToCpp:(id)a3
{
  v5 = v3;
  v6 = a3;
  if (v6)
  {
    [a1 getCppReaderFromObjCObject:v6];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (unique_ptr<sirinluexternal::EntityCandidate,)convertEntityCandidateFromObjCToCpp:(id)a3
{
  v5 = v3;
  v6 = a3;
  if (v6)
  {
    [a1 getCppReaderFromObjCObject:v6];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (unique_ptr<sirinluinternal::NLv4EmbeddingTensor,)convertNLv4EmbeddingTensorFromObjCToCpp:(id)a3
{
  v5 = v3;
  v6 = a3;
  if (v6)
  {
    [a1 getCppReaderFromObjCObject:v6];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (unique_ptr<sirinluinternal::TokenChain,)convertTokenChainFromObjCToCpp:(id)a3
{
  v5 = v3;
  v6 = a3;
  if (v6)
  {
    [a1 getCppReaderFromObjCObject:v6];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (id)convertMatchingSpanFromCppToObjC:(void *)a3
{
  if (*a3)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluinternal::MatchingSpan,)convertMatchingSpanFromObjCToCpp:(id)a3
{
  v5 = v3;
  v6 = a3;
  if (v6)
  {
    [a1 getCppReaderFromObjCObject:v6];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (id)convertNLv4ParserResponseFromCppToObjC:(void *)a3
{
  if (*a3)
  {
    operator new();
  }

  return 0;
}

+ (id)convertNLv4ParserRequestFromCppToObjC:(void *)a3
{
  if (*a3)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluinternalnlv4_parser::NLv4ParserRequest,)convertNLv4ParserRequestToCpp:(id)a3
{
  v5 = v3;
  v6 = a3;
  if (v6)
  {
    [a1 getCppReaderFromObjCObject:v6];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (Reader)getCppReaderFromObjCObject:(SEL)a3
{
  v7 = [a4 data];
  v5 = [v7 bytes];
  [v7 length];
  PB::Reader::Reader(retstr, v5);

  return result;
}

@end