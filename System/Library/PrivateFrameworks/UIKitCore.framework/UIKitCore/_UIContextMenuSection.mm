@interface _UIContextMenuSection
+ (id)sectionWithMenu:(id)a3;
- (BOOL)isEqual:(id)a3;
- (int64_t)cellSizeGivenTraits:(id)a3;
@end

@implementation _UIContextMenuSection

+ (id)sectionWithMenu:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  if ([v3 _omitsInlineTitle])
  {
    v7 = *(v4 + 24);
    *(v4 + 24) = &stru_1EFB14550;

    v8 = 0;
  }

  else
  {
    v9 = [v3 title];
    v10 = *(v4 + 24);
    *(v4 + 24) = v9;

    v8 = [v3 _accessoryAction];
  }

  v11 = *(v4 + 32);
  *(v4 + 32) = v8;

  v12 = +[UIDevice currentDevice];
  v13 = _UIContextMenuGetPlatformMetrics([v12 userInterfaceIdiom]);

  v65 = [v13 leadingDecorationMarginAppliesPerSection] ^ 1;
  v14 = [v3 _resolvedElementSize];
  if (([v3 options] & 0x80) != 0)
  {
    v63 = v4;
    if ([v13 supportsLargePaletteMenus])
    {
      v31 = v14;
    }

    else
    {
      v31 = 0;
    }

    v64 = _UIContextMenuCellSizeForElementSize(v31);
    v62 = v13;
    v32 = [v13 gradientMaskingConfiguration];
    v61 = v32 != 0;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v33 = [v3 children];
    v34 = [v33 countByEnumeratingWithState:&v66 objects:v70 count:16];
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
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v66 + 1) + 8 * i);
          v39 = [v38 image];
          if ([v39 _isSymbolImage])
          {
            v40 = [v38 image];
            v41 = [v40 symbolConfiguration];
            v42 = [v41 _colors];
            v43 = [v42 count];

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

        v35 = [v33 countByEnumeratingWithState:&v66 objects:v70 count:16];
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
    v15 = [v13 overrideElementSize];

    if (v15)
    {
      v16 = [v13 overrideElementSize];
      v14 = v16[2](v16, v14);
    }

    v17 = _UIContextMenuCellSizeForElementSize(v14);
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

    if (v19 && ([v3 children], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21))
    {
      v22 = 0;
      do
      {
        v23 = [v3 children];
        v24 = [v23 objectAtIndexedSubscript:v22];

        v25 = [v24 title];
        v26 = [v25 length];
        v27 = v26 != 0;

        if (v26)
        {
          break;
        }

        ++v22;
        v28 = [v3 children];
        v29 = [v28 count];

        v30 = v19 >= v29 ? v29 : v19;
      }

      while (v30 > v22);
    }

    else
    {
      v27 = 0;
    }

    v44 = [v3 children];
    v45 = [v44 count];

    if (v45 <= v19 || ([v3 children], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "count"), v46, v19 >= v47))
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
        v50 = [v3 children];
        v51 = [v50 objectAtIndexedSubscript:v19];

        v52 = [v51 image];

        v53 = v52 != 0;
        v54 = [v51 _isLeaf] ? (objc_msgSend(v51, "state") != 0) | v65 : v65;
        v49 |= v53;

        if (v49 & v54)
        {
          break;
        }

        v65 = v54;
        ++v19;
        v55 = [v3 children];
        v56 = [v55 count];

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
  v59 = [v3 displayPreferences];
  *(v4 + 56) = [v59 maximumNumberOfTitleLines];

  *(v4 + 20) = v49 & 1;
  *(v4 + 21) = v65 & 1;

  return v4;
}

- (int64_t)cellSizeGivenTraits:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuSection *)self preferredCellSize];
  v6 = v5;
  if (self->_overridesCellSizeForLargeText && v5 == 1)
  {
    v8 = [v4 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v8, v9);

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSUUID *)self->_identifier isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end