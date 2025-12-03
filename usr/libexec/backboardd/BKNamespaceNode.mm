@interface BKNamespaceNode
- (BKNamespaceNode)init;
- (BOOL)isEqual:(id)equal;
- (id)_enumerateKeyPathNodesByComponent:(id)component options:(int64_t)options ifFound:(id)found ifMissing:(id)missing;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)enumerateKeyPathNodes:(id)nodes options:(int64_t)options ifFound:(id)found ifMissing:(id)missing;
- (id)objectAtKeyPath:(id)path;
- (id)setObject:(id)object atKeyPath:(id)path;
- (id)succinctDescription;
- (void)_dumpNodeTree:(id)tree level:(int64_t)level;
- (void)_enumerateNodesWithOptions:(int64_t)options usingBlock:(id)block;
- (void)removeNodeAtKeyPath:(id)path;
@end

@implementation BKNamespaceNode

- (void)_dumpNodeTree:(id)tree level:(int64_t)level
{
  treeCopy = tree;
  v7 = sub_1000525A0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (level <= 16)
    {
      v8 = 2 * level;
    }

    else
    {
      v8 = 32;
    }

    name = [(BKNamespaceNode *)self name];
    object = [(BKNamespaceNode *)self object];
    *buf = 68158722;
    v24 = v8;
    v25 = 2080;
    v26 = "                                ";
    v27 = 2048;
    selfCopy = self;
    v29 = 2114;
    v30 = name;
    v31 = 2114;
    v32 = object;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s%p %{public}@ %{public}@", buf, 0x30u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = treeCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        subnodes = [v16 subnodes];
        [v16 _dumpNodeTree:subnodes level:level + 1];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)_enumerateKeyPathNodesByComponent:(id)component options:(int64_t)options ifFound:(id)found ifMissing:(id)missing
{
  optionsCopy = options;
  componentCopy = component;
  foundCopy = found;
  missingCopy = missing;
  subnodes2 = self->_subnodes;
  selfCopy = self;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = componentCopy;
  v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  v34 = missingCopy;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v37;
    v18 = foundCopy;
    v32 = foundCopy;
    while (2)
    {
      v19 = 0;
      v20 = selfCopy;
      selfCopy = v16;
      v21 = subnodes2;
      do
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v36 + 1) + 8 * v19);

        v23 = [(NSMutableOrderedSet *)v21 set];
        v24 = [v23 member:v22];
        v25 = v24;
        if (v24)
        {
          if (v18)
          {
            if ((optionsCopy & 1) == 0 || ([v24 object], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
            {
              (v18)[2](v18, v25, v20);
            }
          }

          v27 = v25;
        }

        else
        {
          if (!v34 || ([(NSMutableOrderedSet *)v21 lastObject], v28 = objc_claimAutoreleasedReturnValue(), (v34)[2](v34, v22, v20, v22 == v28), v27 = objc_claimAutoreleasedReturnValue(), v28, !v27))
          {

            v30 = 0;
            selfCopy = v20;
            subnodes2 = v21;
            v18 = v32;
            goto LABEL_20;
          }

          subnodes = [(BKNamespaceNode *)v20 subnodes];
          [subnodes addObject:v27];

          v18 = v32;
        }

        selfCopy = v27;

        subnodes2 = [(BKNamespaceNode *)selfCopy subnodes];

        v19 = v19 + 1;
        v20 = selfCopy;
        v21 = subnodes2;
      }

      while (v15 != v19);
      v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      v16 = selfCopy;
      v30 = selfCopy;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 0;
    v18 = foundCopy;
  }

LABEL_20:

  return v30;
}

- (void)_enumerateNodesWithOptions:(int64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if ((options & 2) != 0)
  {
    if (((options & 1) == 0 || self->_object) && (*(blockCopy + 2))(blockCopy, self))
    {
      goto LABEL_14;
    }
  }

  else
  {
    options |= 2uLL;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_subnodes;
  v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) _enumerateNodesWithOptions:options usingBlock:{v7, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

LABEL_14:
}

- (id)enumerateKeyPathNodes:(id)nodes options:(int64_t)options ifFound:(id)found ifMissing:(id)missing
{
  missingCopy = missing;
  foundCopy = found;
  v12 = [nodes componentsSeparatedByString:@"."];
  v13 = [(BKNamespaceNode *)self _enumerateKeyPathNodesByComponent:v12 options:options ifFound:foundCopy ifMissing:missingCopy];

  return v13;
}

- (id)setObject:(id)object atKeyPath:(id)path
{
  objectCopy = object;
  v7 = [(BKNamespaceNode *)self enumerateKeyPathNodes:path options:0 ifFound:0 ifMissing:&stru_1000FD3B8];
  [v7 setObject:objectCopy];

  return v7;
}

- (id)objectAtKeyPath:(id)path
{
  v3 = [(BKNamespaceNode *)self nodeAtKeyPath:path];
  object = [v3 object];

  return object;
}

- (void)removeNodeAtKeyPath:(id)path
{
  pathCopy = path;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10009FA64;
  v13 = sub_10009FA74;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009FA7C;
  v8[3] = &unk_1000FD378;
  v8[4] = &v9;
  v5 = [(BKNamespaceNode *)self enumerateKeyPathNodes:pathCopy options:0 ifFound:v8 ifMissing:0];
  if (v5)
  {
    v6 = v10[5];
    if (v6)
    {
      subnodes = [v6 subnodes];
      [subnodes removeObject:v5];
    }
  }

  _Block_object_dispose(&v9, 8);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSString *)self->_name isEqual:equalCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (name = self->_name, [equalCopy name], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(name) = -[NSString isEqual:](name, "isEqual:", v7), v7, name))
    {
      object = self->_object;
      object = [equalCopy object];
      v5 = [object isEqual:object];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKNamespaceNode *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_name withName:@"name"];
  if (self->_object)
  {
    v6 = objc_opt_respondsToSelector();
    object = self->_object;
    if (v6)
    {
      [object succinctDescription];
    }

    else
    {
      [object description];
    }
    v8 = ;
    v9 = [succinctDescriptionBuilder appendObject:v8 withName:@"object"];
  }

  array = [(NSMutableOrderedSet *)self->_subnodes array];
  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  [succinctDescriptionBuilder appendArraySection:array withName:@"subnodes" multilinePrefix:activeMultilinePrefix skipIfEmpty:1 objectTransformer:&stru_1000FD350];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKNamespaceNode *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKNamespaceNode *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BKNamespaceNode)init
{
  v6.receiver = self;
  v6.super_class = BKNamespaceNode;
  v2 = [(BKNamespaceNode *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    subnodes = v2->_subnodes;
    v2->_subnodes = v3;
  }

  return v2;
}

@end