@interface SBCoplanarSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBCoplanarSwitcherModifier)initWithActiveAppLayout:(id)layout;
- (double)scaleForIndex:(unint64_t)index;
- (int64_t)_indexOfActiveAppLayout;
- (uint64_t)activeAppLayout;
- (void)setActiveAppLayout:(uint64_t)layout;
@end

@implementation SBCoplanarSwitcherModifier

- (int64_t)_indexOfActiveAppLayout
{
  if (!self->_activeAppLayout)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  appLayouts = [(SBCoplanarSwitcherModifier *)self appLayouts];
  v4 = [appLayouts indexOfObject:self->_activeAppLayout];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    desktopSpaceDisplayItems = [(SBCoplanarSwitcherModifier *)self desktopSpaceDisplayItems];
    if ([desktopSpaceDisplayItems count] && -[SBAppLayout containsAllItemsFromSet:](self->_activeAppLayout, "containsAllItemsFromSet:", desktopSpaceDisplayItems))
    {
      activeAppLayout = self->_activeAppLayout;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __53__SBCoplanarSwitcherModifier__indexOfActiveAppLayout__block_invoke;
      v10[3] = &unk_2783A8C90;
      v11 = desktopSpaceDisplayItems;
      v7 = [(SBAppLayout *)activeAppLayout appLayoutWithItemsPassingTest:v10];
      if (v7)
      {
        appLayouts2 = [(SBCoplanarSwitcherModifier *)self appLayouts];
        v4 = [appLayouts2 indexOfObject:v7];
      }

      else
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v4;
}

- (SBCoplanarSwitcherModifier)initWithActiveAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBCoplanarSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeAppLayout, layout);
    v7->_scale = 1.0;
    v7->_spacingType = 0;
    v7->_usesContainerViewBoundsAsActiveFrame = 0;
  }

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  windowManagementContext = [(SBCoplanarSwitcherModifier *)self windowManagementContext];
  if (([windowManagementContext isFlexibleWindowingEnabled] & 1) != 0 || objc_msgSend(windowManagementContext, "isAutomaticStageCreationEnabled"))
  {
    if (([(SBCoplanarSwitcherModifier *)self prefersStripHiddenAndDisabled]& 1) == 0)
    {
      v55.receiver = self;
      v55.super_class = SBCoplanarSwitcherModifier;
      [(SBCoplanarSwitcherModifier *)&v55 frameForIndex:index];
      x = v7;
      y = v9;
      width = v11;
      height = v13;
      goto LABEL_39;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  appLayouts = [(SBCoplanarSwitcherModifier *)self appLayouts];
  v16 = [appLayouts objectAtIndex:index];

  if ([(SBAppLayout *)self->_ignoredAppLayout isEqual:v16])
  {
    v54.receiver = self;
    v54.super_class = SBCoplanarSwitcherModifier;
    [(SBCoplanarSwitcherModifier *)&v54 frameForIndex:index];
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  else
  {
    [(SBCoplanarSwitcherModifier *)self containerViewBounds];
    v24 = v23;
    if ((v6 & self->_usesContainerViewBoundsAsActiveFrame) == 1)
    {
      y = v21;
      height = v22;
      UIRectGetCenter();
      x = v25 + v24 * -0.5;
      width = v24;
    }

    else
    {
      v53.receiver = self;
      v53.super_class = SBCoplanarSwitcherModifier;
      [(SBCoplanarSwitcherModifier *)&v53 frameForIndex:index];
      x = v26;
      y = v27;
      width = v28;
      height = v29;
    }

    if (![(SBAppLayout *)self->_activeAppLayout isOrContainsAppLayout:v16])
    {
      v30 = [(SBCoplanarSwitcherModifier *)self appLayoutContainingAppLayout:v16];
      v31 = [v30 isOrContainsAppLayout:self->_activeAppLayout];

      if ((v31 & 1) == 0)
      {
        _indexOfActiveAppLayout = [(SBCoplanarSwitcherModifier *)self _indexOfActiveAppLayout];
        if (_indexOfActiveAppLayout == 0x7FFFFFFFFFFFFFFFLL)
        {
          desktopSpaceDisplayItems = [(SBCoplanarSwitcherModifier *)self desktopSpaceDisplayItems];
          if ([desktopSpaceDisplayItems count] && (objc_msgSend(v16, "containsAllItemsFromSet:", desktopSpaceDisplayItems) & 1) != 0)
          {
            v34 = 1;
          }

          else
          {
            v34 = ~index;
          }
        }

        else
        {
          v34 = _indexOfActiveAppLayout - index;
        }

        if ([(SBCoplanarSwitcherModifier *)self isRTLEnabled])
        {
          v35 = -v34;
        }

        else
        {
          v35 = v34;
        }

        switcherSettings = [(SBCoplanarSwitcherModifier *)self switcherSettings];
        if ([(SBCoplanarSwitcherModifier *)self isDevicePad])
        {
          [switcherSettings coplanarSpacingPad];
        }

        else
        {
          [switcherSettings coplanarSpacingPhone];
        }

        v38 = v37;
        if (v6)
        {
          v39 = (width + v37) * self->_scale * v35;
        }

        else
        {
          v40 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v16];
          [v40 boundingBox];
          x = v41;
          y = v42;
          width = v43;
          height = v44;

          v45 = (v24 + v38) * v35;
          if (v35 < 1)
          {
            v46 = v45 + v24 - (x + width);
          }

          else
          {
            v46 = v45 - x;
          }

          v39 = v46 * self->_scale;
        }

        if (self->_spacingType == 1)
        {
          [(SBCoplanarSwitcherModifier *)self _offscreenSpacing];
          v48 = 1.0;
          if (v35 < 0)
          {
            v48 = -1.0;
          }

          v39 = v39 + v47 * v48;
        }

        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        v57 = CGRectOffset(v56, v39, 0.0);
        x = v57.origin.x;
        y = v57.origin.y;
        width = v57.size.width;
        height = v57.size.height;
      }
    }
  }

LABEL_39:
  v49 = x;
  v50 = y;
  v51 = width;
  v52 = height;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  windowManagementContext = [(SBCoplanarSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isAutomaticStageCreationEnabled] & 1) == 0 && !objc_msgSend(windowManagementContext, "isFlexibleWindowingEnabled") || (-[SBCoplanarSwitcherModifier prefersStripHiddenAndDisabled](self, "prefersStripHiddenAndDisabled"))
  {
    appLayouts = [(SBCoplanarSwitcherModifier *)self appLayouts];
    v7 = [appLayouts objectAtIndex:index];

    if ([(SBAppLayout *)self->_ignoredAppLayout isEqual:v7])
    {
      [(SBCoplanarSwitcherModifier *)&v13 scaleForIndex:index, v12.receiver, v12.super_class, self, SBCoplanarSwitcherModifier];
    }

    else
    {
      if (![(SBCoplanarSwitcherModifier *)self isSystemAssistantExperienceEnabled]|| ![(SBCoplanarSwitcherModifier *)self assistantPresentationState])
      {
        scale = self->_scale;
        goto LABEL_12;
      }

      [(SBCoplanarSwitcherModifier *)&v12 scaleForIndex:index, self, SBCoplanarSwitcherModifier, v13.receiver, v13.super_class];
    }

    scale = v8;
LABEL_12:

    goto LABEL_13;
  }

  v14.receiver = self;
  v14.super_class = SBCoplanarSwitcherModifier;
  [(SBCoplanarSwitcherModifier *)&v14 scaleForIndex:index];
  scale = v9;
LABEL_13:

  return scale;
}

- (uint64_t)activeAppLayout
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

- (void)setActiveAppLayout:(uint64_t)layout
{
  if (layout)
  {
    objc_storeStrong((layout + 160), a2);
  }
}

@end