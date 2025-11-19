@interface USOEntityNode
- (USOEntityNode)initWithCppEntityNode:(void *)a3;
- (void)addEntitySpan:(id)a3;
- (void)addIdentifierWithValue:(id)a3 appBundleId:(id)a4 namespaceString:(id)a5 probability:(optional<double>)a6 nluComponent:(optional<siri:(optional<unsigned int>)a8 :(optional<unsigned int>)a9 ontology::UsoIdentifier::NluComponent>)a7 groupIndex:interpretationGroup:;
@end

@implementation USOEntityNode

- (void)addEntitySpan:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v80.__r_.__value_.__s.__data_[0] = 0;
  v81 = 0;
  v62 = a3;
  v3 = [v62 originAppId];

  if (v3)
  {
    v4 = [v62 originAppId];
    v5 = [v4 UTF8String];
    v6 = [v62 originAppId];
    std::string::basic_string[abi:ne200100](&__dst, v5, [v6 lengthOfBytesUsingEncoding:4]);
    v80 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v81 = 1;
  }

  v7 = [v62 sourceComponent];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = [v62 sourceComponent];
    [v9 unsignedIntValue];
  }

  v78.__r_.__value_.__s.__data_[0] = 0;
  v79 = 0;
  v10 = [v62 label];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [v62 label];
    v13 = v12;
    v14 = [v12 UTF8String];
    v15 = [v62 label];
    std::string::basic_string[abi:ne200100](&__dst, v14, [v15 lengthOfBytesUsingEncoding:4]);
    v78 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v79 = 1;
  }

  v61 = [v62 matchInfo];

  if (v61)
  {
    [v62 matchInfo];
    [objc_claimAutoreleasedReturnValue() matchSignalBitSet];
    operator new();
  }

  __src = 0;
  v76 = 0;
  v77 = 0;
  v16 = [v62 properties];
  v17 = v16 == 0;

  if (!v17)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v18 = [v62 properties];
    if ([v18 countByEnumeratingWithState:&v71 objects:v86 count:16])
    {
      *v72;
      *v72;
      v19 = **(&v71 + 1);
      v20 = [v19 key];
      v21 = v20;
      v22 = [v20 UTF8String];
      v23 = [v19 key];
      std::string::basic_string[abi:ne200100](&v63, v22, [v23 lengthOfBytesUsingEncoding:4]);

      __p.__r_.__value_.__s.__data_[0] = 0;
      v84 = 0;
      v24 = [v19 valueString];
      v25 = v24 != 0;

      if (v25)
      {
        v26 = [v19 valueString];
        v27 = v26;
        v28 = [v26 UTF8String];
        v29 = [v19 valueString];
        std::string::basic_string[abi:ne200100](&__dst, v28, [v29 lengthOfBytesUsingEncoding:4]);
        __p = __dst;
        memset(&__dst, 0, sizeof(__dst));
        v84 = 1;
      }

      v30 = [v19 valueInt];
      v31 = v30 == 0;

      if (!v31)
      {
        v32 = [v19 valueInt];
        [v32 intValue];
      }

      v33 = [v19 valueFloat];
      v34 = v33 == 0;

      if (!v34)
      {
        v35 = [v19 valueFloat];
        [v35 floatValue];
      }

      operator new();
    }
  }

  v36 = [v62 startIndex];
  v37 = v36 == 0;

  if (!v37)
  {
    v38 = [v62 startIndex];
    [v38 unsignedIntValue];
  }

  v39 = [v62 endIndex];
  v40 = v39 == 0;

  if (!v40)
  {
    v41 = [v62 endIndex];
    [v41 unsignedIntValue];
  }

  v69[0] = 0;
  v69[1] = 0;
  v70 = 0;
  v42 = [v62 alternatives];
  v43 = v42 == 0;

  if (!v43)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v44 = [v62 alternatives];
    if ([v44 countByEnumeratingWithState:&v65 objects:v85 count:16])
    {
      *v66;
      *v66;
      v45 = **(&v65 + 1);
      v46 = [v45 value];
      v47 = v46;
      v48 = [v46 UTF8String];
      v49 = [v45 value];
      std::string::basic_string[abi:ne200100](&__p, v48, [v49 lengthOfBytesUsingEncoding:4]);

      v50 = [v45 probability];
      v51 = v50 == 0;

      if (!v51)
      {
        v52 = [v45 probability];
        [v52 floatValue];
      }

      operator new();
    }
  }

  v63.__r_.__value_.__s.__data_[0] = 0;
  v64 = 0;
  v53 = [v62 originEntityId];
  v54 = v53 != 0;

  if (v54)
  {
    v55 = [v62 originEntityId];
    v56 = v55;
    v57 = [v55 UTF8String];
    v58 = [v62 originEntityId];
    std::string::basic_string[abi:ne200100](&__dst, v57, [v58 lengthOfBytesUsingEncoding:4]);
    v63 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v64 = 1;
  }

  usoEntityNode = self->_usoEntityNode;
  operator new();
}

- (void)addIdentifierWithValue:(id)a3 appBundleId:(id)a4 namespaceString:(id)a5 probability:(optional<double>)a6 nluComponent:(optional<siri:(optional<unsigned int>)a8 :(optional<unsigned int>)a9 ontology::UsoIdentifier::NluComponent>)a7 groupIndex:interpretationGroup:
{
  v23 = a6;
  __dst[3] = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  std::string::basic_string[abi:ne200100](__dst, [v12 UTF8String], objc_msgSend(v12, "lengthOfBytesUsingEncoding:", 4));
  std::string::basic_string[abi:ne200100](&v21, [v13 UTF8String], objc_msgSend(v13, "lengthOfBytesUsingEncoding:", 4));
  LOBYTE(__p[0]) = 0;
  v20 = 0;
  if (v14)
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, [v14 UTF8String]);
    *__p = v16;
    v19 = v17;
    v20 = 1;
  }

  usoEntityNode = self->_usoEntityNode;
  siri::ontology::UsoEntityNode::addIdentifier();
}

- (USOEntityNode)initWithCppEntityNode:(void *)a3
{
  v5.receiver = self;
  v5.super_class = USOEntityNode;
  result = [(USOGraphNode *)&v5 initWithCppGraphNode:?];
  if (result)
  {
    result->_usoEntityNode = a3;
  }

  return result;
}

@end