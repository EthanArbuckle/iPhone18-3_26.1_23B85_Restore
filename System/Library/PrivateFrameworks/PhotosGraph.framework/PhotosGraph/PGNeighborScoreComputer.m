@interface PGNeighborScoreComputer
- (BOOL)_hasAddressNodesForMomentNode:(id)a3;
- (CLLocationCoordinate2D)_bestLocationCoordinateForMomentNode:(id)a3;
- (PGNeighborScoreComputer)init;
- (double)_calculateScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andDistanceBlock:(id)a5;
- (double)_calculateScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 referenceDistance:(double)a5 andDistanceBlock:(id)a6;
- (double)_densityScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andNumberOfAssets:(unint64_t)a5;
- (double)_locationScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andLocationCoordinate:(const CLLocationCoordinate2D *)a5;
- (double)_peopleScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andPersonLocalIdentifiers:(id)a5;
- (double)maximumNeighborScoreWithMomentNodes:(id)a3;
- (double)neighborScoreWithHighlightNode:(id)a3;
- (double)neighborScoreWithMomentNode:(id)a3;
- (id)_momentNodeCachedValuesForIdentifier:(unint64_t)a3;
- (id)_nextMomentNodeForMomentNode:(id)a3;
- (id)_personLocalIdentifiersForMomentNode:(id)a3;
- (id)_previousMomentNodeForMomentNode:(id)a3;
- (id)neighborsFromMomentNode:(id)a3 count:(unint64_t)a4 locationRequired:(BOOL)a5 minDayDuration:(unint64_t)a6 maxDayDuration:(unint64_t)a7;
@end

@implementation PGNeighborScoreComputer

- (id)neighborsFromMomentNode:(id)a3 count:(unint64_t)a4 locationRequired:(BOOL)a5 minDayDuration:(unint64_t)a6 maxDayDuration:(unint64_t)a7
{
  v12 = a3;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  os_unfair_lock_lock(&self->_numberOfMomentNodesLock);
  numberOfMomentNodes = self->_numberOfMomentNodes;
  if (!numberOfMomentNodes)
  {
    v15 = [v12 graph];
    v16 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v15];
    self->_numberOfMomentNodes = [v16 count];

    numberOfMomentNodes = self->_numberOfMomentNodes;
  }

  os_unfair_lock_unlock(&self->_numberOfMomentNodesLock);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __104__PGNeighborScoreComputer_neighborsFromMomentNode_count_locationRequired_minDayDuration_maxDayDuration___block_invoke;
  v22[3] = &unk_278883538;
  v26 = a6;
  v27 = a4;
  v28 = a7;
  v29 = numberOfMomentNodes;
  v23 = v12;
  v24 = self;
  v30 = a5;
  v17 = v13;
  v25 = v17;
  v18 = v12;
  v19 = _Block_copy(v22);
  v19[2](v19, 1);
  v19[2](v19, 0);
  v20 = v17;

  return v17;
}

void __104__PGNeighborScoreComputer_neighborsFromMomentNode_count_locationRequired_minDayDuration_maxDayDuration___block_invoke(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = 0;
  v6 = 0;
  v7 = 0;
LABEL_2:
  v8 = v4;
  while (v6 < *(a1 + 56) || v7 < *(a1 + 64))
  {
    if (v6 >= *(a1 + 72) || v8 == 0)
    {
      break;
    }

    if (++v5 > *(a1 + 80))
    {
      v14 = +[PGLogging sharedLogging];
      v15 = [v14 loggingConnection];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Too many iterations thru Moments's NEXT chain, triggering graph rebuild and bailing out", buf, 2u);
      }

      __assert_rtn("[PGNeighborScoreComputer neighborsFromMomentNode:count:locationRequired:minDayDuration:maxDayDuration:]_block_invoke", "PGNeighborScoreComputer.m", 393, "NO");
    }

    v10 = *(a1 + 40);
    v16 = v8;
    if (a2)
    {
      [v10 _previousMomentNodeForMomentNode:v8];
    }

    else
    {
      [v10 _nextMomentNodeForMomentNode:v8];
    }
    v4 = ;

    v8 = 0;
    if (v4)
    {
      v11 = [*(a1 + 32) localStartDate];
      v12 = [v4 localStartDate];
      [v11 timeIntervalSinceDate:v12];
      v6 = vcvtmd_u64_f64(fabs(v13) / 86400.0);

      if (*(a1 + 72) > v6 && (!*(a1 + 88) || [*(a1 + 40) _hasAddressNodesForMomentNode:v4]))
      {
        [*(a1 + 48) addObject:v4];
        ++v7;
      }

      goto LABEL_2;
    }
  }
}

- (BOOL)_hasAddressNodesForMomentNode:(id)a3
{
  v4 = a3;
  v5 = -[PGNeighborScoreComputer _momentNodeCachedValuesForIdentifier:](self, "_momentNodeCachedValuesForIdentifier:", [v4 identifier]);
  if ([v5 hasAddressNodesIsSet])
  {
    LOBYTE(v6) = [v5 hasAddressNodes];
  }

  else
  {
    v6 = [v4 hasAddressNodes];
    [v5 setHasAddressNodes:v6];
    [v5 setHasAddressNodesIsSet:1];
  }

  return v6;
}

- (id)_nextMomentNodeForMomentNode:(id)a3
{
  v4 = a3;
  v5 = -[PGNeighborScoreComputer _momentNodeCachedValuesForIdentifier:](self, "_momentNodeCachedValuesForIdentifier:", [v4 identifier]);
  v6 = [v5 nextMomentNode];
  v7 = [MEMORY[0x277CBEB68] null];

  if (v6 == v7)
  {
    v8 = [v4 nextMomentNode];

    [v5 setNextMomentNode:v8];
    v6 = v8;
  }

  return v6;
}

- (id)_previousMomentNodeForMomentNode:(id)a3
{
  v4 = a3;
  v5 = -[PGNeighborScoreComputer _momentNodeCachedValuesForIdentifier:](self, "_momentNodeCachedValuesForIdentifier:", [v4 identifier]);
  v6 = [v5 previousMomentNode];
  v7 = [MEMORY[0x277CBEB68] null];

  if (v6 == v7)
  {
    v8 = [v4 previousMomentNode];

    [v5 setPreviousMomentNode:v8];
    v6 = v8;
  }

  return v6;
}

- (CLLocationCoordinate2D)_bestLocationCoordinateForMomentNode:(id)a3
{
  v4 = a3;
  v5 = -[PGNeighborScoreComputer _momentNodeCachedValuesForIdentifier:](self, "_momentNodeCachedValuesForIdentifier:", [v4 identifier]);
  [v5 bestLocationCoordinate];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.longitude = v11;
  result.latitude = v10;
  return result;
}

- (id)_personLocalIdentifiersForMomentNode:(id)a3
{
  v4 = a3;
  v5 = -[PGNeighborScoreComputer _momentNodeCachedValuesForIdentifier:](self, "_momentNodeCachedValuesForIdentifier:", [v4 identifier]);
  v6 = [v5 personLocalIdentifiers];
  if (!v6)
  {
    v7 = [v4 collection];
    v8 = [v7 personNodes];
    v6 = [v8 localIdentifiers];

    [v5 setPersonLocalIdentifiers:v6];
  }

  return v6;
}

- (double)_calculateScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 referenceDistance:(double)a5 andDistanceBlock:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_opt_new();
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = a5;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = v11[2](v11, v17);
        if (v10)
        {
          v19 = [v17 localStartDate];
          [v10 timeIntervalSinceDate:v19];
          v21 = v20;

          v18 = v18 / fmax(vcvtd_n_f64_u64(vcvtmd_u64_f64(fabs(v21) / 86400.0), 1uLL), 1.0);
        }

        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        [v12 addObject:v22];

        v42[3] = v18 + v42[3];
      }

      v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v14);
  }

  v23 = [v13 count];
  v24 = v42[3] / (v23 + 1);
  v42[3] = v24;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = (a5 - v24) * (a5 - v24);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __115__PGNeighborScoreComputer__calculateScoreWithNeighborMomentNodes_referenceDate_referenceDistance_andDistanceBlock___block_invoke;
  v32[3] = &unk_278883510;
  v32[4] = &v33;
  v32[5] = &v41;
  [v12 enumerateObjectsUsingBlock:v32];
  v25 = sqrt(v34[3] / ([v13 count] + 1));
  v34[3] = v25;
  v26 = 0.0;
  if (v25 > 0.0)
  {
    v27 = v42[3];
    v28 = v27 - v25;
    v29 = v25 + v27;
    if (v25 + v27 >= a5)
    {
      v29 = a5;
    }

    if (v28 < v29)
    {
      v28 = v29;
    }

    v26 = (v25 + v28 - v27) / (v25 + v25);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v41, 8);

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

double __115__PGNeighborScoreComputer__calculateScoreWithNeighborMomentNodes_referenceDate_referenceDistance_andDistanceBlock___block_invoke(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v4 = v3 - *(*(*(a1 + 40) + 8) + 24);
  v5 = *(*(a1 + 32) + 8);
  result = v4 * v4 + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

- (double)_calculateScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andDistanceBlock:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v13 = 0.0;
    v14 = 1.79769313e308;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = v9[2](v9, v17);
        v19 = v18;
        if (v8)
        {
          v20 = [v17 localStartDate];
          [v8 timeIntervalSinceDate:v20];
          v22 = vcvtmd_u64_f64(fabs(v21) / 86400.0);

          v18 = v19 / fmax(vcvtd_n_f64_u64(v22, 1uLL), 1.0);
        }

        if (v13 < v19)
        {
          v13 = v19;
        }

        if (v14 >= v19)
        {
          v14 = v19;
        }

        v15 = v15 + v18;
      }

      v11 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
    v14 = 1.79769313e308;
    v15 = 0.0;
  }

  v23 = v15 / [v7 count];
  if (v23 == 0.0 || v13 <= v14)
  {
    if (v13 >= 1.0 && v14 == v13)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }
  }

  else
  {
    v27 = (v23 - v14) / (v13 - v14);
    if (v27 > 1.0)
    {
      v27 = 1.0;
    }

    v26 = fmax(v27, 0.0);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (double)_locationScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andLocationCoordinate:(const CLLocationCoordinate2D *)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __101__PGNeighborScoreComputer__locationScoreWithNeighborMomentNodes_referenceDate_andLocationCoordinate___block_invoke;
  v6[3] = &unk_2788834E8;
  v6[4] = self;
  v6[5] = a5;
  [(PGNeighborScoreComputer *)self _calculateScoreWithNeighborMomentNodes:a3 referenceDate:a4 andDistanceBlock:v6];
  return result;
}

uint64_t __101__PGNeighborScoreComputer__locationScoreWithNeighborMomentNodes_referenceDate_andLocationCoordinate___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _bestLocationCoordinateForMomentNode:a2];
  v3 = *(a1 + 40);
  return CLLocationCoordinate2DGetDistanceFrom();
}

- (double)_peopleScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andPersonLocalIdentifiers:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 count];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__PGNeighborScoreComputer__peopleScoreWithNeighborMomentNodes_referenceDate_andPersonLocalIdentifiers___block_invoke;
  v14[3] = &unk_2788834C0;
  v14[4] = self;
  v15 = v7;
  v10 = v7;
  [(PGNeighborScoreComputer *)self _calculateScoreWithNeighborMomentNodes:v8 referenceDate:0 referenceDistance:v14 andDistanceBlock:v9];
  v12 = v11;

  return v12;
}

double __103__PGNeighborScoreComputer__peopleScoreWithNeighborMomentNodes_referenceDate_andPersonLocalIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _personLocalIdentifiersForMomentNode:a2];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(a1 + 40) containsObject:*(*(&v12 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (double)_densityScoreWithNeighborMomentNodes:(id)a3 referenceDate:(id)a4 andNumberOfAssets:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__PGNeighborScoreComputer__densityScoreWithNeighborMomentNodes_referenceDate_andNumberOfAssets___block_invoke;
  v19[3] = &unk_278885948;
  v19[4] = v20;
  [v8 enumerateObjectsUsingBlock:v19];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PGNeighborScoreComputer__densityScoreWithNeighborMomentNodes_referenceDate_andNumberOfAssets___block_invoke_2;
  aBlock[3] = &unk_278883470;
  aBlock[4] = v20;
  v10 = _Block_copy(aBlock);
  v11 = v10[2](v10, a5);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__PGNeighborScoreComputer__densityScoreWithNeighborMomentNodes_referenceDate_andNumberOfAssets___block_invoke_3;
  v16[3] = &unk_278883498;
  v12 = v10;
  v17 = v12;
  [(PGNeighborScoreComputer *)self _calculateScoreWithNeighborMomentNodes:v8 referenceDate:v9 referenceDistance:v16 andDistanceBlock:v11];
  v14 = v13;

  _Block_object_dispose(v20, 8);
  return v14;
}

unint64_t __96__PGNeighborScoreComputer__densityScoreWithNeighborMomentNodes_referenceDate_andNumberOfAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 numberOfAssets];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

double __96__PGNeighborScoreComputer__densityScoreWithNeighborMomentNodes_referenceDate_andNumberOfAssets___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    return round(atan(a2 / 19.0985932) * 19.0985932);
  }

  else
  {
    return 0.0;
  }
}

uint64_t __96__PGNeighborScoreComputer__densityScoreWithNeighborMomentNodes_referenceDate_andNumberOfAssets___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 numberOfAssets];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (double)maximumNeighborScoreWithMomentNodes:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PGNeighborScoreComputer_maximumNeighborScoreWithMomentNodes___block_invoke;
  v7[3] = &unk_278889050;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateNodesUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __63__PGNeighborScoreComputer_maximumNeighborScoreWithMomentNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) neighborScoreWithMomentNode:a2];
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24) >= v4)
  {
    v4 = *(v5 + 24);
  }

  *(v5 + 24) = v4;
  return result;
}

- (double)neighborScoreWithHighlightNode:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [v4 collection];
  v6 = [v5 momentNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__PGNeighborScoreComputer_neighborScoreWithHighlightNode___block_invoke;
  v9[3] = &unk_278889050;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateNodesUsingBlock:v9];

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __58__PGNeighborScoreComputer_neighborScoreWithHighlightNode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) neighborScoreWithMomentNode:a2];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  return result;
}

- (double)neighborScoreWithMomentNode:(id)a3
{
  v4 = a3;
  v5 = -[PGNeighborScoreComputer _momentNodeCachedValuesForIdentifier:](self, "_momentNodeCachedValuesForIdentifier:", [v4 identifier]);
  [v5 neighborScore];
  v7 = v6;

  return v7;
}

- (id)_momentNodeCachedValuesForIdentifier:(unint64_t)a3
{
  momentNodeCachedValuesByIdentifier = self->_momentNodeCachedValuesByIdentifier;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)momentNodeCachedValuesByIdentifier objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(PGMomentNodeCachedValues);
    v8 = self->_momentNodeCachedValuesByIdentifier;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (PGNeighborScoreComputer)init
{
  v6.receiver = self;
  v6.super_class = PGNeighborScoreComputer;
  v2 = [(PGNeighborScoreComputer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    momentNodeCachedValuesByIdentifier = v2->_momentNodeCachedValuesByIdentifier;
    v2->_momentNodeCachedValuesByIdentifier = v3;

    v2->_numberOfMomentNodesLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end