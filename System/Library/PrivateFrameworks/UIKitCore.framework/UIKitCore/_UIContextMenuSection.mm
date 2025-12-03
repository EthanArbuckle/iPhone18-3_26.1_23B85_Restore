@interface _UIContextMenuSection
+ (id)sectionWithMenu:(id)menu;
- (BOOL)isEqual:(id)equal;
- (int64_t)cellSizeGivenTraits:(id)traits;
@end

@implementation _UIContextMenuSection

+ (id)sectionWithMenu:(id)menu
{
  v71 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  v4 = objc_opt_new();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = *(v4 + 8);
  *(v4 + 8) = uUID;

  if ([menuCopy _omitsInlineTitle])
  {
    v7 = *(v4 + 24);
    *(v4 + 24) = &stru_1EFB14550;

    _accessoryAction = 0;
  }

  else
  {
    title = [menuCopy title];
    v10 = *(v4 + 24);
    *(v4 + 24) = title;

    _accessoryAction = [menuCopy _accessoryAction];
  }

  v11 = *(v4 + 32);
  *(v4 + 32) = _accessoryAction;

  v12 = +[UIDevice currentDevice];
  v13 = _UIContextMenuGetPlatformMetrics([v12 userInterfaceIdiom]);

  v65 = [v13 leadingDecorationMarginAppliesPerSection] ^ 1;
  _resolvedElementSize = [menuCopy _resolvedElementSize];
  if (([menuCopy options] & 0x80) != 0)
  {
    v63 = v4;
    if ([v13 supportsLargePaletteMenus])
    {
      v31 = _resolvedElementSize;
    }

    else
    {
      v31 = 0;
    }

    v64 = _UIContextMenuCellSizeForElementSize(v31);
    v62 = v13;
    gradientMaskingConfiguration = [v13 gradientMaskingConfiguration];
    v61 = gradientMaskingConfiguration != 0;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    children = [menuCopy children];
    v34 = [children countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v67;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v67 != v36)
          {
            objc_enumerationMutation(children);
          }

          v38 = *(*(&v66 + 1) + 8 * i);
          image = [v38 image];
          if ([image _isSymbolImage])
          {
            image2 = [v38 image];
            symbolConfiguration = [image2 symbolConfiguration];
            _colors = [symbolConfiguration _colors];
            v43 = [_colors count];

            if (v43)
            {
              *(v63 + 19) = 1;
              goto LABEL_47;
            }
          }

          else
          {
          }
        }

        v35 = [children countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v35);
    }

LABEL_47:

    v49 = 0;
    v27 = 0;
    v57 = 1;
    v13 = v62;
    v4 = v63;
    v58 = v61;
  }

  else
  {
    overrideElementSize = [v13 overrideElementSize];

    if (overrideElementSize)
    {
      overrideElementSize2 = [v13 overrideElementSize];
      _resolvedElementSize = overrideElementSize2[2](overrideElementSize2, _resolvedElementSize);
    }

    v17 = _UIContextMenuCellSizeForElementSize(_resolvedElementSize);
    v18 = 3;
    if (v17 != 1)
    {
      v18 = 0;
    }

    v64 = v17;
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 4;
    }

    if (v19 && ([menuCopy children], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21))
    {
      v22 = 0;
      do
      {
        children2 = [menuCopy children];
        v24 = [children2 objectAtIndexedSubscript:v22];

        title2 = [v24 title];
        v26 = [title2 length];
        v27 = v26 != 0;

        if (v26)
        {
          break;
        }

        ++v22;
        children3 = [menuCopy children];
        v29 = [children3 count];

        v30 = v19 >= v29 ? v29 : v19;
      }

      while (v30 > v22);
    }

    else
    {
      v27 = 0;
    }

    children4 = [menuCopy children];
    v45 = [children4 count];

    if (v45 <= v19 || ([menuCopy children], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "count"), v46, v19 >= v47))
    {
      v57 = 0;
      v49 = 0;
      v58 = 1;
    }

    else
    {
      v48 = v13;
      v49 = 0;
      while (1)
      {
        children5 = [menuCopy children];
        v51 = [children5 objectAtIndexedSubscript:v19];

        image3 = [v51 image];

        v53 = image3 != 0;
        v54 = [v51 _isLeaf] ? (objc_msgSend(v51, "state") != 0) | v65 : v65;
        v49 |= v53;

        if (v49 & v54)
        {
          break;
        }

        v65 = v54;
        ++v19;
        children6 = [menuCopy children];
        v56 = [children6 count];

        if (v19 >= v56)
        {
          v57 = 0;
          v58 = 1;
          goto LABEL_52;
        }
      }

      v57 = 0;
      v58 = 1;
      LOBYTE(v65) = 1;
      v49 = 1;
LABEL_52:
      v13 = v48;
    }
  }

  *(v4 + 48) = v57;
  *(v4 + 40) = v64;
  *(v4 + 18) = v58;
  *(v4 + 16) = v27;
  displayPreferences = [menuCopy displayPreferences];
  *(v4 + 56) = [displayPreferences maximumNumberOfTitleLines];

  *(v4 + 20) = v49 & 1;
  *(v4 + 21) = v65 & 1;

  return v4;
}

- (int64_t)cellSizeGivenTraits:(id)traits
{
  traitsCopy = traits;
  preferredCellSize = [(_UIContextMenuSection *)self preferredCellSize];
  v6 = preferredCellSize;
  if (self->_overridesCellSizeForLargeText && preferredCellSize == 1)
  {
    preferredContentSizeCategory = [traitsCopy preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(preferredContentSizeCategory, v9);

    if (IsAccessibilityContentSizeCategory)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSUUID *)self->_identifier isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end