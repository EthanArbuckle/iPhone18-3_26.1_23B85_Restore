@interface OZCopyFootageInfo
+ (id)fileURLToFootageInfoMap:(void *)a3 includeUnused:(BOOL)a4 destination:(id)a5;
+ (id)fileURLsForNode:(void *)a3;
+ (unint64_t)fileCount:(id)a3;
+ (unint64_t)totalSizeInBytes:(id)a3 forceUpdate:(BOOL)a4;
+ (void)reconnectFootage:(id)a3 scene:(void *)a4;
+ (void)updateSizes:(id)a3 forceUpdate:(BOOL)a4;
- (BOOL)updateSize:(BOOL)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation OZCopyFootageInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZCopyFootageInfo;
  [(OZCopyFootageInfo *)&v3 dealloc];
}

+ (void)updateSizes:(id)a3 forceUpdate:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [objc_msgSend(a3 objectForKey:{*(*(&v11 + 1) + 8 * v10++)), "updateSize:error:", v4, 0}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)updateSize:(BOOL)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_sizeIsValid && !a3)
  {
    return 1;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  self->_sizeInBytes = 0;
  v8 = [(NSURL *)self->_sourceURL OZ_imageSequenceURLs];
  if ([(NSOrderedSet *)v8 count])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = *"";
    v21[2] = __38__OZCopyFootageInfo_updateSize_error___block_invoke;
    v21[3] = &unk_279AAA3B0;
    v21[4] = v7;
    v21[5] = &v26;
    v21[6] = &v22;
    v21[7] = a4;
    [(NSOrderedSet *)v8 enumerateObjectsUsingBlock:v21];
    if (*(v23 + 24) == 1)
    {
      self->_sizeInBytes = v27[3];
      v9 = 1;
      self->_sizeIsValid = 1;
      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v26, 8);
      return v9;
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    return 0;
  }

  v10 = [v7 OZ_sizeOfItemAtPath:-[NSURL path](self->_sourceURL error:{"path"), a4}];
  if (!v10)
  {
    return 0;
  }

  self->_sizeInBytes = [v10 unsignedIntegerValue];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(NSMutableDictionary *)self->_associatedFilesSourceDestPaths keyEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [v7 OZ_sizeOfItemAtPath:*(*(&v17 + 1) + 8 * i) error:a4];
        if (v15)
        {
          self->_sizeInBytes += [v15 unsignedIntegerValue];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v12);
  }

  v9 = 1;
  self->_sizeIsValid = 1;
  return v9;
}

uint64_t __38__OZCopyFootageInfo_updateSize_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) OZ_sizeOfItemAtPath:objc_msgSend(a2 error:{"path"), *(a1 + 56)}];
  if (result)
  {
    result = [result unsignedIntegerValue];
    *(*(*(a1 + 40) + 8) + 24) += result;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

+ (id)fileURLsForNode:(void *)a3
{
  v3 = a3;
  v23[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a3 + 1);
    *cf = xmmword_260348470;
    if (OZFactory::isKindOfClass(v4, cf))
    {
      v6 = *(v3 - 25);
      v5 = v3 - 25;
      v7 = (*(v6 + 1232))(v5);
      PCURL::getAsFileSystemString(v7, cf);
      v8 = PCString::ns_str(cf);
      PCString::~PCString(cf);
      if ([(__CFString *)v8 length])
      {
        v9 = (*(*v5 + 1232))(v5);
        v23[0] = CFRetain(*v9);
        return [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      }

      return 0;
    }

    if (v11)
    {
      v12 = v11;
      (*(*v11 + 1232))(&v19);
      PCURL::getAsFileSystemString(&v19, cf);
      v13 = PCString::ns_str(cf);
      PCString::~PCString(cf);
      PCURL::~PCURL(&v19);
      if (![(__CFString *)v13 length])
      {
        return 0;
      }

      (*(*v12 + 1232))(cf, v12);
      v22 = CFRetain(cf[0]);
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    }

    else
    {
      v15 = v3[1];
      *cf = xmmword_2603473A0;
      if (OZFactory::isKindOfClass(v15, cf) && (*(*(v3 - 25) + 296))(v3 - 25))
      {
        return (*(*(v3 - 25) + 888))(v3 - 25);
      }

      v3 = v16;
      if (!v16)
      {
        return v3;
      }

      if (OZFootage::isInUseByUnreplacedDropZonesOnly(v16, 0))
      {
        return 0;
      }

      (*(*v3 + 1232))(&v19, v3);
      PCURL::getAsFileSystemString(&v19, cf);
      v17 = PCString::ns_str(cf);
      PCString::~PCString(cf);
      PCURL::~PCURL(&v19);
      if (![(__CFString *)v17 length])
      {
        return 0;
      }

      (*(*v3 + 1232))(cf, v3);
      v21 = CFRetain(cf[0]);
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    }

    v3 = v14;
    PCURL::~PCURL(cf);
  }

  return v3;
}

+ (id)fileURLToFootageInfoMap:(void *)a3 includeUnused:(BOOL)a4 destination:(id)a5
{
  v98 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v56 = 0;
  if (a5)
  {
    v6 = *(a3 + 3);
    if (v6)
    {
      v56 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
      v7 = *(v6 + 151);
      memset(v91, 0, sizeof(v91));
      v92 = 1065353216;
      v89[0] = v7;
      v89[1] = v7;
      v89[2] = v6 + 1200;
      v90 = 0;
      memset(v87, 0, sizeof(v87));
      v88 = 1065353216;
      v83 = (v6 + 1200);
      v84 = v7;
      v85 = (v6 + 1200);
      v86 = 0;
      OZScene::unusedSceneNodeFileIDs(v6, &__p);
      v80[0] = 0;
      v80[1] = 0;
      v52 = v80;
      v79 = v80;
      v9 = __p;
      v8 = v82;
      while (v9 != v8)
      {
        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v79, v9++);
      }

      while (v89[0] != v83)
      {
        v10 = *(v89[0] + 16);
        v55 = v10[20];
        if (a4)
        {
          goto LABEL_16;
        }

        v11 = v80[0];
        if (!v80[0])
        {
          goto LABEL_16;
        }

        v12 = v52;
        do
        {
          v13 = *(v11 + 7);
          v14 = v13 >= v55;
          v15 = v13 < v55;
          if (v14)
          {
            v12 = v11;
          }

          v11 = v11[v15];
        }

        while (v11);
        if (v12 == v52 || v55 < *(v12 + 7))
        {
LABEL_16:
          v16 = [OZCopyFootageInfo fileURLsForNode:v10, v52];
          v17 = v16;
          if (v16)
          {
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v18 = [v16 countByEnumeratingWithState:&v75 objects:v97 count:16];
            if (v18)
            {
              v19 = *v76;
              obj = v17;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v76 != v19)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v75 + 1) + 8 * i);
                  if ([objc_msgSend(v21 "path")])
                  {
                    v22 = [v56 objectForKey:v21];
                    if (!v22)
                    {
                      v22 = objc_alloc_init(OZCopyFootageInfo);
                      [(OZCopyFootageInfo *)v22 setSourceURL:v21];
                      v23 = [objc_msgSend(v21 "path")];
                      -[OZCopyFootageInfo setDestinationURL:](v22, "setDestinationURL:", [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(a5, "stringByAppendingPathComponent:", v23)}]);
                      -[OZCopyFootageInfo setAssociatedFilesSourceDestPaths:](v22, "setAssociatedFilesSourceDestPaths:", [MEMORY[0x277CBEB38] dictionary]);
                      [v56 setObject:v22 forKey:v21];
                    }

                    if (v10)
                    {
                      if (v24)
                      {
                        (*(*v24 + 1512))(&v58);
                        v26 = v58;
                        v25 = v59;
                        while (v26 != v25)
                        {
                          PCURL::PCURL(&v93, v26);
                          PCURL::getAsFileSystemString(&v93, &v74);
                          v27 = PCString::ns_str(&v74);
                          PCString::~PCString(&v74);
                          if (v27)
                          {
                            if ([(__CFString *)v27 length])
                            {
                              v28 = [a5 stringByAppendingPathComponent:{-[__CFString lastPathComponent](v27, "lastPathComponent")}];
                              if (([(__CFString *)v27 isEqualToString:v28]& 1) == 0)
                              {
                                [(NSMutableDictionary *)[(OZCopyFootageInfo *)v22 associatedFilesSourceDestPaths] setObject:v28 forKeyedSubscript:v27];
                              }
                            }
                          }

                          PCURL::~PCURL(&v93);
                          v26 = (v26 + 8);
                        }

                        v93 = &v58;
                        std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](&v93);
                      }
                    }

                    if ([(OZCopyFootageInfo *)v22 nodeIDs])
                    {
                      v29 = [(OZCopyFootageInfo *)v22 nodeIDs];
                      v30 = -[NSSet setByAddingObject:](v29, "setByAddingObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v55]);
                    }

                    else
                    {
                      v30 = [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v55)}];
                    }

                    [(OZCopyFootageInfo *)v22 setNodeIDs:v30];
                  }
                }

                v18 = [obj countByEnumeratingWithState:&v75 objects:v97 count:16];
              }

              while (v18);
            }
          }
        }

        OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v89);
      }

      v31 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v32 = [v56 keyEnumerator];
      v33 = [v32 countByEnumeratingWithState:&v70 objects:v96 count:16];
      if (v33)
      {
        v34 = *v71;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v71 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = [v56 objectForKey:{*(*(&v70 + 1) + 8 * j), v52}];
            v37 = [objc_msgSend(objc_msgSend(v36 "destinationURL")];
            v38 = [objc_msgSend(v37 "pathExtension")];
            if (v38)
            {
              v37 = [objc_msgSend(v37 "stringByDeletingPathExtension")];
            }

            v39 = [v31 objectForKey:v37];
            if (v39)
            {
              [v39 addObject:v36];
            }

            else
            {
              [v31 setObject:objc_msgSend(MEMORY[0x277CBEB58] forKey:{"setWithObject:", v36), v37}];
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v70 objects:v96 count:16];
        }

        while (v33);
      }

      v40 = [MEMORY[0x277CBEB58] set];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v41 = [v31 keyEnumerator];
      v42 = [v41 countByEnumeratingWithState:&v66 objects:v95 count:16];
      if (v42)
      {
        v43 = *v67;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v67 != v43)
            {
              objc_enumerationMutation(v41);
            }

            [v40 addObject:*(*(&v66 + 1) + 8 * k)];
          }

          v42 = [v41 countByEnumeratingWithState:&v66 objects:v95 count:16];
        }

        while (v42);
      }

      v65 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      v45 = [v31 keyEnumerator];
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v94 count:16];
      if (v46)
      {
        v47 = *v63;
        do
        {
          for (m = 0; m != v46; ++m)
          {
            if (*v63 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v62 + 1) + 8 * m);
            v50 = [v31 objectForKey:v49];
            v58 = 0;
            v59 = &v58;
            v60 = 0x2020000000;
            v61 = 0;
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = *"";
            v57[2] = __71__OZCopyFootageInfo_fileURLToFootageInfoMap_includeUnused_destination___block_invoke;
            v57[3] = &unk_279AAA3D8;
            v57[5] = v49;
            v57[6] = &v58;
            v57[4] = v40;
            [v50 enumerateObjectsUsingBlock:v57];
            _Block_object_dispose(&v58, 8);
          }

          v46 = [v45 countByEnumeratingWithState:&v62 objects:v94 count:16];
        }

        while (v46);
      }

      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v79, v80[0]);
      if (__p)
      {
        v82 = __p;
        operator delete(__p);
      }

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v87);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v91);
    }
  }

  return v56;
}

uint64_t __71__OZCopyFootageInfo_fileURLToFootageInfoMap_includeUnused_destination___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    while (1)
    {
      v4 = [*(a1 + 40) stringByDeletingPathExtension];
      v5 = [objc_msgSend(a2 "destinationURL")];
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
      if (v5)
      {
        v8 = [v6 stringWithFormat:@"(%@)[", v7];
        v9 = [v4 rangeOfString:@"[" options:4];
        v11 = [v4 stringByReplacingCharactersInRange:v9 withString:{v10, v8}];
      }

      else
      {
        v11 = [v4 stringByAppendingString:{objc_msgSend(v6, "stringWithFormat:", @" %@", v7)}];
      }

      v12 = v11;
      v13 = [*(a1 + 40) pathExtension];
      if (v13)
      {
        v12 = [v12 stringByAppendingPathExtension:v13];
      }

      if (([*(a1 + 32) containsObject:v12] & 1) == 0)
      {
        break;
      }

      ++*(*(*(a1 + 48) + 8) + 24);
    }

    [*(a1 + 32) addObject:v12];
    result = [a2 setDestinationURL:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "destinationURL"), "URLByDeletingLastPathComponent"), "URLByAppendingPathComponent:", v12)}];
  }

  else
  {
    result = [*(a1 + 32) addObject:*(a1 + 40)];
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  return result;
}

+ (unint64_t)fileCount:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a3 keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v14 + 1) + 8 * i);
      v11 = [v10 OZ_imageSequenceURLs];
      if ([v11 count])
      {
        v12 = [v11 count];
      }

      else
      {
        v12 = 1;
      }

      v7 += v12 + [objc_msgSend(objc_msgSend(objc_msgSend(a3 objectForKey:{v10), "associatedFilesSourceDestPaths"), "allKeys"), "count"}];
    }

    v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v6);
  return v7;
}

+ (unint64_t)totalSizeInBytes:(id)a3 forceUpdate:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  [OZCopyFootageInfo updateSizes:a3 forceUpdate:a4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [a3 objectForKey:*(*(&v13 + 1) + 8 * i)];
      if ([v11 sizeIsValid])
      {
        v8 += [v11 sizeInBytes];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);
  return v8;
}

+ (void)reconnectFootage:(id)a3 scene:(void *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [a3 objectForKey:*(*(&v13 + 1) + 8 * v9)];
          v11 = [v10 nodeIDs];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = *"";
          v12[2] = __44__OZCopyFootageInfo_reconnectFootage_scene___block_invoke;
          v12[3] = &unk_279AAA400;
          v12[4] = v10;
          v12[5] = a4;
          [v11 enumerateObjectsUsingBlock:v12];
          ++v9;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

void __44__OZCopyFootageInfo_reconnectFootage_scene___block_invoke(uint64_t a1, void *a2)
{
  Node = OZScene::getNode(*(a1 + 40), [a2 unsignedIntValue]);
  v4 = Node[1];
  *&v24[0].var0 = xmmword_260348470;
  if (OZFactory::isKindOfClass(v4, v24))
  {
    v6 = *(Node - 25);
    v5 = Node - 25;
    v7 = (*(v6 + 1232))(v5);
    PCURL::getAsFileSystemString(v7, v24);
    v8 = PCString::ns_str(v24);
    PCString::~PCString(v24);
    v9 = [objc_msgSend(*(a1 + 32) "destinationURL")];
    if (([(__CFString *)v8 isEqualToString:v9]& 1) != 0)
    {
      return;
    }

    PCURL::PCURL(&v23, v9);
    PCURL::PCURL(v24, &v23, 0);
    PCString::~PCString(&v23);
    (*(*v5 + 1224))(v5, v24);
  }

  else
  {
    if (v10)
    {
      (*(*v10 + 1488))(v10, *(a1 + 32));
    }

    if (v11)
    {
      v12 = v11;
      (*(*v11 + 1232))(v24);
      PCURL::getAsFileSystemString(v24, &v23);
      v13 = PCString::ns_str(&v23);
      PCString::~PCString(&v23);
      v14 = [objc_msgSend(*(a1 + 32) "destinationURL")];
      if (([(__CFString *)v13 isEqualToString:v14]& 1) == 0)
      {
        PCURL::PCURL(&v22, v14);
        PCURL::PCURL(&v23, &v22, 0);
        PCString::~PCString(&v22);
        (*(*v12 + 1400))(v12, &v23);
        PCURL::~PCURL(&v23);
      }
    }

    else
    {
      if (!v15)
      {
        return;
      }

      v16 = v15;
      (*(*v15 + 1232))(v24);
      PCURL::getFilename(v24, &v23);
      PCURL::getAsFileSystemString(v24, &v22);
      v17 = PCString::ns_str(&v22);
      PCString::~PCString(&v22);
      v18 = [objc_msgSend(*(a1 + 32) "destinationURL")];
      if (([(__CFString *)v17 isEqualToString:v18]& 1) == 0)
      {
        PCURL::PCURL(&v21, v18);
        PCURL::PCURL(&v22, &v21, 0);
        PCString::~PCString(&v21);
        v21.var0 = 0;
        Instance = PMMediaManager::getInstance(v19);
        if (!PMMediaManager::open(Instance, &v22, &v21, 0))
        {
          OZFootage::setClipMinimal(v16, v21.var0);
        }

        PCURL::~PCURL(&v22);
      }

      PCString::~PCString(&v23);
    }
  }

  PCURL::~PCURL(v24);
}

@end