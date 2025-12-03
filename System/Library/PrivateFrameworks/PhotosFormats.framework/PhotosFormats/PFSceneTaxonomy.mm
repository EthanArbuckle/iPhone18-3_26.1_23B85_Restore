@interface PFSceneTaxonomy
+ (__CFString)indexNameForIdentifier:(int)identifier forArchivePath:;
+ (id)dataArchivePathForIdentifier:(void *)identifier bundle:;
+ (id)sharedTaxonomy;
- (BOOL)loadOrCreateIndex;
- (NSString)description;
- (NSString)digest;
- (PFSceneTaxonomy)initWithDataPath:(id)path identifier:(id)identifier localizationBundle:(id)bundle tableName:(id)name error:(id *)error;
- (PFSceneTaxonomy)initWithIdentifier:(id)identifier error:(id *)error;
- (PFSceneTaxonomy)initWithLatestTaxonomy;
- (PFSceneTaxonomyNode)rootNode;
- (char)magic;
- (const)indexLabel;
- (id)dataArchivePath;
- (id)indexName;
- (id)localizedStringForKey:(id)key;
- (id)nodeForExtendedSceneClassId:(unint64_t)id;
- (id)nodeForName:(id)name;
- (unint64_t)extendedSceneClassIdForName:(id)name;
- (unint64_t)nodeCount;
- (void)nodeRefForExtendedSceneClassId:(unint64_t)id;
- (void)nodeRefForName:(id)name;
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
    lastPathComponent = [(NSString *)dataPath lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  }

  else
  {
    stringByDeletingPathExtension = [PFSceneTaxonomy indexNameForIdentifier:0 forArchivePath:?];
  }

  if (self->_forceIndexed)
  {
    v6 = [stringByDeletingPathExtension stringByAppendingString:@"-forced"];

    stringByDeletingPathExtension = v6;
  }

  return stringByDeletingPathExtension;
}

- (char)magic
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  architectureHash = [self architectureHash];
  dataArchivePath = [self dataArchivePath];
  if (stat([dataArchivePath fileSystemRepresentation], &v12))
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
      dataArchivePath2 = [self dataArchivePath];
      v10 = *__error();
      *buf = 138543618;
      v14 = dataArchivePath2;
      v15 = 1024;
      v16 = v10;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get file metadata from dataArchivePath %{public}@: %d.", buf, 0x12u);
    }

    v6 = 0;
  }

  v11 = architectureHash;
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
    dataArchivePath = dataPath;
  }

  else
  {
    localizationBundle = self->_localizationBundle;
    if (localizationBundle)
    {
      dataArchivePath = [PFSceneTaxonomy dataArchivePathForIdentifier:localizationBundle bundle:?];
      if (!dataArchivePath)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          indexName = [(PFSceneTaxonomy *)self indexName];
          bundlePath = [(NSBundle *)self->_localizationBundle bundlePath];
          *buf = 138543618;
          v11 = indexName;
          v12 = 2114;
          v13 = bundlePath;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error finding %{public}@ data archive resource in bundle %{public}@.", buf, 0x16u);
        }

        dataArchivePath = 0;
      }
    }

    else
    {
      v9.receiver = self;
      v9.super_class = PFSceneTaxonomy;
      dataArchivePath = [(PFCachingArchiveIndex *)&v9 dataArchivePath];
    }
  }

  return dataArchivePath;
}

- (id)nodeForName:(id)name
{
  v4 = [(PFSceneTaxonomy *)self nodeRefForName:name];
  if (v4)
  {
    v4 = [[PFSceneTaxonomyNode alloc] initWithNodeRef:v4 taxonomy:self];
  }

  return v4;
}

- (id)nodeForExtendedSceneClassId:(unint64_t)id
{
  v4 = [(PFSceneTaxonomy *)self nodeRefForExtendedSceneClassId:id];
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

+ (id)dataArchivePathForIdentifier:(void *)identifier bundle:
{
  v4 = a2;
  identifierCopy = identifier;
  v6 = objc_opt_self();
  if (!identifierCopy)
  {
    identifierCopy = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  }

  v7 = [(PFSceneTaxonomy *)v6 indexNameForIdentifier:v4 forArchivePath:1];
  v8 = [identifierCopy pathForResource:v7 ofType:@"bz2"];

  return v8;
}

+ (__CFString)indexNameForIdentifier:(int)identifier forArchivePath:
{
  v4 = a2;
  objc_opt_self();
  if (!v4 && identifier)
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

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  if (keyCopy && (localizationBundle = self->_localizationBundle) != 0 && self->_tableName)
  {
    v6 = [(NSBundle *)localizationBundle localizedStringForKey:keyCopy value:@"NO LOC" table:?];
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
    digest = [(PFSceneTaxonomy *)self digest];
    v9 = [v3 stringWithFormat:@"<%@: %p> data:%@ tableName:%@, count:%lu, digest:%@", v4, self, dataPath, tableName, v7, digest];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)extendedSceneClassIdForName:(id)name
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PFSceneTaxonomy *)self nodeRefForName:name];
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

- (void)nodeRefForName:(id)name
{
  v9 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  loadOrCreateIndex = [(PFSceneTaxonomy *)self loadOrCreateIndex];
  if (nameCopy)
  {
    v6 = loadOrCreateIndex;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if ([nameCopy length] >= 0x201)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"name must be %ld characters or less: %@", 512, nameCopy}];
    }

    boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_heap_memory(&v8);
  }

  return 0;
}

- (void)nodeRefForExtendedSceneClassId:(unint64_t)id
{
  idCopy = id;
  if (![(PFSceneTaxonomy *)self loadOrCreateIndex])
  {
    return 0;
  }

  boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<unsigned long long const,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned long long,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::hash<unsigned long long>,std::equal_to<unsigned long long>>>::find_node_impl<unsigned long long,std::equal_to<unsigned long long>>(&v14, self->_sceneMap, id, &idCopy);
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

- (PFSceneTaxonomy)initWithDataPath:(id)path identifier:(id)identifier localizationBundle:(id)bundle tableName:(id)name error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  bundleCopy = bundle;
  nameCopy = name;
  if (!identifierCopy)
  {
LABEL_4:
    v31.receiver = self;
    v31.super_class = PFSceneTaxonomy;
    v17 = [(PFSceneTaxonomy *)&v31 init];
    v18 = v17;
    if (v17)
    {
      v19 = +[PFSceneTaxonomy latestTaxonomyIdentifier];
      v20 = [identifierCopy isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        v21 = [identifierCopy copy];
        identifier = v17->_identifier;
        v17->_identifier = v21;
      }

      v23 = [pathCopy copy];
      dataPath = v17->_dataPath;
      v17->_dataPath = v23;

      objc_storeStrong(&v17->_localizationBundle, bundle);
      v25 = [nameCopy copy];
      tableName = v17->_tableName;
      v17->_tableName = v25;

      if (PFArchiveFileIsAppleInternal::onceToken[0] != -1)
      {
        dispatch_once(PFArchiveFileIsAppleInternal::onceToken, &__block_literal_global_12613);
      }

      if (PFArchiveFileIsAppleInternal::isAppleInternal == 1)
      {
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        v28 = [standardUserDefaults BOOLForKey:@"PFDefaultSceneTaxonomyIsDenylistDisabled"];

        if (v28)
        {
          v18->_forceIndexed = 1;
        }
      }
    }

    goto LABEL_17;
  }

  v16 = [PFSceneTaxonomy dataArchivePathForIdentifier:identifierCopy bundle:bundleCopy];
  if (v16)
  {

    goto LABEL_4;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    bundlePath = [bundleCopy bundlePath];
    *buf = 138412546;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = bundlePath;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error reading scene taxonomy data archive with identifier %@ from %@", buf, 0x16u);
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (PFSceneTaxonomy)initWithIdentifier:(id)identifier error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not obtain the bundle containing the scene taxonomy", &v14, 2u);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [standardUserDefaults stringForKey:@"PFSceneTaxonomyData"];

  if ([v9 length])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [defaultManager fileExistsAtPath:v9];

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
  v12 = [(PFSceneTaxonomy *)self initWithDataPath:v9 identifier:identifierCopy localizationBundle:v7 tableName:@"scenetaxonomy" error:error];
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