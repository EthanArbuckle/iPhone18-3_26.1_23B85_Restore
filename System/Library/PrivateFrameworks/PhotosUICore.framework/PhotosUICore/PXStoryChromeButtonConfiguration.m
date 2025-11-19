@interface PXStoryChromeButtonConfiguration
- (BOOL)hasBadgeImageContent;
- (BOOL)hasPrimaryImageContent;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transform;
- (CGPoint)offset;
- (CGSize)badgePadding;
- (NSObject)customContextMenuInteractionDelegate;
- (PXStoryChromeButtonConfiguration)init;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)hitTestEdgeOutsets;
- (UIEdgeInsets)pointerShapeInsets;
- (double)preferredSystemImagePointSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)target;
- (int64_t)preferredSystemImageWeight;
- (unint64_t)hash;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation PXStoryChromeButtonConfiguration

- (UIEdgeInsets)pointerShapeInsets
{
  top = self->_pointerShapeInsets.top;
  left = self->_pointerShapeInsets.left;
  bottom = self->_pointerShapeInsets.bottom;
  right = self->_pointerShapeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

- (CGAffineTransform)transform
{
  v3 = *&self[7].a;
  *&retstr->a = *&self[6].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].c;
  return self;
}

- (UIEdgeInsets)hitTestEdgeOutsets
{
  top = self->_hitTestEdgeOutsets.top;
  left = self->_hitTestEdgeOutsets.left;
  bottom = self->_hitTestEdgeOutsets.bottom;
  right = self->_hitTestEdgeOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)badgePadding
{
  width = self->_badgePadding.width;
  height = self->_badgePadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSObject)customContextMenuInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customContextMenuInteractionDelegate);

  return WeakRetained;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (double)preferredSystemImagePointSize
{
  preferredSystemImagePointSize = self->_preferredSystemImagePointSize;
  if (preferredSystemImagePointSize == *off_1E7722088)
  {
    v4 = [(PXStoryChromeButtonConfiguration *)self backgroundStyle];
    v5 = [(PXStoryChromeButtonConfiguration *)self spec];
    v6 = v5;
    if (v4)
    {
      [v5 systemImageSizeWithBackground];
    }

    else
    {
      [v5 systemImageSizeWithoutBackground];
    }

    preferredSystemImagePointSize = v7;
  }

  return preferredSystemImagePointSize;
}

- (int64_t)preferredSystemImageWeight
{
  preferredSystemImageWeight = self->_preferredSystemImageWeight;
  if (preferredSystemImageWeight == *off_1E7722090)
  {
    v4 = [(PXStoryChromeButtonConfiguration *)self backgroundStyle];
    v5 = [(PXStoryChromeButtonConfiguration *)self spec];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 systemImageWeightWithBackground];
    }

    else
    {
      v7 = [v5 systemImageWeightWithoutBackground];
    }

    preferredSystemImageWeight = v7;
  }

  return preferredSystemImageWeight;
}

- (BOOL)hasBadgeImageContent
{
  v2 = [(PXStoryChromeButtonConfiguration *)self badgeSystemImageName];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasPrimaryImageContent
{
  v3 = [(PXStoryChromeButtonConfiguration *)self displayAsset];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PXStoryChromeButtonConfiguration *)self systemImageName];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryChromeButtonConfiguration *)self target];
      v7 = [(PXStoryChromeButtonConfiguration *)v5 target];
      if (v6 == v7 && (v8 = [(PXStoryChromeButtonConfiguration *)self action], v8 == [(PXStoryChromeButtonConfiguration *)v5 action]))
      {
        v11 = [(PXStoryChromeButtonConfiguration *)self menu];
        v12 = [(PXStoryChromeButtonConfiguration *)v5 menu];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v13 = [(PXStoryChromeButtonConfiguration *)self systemImageName];
          v14 = [(PXStoryChromeButtonConfiguration *)v5 systemImageName];
          if (v13 == v14 || [v13 isEqualToString:v14])
          {
            v23 = v13;
            v15 = [(PXStoryChromeButtonConfiguration *)self label];
            v16 = [(PXStoryChromeButtonConfiguration *)v5 label];
            v24 = v15;
            if (v15 == v16 || (v17 = v16, v18 = [v15 isEqualToString:v16], v16 = v17, v18))
            {
              v19 = v16;
              v20 = [(PXStoryChromeButtonConfiguration *)self backgroundStyle];
              if (v20 == [(PXStoryChromeButtonConfiguration *)v5 backgroundStyle])
              {
                v21 = [(PXStoryChromeButtonConfiguration *)self backgroundExtendsUnderLabel];
                if (v21 == [(PXStoryChromeButtonConfiguration *)v5 backgroundExtendsUnderLabel])
                {
                  v22 = [(PXStoryChromeButtonConfiguration *)self preferredSystemImageWeight];
                  if (v22 == [(PXStoryChromeButtonConfiguration *)v5 preferredSystemImageWeight])
                  {
                    [(PXStoryChromeButtonConfiguration *)self preferredSystemImagePointSize];
                    [(PXStoryChromeButtonConfiguration *)v5 preferredSystemImagePointSize];
                    PXFloatApproximatelyEqualToFloat();
                  }
                }
              }

              v9 = 0;
              v16 = v19;
            }

            else
            {
              v9 = 0;
            }

            v13 = v23;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PXStoryChromeButtonConfiguration *)self backgroundStyle];
  v4 = [(PXStoryChromeButtonConfiguration *)self systemImageName];
  v5 = v3 ^ (4 * [v4 hash]);

  v6 = [(PXStoryChromeButtonConfiguration *)self spec];
  v7 = v5 ^ (8 * [v6 hash]);

  v8 = v7 ^ (16 * [(PXStoryChromeButtonConfiguration *)self pointerShape]);
  v9 = [(PXStoryChromeButtonConfiguration *)self symbolTransition];
  v10 = v8 ^ (32 * [v9 hash]);

  v11 = [(PXStoryChromeButtonConfiguration *)self displayAsset];
  v12 = [v11 hash];

  v13 = [(PXStoryChromeButtonConfiguration *)self badgeSystemImageName];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14 ^ [(PXStoryChromeButtonConfiguration *)self systemImageStyle];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_target);
  objc_storeWeak(v4 + 3, WeakRetained);

  v4[4] = self->_action;
  objc_storeStrong(v4 + 5, self->_menu);
  v4[7] = self->_backgroundStyle;
  v4[9] = self->_preferredSystemImageWeight;
  v4[10] = *&self->_preferredSystemImagePointSize;
  *(v4 + 12) = self->_offset;
  v6 = [(NSString *)self->_systemImageName copy];
  v7 = v4[12];
  v4[12] = v6;

  v8 = [(NSString *)self->_label copy];
  v9 = v4[14];
  v4[14] = v8;

  *(v4 + 8) = self->_backgroundExtendsUnderLabel;
  objc_storeStrong(v4 + 2, self->_spec);
  objc_storeStrong(v4 + 19, self->_tintColor);
  objc_storeStrong(v4 + 20, self->_focusedTintColor);
  objc_storeStrong(v4 + 21, self->_solidBackgroundColor);
  v4[8] = self->_systemImageStyle;
  objc_storeStrong(v4 + 11, self->_symbolTransition);
  v10 = *&self->_contentEdgeInsets.bottom;
  *(v4 + 14) = *&self->_contentEdgeInsets.top;
  *(v4 + 15) = v10;
  v11 = *&self->_hitTestEdgeOutsets.bottom;
  *(v4 + 16) = *&self->_hitTestEdgeOutsets.top;
  *(v4 + 17) = v11;
  v12 = objc_loadWeakRetained(&self->_customContextMenuInteractionDelegate);
  objc_storeWeak(v4 + 6, v12);

  v13 = [(PXDisplayAsset *)self->_displayAsset copyWithZone:0];
  v14 = v4[13];
  v4[13] = v13;

  v15 = *&self->_transform.a;
  v16 = *&self->_transform.tx;
  *(v4 + 21) = *&self->_transform.c;
  *(v4 + 22) = v16;
  *(v4 + 20) = v15;
  v4[17] = self->_badgeEdges;
  v17 = [(NSString *)self->_badgeSystemImageName copy];
  v18 = v4[15];
  v4[15] = v17;

  *(v4 + 13) = self->_badgePadding;
  v19 = [(NSArray *)self->_badgeSystemImageColors copy];
  v20 = v4[16];
  v4[16] = v19;

  *(v4 + 9) = self->_enabled;
  *(v4 + 11) = self->_backgroundColorAdaptsToHoveredState;
  *(v4 + 10) = self->_applyTintColorAsHierarchicalColor;
  v4[22] = self->_pointerShape;
  v21 = *&self->_pointerShapeInsets.bottom;
  *(v4 + 18) = *&self->_pointerShapeInsets.top;
  *(v4 + 19) = v21;
  v22 = [(NSString *)self->_axLabel copy];
  v23 = v4[23];
  v4[23] = v22;

  return v4;
}

- (PXStoryChromeButtonConfiguration)init
{
  v5.receiver = self;
  v5.super_class = PXStoryChromeButtonConfiguration;
  result = [(PXStoryChromeButtonConfiguration *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_transform.a = *MEMORY[0x1E695EFD0];
    *&result->_transform.c = v4;
    *&result->_transform.tx = *(v3 + 32);
    result->_enabled = 1;
    result->_backgroundColorAdaptsToHoveredState = 1;
  }

  return result;
}

@end