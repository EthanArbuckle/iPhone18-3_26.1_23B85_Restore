@interface BKNamespaceNode
- (BKNamespaceNode)init;
- (BOOL)isEqual:(id)a3;
- (id)_enumerateKeyPathNodesByComponent:(id)a3 options:(int64_t)a4 ifFound:(id)a5 ifMissing:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)enumerateKeyPathNodes:(id)a3 options:(int64_t)a4 ifFound:(id)a5 ifMissing:(id)a6;
- (id)objectAtKeyPath:(id)a3;
- (id)setObject:(id)a3 atKeyPath:(id)a4;
- (id)succinctDescription;
- (void)_dumpNodeTree:(id)a3 level:(int64_t)a4;
- (void)_enumerateNodesWithOptions:(int64_t)a3 usingBlock:(id)a4;
- (void)removeNodeAtKeyPath:(id)a3;
@end

@implementation BKNamespaceNode

- (void)_dumpNodeTree:(id)a3 level:(int64_t)a4
{
  v6 = a3;
  v7 = sub_1000525A0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 16)
    {
      v8 = 2 * a4;
    }

    else
    {
      v8 = 32;
    }

    v9 = [(BKNamespaceNode *)self name];
    v10 = [(BKNamespaceNode *)self object];
    *buf = 68158722;
    v24 = v8;
    v25 = 2080;
    v26 = "                                ";
    v27 = 2048;
    v28 = self;
    v29 = 2114;
    v30 = v9;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s%p %{public}@ %{public}@", buf, 0x30u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v6;
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
        v17 = [v16 subnodes];
        [v16 _dumpNodeTree:v17 level:a4 + 1];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)_enumerateKeyPathNodesByComponent:(id)a3 options:(int64_t)a4 ifFound:(id)a5 ifMissing:(id)a6
{
  v33 = a4;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = self->_subnodes;
  v13 = self;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  v34 = v11;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v37;
    v18 = v10;
    v32 = v10;
    while (2)
    {
      v19 = 0;
      v20 = v13;
      v13 = v16;
      v21 = v12;
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
            if ((v33 & 1) == 0 || ([v24 object], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
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
            v13 = v20;
            v12 = v21;
            v18 = v32;
            goto LABEL_20;
          }

          v29 = [(BKNamespaceNode *)v20 subnodes];
          [v29 addObject:v27];

          v18 = v32;
        }

        v13 = v27;

        v12 = [(BKNamespaceNode *)v13 subnodes];

        v19 = v19 + 1;
        v20 = v13;
        v21 = v12;
      }

      while (v15 != v19);
      v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      v16 = v13;
      v30 = v13;
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
    v18 = v10;
  }

LABEL_20:

  return v30;
}

- (void)_enumerateNodesWithOptions:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((a3 & 2) != 0)
  {
    if (((a3 & 1) == 0 || self->_object) && (*(v6 + 2))(v6, self))
    {
      goto LABEL_14;
    }
  }

  else
  {
    a3 |= 2uLL;
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

        [*(*(&v13 + 1) + 8 * v12) _enumerateNodesWithOptions:a3 usingBlock:{v7, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

LABEL_14:
}

- (id)enumerateKeyPathNodes:(id)a3 options:(int64_t)a4 ifFound:(id)a5 ifMissing:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [a3 componentsSeparatedByString:@"."];
  v13 = [(BKNamespaceNode *)self _enumerateKeyPathNodesByComponent:v12 options:a4 ifFound:v11 ifMissing:v10];

  return v13;
}

- (id)setObject:(id)a3 atKeyPath:(id)a4
{
  v6 = a3;
  v7 = [(BKNamespaceNode *)self enumerateKeyPathNodes:a4 options:0 ifFound:0 ifMissing:&stru_1000FD3B8];
  [v7 setObject:v6];

  return v7;
}

- (id)objectAtKeyPath:(id)a3
{
  v3 = [(BKNamespaceNode *)self nodeAtKeyPath:a3];
  v4 = [v3 object];

  return v4;
}

- (void)removeNodeAtKeyPath:(id)a3
{
  v4 = a3;
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
  v5 = [(BKNamespaceNode *)self enumerateKeyPathNodes:v4 options:0 ifFound:v8 ifMissing:0];
  if (v5)
  {
    v6 = v10[5];
    if (v6)
    {
      v7 = [v6 subnodes];
      [v7 removeObject:v5];
    }
  }

  _Block_object_dispose(&v9, 8);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSString *)self->_name isEqual:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (name = self->_name, [v4 name], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(name) = -[NSString isEqual:](name, "isEqual:", v7), v7, name))
    {
      object = self->_object;
      v9 = [v4 object];
      v5 = [object isEqual:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKNamespaceNode *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_name withName:@"name"];
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
    v9 = [v4 appendObject:v8 withName:@"object"];
  }

  v10 = [(NSMutableOrderedSet *)self->_subnodes array];
  v11 = [v4 activeMultilinePrefix];
  [v4 appendArraySection:v10 withName:@"subnodes" multilinePrefix:v11 skipIfEmpty:1 objectTransformer:&stru_1000FD350];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKNamespaceNode *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKNamespaceNode *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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