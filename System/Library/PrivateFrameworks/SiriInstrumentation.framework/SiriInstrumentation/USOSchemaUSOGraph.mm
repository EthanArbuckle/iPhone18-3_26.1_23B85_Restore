@interface USOSchemaUSOGraph
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOGraph)initWithDictionary:(id)a3;
- (USOSchemaUSOGraph)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAlignments:(id)a3;
- (void)addEdges:(id)a3;
- (void)addIdentifiers:(id)a3;
- (void)addNodes:(id)a3;
- (void)addSpans:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOGraph

- (USOSchemaUSOGraph)initWithDictionary:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v79.receiver = self;
  v79.super_class = USOSchemaUSOGraph;
  v5 = [(USOSchemaUSOGraph *)&v79 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaVersion alloc] initWithDictionary:v6];
      [(USOSchemaUSOGraph *)v5 setVersion:v7];
    }

    v55 = v6;
    v8 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(USOSchemaUSOGraph *)v5 setLinkId:v9];
    }

    v54 = v8;
    v10 = [v4 objectForKeyedSubscript:@"nodes"];
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

    v18 = [v4 objectForKeyedSubscript:@"edges"];
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

    v26 = [v4 objectForKeyedSubscript:@"identifiers"];
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

    v34 = [v4 objectForKeyedSubscript:@"alignments"];
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

    v43 = [v4 objectForKeyedSubscript:@"spans"];
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

- (USOSchemaUSOGraph)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOGraph *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOGraph *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alignments count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v67 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alignments"];
  }

  if ([(NSArray *)self->_edges count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v63 + 1) + 8 * j) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"edges"];
  }

  if ([(NSArray *)self->_identifiers count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
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

          v26 = [*(*(&v59 + 1) + 8 * k) dictionaryRepresentation];
          if (v26)
          {
            [v20 addObject:v26];
          }

          else
          {
            v27 = [MEMORY[0x1E695DFB0] null];
            [v20 addObject:v27];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"identifiers"];
  }

  if (self->_linkId)
  {
    v28 = [(USOSchemaUSOGraph *)self linkId];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_nodes count])
  {
    v31 = [MEMORY[0x1E695DF70] array];
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

          v37 = [*(*(&v55 + 1) + 8 * m) dictionaryRepresentation];
          if (v37)
          {
            [v31 addObject:v37];
          }

          else
          {
            v38 = [MEMORY[0x1E695DFB0] null];
            [v31 addObject:v38];
          }
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKeyedSubscript:@"nodes"];
  }

  if ([(NSArray *)self->_spans count])
  {
    v39 = [MEMORY[0x1E695DF70] array];
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

          v45 = [*(*(&v51 + 1) + 8 * n) dictionaryRepresentation];
          if (v45)
          {
            [v39 addObject:v45];
          }

          else
          {
            v46 = [MEMORY[0x1E695DFB0] null];
            [v39 addObject:v46];
          }
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v51 objects:v71 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKeyedSubscript:@"spans"];
  }

  if (self->_version)
  {
    v47 = [(USOSchemaUSOGraph *)self version];
    v48 = [v47 dictionaryRepresentation];
    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"version"];
    }

    else
    {
      v49 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v49 forKeyedSubscript:@"version"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v51];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(USOSchemaUSOGraph *)self version];
  v6 = [v4 version];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(USOSchemaUSOGraph *)self version];
  if (v7)
  {
    v8 = v7;
    v9 = [(USOSchemaUSOGraph *)self version];
    v10 = [v4 version];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraph *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(USOSchemaUSOGraph *)self linkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(USOSchemaUSOGraph *)self linkId];
    v15 = [v4 linkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraph *)self nodes];
  v6 = [v4 nodes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(USOSchemaUSOGraph *)self nodes];
  if (v17)
  {
    v18 = v17;
    v19 = [(USOSchemaUSOGraph *)self nodes];
    v20 = [v4 nodes];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraph *)self edges];
  v6 = [v4 edges];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(USOSchemaUSOGraph *)self edges];
  if (v22)
  {
    v23 = v22;
    v24 = [(USOSchemaUSOGraph *)self edges];
    v25 = [v4 edges];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraph *)self identifiers];
  v6 = [v4 identifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(USOSchemaUSOGraph *)self identifiers];
  if (v27)
  {
    v28 = v27;
    v29 = [(USOSchemaUSOGraph *)self identifiers];
    v30 = [v4 identifiers];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraph *)self alignments];
  v6 = [v4 alignments];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(USOSchemaUSOGraph *)self alignments];
  if (v32)
  {
    v33 = v32;
    v34 = [(USOSchemaUSOGraph *)self alignments];
    v35 = [v4 alignments];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraph *)self spans];
  v6 = [v4 spans];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(USOSchemaUSOGraph *)self spans];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(USOSchemaUSOGraph *)self spans];
    v40 = [v4 spans];
    v41 = [v39 isEqual:v40];

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

- (void)writeTo:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(USOSchemaUSOGraph *)self version];

  if (v5)
  {
    v6 = [(USOSchemaUSOGraph *)self version];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(USOSchemaUSOGraph *)self linkId];

  if (v7)
  {
    v8 = [(USOSchemaUSOGraph *)self linkId];
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

- (void)addSpans:(id)a3
{
  v4 = a3;
  spans = self->_spans;
  v8 = v4;
  if (!spans)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_spans;
    self->_spans = v6;

    v4 = v8;
    spans = self->_spans;
  }

  [(NSArray *)spans addObject:v4];
}

- (void)addAlignments:(id)a3
{
  v4 = a3;
  alignments = self->_alignments;
  v8 = v4;
  if (!alignments)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alignments;
    self->_alignments = v6;

    v4 = v8;
    alignments = self->_alignments;
  }

  [(NSArray *)alignments addObject:v4];
}

- (void)addIdentifiers:(id)a3
{
  v4 = a3;
  identifiers = self->_identifiers;
  v8 = v4;
  if (!identifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_identifiers;
    self->_identifiers = v6;

    v4 = v8;
    identifiers = self->_identifiers;
  }

  [(NSArray *)identifiers addObject:v4];
}

- (void)addEdges:(id)a3
{
  v4 = a3;
  edges = self->_edges;
  v8 = v4;
  if (!edges)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_edges;
    self->_edges = v6;

    v4 = v8;
    edges = self->_edges;
  }

  [(NSArray *)edges addObject:v4];
}

- (void)addNodes:(id)a3
{
  v4 = a3;
  nodes = self->_nodes;
  v8 = v4;
  if (!nodes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_nodes;
    self->_nodes = v6;

    v4 = v8;
    nodes = self->_nodes;
  }

  [(NSArray *)nodes addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = USOSchemaUSOGraph;
  v5 = [(SISchemaInstrumentationMessage *)&v23 applySensitiveConditionsPolicy:v4];
  v6 = [(USOSchemaUSOGraph *)self version];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(USOSchemaUSOGraph *)self deleteVersion];
  }

  v9 = [(USOSchemaUSOGraph *)self linkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(USOSchemaUSOGraph *)self deleteLinkId];
  }

  v12 = [(USOSchemaUSOGraph *)self nodes];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(USOSchemaUSOGraph *)self setNodes:v13];

  v14 = [(USOSchemaUSOGraph *)self edges];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v14 underConditions:v4];
  [(USOSchemaUSOGraph *)self setEdges:v15];

  v16 = [(USOSchemaUSOGraph *)self identifiers];
  v17 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v16 underConditions:v4];
  [(USOSchemaUSOGraph *)self setIdentifiers:v17];

  v18 = [(USOSchemaUSOGraph *)self alignments];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v18 underConditions:v4];
  [(USOSchemaUSOGraph *)self setAlignments:v19];

  v20 = [(USOSchemaUSOGraph *)self spans];
  v21 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v20 underConditions:v4];
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