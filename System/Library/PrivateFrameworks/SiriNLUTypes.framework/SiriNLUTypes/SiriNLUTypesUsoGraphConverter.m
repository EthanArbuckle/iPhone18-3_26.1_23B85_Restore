@interface SiriNLUTypesUsoGraphConverter
+ (id)convertUsoEdge:(id)a3;
+ (id)convertUsoEdges:(id)a3;
+ (id)convertUsoEntityIdentifier:(id)a3;
+ (id)convertUsoEntityIdentifiers:(id)a3;
+ (id)convertUsoGraph:(id)a3;
+ (id)convertUsoGraphs:(id)a3;
+ (id)convertUsoNode:(id)a3;
+ (id)convertUsoNodes:(id)a3;
+ (id)convertUtteranceAlignment:(id)a3;
+ (id)convertUtteranceAlignments:(id)a3;
+ (id)convertUtteranceSpan:(id)a3;
+ (id)convertUtteranceSpans:(id)a3;
@end

@implementation SiriNLUTypesUsoGraphConverter

+ (id)convertUsoNodes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertUsoNode:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUsoNode:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D25E8]) initWithUsoElementId:{objc_msgSend(v3, "usoElementId")}];
    if ([v3 hasUsoVerbElementId])
    {
      v5 = MEMORY[0x1E696AD98];
      v6 = [v3 usoVerbElementId];
      v7 = [v5 numberWithInteger:{objc_msgSend(v6, "value")}];
      [v4 setUsoVerbId:v7];
    }

    if ([v3 hasIntegerPayload])
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [v3 integerPayload];
      v10 = [v8 numberWithInteger:{objc_msgSend(v9, "value")}];
      [v4 setIntegerPayload:v10];
    }

    if ([v3 hasStringPayload])
    {
      v11 = [v3 stringPayload];
      v12 = [v11 value];
      [v4 setStringPayload:v12];
    }

    v13 = [v3 normalizedStringPayloads];
    v14 = [v13 copy];
    [v4 setNormalizedStringPayloads:v14];

    v15 = [v3 entityLabel];
    [v4 setEntityLabel:v15];

    v16 = [v3 verbLabel];
    [v4 setVerbLabel:v16];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUsoEntityIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertUsoEntityIdentifier:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUsoEntityIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasProbability])
    {
      v5 = objc_alloc(MEMORY[0x1E696AD98]);
      v6 = [v4 probability];
      [v6 value];
      v18 = [v5 initWithDouble:?];
    }

    else
    {
      v18 = 0;
    }

    if ([v4 hasSourceComponent])
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v4, "sourceComponent")}];
    }

    else
    {
      v8 = 0;
    }

    if ([v4 hasGroupIndex])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{objc_msgSend(v4, "groupIndex")}];
    }

    else
    {
      v9 = 0;
    }

    if ([v4 hasInterpretationGroup])
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{objc_msgSend(v4, "interpretationGroup")}];
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_alloc(MEMORY[0x1E69D25F0]);
    v12 = [v4 nodeIndex];
    v13 = [v4 value];
    v14 = [v4 backingAppBundleId];
    v15 = [v4 namespaceA];
    v16 = [v15 value];
    v7 = [v11 initWithNodeIndex:v12 value:v13 appBundleId:v14 namespaceString:v16 probability:v18 sourceComponent:v8 groupIndex:v9 interpretationGroup:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertUsoEdges:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertUsoEdge:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUsoEdge:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25E0]);
    v5 = [v3 label];
    v6 = [v5 usoElementId];
    v7 = [v3 fromIndex];
    v8 = [v3 toIndex];
    v9 = [v3 label];
    v10 = [v4 initWithUsoElementId:v6 fromVertex:v7 toVertex:v8 enumeration:{objc_msgSend(v9, "enumeration")}];

    v11 = [v3 label];
    v12 = [v11 baseEdgeLabel];
    v13 = [v12 value];
    [v10 setEdgeLabel:v13];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUtteranceSpans:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertUtteranceSpan:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUtteranceSpan:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D2600]) initWithStartIndex:objc_msgSend(v3 endIndex:"startIndex") startUnicodeScalarIndex:objc_msgSend(v3 endUnicodeScalarIndex:"endIndex") startMilliSeconds:objc_msgSend(v3 endMilliSeconds:{"startUnicodeScalarIndex"), objc_msgSend(v3, "endUnicodeScalarIndex"), objc_msgSend(v3, "startMilliSeconds"), objc_msgSend(v3, "endMilliSeconds")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUtteranceAlignments:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertUtteranceAlignment:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUtteranceAlignment:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D25F8]);
    v6 = [v4 nodeIndex];
    v7 = [v4 asrHypothesisIndex];
    v8 = [v4 spans];
    v9 = [a1 convertUtteranceSpans:v8];
    v10 = [v5 initWithNodeIndex:v6 asrHypothesisIndex:v7 spans:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUsoGraphs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertUsoGraph:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUsoGraph:(id)a3
{
  v47[20] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D25D8]);
    v6 = [v4 nodes];
    v7 = [a1 convertUsoNodes:v6];
    v8 = [v4 edges];
    v9 = [a1 convertUsoEdges:v8];
    v10 = [v4 identifiers];
    v11 = [a1 convertUsoEntityIdentifiers:v10];
    v12 = [v4 alignments];
    v13 = [a1 convertUtteranceAlignments:v12];
    v33 = [v5 initWithNodes:v7 edges:v9 identifiers:v11 alignments:v13];

    SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v14);
    v16 = *SharedUsoVocabManager;
    v17 = SharedUsoVocabManager[1];
    v18 = v33;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = v17;
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v37 = 0;
    }

    v36 = v16;
    if (v33)
    {
      [v33 toCppUsoGraph:&v36 withError:0];
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (v38)
    {
      v47[6] = 0;
      v19 = MEMORY[0x1E69E5570] + 64;
      v47[0] = MEMORY[0x1E69E5570] + 64;
      v20 = MEMORY[0x1E69E54E8];
      v21 = *(MEMORY[0x1E69E54E8] + 16);
      *&buf = *(MEMORY[0x1E69E54E8] + 8);
      *(&buf + *(buf - 24)) = v21;
      v22 = (&buf + *(buf - 24));
      std::ios_base::init(v22, &buf + 8);
      v23 = MEMORY[0x1E69E5570] + 24;
      v22[1].__vftable = 0;
      v22[1].__fmtflags_ = -1;
      *&buf = v23;
      v47[0] = v19;
      v24 = MEMORY[0x1E69E5538] + 16;
      *(&buf + 1) = MEMORY[0x1E69E5538] + 16;
      MEMORY[0x1CCA7EBA0](&v40);
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v25 = MEMORY[0x1E69E5548] + 16;
      *(&buf + 1) = MEMORY[0x1E69E5548] + 16;
      memset(&v44, 0, sizeof(v44));
      v45 = &v44;
      v46 = 16;
      std::string::resize(&v44, 0x16uLL, 0);
      size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v44.__r_.__value_.__l.__size_;
      }

      *(&v42 + 1) = &v44;
      *&v43 = &v44;
      *(&v43 + 1) = &v44 + size;
      siri::ontology::UsoGraph::prettyPrint();
      v27 = MEMORY[0x1E696AEC0];
      std::stringbuf::str();
      if (v35 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v29 = [v27 stringWithUTF8String:p_p];
      v18 = v33;
      [v33 setPrintedForm:v29];

      if (v35 < 0)
      {
        operator delete(__p);
      }

      *&buf = *v20;
      *(&buf + *(buf - 24)) = v20[3];
      *(&buf + 1) = v25;
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      *(&buf + 1) = v24;
      std::locale::~locale(&v40);
      std::ostream::~ostream();
      MEMORY[0x1CCA7EBD0](v47);
    }

    else
    {
      v30 = loggerContext(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "+[SiriNLUTypesUsoGraphConverter convertUsoGraph:]";
        _os_log_impl(&dword_1C8774000, v30, OS_LOG_TYPE_INFO, "%s [WARN]: unable to convert serialized graph to cpp graph and get printed form", &buf, 0xCu);
      }
    }

    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v38);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v18 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v18;
}

@end