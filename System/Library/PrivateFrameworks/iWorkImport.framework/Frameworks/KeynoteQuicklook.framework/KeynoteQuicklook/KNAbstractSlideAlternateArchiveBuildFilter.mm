@interface KNAbstractSlideAlternateArchiveBuildFilter
- (KNAbstractSlideAlternateArchiveBuildFilter)initWithExcludedBuildMinVersion:(unint64_t)version capacity:(unint64_t)capacity;
- (id)filteredBuildChunksForBuildChunks:(id)chunks;
- (id)filteredBuildsForBuilds:(id)builds;
@end

@implementation KNAbstractSlideAlternateArchiveBuildFilter

- (KNAbstractSlideAlternateArchiveBuildFilter)initWithExcludedBuildMinVersion:(unint64_t)version capacity:(unint64_t)capacity
{
  v13.receiver = self;
  v13.super_class = KNAbstractSlideAlternateArchiveBuildFilter;
  v6 = [(KNAbstractSlideAlternateArchiveBuildFilter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_excludedBuildMinVersion = version;
    v8 = objc_alloc(MEMORY[0x277CCAA50]);
    v10 = objc_msgSend_initWithOptions_capacity_(v8, v9, 512, capacity);
    excludedBuilds = v7->_excludedBuilds;
    v7->_excludedBuilds = v10;
  }

  return v7;
}

- (id)filteredBuildsForBuilds:(id)builds
{
  v25 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_count(buildsCopy, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = buildsCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if ((objc_msgSend_containsObject_(self->_excludedBuilds, v14, v18, v20) & 1) == 0)
        {
          objc_msgSend_addObject_(v10, v14, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v20, v24, 16);
    }

    while (v15);
  }

  return v10;
}

- (id)filteredBuildChunksForBuildChunks:(id)chunks
{
  v29 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_count(chunksCopy, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = chunksCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        excludedBuilds = self->_excludedBuilds;
        v21 = objc_msgSend_build(v19, v14, v15, v24);
        LOBYTE(excludedBuilds) = objc_msgSend_containsObject_(excludedBuilds, v22, v21);

        if ((excludedBuilds & 1) == 0)
        {
          objc_msgSend_addObject_(v10, v14, v19);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v24, v28, 16);
    }

    while (v16);
  }

  return v10;
}

@end