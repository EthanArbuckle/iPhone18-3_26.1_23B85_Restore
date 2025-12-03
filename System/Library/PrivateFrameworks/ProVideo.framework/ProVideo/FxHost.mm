@interface FxHost
+ (id)_createPathArrayFromURLArray:(id)array;
+ (id)fxPlugsFolderURLs;
+ (id)host;
+ (id)plugInsFolderURLs;
- (BOOL)allowBuiltInEffectsForPlugInTypeUUID:(id)d;
- (FxHost)init;
- (id)_createDefaultSearchableURLsDict;
- (id)_createDefaultSupportBuiltInsDict;
- (id)_findGroupInList:(id)list withIdenticalDescriptor:(id)descriptor;
- (void)dealloc;
- (void)invalidateFxPlugDescriptorArray;
- (void)setAllowBuiltInEffects:(BOOL)effects forPlugInTypeUUID:(id)d;
- (void)setSupportedPlugInTypeUUIDs:(id)ds;
@end

@implementation FxHost

+ (id)_createPathArrayFromURLArray:(id)array
{
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(array, "count")}];
  objectEnumerator = [array objectEnumerator];
  for (i = objectEnumerator; ; objectEnumerator = i)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    [v4 addObject:{objc_msgSend(nextObject, "path")}];
  }

  return v4;
}

- (id)_createDefaultSearchableURLsDict
{
  var2 = self->_priv->var2;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objectEnumerator = [var2 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      if ([nextObject2 isEqual:@"ACF57DAE-E1BB-11D8-BF80-000A95DF1816"])
      {
        fxPlugsFolderURLs = [objc_opt_class() fxPlugsFolderURLs];
        if (fxPlugsFolderURLs)
        {
          [dictionary setObject:fxPlugsFolderURLs forKey:nextObject2];
        }
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return dictionary;
}

- (id)_createDefaultSupportBuiltInsDict
{
  var2 = self->_priv->var2;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objectEnumerator = [var2 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), nextObject2}];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return dictionary;
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
      _createDefaultSearchableURLsDict = [(FxHost *)v2 _createDefaultSearchableURLsDict];
      v2->_priv->var4 = _createDefaultSearchableURLsDict;
      v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:_createDefaultSearchableURLsDict];
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
  objectEnumerator = [v2 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [v3 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:relativeToURL:", @"FxPlug/", nextObject2)}];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
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

- (void)setSupportedPlugInTypeUUIDs:(id)ds
{
  if (([ds isEqualToArray:self->_priv->var1] & 1) == 0)
  {
    var1 = self->_priv->var1;
    self->_priv->var1 = ds;
    if (var1)
    {
    }
  }
}

- (BOOL)allowBuiltInEffectsForPlugInTypeUUID:(id)d
{
  v3 = [self->_priv->var5 objectForKey:d];

  return [v3 BOOLValue];
}

- (void)setAllowBuiltInEffects:(BOOL)effects forPlugInTypeUUID:(id)d
{
  effectsCopy = effects;
  v7 = [self->_priv->var5 objectForKey:d];
  if (!v7 || [v7 BOOLValue] != effectsCopy)
  {
    [self->_priv->var5 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", effectsCopy), d}];

    [(FxHost *)self invalidateFxPlugDescriptorArray];
  }
}

- (id)_findGroupInList:(id)list withIdenticalDescriptor:(id)descriptor
{
  objectEnumerator = [list objectEnumerator];
  do
  {
    nextObject = [objectEnumerator nextObject];
    v7 = nextObject;
  }

  while (nextObject && ![objc_msgSend(nextObject "descriptor")]);
  return v7;
}

@end