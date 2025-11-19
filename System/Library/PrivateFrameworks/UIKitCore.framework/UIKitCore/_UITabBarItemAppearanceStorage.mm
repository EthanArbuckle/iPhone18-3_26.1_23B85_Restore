@interface _UITabBarItemAppearanceStorage
- (UIOffset)titleOffset;
- (id)badgeTextAttributesForState:(unint64_t)a3;
- (void)enumerateBadgeTextAttributesWithBlock:(id)a3;
- (void)setBadgeTextAttributes:(id)a3 forState:(unint64_t)a4;
@end

@implementation _UITabBarItemAppearanceStorage

- (void)setBadgeTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v16 = v6;
  if (v6 || (v7 = self->_badgeTextAttributesForState, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v6 = 0, v9))
  {
    if (self->_badgeTextAttributesForState)
    {
      if (v6)
      {
LABEL_5:
        v10 = [v6 mutableCopy];
        badgeTextAttributesForState = self->_badgeTextAttributesForState;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        [(NSMutableDictionary *)badgeTextAttributesForState setObject:v10 forKeyedSubscript:v12];

LABEL_8:
        v6 = v16;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = self->_badgeTextAttributesForState;
      self->_badgeTextAttributesForState = v13;

      v6 = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v15 = self->_badgeTextAttributesForState;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v15 removeObjectForKey:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)badgeTextAttributesForState:(unint64_t)a3
{
  badgeTextAttributesForState = self->_badgeTextAttributesForState;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)badgeTextAttributesForState objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (void)enumerateBadgeTextAttributesWithBlock:(id)a3
{
  v4 = a3;
  badgeTextAttributesForState = self->_badgeTextAttributesForState;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72___UITabBarItemAppearanceStorage_enumerateBadgeTextAttributesWithBlock___block_invoke;
  v7[3] = &unk_1E70F7948;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)badgeTextAttributesForState enumerateKeysAndObjectsUsingBlock:v7];
}

- (UIOffset)titleOffset
{
  horizontal = self->_titleOffset.horizontal;
  vertical = self->_titleOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end