@interface SBIconListViewIconVisibilityInfo
- (BOOL)isEqual:(id)equal;
- (CGRect)visibleRectForIcon:(id)icon;
- (NSMapTable)visibleIconRects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addValuesFromIconVisibilityInfo:(id)info;
- (void)enumerateVisibleIconsUsingBlock:(id)block;
- (void)setVisibleRect:(CGRect)rect forIcon:(id)icon;
@end

@implementation SBIconListViewIconVisibilityInfo

- (CGRect)visibleRectForIcon:(id)icon
{
  v3 = [(NSMapTable *)self->_visibleRects objectForKey:icon];
  v4 = v3;
  if (v3)
  {
    [v3 CGRectValue];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setVisibleRect:(CGRect)rect forIcon:(id)icon
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  iconCopy = icon;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (!CGRectIsEmpty(v15))
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (!CGRectIsNull(v16))
    {
      visibleRects = self->_visibleRects;
      if (!visibleRects)
      {
        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v12 = self->_visibleRects;
        self->_visibleRects = strongToStrongObjectsMapTable;

        visibleRects = self->_visibleRects;
      }

      *v14 = x;
      *&v14[1] = y;
      *&v14[2] = width;
      *&v14[3] = height;
      v13 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [(NSMapTable *)visibleRects setObject:v13 forKey:iconCopy];
    }
  }
}

- (void)addValuesFromIconVisibilityInfo:(id)info
{
  infoCopy = info;
  isNormalized = [(SBIconListViewIconVisibilityInfo *)self isNormalized];
  if (isNormalized != [infoCopy isNormalized])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid argument to addValuesFromIconVisibilityInfo: userInfo:{mismatched normalization!", 0}];
    objc_exception_throw(v6);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SBIconListViewIconVisibilityInfo_addValuesFromIconVisibilityInfo___block_invoke;
  v7[3] = &unk_1E808F470;
  v7[4] = self;
  [infoCopy enumerateVisibleIconsUsingBlock:v7];
}

- (NSMapTable)visibleIconRects
{
  v2 = [(NSMapTable *)self->_visibleRects copy];

  return v2;
}

- (void)enumerateVisibleIconsUsingBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_visibleRects;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      v11 = [(NSMapTable *)self->_visibleRects objectForKey:v10];
      [v11 CGRectValue];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = 0;
      blockCopy[2](blockCopy, v10, &v20, v13, v15, v17, v19);
      if (v20)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && self->_normalized == equalCopy->_normalized)
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 16) = self->_normalized;
    v7 = [(NSMapTable *)self->_visibleRects copyWithZone:zone];
    v8 = v6[1];
    v6[1] = v7;

    v9 = v6;
  }

  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewIconVisibilityInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendBool:-[SBIconListViewIconVisibilityInfo isNormalized](self withName:{"isNormalized"), @"isNormalized"}];
  v6 = [v4 appendObject:self->_visibleRects withName:@"visibleRects"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewIconVisibilityInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end