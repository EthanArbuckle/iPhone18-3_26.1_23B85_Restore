@interface WebPluginDatabase
+ (id)sharedDatabase;
+ (id)sharedDatabaseIfExists;
+ (void)closeSharedDatabase;
+ (void)setAdditionalWebPlugInPaths:(id)a3;
- (WebPluginDatabase)init;
- (id)_plugInPaths;
- (id)_scanForNewPlugins;
- (id)pluginForExtension:(id)a3;
- (id)pluginForMIMEType:(id)a3;
- (void)_addPlugin:(id)a3;
- (void)_removePlugin:(id)a3;
- (void)close;
- (void)dealloc;
- (void)destroyAllPluginInstanceViews;
- (void)refresh;
- (void)removePluginInstanceViewsFor:(id)a3;
- (void)setPlugInPaths:(id)a3;
@end

@implementation WebPluginDatabase

+ (id)sharedDatabase
{
  if (byte_1ED6A60F3)
  {
    if (qword_1ED6A6108)
    {
      return qword_1ED6A6108;
    }
  }

  else
  {
    qword_1ED6A6108 = 0;
    byte_1ED6A60F3 = 1;
  }

  v4 = objc_alloc_init(WebPluginDatabase);
  v5 = qword_1ED6A6108;
  qword_1ED6A6108 = v4;
  if (v5)
  {

    v6 = qword_1ED6A6108;
  }

  else
  {
    v6 = v4;
  }

  -[WebPluginDatabase setPlugInPaths:](v6, "setPlugInPaths:", [a1 _defaultPlugInPaths]);
  [qword_1ED6A6108 refresh];
  return qword_1ED6A6108;
}

+ (id)sharedDatabaseIfExists
{
  if (byte_1ED6A60F3 == 1)
  {
    return qword_1ED6A6108;
  }

  result = 0;
  qword_1ED6A6108 = 0;
  byte_1ED6A60F3 = 1;
  return result;
}

+ (void)closeSharedDatabase
{
  if (byte_1ED6A60F3 == 1)
  {
    v2 = qword_1ED6A6108;
  }

  else
  {
    v2 = 0;
    qword_1ED6A6108 = 0;
    byte_1ED6A60F3 = 1;
  }

  [v2 close];
}

- (id)pluginForMIMEType:(id)a3
{
  v15 = 0;
  v16 = 0;
  v4 = [a3 lowercaseString];
  v5 = [(NSMutableDictionary *)self->plugins objectEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      MEMORY[0x1CCA63A40](&v14, v4);
      v9 = [(WebBasePluginPackage *)v7 supportsMIMEType:&v14];
      v10 = v14;
      v14 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v8);
      }

      if (v9)
      {
        PluginPackageCandidates::update(&v15, v7);
      }

      v7 = [v5 nextObject];
    }

    while (v7);
    v11 = v15;
    if (v15)
    {
      v12 = v15;
      if (![v15 isQuickTimePlugIn])
      {
        return v12;
      }
    }

    v12 = v16;
    if (v16)
    {
      if (![v16 isQuickTimePlugIn] || !v11)
      {
        return v12;
      }

      return v11;
    }
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 0;
  }

  return v11;
}

- (id)pluginForExtension:(id)a3
{
  v16 = 0;
  v17 = 0;
  v4 = [a3 lowercaseString];
  v5 = [(NSMutableDictionary *)self->plugins objectEnumerator];
  v6 = [v5 nextObject];
  if (!v6)
  {
    v11 = 0;
LABEL_16:
    if (!v11)
    {
      v13 = [objc_msgSend(MEMORY[0x1E696AF48] "sharedMappings")];
      if ([v13 length])
      {
        return [(WebPluginDatabase *)self pluginForMIMEType:v13];
      }

      else
      {
        return 0;
      }
    }

    return v11;
  }

  v7 = v6;
  do
  {
    MEMORY[0x1CCA63A40](&v15, v4);
    v9 = [(WebBasePluginPackage *)v7 supportsExtension:&v15];
    v10 = v15;
    v15 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    if (v9)
    {
      PluginPackageCandidates::update(&v16, v7);
    }

    v7 = [v5 nextObject];
  }

  while (v7);
  v11 = v16;
  if (!v16 || [v16 isQuickTimePlugIn])
  {
    v12 = v17;
    if (v17)
    {
      if (([v17 isQuickTimePlugIn] & (v11 != 0)) == 0)
      {
        return v12;
      }

      return v11;
    }

    goto LABEL_16;
  }

  return v11;
}

+ (void)setAdditionalWebPlugInPaths:(id)a3
{
  if (byte_1ED6A60F4 == 1)
  {
    if (qword_1ED6A6110 == a3)
    {
      return;
    }
  }

  else
  {
    qword_1ED6A6110 = 0;
    byte_1ED6A60F4 = 1;
    if (!a3)
    {
      return;
    }
  }

  v3 = [a3 copy];
  if (byte_1ED6A60F4)
  {
    v4 = qword_1ED6A6110;
    qword_1ED6A6110 = v3;
    if (v4)
    {
    }
  }

  else
  {
    byte_1ED6A60F4 = 1;
    qword_1ED6A6110 = v3;
  }
}

- (void)setPlugInPaths:(id)a3
{
  plugInPaths = self->plugInPaths;
  if (plugInPaths != a3)
  {

    self->plugInPaths = [a3 copy];
  }
}

- (void)close
{
  v3 = [-[WebPluginDatabase plugins](self "plugins")];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      [(WebPluginDatabase *)self _removePlugin:v5];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  self->plugins = 0;
}

- (WebPluginDatabase)init
{
  v4.receiver = self;
  v4.super_class = WebPluginDatabase;
  v2 = [(WebPluginDatabase *)&v4 init];
  if (v2)
  {
    v2->registeredMIMETypes = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->pluginInstanceViews = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebPluginDatabase;
  [(WebPluginDatabase *)&v3 dealloc];
}

- (void)refresh
{
  context = objc_autoreleasePoolPush();
  if (!self->plugins)
  {
    self->plugins = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{12, context}];
  }

  v3 = [(WebPluginDatabase *)self _scanForNewPlugins];
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [(NSMutableDictionary *)self->plugins objectEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      if (([v3 containsObject:v7] & 1) == 0)
      {
        [v4 addObject:v7];
      }

      [v3 removeObject:v7];
      v7 = [v5 nextObject];
    }

    while (v7);
  }

  v8 = [v4 objectEnumerator];
  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      [(WebPluginDatabase *)self _removePlugin:v10];
      v10 = [v8 nextObject];
    }

    while (v10);
  }

  v11 = [v3 objectEnumerator];
  v12 = [v11 nextObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      [(WebPluginDatabase *)self _addPlugin:v13];
      v13 = [v11 nextObject];
    }

    while (v13);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = [(NSMutableDictionary *)self->plugins objectEnumerator];
  while (1)
  {
    v16 = [v15 nextObject];
    if (!v16)
    {
      break;
    }

    v17 = [v16 pluginInfo];
    if (*(v17 + 36))
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(*(v17 + 24) + v18);
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          MEMORY[0x1CCA63450](&v29, v20);
          if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v21);
          }
        }

        else
        {
          v29 = &stru_1F472E7E8;
          v23 = &stru_1F472E7E8;
        }

        [v14 addObject:v29];
        v22 = v29;
        v29 = 0;
        if (v22)
        {
        }

        ++v19;
        v18 += 32;
      }

      while (v19 < *(v17 + 36));
    }
  }

  v24 = [v14 objectEnumerator];
  while (1)
  {
    v25 = [v24 nextObject];
    if (!v25)
    {
      break;
    }

    [(NSMutableSet *)self->registeredMIMETypes addObject:v25];
    if (![WebView canShowMIMETypeAsHTML:v25])
    {
      v26 = [(WebPluginDatabase *)self pluginForMIMEType:v25];
      if (([v26 isJavaPlugIn] & 1) == 0 && (!objc_msgSend(v26, "isQuickTimePlugIn") || !objc_msgSend(+[WebFrameView _viewTypesAllowImageTypeOmission:](WebFrameView, "_viewTypesAllowImageTypeOmission:", 0), "objectForKey:", v25)))
      {
        if (byte_1ED6A60F3 == 1)
        {
          if (qword_1ED6A6108 == self)
          {
            goto LABEL_33;
          }
        }

        else
        {
          qword_1ED6A6108 = 0;
          byte_1ED6A60F3 = 1;
          if (!self)
          {
LABEL_33:
            [WebView _registerPluginMIMEType:v25];
          }
        }
      }
    }
  }

  if (v14)
  {
  }

  objc_autoreleasePoolPop(contexta);
}

- (void)removePluginInstanceViewsFor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->pluginInstanceViews count])
  {
    v5 = [objc_msgSend(a3 "frameView")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [v5 subviews];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 == v9)
            {
              v11 = *(*(&v12 + 1) + 8 * i);
              if (![WebPluginController isPlugInView:v11])
              {
                continue;
              }
            }

            else
            {
              objc_enumerationMutation(v6);
              v11 = *(*(&v12 + 1) + 8 * i);
              if (![WebPluginController isPlugInView:v11])
              {
                continue;
              }
            }

            [(NSMutableSet *)self->pluginInstanceViews removeObject:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)destroyAllPluginInstanceViews
{
  v2 = [-[NSMutableSet allObjects](self->pluginInstanceViews "allObjects")];
  v3 = [v2 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      if ([WebPluginController isPlugInView:v4])
      {
        [objc_msgSend(v4 "superview")];
      }

      v4 = [v2 nextObject];
    }

    while (v4);
  }
}

- (id)_plugInPaths
{
  if (byte_1ED6A60F3 == 1)
  {
    if (qword_1ED6A6108 != self)
    {
      return self->plugInPaths;
    }
  }

  else
  {
    qword_1ED6A6108 = 0;
    byte_1ED6A60F3 = 1;
    if (self)
    {
      return self->plugInPaths;
    }
  }

  if (byte_1ED6A60F4)
  {
    if (!qword_1ED6A6110)
    {
      return self->plugInPaths;
    }

    v3 = [(NSArray *)self->plugInPaths mutableCopy];
    if (byte_1ED6A60F4 == 1)
    {
      v4 = qword_1ED6A6110;
    }

    else
    {
      v4 = 0;
      qword_1ED6A6110 = 0;
      byte_1ED6A60F4 = 1;
    }

    v5 = v3;
    [v3 addObjectsFromArray:v4];
    if (v5)
    {
      v6 = v5;
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    qword_1ED6A6110 = 0;
    byte_1ED6A60F4 = 1;
    return self->plugInPaths;
  }
}

- (void)_addPlugin:(id)a3
{
  v5 = *[a3 path];
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  [(NSMutableDictionary *)self->plugins setObject:a3 forKey:v9];
  [a3 wasAddedToPluginDatabase:self];
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }
}

- (void)_removePlugin:(id)a3
{
  v5 = [a3 pluginInfo];
  if (*(v5 + 36))
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(*(v6 + 24) + v7);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v18, v9);
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v10);
        }
      }

      else
      {
        v18 = &stru_1F472E7E8;
        v12 = &stru_1F472E7E8;
      }

      if (![(NSMutableSet *)self->registeredMIMETypes containsObject:v18])
      {
        goto LABEL_12;
      }

      if (byte_1ED6A60F3 != 1)
      {
        break;
      }

      if (qword_1ED6A6108 == self)
      {
        goto LABEL_10;
      }

LABEL_11:
      [(NSMutableSet *)self->registeredMIMETypes removeObject:v18];
LABEL_12:
      v11 = v18;
      v18 = 0;
      if (v11)
      {
      }

      ++v8;
      v7 += 32;
      if (v8 >= *(v6 + 36))
      {
        goto LABEL_17;
      }
    }

    qword_1ED6A6108 = 0;
    byte_1ED6A60F3 = 1;
    if (self)
    {
      goto LABEL_11;
    }

LABEL_10:
    [WebView _unregisterPluginMIMEType:v18];
    goto LABEL_11;
  }

LABEL_17:
  v13 = *[a3 path];
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v18, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }

    if (a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = &stru_1F472E7E8;
    v17 = &stru_1F472E7E8;
    if (a3)
    {
LABEL_21:
      v15 = a3;
    }
  }

  [(NSMutableDictionary *)self->plugins removeObjectForKey:v18];
  [a3 wasRemovedFromPluginDatabase:self];
  if (a3)
  {
  }

  v16 = v18;
  v18 = 0;
  if (v16)
  {
  }
}

- (id)_scanForNewPlugins
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [-[WebPluginDatabase _plugInPaths](self "_plugInPaths")];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  while (1)
  {
    v7 = [v4 nextObject];
    if (!v7)
    {
      break;
    }

    v8 = [objc_msgSend(v6 contentsOfDirectoryAtPath:v7 error:{0), "objectEnumerator"}];
    while (1)
    {
      v9 = [v8 nextObject];
      if (!v9)
      {
        break;
      }

      if (([v5 containsObject:v9] & 1) == 0)
      {
        [v5 addObject:v9];
        v10 = [v7 stringByAppendingPathComponent:v9];
        if ([(NSMutableDictionary *)self->plugins objectForKey:v10]|| [WebBasePluginPackage pluginWithPath:v10])
        {
          [v3 addObject:?];
        }
      }
    }
  }

  if (v5)
  {
  }

  return v3;
}

@end