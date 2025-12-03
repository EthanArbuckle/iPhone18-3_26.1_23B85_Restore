@interface SBIconListViewClusterAnimator
- (SBIconListViewClusterAnimator)init;
- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block;
- (void)iconListView:(id)view wantsAnimatedRemovalForIconViews:(id)views completionHandler:(id)handler;
- (void)setRemovalDirection:(unint64_t)direction forIcon:(id)icon;
@end

@implementation SBIconListViewClusterAnimator

- (SBIconListViewClusterAnimator)init
{
  v7.receiver = self;
  v7.super_class = SBIconListViewClusterAnimator;
  v2 = [(SBIconListViewClusterAnimator *)&v7 init];
  if (v2)
  {
    v3 = +[SBHHomeScreenDomain rootSettings];
    iconEditingSettings = [v3 iconEditingSettings];
    iconEditingSettings = v2->_iconEditingSettings;
    v2->_iconEditingSettings = iconEditingSettings;
  }

  return v2;
}

- (void)setRemovalDirection:(unint64_t)direction forIcon:(id)icon
{
  iconCopy = icon;
  removalDirectionForIcons = self->_removalDirectionForIcons;
  if (!removalDirectionForIcons)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_removalDirectionForIcons;
    self->_removalDirectionForIcons = dictionary;

    removalDirectionForIcons = self->_removalDirectionForIcons;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:direction];
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  [(NSMutableDictionary *)removalDirectionForIcons setObject:v9 forKey:uniqueIdentifier];
}

- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block
{
  viewCopy = view;
  iconViewCopy = iconView;
  blockCopy = block;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDuration];
  v14 = v13;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDampingRatio];
  v16 = v15;
  icon = [iconViewCopy icon];
  gridSizeClass = [icon gridSizeClass];
  v19 = gridSizeClass;
  if (gridSizeClass == @"SBHIconGridSizeClassDefault")
  {
    var6 = parameters->var6;

    if (!var6)
    {
      goto LABEL_64;
    }
  }

  else
  {
    gridSizeClass2 = [icon gridSizeClass];
    if (([gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
    {

      goto LABEL_12;
    }

    v21 = parameters->var6;

    if (!v21)
    {
      goto LABEL_64;
    }
  }

  column = parameters->var4.column;
  row = parameters->var4.row;
  x = parameters->var0.x;
  y = parameters->var0.y;
  [iconViewCopy center];
  v28 = v27;
  v30 = v29;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v33 = column & 1;
    if (column < 0)
    {
      v33 = -v33;
    }

    v34 = v33 == 1;
    v35 = (row & 0x8000000000000001) == 1 && v33 == 1;
    v36 = (row & 0x8000000000000001) == 1 && v33 == 0;
    v37 = v33 | row & 1;
    v38 = (row & 1) == 0 && v34;
    v39 = v37 == 0;
    if (BSFloatEqualToFloat())
    {
      if (x > v28)
      {
        if (!v36)
        {
          if (!v39)
          {
            if (v35)
            {
              goto LABEL_58;
            }

            goto LABEL_34;
          }

          goto LABEL_54;
        }

LABEL_42:
        [(SBHIconEditingSettings *)self->_iconEditingSettings clusterFastestDuration];
LABEL_63:
        v14 = v40;
        goto LABEL_64;
      }

      if (v35)
      {
        goto LABEL_42;
      }

      if (!v38)
      {
        if (!v36)
        {
          if (!v39)
          {
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        goto LABEL_58;
      }
    }

    else if (x <= v28)
    {
      if (v38)
      {
        goto LABEL_42;
      }

      if (!v39)
      {
        if (!v35)
        {
          if (!v36)
          {
            goto LABEL_64;
          }

LABEL_62:
          [(SBHIconEditingSettings *)self->_iconEditingSettings clusterSlowestDuration];
          goto LABEL_63;
        }

LABEL_58:
        [(SBHIconEditingSettings *)self->_iconEditingSettings clusterMiddleSlowDuration];
        goto LABEL_63;
      }
    }

    else
    {
      if (v36)
      {
        goto LABEL_42;
      }

      if (!v35)
      {
        if (!v39)
        {
LABEL_34:
          if (!v38)
          {
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        goto LABEL_58;
      }
    }

LABEL_54:
    [(SBHIconEditingSettings *)self->_iconEditingSettings clusterMiddleFastDuration];
    goto LABEL_63;
  }

  if (BSFloatEqualToFloat() && (BSFloatEqualToFloat() & 1) == 0)
  {
    layoutMetrics = [viewCopy layoutMetrics];
    v19 = layoutMetrics;
    v32 = column == 1 || column == [(__CFString *)layoutMetrics columns];
    if (row >= 0)
    {
      v41 = row & 1;
    }

    else
    {
      v41 = -(row & 1);
    }

    v42 = v41 == 1;
    v43 = v42 && v32;
    v44 = !v32;
    v45 = v42 && !v32;
    v46 = v41 == 0;
    v47 = v46 && v32;
    v48 = v46 & v44;
    if (y >= v30)
    {
      if (!v48)
      {
        if (!v45)
        {
          if (!v47)
          {
            if (v43)
            {
LABEL_68:
              [(SBHIconEditingSettings *)self->_iconEditingSettings clusterSlowestDuration];
              goto LABEL_69;
            }

LABEL_12:

            goto LABEL_64;
          }

          goto LABEL_66;
        }

        goto LABEL_60;
      }
    }

    else if (!v45)
    {
      if (!v48)
      {
        if (!v43)
        {
          if (v47)
          {
            goto LABEL_68;
          }

          goto LABEL_12;
        }

LABEL_66:
        [(SBHIconEditingSettings *)self->_iconEditingSettings clusterMiddleSlowDuration];
        goto LABEL_69;
      }

LABEL_60:
      [(SBHIconEditingSettings *)self->_iconEditingSettings clusterMiddleFastDuration];
      goto LABEL_69;
    }

    [(SBHIconEditingSettings *)self->_iconEditingSettings clusterFastestDuration];
LABEL_69:
    v14 = v49;
    goto LABEL_12;
  }

LABEL_64:
  iconInsertionAnimationOriginatingEdge = [viewCopy iconInsertionAnimationOriginatingEdge];
  v51 = MEMORY[0x1E69DD250];
  var7 = parameters->var7;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __116__SBIconListViewClusterAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
  v60[3] = &unk_1E808F628;
  v53 = *&parameters->var2.continuousCornerRadius;
  v67 = *&parameters->var2.size.height;
  v68 = v53;
  v54 = *&parameters->var5;
  var4 = parameters->var4;
  v70 = v54;
  v55 = *&parameters->var1;
  var0 = parameters->var0;
  v66 = v55;
  v61 = iconViewCopy;
  v62 = icon;
  v71 = iconInsertionAnimationOriginatingEdge == 1;
  v63 = viewCopy;
  v64 = blockCopy;
  v56 = blockCopy;
  v57 = viewCopy;
  v58 = icon;
  v59 = iconViewCopy;
  [v51 animateWithDuration:var7 delay:v60 usingSpringWithDamping:0 initialSpringVelocity:v14 options:0.0 animations:v16 completion:0.0];
}

void __116__SBIconListViewClusterAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v23 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v23.minimum;
  maximum = v23.maximum;
  preferred = v23.preferred;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __116__SBIconListViewClusterAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2;
  v13[3] = &unk_1E808F628;
  *&v23.maximum = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = *&v23.maximum;
  *&v23.maximum = *(a1 + 144);
  v20 = *(a1 + 128);
  v21 = *&v23.maximum;
  *&v23.maximum = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = *&v23.maximum;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v22 = *(a1 + 160);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v14 = v11;
  v15 = v10;
  *&v10 = minimum;
  *&v11 = maximum;
  *&v12 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114131 updateReason:v13 animations:{*&v10, *&v11, v12}];
}

uint64_t __116__SBIconListViewClusterAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    v2 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __116__SBIconListViewClusterAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3;
    v14[3] = &unk_1E808F600;
    v3 = *(a1 + 32);
    v4 = *(a1 + 112);
    v20 = *(a1 + 96);
    v21 = v4;
    v5 = *(a1 + 144);
    v22 = *(a1 + 128);
    v23 = v5;
    v6 = *(a1 + 80);
    v18 = *(a1 + 64);
    v15 = v3;
    v19 = v6;
    v16 = *(a1 + 40);
    v24 = *(a1 + 160);
    v17 = *(a1 + 48);
    [v2 performWithoutAnimation:v14];
    [*(a1 + 32) setAlpha:1.0];
    [*(a1 + 32) setCenter:{*(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 112);
    v13[2] = *(a1 + 96);
    v13[3] = v9;
    v10 = *(a1 + 144);
    v13[4] = *(a1 + 128);
    v13[5] = v10;
    v11 = *(a1 + 80);
    v13[0] = *(a1 + 64);
    v13[1] = v11;
    [v7 performDefaultAnimatedLayoutUpdateForIconView:v8 withParameters:v13];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __116__SBIconListViewClusterAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setIconContentScale:*(a1 + 72)];
  if (([*(a1 + 32) isDropping] & 1) == 0)
  {
    v2 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v5 = *(a1 + 56);
      v4 = *(a1 + 64);
      if (*(a1 + 152) == 1)
      {
        [*(a1 + 48) bounds];
        v4 = v4 + v6;
      }

      else
      {
        v7 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
        [*(a1 + 48) bounds];
        v9 = -v8;
        if (v7 != 1)
        {
          v9 = v8;
        }

        v5 = v5 + v9;
      }

      v10 = *(a1 + 32);

      [v10 setCenter:{v5, v4}];
    }
  }
}

- (void)iconListView:(id)view wantsAnimatedRemovalForIconViews:(id)views completionHandler:(id)handler
{
  viewCopy = view;
  viewsCopy = views;
  handlerCopy = handler;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDuration];
  v12 = v11;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDampingRatio];
  v14 = v13;
  v15 = [viewCopy iconRemovalAnimationDestinationEdge] == 1;
  v16 = MEMORY[0x1E69DD250];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__SBIconListViewClusterAnimator_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke;
  v22[3] = &unk_1E808F650;
  v23 = viewsCopy;
  selfCopy = self;
  v26 = v15;
  v25 = viewCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__SBIconListViewClusterAnimator_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke_2;
  v20[3] = &unk_1E808A0B8;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = viewCopy;
  v19 = viewsCopy;
  [v16 animateWithDuration:4 delay:v22 usingSpringWithDamping:v20 initialSpringVelocity:v12 options:0.0 animations:v14 completion:0.0];
}

void __97__SBIconListViewClusterAnimator_iconListView_wantsAnimatedRemovalForIconViews_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [v6 icon];
        v8 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [v6 setAlpha:0.0];
        }

        else
        {
          [v6 center];
          v11 = v10;
          v13 = v12;
          v14 = *(*(a1 + 40) + 16);
          v15 = [v7 uniqueIdentifier];
          v16 = [v14 objectForKey:v15];
          v17 = [v16 unsignedIntegerValue];

          if (v17 == 1)
          {
            v18 = -1.0;
          }

          else
          {
            v18 = 1.0;
          }

          if (*(a1 + 56) == 1)
          {
            [*(a1 + 48) bounds];
            v13 = v13 + v19 * v18;
          }

          else
          {
            v20 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
            [*(a1 + 48) bounds];
            v22 = -v21;
            if (v20 != 1)
            {
              v22 = v21;
            }

            v11 = v11 + v18 * v22;
          }

          [v6 setCenter:{v11, v13}];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v3);
  }
}

@end