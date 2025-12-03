@interface PGMemoryProcessedScenesAndFacesCache
- (BOOL)allMomentNodesHaveScenesProcessed:(id)processed inGraph:(id)graph;
- (BOOL)allMomentNodesInCollectionHaveFacesProcessed:(id)processed;
- (BOOL)allMomentNodesInCollectionHaveScenesProcessed:(id)processed;
- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)processed andProcessedFaces:(BOOL)faces;
- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)processed andProcessedFaces:(BOOL)faces forYear:(int64_t)year inGraph:(id)graph;
- (BOOL)libraryHasEnoughScenesProcessedWithMinimumSceneAnalysisVersion:(unint64_t)version;
- (BOOL)petVIPModelExists;
- (PGMemoryProcessedScenesAndFacesCache)initWithPhotoLibrary:(id)library;
- (id)momentNodesWithEnoughFacesProcessedInGraph:(id)graph;
- (id)momentNodesWithEnoughScenesProcessedInGraph:(id)graph;
@end

@implementation PGMemoryProcessedScenesAndFacesCache

- (BOOL)allMomentNodesHaveScenesProcessed:(id)processed inGraph:(id)graph
{
  graphCopy = graph;
  processedCopy = processed;
  v8 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:processedCopy graph:graphCopy];

  LOBYTE(processedCopy) = [(PGMemoryProcessedScenesAndFacesCache *)self allMomentNodesInCollectionHaveScenesProcessed:v8];
  return processedCopy;
}

- (BOOL)allMomentNodesInCollectionHaveFacesProcessed:(id)processed
{
  processedCopy = processed;
  graph = [processedCopy graph];
  v6 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughFacesProcessedInGraph:graph];

  v7 = [v6 collectionByIntersecting:processedCopy];
  v8 = [v7 count];
  v9 = [processedCopy count];

  return v8 == v9;
}

- (BOOL)allMomentNodesInCollectionHaveScenesProcessed:(id)processed
{
  processedCopy = processed;
  graph = [processedCopy graph];
  v6 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughScenesProcessedInGraph:graph];

  v7 = [v6 collectionByIntersecting:processedCopy];
  v8 = [v7 count];
  v9 = [processedCopy count];

  return v8 == v9;
}

- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)processed andProcessedFaces:(BOOL)faces forYear:(int64_t)year inGraph:(id)graph
{
  facesCopy = faces;
  graphCopy = graph;
  scenesAreProcessedEnoughByYear = self->_scenesAreProcessedEnoughByYear;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:year];
  v13 = [(NSMutableDictionary *)scenesAreProcessedEnoughByYear objectForKeyedSubscript:v12];

  facesAreProcessedEnoughByYear = self->_facesAreProcessedEnoughByYear;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:year];
  v16 = [(NSMutableDictionary *)facesAreProcessedEnoughByYear objectForKeyedSubscript:v15];

  LOBYTE(v17) = [v13 BOOLValue];
  bOOLValue = [v16 BOOLValue];
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
    v41 = [PGGraphYearNodeCollection yearNodesForYear:year inGraph:graphCopy];
    dateNodes = [v41 dateNodes];
    momentNodes = [dateNodes momentNodes];

    v22 = [momentNodes count];
    v43 = graphCopy;
    v42 = facesCopy;
    v39 = momentNodes;
    if (v22)
    {
      v23 = v22;
      v24 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughScenesProcessedInGraph:graphCopy, momentNodes];
      v25 = [v24 collectionByIntersecting:momentNodes];
      v26 = [v25 count];

      v27 = [(PGMemoryProcessedScenesAndFacesCache *)self momentNodesWithEnoughFacesProcessedInGraph:graphCopy];
      v28 = [v27 collectionByIntersecting:momentNodes];
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
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:year];
    [(NSMutableDictionary *)v32 setObject:v31 forKeyedSubscript:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:v30];
    v35 = self->_facesAreProcessedEnoughByYear;
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:year];
    [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v36];

    graphCopy = v43;
    facesCopy = v42;
  }

  else
  {
    LOBYTE(v30) = bOOLValue;
  }

  if (facesCopy)
  {
    v37 = (!processed | v17) & v30;
  }

  else
  {
    v37 = !processed | v17;
  }

  return v37 & 1;
}

- (id)momentNodesWithEnoughFacesProcessedInGraph:(id)graph
{
  momentNodesWithEnoughFacesProcessed = self->_momentNodesWithEnoughFacesProcessed;
  if (!momentNodesWithEnoughFacesProcessed)
  {
    v5 = [PGGraphMomentNodeCollection momentNodesWithEnoughFacesProcessedInGraph:graph];
    v6 = self->_momentNodesWithEnoughFacesProcessed;
    self->_momentNodesWithEnoughFacesProcessed = v5;

    momentNodesWithEnoughFacesProcessed = self->_momentNodesWithEnoughFacesProcessed;
  }

  return momentNodesWithEnoughFacesProcessed;
}

- (id)momentNodesWithEnoughScenesProcessedInGraph:(id)graph
{
  momentNodesWithEnoughScenesProcessed = self->_momentNodesWithEnoughScenesProcessed;
  if (!momentNodesWithEnoughScenesProcessed)
  {
    v5 = [PGGraphMomentNodeCollection momentNodesWithEnoughScenesProcessedInGraph:graph];
    v6 = self->_momentNodesWithEnoughScenesProcessed;
    self->_momentNodesWithEnoughScenesProcessed = v5;

    momentNodesWithEnoughScenesProcessed = self->_momentNodesWithEnoughScenesProcessed;
  }

  return momentNodesWithEnoughScenesProcessed;
}

- (BOOL)libraryHasEnoughScenesProcessedWithMinimumSceneAnalysisVersion:(unint64_t)version
{
  if (!version)
  {
    return 1;
  }

  scenesAreProcessedWithMinimumSceneAnalysisVersion = self->_scenesAreProcessedWithMinimumSceneAnalysisVersion;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)scenesAreProcessedWithMinimumSceneAnalysisVersion objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(PHPhotoLibrary *)self->_photoLibrary ratioOfAssetsAtOrAboveSceneAnalysisVersion:version];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v8 >= 0.9];
    v10 = self->_scenesAreProcessedWithMinimumSceneAnalysisVersion;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = self->_scenesAreProcessedWithMinimumSceneAnalysisVersion;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
  bOOLValue = [v14 BOOLValue];

  return bOOLValue;
}

- (BOOL)libraryHasEnoughScenesProcessed:(BOOL)processed andProcessedFaces:(BOOL)faces
{
  facesCopy = faces;
  if (processed)
  {
    v6 = [(NSMutableDictionary *)self->_scenesAreProcessedEnoughByYear objectForKeyedSubscript:&unk_2844821F0];
    v7 = v6;
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      [(PHPhotoLibrary *)self->_photoLibrary ratioOfAssetsWithScenesProcessed];
      bOOLValue = v9 >= 0.9;
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v9 >= 0.9];
      [(NSMutableDictionary *)self->_scenesAreProcessedEnoughByYear setObject:v10 forKeyedSubscript:&unk_2844821F0];
    }

    if (!bOOLValue)
    {
      return bOOLValue;
    }
  }

  else
  {
    LOBYTE(bOOLValue) = 1;
  }

  if (facesCopy)
  {
    v11 = [(NSMutableDictionary *)self->_facesAreProcessedEnoughByYear objectForKeyedSubscript:&unk_2844821F0];
    v12 = v11;
    if (v11)
    {
      LOBYTE(bOOLValue) = [v11 BOOLValue];
    }

    else
    {
      [(PHPhotoLibrary *)self->_photoLibrary ratioOfAssetsWithFacesProcessed];
      LOBYTE(bOOLValue) = v13 >= 0.9;
      v14 = [MEMORY[0x277CCABB0] numberWithBool:v13 >= 0.9];
      [(NSMutableDictionary *)self->_facesAreProcessedEnoughByYear setObject:v14 forKeyedSubscript:&unk_2844821F0];
    }
  }

  return bOOLValue;
}

- (BOOL)petVIPModelExists
{
  petVIPModelExistsAsNumber = self->_petVIPModelExistsAsNumber;
  if (!petVIPModelExistsAsNumber)
  {
    petVIPModelExists = [(PHPhotoLibrary *)self->_photoLibrary petVIPModelExists];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:petVIPModelExists];
    v6 = self->_petVIPModelExistsAsNumber;
    self->_petVIPModelExistsAsNumber = v5;

    petVIPModelExistsAsNumber = self->_petVIPModelExistsAsNumber;
  }

  return [(NSNumber *)petVIPModelExistsAsNumber BOOLValue];
}

- (PGMemoryProcessedScenesAndFacesCache)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v15.receiver = self;
  v15.super_class = PGMemoryProcessedScenesAndFacesCache;
  v6 = [(PGMemoryProcessedScenesAndFacesCache *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
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