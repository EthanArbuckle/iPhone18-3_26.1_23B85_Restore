@interface PGMemoryProcessedScenesAndFacesCache
- (BOOL)allMomentNodesHaveScenesProcessed:(id)a3 inGraph:(id)a4;
- (BOOL)allMomentNodesInCollectionHaveFacesProcessed:(id)a3;
- (BOOL)allMomentNodesInCollectionHaveScenesProcessed:(id)a3;
- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)a3 andProcessedFaces:(BOOL)a4;
- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)a3 andProcessedFaces:(BOOL)a4 forYear:(int64_t)a5 inGraph:(id)a6;
- (BOOL)libraryHasEnoughScenesProcessedWithMinimumSceneAnalysisVersion:(unint64_t)a3;
- (BOOL)petVIPModelExists;
- (PGMemoryProcessedScenesAndFacesCache)initWithPhotoLibrary:(id)a3;
- (id)momentNodesWithEnoughFacesProcessedInGraph:(id)a3;
- (id)momentNodesWithEnoughScenesProcessedInGraph:(id)a3;
@end

@implementation PGMemoryProcessedScenesAndFacesCache

- (BOOL)allMomentNodesHaveScenesProcessed:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v7 graph:v6];

  LOBYTE(v7) = [(PGMemoryProcessedScenesAndFacesCache *)self allMomentNodesInCollectionHaveScenesProcessed:v8];
  return v7;
}

- (BOOL)allMomentNodesInCollectionHaveFacesProcessed:(id)a3
{
  v4 = a3;
  v5 = [v4 graph];
  v6 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughFacesProcessedInGraph:v5];

  v7 = [v6 collectionByIntersecting:v4];
  v8 = [v7 count];
  v9 = [v4 count];

  return v8 == v9;
}

- (BOOL)allMomentNodesInCollectionHaveScenesProcessed:(id)a3
{
  v4 = a3;
  v5 = [v4 graph];
  v6 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughScenesProcessedInGraph:v5];

  v7 = [v6 collectionByIntersecting:v4];
  v8 = [v7 count];
  v9 = [v4 count];

  return v8 == v9;
}

- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)a3 andProcessedFaces:(BOOL)a4 forYear:(int64_t)a5 inGraph:(id)a6
{
  v7 = a4;
  v10 = a6;
  scenesAreProcessedEnoughByYear = self->_scenesAreProcessedEnoughByYear;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v13 = [(NSMutableDictionary *)scenesAreProcessedEnoughByYear objectForKeyedSubscript:v12];

  facesAreProcessedEnoughByYear = self->_facesAreProcessedEnoughByYear;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v16 = [(NSMutableDictionary *)facesAreProcessedEnoughByYear objectForKeyedSubscript:v15];

  LOBYTE(v17) = [v13 BOOLValue];
  v18 = [v16 BOOLValue];
  if (v13)
  {
    v19 = v16 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v41 = [PGGraphYearNodeCollection yearNodesForYear:a5 inGraph:v10];
    v20 = [v41 dateNodes];
    v21 = [v20 momentNodes];

    v22 = [v21 count];
    v43 = v10;
    v42 = v7;
    v39 = v21;
    if (v22)
    {
      v23 = v22;
      v24 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughScenesProcessedInGraph:v10, v21];
      v25 = [v24 collectionByIntersecting:v21];
      v26 = [v25 count];

      v27 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughFacesProcessedInGraph:v10];
      v28 = [v27 collectionByIntersecting:v21];
      v29 = [v28 count];

      v17 = v26 / v23 >= 0.9;
      v30 = v29 / v23 >= 0.9;
    }

    else
    {
      v17 = 1;
      v30 = 1;
    }

    v31 = [MEMORY[0x277CCABB0] numberWithBool:{v17, v39}];
    v32 = self->_scenesAreProcessedEnoughByYear;
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [(NSMutableDictionary *)v32 setObject:v31 forKeyedSubscript:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:v30];
    v35 = self->_facesAreProcessedEnoughByYear;
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v36];

    v10 = v43;
    v7 = v42;
  }

  else
  {
    LOBYTE(v30) = v18;
  }

  if (v7)
  {
    v37 = (!a3 | v17) & v30;
  }

  else
  {
    v37 = !a3 | v17;
  }

  return v37 & 1;
}

- (id)momentNodesWithEnoughFacesProcessedInGraph:(id)a3
{
  momentNodesWithEnoughFacesProcessed = self->_momentNodesWithEnoughFacesProcessed;
  if (!momentNodesWithEnoughFacesProcessed)
  {
    v5 = [PGGraphMomentNodeCollection momentNodesWithEnoughFacesProcessedInGraph:a3];
    v6 = self->_momentNodesWithEnoughFacesProcessed;
    self->_momentNodesWithEnoughFacesProcessed = v5;

    momentNodesWithEnoughFacesProcessed = self->_momentNodesWithEnoughFacesProcessed;
  }

  return momentNodesWithEnoughFacesProcessed;
}

- (id)momentNodesWithEnoughScenesProcessedInGraph:(id)a3
{
  momentNodesWithEnoughScenesProcessed = self->_momentNodesWithEnoughScenesProcessed;
  if (!momentNodesWithEnoughScenesProcessed)
  {
    v5 = [PGGraphMomentNodeCollection momentNodesWithEnoughScenesProcessedInGraph:a3];
    v6 = self->_momentNodesWithEnoughScenesProcessed;
    self->_momentNodesWithEnoughScenesProcessed = v5;

    momentNodesWithEnoughScenesProcessed = self->_momentNodesWithEnoughScenesProcessed;
  }

  return momentNodesWithEnoughScenesProcessed;
}

- (BOOL)libraryHasEnoughScenesProcessedWithMinimumSceneAnalysisVersion:(unint64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  scenesAreProcessedWithMinimumSceneAnalysisVersion = self->_scenesAreProcessedWithMinimumSceneAnalysisVersion;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)scenesAreProcessedWithMinimumSceneAnalysisVersion objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(PHPhotoLibrary *)self->_photoLibrary ratioOfAssetsAtOrAboveSceneAnalysisVersion:a3];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v8 >= 0.9];
    v10 = self->_scenesAreProcessedWithMinimumSceneAnalysisVersion;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = self->_scenesAreProcessedWithMinimumSceneAnalysisVersion;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
  v15 = [v14 BOOLValue];

  return v15;
}

- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)a3 andProcessedFaces:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = [(NSMutableDictionary *)self->_scenesAreProcessedEnoughByYear objectForKeyedSubscript:&unk_2844821F0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      [(PHPhotoLibrary *)self->_photoLibrary ratioOfAssetsWithScenesProcessed];
      v8 = v9 >= 0.9;
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v9 >= 0.9];
      [(NSMutableDictionary *)self->_scenesAreProcessedEnoughByYear setObject:v10 forKeyedSubscript:&unk_2844821F0];
    }

    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  if (v4)
  {
    v11 = [(NSMutableDictionary *)self->_facesAreProcessedEnoughByYear objectForKeyedSubscript:&unk_2844821F0];
    v12 = v11;
    if (v11)
    {
      LOBYTE(v8) = [v11 BOOLValue];
    }

    else
    {
      [(PHPhotoLibrary *)self->_photoLibrary ratioOfAssetsWithFacesProcessed];
      LOBYTE(v8) = v13 >= 0.9;
      v14 = [MEMORY[0x277CCABB0] numberWithBool:v13 >= 0.9];
      [(NSMutableDictionary *)self->_facesAreProcessedEnoughByYear setObject:v14 forKeyedSubscript:&unk_2844821F0];
    }
  }

  return v8;
}

- (BOOL)petVIPModelExists
{
  petVIPModelExistsAsNumber = self->_petVIPModelExistsAsNumber;
  if (!petVIPModelExistsAsNumber)
  {
    v4 = [(PHPhotoLibrary *)self->_photoLibrary petVIPModelExists];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v6 = self->_petVIPModelExistsAsNumber;
    self->_petVIPModelExistsAsNumber = v5;

    petVIPModelExistsAsNumber = self->_petVIPModelExistsAsNumber;
  }

  return [(NSNumber *)petVIPModelExistsAsNumber BOOLValue];
}

- (PGMemoryProcessedScenesAndFacesCache)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PGMemoryProcessedScenesAndFacesCache;
  v6 = [(PGMemoryProcessedScenesAndFacesCache *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scenesAreProcessedEnoughByYear = v7->_scenesAreProcessedEnoughByYear;
    v7->_scenesAreProcessedEnoughByYear = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scenesAreProcessedWithMinimumSceneAnalysisVersion = v7->_scenesAreProcessedWithMinimumSceneAnalysisVersion;
    v7->_scenesAreProcessedWithMinimumSceneAnalysisVersion = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    facesAreProcessedEnoughByYear = v7->_facesAreProcessedEnoughByYear;
    v7->_facesAreProcessedEnoughByYear = v12;
  }

  return v7;
}

@end