@interface PFSceneTaxonomy
+ (__CFString)indexNameForIdentifier:(int)a3 forArchivePath:;
+ (id)dataArchivePathForIdentifier:(void *)a3 bundle:;
+ (id)sharedTaxonomy;
- (BOOL)loadOrCreateIndex;
- (NSString)description;
- (NSString)digest;
- (PFSceneTaxonomy)initWithDataPath:(id)a3 identifier:(id)a4 localizationBundle:(id)a5 tableName:(id)a6 error:(id *)a7;
- (PFSceneTaxonomy)initWithIdentifier:(id)a3 error:(id *)a4;
- (PFSceneTaxonomy)initWithLatestTaxonomy;
- (PFSceneTaxonomyNode)rootNode;
- (char)magic;
- (const)indexLabel;
- (id)dataArchivePath;
- (id)indexName;
- (id)localizedStringForKey:(id)a3;
- (id)nodeForExtendedSceneClassId:(unint64_t)a3;
- (id)nodeForName:(id)a3;
- (unint64_t)extendedSceneClassIdForName:(id)a3;
- (unint64_t)nodeCount;
- (void)nodeRefForExtendedSceneClassId:(unint64_t)a3;
- (void)nodeRefForName:(id)a3;
@end

@implementation PFSceneTaxonomy

- (BOOL)loadOrCreateIndex
{
  v4.receiver = self;
  v4.super_class = PFSceneTaxonomy;
  [(PFCachingArchiveIndex *)&v4 loadOrCreateIndex];
  return self->_nameMap && self->_sceneMap != 0;
}

- (PFSceneTaxonomy)initWithLatestTaxonomy
{
  if ([PFSceneTaxonomy initWithLatestTaxonomy]::onceToken != -1)
  {
    dispatch_once(&[PFSceneTaxonomy initWithLatestTaxonomy]::onceToken, &__block_literal_global_7511);
  }

  v3 = [PFSceneTaxonomy initWithLatestTaxonomy]::identifier;

  return [(PFSceneTaxonomy *)self initWithIdentifier:v3 error:0];
}

- (id)indexName
{
  dataPath = self->_dataPath;
  if (dataPath)
  {
    v4 = [(NSString *)dataPath lastPathComponent];
    v5 = [v4 stringByDeletingPathExtension];
  }

  else
  {
    v5 = [PFSceneTaxonomy indexNameForIdentifier:0 forArchivePath:?];
  }

  if (self->_forceIndexed)
  {
    v6 = [v5 stringByAppendingString:@"-forced"];

    v5 = v6;
  }

  return v5;
}

- (char)magic
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 architectureHash];
  v3 = [a1 dataArchivePath];
  if (stat([v3 fileSystemRepresentation], &v12))
  {
    v4 = 0;
  }

  else
  {
    v4 = (v12.st_mode & 0x8000u) != 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = ((v12.st_mtimespec.tv_sec ^ v12.st_size) >> 32) ^ LODWORD(v12.st_mtimespec.tv_sec) ^ LODWORD(v12.st_size);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [a1 dataArchivePath];
      v10 = *__error();
      *buf = 138543618;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get file metadata from dataArchivePath %{public}@: %d.", buf, 0x12u);
    }

    v6 = 0;
  }

  v11 = v2;
  v7 = [PFSceneTaxonomy magic]::buffer;
  snprintf([PFSceneTaxonomy magic]::buffer, 0x50uLL, "%s%s%02x%08x%08x", "PFSceneTaxonomy", "02", 6, v11, v6);
  return v7;
}

- (id)dataArchivePath
{
  v14 = *MEMORY[0x1E69E9840];
  dataPath = self->_dataPath;
  if (dataPath)
  {
    v3 = dataPath;
  }

  else
  {
    localizationBundle = self->_localizationBundle;
    if (localizationBundle)
    {
      v3 = [PFSceneTaxonomy dataArchivePathForIdentifier:localizationBundle bundle:?];
      if (!v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v7 = [(PFSceneTaxonomy *)self indexName];
          v8 = [(NSBundle *)self->_localizationBundle bundlePath];
          *buf = 138543618;
          v11 = v7;
          v12 = 2114;
          v13 = v8;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error finding %{public}@ data archive resource in bundle %{public}@.", buf, 0x16u);
        }

        v3 = 0;
      }
    }

    else
    {
      v9.receiver = self;
      v9.super_class = PFSceneTaxonomy;
      v3 = [(PFCachingArchiveIndex *)&v9 dataArchivePath];
    }
  }

  return v3;
}

- (id)nodeForName:(id)a3
{
  v4 = [(PFSceneTaxonomy *)self nodeRefForName:a3];
  if (v4)
  {
    v4 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:v4 taxonomy:self];
  }

  return v4;
}

- (id)nodeForExtendedSceneClassId:(unint64_t)a3
{
  v4 = [(PFSceneTaxonomy *)self nodeRefForExtendedSceneClassId:a3];
  if (v4)
  {
    v4 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:v4 taxonomy:self];
  }

  return v4;
}

- (PFSceneTaxonomyNode)rootNode
{
  v2 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:[(PFSceneTaxonomy *)self rootNodeRef] taxonomy:self];

  return v2;
}

+ (id)sharedTaxonomy
{
  if (sharedTaxonomy_onceToken[0] != -1)
  {
    dispatch_once(sharedTaxonomy_onceToken, &__block_literal_global_7364);
  }

  v3 = sharedTaxonomy_sharedTaxonomy;

  return v3;
}

void __48__PFSceneTaxonomy_Compatibility__sharedTaxonomy__block_invoke()
{
  v0 = objc_alloc_init(PFSceneTaxonomy);
  v1 = sharedTaxonomy_sharedTaxonomy;
  sharedTaxonomy_sharedTaxonomy = v0;

  if (!sharedTaxonomy_sharedTaxonomy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating PFSceneTaxonomy.sharedTaxonomy", v2, 2u);
  }
}

+ (id)dataArchivePathForIdentifier:(void *)a3 bundle:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (!v5)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  }

  v7 = [(PFSceneTaxonomy *)v6 indexNameForIdentifier:v4 forArchivePath:1];
  v8 = [v5 pathForResource:v7 ofType:@"bz2"];

  return v8;
}

+ (__CFString)indexNameForIdentifier:(int)a3 forArchivePath:
{
  v4 = a2;
  objc_opt_self();
  if (!v4 && a3)
  {
    v4 = +[PFSceneTaxonomy latestTaxonomyIdentifier];
  }

  if (v4)
  {
    v5 = [@"PFSceneTaxonomyData" stringByAppendingString:@"_"];
    v6 = [v5 stringByAppendingString:v4];
  }

  else
  {
    v6 = @"PFSceneTaxonomyData";
  }

  return v6;
}

- (const)indexLabel
{
  if (self->_dataPath)
  {
    return "test scene taxonomy";
  }

  else
  {
    return "scene taxonomy";
  }
}

- (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  if (v4 && (localizationBundle = self->_localizationBundle) != 0 && self->_tableName)
  {
    v6 = [(NSBundle *)localizationBundle localizedStringForKey:v4 value:@"NO LOC" table:?];
    if ([@"NO LOC" isEqualToString:v6] & 1) != 0 || (objc_msgSend(@"NULL", "isEqualToString:", v6))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  if ([(PFSceneTaxonomy *)self loadOrCreateIndex])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    tableName = self->_tableName;
    if (self->_dataPath)
    {
      dataPath = self->_dataPath;
    }

    else
    {
      dataPath = @"<default>";
    }

    v7 = *(self->_nameMap + 4);
    v8 = [(PFSceneTaxonomy *)self digest];
    v9 = [v3 stringWithFormat:@"<%@: %p> data:%@ tableName:%@, count:%lu, digest:%@", v4, self, dataPath, tableName, v7, v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)extendedSceneClassIdForName:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PFSceneTaxonomy *)self nodeRefForName:a3];
  if (v3)
  {
    return *v3;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = "[PFSceneTaxonomy extendedSceneClassIdForName:]";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneTaxonomyErrorReturn in %{public}s.", &v5, 0xCu);
  }

  return -1;
}

- (void)nodeRefForName:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PFSceneTaxonomy *)self loadOrCreateIndex];
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if ([v4 length] >= 0x201)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"name must be %ld characters or less: %@", 512, v4}];
    }

    boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_heap_memory(&v8);
  }

  return 0;
}

- (void)nodeRefForExtendedSceneClassId:(unint64_t)a3
{
  v13 = a3;
  if (![(PFSceneTaxonomy *)self loadOrCreateIndex])
  {
    return 0;
  }

  boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::find_node_impl<unsigned long long,std::equal_to<unsigned long long>>(&v14, self->_sceneMap, a3, &v13);
  result = 0;
  v6 = &v14 - v12;
  if (v14 == 1)
  {
    v6 = 0;
  }

  v7 = v6 + v14;
  v8 = &v12[v7];
  if (v7 != 1 && v8 != 0)
  {
    v10 = *(v8 + 1);
    v11 = &v8[v10 + 8];
    if (v10 == 1)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

- (NSString)digest
{
  if ([(PFSceneTaxonomy *)self loadOrCreateIndex])
  {
    v3 = self->_digest;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)nodeCount
{
  if ([(PFSceneTaxonomy *)self loadOrCreateIndex])
  {
    return *(self->_nameMap + 4);
  }

  else
  {
    return 0;
  }
}

- (PFSceneTaxonomy)initWithDataPath:(id)a3 identifier:(id)a4 localizationBundle:(id)a5 tableName:(id)a6 error:(id *)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v13)
  {
LABEL_4:
    v31.receiver = self;
    v31.super_class = PFSceneTaxonomy;
    v17 = [(PFSceneTaxonomy *)&v31 init];
    v18 = v17;
    if (v17)
    {
      v19 = +[PFSceneTaxonomy latestTaxonomyIdentifier];
      v20 = [v13 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        v21 = [v13 copy];
        identifier = v17->_identifier;
        v17->_identifier = v21;
      }

      v23 = [v12 copy];
      dataPath = v17->_dataPath;
      v17->_dataPath = v23;

      objc_storeStrong(&v17->_localizationBundle, a5);
      v25 = [v15 copy];
      tableName = v17->_tableName;
      v17->_tableName = v25;

      if (PFArchiveFileIsAppleInternal::onceToken[0] != -1)
      {
        dispatch_once(PFArchiveFileIsAppleInternal::onceToken, &__block_literal_global_12613);
      }

      if (PFArchiveFileIsAppleInternal::isAppleInternal == 1)
      {
        v27 = [MEMORY[0x1E695E000] standardUserDefaults];
        v28 = [v27 BOOLForKey:@"PFDefaultSceneTaxonomyIsDenylistDisabled"];

        if (v28)
        {
          v18->_forceIndexed = 1;
        }
      }
    }

    goto LABEL_17;
  }

  v16 = [PFSceneTaxonomy dataArchivePathForIdentifier:v13 bundle:v14];
  if (v16)
  {

    goto LABEL_4;
  }

  if (a7)
  {
    *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [v14 bundlePath];
    *buf = 138412546;
    v33 = v13;
    v34 = 2112;
    v35 = v30;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error reading scene taxonomy data archive with identifier %@ from %@", buf, 0x16u);
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (PFSceneTaxonomy)initWithIdentifier:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not obtain the bundle containing the scene taxonomy", &v14, 2u);
  }

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 stringForKey:@"PFSceneTaxonomyData"];

  if ([v9 length])
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = @"PFSceneTaxonomyData";
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error locating custom scene taxonomy from user default %@: %@; fallbacking back to default taxonomy", &v14, 0x16u);
      }

      v9 = 0;
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_13:

      v12 = 0;
      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = @"PFSceneTaxonomyData";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "using custom scene taxonomy from user default %@: %@", &v14, 0x16u);
    }
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_9:
  v12 = [(PFSceneTaxonomy *)self initWithDataPath:v9 identifier:v6 localizationBundle:v7 tableName:@"scenetaxonomy" error:a4];
LABEL_14:

  return v12;
}

void __41__PFSceneTaxonomy_initWithLatestTaxonomy__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 stringForKey:@"PFSceneTaxonomyIdentifierOverride"];

  if (v1)
  {
    objc_storeStrong(&[PFSceneTaxonomy initWithLatestTaxonomy]::identifier, v1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "using scene taxonomy identifier override: %@", &v4, 0xCu);
    }
  }

  else
  {
    v2 = +[PFSceneTaxonomy latestTaxonomyIdentifier];
    v3 = [PFSceneTaxonomy initWithLatestTaxonomy]::identifier;
    [PFSceneTaxonomy initWithLatestTaxonomy]::identifier = v2;
  }
}

@end