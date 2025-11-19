@interface UICollectionLayoutAuxillaryItemSolver
@end

@implementation UICollectionLayoutAuxillaryItemSolver

void __49___UICollectionLayoutAuxillaryItemSolver_resolve__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = [a2 boundarySupplementaryItem];
  v5 = [v61 pinToVisibleBounds];
  if (v5)
  {
    v6 = [v61 alignment];
    if (!v6)
    {
      v7 = [v61 containerAnchor];
      v8 = [v7 edges];

      v9 = 3;
      if ((v8 & 2) == 0)
      {
        v9 = (v8 << 60 >> 63) & 7;
      }

      v10 = 4;
      v11 = 5;
      if ((v8 & 8) != 0)
      {
        v11 = 6;
      }

      if ((v8 & 2) == 0)
      {
        v10 = v11;
      }

      if ((v8 & 4) != 0)
      {
        v9 = v10;
      }

      v12 = 2;
      v13 = 8;
      if ((v8 & 8) == 0)
      {
        v13 = 1;
      }

      if ((v8 & 2) == 0)
      {
        v12 = v13;
      }

      if (v8)
      {
        v6 = v12;
      }

      else
      {
        v6 = v9;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = [a2 decorationItem];
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v16 = [a2 elementKind];
  if (![v16 length])
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:*(a1 + 112) object:*(a1 + 32) file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
  }

  v60 = v16;
  v17 = [(_UICollectionLayoutSupplementaryEnroller *)*(a1 + 40) enrollSupplementaryForKind:v16];
  if (!v17)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:*(a1 + 112) object:*(a1 + 32) file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:302 description:@"Failed to receive an enrollment identifier."];
  }

  v18 = [(_UICollectionLayoutSupplementaryEnroller *)*(a1 + 40) kindIndexForEnrollmentIdentifier:v17];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:*(a1 + 112) object:*(a1 + 32) file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:304 description:@"Failed to determine the kindIndex for specified supplementary enrollment identifier."];
  }

  v19 = [a2 size];
  *(*(a1 + 32) + 56) |= [v19 _containerSizeDependentAxes];

  v20 = [(_UICollectionLayoutAuxillaryItemSolver *)*(a1 + 32) _sizeForSupplementaryItem:a2 container:*(a1 + 48) preferredSizes:*(a1 + 56) preferredIndex:v18];
  v22 = v21;
  v23 = [(_UICollectionLayoutAuxillaryItemSolver *)*(a1 + 32) _frameForSupplementaryItem:a2 container:*(a1 + 48) primaryContentFrame:*(a1 + 184) supplementaryItemSize:*(a1 + 120) frameOffset:*(a1 + 128) layoutRTL:*(a1 + 136), *(a1 + 144), v20, v21, *(a1 + 152), *(a1 + 160)];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [_UICollectionLayoutFramesQueryResult alloc];
  v31 = [a2 zIndex];
  v32 = [a2 item];
  v33 = [(_UICollectionLayoutFramesQueryResult *)&v30->super.isa initWithFrame:v6 pinningAlignment:0 adjustedForPinning:v18 visibleRectDisplacement:v31 index:v15 zIndex:v32 resultKind:*(a1 + 168) item:v23 auxillaryKind:v25 supplementaryEnrollmentIdentifier:v27, v29, 0.0, v17];

  [*(a1 + 64) addObject:v33];
  if (v5)
  {
    [*(a1 + 72) addIndex:a3];
  }

  if ([v61 extendsBoundary])
  {
    ++*(*(*(a1 + 88) + 8) + 24);
    v34 = *(a1 + 80);
    v35 = [MEMORY[0x1E696AC90] indexSetWithIndex:v18];
    v36 = [a2 elementKind];
    [(_UICollectionLayoutAuxillaryOffsets *)v34 addIndexes:v35 forElementKind:v36];
  }

  v37 = v61;
  if (*(a1 + 32))
  {
    v38 = *(a1 + 176);
    v39 = [v61 extendsBoundary];
    v37 = v61;
    if (v38)
    {
      if (v39)
      {
        v40 = [v61 alignment];
        if (v38 != 1)
        {
          v37 = v61;
          if (v38 != 2)
          {
            goto LABEL_53;
          }

          v41 = v40 - 1 >= 8 ? 0 : qword_18A678CA0[v40 - 1];
          if (v40 - 2 >= 3 && v40 - 6 >= 3)
          {
            goto LABEL_53;
          }

          goto LABEL_48;
        }

        v41 = 2;
        if (v40 - 2 >= 3)
        {
          v41 = 8 * (v40 - 6 < 3);
        }

        v37 = v61;
        if (v40 <= 8 && ((1 << v40) & 0x176) != 0)
        {
LABEL_48:
          if (!v41)
          {
            v42 = _UISizeValueForAxis(*(a1 + 176), v20, v22);
            v43 = _UISizeValueForAxis(*(a1 + 176), *(a1 + 136), *(a1 + 144));
            v37 = v61;
            if (v42 > v43)
            {
              v44 = v42 - v43;
              v45 = *(*(a1 + 96) + 8);
              if (*(v45 + 24) >= v44)
              {
                v44 = *(v45 + 24);
              }

              *(v45 + 24) = v44;
            }
          }
        }
      }
    }
  }

LABEL_53:
  if ([v37 extendsBoundary])
  {
    v46 = *(a1 + 176);
    if ((v46 - 1) >= 2)
    {
      v55 = [MEMORY[0x1E696AAA8] currentHandler];
      v56 = *(a1 + 112);
      v57 = *(a1 + 32);
      v58 = [v61 _externalDescription];
      [v55 handleFailureInMethod:v56 object:v57 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:351 description:{@"UICollectionView internal inconsistency: layout axis is unspecified when solving boundary supplementary item: %@", v58}];

      v46 = *(a1 + 176);
    }

    v47 = _UIRectUnionOnAxis(v46, *(*(*(a1 + 104) + 8) + 32), *(*(*(a1 + 104) + 8) + 40), *(*(*(a1 + 104) + 8) + 48), *(*(*(a1 + 104) + 8) + 56), v23, v25, v27, v29);
    v48 = *(*(a1 + 104) + 8);
    *(v48 + 32) = v47;
    *(v48 + 40) = v49;
    *(v48 + 48) = v50;
    *(v48 + 56) = v51;
  }
}

void *__65___UICollectionLayoutAuxillaryItemSolver__updateGeometricIndexer__block_invoke(uint64_t a1, double *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2[10];
    v4 = a2[11];
    v5 = a2[12];
    v6 = a2[13];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v3 = 0.0;
  }

  return [(_UIRTree *)*(a1 + 32) insertFrame:a3 forIndex:v3, v4, v5, v6];
}

void __82___UICollectionLayoutAuxillaryItemSolver_queryFramesIntersectingRect_frameOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 10);
    v6 = *(v3 + 11);
    v7 = *(v3 + 12);
    v8 = *(v3 + 13);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

  if (CGRectIntersectsRect(*(a1 + 48), *&v5))
  {
    if (v4)
    {
      v10 = v4[10];
      v9 = v4[11];
      v11 = v4[12];
      v12 = v4[13];
    }

    else
    {
      v9 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      v10 = 0.0;
    }

    v13 = *(a1 + 80);
    v32.origin.x = v10;
    v32.origin.y = v9;
    v32.size.width = v11;
    v32.size.height = v12;
    v14 = v13 + CGRectGetMinX(v32);
    v15 = *(a1 + 88);
    v33.origin.x = v10;
    v33.origin.y = v9;
    v33.size.width = v11;
    v33.size.height = v12;
    v16 = v15 + CGRectGetMinY(v33);
    v34.origin.x = v10;
    v34.origin.y = v9;
    v34.size.width = v11;
    v34.size.height = v12;
    Width = CGRectGetWidth(v34);
    v35.origin.x = v10;
    v35.origin.y = v9;
    v35.size.width = v11;
    v35.size.height = v12;
    Height = CGRectGetHeight(v35);
    v19 = [_UICollectionLayoutFramesQueryResult alloc];
    if (v4)
    {
      v20 = *(v4 + 8);
      v21 = *(v4 + 8);
      v22 = v4[9];
      v23 = *(v4 + 2);
      if (*(v4 + 3) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v4 + 3);
      }

      v25 = *(v4 + 4);
      v26 = *(v4 + 5);
      v27 = *(v4 + 7);
    }

    else
    {
      v26 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
      v23 = 0;
      v25 = 0;
      v27 = 0;
      v22 = 0.0;
    }

    v28 = *(a1 + 96);
    v29 = v27;
    v30 = [(_UICollectionLayoutFramesQueryResult *)&v19->super.isa initWithFrame:v20 pinningAlignment:v21 & 1 adjustedForPinning:v23 visibleRectDisplacement:v24 index:v25 zIndex:v26 resultKind:v28 item:v14 auxillaryKind:v16 supplementaryEnrollmentIdentifier:Width, Height, v22, v29];

    [*(a1 + 32) addObject:v30];
  }
}

void __49___UICollectionLayoutAuxillaryItemSolver_resolve__block_invoke_2(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = [(_UICollectionLayoutFramesQueryResult *)a2 auxillaryItem];
  v29 = [v6 boundarySupplementaryItem];

  if (a2)
  {
    v7 = a2[12];
    v8 = a2[13];
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  v9 = [(_UICollectionLayoutAuxillaryItemSolver *)*(a1 + 32) _frameForSupplementaryItem:v29 container:*(a1 + 40) primaryContentFrame:*(a1 + 128) supplementaryItemSize:*(a1 + 64) frameOffset:*(a1 + 72) layoutRTL:*(a1 + 80), *(a1 + 88), v7, v8, *(a1 + 96), *(a1 + 104)];
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  if (a2)
  {
    v17 = *(a2 + 2);
  }

  else
  {
    v17 = 0;
  }

  v18 = [(_UICollectionLayoutFramesQueryResult *)a2 copyWithFrame:v17 index:v9, v10, v11, v12];
  [*(a1 + 48) setObject:v18 atIndexedSubscript:a3];
  if ([v29 extendsBoundary])
  {
    v19 = *(a1 + 112);
    if ((v19 - 1) >= 2)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = *(a1 + 120);
      v27 = *(a1 + 32);
      v28 = [v29 _externalDescription];
      [v25 handleFailureInMethod:v26 object:v27 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:381 description:{@"UICollectionView internal inconsistency: layout axis is unspecified when solving boundary supplementary item: %@", v28}];

      v19 = *(a1 + 112);
    }

    v20 = _UIRectUnionOnAxis(v19, *(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56), v13, v14, v15, v16);
    v21 = *(*(a1 + 56) + 8);
    *(v21 + 32) = v20;
    *(v21 + 40) = v22;
    *(v21 + 48) = v23;
    *(v21 + 56) = v24;
  }
}

double __113___UICollectionLayoutAuxillaryItemSolver__requiredContentSizeForSupplementaryFrames_forLayoutAxis_containerSize___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  result = a3 / *(a1 + 40) + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

@end