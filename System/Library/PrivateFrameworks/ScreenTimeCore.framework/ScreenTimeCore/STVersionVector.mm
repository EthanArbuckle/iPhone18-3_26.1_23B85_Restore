@interface STVersionVector
- (NSArray)nodes;
- (NSData)dataRepresentation;
- (STVersionVector)init;
- (STVersionVector)initWithDataRepresentation:(id)representation;
- (STVersionVector)initWithNode:(id)node;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)evaluateCausality:(id)causality;
- (void)dataRepresentation;
- (void)incrementNodeWithIdentifier:(id)identifier;
- (void)join:(id)join;
@end

@implementation STVersionVector

- (STVersionVector)init
{
  v6.receiver = self;
  v6.super_class = STVersionVector;
  v2 = [(STVersionVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    nodeByIdentifier = v2->_nodeByIdentifier;
    v2->_nodeByIdentifier = v3;
  }

  return v2;
}

- (STVersionVector)initWithNode:(id)node
{
  nodeCopy = node;
  v5 = [(STVersionVector *)self init];
  if (v5)
  {
    identifier = [nodeCopy identifier];
    editorIdentifier = v5->_editorIdentifier;
    v5->_editorIdentifier = identifier;

    [(NSMutableDictionary *)v5->_nodeByIdentifier setObject:nodeCopy forKeyedSubscript:v5->_editorIdentifier];
  }

  return v5;
}

- (STVersionVector)initWithDataRepresentation:(id)representation
{
  v34 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [(STVersionVector *)self init];
  v6 = v5;
  if (representationCopy && v5)
  {
    v32 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:representationCopy options:0 error:&v32];
    v8 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = [v9 objectForKeyedSubscript:@"e"];
      v11 = [v9 objectForKeyedSubscript:@"n"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v9;
          v26 = v8;
          v27 = v7;
          v24 = v10;
          [(STVersionVector *)v6 setEditorIdentifier:v10];
          v12 = v6->_nodeByIdentifier;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v29;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v28 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = [[STVersionVectorNode alloc] initWithDictionaryRepresentation:v18];
                  identifier = [(STVersionVectorNode *)v19 identifier];
                  [(NSMutableDictionary *)v12 setObject:v19 forKeyedSubscript:identifier];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
            }

            while (v15);
          }

          v7 = v27;
          v21 = v25;
          v8 = v26;
LABEL_19:

          goto LABEL_20;
        }
      }
    }

    v21 = +[STLog versionVector];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(STVersionVector *)v7 initWithDataRepresentation:v8, v21];
    }

    goto LABEL_19;
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSData)dataRepresentation
{
  v18[2] = *MEMORY[0x1E69E9840];
  nodes = [(STVersionVector *)self nodes];
  v4 = [nodes valueForKeyPath:@"dictionaryRepresentation"];

  v17[0] = @"e";
  editorIdentifier = [(STVersionVector *)self editorIdentifier];
  v6 = editorIdentifier;
  v7 = &stru_1F3040980;
  if (editorIdentifier)
  {
    v7 = editorIdentifier;
  }

  v17[1] = @"n";
  v18[0] = v7;
  v18[1] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v16 = 0;
  v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:0 error:&v16];
  v10 = v16;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = +[STLog versionVector];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(STVersionVector *)v10 dataRepresentation];
    }

    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (NSArray)nodes
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  nodeByIdentifier = [(STVersionVector *)self nodeByIdentifier];
  allValues = [nodeByIdentifier allValues];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [allValues sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unint64_t)evaluateCausality:(id)causality
{
  v42 = *MEMORY[0x1E69E9840];
  causalityCopy = causality;
  v5 = objc_opt_new();
  nodeByIdentifier = [(STVersionVector *)self nodeByIdentifier];
  allKeys = [nodeByIdentifier allKeys];
  [v5 addObjectsFromArray:allKeys];

  v36 = causalityCopy;
  nodeByIdentifier2 = [causalityCopy nodeByIdentifier];
  allKeys2 = [nodeByIdentifier2 allKeys];
  [v5 addObjectsFromArray:allKeys2];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v38;
    obj = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        nodeByIdentifier3 = [(STVersionVector *)self nodeByIdentifier];
        v19 = [nodeByIdentifier3 objectForKeyedSubscript:v17];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = [[STVersionVectorNode alloc] initWithIdentifier:v17];
        }

        v22 = v21;

        nodeByIdentifier4 = [v36 nodeByIdentifier];
        v24 = [nodeByIdentifier4 objectForKeyedSubscript:v17];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = [[STVersionVectorNode alloc] initWithIdentifier:v17];
        }

        v27 = v26;

        v28 = [(STVersionVectorNode *)v22 count];
        if (v28 >= [(STVersionVectorNode *)v27 count])
        {
          v29 = [(STVersionVectorNode *)v22 count];
          if (v29 > [(STVersionVectorNode *)v27 count])
          {
            ++v13;
          }
        }

        else
        {
          ++v14;
        }
      }

      v10 = obj;
      v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v12);

    v30 = v13 == 0;
    if (v14 && !v13)
    {
      v31 = 0;
      goto LABEL_28;
    }

    v32 = v14 == 0;
    if (v13 && !v14)
    {
      v31 = 1;
      goto LABEL_28;
    }
  }

  else
  {

    v32 = 1;
    v30 = 1;
  }

  if (v30 && v32)
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

LABEL_28:

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)incrementNodeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  [(STVersionVector *)self setEditorIdentifier:v4];

  nodeByIdentifier = [(STVersionVector *)self nodeByIdentifier];
  v6 = [nodeByIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    v6 = [[STVersionVectorNode alloc] initWithIdentifier:identifierCopy];
    nodeByIdentifier2 = [(STVersionVector *)self nodeByIdentifier];
    [nodeByIdentifier2 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  [(STVersionVectorNode *)v6 increment];
}

- (void)join:(id)join
{
  v28 = *MEMORY[0x1E69E9840];
  joinCopy = join;
  editorIdentifier = [joinCopy editorIdentifier];
  [(STVersionVector *)self setEditorIdentifier:editorIdentifier];

  v6 = objc_opt_new();
  nodeByIdentifier = [(STVersionVector *)self nodeByIdentifier];
  allKeys = [nodeByIdentifier allKeys];
  [v6 addObjectsFromArray:allKeys];

  nodeByIdentifier2 = [joinCopy nodeByIdentifier];
  allKeys2 = [nodeByIdentifier2 allKeys];
  [v6 addObjectsFromArray:allKeys2];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        nodeByIdentifier3 = [(STVersionVector *)self nodeByIdentifier];
        v18 = [nodeByIdentifier3 objectForKeyedSubscript:v16];

        if (!v18)
        {
          v18 = [[STVersionVectorNode alloc] initWithIdentifier:v16];
          nodeByIdentifier4 = [(STVersionVector *)self nodeByIdentifier];
          [nodeByIdentifier4 setObject:v18 forKeyedSubscript:v16];
        }

        nodeByIdentifier5 = [joinCopy nodeByIdentifier];
        v21 = [nodeByIdentifier5 objectForKeyedSubscript:v16];

        if (v21)
        {
          [(STVersionVectorNode *)v18 join:v21];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  nodes = [(STVersionVector *)self nodes];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [nodes sortedArrayUsingDescriptors:v5];

  v7 = [v6 description];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)debugDescription
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  nodes = [(STVersionVector *)self nodes];
  v13[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v6 = [nodes sortedArrayUsingDescriptors:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  editorIdentifier = [(STVersionVector *)self editorIdentifier];
  v10 = [v7 stringWithFormat:@"<%@: %p { editorIdentifier = %@, nodes = %@ }>", v8, self, editorIdentifier, v6];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  nodeByIdentifier = [v4 nodeByIdentifier];
  nodeByIdentifier2 = [(STVersionVector *)self nodeByIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__STVersionVector_copyWithZone___block_invoke;
  v9[3] = &unk_1E7CE8060;
  v10 = nodeByIdentifier;
  v7 = nodeByIdentifier;
  [nodeByIdentifier2 enumerateKeysAndObjectsUsingBlock:v9];

  return v4;
}

void __32__STVersionVector_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)initWithDataRepresentation:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Malformed version vector: %{public}@ %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)dataRepresentation
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "Failed to serialize version vector: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end