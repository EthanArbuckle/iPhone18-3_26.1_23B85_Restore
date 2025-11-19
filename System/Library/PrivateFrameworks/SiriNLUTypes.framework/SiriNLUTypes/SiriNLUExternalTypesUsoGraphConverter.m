@interface SiriNLUExternalTypesUsoGraphConverter
+ (id)convertFromGraphEdge:(id)a3;
+ (id)convertFromGraphEdges:(id)a3;
+ (id)convertFromUsoEntityIdentifier:(id)a3;
+ (id)convertFromUsoEntityIdentifiers:(id)a3;
+ (id)convertFromUsoGraph:(id)a3;
+ (id)convertFromUsoGraphs:(id)a3;
+ (id)convertFromUsoNode:(id)a3;
+ (id)convertFromUsoNodes:(id)a3;
+ (id)convertFromUtteranceAlignment:(id)a3;
+ (id)convertFromUtteranceAlignments:(id)a3;
+ (id)convertFromUtteranceSpan:(id)a3;
+ (id)convertFromUtteranceSpans:(id)a3;
@end

@implementation SiriNLUExternalTypesUsoGraphConverter

+ (id)convertFromUsoNode:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALUsoNode);
    v5 = [v3 entityLabel];
    [(SIRINLUEXTERNALUsoNode *)v4 setEntityLabel:v5];

    v6 = [v3 integerPayload];
    v7 = [SiriNLUExternalTypesConverter convertFromNumber:v6];
    [(SIRINLUEXTERNALUsoNode *)v4 setIntegerPayload:v7];

    v8 = [v3 stringPayload];
    v9 = [SiriNLUExternalTypesConverter convertFromString:v8];
    [(SIRINLUEXTERNALUsoNode *)v4 setStringPayload:v9];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v3 normalizedStringPayloads];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(SIRINLUEXTERNALUsoNode *)v4 addNormalizedStringPayloads:*(*(&v21 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v15 = [v3 verbLabel];
    [(SIRINLUEXTERNALUsoNode *)v4 setVerbLabel:v15];

    -[SIRINLUEXTERNALUsoNode setUsoElementId:](v4, "setUsoElementId:", [v3 usoElementId]);
    v16 = [v3 usoVerbId];

    if (v16)
    {
      v17 = objc_alloc_init(SIRICOMMONUInt32Value);
      v18 = [v3 usoVerbId];
      -[SIRICOMMONUInt32Value setValue:](v17, "setValue:", [v18 intValue]);

      [(SIRINLUEXTERNALUsoNode *)v4 setUsoVerbElementId:v17];
    }
  }

  else
  {
    v4 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)convertFromUsoNodes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 convertFromUsoNode:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromGraphEdges:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 convertFromGraphEdge:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromGraphEdge:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUsoEdge);
    -[SIRINLUEXTERNALUsoEdge setFromIndex:](v4, "setFromIndex:", [v3 fromVertex]);
    -[SIRINLUEXTERNALUsoEdge setToIndex:](v4, "setToIndex:", [v3 toVertex]);
    v5 = objc_alloc_init(SIRINLUEXTERNALUsoLabel);
    v6 = [v3 edgeLabel];
    [(SIRINLUEXTERNALUsoLabel *)v5 setValue:v6];

    v7 = objc_alloc_init(SIRINLUEXTERNALUsoEdgeLabel);
    -[SIRINLUEXTERNALUsoEdgeLabel setUsoElementId:](v7, "setUsoElementId:", [v3 usoElementId]);
    v8 = [v3 enumeration];

    [(SIRINLUEXTERNALUsoEdgeLabel *)v7 setEnumeration:v8];
    [(SIRINLUEXTERNALUsoEdgeLabel *)v7 setBaseEdgeLabel:v5];
    [(SIRINLUEXTERNALUsoEdge *)v4 setLabel:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUtteranceSpans:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 convertFromUtteranceSpan:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromUsoEntityIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 convertFromUsoEntityIdentifier:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromUsoEntityIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALUsoEntityIdentifier);
    v5 = [v3 appBundleId];
    [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setBackingAppBundleId:v5];

    v6 = [v3 namespaceString];
    v7 = [SiriNLUExternalTypesConverter convertFromString:v6];
    [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setNamespaceA:v7];

    -[SIRINLUEXTERNALUsoEntityIdentifier setNodeIndex:](v4, "setNodeIndex:", [v3 nodeIndex]);
    v8 = [v3 value];
    [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setValue:v8];

    v9 = [v3 probability];

    if (v9)
    {
      v10 = objc_alloc_init(SIRICOMMONDoubleValue);
      [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setProbability:v10];

      v11 = [v3 probability];
      [v11 doubleValue];
      v13 = v12;
      v14 = [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 probability];
      [v14 setValue:v13];
    }

    v15 = [v3 sourceComponent];

    if (v15)
    {
      v16 = [v3 sourceComponent];
      -[SIRINLUEXTERNALUsoEntityIdentifier setSourceComponent:](v4, "setSourceComponent:", [v16 intValue]);
    }

    v17 = [v3 groupIndex];

    if (v17)
    {
      v18 = [v3 groupIndex];
      -[SIRINLUEXTERNALUsoEntityIdentifier setGroupIndex:](v4, "setGroupIndex:", [v18 unsignedIntValue]);
    }

    v19 = [v3 interpretationGroup];

    if (v19)
    {
      v20 = [v3 interpretationGroup];
      -[SIRINLUEXTERNALUsoEntityIdentifier setInterpretationGroup:](v4, "setInterpretationGroup:", [v20 unsignedIntValue]);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUtteranceSpan:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUtteranceSpan);
    -[SIRINLUEXTERNALUtteranceSpan setEndIndex:](v4, "setEndIndex:", [v3 endIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setStartIndex:](v4, "setStartIndex:", [v3 startIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setStartUnicodeScalarIndex:](v4, "setStartUnicodeScalarIndex:", [v3 startUnicodeScalarIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setEndUnicodeScalarIndex:](v4, "setEndUnicodeScalarIndex:", [v3 endUnicodeScalarIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setStartMilliSeconds:](v4, "setStartMilliSeconds:", [v3 startMilliSeconds]);
    v5 = [v3 endMilliSeconds];

    [(SIRINLUEXTERNALUtteranceSpan *)v4 setEndMilliSeconds:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUtteranceAlignments:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 convertFromUtteranceAlignment:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromUtteranceAlignment:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(SIRINLUEXTERNALUtteranceAlignment);
    v6 = [v4 spans];
    v7 = [a1 convertFromUtteranceSpans:v6];
    [(SIRINLUEXTERNALUtteranceAlignment *)v5 setSpans:v7];

    -[SIRINLUEXTERNALUtteranceAlignment setAsrHypothesisIndex:](v5, "setAsrHypothesisIndex:", [v4 asrHypothesisIndex]);
    v8 = [v4 nodeIndex];

    [(SIRINLUEXTERNALUtteranceAlignment *)v5 setNodeIndex:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromUsoGraphs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 convertFromUsoGraph:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromUsoGraph:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    v6 = [v4 nodes];
    v7 = [a1 convertFromUsoNodes:v6];
    [(SIRINLUEXTERNALUsoGraph *)v5 setNodes:v7];

    v8 = [v4 edges];
    v9 = [a1 convertFromGraphEdges:v8];
    [(SIRINLUEXTERNALUsoGraph *)v5 setEdges:v9];

    v10 = [v4 alignments];
    v11 = [a1 convertFromUtteranceAlignments:v10];
    [(SIRINLUEXTERNALUsoGraph *)v5 setAlignments:v11];

    v12 = [v4 identifiers];

    v13 = [a1 convertFromUsoEntityIdentifiers:v12];
    [(SIRINLUEXTERNALUsoGraph *)v5 setIdentifiers:v13];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end