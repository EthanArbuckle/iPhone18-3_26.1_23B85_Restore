@interface PLSearchThumbnailMap
+ (id)earliestThumbnailIdentifierForLookupIdentifiers:(id)a3 thumbnailMapData:(id)a4;
- (PLSearchThumbnailMap)init;
- (PLSearchThumbnailMap)initWithData:(id)a3;
- (id)data;
- (id)jsonDictionary;
- (id)thumbnailIdentifierForLookupIdentifier:(id)a3;
- (void)setOrReplaceThumbnailIdentifierIfEarlier:(id)a3 forLookupIdentifier:(id)a4;
@end

@implementation PLSearchThumbnailMap

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"map";
  thumbnailIdentifierByLookupIdentifier = self->_thumbnailIdentifierByLookupIdentifier;
  v4 = thumbnailIdentifierByLookupIdentifier;
  if (!thumbnailIdentifierByLookupIdentifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"data";
  v11[0] = v4;
  v5 = [(PLSearchThumbnailMap *)self data];
  v6 = [v5 base64EncodedStringWithOptions:0];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v6)
  {
  }

  if (!thumbnailIdentifierByLookupIdentifier)
  {
  }

  return v8;
}

- (id)data
{
  v64 = *MEMORY[0x1E69E9840];
  if (![(NSMutableDictionary *)self->_thumbnailIdentifierByLookupIdentifier count])
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    goto LABEL_30;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x9012000000;
  v51 = __Block_byref_object_copy__84934;
  v52 = __Block_byref_object_dispose__84935;
  v53 = &unk_19C721442;
  v54 = 0;
  v55 = 0;
  v56 = xmmword_19C60B040;
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  v60 = 1;
  v61 = 256;
  v62 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x4812000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__4;
  v44 = &unk_19C721442;
  v46 = 0;
  v47 = 0;
  __p = 0;
  thumbnailIdentifierByLookupIdentifier = self->_thumbnailIdentifierByLookupIdentifier;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __28__PLSearchThumbnailMap_data__block_invoke;
  v38[3] = &unk_1E7572F90;
  v38[4] = &v48;
  v38[5] = &v39;
  [(NSMutableDictionary *)thumbnailIdentifierByLookupIdentifier enumerateKeysAndObjectsUsingBlock:v38];
  v4 = v40[6];
  v5 = v40[7];
  v6 = (v5 - v4) >> 2;
  v7 = 126 - 2 * __clz(v6);
  v8 = v49;
  v9 = (v49 + 6);
  if (v5 == v4)
  {
    v10 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry>> &)::t;
  }

  else
  {
    v10 = v40[6];
  }

  *buf = v49 + 6;
  if (v5 == v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,false>(v10, &v10[v5 - v4], buf, v11, 1);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(v9);
  *(v8 + 118) = 1;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(v9, v5 - v4, 4uLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(v9, v5 - v4, 4uLL);
  if (v4 == v5)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v12 = v10 - 4;
    v13 = (v5 - v4) >> 2;
    do
    {
      v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(v9, *&v12[4 * v13]);
      apple::aiml::flatbuffers2::FlatBufferBuilder::Align(v9);
      apple::aiml::flatbuffers2::vector_downward::ensure_space(v9, 4uLL);
      v15 = v8[12];
      *(v15 - 4) = v14;
      v8[12] = v15 - 4;
      --v13;
    }

    while (v13);
  }

  v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(v9, v6);
  v18 = v49;
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested((v49 + 6));
  *(v18 + 118) = 1;
  v19 = *(v18 + 20);
  v20 = *(v18 + 24);
  v21 = *(v18 + 22);
  if (*(v18 + 128) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align((v18 + 6));
    apple::aiml::flatbuffers2::vector_downward::ensure_space((v18 + 6), 4uLL);
    v22 = v18[12];
    *(v22 - 4) = 1;
    v22 -= 4;
    v18[12] = v22;
    v24 = v18[10];
    v23 = v18[11];
    apple::aiml::flatbuffers2::vector_downward::ensure_space((v18 + 6), 8uLL);
    *v18[13] = (v24 - v22 + v23) | 0x600000000;
    v18[13] += 8;
    ++*(v18 + 28);
    v25 = *(v18 + 58);
    if (v25 <= 6)
    {
      LOWORD(v25) = 6;
    }

    *(v18 + 58) = v25;
  }

  if (v17)
  {
    v26 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo((v18 + 6), v17);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>((v18 + 6), 4, v26);
  }

  v27 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable((v18 + 6), v19 - v20 + v21);
  v28 = v49;
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested((v49 + 6));
  v28[13] = v28[11];
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign((v28 + 6), 8, v28[15]);
  apple::aiml::flatbuffers2::vector_downward::ensure_space((v28 + 6), 4uLL);
  v29 = v28[12];
  v28[12] = v29 - 4;
  *(v29 - 4) = 1297371984;
  v30 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo((v28 + 6), v27);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align((v28 + 6));
  apple::aiml::flatbuffers2::vector_downward::ensure_space((v28 + 6), 4uLL);
  v31 = v28[12];
  *(v31 - 4) = v30;
  v28[12] = v31 - 4;
  *(v28 + 119) = 1;
  if (*(v49 + 119) != 1)
  {
    v35 = "finished";
    v36 = 1319;
    v37 = "Finished";
    goto LABEL_35;
  }

  v32 = v49[12];
  if (!v32)
  {
    v35 = "cur_";
    v36 = 1016;
    v37 = "data";
LABEL_35:
    __assert_rtn(v37, "flatbuffers.h", v36, v35);
  }

  if (*(v49 + 20) - v32 + *(v49 + 22))
  {
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  else
  {
    v33 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "No data for builder. Unable to serialize ThumbnailMap: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  _Block_object_dispose(&v39, 8);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v48, 8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(&v54);
LABEL_30:

  return v16;
}

void __28__PLSearchThumbnailMap_data__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  v7 = v33;
  v8 = [v33 UTF8String];
  v9 = strlen(v8);
  LODWORD(v8) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString((v6 + 48), v8, v9);
  v10 = *(*(a1 + 32) + 8);
  v11 = [v5 UTF8String];
  v12 = strlen(v11);
  LODWORD(v11) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString((v10 + 48), v11, v12);
  v13 = *(*(a1 + 32) + 8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(v13 + 48);
  v14 = v11;
  *(v13 + 118) = 1;
  v15 = *(v13 + 80);
  v16 = *(v13 + 96);
  LODWORD(v11) = *(v13 + 88);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>((v13 + 48), 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>((v13 + 48), 4, v8);
  v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable((v13 + 48), v15 - v16 + v11);
  v18 = (*(v13 + 88) + *(v13 + 80) - v17);
  v19 = (v18 - *v18);
  if (*v19 < 5u || !v19[2])
  {
    __assert_rtn("Required", "flatbuffers.h", 2702, "ok");
  }

  v20 = *(*(a1 + 40) + 8);
  v22 = v20[7];
  v21 = v20[8];
  if (v22 >= v21)
  {
    v24 = v20[6];
    v25 = v22 - v24;
    v26 = (v22 - v24) >> 2;
    v27 = v26 + 1;
    if ((v26 + 1) >> 62)
    {
      std::vector<apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry>>::__throw_length_error[abi:ne200100]();
    }

    v28 = v21 - v24;
    if (v28 >> 1 > v27)
    {
      v27 = v28 >> 1;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v29 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v27;
    }

    if (v29)
    {
      if (!(v29 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = (v22 - v24) >> 2;
    v31 = (4 * v26);
    v32 = (4 * v26 - 4 * v30);
    *v31 = v17;
    v23 = v31 + 1;
    memcpy(v32, v24, v25);
    v20[6] = v32;
    v20[7] = v23;
    v20[8] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v22 = v17;
    v23 = v22 + 4;
  }

  v20[7] = v23;
}

- (id)thumbnailIdentifierForLookupIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_thumbnailIdentifierByLookupIdentifier objectForKeyedSubscript:a3];

  return v3;
}

- (void)setOrReplaceThumbnailIdentifierIfEarlier:(id)a3 forLookupIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v9 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v10 = "Unexpected empty or nil thumbnail identifier.";
      v11 = &v13;
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (![v7 length])
  {
    v9 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v10 = "Unexpected empty or nil lookup identifier.";
      v11 = &v12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = [(NSMutableDictionary *)self->_thumbnailIdentifierByLookupIdentifier objectForKeyedSubscript:v7];
  if (!v8 || strcmp([v6 UTF8String], objc_msgSend(v8, "UTF8String")) < 0)
  {
    [(NSMutableDictionary *)self->_thumbnailIdentifierByLookupIdentifier setObject:v6 forKeyedSubscript:v7];
  }

LABEL_13:
}

- (PLSearchThumbnailMap)initWithData:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLSearchThumbnailMap *)self init];
  if (!v5)
  {
LABEL_19:
    v28 = v5;
    goto LABEL_23;
  }

  SearchThumbnailMapFromData = GetSearchThumbnailMapFromData(v4);
  if (SearchThumbnailMapFromData)
  {
    v7 = &SearchThumbnailMapFromData[-*SearchThumbnailMapFromData];
    if (*v7 >= 5u && (v8 = *(v7 + 2)) != 0)
    {
      v9 = *&SearchThumbnailMapFromData[v8];
      v10 = &SearchThumbnailMapFromData[v8 + v9];
      v11 = *v10;
      if (v11)
      {
        v12 = 0;
        v13 = 4 * v11;
        v14 = &SearchThumbnailMapFromData[v8 + v9];
        do
        {
          v15 = *&v10[v12 + 4];
          v16 = v15 - *&v10[v12 + 4 + v15];
          v17 = &v14[v12 + v16];
          v18 = *(v17 + 2);
          if (v18 >= 5)
          {
            v19 = *(v17 + 4);
            if (v18 >= 7 && v19 != 0)
            {
              v21 = &v14[v12];
              v22 = *&v14[v12 + 10 + v16];
              if (v22)
              {
                v23 = v15 + v22;
                v24 = *&v21[v15 + 4 + v22];
                v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v14[v12 + 8 + v15 + v19 + *&v21[v15 + 4 + v19]]];
                v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v14[v12 + 8 + v23 + v24]];
                [(NSMutableDictionary *)v5->_thumbnailIdentifierByLookupIdentifier setObject:v26 forKeyedSubscript:v25];
              }
            }
          }

          v12 += 4;
        }

        while (v13 != v12);
      }
    }

    else
    {
      v27 = PLSearchBackendThumbnailMapGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v31 = 138412290;
        v32 = v4;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to find any entries in the SearchThumbnailMap for data: %@", &v31, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v29 = PLSearchBackendThumbnailMapGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v31 = 138412290;
    v32 = v4;
    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to init SearchThumbnailMap for data: %@", &v31, 0xCu);
  }

  v28 = 0;
LABEL_23:

  return v28;
}

- (PLSearchThumbnailMap)init
{
  v6.receiver = self;
  v6.super_class = PLSearchThumbnailMap;
  v2 = [(PLSearchThumbnailMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    thumbnailIdentifierByLookupIdentifier = v2->_thumbnailIdentifierByLookupIdentifier;
    v2->_thumbnailIdentifierByLookupIdentifier = v3;
  }

  return v2;
}

+ (id)earliestThumbnailIdentifierForLookupIdentifiers:(id)a3 thumbnailMapData:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v35 = v5;
  if (!v6 || ![v5 count])
  {
    v14 = 0;
    goto LABEL_31;
  }

  SearchThumbnailMapFromData = GetSearchThumbnailMapFromData(v6);
  if (SearchThumbnailMapFromData)
  {
    v8 = &SearchThumbnailMapFromData[-*SearchThumbnailMapFromData];
    if (*v8 >= 5u)
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v10 = &SearchThumbnailMapFromData[v9];
        v11 = *&SearchThumbnailMapFromData[v9];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = v5;
        v13 = [v12 countByEnumeratingWithState:&v36 objects:v47 count:16];
        if (v13)
        {
          v14 = 0;
          v15 = 0;
          v16 = &v10[v11];
          v17 = *v37;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v36 + 1) + 8 * i);
              v20 = v19;
              *__key = [v19 UTF8String];
              v21 = bsearch(__key, v16 + 4, *v16, 4uLL, apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry>>::KeyCompare<char const*>);
              if (v21)
              {
                v22 = (v21 + *v21);
                v23 = (v22 - *v22);
                if (*v23 >= 7u && (v24 = v23[3]) != 0)
                {
                  v25 = v22 + v24 + *(v22 + v24);
                }

                else
                {
                  v25 = 0;
                }

                v26 = v25 + 4;
                if (!v14 || strcmp(v25 + 4, v14) < 0)
                {
                  v27 = v19;

                  v14 = v26;
                  v15 = v27;
                }
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v36 objects:v47 count:16];
          }

          while (v13);

          if (v14)
          {
            v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v14 encoding:4];
          }
        }

        else
        {

          v15 = 0;
          v14 = 0;
        }

        if (PLSearchThumbnailMapVerboseLoggingEnabled_once != -1)
        {
          dispatch_once(&PLSearchThumbnailMapVerboseLoggingEnabled_once, &__block_literal_global_72857);
        }

        if (PLSearchThumbnailMapVerboseLoggingEnabled_verboseLoggingEnabled != 1)
        {
          goto LABEL_30;
        }

        v30 = [[PLSearchThumbnailMap alloc] initWithData:v6];
        if ([v14 length])
        {
          v31 = PLSearchBackendThumbnailMapGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *__key = 138413058;
            *&__key[4] = v14;
            v41 = 2112;
            v42 = v15;
            v43 = 2112;
            v44 = v30;
            v45 = 2112;
            v46 = v12;
            v32 = "Matched ThumbnailID %@, for lookupID: %@, in map: %@, lookupIdentifiers: %@";
            v33 = v31;
            v34 = 42;
LABEL_43:
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_INFO, v32, __key, v34);
          }
        }

        else
        {
          v31 = PLSearchBackendThumbnailMapGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *__key = 138412546;
            *&__key[4] = v30;
            v41 = 2112;
            v42 = v12;
            v32 = "No matched ThumbnailID in map: %@, for lookupIdentifiers: %@";
            v33 = v31;
            v34 = 22;
            goto LABEL_43;
          }
        }

        goto LABEL_30;
      }
    }

    v15 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__key = 138412290;
      *&__key[4] = v6;
      v28 = "Failed to find any entries in the SearchThumbnailMap for data: %@";
LABEL_28:
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, v28, __key, 0xCu);
    }
  }

  else
  {
    v15 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__key = 138412290;
      *&__key[4] = v6;
      v28 = "Failed to get SearchThumbnailMap for data: %@";
      goto LABEL_28;
    }
  }

  v14 = 0;
LABEL_30:

LABEL_31:

  return v14;
}

@end