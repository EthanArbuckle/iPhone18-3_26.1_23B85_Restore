@interface PLSearchIndexSceneTaxonomyProvider
- (NSString)digests;
- (PLSearchIndexSceneTaxonomy)latestSceneTaxonomy;
- (PLSearchIndexSceneTaxonomy)previousSceneTaxonomy;
- (id)description;
- (id)searchIndexSceneTaxonomyForSceneAnalysisVersion:(signed __int16)a3;
@end

@implementation PLSearchIndexSceneTaxonomyProvider

- (id)description
{
  v3 = [(PLSearchIndexSceneTaxonomyProvider *)self latestSceneTaxonomy];
  v4 = [v3 description];

  v5 = [(PLSearchIndexSceneTaxonomyProvider *)self previousSceneTaxonomy];
  v6 = [v5 description];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"latestTaxonomy: %@\npreviousTaxonomy: %@", v4, v6];

  return v7;
}

- (NSString)digests
{
  v3 = [(PLSearchIndexSceneTaxonomyProvider *)self latestSceneTaxonomy];
  v4 = [v3 digest];

  v5 = [(PLSearchIndexSceneTaxonomyProvider *)self previousSceneTaxonomy];
  v6 = [v5 digest];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v4, v6];

  return v7;
}

- (id)searchIndexSceneTaxonomyForSceneAnalysisVersion:(signed __int16)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 < 99)
  {
    v4 = a3;
    if (a3 < 84)
    {
      v5 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7[0] = 67109120;
        v7[1] = v4;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "Unable to instantiate scene taxonomy for scene analysis version: %i", v7, 8u);
      }

      v3 = 0;
    }

    else
    {
      v3 = [(PLSearchIndexSceneTaxonomyProvider *)self previousSceneTaxonomy];
    }
  }

  else
  {
    v3 = [(PLSearchIndexSceneTaxonomyProvider *)self latestSceneTaxonomy];
  }

  return v3;
}

- (PLSearchIndexSceneTaxonomy)previousSceneTaxonomy
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  previousSceneTaxonomy = v2->_previousSceneTaxonomy;
  if (!previousSceneTaxonomy)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", 84];
    v11 = 0;
    v5 = [[PLSearchIndexSceneTaxonomy alloc] initWithIdentifier:v4 error:&v11];
    v6 = v11;
    v7 = v2->_previousSceneTaxonomy;
    v2->_previousSceneTaxonomy = v5;

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

    previousSceneTaxonomy = v2->_previousSceneTaxonomy;
  }

  v9 = previousSceneTaxonomy;
  objc_sync_exit(v2);

  return v9;
}

- (PLSearchIndexSceneTaxonomy)latestSceneTaxonomy
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  latestSceneTaxonomy = v2->_latestSceneTaxonomy;
  if (!latestSceneTaxonomy)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", 99];
    v11 = 0;
    v5 = [[PLSearchIndexSceneTaxonomy alloc] initWithIdentifier:v4 error:&v11];
    v6 = v11;
    v7 = v2->_latestSceneTaxonomy;
    v2->_latestSceneTaxonomy = v5;

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

    latestSceneTaxonomy = v2->_latestSceneTaxonomy;
  }

  v9 = latestSceneTaxonomy;
  objc_sync_exit(v2);

  return v9;
}

@end