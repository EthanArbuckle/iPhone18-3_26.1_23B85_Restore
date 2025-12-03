@interface SiriNLUTypesConverterUtils
+ (Reader)getCppReaderFromObjCObject:(SEL)object;
+ (id)convertMatchingSpanFromCppToObjC:(void *)c;
+ (id)convertNLv4ParserRequestFromCppToObjC:(void *)c;
+ (id)convertNLv4ParserResponseFromCppToObjC:(void *)c;
+ (id)convertSSUResponseFromCppToObjC:(void *)c;
+ (id)convertUsoGraphFromCppToObjC:(void *)c;
+ (unique_ptr<sirinluexternal::EntityCandidate,)convertEntityCandidateFromObjCToCpp:(id)cpp;
+ (unique_ptr<sirinluexternal::UsoGraph,)convertUsoGraphFromObjCToCpp:(id)cpp;
+ (unique_ptr<sirinluinternal::MatchingSpan,)convertMatchingSpanFromObjCToCpp:(id)cpp;
+ (unique_ptr<sirinluinternal::NLv4EmbeddingTensor,)convertNLv4EmbeddingTensorFromObjCToCpp:(id)cpp;
+ (unique_ptr<sirinluinternal::TokenChain,)convertTokenChainFromObjCToCpp:(id)cpp;
+ (unique_ptr<sirinluinternalnlv4_parser::NLv4ParserRequest,)convertNLv4ParserRequestToCpp:(id)cpp;
+ (unique_ptr<sirinluinternalssu::SSURequest,)convertSSURequestFromObjCToCpp:(id)cpp;
@end

@implementation SiriNLUTypesConverterUtils

+ (id)convertSSUResponseFromCppToObjC:(void *)c
{
  if (*c)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluinternalssu::SSURequest,)convertSSURequestFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (id)convertUsoGraphFromCppToObjC:(void *)c
{
  if (*c)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluexternal::UsoGraph,)convertUsoGraphFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (unique_ptr<sirinluexternal::EntityCandidate,)convertEntityCandidateFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (unique_ptr<sirinluinternal::NLv4EmbeddingTensor,)convertNLv4EmbeddingTensorFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (unique_ptr<sirinluinternal::TokenChain,)convertTokenChainFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (id)convertMatchingSpanFromCppToObjC:(void *)c
{
  if (*c)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluinternal::MatchingSpan,)convertMatchingSpanFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (id)convertNLv4ParserResponseFromCppToObjC:(void *)c
{
  if (*c)
  {
    operator new();
  }

  return 0;
}

+ (id)convertNLv4ParserRequestFromCppToObjC:(void *)c
{
  if (*c)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluinternalnlv4_parser::NLv4ParserRequest,)convertNLv4ParserRequestToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (Reader)getCppReaderFromObjCObject:(SEL)object
{
  data = [a4 data];
  bytes = [data bytes];
  [data length];
  PB::Reader::Reader(retstr, bytes);

  return result;
}

@end