@interface PFCShuffleGenerator
- (PFCShuffleGenerator)init;
- (PFCShuffleGenerator)initWithPhotoLibrary:(id)library targetShuffleSize:(int64_t)size;
- (id)shuffleForNonPersonSubtypes:(id)subtypes requireMinimumShuffleCount:(BOOL)count;
- (id)shuffles;
- (void)generateShuffles;
- (void)generateShufflesV2;
@end

@implementation PFCShuffleGenerator

- (PFCShuffleGenerator)init
{
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
  v4 = [(PFCShuffleGenerator *)self initWithPhotoLibrary:mEMORY[0x1E69789A8] targetShuffleSize:64];

  return v4;
}

- (PFCShuffleGenerator)initWithPhotoLibrary:(id)library targetShuffleSize:(int64_t)size
{
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = PFCShuffleGenerator;
  v8 = [(PFCShuffleGenerator *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoLibrary, library);
    sizeCopy = 16;
    v9->_shuffleMinimumSuggestionRequired = 16;
    if (size > 0x10)
    {
      sizeCopy = size;
    }

    v9->_targetShuffleSize = sizeCopy;
    v11 = [[PFCShuffleDataSource alloc] initWithPhotoLibrary:v9->_photoLibrary];
    dataSource = v9->_dataSource;
    v9->_dataSource = v11;

    array = [MEMORY[0x1E695DF70] array];
    shuffles = v9->_shuffles;
    v9->_shuffles = array;

    [(PFCShuffleGenerator *)v9 generateShufflesV2];
  }

  return v9;
}

- (id)shuffles
{
  v2 = [(NSMutableArray *)self->_shuffles copy];

  return v2;
}

- (void)generateShufflesV2
{
  v59[1] = *MEMORY[0x1E69E9840];
  sortedTopAmbientPeople = [(PFCShuffleDataSource *)self->_dataSource sortedTopAmbientPeople];
  v4 = [sortedTopAmbientPeople mutableCopy];

  if ([v4 count] >= 2)
  {
    firstObject = [v4 firstObject];
    [v4 removeObjectAtIndex:0];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:firstObject];
    v7 = [(PFCShuffleGenerator *)self shuffleForSubtype:804 persons:v6 requireMinimumShuffleCount:1];
    if (v7)
    {
      [(NSMutableArray *)self->_shuffles addObject:v7];
      v8 = pfc_shuffle_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v51 = firstObject;
        _os_log_impl(&dword_1DF9B6000, v8, OS_LOG_TYPE_INFO, "Did generate VIP shuffle for person: %@", buf, 0xCu);
      }
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  if ([&unk_1F5AEBE58 count])
  {
    v10 = 1;
    while (1)
    {
      v11 = [&unk_1F5AEBE58 objectAtIndex:v10 - 1];
      v12 = -[PFCShuffleDataSource numberOfSuggestionsForShuffleSubtype:persons:](self->_dataSource, "numberOfSuggestionsForShuffleSubtype:persons:", [v11 unsignedIntegerValue], 0);
      if (v12 >= 0x10)
      {
        break;
      }

LABEL_23:

      if (v10++ >= [&unk_1F5AEBE58 count])
      {
        goto LABEL_25;
      }
    }

    v13 = v12;
    if (v12 >= self->_targetShuffleSize)
    {
      v59[0] = v11;
      v18 = MEMORY[0x1E695DEC8];
      v19 = v59;
    }

    else
    {
      if (v10 < [&unk_1F5AEBE58 count])
      {
        v14 = [&unk_1F5AEBE58 objectAtIndex:v10];
        v15 = -[PFCShuffleDataSource numberOfSuggestionsForShuffleSubtype:persons:](self->_dataSource, "numberOfSuggestionsForShuffleSubtype:persons:", [v14 unsignedIntegerValue], 0);
        if (v15 > 0xF)
        {
          if (v15 + v13 >= self->_targetShuffleSize)
          {
            v56[0] = v11;
            v56[1] = v14;
            v16 = MEMORY[0x1E695DEC8];
            v17 = v56;
            v20 = 2;
            goto LABEL_21;
          }

          v55 = v11;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v55;
        }

        else
        {
          v57 = v11;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v57;
        }

        v20 = 1;
LABEL_21:
        v21 = [v16 arrayWithObjects:v17 count:v20];
        [array addObject:v21];

        goto LABEL_22;
      }

      v58 = v11;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v58;
    }

    v14 = [v18 arrayWithObjects:v19 count:1];
    [array addObject:v14];
LABEL_22:

    goto LABEL_23;
  }

LABEL_25:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = array;
  v24 = [v23 countByEnumeratingWithState:&v46 objects:v54 count:16];
  v25 = v23;
  if (!v24)
  {
    goto LABEL_50;
  }

  v26 = v24;
  v45 = v4;
  v27 = 0;
  cityscape = 0;
  nature = 0;
  pets = 0;
  v31 = *v47;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v47 != v31)
      {
        objc_enumerationMutation(v23);
      }

      v33 = [(PFCShuffleGenerator *)self shuffleForNonPersonSubtypes:*(*(&v46 + 1) + 8 * i) requireMinimumShuffleCount:1];
      if (v33)
      {
        [(NSMutableArray *)self->_shuffles addObject:v33];
        if (pets)
        {
          pets = 1;
          if ((nature & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_35:
          nature = 1;
        }

        else
        {
          pets = [v33 pets];
          if (nature)
          {
            goto LABEL_35;
          }

LABEL_33:
          nature = [v33 nature];
        }

        ++v27;
        if (cityscape)
        {
          cityscape = 1;
        }

        else
        {
          cityscape = [v33 cityscape];
        }
      }
    }

    v26 = [v23 countByEnumeratingWithState:&v46 objects:v54 count:16];
  }

  while (v26);

  v4 = v45;
  if (v27 >= 2)
  {
    v34 = [v45 count];
    v25 = [MEMORY[0x1E695DFD8] set];
    if ([v45 count])
    {
      if (v34 >= 5)
      {
        v35 = 5;
      }

      else
      {
        v35 = v34;
      }

      v36 = MEMORY[0x1E695DFD8];
      v37 = [v45 subarrayWithRange:{0, v35}];
      v38 = [v36 setWithArray:v37];

      v25 = v38;
    }

    v39 = [[PFCShuffle alloc] initWithPeople:v25 pets:pets & 1 nature:nature & 1 cityscape:cityscape & 1];
    [(NSMutableArray *)self->_shuffles insertObject:v39 atIndex:0];
    v40 = pfc_shuffle_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v39;
      _os_log_impl(&dword_1DF9B6000, v40, OS_LOG_TYPE_INFO, "[PFCShuffleGenerator]: Generated everything shuffle: %@", buf, 0xCu);
    }

LABEL_50:
  }

  v41 = pfc_shuffle_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [(NSMutableArray *)self->_shuffles count];
    shuffles = self->_shuffles;
    *buf = 134218242;
    v51 = v42;
    v52 = 2112;
    v53 = shuffles;
    _os_log_impl(&dword_1DF9B6000, v41, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator]: Generated %ld shuffles\n%@", buf, 0x16u);
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)generateShuffles
{
  v46 = *MEMORY[0x1E69E9840];
  topAmbientPeople = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
  v4 = [topAmbientPeople count];

  if (v4 < 2)
  {
    v9 = 0;
  }

  else
  {
    v5 = pfc_shuffle_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      topAmbientPeople2 = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
      *buf = 134217984;
      v42 = [topAmbientPeople2 count];
      _os_log_impl(&dword_1DF9B6000, v5, OS_LOG_TYPE_INFO, "Processing shuffle for %lu top people", buf, 0xCu);
    }

    topAmbientPeople3 = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
    v8 = [(PFCShuffleGenerator *)self shuffleForSubtype:804 persons:topAmbientPeople3 requireMinimumShuffleCount:0];

    v9 = v8 != 0;
    if (v8)
    {
      v10 = pfc_shuffle_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v8;
        _os_log_impl(&dword_1DF9B6000, v10, OS_LOG_TYPE_INFO, "Did generate top people shuffle: %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_shuffles addObject:v8];
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  topAmbientPeople4 = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
  v12 = [topAmbientPeople4 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v38;
    *&v13 = 138412290;
    v36 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(topAmbientPeople4);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = pfc_shuffle_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = v36;
          v42 = v17;
          _os_log_impl(&dword_1DF9B6000, v18, OS_LOG_TYPE_INFO, "Processing shuffle for person id: %@", buf, 0xCu);
        }

        v19 = [MEMORY[0x1E695DFD8] setWithObject:v17];
        v20 = [(PFCShuffleGenerator *)self shuffleForSubtype:804 persons:v19 requireMinimumShuffleCount:1];
        if (v20)
        {
          v21 = pfc_shuffle_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = v36;
            v42 = v17;
            _os_log_impl(&dword_1DF9B6000, v21, OS_LOG_TYPE_INFO, "Did generate shuffle for person: %@", buf, 0xCu);
          }

          [(NSMutableArray *)self->_shuffles addObject:v20];
          v9 = 1;
        }
      }

      v14 = [topAmbientPeople4 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v14);
  }

  v22 = [(PFCShuffleGenerator *)self shuffleForSubtype:803 persons:0 requireMinimumShuffleCount:1];
  v23 = v9;
  if (v22)
  {
    v24 = pfc_shuffle_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v24, OS_LOG_TYPE_INFO, "Did generate shuffle for pets", buf, 2u);
    }

    [(NSMutableArray *)self->_shuffles addObject:v22];
    if (v9)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }
  }

  v25 = [(PFCShuffleGenerator *)self shuffleForSubtype:801 persons:0 requireMinimumShuffleCount:1, v36];

  if (v25)
  {
    v26 = pfc_shuffle_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v26, OS_LOG_TYPE_INFO, "Did generate shuffle for nature", buf, 2u);
    }

    [(NSMutableArray *)self->_shuffles addObject:v25];
    ++v23;
  }

  v27 = [(PFCShuffleGenerator *)self shuffleForSubtype:802 persons:0 requireMinimumShuffleCount:1];

  if (v27)
  {
    v28 = pfc_shuffle_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v28, OS_LOG_TYPE_INFO, "Did generate shuffle for cities", buf, 2u);
    }

    [(NSMutableArray *)self->_shuffles addObject:v27];
    ++v23;
  }

  if (v23 >= 2)
  {
    v29 = pfc_shuffle_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v29, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator] producing consolidated shuffle as well", buf, 2u);
    }

    if (v9)
    {
      [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v30 = ;
    v31 = [[PFCShuffle alloc] initWithPeople:v30 pets:v22 != 0 nature:v25 != 0 cityscape:v27 != 0];
    [(NSMutableArray *)self->_shuffles insertObject:v31 atIndex:0];
  }

  v32 = pfc_shuffle_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(NSMutableArray *)self->_shuffles count];
    shuffles = self->_shuffles;
    *buf = 134218242;
    v42 = v33;
    v43 = 2112;
    v44 = shuffles;
    _os_log_impl(&dword_1DF9B6000, v32, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator]: Generated %ld shuffles\n%@", buf, 0x16u);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)shuffleForNonPersonSubtypes:(id)subtypes requireMinimumShuffleCount:(BOOL)count
{
  countCopy = count;
  v36 = *MEMORY[0x1E69E9840];
  subtypesCopy = subtypes;
  if (countCopy)
  {
    v7 = 16;
  }

  else
  {
    v7 = 1;
  }

  array = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = subtypesCopy;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v10)
  {
    v28 = 0;
    v27 = 0;
    goto LABEL_29;
  }

  v12 = v10;
  v28 = 0;
  v27 = 0;
  v13 = *v30;
  *&v11 = 138412290;
  v26 = v11;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(v9);
      }

      unsignedIntegerValue = [*(*(&v29 + 1) + 8 * i) unsignedIntegerValue];
      v16 = [(PFCShuffleDataSource *)self->_dataSource numberOfSuggestionsForShuffleSubtype:unsignedIntegerValue persons:0];
      v17 = PHSuggestionStringWithSubtype();
      [array addObject:v17];
      if (v16 < v7)
      {
        v19 = pfc_shuffle_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [PFCShuffleGenerator shuffleForNonPersonSubtypes:v17 requireMinimumShuffleCount:v19];
        }

LABEL_27:
        v20 = 0;
        v21 = v9;
        goto LABEL_33;
      }

      if (unsignedIntegerValue > 802)
      {
        if (unsignedIntegerValue == 803)
        {
          v27 = 1;
          goto LABEL_21;
        }

        if (unsignedIntegerValue == 804)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (unsignedIntegerValue == 801)
        {
          LODWORD(v28) = 1;
          goto LABEL_21;
        }

        if (unsignedIntegerValue == 802)
        {
          HIDWORD(v28) = 1;
          goto LABEL_21;
        }
      }

      v18 = pfc_shuffle_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = v26;
        v34 = v17;
        _os_log_error_impl(&dword_1DF9B6000, v18, OS_LOG_TYPE_ERROR, "[PFCShuffleGenerator] bad shuffle subtype: %@", buf, 0xCu);
      }

LABEL_21:
    }

    v12 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v21 = [array componentsJoinedByString:{@", "}];
  v22 = pfc_shuffle_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v21;
    _os_log_impl(&dword_1DF9B6000, v22, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator] Generated shuffle for subtypes (%@)", buf, 0xCu);
  }

  if ((v27 | v28 | HIDWORD(v28)))
  {
    v23 = [PFCShuffle alloc];
    v17 = [MEMORY[0x1E695DFD8] set];
    v20 = [(PFCShuffle *)v23 initWithPeople:v17 pets:v27 & 1 nature:v28 & 1 cityscape:BYTE4(v28) & 1];
LABEL_33:
  }

  else
  {
    v20 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)shuffleForNonPersonSubtypes:(uint64_t)a1 requireMinimumShuffleCount:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF9B6000, a2, OS_LOG_TYPE_ERROR, "[PFCShuffleGenerator] Not enough suggestions for subtype (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)shuffleForSubtype:(uint64_t)a1 persons:(NSObject *)a2 requireMinimumShuffleCount:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF9B6000, a2, OS_LOG_TYPE_ERROR, "[PFCShuffleGenerator] bad shuffle subtype: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end