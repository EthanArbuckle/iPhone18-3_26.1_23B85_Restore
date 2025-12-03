@interface USOEntityNode
- (USOEntityNode)initWithCppEntityNode:(void *)node;
- (void)addEntitySpan:(id)span;
- (void)addIdentifierWithValue:(id)value appBundleId:(id)id namespaceString:(id)string probability:(optional<double>)probability nluComponent:(optional<siri:(optional<unsigned int>)component :(optional<unsigned int>)a9 ontology::UsoIdentifier::NluComponent>)a7 groupIndex:interpretationGroup:;
@end

@implementation USOEntityNode

- (void)addEntitySpan:(id)span
{
  v87 = *MEMORY[0x1E69E9840];
  v80.__r_.__value_.__s.__data_[0] = 0;
  v81 = 0;
  spanCopy = span;
  originAppId = [spanCopy originAppId];

  if (originAppId)
  {
    originAppId2 = [spanCopy originAppId];
    uTF8String = [originAppId2 UTF8String];
    originAppId3 = [spanCopy originAppId];
    std::string::basic_string[abi:ne200100](&__dst, uTF8String, [originAppId3 lengthOfBytesUsingEncoding:4]);
    v80 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v81 = 1;
  }

  sourceComponent = [spanCopy sourceComponent];
  v8 = sourceComponent == 0;

  if (!v8)
  {
    sourceComponent2 = [spanCopy sourceComponent];
    [sourceComponent2 unsignedIntValue];
  }

  v78.__r_.__value_.__s.__data_[0] = 0;
  v79 = 0;
  label = [spanCopy label];
  v11 = label == 0;

  if (!v11)
  {
    label2 = [spanCopy label];
    v13 = label2;
    uTF8String2 = [label2 UTF8String];
    label3 = [spanCopy label];
    std::string::basic_string[abi:ne200100](&__dst, uTF8String2, [label3 lengthOfBytesUsingEncoding:4]);
    v78 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v79 = 1;
  }

  matchInfo = [spanCopy matchInfo];

  if (matchInfo)
  {
    [spanCopy matchInfo];
    [objc_claimAutoreleasedReturnValue() matchSignalBitSet];
    operator new();
  }

  __src = 0;
  v76 = 0;
  v77 = 0;
  properties = [spanCopy properties];
  v17 = properties == 0;

  if (!v17)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    properties2 = [spanCopy properties];
    if ([properties2 countByEnumeratingWithState:&v71 objects:v86 count:16])
    {
      *v72;
      *v72;
      v19 = **(&v71 + 1);
      v20 = [v19 key];
      v21 = v20;
      uTF8String3 = [v20 UTF8String];
      v23 = [v19 key];
      std::string::basic_string[abi:ne200100](&v63, uTF8String3, [v23 lengthOfBytesUsingEncoding:4]);

      __p.__r_.__value_.__s.__data_[0] = 0;
      v84 = 0;
      valueString = [v19 valueString];
      v25 = valueString != 0;

      if (v25)
      {
        valueString2 = [v19 valueString];
        v27 = valueString2;
        uTF8String4 = [valueString2 UTF8String];
        valueString3 = [v19 valueString];
        std::string::basic_string[abi:ne200100](&__dst, uTF8String4, [valueString3 lengthOfBytesUsingEncoding:4]);
        __p = __dst;
        memset(&__dst, 0, sizeof(__dst));
        v84 = 1;
      }

      valueInt = [v19 valueInt];
      v31 = valueInt == 0;

      if (!v31)
      {
        valueInt2 = [v19 valueInt];
        [valueInt2 intValue];
      }

      valueFloat = [v19 valueFloat];
      v34 = valueFloat == 0;

      if (!v34)
      {
        valueFloat2 = [v19 valueFloat];
        [valueFloat2 floatValue];
      }

      operator new();
    }
  }

  startIndex = [spanCopy startIndex];
  v37 = startIndex == 0;

  if (!v37)
  {
    startIndex2 = [spanCopy startIndex];
    [startIndex2 unsignedIntValue];
  }

  endIndex = [spanCopy endIndex];
  v40 = endIndex == 0;

  if (!v40)
  {
    endIndex2 = [spanCopy endIndex];
    [endIndex2 unsignedIntValue];
  }

  v69[0] = 0;
  v69[1] = 0;
  v70 = 0;
  alternatives = [spanCopy alternatives];
  v43 = alternatives == 0;

  if (!v43)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    alternatives2 = [spanCopy alternatives];
    if ([alternatives2 countByEnumeratingWithState:&v65 objects:v85 count:16])
    {
      *v66;
      *v66;
      v45 = **(&v65 + 1);
      value = [v45 value];
      v47 = value;
      uTF8String5 = [value UTF8String];
      value2 = [v45 value];
      std::string::basic_string[abi:ne200100](&__p, uTF8String5, [value2 lengthOfBytesUsingEncoding:4]);

      probability = [v45 probability];
      v51 = probability == 0;

      if (!v51)
      {
        probability2 = [v45 probability];
        [probability2 floatValue];
      }

      operator new();
    }
  }

  v63.__r_.__value_.__s.__data_[0] = 0;
  v64 = 0;
  originEntityId = [spanCopy originEntityId];
  v54 = originEntityId != 0;

  if (v54)
  {
    originEntityId2 = [spanCopy originEntityId];
    v56 = originEntityId2;
    uTF8String6 = [originEntityId2 UTF8String];
    originEntityId3 = [spanCopy originEntityId];
    std::string::basic_string[abi:ne200100](&__dst, uTF8String6, [originEntityId3 lengthOfBytesUsingEncoding:4]);
    v63 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v64 = 1;
  }

  usoEntityNode = self->_usoEntityNode;
  operator new();
}

- (void)addIdentifierWithValue:(id)value appBundleId:(id)id namespaceString:(id)string probability:(optional<double>)probability nluComponent:(optional<siri:(optional<unsigned int>)component :(optional<unsigned int>)a9 ontology::UsoIdentifier::NluComponent>)a7 groupIndex:interpretationGroup:
{
  probabilityCopy = probability;
  __dst[3] = a7;
  valueCopy = value;
  idCopy = id;
  stringCopy = string;
  std::string::basic_string[abi:ne200100](__dst, [valueCopy UTF8String], objc_msgSend(valueCopy, "lengthOfBytesUsingEncoding:", 4));
  std::string::basic_string[abi:ne200100](&v21, [idCopy UTF8String], objc_msgSend(idCopy, "lengthOfBytesUsingEncoding:", 4));
  LOBYTE(__p[0]) = 0;
  v20 = 0;
  if (stringCopy)
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, [stringCopy UTF8String]);
    *__p = v16;
    v19 = v17;
    v20 = 1;
  }

  usoEntityNode = self->_usoEntityNode;
  siri::ontology::UsoEntityNode::addIdentifier();
}

- (USOEntityNode)initWithCppEntityNode:(void *)node
{
  v5.receiver = self;
  v5.super_class = USOEntityNode;
  result = [(USOGraphNode *)&v5 initWithCppGraphNode:?];
  if (result)
  {
    result->_usoEntityNode = node;
  }

  return result;
}

@end