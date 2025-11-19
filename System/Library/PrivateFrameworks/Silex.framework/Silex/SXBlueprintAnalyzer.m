@interface SXBlueprintAnalyzer
- (BOOL)componentPlacedAboveComponentBlueprint:(id)a3 blueprint:(id)a4;
- (id)markersFromBlueprint:(id)a3 components:(id)a4 DOMObjectProvider:(id)a5 cursor:(id)a6;
- (void)analyzeBlueprint:(id)a3 DOMObjectProvider:(id)a4 onMarkerFound:(id)a5 then:(id)a6 onEndReached:(id)a7;
- (void)iterateMarkers:(id)a3 onMarkerFound:(id)a4 then:(id)a5 onEndReached:(id)a6;
@end

@implementation SXBlueprintAnalyzer

- (void)analyzeBlueprint:(id)a3 DOMObjectProvider:(id)a4 onMarkerFound:(id)a5 then:(id)a6 onEndReached:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (v12 && a4 && a5 && a6 && a7)
  {
    v13 = a7;
    v14 = a6;
    v15 = a5;
    v16 = a4;
    v17 = objc_opt_new();
    v18 = [v16 components];
    v19 = [(SXBlueprintAnalyzer *)self markersFromBlueprint:v12 components:v18 DOMObjectProvider:v16 cursor:v17];

    v20 = SXInsertionLog;
    if (os_log_type_enabled(SXInsertionLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = 134218240;
      v23 = [v19 count];
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_1D825C000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu marker(s) available for insertion, blueprint=%p", &v22, 0x16u);
    }

    [(SXBlueprintAnalyzer *)self iterateMarkers:v19 onMarkerFound:v15 then:v14 onEndReached:v13];
  }
}

- (void)iterateMarkers:(id)a3 onMarkerFound:(id)a4 then:(id)a5 onEndReached:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 mutableCopy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__SXBlueprintAnalyzer_iterateMarkers_onMarkerFound_then_onEndReached___block_invoke;
  v20[3] = &unk_1E85000D8;
  v21 = v10;
  v22 = v14;
  v23 = self;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v14;
  v18 = v11;
  v19 = v10;
  [v19 enumerateObjectsUsingBlock:v20];
}

void __70__SXBlueprintAnalyzer_iterateMarkers_onMarkerFound_then_onEndReached___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ((*(*(a1 + 56) + 16))(*(a1 + 56), v9, [*(a1 + 32) count] + ~a3) == 1)
  {
    [*(a1 + 40) removeObject:v9];
  }

  v7 = (*(*(a1 + 64) + 16))();
  if (v7 == 2)
  {
    goto LABEL_6;
  }

  if (v7 == 1)
  {
    [*(a1 + 48) iterateMarkers:*(a1 + 40) onMarkerFound:*(a1 + 56) then:*(a1 + 64) onEndReached:*(a1 + 72)];
LABEL_6:
    *a4 = 1;
  }

  v8 = [*(a1 + 32) lastObject];

  if (v8 == v9 && (*(*(a1 + 72) + 16))() == 1)
  {
    [*(a1 + 48) iterateMarkers:*(a1 + 40) onMarkerFound:*(a1 + 56) then:*(a1 + 64) onEndReached:*(a1 + 72)];
    *a4 = 1;
  }
}

- (id)markersFromBlueprint:(id)a3 components:(id)a4 DOMObjectProvider:(id)a5 cursor:(id)a6
{
  v9 = a3;
  v10 = a4;
  v77 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  if ([v10 count])
  {
    v13 = 0;
    v80 = v11;
    v81 = v12;
    v75 = v10;
    v76 = v9;
    while (1)
    {
      v14 = [v10 componentAtIndex:v13];
      v15 = [v14 identifier];
      v16 = [v9 componentBlueprintForComponentIdentifier:v15];

      if (++v13 >= [v10 count])
      {
        v83 = 0;
        v17 = 0;
      }

      else
      {
        v17 = [v10 componentAtIndex:v13];
        v18 = [v17 identifier];
        v83 = [v9 componentBlueprintForComponentIdentifier:v18];
      }

      v85 = v16;
      objc_opt_class();
      v84 = v17;
      v82 = v13;
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_16:
      v36 = [v17 anchor];
      v37 = [v36 targetComponentIdentifier];
      v38 = [v14 identifier];
      if ([v37 isEqualToString:v38])
      {

        v39 = v85;
      }

      else
      {
        v41 = [v14 anchor];
        v42 = [v41 targetComponentIdentifier];
        v43 = [v17 identifier];
        v44 = [v42 isEqualToString:v43];

        v11 = v80;
        v13 = v82;

        v45 = 0x1E84FC000;
        v39 = v85;
        v40 = v83;
        if (v44)
        {
          goto LABEL_25;
        }

        [v83 absoluteFrame];
        MinY = CGRectGetMinY(v87);
        [v85 absoluteFrame];
        MaxY = CGRectGetMaxY(v88);
        v48 = MaxY;
        if (v84)
        {
          if (MinY < MaxY)
          {
            goto LABEL_25;
          }
        }

        if (v83)
        {
          [v83 absoluteFrame];
          v49 = CGRectGetMinY(v89);
          if (v49 < [(SXBlueprintAnalyzerCursor *)v80 highestMaxY])
          {
            goto LABEL_25;
          }
        }

        if ([(SXBlueprintAnalyzer *)self componentPlacedAboveComponentBlueprint:v85 blueprint:v9])
        {
          goto LABEL_25;
        }

        v52 = v81;
        if ([v14 role] == 3)
        {
          v53 = [v85 infoFromLayouting];
          v54 = [v53 objectForKey:@"TextLayouter"];

          v79 = v54;
          v55 = [v54 paragraphRanges];
          v56 = [v55 count];
          if (v56 >= 2)
          {
            v57 = v56;
            for (i = 1; i != v57; ++i)
            {
              v59 = [v55 objectAtIndex:i];
              v60 = [v59 rangeValue];

              [v79 verticalLocationOfCharacterAtIndex:v60];
              v62 = v61;
              [v85 absoluteFrame];
              v63 = v62 + CGRectGetMinY(v91);
              v64 = [SXComponentAnchor alloc];
              v65 = [v14 identifier];
              v66 = [(SXComponentAnchor *)v64 initWithTargetComponentIdentifier:v65];

              [(SXComponentAnchor *)v66 setRange:v60, 1];
              v67 = [SXBlueprintMarker alloc];
              v68 = [(SXBlueprintAnalyzerCursor *)v80 path];
              v69 = [(SXBlueprintMarker *)v67 initWithLeadingComponent:v14 trailingComponent:v84 approximateLocation:v68 path:0.0, v63];

              [(SXBlueprintMarker *)v69 setComponentAnchor:v66];
              [v81 addObject:v69];
            }
          }

          v11 = v80;
          v52 = v81;
          v13 = v82;
          v45 = 0x1E84FC000uLL;
          v39 = v85;
        }

        v70 = objc_alloc(*(v45 + 1192));
        v71 = [(SXBlueprintAnalyzerCursor *)v11 highestMaxY];
        if (v71 >= v48)
        {
          v48 = v71;
        }

        v72 = [(SXBlueprintAnalyzerCursor *)v11 path];
        v36 = [v70 initWithLeadingComponent:v14 trailingComponent:v84 approximateLocation:v72 path:{0.0, v48}];

        [v52 addObject:v36];
      }

      v40 = v83;
LABEL_25:
      [v39 absoluteFrame];
      v50 = CGRectGetMaxY(v90);
      v51 = [(SXBlueprintAnalyzerCursor *)v11 highestMaxY];
      if (v50 >= v51)
      {
        v51 = v50;
      }

      [(SXBlueprintAnalyzerCursor *)v11 setHighestMaxY:v51];

      v12 = v81;
      if (v13 >= [v10 count])
      {
        goto LABEL_37;
      }
    }

    v19 = v14;
    v20 = v16;
    v21 = [v19 identifier];
    v78 = [v10 componentsForContainerComponentWithIdentifier:v21];

    v22 = [v9 layoutOptions];
    v23 = [v22 columnLayout];
    v24 = [v23 numberOfColumns];
    [v20 columnRange];
    v26 = v25;

    v27 = [v19 contentDisplay];

    v28 = [v77 componentStyleForComponent:v19];
    v29 = [v28 fill];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v78;
      v30 = v80;
    }

    else
    {
      v32 = [v28 fill];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v34 = v24 == v26;
      v31 = v78;
      v30 = v80;
      if (!v34 || v27 || (isKindOfClass & 1) != 0)
      {
        goto LABEL_15;
      }

      [(SXBlueprintAnalyzerCursor *)v80 addPathComponent:v19];
      v35 = [v20 layoutBlueprint];
      v29 = [(SXBlueprintAnalyzer *)self markersFromBlueprint:v35 components:v78 DOMObjectProvider:v77 cursor:v80];

      [v81 addObjectsFromArray:v29];
      [(SXBlueprintAnalyzerCursor *)v80 removePathComponent:v19];
    }

LABEL_15:
    v10 = v75;
    v9 = v76;
    v13 = v82;
    v17 = v84;
    v11 = v30;
    goto LABEL_16;
  }

LABEL_37:

  return v12;
}

- (BOOL)componentPlacedAboveComponentBlueprint:(id)a3 blueprint:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 componentIdentifiers];
  v8 = [v5 component];
  v9 = [v8 identifier];
  v10 = [v7 indexOfObject:v9];

  v11 = [v6 componentIdentifiers];
  v12 = [v11 count];

  if (v10 + 1 >= v12)
  {
    v27 = 0;
  }

  else
  {
    v13 = [v6 componentIdentifiers];
    v14 = [v6 componentIdentifiers];
    v15 = [v13 subarrayWithRange:{v10 + 1, objc_msgSend(v14, "count") - (v10 + 1)}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v15;
    v16 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [v6 componentBlueprintForComponentIdentifier:*(*(&v30 + 1) + 8 * i)];
          [v5 absoluteFrame];
          MaxY = CGRectGetMaxY(v36);
          [v20 absoluteFrame];
          if (MaxY > CGRectGetMinY(v37))
          {

            v27 = 1;
            goto LABEL_15;
          }

          [v20 columnRange];
          v23 = v22;
          v24 = [v6 layoutOptions];
          v25 = [v24 columnLayout];
          v26 = [v25 numberOfColumns];

          if (v23 == v26)
          {
            goto LABEL_13;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        v27 = 0;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_13:
      v27 = 0;
    }

LABEL_15:
  }

  return v27;
}

@end