@interface FxHost
+ (id)_createPathArrayFromURLArray:(id)a3;
+ (id)fxPlugsFolderURLs;
+ (id)host;
+ (id)plugInsFolderURLs;
- (BOOL)allowBuiltInEffectsForPlugInTypeUUID:(id)a3;
- (FxHost)init;
- (id)_createDefaultSearchableURLsDict;
- (id)_createDefaultSupportBuiltInsDict;
- (id)_findGroupInList:(id)a3 withIdenticalDescriptor:(id)a4;
- (void)dealloc;
- (void)invalidateFxPlugDescriptorArray;
- (void)setAllowBuiltInEffects:(BOOL)a3 forPlugInTypeUUID:(id)a4;
- (void)setSupportedPlugInTypeUUIDs:(id)a3;
@end

@implementation FxHost

+ (id)_createPathArrayFromURLArray:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v5 = [a3 objectEnumerator];
  for (i = v5; ; v5 = i)
  {
    v7 = [v5 nextObject];
    if (!v7)
    {
      break;
    }

    [v4 addObject:{objc_msgSend(v7, "path")}];
  }

  return v4;
}

- (id)_createDefaultSearchableURLsDict
{
  var2 = self->_priv->var2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [var2 objectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      if ([v6 isEqual:@"ACF57DAE-E1BB-11D8-BF80-000A95DF1816"])
      {
        v7 = [objc_opt_class() fxPlugsFolderURLs];
        if (v7)
        {
          [v3 setObject:v7 forKey:v6];
        }
      }

      v6 = [v4 nextObject];
    }

    while (v6);
  }

  return v3;
}

- (id)_createDefaultSupportBuiltInsDict
{
  var2 = self->_priv->var2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [var2 objectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), v6}];
      v6 = [v4 nextObject];
    }

    while (v6);
  }

  return v3;
}

- (FxHost)init
{
  v9.receiver = self;
  v9.super_class = FxHost;
  v2 = [(FxHost *)&v9 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x38uLL, 0x80040C96DFCA5uLL);
    v2->_priv = v3;
    if (v3)
    {
      v2->_priv->var0 = +[PROPlugInManager sharedPlugInManager];
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v2->_priv->var2 = v4;
      [v4 addObject:@"ACF57DAE-E1BB-11D8-BF80-000A95DF1816"];
      v2->_priv->var1 = v2->_priv->var2;
      v5 = [(FxHost *)v2 _createDefaultSearchableURLsDict];
      v2->_priv->var4 = v5;
      v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
      priv = v2->_priv;
      priv->var3 = v6;
      priv->var6 = 0;
      v2->_priv->var5 = [(FxHost *)v2 _createDefaultSupportBuiltInsDict];
    }
  }

  return v2;
}

+ (id)host
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v16.receiver);
  priv = self->_priv;
  if (priv)
  {
    if (priv->var0)
    {

      priv = self->_priv;
    }

    var1 = priv->var1;
    if (var1)
    {

      priv = self->_priv;
    }

    var2 = priv->var2;
    if (var2)
    {

      priv = self->_priv;
    }

    var3 = priv->var3;
    if (var3)
    {

      priv = self->_priv;
    }

    var4 = priv->var4;
    if (var4)
    {

      priv = self->_priv;
    }

    var5 = priv->var5;
    if (var5)
    {

      priv = self->_priv;
    }

    var6 = priv->var6;
    if (var6)
    {

      priv = self->_priv;
    }

    free(priv);
  }

  v16.receiver = self;
  v16.super_class = FxHost;
  [(FxHost *)&v16 dealloc];
}

+ (id)plugInsFolderURLs
{
  v2 = MEMORY[0x277CBEA60];
  v3 = +[FxHost internalPlugInsFolderURL];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/Library/Plug-Ins"];
  return [v2 arrayWithObjects:{v3, v4, objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", objc_msgSend(@"~/Library/Plug-Ins", "stringByExpandingTildeInPath")), 0}];
}

+ (id)fxPlugsFolderURLs
{
  v2 = +[FxHost plugInsFolderURLs];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = [v2 objectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v3 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:relativeToURL:", @"FxPlug/", v6)}];
      v6 = [v4 nextObject];
    }

    while (v6);
  }

  return v3;
}

- (void)invalidateFxPlugDescriptorArray
{
  priv = self->_priv;
  var6 = priv->var6;
  if (var6)
  {
    priv->var6 = 0;
  }
}

- (void)setSupportedPlugInTypeUUIDs:(id)a3
{
  if (([a3 isEqualToArray:self->_priv->var1] & 1) == 0)
  {
    var1 = self->_priv->var1;
    self->_priv->var1 = a3;
    if (var1)
    {
    }
  }
}

- (BOOL)allowBuiltInEffectsForPlugInTypeUUID:(id)a3
{
  v3 = [self->_priv->var5 objectForKey:a3];

  return [v3 BOOLValue];
}

- (void)setAllowBuiltInEffects:(BOOL)a3 forPlugInTypeUUID:(id)a4
{
  v5 = a3;
  v7 = [self->_priv->var5 objectForKey:a4];
  if (!v7 || [v7 BOOLValue] != v5)
  {
    [self->_priv->var5 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v5), a4}];

    [(FxHost *)self invalidateFxPlugDescriptorArray];
  }
}

- (id)_findGroupInList:(id)a3 withIdenticalDescriptor:(id)a4
{
  v5 = [a3 objectEnumerator];
  do
  {
    v6 = [v5 nextObject];
    v7 = v6;
  }

  while (v6 && ![objc_msgSend(v6 "descriptor")]);
  return v7;
}

@end