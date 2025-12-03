@interface SUTabBarAppearance
- (id)copyWithZone:(_NSZone *)zone;
- (id)titleTextAttributesForState:(unint64_t)state;
- (void)dealloc;
- (void)enumerateTitleTextAttributesUsingBlock:(id)block;
- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
@end

@implementation SUTabBarAppearance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUTabBarAppearance;
  [(SUTabBarAppearance *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_backgroundImage;
  *(v5 + 16) = self->_dividerImage;
  *(v5 + 24) = self->_selectedDividerImage;
  *(v5 + 32) = self->_selectionIndicatorImage;
  *(v5 + 40) = self->_tabBarButtonSpacing;
  *(v5 + 48) = self->_tabBarButtonWidth;
  *(v5 + 56) = [(NSMutableDictionary *)self->_titleTextAttributes mutableCopyWithZone:zone];
  return v5;
}

- (void)enumerateTitleTextAttributesUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  titleTextAttributes = self->_titleTextAttributes;
  v6 = [(NSMutableDictionary *)titleTextAttributes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(titleTextAttributes);
        }

        (*(block + 2))(block, [*(*(&v10 + 1) + 8 * i) integerValue], -[NSMutableDictionary objectForKey:](self->_titleTextAttributes, "objectForKey:", *(*(&v10 + 1) + 8 * i)));
      }

      v7 = [(NSMutableDictionary *)titleTextAttributes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:state];
  titleTextAttributes = self->_titleTextAttributes;
  v9 = v6;
  if (attributes)
  {
    if (!titleTextAttributes)
    {
      self->_titleTextAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = [attributes copy];
    [(NSMutableDictionary *)self->_titleTextAttributes setObject:v8 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)titleTextAttributes removeObjectForKey:?];
  }
}

- (id)titleTextAttributesForState:(unint64_t)state
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:state];
  v5 = [-[NSMutableDictionary objectForKey:](self->_titleTextAttributes objectForKey:{v4), "copy"}];

  return v5;
}

@end