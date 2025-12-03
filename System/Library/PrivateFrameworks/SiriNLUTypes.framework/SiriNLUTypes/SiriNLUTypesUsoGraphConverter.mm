@interface SiriNLUTypesUsoGraphConverter
+ (id)convertUsoEdge:(id)edge;
+ (id)convertUsoEdges:(id)edges;
+ (id)convertUsoEntityIdentifier:(id)identifier;
+ (id)convertUsoEntityIdentifiers:(id)identifiers;
+ (id)convertUsoGraph:(id)graph;
+ (id)convertUsoGraphs:(id)graphs;
+ (id)convertUsoNode:(id)node;
+ (id)convertUsoNodes:(id)nodes;
+ (id)convertUtteranceAlignment:(id)alignment;
+ (id)convertUtteranceAlignments:(id)alignments;
+ (id)convertUtteranceSpan:(id)span;
+ (id)convertUtteranceSpans:(id)spans;
@end

@implementation SiriNLUTypesUsoGraphConverter

+ (id)convertUsoNodes:(id)nodes
{
  v18 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (nodesCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = nodesCopy;
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

          v10 = [self convertUsoNode:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUsoNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D25E8]) initWithUsoElementId:{objc_msgSend(nodeCopy, "usoElementId")}];
    if ([nodeCopy hasUsoVerbElementId])
    {
      v5 = MEMORY[0x1E696AD98];
      usoVerbElementId = [nodeCopy usoVerbElementId];
      v7 = [v5 numberWithInteger:{objc_msgSend(usoVerbElementId, "value")}];
      [v4 setUsoVerbId:v7];
    }

    if ([nodeCopy hasIntegerPayload])
    {
      v8 = MEMORY[0x1E696AD98];
      integerPayload = [nodeCopy integerPayload];
      v10 = [v8 numberWithInteger:{objc_msgSend(integerPayload, "value")}];
      [v4 setIntegerPayload:v10];
    }

    if ([nodeCopy hasStringPayload])
    {
      stringPayload = [nodeCopy stringPayload];
      value = [stringPayload value];
      [v4 setStringPayload:value];
    }

    normalizedStringPayloads = [nodeCopy normalizedStringPayloads];
    v14 = [normalizedStringPayloads copy];
    [v4 setNormalizedStringPayloads:v14];

    entityLabel = [nodeCopy entityLabel];
    [v4 setEntityLabel:entityLabel];

    verbLabel = [nodeCopy verbLabel];
    [v4 setVerbLabel:verbLabel];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUsoEntityIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (identifiersCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = identifiersCopy;
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

          v10 = [self convertUsoEntityIdentifier:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUsoEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    if ([identifierCopy hasProbability])
    {
      v5 = objc_alloc(MEMORY[0x1E696AD98]);
      probability = [v4 probability];
      [probability value];
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
    nodeIndex = [v4 nodeIndex];
    value = [v4 value];
    backingAppBundleId = [v4 backingAppBundleId];
    namespaceA = [v4 namespaceA];
    value2 = [namespaceA value];
    v7 = [v11 initWithNodeIndex:nodeIndex value:value appBundleId:backingAppBundleId namespaceString:value2 probability:v18 sourceComponent:v8 groupIndex:v9 interpretationGroup:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertUsoEdges:(id)edges
{
  v18 = *MEMORY[0x1E69E9840];
  edgesCopy = edges;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (edgesCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = edgesCopy;
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

          v10 = [self convertUsoEdge:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUsoEdge:(id)edge
{
  edgeCopy = edge;
  if (edgeCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25E0]);
    label = [edgeCopy label];
    usoElementId = [label usoElementId];
    fromIndex = [edgeCopy fromIndex];
    toIndex = [edgeCopy toIndex];
    label2 = [edgeCopy label];
    v10 = [v4 initWithUsoElementId:usoElementId fromVertex:fromIndex toVertex:toIndex enumeration:{objc_msgSend(label2, "enumeration")}];

    label3 = [edgeCopy label];
    baseEdgeLabel = [label3 baseEdgeLabel];
    value = [baseEdgeLabel value];
    [v10 setEdgeLabel:value];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUtteranceSpans:(id)spans
{
  v18 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (spansCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = spansCopy;
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

          v10 = [self convertUtteranceSpan:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUtteranceSpan:(id)span
{
  spanCopy = span;
  if (spanCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D2600]) initWithStartIndex:objc_msgSend(spanCopy endIndex:"startIndex") startUnicodeScalarIndex:objc_msgSend(spanCopy endUnicodeScalarIndex:"endIndex") startMilliSeconds:objc_msgSend(spanCopy endMilliSeconds:{"startUnicodeScalarIndex"), objc_msgSend(spanCopy, "endUnicodeScalarIndex"), objc_msgSend(spanCopy, "startMilliSeconds"), objc_msgSend(spanCopy, "endMilliSeconds")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUtteranceAlignments:(id)alignments
{
  v18 = *MEMORY[0x1E69E9840];
  alignmentsCopy = alignments;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (alignmentsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = alignmentsCopy;
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

          v10 = [self convertUtteranceAlignment:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUtteranceAlignment:(id)alignment
{
  alignmentCopy = alignment;
  if (alignmentCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D25F8]);
    nodeIndex = [alignmentCopy nodeIndex];
    asrHypothesisIndex = [alignmentCopy asrHypothesisIndex];
    spans = [alignmentCopy spans];
    v9 = [self convertUtteranceSpans:spans];
    v10 = [v5 initWithNodeIndex:nodeIndex asrHypothesisIndex:asrHypothesisIndex spans:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUsoGraphs:(id)graphs
{
  v18 = *MEMORY[0x1E69E9840];
  graphsCopy = graphs;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (graphsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = graphsCopy;
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

          v10 = [self convertUsoGraph:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUsoGraph:(id)graph
{
  v47[20] = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  if (graphCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D25D8]);
    nodes = [graphCopy nodes];
    v7 = [self convertUsoNodes:nodes];
    edges = [graphCopy edges];
    v9 = [self convertUsoEdges:edges];
    identifiers = [graphCopy identifiers];
    v11 = [self convertUsoEntityIdentifiers:identifiers];
    alignments = [graphCopy alignments];
    v13 = [self convertUtteranceAlignments:alignments];
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