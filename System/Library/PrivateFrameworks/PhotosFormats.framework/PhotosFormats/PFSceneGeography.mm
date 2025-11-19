@interface PFSceneGeography
- (BOOL)loadOrCreateIndex;
- (c_iterator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,)findPOIHash:(id)a3;
- (char)magic;
- (double)popularityForPOI:(id)a3 popularity:(unsigned __int16)a4;
- (double)scoreForPOI:(id)a3 scenes:(id)a4 maxScenesCount:(int64_t)a5 popularityWeight:(double)a6;
- (id)dataArchivePath;
- (id)indexName;
- (id)scenesByScoreForPOIHash:(id)a3;
@end

@implementation PFSceneGeography

- (BOOL)loadOrCreateIndex
{
  v4.receiver = self;
  v4.super_class = PFSceneGeography;
  [(PFCachingArchiveIndex *)&v4 loadOrCreateIndex];
  return self->_floatMap && self->_scenes && self->_poi != 0;
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
  v7 = [PFSceneGeography magic]::buffer;
  snprintf([PFSceneGeography magic]::buffer, 0x50uLL, "%s%s%02x%08x%08x", "PFSceneGeography", "02", 2, v11, v6);
  return v7;
}

- (id)indexName
{
  dataArchivePath = self->_dataArchivePath;
  if (dataArchivePath)
  {
    v3 = [(NSString *)dataArchivePath lastPathComponent];
    v4 = [v3 stringByDeletingPathExtension];
  }

  else
  {
    v4 = @"PFSceneGeographyData";
  }

  return v4;
}

- (c_iterator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,)findPOIHash:(id)a3
{
  v5 = v3;
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PFSceneGeography *)self loadOrCreateIndex];
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    boost::interprocess::basic_managed_heap_memory<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_heap_memory(&v10);
  }

  *v5 = 1;

  return v9;
}

- (id)scenesByScoreForPOIHash:(id)a3
{
  v4 = a3;
  [(PFSceneGeography *)self findPOIHash:v4];
  v5 = 0;
  if (v68 != 1 && v68 != -&v68)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    if (v68 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = &v68 + v68;
    }

    v11 = *(v8 + 7);
    v10 = v8 + 56;
    v9 = v11;
    v12 = v10 - &v69;
    if (v11 == 1)
    {
      v12 = 0;
    }

    v13 = v12 + v9;
    if (v12 + v9 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = &v69 - &v67;
    }

    v15 = v14 + v13;
    v16 = &v69 - &v66;
    if (v13 == 1)
    {
      v16 = 0;
    }

    v17 = v16 + v13;
    v66 = v17;
    v67 = v15;
    v18 = *(v10 + 1);
    if (v17 == 1 && v18 != 0)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v5 = v7;
    v63 = v4;
    v20 = v17 + 2 * v18;
    v66 = v20;
    v21 = v15 == 1;
    v22 = &v67 + v15;
    if (v15 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = &v67 + v15;
    }

    v24 = &v66 + v20;
    if (v20 == 1)
    {
      v24 = 0;
    }

    if (v23 != v24)
    {
      do
      {
        if (v21)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        floatMap = self->_floatMap;
        v26 = v22[1];
        if (floatMap[2] <= v26)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v27 = floatMap[1];
        v28 = floatMap + v27 + 8;
        if (v27 == 1)
        {
          v29 = 0;
        }

        else
        {
          v29 = v28;
        }

        scenes = self->_scenes;
        v31 = *v22;
        if (scenes[2] <= v31)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v32 = *&v29[8 * v26];
        v33 = scenes[1];
        v34 = scenes + v33 + 8;
        if (v33 == 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = v34;
        }

        v36 = &v35[32 * v31];
        v39 = *(v36 + 1);
        v38 = v36 + 8;
        v37 = v39;
        v40 = v38 - &v69;
        if (v39 == 1)
        {
          v41 = 0;
        }

        else
        {
          v41 = v38 - &v69;
        }

        v42 = v41 + v37;
        if (v42 == 1)
        {
          v43 = 0;
        }

        else
        {
          v43 = &v69 - &v65;
        }

        v44 = v43 + v42;
        v65 = v44;
        if (*v38 == 1)
        {
          v40 = 0;
        }

        v45 = v40 + *v38;
        if (v45 == 1)
        {
          v46 = 0;
        }

        else
        {
          v46 = &v69 - &v64;
        }

        v47 = v46 + v45;
        v64 = v47;
        v48 = *(v38 + 1);
        if (v48)
        {
          v49 = v47 == 1;
        }

        else
        {
          v49 = 0;
        }

        if (v49)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v50 = v47 + 4 * v48;
        v64 = v50;
        v51 = v44 == 1;
        v52 = (&v65 + v44);
        if (v44 == 1)
        {
          v53 = 0;
        }

        else
        {
          v53 = &v65 + v44;
        }

        if (v50 == 1)
        {
          v54 = 0;
        }

        else
        {
          v54 = &v64 + v50;
        }

        if (v53 != v54)
        {
          do
          {
            if (v51)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            v55 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v52];
            [v5 setObject:v55 forKeyedSubscript:v56];

            if (v65 == 1)
            {
              __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
            }

            v57 = v65 + 4;
            v65 = v57;
            v51 = v57 == 1;
            v52 = (&v65 + v57);
            if (v57 == 1)
            {
              v58 = 0;
            }

            else
            {
              v58 = &v65 + v57;
            }

            if (v64 == 1)
            {
              v59 = 0;
            }

            else
            {
              v59 = &v64 + v64;
            }
          }

          while (v58 != v59);
          v15 = v67;
        }

        if (v15 == 1)
        {
          __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
        }

        v15 += 2;
        v67 = v15;
        v21 = v15 == 1;
        v22 = &v67 + v15;
        if (v15 == 1)
        {
          v60 = 0;
        }

        else
        {
          v60 = &v67 + v15;
        }

        if (v66 == 1)
        {
          v61 = 0;
        }

        else
        {
          v61 = &v66 + v66;
        }
      }

      while (v60 != v61);
    }

    v4 = v63;
  }

  return v5;
}

- (double)popularityForPOI:(id)a3 popularity:(unsigned __int16)a4
{
  v5 = a4;
  v7 = a3;
  [(PFSceneGeography *)self findPOIHash:v7];
  v8 = &v12 + v12;
  if (v12 == 1 || v8 == 0)
  {
    v10 = &PFSceneGeographyPOINotFound;
LABEL_11:
    v4 = *v10;
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    v10 = (v8 + 32);
    goto LABEL_11;
  }

  if (!v5)
  {
    v10 = (v8 + 40);
    goto LABEL_11;
  }

LABEL_12:

  return v4;
}

- (double)scoreForPOI:(id)a3 scenes:(id)a4 maxScenesCount:(int64_t)a5 popularityWeight:(double)a6
{
  v88[250] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v78 = v9;
  [(PFSceneGeography *)self findPOIHash:v9];
  v11 = v86 == 1 || v86 == -&v86;
  if (v11)
  {
    v12 = *&PFSceneGeographyPOINotFound;
  }

  else
  {
    v13 = [v10 count];
    if (v13 >= a5)
    {
      v14 = a5;
    }

    else
    {
      v14 = v13;
    }

    v15 = 250;
    v79 = v14;
    if (v14 < 0xFA)
    {
      v15 = v14;
    }

    v80 = v15;
    bzero(v88, 0x7D0uLL);
    if (v86 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = &v86 + v86;
    }

    v17 = *(v16 + 7);
    v18 = v16 + 56 - &v87;
    if (v17 == 1)
    {
      v18 = 0;
    }

    v19 = v18 + v17;
    if (v19 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = &v87 - &v85;
    }

    v21 = v20 + v19;
    v22 = &v87 - &v84;
    if (v19 == 1)
    {
      v22 = 0;
    }

    v23 = v22 + v19;
    v84 = v23;
    v85 = v21;
    v24 = *(v16 + 8);
    if (v23 == 1 && v24 != 0)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v26 = v23 + 2 * v24;
    v84 = v26;
    v27 = v21 == 1;
    v28 = &v85 + v21;
    if (v21 == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = &v85 + v21;
    }

    v30 = &v84 + v26;
    if (v26 == 1)
    {
      v30 = 0;
    }

    if (v29 == v30)
    {
      goto LABEL_102;
    }

    v77 = v16;
    v31 = 0;
    v32 = 0;
    if (v80 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v80;
    }

    v12 = 0.0;
    do
    {
      if (v27)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      floatMap = self->_floatMap;
      v35 = v28[1];
      if (floatMap[2] <= v35)
      {
        __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
      }

      v36 = floatMap[1];
      v37 = floatMap + v36 + 8;
      if (v36 == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = v37;
      }

      scenes = self->_scenes;
      v40 = *v28;
      if (scenes[2] <= v40)
      {
        __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
      }

      v41 = *&v38[8 * v35];
      v42 = scenes[1];
      v43 = scenes + v42 + 8;
      if (v42 == 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43;
      }

      v45 = &v44[32 * v40];
      v48 = *(v45 + 1);
      v47 = v45 + 8;
      v46 = v48;
      v49 = v47 - &v87;
      if (v48 == 1)
      {
        v50 = 0;
      }

      else
      {
        v50 = v47 - &v87;
      }

      v51 = v50 + v46;
      v52 = &v87 - &v83;
      if (v51 == 1)
      {
        v52 = 0;
      }

      v53 = v52 + v51;
      v83 = v53;
      if (*v47 == 1)
      {
        v49 = 0;
      }

      v54 = v49 + *v47;
      v55 = &v87 - &v82;
      if (v54 == 1)
      {
        v55 = 0;
      }

      v56 = v55 + v54;
      v82 = v56;
      v57 = *(v47 + 1);
      if (v57)
      {
        v58 = v56 == 1;
      }

      else
      {
        v58 = 0;
      }

      if (v58)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v59 = v56 + 4 * v57;
      v82 = v59;
      v11 = v53 == 1;
      v60 = v53 == 1;
      v61 = (&v83 + v53);
      if (v11)
      {
        v62 = 0;
      }

      else
      {
        v62 = v61;
      }

      if (v59 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = &v82 + v59;
      }

      if (v62 != v63)
      {
        do
        {
          if (v60)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v61];
          v65 = [v10 containsObject:v64];

          if (v65)
          {
            v12 = v41 + v12;
            if (a5 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v31 >= v80)
              {
                if (v41 > *&v88[v32])
                {
                  *&v88[v32] = v41;
                  if (v79)
                  {
                    v66 = 0;
                    v67 = v41;
                    do
                    {
                      if (*&v88[v66] < v67)
                      {
                        v32 = v66;
                        v67 = *&v88[v66];
                      }

                      ++v66;
                    }

                    while (v33 != v66);
                  }
                }
              }

              else
              {
                *&v88[v31] = v41;
                if (v41 < *&v88[v32])
                {
                  v32 = v31;
                }
              }
            }

            ++v31;
          }

          if (v83 == 1)
          {
            __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
          }

          v68 = v83 + 4;
          v83 = v68;
          v60 = v68 == 1;
          v61 = (&v83 + v68);
          if (v68 == 1)
          {
            v69 = 0;
          }

          else
          {
            v69 = &v83 + v68;
          }

          if (v82 == 1)
          {
            v70 = 0;
          }

          else
          {
            v70 = &v82 + v82;
          }
        }

        while (v69 != v70);
        v21 = v85;
      }

      if (v21 == 1)
      {
        __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
      }

      v21 += 2;
      v85 = v21;
      v27 = v21 == 1;
      v28 = &v85 + v21;
      if (v21 == 1)
      {
        v71 = 0;
      }

      else
      {
        v71 = &v85 + v21;
      }

      if (v84 == 1)
      {
        v72 = 0;
      }

      else
      {
        v72 = &v84 + v84;
      }
    }

    while (v71 != v72);
    if (v31 > v80)
    {
      if (!v79)
      {
LABEL_102:
        v12 = *&PFSceneGeographyNoRelevantScenes;
        goto LABEL_103;
      }

      v12 = 0.0;
      v73 = v88;
      do
      {
        v74 = *v73++;
        v12 = v12 + v74;
        --v33;
      }

      while (v33);
    }

    if (v12 == 0.0)
    {
      goto LABEL_102;
    }

    if (a6 != 0.0)
    {
      if (*&PFSceneGeographyClipTFIDF >= v12)
      {
        v76 = v12;
      }

      else
      {
        v76 = *&PFSceneGeographyClipTFIDF;
      }

      v12 = (v77[5] * a6 + (1.0 - a6) * v76) / (a6 + (1.0 - a6) * *&PFSceneGeographyClipTFIDF);
    }
  }

LABEL_103:

  return v12;
}

- (id)dataArchivePath
{
  dataArchivePath = self->_dataArchivePath;
  if (dataArchivePath)
  {
    v4 = dataArchivePath;
  }

  else
  {
    v4 = @"/System/Library/Photos/Resources/PhotosAtlas/SceneGeography_v1.bz2";
  }

  return v4;
}

@end