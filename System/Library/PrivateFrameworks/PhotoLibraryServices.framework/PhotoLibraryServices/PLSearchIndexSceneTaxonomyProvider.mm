@interface PLSearchIndexSceneTaxonomyProvider
- (NSString)digests;
- (PLSearchIndexSceneTaxonomy)latestSceneTaxonomy;
- (PLSearchIndexSceneTaxonomy)previousSceneTaxonomy;
- (id)description;
- (id)searchIndexSceneTaxonomyForSceneAnalysisVersion:(signed __int16)version;
@end

@implementation PLSearchIndexSceneTaxonomyProvider

- (id)description
{
  latestSceneTaxonomy = [(PLSearchIndexSceneTaxonomyProvider *)self latestSceneTaxonomy];
  v4 = [latestSceneTaxonomy description];

  previousSceneTaxonomy = [(PLSearchIndexSceneTaxonomyProvider *)self previousSceneTaxonomy];
  v6 = [previousSceneTaxonomy description];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"latestTaxonomy: %@\npreviousTaxonomy: %@", v4, v6];

  return v7;
}

- (NSString)digests
{
  latestSceneTaxonomy = [(PLSearchIndexSceneTaxonomyProvider *)self latestSceneTaxonomy];
  digest = [latestSceneTaxonomy digest];

  previousSceneTaxonomy = [(PLSearchIndexSceneTaxonomyProvider *)self previousSceneTaxonomy];
  digest2 = [previousSceneTaxonomy digest];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", digest, digest2];

  return v7;
}

- (id)searchIndexSceneTaxonomyForSceneAnalysisVersion:(signed __int16)version
{
  v8 = *MEMORY[0x1E69E9840];
  if (version < 99)
  {
    versionCopy = version;
    if (version < 84)
    {
      v5 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7[0] = 67109120;
        v7[1] = versionCopy;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "Unable to instantiate scene taxonomy for scene analysis version: %i", v7, 8u);
      }

      previousSceneTaxonomy = 0;
    }

    else
    {
      previousSceneTaxonomy = [(PLSearchIndexSceneTaxonomyProvider *)self previousSceneTaxonomy];
    }
  }

  else
  {
    previousSceneTaxonomy = [(PLSearchIndexSceneTaxonomyProvider *)self latestSceneTaxonomy];
  }

  return previousSceneTaxonomy;
}

- (PLSearchIndexSceneTaxonomy)previousSceneTaxonomy
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  previousSceneTaxonomy = selfCopy->_previousSceneTaxonomy;
  if (!previousSceneTaxonomy)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", 84];
    v11 = 0;
    v5 = [[PLSearchIndexSceneTaxonomy alloc] initWithIdentifier:v4 error:&v11];
    v6 = v11;
    v7 = selfCopy->_previousSceneTaxonomy;
    selfCopy->_previousSceneTaxonomy = v5;

    if (v6)
    {
      v8 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version: %@: %@", buf, 0x16u);
      }
    }

    previousSceneTaxonomy = selfCopy->_previousSceneTaxonomy;
  }

  v9 = previousSceneTaxonomy;
  objc_sync_exit(selfCopy);

  return v9;
}

- (PLSearchIndexSceneTaxonomy)latestSceneTaxonomy
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  latestSceneTaxonomy = selfCopy->_latestSceneTaxonomy;
  if (!latestSceneTaxonomy)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", 99];
    v11 = 0;
    v5 = [[PLSearchIndexSceneTaxonomy alloc] initWithIdentifier:v4 error:&v11];
    v6 = v11;
    v7 = selfCopy->_latestSceneTaxonomy;
    selfCopy->_latestSceneTaxonomy = v5;

    if (v6)
    {
      v8 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version: %@: %@", buf, 0x16u);
      }
    }

    latestSceneTaxonomy = selfCopy->_latestSceneTaxonomy;
  }

  v9 = latestSceneTaxonomy;
  objc_sync_exit(selfCopy);

  return v9;
}

@end