@interface UITabOutlineView
@end

@implementation UITabOutlineView

id __41___UITabOutlineView__createViewHierarchy__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:3];
  v7 = +[UIColor clearColor];
  [(UICollectionLayoutListConfiguration *)v6 setBackgroundColor:v7];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_2;
  v30[3] = &unk_1E712BF90;
  objc_copyWeak(&v31, (a1 + 32));
  [(UICollectionLayoutListConfiguration *)v6 setLeadingSwipeActionsConfigurationProvider:v30];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __41___UITabOutlineView__createViewHierarchy__block_invoke_3;
  v28 = &unk_1E712BF90;
  objc_copyWeak(&v29, (a1 + 32));
  [(UICollectionLayoutListConfiguration *)v6 setTrailingSwipeActionsConfigurationProvider:&v25];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[59];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 isEditing];

  if (a2 >= 1)
  {
    [(UICollectionLayoutListConfiguration *)v6 setHeaderMode:2];
  }

  if ((v12 & 1) == 0)
  {
    if (a2 || !v9)
    {
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = [v9 _headerContentConfiguration];
      v14 = v13 == 0;

      if (!v14)
      {
        [(UICollectionLayoutListConfiguration *)v6 setHeaderMode:1];
      }
    }

    v15 = [v9 _footerContentConfiguration];
    if (v15)
    {
      v16 = [v9[72] numberOfSections] - 1 == a2;

      if (v16)
      {
        [(UICollectionLayoutListConfiguration *)v6 setFooterMode:1];
      }
    }
  }

LABEL_14:
  v17 = [off_1E70ECB38 sectionWithListConfiguration:v6 layoutEnvironment:v5];
  v18 = v17;
  if (v12)
  {
    [v17 setInterGroupSpacing:2.0];
    if (!a2 && *(v9 + 416) == 1)
    {
      v19 = [off_1E70ECB18 fractionalWidthDimension:1.0];
      v20 = [off_1E70ECB18 estimatedDimension:32.0];
      v21 = [off_1E70ECB40 sizeWithWidthDimension:v19 heightDimension:v20];

      v22 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v21 elementKind:@"UITabOutlineView.EditHeader" alignment:1];
      v32[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [v18 setBoundarySupplementaryItems:v23];
    }
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);

  return v18;
}

id __41___UITabOutlineView__createViewHierarchy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _leadingSwipeActionsConfigurationForItemAtIndexPath:v3];

  return v5;
}

id __41___UITabOutlineView__createViewHierarchy__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _trailingSwipeActionsConfigurationForItemAtIndexPath:v3];

  return v5;
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_5;
  v2[3] = &unk_1E70F3590;
  v2[4] = WeakRetained;
  [UIView _animateByRetargetingAnimations:v2 completion:0];
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      v7[876] &= ~1u;
    }

    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_7;
    v11[3] = &unk_1E712BFB8;
    objc_copyWeak(&v13, (a1 + 32));
    objc_copyWeak(&v14, &location);
    v12 = v8;
    [v7 setConfigurationUpdateHandler:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = v7;
  if (WeakRetained && v7)
  {
    [WeakRetained _updateConfigurationForCell:v9 inState:v5 content:v7 indexPath:*(a1 + 32)];
  }
}

id __41___UITabOutlineView__createViewHierarchy__block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained contentByIdentifier];
    v13 = [v12 objectForKey:v9];

    v14 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + 32) forIndexPath:v8 item:v13];
    [v14 setIndentationLevel:{objc_msgSend(v11, "_indentationLevelForItemIdentifier:indexPath:", v9, v8)}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v5 isEqualToString:@"UICollectionElementKindSectionHeader"])
    {
      v7 = [WeakRetained _headerContentConfiguration];
LABEL_6:
      v8 = v7;
LABEL_7:
      [v16 setContentConfiguration:v8];

      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"UICollectionElementKindSectionFooter"])
    {
      v7 = [WeakRetained _footerContentConfiguration];
      goto LABEL_6;
    }

    if ([v5 isEqualToString:@"UITabOutlineView.EditHeader"])
    {
      v8 = +[UIListContentConfiguration cellConfiguration];
      v9 = _UINSLocalizedStringWithDefaultValue(@"Drag to customize items in the sidebar or tab bar.", @"Drag to customize items in the sidebar or tab bar.");
      [v8 setText:v9];

      v10 = +[UIColor secondaryLabelColor];
      v11 = [v8 textProperties];
      [v11 setColor:v10];

      v12 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
      v13 = [v8 textProperties];
      [v13 setFont:v12];

      v14 = [v8 textProperties];
      [v14 setNumberOfLines:0];

      v15 = [v8 textProperties];
      [v15 setAdjustsFontSizeToFitWidth:0];

      goto LABEL_7;
    }
  }

LABEL_8:
}

id __41___UITabOutlineView__createViewHierarchy__block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"UICollectionElementKindSectionHeader"])
  {
    v10 = 32;
LABEL_7:
    v11 = [v7 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v10) forIndexPath:v9];
    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"UICollectionElementKindSectionFooter"])
  {
    v10 = 40;
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"UITabOutlineView.EditHeader"])
  {
    v10 = 48;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

uint64_t __41___UITabOutlineView__createViewHierarchy__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained contentByIdentifier];
  v6 = [v5 objectForKey:v3];

  v7 = [v6 tab];

  if (v7 && (!WeakRetained ? (v8 = 0) : (v8 = WeakRetained[59]), [v8 isEditing]))
  {
    v9 = [v7 _canBeReordered];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeTransaction];
  if (WeakRetained)
  {
    v3 = WeakRetained[59];
  }

  else
  {
    v3 = 0;
  }

  if ([v3 isEditing] && !v2)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = v4;
    if (WeakRetained)
    {
      v6 = WeakRetained[59];
    }

    else
    {
      v6 = 0;
    }

    [v4 handleFailureInMethod:*(a1 + 40) object:v6 file:? lineNumber:? description:?];
  }

  else if (v2)
  {
    goto LABEL_7;
  }

  [WeakRetained _activateNewSidebarTransaction];
LABEL_7:
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_13(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained activeTransaction];
  v5 = v11;
  v6 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = v8;
    if (WeakRetained)
    {
      v10 = WeakRetained[59];
    }

    else
    {
      v10 = 0;
    }

    [v8 handleFailureInMethod:*(a1 + 40) object:WeakRetained file:@"_UITabOutlineView.m" lineNumber:594 description:{@"UIKit internal error: UITabBarController sidebar received a did reorder callback, but we don't have an active transaction. Tab model: %@", v10}];

    v5 = v11;
  }

  [v6 updateUsingTransaction:v5];
  if (WeakRetained)
  {
    v7 = WeakRetained[59];
  }

  else
  {
    v7 = 0;
  }

  if (([v7 isEditing] & 1) == 0)
  {
    [WeakRetained _commitCurrentSidebarTransaction];
  }
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained editingCollapsedGroupIdentifiers];
    [v6 removeObject:v3];

    v7 = [v5 collapsedGroupIdentifiers];
    [v7 removeObject:v3];

    v8 = v5[59];
    v9 = [v8 customizationStore];
    v10 = [v5 collapsedGroupIdentifiers];
    v11 = [v5 allGroupIdentifiers];

    [v9 setCollapsedGroupIdentifiers:v10 availableIdentifiers:v11];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_15;
    block[3] = &unk_1E70F3590;
    block[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __41___UITabOutlineView__createViewHierarchy__block_invoke_16(uint64_t a1, void *a2)
{
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dataSource];
    v7 = [v6 snapshot];

    v8 = [v5 editingCollapsedGroupIdentifiers];
    [v8 addObject:v22];

    v9 = [v5 collapsedGroupIdentifiers];
    [v9 addObject:v22];

    v10 = [v5[59] customizationStore];
    v11 = [v5 collapsedGroupIdentifiers];
    v12 = [v5 allGroupIdentifiers];
    [v10 setCollapsedGroupIdentifiers:v11 availableIdentifiers:v12];

    v13 = [v5 collectionView];
    v14 = [v13 indexPathsForSelectedItems];

    if (([v5 isEditing] & 1) == 0 && objc_msgSend(v14, "count") == 1)
    {
      v15 = [v7 sectionIdentifierForSectionContainingItemIdentifier:v22];
      v16 = [v7 indexOfSectionIdentifier:v15];
      v17 = [v14 objectAtIndexedSubscript:0];
      if ([v17 section] == v16)
      {
        v18 = [v5 dataSource];
        v19 = [v18 itemIdentifierForIndexPath:v17];

        v20 = [v5 dataSource];
        v21 = [v20 snapshotForSection:v15];

        if (v19 && [v21 containsItem:v19])
        {
          objc_storeStrong(v5 + 54, a2);
        }
      }
    }
  }
}

void __40___UITabOutlineView__updateSidebarStyle__block_invoke(uint64_t a1, void (**a2)(id), void *a3)
{
  v12 = a3;
  v5 = a2 + 2;
  v4 = a2[2];
  v6 = a2;
  v7 = v4();
  v8 = [(UITraitCollection *)v7 _incrementedBackgroundLevel];

  v9 = (*v5)(v6);

  v10 = [v9 userInterfaceLevel];
  if (v10 != v8)
  {
    v11 = v12[2]();
    [v11 setUserInterfaceLevel:v8];
  }
}

void __68___UITabOutlineView__dataSourceUpdateGroupCompletionCreateIfNeeded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[78];
    WeakRetained[78] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __40___UITabOutlineView_updateBottomBarView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setNeedsLayout];
    v3 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
    v2 = v4;
    if (v3)
    {
      [v4 layoutIfNeeded];
      v2 = v4;
    }
  }
}

void __51___UITabOutlineView__tabModel_tabContentDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained updatedTabsDuringApplySnapshot];
    v3 = v4[79];
    v4[79] = 0;

    if ([v2 count])
    {
      [v4 _reconfigureItemsInDataSourceForTabs:v2 animated:1];
    }

    WeakRetained = v4;
  }
}

void __45___UITabOutlineView__updateEditBarButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((*(WeakRetained + 411) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained[59] setEditing:(*(a1 + 40) & 1) == 0];
    WeakRetained = v3;
  }
}

void __45___UITabOutlineView__updateEditBarButtonItem__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBar];
  [v1 layoutIfNeeded];
}

void __41___UITabOutlineView_setEditing_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) collectionView];
  [v3 setEditing:v2];

  v6 = [*(a1 + 32) dataSource];
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 snapshot];
  [v6 applySnapshot:v5 animatingDifferences:1];
}

void __41___UITabOutlineView_setEditing_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) collectionView];
  [v3 setEditing:v2];

  v6 = [*(a1 + 32) dataSource];
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 snapshot];
  [v6 applySnapshot:v5 animatingDifferences:0];
}

void __53___UITabOutlineView__commitCurrentSidebarTransaction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activeTransaction];
  [v1 commit];
}

void __38___UITabOutlineView__tabsByIdentifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 tab];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 tab];
    [v7 setObject:v8 forKey:v9];
  }
}

uint64_t __50___UITabOutlineView__animateSelection_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) complete];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __46___UITabOutlineView__highlightGroupCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[89];
    WeakRetained[89] = 0;
    v3 = WeakRetained;

    [v3 _setShowLensView:0];
    WeakRetained = v3;
  }
}

void __50___UITabOutlineView__updateLensViewFrameAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 40) bounds];
  [*(a1 + 32) setBounds:?];
  v2 = *(a1 + 40);
  [v2 bounds];
  [v2 convertPoint:*(a1 + 48) toView:{v4 + v3 * 0.5, v6 + v5 * 0.5}];
  [*(a1 + 32) setCenter:?];
  v8 = [*(a1 + 40) backgroundConfiguration];
  v7 = [v8 backgroundColor];
  [*(a1 + 32) setControlBackgroundColor:v7];
}

void __36___UITabOutlineView__setLensActive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) lensView];
  [v2 setActive:v1];
}

void __36___UITabOutlineView__setLensActive___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (a3 & 1) == 0)
  {
    WeakRetained[418] = 0;
  }
}

void __61___UITabOutlineView_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 472);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 isEditing])
  {
    v4 = [*(a1 + 32) activeTransaction];

    if (!v4)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"_UITabOutlineView.m" lineNumber:2300 description:@"Cannot edit an item without an active transaction"];
    }

    v5 = [*(a1 + 32) activeTransaction];
    [v5 updateTab:*(a1 + 40) toHidden:0];

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 472);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 40);

    [v7 visibilityDidChangeForTab:v8 editing:1];
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 472);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 40);
    [v10 selectTabInSidebar:v11 notifyOnReselection:1];
    v13 = [(_UITabOutlineView *)*(a1 + 32) delegate];
    [v13 outlineView:*(a1 + 32) didSelectTab:v11];
  }
}

uint64_t __63___UITabOutlineView_collectionView_didDeselectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeTransaction];
  [v2 updateTab:*(a1 + 40) toHidden:1];

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 472);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);

  return [v4 visibilityDidChangeForTab:v5 editing:1];
}

void __71___UITabOutlineView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 488);
  }

  else
  {
    v5 = 0;
  }

  v13 = v3;
  [(UITabBarControllerSidebar *)v5 _willDisplayTab:v3];
  v6 = *(a1 + 32);
  if ((v6[450] & 1) != 0 || ([v6 updatedTabsDuringApplySnapshot], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v13), v7, v8))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      *(v9 + 876) &= ~1u;
    }

    v10 = [*(a1 + 48) configurationState];
    v11 = [_UITabSidebarContent contentForTab:v13];
    [*(a1 + 32) _updateConfigurationForCell:*(a1 + 40) inState:v10 content:v11 indexPath:*(a1 + 56)];
    v12 = [*(a1 + 32) updatedTabsDuringApplySnapshot];
    [v12 removeObject:v13];
  }
}

@end