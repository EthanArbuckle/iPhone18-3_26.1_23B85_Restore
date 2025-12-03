@interface RBSEndowmentTree
+ (id)endowmentTreeForLinks:(id)links;
+ (id)endowmentTreeForNamespace:(id)namespace;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSEndowmentTree)initWithRBSXPCCoder:(id)coder;
- (id)childrenLinks:(id)links;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addLink:(uint64_t)link;
- (void)_initWithLinks:(void *)links;
- (void)_initWithNamespace:(void *)namespace;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSEndowmentTree

+ (id)endowmentTreeForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v4 = [[RBSEndowmentTree alloc] _initWithNamespace:namespaceCopy];

  return v4;
}

+ (id)endowmentTreeForLinks:(id)links
{
  linksCopy = links;
  v4 = [[RBSEndowmentTree alloc] _initWithLinks:linksCopy];

  return v4;
}

- (id)childrenLinks:(id)links
{
  linksCopy = links;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  tree = self->_tree;
  targetEnvironment = [linksCopy targetEnvironment];
  v8 = [(NSMutableDictionary *)tree objectForKey:targetEnvironment];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34__RBSEndowmentTree_childrenLinks___block_invoke;
  v14[3] = &unk_1E7276388;
  v15 = linksCopy;
  v9 = v5;
  v16 = v9;
  v10 = linksCopy;
  [v8 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __34__RBSEndowmentTree_childrenLinks___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [*(a1 + 32) targetPid];
    if (v3 == [v4 sourcePid])
    {
      [*(a1 + 40) addObject:v4];
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_12;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
LABEL_3:
    v6 = 0;
    goto LABEL_13;
  }

  endowmentNamespace = self->_endowmentNamespace;
  v8 = equalCopy->_endowmentNamespace;
  if (endowmentNamespace != v8)
  {
    v6 = 0;
    if (!endowmentNamespace || !v8)
    {
      goto LABEL_13;
    }

    if (![(NSString *)endowmentNamespace isEqual:?])
    {
      goto LABEL_3;
    }
  }

  tree = self->_tree;
  v10 = equalCopy->_tree;
  if (tree == v10)
  {
LABEL_12:
    v6 = 1;
    goto LABEL_13;
  }

  v6 = 0;
  if (tree && v10)
  {
    v6 = [(NSMutableDictionary *)tree isEqual:?];
  }

LABEL_13:

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| namespace:%@>", v4, self->_endowmentNamespace];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RBSEndowmentTree);
  objc_storeStrong(&v4->_tree, self->_tree);
  objc_storeStrong(&v4->_endowmentNamespace, self->_endowmentNamespace);
  return v4;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  tree = self->_tree;
  coderCopy = coder;
  [coderCopy encodeObject:tree forKey:@"_tree"];
  [coderCopy encodeObject:self->_endowmentNamespace forKey:@"_endowmentNamespace"];
}

- (RBSEndowmentTree)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RBSEndowmentTree;
  v5 = [(RBSEndowmentTree *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tree"];
    tree = v5->_tree;
    v5->_tree = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endowmentNamespace"];
    endowmentNamespace = v5->_endowmentNamespace;
    v5->_endowmentNamespace = v8;
  }

  return v5;
}

- (void)_initWithNamespace:(void *)namespace
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (namespace)
  {
    v71.receiver = namespace;
    v71.super_class = RBSEndowmentTree;
    v5 = objc_msgSendSuper2(&v71, sel_init);
    v6 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = v6[1];
      v6[1] = v7;

      v9 = +[RBSConnection sharedInstance];
      v10 = [v9 assertionDescriptorsByPidWithFlattenedAttributes:0 error:0];

      if (v10)
      {
        v52 = v6;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v11 = v10;
        v44 = [v11 countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (!v44)
        {
          goto LABEL_36;
        }

        v42 = *v68;
        v43 = v11;
        v58 = v4;
        while (1)
        {
          v12 = 0;
          do
          {
            if (*v68 != v42)
            {
              objc_enumerationMutation(v11);
            }

            v45 = v12;
            v13 = [v11 objectForKeyedSubscript:{*(*(&v67 + 1) + 8 * v12), v42}];
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            obj = v13;
            v14 = 0x1E7275000uLL;
            v48 = [v13 countByEnumeratingWithState:&v63 objects:v73 count:16];
            if (v48)
            {
              v47 = *v64;
              do
              {
                v15 = 0;
                do
                {
                  if (*v64 != v47)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v49 = v15;
                  v16 = *(*(&v63 + 1) + 8 * v15);
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v62 = 0u;
                  v53 = v16;
                  attributes = [v16 attributes];
                  v18 = [attributes countByEnumeratingWithState:&v59 objects:v72 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v60;
                    do
                    {
                      v21 = 0;
                      do
                      {
                        if (*v60 != v20)
                        {
                          objc_enumerationMutation(attributes);
                        }

                        v22 = *(*(&v59 + 1) + 8 * v21);
                        v23 = *(v14 + 2592);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v24 = v22;
                          endowmentNamespace = [v24 endowmentNamespace];
                          v26 = [endowmentNamespace isEqual:v4];

                          if (v26)
                          {
                            sourceEnvironment = [v24 sourceEnvironment];
                            if (!sourceEnvironment)
                            {
                              sourceEnvironment = [RBSEndowmentRootEnvironment copy];
                            }

                            identifier = [v53 identifier];
                            clientPid = [identifier clientPid];
                            target = [v53 target];
                            environment = [target environment];
                            target2 = [v53 target];
                            processIdentifier = [target2 processIdentifier];
                            v32 = +[RBSEndowmentLink endowmentLinkForNamespace:sourceEnvironment:sourcePid:targetEnvironment:targetPid:](RBSEndowmentLink, "endowmentLinkForNamespace:sourceEnvironment:sourcePid:targetEnvironment:targetPid:", v58, sourceEnvironment, clientPid, environment, [processIdentifier pid]);

                            v33 = sourceEnvironment;
                            [(RBSEndowmentTree *)v52 _addLink:v32];

                            goto LABEL_30;
                          }
                        }

                        else
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            goto LABEL_27;
                          }

                          endowmentNamespace2 = [v22 endowmentNamespace];
                          v35 = [endowmentNamespace2 isEqual:v4];

                          v14 = 0x1E7275000;
                          if (v35)
                          {
                            v51 = [RBSEndowmentRootEnvironment copy];
                            identifier2 = [v53 identifier];
                            clientPid2 = [identifier2 clientPid];
                            target3 = [v53 target];
                            environment2 = [target3 environment];
                            target4 = [v53 target];
                            processIdentifier2 = [target4 processIdentifier];
                            v33 = +[RBSEndowmentLink endowmentLinkForNamespace:sourceEnvironment:sourcePid:targetEnvironment:targetPid:](RBSEndowmentLink, "endowmentLinkForNamespace:sourceEnvironment:sourcePid:targetEnvironment:targetPid:", v4, v51, clientPid2, environment2, [processIdentifier2 pid]);

                            [(RBSEndowmentTree *)v52 _addLink:v33];
LABEL_30:

                            v4 = v58;
                            v14 = 0x1E7275000;
                          }
                        }

LABEL_27:
                        ++v21;
                      }

                      while (v19 != v21);
                      v39 = [attributes countByEnumeratingWithState:&v59 objects:v72 count:16];
                      v19 = v39;
                    }

                    while (v39);
                  }

                  v15 = v49 + 1;
                }

                while (v49 + 1 != v48);
                v48 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
              }

              while (v48);
            }

            v12 = v45 + 1;
            v11 = v43;
          }

          while (v45 + 1 != v44);
          v44 = [v43 countByEnumeratingWithState:&v67 objects:v74 count:16];
          if (!v44)
          {
LABEL_36:

            v6 = v52;
            goto LABEL_38;
          }
        }
      }

      v11 = v6;
      v6 = 0;
LABEL_38:
    }
  }

  else
  {
    v6 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_initWithLinks:(void *)links
{
  v3 = a2;
  if (links)
  {
    v12.receiver = links;
    v12.super_class = RBSEndowmentTree;
    links = objc_msgSendSuper2(&v12, sel_init);
    if (links)
    {
      anyObject = [v3 anyObject];
      endowmentNamespace = [anyObject endowmentNamespace];
      v6 = links[2];
      links[2] = endowmentNamespace;

      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = links[1];
      links[1] = v7;

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __35__RBSEndowmentTree__initWithLinks___block_invoke;
      v10[3] = &unk_1E7276360;
      links = links;
      linksCopy = links;
      [v3 enumerateObjectsUsingBlock:v10];
    }
  }

  return links;
}

- (void)_addLink:(uint64_t)link
{
  v8 = a2;
  if (link)
  {
    v3 = *(link + 8);
    sourceEnvironment = [v8 sourceEnvironment];
    v5 = [v3 objectForKey:sourceEnvironment];

    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = *(link + 8);
      sourceEnvironment2 = [v8 sourceEnvironment];
      [v6 setObject:v5 forKey:sourceEnvironment2];
    }

    [v5 addObject:v8];
  }
}

@end