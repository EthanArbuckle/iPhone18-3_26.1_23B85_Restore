@interface SIRINLUEXTERNALUsoGraph
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAlignments:(id)alignments;
- (void)addEdges:(id)edges;
- (void)addIdentifiers:(id)identifiers;
- (void)addNodes:(id)nodes;
- (void)addSpans:(id)spans;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUsoGraph

- (void)mergeFrom:(id)from
{
  v58 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  version = self->_version;
  v6 = *(fromCopy + 6);
  if (version)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALSemVer *)version mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALUsoGraph *)self setVersion:?];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALUsoGraph *)self addNodes:*(*(&v49 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = *(fromCopy + 2);
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALUsoGraph *)self addEdges:*(*(&v45 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v14);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = *(fromCopy + 3);
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SIRINLUEXTERNALUsoGraph *)self addIdentifiers:*(*(&v41 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v19);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = *(fromCopy + 1);
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v54 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(SIRINLUEXTERNALUsoGraph *)self addAlignments:*(*(&v37 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v54 count:16];
    }

    while (v24);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = *(fromCopy + 5);
  v28 = [v27 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v34;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(SIRINLUEXTERNALUsoGraph *)self addSpans:*(*(&v33 + 1) + 8 * n), v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v29);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALSemVer *)self->_version hash];
  v4 = [(NSMutableArray *)self->_nodes hash]^ v3;
  v5 = [(NSMutableArray *)self->_edges hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_identifiers hash];
  v7 = [(NSMutableArray *)self->_alignments hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_spans hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((version = self->_version, !(version | equalCopy[6])) || -[SIRINLUEXTERNALSemVer isEqual:](version, "isEqual:")) && ((nodes = self->_nodes, !(nodes | equalCopy[4])) || -[NSMutableArray isEqual:](nodes, "isEqual:")) && ((edges = self->_edges, !(edges | equalCopy[2])) || -[NSMutableArray isEqual:](edges, "isEqual:")) && ((identifiers = self->_identifiers, !(identifiers | equalCopy[3])) || -[NSMutableArray isEqual:](identifiers, "isEqual:")) && ((alignments = self->_alignments, !(alignments | equalCopy[1])) || -[NSMutableArray isEqual:](alignments, "isEqual:")))
  {
    spans = self->_spans;
    if (spans | equalCopy[5])
    {
      v11 = [(NSMutableArray *)spans isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALSemVer *)self->_version copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = self->_nodes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    do
    {
      v12 = 0;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v56 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addNodes:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v10);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = self->_edges;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      v18 = 0;
      do
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v52 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addEdges:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v16);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v20 = self->_identifiers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v49;
    do
    {
      v24 = 0;
      do
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v48 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addIdentifiers:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v22);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = self->_alignments;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      v30 = 0;
      do
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v44 + 1) + 8 * v30) copyWithZone:zone];
        [v5 addAlignments:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v28);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = self->_spans;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      v36 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v40 + 1) + 8 * v36) copyWithZone:{zone, v40}];
        [v5 addSpans:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v34);
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_version)
  {
    [toCopy setVersion:?];
  }

  if ([(SIRINLUEXTERNALUsoGraph *)self nodesCount])
  {
    [toCopy clearNodes];
    nodesCount = [(SIRINLUEXTERNALUsoGraph *)self nodesCount];
    if (nodesCount)
    {
      v5 = nodesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALUsoGraph *)self nodesAtIndex:i];
        [toCopy addNodes:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALUsoGraph *)self edgesCount])
  {
    [toCopy clearEdges];
    edgesCount = [(SIRINLUEXTERNALUsoGraph *)self edgesCount];
    if (edgesCount)
    {
      v9 = edgesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALUsoGraph *)self edgesAtIndex:j];
        [toCopy addEdges:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALUsoGraph *)self identifiersCount])
  {
    [toCopy clearIdentifiers];
    identifiersCount = [(SIRINLUEXTERNALUsoGraph *)self identifiersCount];
    if (identifiersCount)
    {
      v13 = identifiersCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALUsoGraph *)self identifiersAtIndex:k];
        [toCopy addIdentifiers:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALUsoGraph *)self alignmentsCount])
  {
    [toCopy clearAlignments];
    alignmentsCount = [(SIRINLUEXTERNALUsoGraph *)self alignmentsCount];
    if (alignmentsCount)
    {
      v17 = alignmentsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALUsoGraph *)self alignmentsAtIndex:m];
        [toCopy addAlignments:v19];
      }
    }
  }

  if ([(SIRINLUEXTERNALUsoGraph *)self spansCount])
  {
    [toCopy clearSpans];
    spansCount = [(SIRINLUEXTERNALUsoGraph *)self spansCount];
    if (spansCount)
    {
      v21 = spansCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(SIRINLUEXTERNALUsoGraph *)self spansAtIndex:n];
        [toCopy addSpans:v23];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v61 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_version)
  {
    PBDataWriterWriteSubmessage();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = self->_nodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = self->_edges;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      v15 = 0;
      do
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v48 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v13);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = self->_identifiers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      v21 = 0;
      do
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v44 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = self->_alignments;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      v27 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v25);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self->_spans;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      v33 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v36 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v56 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v68 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  version = self->_version;
  if (version)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALSemVer *)version dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_nodes count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nodes, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v7 = self->_nodes;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v60;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v60 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v59 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"nodes"];
  }

  if ([(NSMutableArray *)self->_edges count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_edges, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = self->_edges;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v55 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"edges"];
  }

  if ([(NSMutableArray *)self->_identifiers count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_identifiers, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v21 = self->_identifiers;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation4 = [*(*(&v51 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation4];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v23);
    }

    [dictionary setObject:v20 forKey:@"identifiers"];
  }

  if ([(NSMutableArray *)self->_alignments count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_alignments, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = self->_alignments;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v47 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation5 = [*(*(&v47 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation5];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v47 objects:v64 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"alignments"];
  }

  if ([(NSMutableArray *)self->_spans count])
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_spans, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = self->_spans;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v43 objects:v63 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (n = 0; n != v37; ++n)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v35);
          }

          dictionaryRepresentation6 = [*(*(&v43 + 1) + 8 * n) dictionaryRepresentation];
          [v34 addObject:dictionaryRepresentation6];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v43 objects:v63 count:16];
      }

      while (v37);
    }

    [dictionary setObject:v34 forKey:@"spans"];
  }

  v41 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoGraph;
  v4 = [(SIRINLUEXTERNALUsoGraph *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUsoGraph *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addSpans:(id)spans
{
  spansCopy = spans;
  spans = self->_spans;
  v8 = spansCopy;
  if (!spans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_spans;
    self->_spans = v6;

    spansCopy = v8;
    spans = self->_spans;
  }

  [(NSMutableArray *)spans addObject:spansCopy];
}

- (void)addAlignments:(id)alignments
{
  alignmentsCopy = alignments;
  alignments = self->_alignments;
  v8 = alignmentsCopy;
  if (!alignments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_alignments;
    self->_alignments = v6;

    alignmentsCopy = v8;
    alignments = self->_alignments;
  }

  [(NSMutableArray *)alignments addObject:alignmentsCopy];
}

- (void)addIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiers = self->_identifiers;
  v8 = identifiersCopy;
  if (!identifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_identifiers;
    self->_identifiers = v6;

    identifiersCopy = v8;
    identifiers = self->_identifiers;
  }

  [(NSMutableArray *)identifiers addObject:identifiersCopy];
}

- (void)addEdges:(id)edges
{
  edgesCopy = edges;
  edges = self->_edges;
  v8 = edgesCopy;
  if (!edges)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_edges;
    self->_edges = v6;

    edgesCopy = v8;
    edges = self->_edges;
  }

  [(NSMutableArray *)edges addObject:edgesCopy];
}

- (void)addNodes:(id)nodes
{
  nodesCopy = nodes;
  nodes = self->_nodes;
  v8 = nodesCopy;
  if (!nodes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nodes;
    self->_nodes = v6;

    nodesCopy = v8;
    nodes = self->_nodes;
  }

  [(NSMutableArray *)nodes addObject:nodesCopy];
}

@end