@interface PKPaymentSetupProductsSectionNearbyFactory
+ (BOOL)_itemsContainRegionData:(id)a3;
+ (id)_createNearbySectionFromCandidates:(id)a3;
+ (id)_polygonFromListItem:(id)a3;
+ (id)_regionalListItemsUsingContext:(id)a3 listItems:(id)a4;
+ (id)_sortedItemsBasedUponProximityUsingContext:(id)a3 listItems:(id)a4;
+ (id)generateSectionWithDefaultSortingForItems:(id)a3 withContext:(id)a4;
+ (void)_sortExternalProducts:(id)a3 withMapping:(id)a4;
@end

@implementation PKPaymentSetupProductsSectionNearbyFactory

+ (id)generateSectionWithDefaultSortingForItems:(id)a3 withContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 location];
  if (v8 && (v9 = v8, v10 = [a1 _itemsContainRegionData:v6], v9, v10))
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_debug_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEBUG, "Nearby: Calculating nearby products for %@", &v19, 0xCu);
    }

    v12 = PKLocalizedString(&cfstr_Nearby.isa);
    v13 = [[PKPaymentSetupProductsSectionListSection alloc] initWithIdentifier:v12];
    v14 = [a1 _regionalListItemsUsingContext:v7 listItems:v6];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v14 count];
      v19 = 134217984;
      v20 = v17;
      _os_log_debug_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEBUG, "Nearby: Found %lu products in user's current region", &v19, 0xCu);
    }

    v15 = [a1 _sortedItemsBasedUponProximityUsingContext:v7 listItems:v14];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v15 count];
      v19 = 134217984;
      v20 = v18;
      _os_log_debug_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEBUG, "Nearby: Found %lu nearby products", &v19, 0xCu);
    }

    [(PKPaymentSetupProductsSectionListSection *)v13 setSectionListItems:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_sortedItemsBasedUponProximityUsingContext:(id)a3 listItems:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 pk_objectsPassingTest:&__block_literal_global_258];
  v8 = [v7 pk_objectsPassingTest:&__block_literal_global_18_1];
  v9 = [v8 mutableCopy];
  [a1 _sortContainedProducts:v9];
  if ([v9 count] < 3)
  {
    v46 = v8;
    v48 = v6;
    v11 = [v6 location];
    [v11 coordinate];
    v13 = v12;
    v15 = v14;

    v47 = v7;
    v16 = [v7 pk_arrayByRemovingObjectsInArray:v9];
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v63 + 1) + 8 * i);
          v24 = [v23 identifier];
          v25 = [a1 _polygonFromListItem:v23];
          [v17 safelySetObject:v25 forKey:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v20);
    }

    v45 = v9;

    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v27 = v18;
    v28 = [v27 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (!v28)
    {
LABEL_28:

      v39 = [v52 mutableCopy];
      [a1 _sortContainedProducts:v39];
      v9 = v45;
      [v45 addObjectsFromArray:v39];
      if ([v45 count] < 3)
      {
        v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __99__PKPaymentSetupProductsSectionNearbyFactory__sortedItemsBasedUponProximityUsingContext_listItems___block_invoke_21;
        v53[3] = &unk_1E8026FC0;
        v56 = v15;
        v57 = v13;
        v54 = v17;
        v55 = v40;
        v41 = v40;
        v42 = [v26 pk_objectsPassingTest:v53];
        v43 = [v42 mutableCopy];
        [a1 _sortExternalProducts:v43 withMapping:v41];
        [v45 addObjectsFromArray:v43];
        v10 = [a1 _createNearbySectionFromCandidates:v45];
      }

      else
      {
        v10 = [a1 _createNearbySectionFromCandidates:v45];
      }

      v7 = v47;
      v6 = v48;
      v8 = v46;

      goto LABEL_32;
    }

    v29 = v28;
    v30 = *v60;
LABEL_12:
    v31 = 0;
    while (1)
    {
      if (*v60 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v59 + 1) + 8 * v31);
      v33 = [v32 identifier];
      v34 = [v17 objectForKey:v33];

      v58 = 0;
      if (v34)
      {
        if ([v34 containsPoint:&v58 inExclusionaryRegion:{v15, v13}])
        {
          v35 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v50 = [v32 product];
            v49 = [v50 productIdentifier];
            *buf = 138412290;
            v68 = v49;
            _os_log_debug_impl(&dword_1BD026000, v35, OS_LOG_TYPE_DEBUG, "Nearby: Product inside inside region - %@", buf, 0xCu);
          }

          v36 = v52;
          goto LABEL_25;
        }

        if (v58)
        {
          v37 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v51 = [v32 product];
            v38 = [v51 productIdentifier];
            *buf = 138412290;
            v68 = v38;
            _os_log_debug_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEBUG, "Nearby: Product inside exclusionary region - %@", buf, 0xCu);
          }

          goto LABEL_26;
        }
      }

      v36 = v26;
LABEL_25:
      [v36 addObject:v32];
LABEL_26:

      if (v29 == ++v31)
      {
        v29 = [v27 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (!v29)
        {
          goto LABEL_28;
        }

        goto LABEL_12;
      }
    }
  }

  v10 = [a1 _createNearbySectionFromCandidates:v9];
LABEL_32:

  return v10;
}

BOOL __99__PKPaymentSetupProductsSectionNearbyFactory__sortedItemsBasedUponProximityUsingContext_listItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 product];
  v3 = [v2 regionData];
  v4 = v3 != 0;

  return v4;
}

uint64_t __99__PKPaymentSetupProductsSectionNearbyFactory__sortedItemsBasedUponProximityUsingContext_listItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 product];
  v3 = [v2 regionData];

  v4 = [v3 isPersistent];
  return v4;
}

BOOL __99__PKPaymentSetupProductsSectionNearbyFactory__sortedItemsBasedUponProximityUsingContext_listItems___block_invoke_21(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [v6 closestDistanceToPoint:{*(a1 + 48), *(a1 + 56)}];
    v8 = v7;
    v9 = [v3 product];
    v10 = [v9 regionData];
    [v10 maximumMatchingDistance];
    v12 = v11;

    v13 = PKLogFacilityTypeGetObject();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    v15 = v8 < v12;
    if (v8 >= v12)
    {
      if (!v14)
      {
        goto LABEL_9;
      }

      v21 = [v3 product];
      v17 = [v21 productIdentifier];
      v22 = 138412802;
      v23 = v17;
      v24 = 2048;
      v25 = v8;
      v26 = 2048;
      v27 = v12;
      _os_log_debug_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEBUG, "Nearby: Product %@ discarded because it is %.1fkm away with a max distance of %.1fkm", &v22, 0x20u);
    }

    else
    {
      if (v14)
      {
        v19 = [v3 product];
        v20 = [v19 productIdentifier];
        v22 = 138412546;
        v23 = v20;
        v24 = 2048;
        v25 = v8;
        _os_log_debug_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEBUG, "Nearby: Product %@ is %.1fkm away", &v22, 0x16u);
      }

      v16 = *(a1 + 40);
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v17 = [v3 identifier];
      [v16 safelySetObject:v13 forKey:v17];
    }

LABEL_9:
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

uint64_t __69__PKPaymentSetupProductsSectionNearbyFactory__sortContainedProducts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 product];
  v7 = [v6 regionData];
  [v7 priority];

  v8 = [v5 product];
  v9 = [v8 regionData];
  [v9 priority];

  v10 = PKComparePaymentSetupProductRegionPriority();
  if (!v10)
  {
    v11 = [v4 title];
    v12 = [v5 title];
    v10 = [v11 localizedCaseInsensitiveCompare:v12];
  }

  return v10;
}

+ (void)_sortExternalProducts:(id)a3 withMapping:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPaymentSetupProductsSectionNearbyFactory__sortExternalProducts_withMapping___block_invoke;
  v7[3] = &unk_1E8013810;
  v8 = v5;
  v6 = v5;
  [a3 sortUsingComparator:v7];
}

uint64_t __80__PKPaymentSetupProductsSectionNearbyFactory__sortExternalProducts_withMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 identifier];
  v9 = [v7 objectForKey:v8];
  [v9 doubleValue];
  v11 = v10;

  v12 = *(a1 + 32);
  v13 = [v6 identifier];
  v14 = [v12 objectForKey:v13];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v5 product];
  v18 = [v17 regionData];
  [v18 priority];

  v19 = [v6 product];
  v20 = [v19 regionData];
  [v20 priority];

  if (v11 >= v16)
  {
    if (v16 >= v11)
    {
      v21 = PKComparePaymentSetupProductRegionPriority();
      if (!v21)
      {
        v22 = [v5 title];
        v23 = [v6 title];
        v21 = [v22 localizedCaseInsensitiveCompare:v23];
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = -1;
  }

  return v21;
}

+ (BOOL)_itemsContainRegionData:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) product];
        v8 = [v7 regionData];

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)_polygonFromListItem:(id)a3
{
  v3 = [a3 product];
  v4 = [v3 regionData];

  if (([v4 isPersistent] & 1) != 0 || (objc_msgSend(v4, "inclusionaryZones"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v10 = 0;
  }

  else
  {
    v6 = [v4 inclusionaryZones];
    v7 = [v6 pk_arrayByApplyingBlock:&__block_literal_global_28];

    v8 = [v4 exclusionaryZones];

    if (v8)
    {
      v9 = [v4 exclusionaryZones];
      v8 = [v9 pk_arrayByApplyingBlock:&__block_literal_global_34];
    }

    v10 = [[PKPaymentSetupProductRegionDataComplexPolygon alloc] initWithInclusionaryZones:v7 exclusionaryZones:v8];
  }

  return v10;
}

uint64_t __67__PKPaymentSetupProductsSectionNearbyFactory__polygonFromListItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 longitude];
  v4 = v3;
  [v2 latitude];
  v6 = v5;

  v7 = MEMORY[0x1E696B098];

  return [v7 valueWithCGPoint:{v4, v6}];
}

uint64_t __67__PKPaymentSetupProductsSectionNearbyFactory__polygonFromListItem___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 longitude];
  v4 = v3;
  [v2 latitude];
  v6 = v5;

  v7 = MEMORY[0x1E696B098];

  return [v7 valueWithCGPoint:{v4, v6}];
}

+ (id)_createNearbySectionFromCandidates:(id)a3
{
  v3 = a3;
  if ([v3 count] <= 3)
  {
    v4 = [v3 count];
  }

  else
  {
    v4 = 3;
  }

  v5 = [v3 subarrayWithRange:{0, v4}];
  v6 = [v5 mutableCopy];

  return v6;
}

+ (id)_regionalListItemsUsingContext:(id)a3 listItems:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 primaryRegion];
  v8 = [v6 secondaryRegion];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PKPaymentSetupProductsSectionNearbyFactory__regionalListItemsUsingContext_listItems___block_invoke;
  v13[3] = &unk_1E8027028;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [v5 pk_objectsPassingTest:v13];

  return v11;
}

uint64_t __87__PKPaymentSetupProductsSectionNearbyFactory__regionalListItemsUsingContext_listItems___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [a2 product];
  v4 = [v3 regions];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = v9;
          v12 = v10;
          v13 = v12;
          if (v11 == v12)
          {
            goto LABEL_21;
          }

          if (v11)
          {
            v14 = [v11 isEqualToString:v12];

            if (v14)
            {
              goto LABEL_22;
            }
          }

          else
          {
          }
        }

        v15 = *(a1 + 40);
        if (v15)
        {
          v16 = v9;
          v17 = v15;
          v13 = v17;
          if (v16 == v17)
          {
LABEL_21:

LABEL_22:
            v19 = 1;
            goto LABEL_24;
          }

          if (v16)
          {
            v18 = [v16 isEqualToString:v17];

            if (v18)
            {
              goto LABEL_22;
            }
          }

          else
          {
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v19 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_24:

  return v19;
}

@end