@interface MPFilter
+ (id)filterWithFilterID:(id)a3;
- (MPFilter)init;
- (MPFilter)initWithFilterID:(id)a3;
- (id)convertMCAttributeToMPAttribute:(id)a3 withKey:(id)a4;
- (id)convertMPAttributeToMCAttribute:(id)a3 withKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)parentDocument;
- (int64_t)index;
- (void)copyAnimationPaths:(id)a3;
- (void)copyStruct:(id)a3;
- (void)dealloc;
- (void)removeAnimationPathForKey:(id)a3;
- (void)setAnimationPath:(id)a3 forKey:(id)a4;
- (void)setDefaults;
- (void)setFilter:(id)a3;
- (void)setFilterAttribute:(id)a3 forKey:(id)a4;
- (void)setFilterID:(id)a3;
- (void)setParent:(id)a3;
- (void)setPresetID:(id)a3;
@end

@implementation MPFilter

+ (id)filterWithFilterID:(id)a3
{
  v3 = [[a1 alloc] initWithFilterID:a3];

  return v3;
}

- (MPFilter)initWithFilterID:(id)a3
{
  v4 = [(MPFilter *)self init];
  v5 = v4;
  if (v4)
  {
    [(MPFilterInternal *)v4->_internal setFilterID:a3];
    [(MPFilterInternal *)v5->_internal setPresetID:@"Default"];
    [(MPFilter *)v5 setDefaults];
  }

  return v5;
}

- (MPFilter)init
{
  v5.receiver = self;
  v5.super_class = MPFilter;
  v2 = [(MPFilter *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPFilterInternal);
    v2->_internal = v3;
    [(MPFilterInternal *)v3 setFilterID:0];
    [(MPFilterInternal *)v2->_internal setPresetID:0];
    v2->_attributes = 0;
    v2->_animationPaths = 0;
    v2->_filter = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 copyStruct:self->_internal];
  [v4 copyAnimationPaths:self->_animationPaths];
  return v4;
}

- (id)description
{
  v3 = [[[NSString stringWithFormat:?]stringByAppendingFormat:@"\t                     Filter ID: %@\n", [(MPFilter *)self filterID]], "stringByAppendingFormat:", @"\t                     Preset ID: %@\n", [(MPFilter *)self presetID]];
  if (self->_filter)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  return [(NSString *)v3 stringByAppendingFormat:@"\t                    Has Filter: %@\n", v4];
}

- (void)dealloc
{
  filter = self->_filter;
  if (filter)
  {

    self->_filter = 0;
  }

  self->_internal = 0;
  v4.receiver = self;
  v4.super_class = MPFilter;
  [(MPFilter *)&v4 dealloc];
}

- (void)setFilterID:(id)a3
{
  [(MPFilterInternal *)self->_internal setFilterID:?];
  filter = self->_filter;
  if (filter)
  {

    [(MCFilter *)filter setFilterID:a3];
  }
}

- (void)setPresetID:(id)a3
{
  [(MPFilterInternal *)self->_internal setPresetID:?];
  filter = self->_filter;
  if (filter)
  {

    [(MCFilter *)filter setAttribute:a3 forKey:@"PresetID"];
  }
}

- (void)setFilterAttribute:(id)a3 forKey:(id)a4
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = objc_alloc_init(NSMutableDictionary);
    self->_attributes = attributes;
  }

  [(NSMutableDictionary *)attributes setObject:a3 forKey:a4];
  if (self->_filter)
  {
    v8 = [(MPFilter *)self convertMPAttributeToMCAttribute:a3 withKey:a4];
    v9 = [-[MCFilter attributeForKey:](self->_filter attributeForKey:{@"specificAttributes", "mutableCopy"}];
    [v9 setValue:v8 forKey:a4];
    [(MCFilter *)self->_filter setAttribute:v9 forKey:@"specificAttributes"];
  }
}

- (void)setAnimationPath:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    if (!self->_animationPaths)
    {
      self->_animationPaths = objc_alloc_init(NSMutableDictionary);
    }

    v7 = [(MPFilter *)self animationPathForKey:a4];
    if (v7)
    {
      v8 = v7;
      [v7 setParent:0];
      [v8 setAnimationPath:0];
    }

    [a3 setParent:self];
    [(NSMutableDictionary *)self->_animationPaths setObject:a3 forKey:a4];
    filter = self->_filter;
    if (filter)
    {
      [(MCFilter *)filter removeAnimationPathForKey:a4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = off_1A4CB0;
      if ((isKindOfClass & 1) == 0)
      {
        v11 = off_1A4CB8;
      }

      v12 = [(__objc2_class *)*v11 animationPathWithKey:a4];
      [(MCFilter *)self->_filter addAnimationPath:v12];

      [a3 setAnimationPath:v12];
    }
  }

  else
  {

    [(MPFilter *)self removeAnimationPathForKey:a4];
  }
}

- (void)removeAnimationPathForKey:(id)a3
{
  if (self->_animationPaths)
  {
    v5 = [(MPFilter *)self animationPathForKey:?];
    filter = self->_filter;
    if (filter)
    {
      [(MCFilter *)filter removeAnimationPathForKey:a3];
      [v5 setAnimationPath:0];
    }

    [v5 setParent:0];
    animationPaths = self->_animationPaths;

    [(NSMutableDictionary *)animationPaths removeObjectForKey:a3];
  }
}

- (int64_t)index
{
  parent = self->_parent;
  if (!parent)
  {
    return -1;
  }

  v4 = [(MPFilterSupport *)parent filters];

  return [v4 indexOfObject:self];
}

- (void)setDefaults
{
  v3 = [MPUtilities defaultAttributesForMPFilter:self];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[MPFilter setFilterAttribute:forKey:](self, "setFilterAttribute:forKey:", [v3 objectForKey:*(*(&v8 + 1) + 8 * v7)], *(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)convertMPAttributeToMCAttribute:(id)a3 withKey:(id)a4
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  return a3;
}

- (id)convertMCAttributeToMPAttribute:(id)a3 withKey:(id)a4
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  return a3;
}

- (void)copyStruct:(id)a3
{
  -[MPFilterInternal setFilterID:](self->_internal, "setFilterID:", [objc_msgSend(a3 "filterID")]);
  v5 = [objc_msgSend(a3 "presetID")];
  internal = self->_internal;

  [(MPFilterInternal *)internal setPresetID:v5];
}

- (void)copyAnimationPaths:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [objc_msgSend(a3 objectForKey:{v9), "copy"}];
        [(MPFilter *)self setAnimationPath:v10 forKey:v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setFilter:(id)a3
{
  filter = self->_filter;
  if (filter)
  {

    self->_filter = 0;
  }

  v6 = a3;
  self->_filter = v6;
  if (v6)
  {
    [(MCFilter *)self->_filter setFilterID:[(MPFilter *)self filterID]];
    [(MCFilter *)self->_filter setAttribute:[(MPFilter *)self presetID] forKey:@"PresetID"];
    v7 = +[NSMutableDictionary dictionary];
    v8 = [(MPFilter *)self filterAttributes];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 setObject:-[MPFilter convertMPAttributeToMCAttribute:withKey:](self forKey:{"convertMPAttributeToMCAttribute:withKey:", objc_msgSend(v8, "objectForKey:", *(*(&v35 + 1) + 8 * i)), *(*(&v35 + 1) + 8 * i)), *(*(&v35 + 1) + 8 * i)}];
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v10);
    }

    [(MCFilter *)self->_filter setAttribute:v7 forKey:@"specificAttributes"];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    animationPaths = self->_animationPaths;
    v14 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(animationPaths);
          }

          v18 = *(*(&v31 + 1) + 8 * j);
          v19 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v18];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = off_1A4CB0;
          }

          else
          {
            v20 = off_1A4CB8;
          }

          v21 = [(__objc2_class *)*v20 animationPathWithKey:v18];
          [(MCFilter *)self->_filter addAnimationPath:v21];
          [v19 setAnimationPath:v21];
        }

        v15 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = self->_animationPaths;
    v23 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{*(*(&v27 + 1) + 8 * k)), "setAnimationPath:", 0}];
        }

        v24 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v24);
    }
  }
}

- (void)setParent:(id)a3
{
  if (a3 && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A filter may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parent = a3;
}

- (id)parentDocument
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(MPFilterSupport *)self->_parent parentEffect];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    parent = self->_parent;
    if (isKindOfClass)
    {
      goto LABEL_5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v3 = self->_parent;
  }

  parent = [-[MPFilterSupport parentContainer](v3 "parentContainer")];
LABEL_5:

  return [(MPFilterSupport *)parent parentDocument];
}

@end