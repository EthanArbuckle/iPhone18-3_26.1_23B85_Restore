@interface SXBlueprintAnalyzer
- (BOOL)componentPlacedAboveComponentBlueprint:(id)blueprint blueprint:(id)a4;
- (id)markersFromBlueprint:(id)blueprint components:(id)components DOMObjectProvider:(id)provider cursor:(id)cursor;
- (void)analyzeBlueprint:(id)blueprint DOMObjectProvider:(id)provider onMarkerFound:(id)found then:(id)then onEndReached:(id)reached;
- (void)iterateMarkers:(id)markers onMarkerFound:(id)found then:(id)then onEndReached:(id)reached;
@end

@implementation SXBlueprintAnalyzer

- (void)analyzeBlueprint:(id)blueprint DOMObjectProvider:(id)provider onMarkerFound:(id)found then:(id)then onEndReached:(id)reached
{
  v26 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  if (blueprintCopy && provider && found && then && reached)
  {
    reachedCopy = reached;
    thenCopy = then;
    foundCopy = found;
    providerCopy = provider;
    v17 = objc_opt_new();
    components = [providerCopy components];
    v19 = [(SXBlueprintAnalyzer *)self markersFromBlueprint:blueprintCopy components:components DOMObjectProvider:providerCopy cursor:v17];

    v20 = SXInsertionLog;
    if (os_log_type_enabled(SXInsertionLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = 134218240;
      v23 = [v19 count];
      v24 = 2048;
      v25 = blueprintCopy;
      _os_log_impl(&dword_1D825C000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu marker(s) available for insertion, blueprint=%p", &v22, 0x16u);
    }

    [(SXBlueprintAnalyzer *)self iterateMarkers:v19 onMarkerFound:foundCopy then:thenCopy onEndReached:reachedCopy];
  }
}

- (void)iterateMarkers:(id)markers onMarkerFound:(id)found then:(id)then onEndReached:(id)reached
{
  markersCopy = markers;
  foundCopy = found;
  thenCopy = then;
  reachedCopy = reached;
  v14 = [markersCopy mutableCopy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__SXBlueprintAnalyzer_iterateMarkers_onMarkerFound_then_onEndReached___block_invoke;
  v20[3] = &unk_1E85000D8;
  v21 = markersCopy;
  v22 = v14;
  selfCopy = self;
  v24 = foundCopy;
  v25 = thenCopy;
  v26 = reachedCopy;
  v15 = reachedCopy;
  v16 = thenCopy;
  v17 = v14;
  v18 = foundCopy;
  v19 = markersCopy;
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

- (id)markersFromBlueprint:(id)blueprint components:(id)components DOMObjectProvider:(id)provider cursor:(id)cursor
{
  blueprintCopy = blueprint;
  componentsCopy = components;
  providerCopy = provider;
  cursorCopy = cursor;
  array = [MEMORY[0x1E695DF70] array];
  if ([componentsCopy count])
  {
    v13 = 0;
    v80 = cursorCopy;
    v81 = array;
    v75 = componentsCopy;
    v76 = blueprintCopy;
    while (1)
    {
      v14 = [componentsCopy componentAtIndex:v13];
      identifier = [v14 identifier];
      v16 = [blueprintCopy componentBlueprintForComponentIdentifier:identifier];

      if (++v13 >= [componentsCopy count])
      {
        v83 = 0;
        v17 = 0;
      }

      else
      {
        v17 = [componentsCopy componentAtIndex:v13];
        identifier2 = [v17 identifier];
        v83 = [blueprintCopy componentBlueprintForComponentIdentifier:identifier2];
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
      anchor = [v17 anchor];
      targetComponentIdentifier = [anchor targetComponentIdentifier];
      identifier3 = [v14 identifier];
      if ([targetComponentIdentifier isEqualToString:identifier3])
      {

        v39 = v85;
      }

      else
      {
        anchor2 = [v14 anchor];
        targetComponentIdentifier2 = [anchor2 targetComponentIdentifier];
        identifier4 = [v17 identifier];
        v44 = [targetComponentIdentifier2 isEqualToString:identifier4];

        cursorCopy = v80;
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

        if ([(SXBlueprintAnalyzer *)self componentPlacedAboveComponentBlueprint:v85 blueprint:blueprintCopy])
        {
          goto LABEL_25;
        }

        v52 = v81;
        if ([v14 role] == 3)
        {
          infoFromLayouting = [v85 infoFromLayouting];
          v54 = [infoFromLayouting objectForKey:@"TextLayouter"];

          v79 = v54;
          paragraphRanges = [v54 paragraphRanges];
          v56 = [paragraphRanges count];
          if (v56 >= 2)
          {
            v57 = v56;
            for (i = 1; i != v57; ++i)
            {
              v59 = [paragraphRanges objectAtIndex:i];
              rangeValue = [v59 rangeValue];

              [v79 verticalLocationOfCharacterAtIndex:rangeValue];
              v62 = v61;
              [v85 absoluteFrame];
              v63 = v62 + CGRectGetMinY(v91);
              v64 = [SXComponentAnchor alloc];
              identifier5 = [v14 identifier];
              v66 = [(SXComponentAnchor *)v64 initWithTargetComponentIdentifier:identifier5];

              [(SXComponentAnchor *)v66 setRange:rangeValue, 1];
              v67 = [SXBlueprintMarker alloc];
              path = [(SXBlueprintAnalyzerCursor *)v80 path];
              v69 = [(SXBlueprintMarker *)v67 initWithLeadingComponent:v14 trailingComponent:v84 approximateLocation:path path:0.0, v63];

              [(SXBlueprintMarker *)v69 setComponentAnchor:v66];
              [v81 addObject:v69];
            }
          }

          cursorCopy = v80;
          v52 = v81;
          v13 = v82;
          v45 = 0x1E84FC000uLL;
          v39 = v85;
        }

        v70 = objc_alloc(*(v45 + 1192));
        highestMaxY = [(SXBlueprintAnalyzerCursor *)cursorCopy highestMaxY];
        if (highestMaxY >= v48)
        {
          v48 = highestMaxY;
        }

        path2 = [(SXBlueprintAnalyzerCursor *)cursorCopy path];
        anchor = [v70 initWithLeadingComponent:v14 trailingComponent:v84 approximateLocation:path2 path:{0.0, v48}];

        [v52 addObject:anchor];
      }

      v40 = v83;
LABEL_25:
      [v39 absoluteFrame];
      v50 = CGRectGetMaxY(v90);
      highestMaxY2 = [(SXBlueprintAnalyzerCursor *)cursorCopy highestMaxY];
      if (v50 >= highestMaxY2)
      {
        highestMaxY2 = v50;
      }

      [(SXBlueprintAnalyzerCursor *)cursorCopy setHighestMaxY:highestMaxY2];

      array = v81;
      if (v13 >= [componentsCopy count])
      {
        goto LABEL_37;
      }
    }

    v19 = v14;
    v20 = v16;
    identifier6 = [v19 identifier];
    v78 = [componentsCopy componentsForContainerComponentWithIdentifier:identifier6];

    layoutOptions = [blueprintCopy layoutOptions];
    columnLayout = [layoutOptions columnLayout];
    numberOfColumns = [columnLayout numberOfColumns];
    [v20 columnRange];
    v26 = v25;

    contentDisplay = [v19 contentDisplay];

    v28 = [providerCopy componentStyleForComponent:v19];
    fill = [v28 fill];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v78;
      v30 = v80;
    }

    else
    {
      fill2 = [v28 fill];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v34 = numberOfColumns == v26;
      v31 = v78;
      v30 = v80;
      if (!v34 || contentDisplay || (isKindOfClass & 1) != 0)
      {
        goto LABEL_15;
      }

      [(SXBlueprintAnalyzerCursor *)v80 addPathComponent:v19];
      layoutBlueprint = [v20 layoutBlueprint];
      fill = [(SXBlueprintAnalyzer *)self markersFromBlueprint:layoutBlueprint components:v78 DOMObjectProvider:providerCopy cursor:v80];

      [v81 addObjectsFromArray:fill];
      [(SXBlueprintAnalyzerCursor *)v80 removePathComponent:v19];
    }

LABEL_15:
    componentsCopy = v75;
    blueprintCopy = v76;
    v13 = v82;
    v17 = v84;
    cursorCopy = v30;
    goto LABEL_16;
  }

LABEL_37:

  return array;
}

- (BOOL)componentPlacedAboveComponentBlueprint:(id)blueprint blueprint:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  v6 = a4;
  componentIdentifiers = [v6 componentIdentifiers];
  component = [blueprintCopy component];
  identifier = [component identifier];
  v10 = [componentIdentifiers indexOfObject:identifier];

  componentIdentifiers2 = [v6 componentIdentifiers];
  v12 = [componentIdentifiers2 count];

  if (v10 + 1 >= v12)
  {
    v27 = 0;
  }

  else
  {
    componentIdentifiers3 = [v6 componentIdentifiers];
    componentIdentifiers4 = [v6 componentIdentifiers];
    v15 = [componentIdentifiers3 subarrayWithRange:{v10 + 1, objc_msgSend(componentIdentifiers4, "count") - (v10 + 1)}];

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
          [blueprintCopy absoluteFrame];
          MaxY = CGRectGetMaxY(v36);
          [v20 absoluteFrame];
          if (MaxY > CGRectGetMinY(v37))
          {

            v27 = 1;
            goto LABEL_15;
          }

          [v20 columnRange];
          v23 = v22;
          layoutOptions = [v6 layoutOptions];
          columnLayout = [layoutOptions columnLayout];
          numberOfColumns = [columnLayout numberOfColumns];

          if (v23 == numberOfColumns)
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