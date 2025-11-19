@interface SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAdjustedRankedSpans:(id)a3;
- (void)addAdjustedRankedTools:(id)a3;
- (void)addContext:(id)a3;
- (void)addOriginalRankedSpans:(id)a3;
- (void)addOriginalRankedTools:(id)a3;
- (void)addRequiredContext:(id)a3;
- (void)addSpans:(id)a3;
- (void)addUtteranceContext:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput

- (void)mergeFrom:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v5 = v4[6];
  v6 = [v5 countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v75;
    do
    {
      v9 = 0;
      do
      {
        if (*v75 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addRequiredContext:*(*(&v74 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v7);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = v4[8];
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v84 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v71;
    do
    {
      v14 = 0;
      do
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addUtteranceContext:*(*(&v70 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v70 objects:v84 count:16];
    }

    while (v12);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v15 = v4[5];
  v16 = [v15 countByEnumeratingWithState:&v66 objects:v83 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v67;
    do
    {
      v19 = 0;
      do
      {
        if (*v67 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addOriginalRankedTools:*(*(&v66 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v66 objects:v83 count:16];
    }

    while (v17);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v20 = v4[2];
  v21 = [v20 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v63;
    do
    {
      v24 = 0;
      do
      {
        if (*v63 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addAdjustedRankedTools:*(*(&v62 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v22);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v25 = v4[4];
  v26 = [v25 countByEnumeratingWithState:&v58 objects:v81 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v59;
    do
    {
      v29 = 0;
      do
      {
        if (*v59 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addOriginalRankedSpans:*(*(&v58 + 1) + 8 * v29++)];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v58 objects:v81 count:16];
    }

    while (v27);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v30 = v4[1];
  v31 = [v30 countByEnumeratingWithState:&v54 objects:v80 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v55;
    do
    {
      v34 = 0;
      do
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addAdjustedRankedSpans:*(*(&v54 + 1) + 8 * v34++)];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v54 objects:v80 count:16];
    }

    while (v32);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = v4[7];
  v36 = [v35 countByEnumeratingWithState:&v50 objects:v79 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v51;
    do
    {
      v39 = 0;
      do
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addSpans:*(*(&v50 + 1) + 8 * v39++)];
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v50 objects:v79 count:16];
    }

    while (v37);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = v4[3];
  v41 = [v40 countByEnumeratingWithState:&v46 objects:v78 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v47;
    do
    {
      v44 = 0;
      do
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self addContext:*(*(&v46 + 1) + 8 * v44++), v46];
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v46 objects:v78 count:16];
    }

    while (v42);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_requiredContexts hash];
  v4 = [(NSMutableArray *)self->_utteranceContexts hash]^ v3;
  v5 = [(NSMutableArray *)self->_originalRankedTools hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_adjustedRankedTools hash];
  v7 = [(NSMutableArray *)self->_originalRankedSpans hash];
  v8 = v7 ^ [(NSMutableArray *)self->_adjustedRankedSpans hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_spans hash];
  return v9 ^ [(NSMutableArray *)self->_contexts hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requiredContexts = self->_requiredContexts, !(requiredContexts | v4[6])) || -[NSMutableArray isEqual:](requiredContexts, "isEqual:")) && ((utteranceContexts = self->_utteranceContexts, !(utteranceContexts | v4[8])) || -[NSMutableArray isEqual:](utteranceContexts, "isEqual:")) && ((originalRankedTools = self->_originalRankedTools, !(originalRankedTools | v4[5])) || -[NSMutableArray isEqual:](originalRankedTools, "isEqual:")) && ((adjustedRankedTools = self->_adjustedRankedTools, !(adjustedRankedTools | v4[2])) || -[NSMutableArray isEqual:](adjustedRankedTools, "isEqual:")) && ((originalRankedSpans = self->_originalRankedSpans, !(originalRankedSpans | v4[4])) || -[NSMutableArray isEqual:](originalRankedSpans, "isEqual:")) && ((adjustedRankedSpans = self->_adjustedRankedSpans, !(adjustedRankedSpans | v4[1])) || -[NSMutableArray isEqual:](adjustedRankedSpans, "isEqual:")) && ((spans = self->_spans, !(spans | v4[7])) || -[NSMutableArray isEqual:](spans, "isEqual:")))
  {
    contexts = self->_contexts;
    if (contexts | v4[3])
    {
      v13 = [(NSMutableArray *)contexts isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v6 = self->_requiredContexts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v84 objects:v95 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v85;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v84 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addRequiredContext:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v8);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v12 = self->_utteranceContexts;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v80 objects:v94 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v81;
    do
    {
      v16 = 0;
      do
      {
        if (*v81 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v80 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addUtteranceContext:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v80 objects:v94 count:16];
    }

    while (v14);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v18 = self->_originalRankedTools;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v76 objects:v93 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v77;
    do
    {
      v22 = 0;
      do
      {
        if (*v77 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v76 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addOriginalRankedTools:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v20);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v24 = self->_adjustedRankedTools;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v72 objects:v92 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v73;
    do
    {
      v28 = 0;
      do
      {
        if (*v73 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v72 + 1) + 8 * v28) copyWithZone:a3];
        [v5 addAdjustedRankedTools:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v72 objects:v92 count:16];
    }

    while (v26);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v30 = self->_originalRankedSpans;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v68 objects:v91 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v69;
    do
    {
      v34 = 0;
      do
      {
        if (*v69 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v68 + 1) + 8 * v34) copyWithZone:a3];
        [v5 addOriginalRankedSpans:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v68 objects:v91 count:16];
    }

    while (v32);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v36 = self->_adjustedRankedSpans;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v90 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v65;
    do
    {
      v40 = 0;
      do
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v64 + 1) + 8 * v40) copyWithZone:a3];
        [v5 addAdjustedRankedSpans:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v90 count:16];
    }

    while (v38);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v42 = self->_spans;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v60 objects:v89 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v61;
    do
    {
      v46 = 0;
      do
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v60 + 1) + 8 * v46) copyWithZone:a3];
        [v5 addSpans:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v60 objects:v89 count:16];
    }

    while (v44);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = self->_contexts;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v56 objects:v88 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v57;
    do
    {
      v52 = 0;
      do
      {
        if (*v57 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v56 + 1) + 8 * v52) copyWithZone:{a3, v56}];
        [v5 addContext:v53];

        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v56 objects:v88 count:16];
    }

    while (v50);
  }

  v54 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v36 = a3;
  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self requiredContextsCount])
  {
    [v36 clearRequiredContexts];
    v4 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self requiredContextsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self requiredContextAtIndex:i];
        [v36 addRequiredContext:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self utteranceContextsCount])
  {
    [v36 clearUtteranceContexts];
    v8 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self utteranceContextsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self utteranceContextAtIndex:j];
        [v36 addUtteranceContext:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self originalRankedToolsCount])
  {
    [v36 clearOriginalRankedTools];
    v12 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self originalRankedToolsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self originalRankedToolsAtIndex:k];
        [v36 addOriginalRankedTools:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self adjustedRankedToolsCount])
  {
    [v36 clearAdjustedRankedTools];
    v16 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self adjustedRankedToolsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self adjustedRankedToolsAtIndex:m];
        [v36 addAdjustedRankedTools:v19];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self originalRankedSpansCount])
  {
    [v36 clearOriginalRankedSpans];
    v20 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self originalRankedSpansCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self originalRankedSpansAtIndex:n];
        [v36 addOriginalRankedSpans:v23];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self adjustedRankedSpansCount])
  {
    [v36 clearAdjustedRankedSpans];
    v24 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self adjustedRankedSpansCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self adjustedRankedSpansAtIndex:ii];
        [v36 addAdjustedRankedSpans:v27];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self spansCount])
  {
    [v36 clearSpans];
    v28 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self spansCount];
    if (v28)
    {
      v29 = v28;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self spansAtIndex:jj];
        [v36 addSpans:v31];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self contextsCount])
  {
    [v36 clearContexts];
    v32 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self contextsCount];
    if (v32)
    {
      v33 = v32;
      for (kk = 0; kk != v33; ++kk)
      {
        v35 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self contextAtIndex:kk];
        [v36 addContext:v35];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v5 = self->_requiredContexts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v83;
    do
    {
      v9 = 0;
      do
      {
        if (*v83 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v82 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v7);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v11 = self->_utteranceContexts;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v79;
    do
    {
      v15 = 0;
      do
      {
        if (*v79 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v78 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v13);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v17 = self->_originalRankedTools;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v74 objects:v91 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v75;
    do
    {
      v21 = 0;
      do
      {
        if (*v75 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v74 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v74 objects:v91 count:16];
    }

    while (v19);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v23 = self->_adjustedRankedTools;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v70 objects:v90 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v71;
    do
    {
      v27 = 0;
      do
      {
        if (*v71 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v70 + 1) + 8 * v27);
        PBDataWriterWriteStringField();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v70 objects:v90 count:16];
    }

    while (v25);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v29 = self->_originalRankedSpans;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v66 objects:v89 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    do
    {
      v33 = 0;
      do
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v66 + 1) + 8 * v33);
        PBDataWriterWriteStringField();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v66 objects:v89 count:16];
    }

    while (v31);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = self->_adjustedRankedSpans;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v62 objects:v88 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v63;
    do
    {
      v39 = 0;
      do
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v62 + 1) + 8 * v39);
        PBDataWriterWriteStringField();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v62 objects:v88 count:16];
    }

    while (v37);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v41 = self->_spans;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v58 objects:v87 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v59;
    do
    {
      v45 = 0;
      do
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v58 + 1) + 8 * v45);
        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v58 objects:v87 count:16];
    }

    while (v43);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = self->_contexts;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v54 objects:v86 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v55;
    do
    {
      v51 = 0;
      do
      {
        if (*v55 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v54 + 1) + 8 * v51);
        PBDataWriterWriteSubmessage();
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v54 objects:v86 count:16];
    }

    while (v49);
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_requiredContexts count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_requiredContexts, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = self->_requiredContexts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v51;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v51 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"required_context"];
  }

  if ([(NSMutableArray *)self->_utteranceContexts count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_utteranceContexts, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v12 = self->_utteranceContexts;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v47;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v46 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"utterance_context"];
  }

  originalRankedTools = self->_originalRankedTools;
  if (originalRankedTools)
  {
    [v3 setObject:originalRankedTools forKey:@"original_ranked_tools"];
  }

  adjustedRankedTools = self->_adjustedRankedTools;
  if (adjustedRankedTools)
  {
    [v3 setObject:adjustedRankedTools forKey:@"adjusted_ranked_tools"];
  }

  originalRankedSpans = self->_originalRankedSpans;
  if (originalRankedSpans)
  {
    [v3 setObject:originalRankedSpans forKey:@"original_ranked_spans"];
  }

  adjustedRankedSpans = self->_adjustedRankedSpans;
  if (adjustedRankedSpans)
  {
    [v3 setObject:adjustedRankedSpans forKey:@"adjusted_ranked_spans"];
  }

  if ([(NSMutableArray *)self->_spans count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_spans, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = self->_spans;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v42 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKey:@"spans"];
  }

  if ([(NSMutableArray *)self->_contexts count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contexts, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = self->_contexts;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v39;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v38 + 1) + 8 * m) dictionaryRepresentation];
          [v29 addObject:v35];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
      }

      while (v32);
    }

    [v3 setObject:v29 forKey:@"context"];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addContext:(id)a3
{
  v4 = a3;
  contexts = self->_contexts;
  v8 = v4;
  if (!contexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contexts;
    self->_contexts = v6;

    v4 = v8;
    contexts = self->_contexts;
  }

  [(NSMutableArray *)contexts addObject:v4];
}

- (void)addSpans:(id)a3
{
  v4 = a3;
  spans = self->_spans;
  v8 = v4;
  if (!spans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_spans;
    self->_spans = v6;

    v4 = v8;
    spans = self->_spans;
  }

  [(NSMutableArray *)spans addObject:v4];
}

- (void)addAdjustedRankedSpans:(id)a3
{
  v4 = a3;
  adjustedRankedSpans = self->_adjustedRankedSpans;
  v8 = v4;
  if (!adjustedRankedSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_adjustedRankedSpans;
    self->_adjustedRankedSpans = v6;

    v4 = v8;
    adjustedRankedSpans = self->_adjustedRankedSpans;
  }

  [(NSMutableArray *)adjustedRankedSpans addObject:v4];
}

- (void)addOriginalRankedSpans:(id)a3
{
  v4 = a3;
  originalRankedSpans = self->_originalRankedSpans;
  v8 = v4;
  if (!originalRankedSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_originalRankedSpans;
    self->_originalRankedSpans = v6;

    v4 = v8;
    originalRankedSpans = self->_originalRankedSpans;
  }

  [(NSMutableArray *)originalRankedSpans addObject:v4];
}

- (void)addAdjustedRankedTools:(id)a3
{
  v4 = a3;
  adjustedRankedTools = self->_adjustedRankedTools;
  v8 = v4;
  if (!adjustedRankedTools)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_adjustedRankedTools;
    self->_adjustedRankedTools = v6;

    v4 = v8;
    adjustedRankedTools = self->_adjustedRankedTools;
  }

  [(NSMutableArray *)adjustedRankedTools addObject:v4];
}

- (void)addOriginalRankedTools:(id)a3
{
  v4 = a3;
  originalRankedTools = self->_originalRankedTools;
  v8 = v4;
  if (!originalRankedTools)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_originalRankedTools;
    self->_originalRankedTools = v6;

    v4 = v8;
    originalRankedTools = self->_originalRankedTools;
  }

  [(NSMutableArray *)originalRankedTools addObject:v4];
}

- (void)addUtteranceContext:(id)a3
{
  v4 = a3;
  utteranceContexts = self->_utteranceContexts;
  v8 = v4;
  if (!utteranceContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_utteranceContexts;
    self->_utteranceContexts = v6;

    v4 = v8;
    utteranceContexts = self->_utteranceContexts;
  }

  [(NSMutableArray *)utteranceContexts addObject:v4];
}

- (void)addRequiredContext:(id)a3
{
  v4 = a3;
  requiredContexts = self->_requiredContexts;
  v8 = v4;
  if (!requiredContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_requiredContexts;
    self->_requiredContexts = v6;

    v4 = v8;
    requiredContexts = self->_requiredContexts;
  }

  [(NSMutableArray *)requiredContexts addObject:v4];
}

@end