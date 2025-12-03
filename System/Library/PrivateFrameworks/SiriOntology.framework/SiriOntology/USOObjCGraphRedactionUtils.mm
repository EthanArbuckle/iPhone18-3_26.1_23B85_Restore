@interface USOObjCGraphRedactionUtils
+ (BOOL)isAllowedCatiEntitySpan:(const void *)span key:(const void *)key;
+ (BOOL)isAllowedCatiIdentifier:(const void *)identifier;
+ (BOOL)isContactIDNamespace:(const void *)namespace;
+ (BOOL)isContactRelatedEntityNode:(UsoGraphNode *)node;
+ (BOOL)isHomeKitEntityTypeEntitySpan:(const void *)span key:(const void *)key value:(const void *)value;
+ (BOOL)isHomeKitEntityTypeIdentifier:(const void *)identifier;
+ (BOOL)shouldRetainEntitySpanValue:(const void *)value key:(const void *)key entitySpan:(const void *)span isContactRelatedEntityNode:(BOOL)node;
+ (BOOL)shouldRetainIdentifierValue:(const void *)value isContactRelatedEntityNode:(BOOL)node;
+ (id)allowedHomeKitEntityTypes;
+ (id)catiNamespacesForIdentifierValues;
+ (id)commonAppBundleIds;
+ (id)contactEntities;
+ (id)firstPartyAppBundleIds;
+ (id)getRedactedGraph:(void *)graph;
+ (id)obfuscateAppBundleId:()basic_string<char;
+ (unique_ptr<siri::ontology::UsoEntitySpan,)getRedactedEntitySpan:(UsoEntitySpan *)span isContactRelatedEntityNode:(BOOL)node;
+ (unique_ptr<siri::ontology::UsoEntitySpan,)getRedactionEntitySpan;
+ (unique_ptr<siri::ontology::UsoIdentifier,)getRedactedIdentifier:(UsoIdentifier *)identifier isContactRelatedEntityNode:;
+ (unique_ptr<siri::ontology::UsoIdentifier,)getRedactionIdentifier;
+ (void)redactedGraphHelperWithRedactedGraph:(void *)graph redactedList:(id)list visitedNodes:(id)nodes fromNode:(UsoGraphNode *)node successors:()vector<std:(std:()std:(std:(shared_ptr<siri::ontology::UsoVocabManager>)std :reference_wrapper<const siri::ontology::UsoGraphEdge>>>> *)a7 :allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode> :reference_wrapper<const)siri::ontology::UsoGraphEdge>> :pair<std::reference_wrapper<siri::ontology::UsoGraphNode> vocabManager:;
@end

@implementation USOObjCGraphRedactionUtils

+ (void)redactedGraphHelperWithRedactedGraph:(void *)graph redactedList:(id)list visitedNodes:(id)nodes fromNode:(UsoGraphNode *)node successors:()vector<std:(std:()std:(std:(shared_ptr<siri::ontology::UsoVocabManager>)std :reference_wrapper<const siri::ontology::UsoGraphEdge>>>> *)a7 :allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode> :reference_wrapper<const)siri::ontology::UsoGraphEdge>> :pair<std::reference_wrapper<siri::ontology::UsoGraphNode> vocabManager:
{
  listCopy = list;
  nodesCopy = nodes;
  nodeCopy = node;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:node->var2];
  LOBYTE(node) = [nodesCopy containsObject:v13];

  if ((node & 1) == 0)
  {
    var0 = a7->var0;
    if (a7->var1 != a7->var0)
    {
      v15 = 0;
      do
      {
        v16 = &var0[16 * v15];
        v17 = *v16;
        v18 = *(v16 + 1);
        v19 = (*(**v16 + 16))(*v16);
        if (v19 <= 2)
        {
          if (v19 == 1)
          {
            v28 = **v17;
            siri::ontology::UsoGraph::createTaskNode(*graph, v29[3], v29[13]);
          }

          if (v19 == 2)
          {
            v22 = **v17;
            siri::ontology::UsoGraph::createEntityNode(*graph, v23[3]);
          }
        }

        else
        {
          switch(v19)
          {
            case 3:
              v24 = **v17;
              v25 = *graph;
              siri::ontology::UsoGraph::createStringNode();
            case 4:
              v26 = **v17;
              v27 = *graph;
              siri::ontology::UsoGraph::createIntNode();
            case 5:
              v20 = **v17;
              siri::ontology::UsoGraph::createOperatorNode(*graph, v21[3]);
          }
        }

        ++v15;
        var0 = a7->var0;
      }

      while (v15 < (a7->var1 - a7->var0) >> 4);
    }

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:nodeCopy->var2];
    [nodesCopy addObject:v30];
  }
}

+ (BOOL)isAllowedCatiEntitySpan:(const void *)span key:(const void *)key
{
  if ((*(span + 4) & 0x1FFFFFFFFLL) != 0x100000005)
  {
    return 0;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v14, span);
  if (v15 != 1)
  {
    return 0;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, span);
  if ((v13 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (!std::string::compare(&__p, [@"com.apple.siri.cati" UTF8String]))
  {
    catiNamespacesForIdentifierValues = [self catiNamespacesForIdentifierValues];
    if (*(key + 23) >= 0)
    {
      keyCopy = key;
    }

    else
    {
      keyCopy = *key;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:keyCopy];
    v7 = [catiNamespacesForIdentifierValues containsObject:v11];
  }

  else
  {
    v7 = 0;
  }

  if (v13 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v15 & 1) != 0 && SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v7;
}

+ (BOOL)isAllowedCatiIdentifier:(const void *)identifier
{
  if ((*(identifier + 12) & 0x1FFFFFFFFLL) != 0x100000005)
  {
    return 0;
  }

  if (*(identifier + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(identifier + 3), *(identifier + 4));
  }

  else
  {
    v13 = *(identifier + 1);
  }

  if (!std::string::compare(&v13, [@"com.apple.siri.cati" UTF8String]))
  {
    catiNamespacesForIdentifierValues = [self catiNamespacesForIdentifierValues];
    v7 = MEMORY[0x1E696AEC0];
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, identifier + 3);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = [v7 stringWithUTF8String:p_p];
    v5 = [catiNamespacesForIdentifierValues containsObject:v9];

    if (v12 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 0;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v5;
}

+ (BOOL)shouldRetainEntitySpanValue:(const void *)value key:(const void *)key entitySpan:(const void *)span isContactRelatedEntityNode:(BOOL)node
{
  nodeCopy = node;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v15, span);
  if (v16)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, span);
    if ((v14 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v11 = std::string::compare(&__p, [@"com.apple.siri.sirinl" UTF8String]);
    if (v14 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v16 & 1) != 0 && SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (!v11)
    {
      return 1;
    }
  }

  if ((*(span + 4) & 0x1FFFFFFFFLL) != 0x100000001)
  {
    return [self isAllowedCatiEntitySpan:span key:key];
  }

  if (nodeCopy)
  {
    if (!+[PlatformUtils isInternalInstall](PlatformUtils, "isInternalInstall") || std::string::compare(key, [@"semantic_value" UTF8String]))
    {
      return [self isContactIDNamespaceString:key];
    }

    return 1;
  }

  return [self isHomeKitEntityTypeEntitySpan:span key:key value:value];
}

+ (BOOL)shouldRetainIdentifierValue:(const void *)value isContactRelatedEntityNode:(BOOL)node
{
  nodeCopy = node;
  if (*(value + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(value + 3), *(value + 4));
  }

  else
  {
    __p = *(value + 1);
  }

  v7 = std::string::compare(&__p, [@"com.apple.siri.sirinl" UTF8String]);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  if ((*(value + 12) & 0x1FFFFFFFFLL) != 0x100000001)
  {
    return [self isAllowedCatiIdentifier:value];
  }

  if (nodeCopy)
  {
    if (!+[PlatformUtils isInternalInstall])
    {
      return [self isContactIDNamespace:value];
    }

    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, value + 3);
    v9 = std::string::compare(&__p, [@"semantic_value" UTF8String]);
    if (v12 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      return [self isContactIDNamespace:value];
    }

    return 1;
  }

  return [self isHomeKitEntityTypeIdentifier:value];
}

+ (BOOL)isHomeKitEntityTypeEntitySpan:(const void *)span key:(const void *)key value:(const void *)value
{
  if (std::string::compare(key, [@"homeKitEntityType" UTF8String]))
  {
    return 0;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v16, span);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, span);
  if ((v15 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v8 = std::string::compare(&__p, [@"HomeKit" UTF8String]);
  if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v17 & 1) != 0 && SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    return 0;
  }

  allowedHomeKitEntityTypes = [self allowedHomeKitEntityTypes];
  if (*(value + 23) >= 0)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = *value;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:valueCopy];
  v9 = [allowedHomeKitEntityTypes containsObject:v13];

  return v9;
}

+ (BOOL)isHomeKitEntityTypeIdentifier:(const void *)identifier
{
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v13, identifier + 3);
  if (!std::string::compare(&v13, [@"homeKitEntityType" UTF8String]))
  {
    if (*(identifier + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(identifier + 3), *(identifier + 4));
    }

    else
    {
      __p = *(identifier + 1);
    }

    v5 = std::string::compare(&__p, [@"HomeKit" UTF8String]) != 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 1;
  }

  if (v14 == 1 && SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    return 0;
  }

  allowedHomeKitEntityTypes = [self allowedHomeKitEntityTypes];
  v8 = MEMORY[0x1E696AEC0];
  if (*(identifier + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *identifier, *(identifier + 1));
  }

  else
  {
    v13 = *identifier;
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13.__r_.__value_.__r.__words[0];
  }

  v10 = [v8 stringWithUTF8String:v9];
  v6 = [allowedHomeKitEntityTypes containsObject:v10];

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v6;
}

+ (BOOL)isContactIDNamespace:(const void *)namespace
{
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v8, namespace + 3);
  if (!std::string::compare(&v8, [@"item_id" UTF8String]))
  {
    v4 = 1;
  }

  else
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, namespace + 3);
    v4 = std::string::compare(&__p, [@"intent_vocabulary_id" UTF8String]) == 0;
    if (v7 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v9 == 1 && SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v4;
}

+ (BOOL)isContactRelatedEntityNode:(UsoGraphNode *)node
{
  v4 = MEMORY[0x1E696AEC0];
  (*(node->var0 + 6))(__p, node, a2);
  if (v11 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 stringWithUTF8String:v5];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  contactEntities = [self contactEntities];
  v8 = [contactEntities containsObject:v6];

  return v8;
}

+ (unique_ptr<siri::ontology::UsoEntitySpan,)getRedactedEntitySpan:(UsoEntitySpan *)span isContactRelatedEntityNode:(BOOL)node
{
  nodeCopy = node;
  v41 = 0uLL;
  v42 = 0;
  siri::ontology::UsoEntitySpan::getSpanProperties(span, v37);
  __p = v37[0];
  if (v37[0] != v37[1])
  {
    v46.__r_.__value_.__s.__data_[0] = 0;
    v47 = 0;
    v5 = *v37[0];
    if (*(*v37[0] + 48) == 1)
    {
      std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&v46, [@"USO_REDACTION_DROPPED" UTF8String]);
      if ((*(*__p + 48) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v6 = [self shouldRetainEntitySpanValue:*__p + 24 key:*__p entitySpan:span isContactRelatedEntityNode:nodeCopy];
      v5 = *__p;
      if (v6)
      {
        if (v47 == *(v5 + 48))
        {
          if (v47)
          {
            std::string::operator=(&v46, (v5 + 24));
          }
        }

        else
        {
          if (v47)
          {
            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            v7 = 0;
          }

          else
          {
            if (*(v5 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v46, *(v5 + 24), *(v5 + 32));
            }

            else
            {
              v46 = *(v5 + 24);
            }

            v7 = 1;
          }

          v47 = v7;
        }

        v5 = *__p;
      }
    }

    if (*(v5 + 60) == 1)
    {
      std::to_string(&v43, *(v5 + 56));
      v8 = [self shouldRetainEntitySpanValue:&v43 key:*__p entitySpan:span isContactRelatedEntityNode:nodeCopy];
      v9 = v8;
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
        if (v9)
        {
          goto LABEL_21;
        }
      }

      else if (v8)
      {
LABEL_21:
        v5 = *__p;
        v10 = *(*__p + 56);
        v11 = *(*__p + 57) | (*(*__p + 59) << 16);
        v12 = *(*__p + 60) << 32;
        goto LABEL_25;
      }

      std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&v46, [@"USO_REDACTION_DROPPED_INT" UTF8String]);
      v5 = *__p;
    }

LABEL_25:
    if (*(v5 + 68) == 1)
    {
      std::to_string(&v43, *(v5 + 64));
      v13 = [self shouldRetainEntitySpanValue:&v43 key:*__p entitySpan:span isContactRelatedEntityNode:nodeCopy];
      v14 = v13;
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
        if (v14)
        {
          goto LABEL_28;
        }
      }

      else if (v13)
      {
LABEL_28:
        v15 = *(*__p + 64);
        v16 = *(*__p + 65) | (*(*__p + 67) << 16);
        v17 = *(*__p + 68) << 32;
        goto LABEL_32;
      }

      std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&v46, [@"USO_REDACTION_DROPPED_FLOAT" UTF8String]);
      v18 = *__p;
    }

LABEL_32:
    operator new();
  }

  if (v37[0])
  {
    operator delete(v37[0]);
  }

  __src[0] = 0;
  __src[1] = 0;
  v40 = 0;
  siri::ontology::UsoEntitySpan::getAlternatives(span, &v46.__r_.__value_.__l.__data_);
  v30 = v46.__r_.__value_.__r.__words[0];
  if (v46.__r_.__value_.__r.__words[0] == v46.__r_.__value_.__l.__size_)
  {
    if (v46.__r_.__value_.__r.__words[0])
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (span[3].var0.var0.var1.var0.var0.var0[8])
    {
      var0 = span[3].var0.var0.var1.var0.var1.var0;
      operator new();
    }

    LOBYTE(v37[0]) = 0;
    v38 = 0;
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v43, &span->var0.var0.var0);
    if (v44 == 1)
    {
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v43, &span->var0.var0.var0);
      if ((v44 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v36 = v43;
      memset(&v43, 0, sizeof(v43));
      v24 = [self obfuscateAppBundleId:&v36];
      std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(v37, [v24 UTF8String]);

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (v44 == 1 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }

    v34.__r_.__value_.__s.__data_[0] = 0;
    v35 = 0;
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v43, &span[6].var0.var0.var1.var0.var1.var1);
    if (v44 == 1)
    {
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&v34, [@"USO_REDACTION_DROPPED" UTF8String]);
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v43, &span[6].var0.var0.var1.var0.var1.var1);
      if ((v44 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      std::string::basic_string[abi:ne200100]<0>(&v46, [@"item_id" UTF8String]);
      v25 = [self shouldRetainEntitySpanValue:&v43 key:&v46 entitySpan:span isContactRelatedEntityNode:nodeCopy];
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (v44 == 1 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (v25)
      {
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v43, &span[6].var0.var0.var1.var0.var1.var1);
        if (v35 == v44)
        {
          if (v35)
          {
            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            v34 = v43;
            *(&v43.__r_.__value_.__s + 23) = 0;
            v43.__r_.__value_.__s.__data_[0] = 0;
          }
        }

        else if (v35)
        {
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          v35 = 0;
        }

        else
        {
          v34 = v43;
          memset(&v43, 0, sizeof(v43));
          v35 = 1;
        }

        if (v44 == 1 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }
      }
    }

    var1 = span[1].var0.var0.var1.var0.var1.var1;
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v33, &span[1].var0.var0.var1.var0.var1 + 1);
    v27 = *(&span[4].var0.var0.var1.var0.var1 + 2);
    v28 = span[5].var0.var0.var1.var0.var1.var0;
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v45, [@"USO_REDACTION_DROPPED" UTF8String]);
  v19 = *v30;
  std::string::basic_string[abi:ne200100]<0>(&v43, [@"asr_alternative" UTF8String]);
  v20 = [self shouldRetainEntitySpanValue:v19 key:&v43 entitySpan:span isContactRelatedEntityNode:nodeCopy];
  v21 = v20;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else if (!v20)
  {
LABEL_41:
    v22 = *v30;
    operator new();
  }

  std::string::operator=(&v45, *v30);
  goto LABEL_41;
}

+ (unique_ptr<siri::ontology::UsoEntitySpan,)getRedactionEntitySpan
{
  v2 = 0uLL;
  v3 = 0;
  [@"usoRedactionId" UTF8String];
  [@"USO_REDACTION_NA" UTF8String];
  operator new();
}

+ (unique_ptr<siri::ontology::UsoIdentifier,)getRedactedIdentifier:(UsoIdentifier *)identifier isContactRelatedEntityNode:
{
  v4 = v3;
  v17 = *MEMORY[0x1E69E9840];
  if (*(&identifier[1].var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, identifier[1].var0.var0.var1.var0, identifier[1].var0.var0.var1.var1);
  }

  else
  {
    v16 = identifier[1];
  }

  v7 = [self obfuscateAppBundleId:&v16];
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, [@"USO_REDACTION_DROPPED" UTF8String]);
  if ([self shouldRetainIdentifierValue:identifier isContactRelatedEntityNode:v4])
  {
    if (*(&identifier->var0.var0.var1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, identifier->var0.var0.var1.var0, identifier->var0.var0.var1.var1);
    }

    else
    {
      v14 = *identifier;
    }

    if (*(&__p.var0.var0.var1 + 23) < 0)
    {
      operator delete(__p.var0.var0.var1.var0);
    }

    __p = v14;
  }

  v8 = v7;
  [v7 UTF8String];
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v14, identifier[2].var0.var0.var0.var0);
  var1 = identifier[3].var0.var0.var1.var1;
  v10 = identifier[3].var0.var0.var0.var0[16];
  var0 = identifier[4].var0.var0.var1.var0;
  v11 = identifier[4].var0.var0.var1.var1;
  v13 = *(&identifier[4].var0.var0.var1 + 2);
  operator new();
}

+ (unique_ptr<siri::ontology::UsoIdentifier,)getRedactionIdentifier
{
  [@"USO_REDACTION_NA" UTF8String];
  [@"com.apple.siri.SiriRedaction" UTF8String];
  [@"usoRedactionId" UTF8String];
  operator new();
}

+ (id)obfuscateAppBundleId:()basic_string<char
{
  if (*(&var0->var0.var1 + 23) < 0)
  {
    var0 = var0->var0.var1.var0;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:var0];
  commonAppBundleIds = [self commonAppBundleIds];
  v6 = [commonAppBundleIds containsObject:v4];

  v7 = v4;
  if ((v6 & 1) == 0)
  {
    firstPartyAppBundleIds = [self firstPartyAppBundleIds];
    v9 = [firstPartyAppBundleIds containsObject:v4];

    if (v9)
    {
      v7 = v4;
    }

    else
    {
      v7 = @"USO_APP_BUNDLE_ID_3P";
    }
  }

  v10 = v7;

  return v7;
}

+ (id)getRedactedGraph:(void *)graph
{
  siri::ontology::getSharedUsoVocabManager(self);
  v4 = siri::ontology::getSharedUsoVocabManager(void)::inst;
  v5 = unk_1EBE27900;
  if (unk_1EBE27900)
  {
    atomic_fetch_add_explicit((unk_1EBE27900 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

+ (id)catiNamespacesForIdentifierValues
{
  if (+[USOObjCGraphRedactionUtils catiNamespacesForIdentifierValues]::onceToken != -1)
  {
    dispatch_once(&+[USOObjCGraphRedactionUtils catiNamespacesForIdentifierValues]::onceToken, &__block_literal_global_27);
  }

  v3 = +[USOObjCGraphRedactionUtils catiNamespacesForIdentifierValues]::catiNamespacesForIdentifierValues;

  return v3;
}

uint64_t __63__USOObjCGraphRedactionUtils_catiNamespacesForIdentifierValues__block_invoke()
{
  +[USOObjCGraphRedactionUtils catiNamespacesForIdentifierValues]::catiNamespacesForIdentifierValues = [MEMORY[0x1E695DFD8] setWithObjects:{@"ensemble", @"guid", @"intentName", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)allowedHomeKitEntityTypes
{
  if (+[USOObjCGraphRedactionUtils allowedHomeKitEntityTypes]::onceToken != -1)
  {
    dispatch_once(&+[USOObjCGraphRedactionUtils allowedHomeKitEntityTypes]::onceToken, &__block_literal_global_25);
  }

  v3 = +[USOObjCGraphRedactionUtils allowedHomeKitEntityTypes]::allowedHomeKitEntityTypes;

  return v3;
}

uint64_t __55__USOObjCGraphRedactionUtils_allowedHomeKitEntityTypes__block_invoke()
{
  +[USOObjCGraphRedactionUtils allowedHomeKitEntityTypes]::allowedHomeKitEntityTypes = [MEMORY[0x1E695DFD8] setWithObjects:{@"homeAutomationAccessoryName", @"homeAutomationHome", @"homeAutomationRoom", @"homeAutomationScene", @"homeAutomationServiceGroup", @"homeAutomationServiceName", @"homeAutomationTrigger", @"homeAutomationZone", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)commonAppBundleIds
{
  if (+[USOObjCGraphRedactionUtils commonAppBundleIds]::onceToken != -1)
  {
    dispatch_once(&+[USOObjCGraphRedactionUtils commonAppBundleIds]::onceToken, &__block_literal_global_23);
  }

  v3 = +[USOObjCGraphRedactionUtils commonAppBundleIds]::commonAppBundleIds;

  return v3;
}

uint64_t __48__USOObjCGraphRedactionUtils_commonAppBundleIds__block_invoke()
{
  +[USOObjCGraphRedactionUtils commonAppBundleIds]::commonAppBundleIds = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.siri.SiriRedaction", @"com.apple.siri.sirinl", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)contactEntities
{
  if (+[USOObjCGraphRedactionUtils contactEntities]::onceToken != -1)
  {
    dispatch_once(&+[USOObjCGraphRedactionUtils contactEntities]::onceToken, &__block_literal_global_21);
  }

  v3 = +[USOObjCGraphRedactionUtils contactEntities]::contactEntities;

  return v3;
}

uint64_t __45__USOObjCGraphRedactionUtils_contactEntities__block_invoke()
{
  +[USOObjCGraphRedactionUtils contactEntities]::contactEntities = [MEMORY[0x1E695DFD8] setWithObjects:{GROUP, PERSON, ORGANIZATION, POSTAL_ADDRESS, EMAIL_ADDRESS, PHONE_NUMBER, PERSON_RELATIONSHIP, 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)firstPartyAppBundleIds
{
  if (+[USOObjCGraphRedactionUtils firstPartyAppBundleIds]::onceToken != -1)
  {
    dispatch_once(&+[USOObjCGraphRedactionUtils firstPartyAppBundleIds]::onceToken, &__block_literal_global_4470);
  }

  v3 = +[USOObjCGraphRedactionUtils firstPartyAppBundleIds]::firstPartyAppBundleIds;

  return v3;
}

uint64_t __52__USOObjCGraphRedactionUtils_firstPartyAppBundleIds__block_invoke()
{
  +[USOObjCGraphRedactionUtils firstPartyAppBundleIds]::firstPartyAppBundleIds = [MEMORY[0x1E695DFD8] setWithObjects:{@"Messages", @"Photos", @"Shortcuts", @"Contacts", @"Applications", @"HomeKit", @"MediaPlayer", @"Tokens", @"com.apple.siri.cati", @"HomeMemberInfo", @"Podcasts", @"Fitness", @"Keyboard", @"CoreRoutine", @"Portrait", @"Calendar", @"UserAccount", @"CarPlay", @"FindMy", @"UserFeedbackLearning", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end