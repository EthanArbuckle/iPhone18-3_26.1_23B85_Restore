@interface PXStoryMemoryMoment
- (PXDisplayAsset)lastAsset;
- (PXStoryMemoryMoment)initWithDisplayAssets:(id)assets indexSet:(id)set diagnosticDistanceCalculator:(id)calculator;
- (PXStoryMemoryMoment)initWithDisplayAssets:(id)assets indicesArray:(id)array diagnosticDistanceCalculator:(id)calculator;
- (_NSRange)assetIndexRange;
- (double)faceClusteringDistance;
- (double)locationClusteringDistance;
- (double)timeClusteringDistance;
- (double)totalWeightedClusteringDistance;
- (id)assetAtIndex:(unint64_t)index;
- (void)_calculateDiagnostics;
- (void)enumerateAssetsUsingBlock:(id)block;
@end

@implementation PXStoryMemoryMoment

- (double)faceClusteringDistance
{
  if (!self->_diagnosticsCalculated)
  {
    [(PXStoryMemoryMoment *)self _calculateDiagnostics];
  }

  return self->_faceClusteringDistance;
}

- (double)timeClusteringDistance
{
  if (!self->_diagnosticsCalculated)
  {
    [(PXStoryMemoryMoment *)self _calculateDiagnostics];
  }

  return self->_timeClusteringDistance;
}

- (double)locationClusteringDistance
{
  if (!self->_diagnosticsCalculated)
  {
    [(PXStoryMemoryMoment *)self _calculateDiagnostics];
  }

  return self->_locationClusteringDistance;
}

- (double)totalWeightedClusteringDistance
{
  if (!self->_diagnosticsCalculated)
  {
    [(PXStoryMemoryMoment *)self _calculateDiagnostics];
  }

  return self->_totalWeightedClusteringDistance;
}

- (void)_calculateDiagnostics
{
  self->_diagnosticsCalculated = 1;
  diagnosticDistanceCalculator = self->_diagnosticDistanceCalculator;
  displayAssets = self->_displayAssets;
  firstGlobalIndex = [(PXStoryMemoryMoment *)self firstGlobalIndex];
  lastGlobalIndex = [(PXStoryMemoryMoment *)self lastGlobalIndex];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PXStoryMemoryMoment__calculateDiagnostics__block_invoke;
  v7[3] = &unk_1E773CE00;
  v7[4] = self;
  [(PXStoryMemoryMomentClusteringDistanceCalculator *)diagnosticDistanceCalculator clusteringDistanceForAssets:displayAssets fromIndex:firstGlobalIndex toIndex:lastGlobalIndex resultHandler:v7];
}

uint64_t __44__PXStoryMemoryMoment__calculateDiagnostics__block_invoke(uint64_t result, double a2, double a3, double a4, double a5)
{
  *(*(result + 32) + 32) = a2;
  *(*(result + 32) + 40) = a3;
  *(*(result + 32) + 48) = a4;
  *(*(result + 32) + 56) = a5;
  return result;
}

- (_NSRange)assetIndexRange
{
  firstIndex = [(NSIndexSet *)self->_indices firstIndex];
  v4 = [(NSIndexSet *)self->_indices count];
  v5 = firstIndex;
  result.length = v4;
  result.location = v5;
  return result;
}

- (PXDisplayAsset)lastAsset
{
  v3 = [(NSIndexSet *)self->_indices count]- 1;

  return [(PXStoryMemoryMoment *)self assetAtIndex:v3];
}

- (void)enumerateAssetsUsingBlock:(id)block
{
  blockCopy = block;
  indices = self->_indices;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXStoryMemoryMoment_enumerateAssetsUsingBlock___block_invoke;
  v7[3] = &unk_1E773CDD8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSIndexSet *)indices enumerateIndexesUsingBlock:v7];
}

void __49__PXStoryMemoryMoment_enumerateAssetsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 16) firstIndex];
  v4 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  (*(*(a1 + 40) + 16))();
}

- (id)assetAtIndex:(unint64_t)index
{
  if ([(PXStoryMemoryMoment *)self count]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryMoment.m" lineNumber:71 description:{@"Index %ld beyond bounds [0 .. %ld]", index, -[PXStoryMemoryMoment count](self, "count") - 1}];
  }

  v6 = [(NSIndexSet *)self->_indices firstIndex]+ index;
  displayAssets = self->_displayAssets;

  return [(PXDisplayAssetFetchResult *)displayAssets objectAtIndex:v6];
}

- (PXStoryMemoryMoment)initWithDisplayAssets:(id)assets indexSet:(id)set diagnosticDistanceCalculator:(id)calculator
{
  assetsCopy = assets;
  setCopy = set;
  calculatorCopy = calculator;
  if ([setCopy rangeCount] >= 2)
  {
    firstIndex = [setCopy firstIndex];
    lastIndex = [setCopy lastIndex];
    v14 = lastIndex - [setCopy firstIndex];
    v15 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{firstIndex, v14 + 1}];
    v16 = [v15 copy];

    setCopy = v16;
  }

  v22.receiver = self;
  v22.super_class = PXStoryMemoryMoment;
  v17 = [(PXStoryMemoryMoment *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayAssets, assets);
    v19 = [setCopy copy];
    indices = v18->_indices;
    v18->_indices = v19;

    objc_storeStrong(&v18->_diagnosticDistanceCalculator, calculator);
  }

  return v18;
}

- (PXStoryMemoryMoment)initWithDisplayAssets:(id)assets indicesArray:(id)array diagnosticDistanceCalculator:(id)calculator
{
  v24 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  arrayCopy = array;
  calculatorCopy = calculator;
  v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = arrayCopy;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addIndex:{objc_msgSend(*(*(&v19 + 1) + 8 * v16++), "unsignedIntegerValue", v19)}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = [(PXStoryMemoryMoment *)self initWithDisplayAssets:assetsCopy indexSet:v11 diagnosticDistanceCalculator:calculatorCopy];
  return v17;
}

@end