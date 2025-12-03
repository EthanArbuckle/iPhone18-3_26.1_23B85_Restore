@interface USOSchemaUSOGraph
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOGraph)initWithDictionary:(id)dictionary;
- (USOSchemaUSOGraph)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAlignments:(id)alignments;
- (void)addEdges:(id)edges;
- (void)addIdentifiers:(id)identifiers;
- (void)addNodes:(id)nodes;
- (void)addSpans:(id)spans;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOGraph

- (USOSchemaUSOGraph)initWithDictionary:(id)dictionary
{
  v85 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v79.receiver = self;
  v79.super_class = USOSchemaUSOGraph;
  v5 = [(USOSchemaUSOGraph *)&v79 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaVersion alloc] initWithDictionary:v6];
      [(USOSchemaUSOGraph *)v5 setVersion:v7];
    }

    v55 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(USOSchemaUSOGraph *)v5 setLinkId:v9];
    }

    v54 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"nodes"];
    objc_opt_class();
    v58 = v10;
    if (objc_opt_isKindOfClass())
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v75 objects:v84 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v76;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v76 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v75 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[USOSchemaUSONode alloc] initWithDictionary:v16];
              [(USOSchemaUSOGraph *)v5 addNodes:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v75 objects:v84 count:16];
        }

        while (v13);
      }
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"edges"];
    objc_opt_class();
    v57 = v18;
    if (objc_opt_isKindOfClass())
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v72;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v72 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v71 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[USOSchemaUSOEdge alloc] initWithDictionary:v24];
              [(USOSchemaUSOGraph *)v5 addEdges:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v21);
      }
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"identifiers"];
    objc_opt_class();
    v56 = v26;
    if (objc_opt_isKindOfClass())
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v67 objects:v82 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v68;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v68 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v67 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [[USOSchemaUSOEntityIdentifier alloc] initWithDictionary:v32];
              [(USOSchemaUSOGraph *)v5 addIdentifiers:v33];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v67 objects:v82 count:16];
        }

        while (v29);
      }
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"alignments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v35 = v34;
      v36 = v34;
      v37 = [v36 countByEnumeratingWithState:&v63 objects:v81 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v64;
        do
        {
          for (m = 0; m != v38; ++m)
          {
            if (*v64 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v63 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = [[USOSchemaUSOUtteranceAlignment alloc] initWithDictionary:v41];
              [(USOSchemaUSOGraph *)v5 addAlignments:v42];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v63 objects:v81 count:16];
        }

        while (v38);
      }

      v34 = v35;
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"spans"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v34;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v59 objects:v80 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v60;
        do
        {
          for (n = 0; n != v46; ++n)
          {
            if (*v60 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v59 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v50 = [[USOSchemaUSOEntitySpan alloc] initWithDictionary:v49];
              [(USOSchemaUSOGraph *)v5 addSpans:v50];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v59 objects:v80 count:16];
        }

        while (v46);
      }

      v34 = v53;
    }

    v51 = v5;
  }

  return v5;
}

- (USOSchemaUSOGraph)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOGraph *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOGraph *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v76 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alignments count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v5 = self->_alignments;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v68;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v68 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v67 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"alignments"];
  }

  if ([(NSArray *)self->_edges count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v13 = self->_edges;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v63 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"edges"];
  }

  if ([(NSArray *)self->_identifiers count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v21 = self->_identifiers;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v60;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v60 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v59 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array3 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null3];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"identifiers"];
  }

  if (self->_linkId)
  {
    linkId = [(USOSchemaUSOGraph *)self linkId];
    dictionaryRepresentation4 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_nodes count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v32 = self->_nodes;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v56;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v56 != v35)
          {
            objc_enumerationMutation(v32);
          }

          dictionaryRepresentation5 = [*(*(&v55 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array4 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null5];
          }
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v34);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"nodes"];
  }

  if ([(NSArray *)self->_spans count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v40 = self->_spans;
    v41 = [(NSArray *)v40 countByEnumeratingWithState:&v51 objects:v71 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v52;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v52 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation6 = [*(*(&v51 + 1) + 8 * n) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array5 addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array5 addObject:null6];
          }
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v51 objects:v71 count:16];
      }

      while (v42);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"spans"];
  }

  if (self->_version)
  {
    version = [(USOSchemaUSOGraph *)self version];
    dictionaryRepresentation7 = [version dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"version"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"version"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v51];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaVersion *)self->_version hash];
  v4 = [(SISchemaUUID *)self->_linkId hash]^ v3;
  v5 = [(NSArray *)self->_nodes hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_edges hash];
  v7 = [(NSArray *)self->_identifiers hash];
  v8 = v7 ^ [(NSArray *)self->_alignments hash];
  return v6 ^ v8 ^ [(NSArray *)self->_spans hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  version = [(USOSchemaUSOGraph *)self version];
  version2 = [equalCopy version];
  if ((version != 0) == (version2 == 0))
  {
    goto LABEL_36;
  }

  version3 = [(USOSchemaUSOGraph *)self version];
  if (version3)
  {
    v8 = version3;
    version4 = [(USOSchemaUSOGraph *)self version];
    version5 = [equalCopy version];
    v11 = [version4 isEqual:version5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  version = [(USOSchemaUSOGraph *)self linkId];
  version2 = [equalCopy linkId];
  if ((version != 0) == (version2 == 0))
  {
    goto LABEL_36;
  }

  linkId = [(USOSchemaUSOGraph *)self linkId];
  if (linkId)
  {
    v13 = linkId;
    linkId2 = [(USOSchemaUSOGraph *)self linkId];
    linkId3 = [equalCopy linkId];
    v16 = [linkId2 isEqual:linkId3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  version = [(USOSchemaUSOGraph *)self nodes];
  version2 = [equalCopy nodes];
  if ((version != 0) == (version2 == 0))
  {
    goto LABEL_36;
  }

  nodes = [(USOSchemaUSOGraph *)self nodes];
  if (nodes)
  {
    v18 = nodes;
    nodes2 = [(USOSchemaUSOGraph *)self nodes];
    nodes3 = [equalCopy nodes];
    v21 = [nodes2 isEqual:nodes3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  version = [(USOSchemaUSOGraph *)self edges];
  version2 = [equalCopy edges];
  if ((version != 0) == (version2 == 0))
  {
    goto LABEL_36;
  }

  edges = [(USOSchemaUSOGraph *)self edges];
  if (edges)
  {
    v23 = edges;
    edges2 = [(USOSchemaUSOGraph *)self edges];
    edges3 = [equalCopy edges];
    v26 = [edges2 isEqual:edges3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  version = [(USOSchemaUSOGraph *)self identifiers];
  version2 = [equalCopy identifiers];
  if ((version != 0) == (version2 == 0))
  {
    goto LABEL_36;
  }

  identifiers = [(USOSchemaUSOGraph *)self identifiers];
  if (identifiers)
  {
    v28 = identifiers;
    identifiers2 = [(USOSchemaUSOGraph *)self identifiers];
    identifiers3 = [equalCopy identifiers];
    v31 = [identifiers2 isEqual:identifiers3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  version = [(USOSchemaUSOGraph *)self alignments];
  version2 = [equalCopy alignments];
  if ((version != 0) == (version2 == 0))
  {
    goto LABEL_36;
  }

  alignments = [(USOSchemaUSOGraph *)self alignments];
  if (alignments)
  {
    v33 = alignments;
    alignments2 = [(USOSchemaUSOGraph *)self alignments];
    alignments3 = [equalCopy alignments];
    v36 = [alignments2 isEqual:alignments3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  version = [(USOSchemaUSOGraph *)self spans];
  version2 = [equalCopy spans];
  if ((version != 0) != (version2 == 0))
  {
    spans = [(USOSchemaUSOGraph *)self spans];
    if (!spans)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = spans;
    spans2 = [(USOSchemaUSOGraph *)self spans];
    spans3 = [equalCopy spans];
    v41 = [spans2 isEqual:spans3];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)to
{
  v59 = *MEMORY[0x1E69E9840];
  toCopy = to;
  version = [(USOSchemaUSOGraph *)self version];

  if (version)
  {
    version2 = [(USOSchemaUSOGraph *)self version];
    PBDataWriterWriteSubmessage();
  }

  linkId = [(USOSchemaUSOGraph *)self linkId];

  if (linkId)
  {
    linkId2 = [(USOSchemaUSOGraph *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = self->_nodes;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v51;
    do
    {
      v13 = 0;
      do
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v11);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = self->_edges;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    do
    {
      v18 = 0;
      do
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v16);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = self->_identifiers;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      v23 = 0;
      do
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v21);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = self->_alignments;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v38 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      v28 = 0;
      do
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v38 objects:v55 count:16];
    }

    while (v26);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = self->_spans;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v54 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v35;
    do
    {
      v33 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v29);
        }

        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v54 count:16];
    }

    while (v31);
  }
}

- (void)addSpans:(id)spans
{
  spansCopy = spans;
  spans = self->_spans;
  v8 = spansCopy;
  if (!spans)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_spans;
    self->_spans = array;

    spansCopy = v8;
    spans = self->_spans;
  }

  [(NSArray *)spans addObject:spansCopy];
}

- (void)addAlignments:(id)alignments
{
  alignmentsCopy = alignments;
  alignments = self->_alignments;
  v8 = alignmentsCopy;
  if (!alignments)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alignments;
    self->_alignments = array;

    alignmentsCopy = v8;
    alignments = self->_alignments;
  }

  [(NSArray *)alignments addObject:alignmentsCopy];
}

- (void)addIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiers = self->_identifiers;
  v8 = identifiersCopy;
  if (!identifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_identifiers;
    self->_identifiers = array;

    identifiersCopy = v8;
    identifiers = self->_identifiers;
  }

  [(NSArray *)identifiers addObject:identifiersCopy];
}

- (void)addEdges:(id)edges
{
  edgesCopy = edges;
  edges = self->_edges;
  v8 = edgesCopy;
  if (!edges)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_edges;
    self->_edges = array;

    edgesCopy = v8;
    edges = self->_edges;
  }

  [(NSArray *)edges addObject:edgesCopy];
}

- (void)addNodes:(id)nodes
{
  nodesCopy = nodes;
  nodes = self->_nodes;
  v8 = nodesCopy;
  if (!nodes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_nodes;
    self->_nodes = array;

    nodesCopy = v8;
    nodes = self->_nodes;
  }

  [(NSArray *)nodes addObject:nodesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v23.receiver = self;
  v23.super_class = USOSchemaUSOGraph;
  v5 = [(SISchemaInstrumentationMessage *)&v23 applySensitiveConditionsPolicy:policyCopy];
  version = [(USOSchemaUSOGraph *)self version];
  v7 = [version applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(USOSchemaUSOGraph *)self deleteVersion];
  }

  linkId = [(USOSchemaUSOGraph *)self linkId];
  v10 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(USOSchemaUSOGraph *)self deleteLinkId];
  }

  nodes = [(USOSchemaUSOGraph *)self nodes];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:nodes underConditions:policyCopy];
  [(USOSchemaUSOGraph *)self setNodes:v13];

  edges = [(USOSchemaUSOGraph *)self edges];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:edges underConditions:policyCopy];
  [(USOSchemaUSOGraph *)self setEdges:v15];

  identifiers = [(USOSchemaUSOGraph *)self identifiers];
  v17 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:identifiers underConditions:policyCopy];
  [(USOSchemaUSOGraph *)self setIdentifiers:v17];

  alignments = [(USOSchemaUSOGraph *)self alignments];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:alignments underConditions:policyCopy];
  [(USOSchemaUSOGraph *)self setAlignments:v19];

  spans = [(USOSchemaUSOGraph *)self spans];
  v21 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:spans underConditions:policyCopy];
  [(USOSchemaUSOGraph *)self setSpans:v21];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end