@interface PLSMetadataUtilities
+ (BOOL)_writeDetails:(id)a3 forEntityNamed:(id)a4 toFilepath:(id)a5 withDefaultFilename:(id)a6;
+ (BOOL)initializeJSONFileAtPath:(id)a3;
+ (id)_allAlbumsInPhotoLibrary:(id)a3;
+ (id)_detailsForAlbum:(id)a3;
+ (id)_detailsForAsset:(id)a3 includingLocal:(BOOL)a4 includingFingerprints:(BOOL)a5;
+ (id)_normalizeObjectForJSON:(id)a3;
+ (id)allAlbumsDetailsWriteToPath:(id)a3 inLibrary:(id)a4;
+ (id)allAssetsDetailsWriteToPath:(id)a3 includingLocal:(BOOL)a4 includingFingerprints:(BOOL)a5 forAlbumTitled:(id)a6 library:(id)a7;
+ (id)dictionaryFromManagedObject:(id)a3 excludeAttributes:(id)a4 includingRelationships:(id)a5 excludeRelationshipAttributes:(id)a6 andSubRelationships:(id)a7;
+ (void)_writeJSONForObjectDetails:(id)a3 toFile:(id)a4;
+ (void)serializeJSONFromObjectDetails:(id)a3 ToPath:(id)a4;
+ (void)writeJSONData:(id)a3 toFile:(id)a4;
@end

@implementation PLSMetadataUtilities

+ (id)allAlbumsDetailsWriteToPath:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6382;
  v23 = __Block_byref_object_dispose__6383;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __62__PLSMetadataUtilities_allAlbumsDetailsWriteToPath_inLibrary___block_invoke;
  v15 = &unk_1E7576208;
  v18 = a1;
  v8 = v7;
  v16 = v8;
  v17 = &v19;
  [v8 performBlockAndWait:&v12];
  if (v6)
  {
    if (([a1 _writeDetails:v20[5] forEntityNamed:@"albums" toFilepath:v6 withDefaultFilename:@"allAlbumsMetadataDump.plist"] & 1) == 0)
    {
      NSLog(&cfstr_ThereWasAnErro_0.isa, v6, v12, v13, v14, v15);
    }

    v9 = v20[5];
    v20[5] = 0;
  }

  v10 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __62__PLSMetadataUtilities_allAlbumsDetailsWriteToPath_inLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) _allAlbumsInPhotoLibrary:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__PLSMetadataUtilities_allAlbumsDetailsWriteToPath_inLibrary___block_invoke_2;
    v4[3] = &unk_1E7566070;
    v5 = *(a1 + 40);
    [v2 enumerateObjectsUsingBlock:v4];
  }
}

void __62__PLSMetadataUtilities_allAlbumsDetailsWriteToPath_inLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 40) _detailsForAlbum:v5];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];

  objc_autoreleasePoolPop(v3);
}

+ (id)_detailsForAlbum:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 localizedTitle];
  v7 = [v4 title];
  v8 = [v4 cloudGUID];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = @"None";
  }

  [v5 setValue:v9 forKey:@"AlbumLocalizedTitle"];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = @"None";
  }

  [v5 setValue:v10 forKey:@"AlbumTitle"];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = @"None";
  }

  [v5 setValue:v11 forKey:@"AlbumCloudGUID"];
  v12 = [v4 uuid];
  [v5 setValue:v12 forKey:@"AlbumUUID"];

  v13 = [v4 kind];
  [v5 setValue:v13 forKey:@"AlbumKind"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isCameraAlbum")}];
  [v5 setValue:v14 forKey:@"AlbumIsCameraAlbum"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isCloudSharedAlbum")}];
  [v5 setValue:v15 forKey:@"AlbumIsCloudSharedAlbum"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isDeleted")}];
  [v5 setValue:v16 forKey:@"AlbumIsDeleted"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isUpdated")}];
  [v5 setValue:v17 forKey:@"AlbumIsUpdated"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isEmpty")}];
  [v5 setValue:v18 forKey:@"AlbumIsEmpty"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isLibrary")}];
  [v5 setValue:v19 forKey:@"AlbumIsLibrary"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isMultipleContributorCloudSharedAlbum")}];
  [v5 setValue:v20 forKey:@"AlbumIsMultipleContributorCloudSharedAlbum"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isOwnedCloudSharedAlbum")}];
  [v5 setValue:v21 forKey:@"AlbumIsOwnedCloudSharedAlbum"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isOwnPhotoStreamAlbum")}];
  [v5 setValue:v22 forKey:@"AlbumIsOwnPhotoStreamAlbum"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isPanoramasAlbum")}];
  [v5 setValue:v23 forKey:@"AlbumIsPanoramasAlbum"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isPendingPhotoStreamAlbum")}];
  [v5 setValue:v24 forKey:@"AlbumIsPendingPhotoStreamAlbum"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isPhotoStreamAlbum")}];
  [v5 setValue:v25 forKey:@"AlbumIsPhotoStreamAlbum"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isSmartAlbum")}];
  [v5 setValue:v26 forKey:@"AlbumIsSmartAlbum"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isStandInAlbum")}];
  [v5 setValue:v27 forKey:@"AlbumIsStandInAlbum"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isFolder")}];
  [v5 setValue:v28 forKey:@"AlbumIsFolder"];

  v29 = MEMORY[0x1E696AD98];
  v30 = [v4 assetsCount];

  v31 = [v29 numberWithUnsignedInteger:v30];
  [v5 setValue:v31 forKey:@"AlbumAssetsCount"];

  return v5;
}

+ (id)allAssetsDetailsWriteToPath:(id)a3 includingLocal:(BOOL)a4 includingFingerprints:(BOOL)a5 forAlbumTitled:(id)a6 library:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  if ([v12 length])
  {
    v15 = [v12 pathExtension];
    v16 = [v15 caseInsensitiveCompare:@"json"] == 0;
  }

  else
  {
    v16 = 0;
  }

  v49 = v16;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__6382;
  v42 = __Block_byref_object_dispose__6383;
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:500];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __112__PLSMetadataUtilities_allAssetsDetailsWriteToPath_includingLocal_includingFingerprints_forAlbumTitled_library___block_invoke;
  v27 = &unk_1E7566048;
  v35 = a1;
  v18 = v14;
  v28 = v18;
  v19 = v13;
  v29 = v19;
  v20 = v17;
  v36 = a4;
  v37 = a5;
  v30 = v20;
  v32 = &v46;
  v33 = v44;
  v21 = v12;
  v31 = v21;
  v34 = &v38;
  [v18 performBlockAndWait:&v24];
  if (v47[3])
  {
    v22 = 0;
  }

  else
  {
    v22 = [v39[5] sortedArrayUsingComparator:&__block_literal_global_6449];
    if ([v21 length] && (objc_msgSend(a1, "_writeDetails:forEntityNamed:toFilepath:withDefaultFilename:", v22, @"assets", v21, @"allAssetsMetadataDump.plist") & 1) == 0)
    {
      NSLog(&cfstr_ThereWasAnErro_0.isa, v21, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  return v22;
}

void __112__PLSMetadataUtilities_allAssetsDetailsWriteToPath_includingLocal_includingFingerprints_forAlbumTitled_library___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  [*(a1 + 88) _allAlbumsInPhotoLibrary:*(a1 + 32)];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v2 = v38 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v3)
  {
    v4 = *v38;
    v24 = v26;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = [v6 localizedTitle];
        v8 = [v6 kindValue];
        if (([v6 isEmpty] & 1) == 0 && ((v9 = *(a1 + 40)) == 0 && v8 == 1600 || v9 && objc_msgSend(v7, "isEqual:")))
        {
          v10 = [*(a1 + 48) valueForKey:v7];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 intValue] + 1;
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%d)", v7, v12, v24];

            v7 = v13;
          }

          else
          {
            v12 = 0;
          }

          v14 = *(a1 + 48);
          v15 = [MEMORY[0x1E696AD98] numberWithInt:v12];
          [v14 setValue:v15 forKey:v7];

          v16 = [v6 assets];
          v17 = [v16 array];

          if (v17)
          {
            v35[0] = 0;
            v35[1] = v35;
            v35[2] = 0x2020000000;
            v36 = 0;
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v26[0] = __112__PLSMetadataUtilities_allAssetsDetailsWriteToPath_includingLocal_includingFingerprints_forAlbumTitled_library___block_invoke_2;
            v26[1] = &unk_1E7566020;
            v33 = *(a1 + 88);
            v34 = *(a1 + 96);
            v30 = *(a1 + 64);
            v18 = *(a1 + 56);
            v19 = *(a1 + 80);
            v27 = v18;
            v31 = v19;
            v32 = v35;
            v20 = v17;
            v28 = v20;
            v29 = v7;
            [v20 enumerateObjectsUsingBlock:v25];
            if (*(*(*(a1 + 72) + 8) + 24) == 1)
            {
              if ([*(*(*(a1 + 80) + 8) + 40) count])
              {
                [*(a1 + 88) _writeJSONForObjectDetails:*(*(*(a1 + 80) + 8) + 40) toFile:*(a1 + 56)];
              }

              v21 = [@"  ]\n}\n" dataUsingEncoding:4];
              [*(a1 + 88) writeJSONData:v21 toFile:*(a1 + 56)];
              v22 = *(*(a1 + 80) + 8);
              v23 = *(v22 + 40);
              *(v22 + 40) = 0;
            }

            _Block_object_dispose(v35, 8);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v3);
  }
}

uint64_t __112__PLSMetadataUtilities_allAssetsDetailsWriteToPath_includingLocal_includingFingerprints_forAlbumTitled_library___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 valueForKey:@"cloudOrObjectID"];
  v6 = [v4 valueForKey:@"cloudOrObjectID"];

  v7 = [v5 compare:v6];
  return v7;
}

void __112__PLSMetadataUtilities_allAssetsDetailsWriteToPath_includingLocal_includingFingerprints_forAlbumTitled_library___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 88) _detailsForAsset:v16 includingLocal:*(a1 + 96) includingFingerprints:*(a1 + 97)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v5 = [@"{\nassets : [\n" dataUsingEncoding:4];
    v6 = [v5 writeToFile:*(a1 + 32) options:1073741825 error:0];
    v7 = 56;
    if (v6)
    {
      v7 = 64;
    }

    *(*(*(a1 + v7) + 8) + 24) = v6;
  }

  [*(*(*(a1 + 72) + 8) + 40) addObject:v4];
  v8 = *(*(a1 + 80) + 8);
  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = v9 % 500 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      [*(a1 + 88) _writeJSONForObjectDetails:*(*(*(a1 + 72) + 8) + 40) toFile:*(a1 + 32)];
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:500];
      v12 = *(*(a1 + 72) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v9 = *(*(*(a1 + 80) + 8) + 24);
    }

    if ([*(a1 + 40) count] - 1 > v9)
    {
      v14 = *(a1 + 88);
      v15 = [@" \n"];
      [v14 writeJSONData:v15 toFile:*(a1 + 32)];
    }

    NSLog(&cfstr_ProcessingNext.isa, *(a1 + 48), *(*(*(a1 + 80) + 8) + 24), [*(a1 + 40) count]);
    v8 = *(*(a1 + 80) + 8);
    v9 = *(v8 + 24);
  }

  *(v8 + 24) = v9 + 1;

  objc_autoreleasePoolPop(v3);
}

+ (void)serializeJSONFromObjectDetails:(id)a3 ToPath:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 _normalizeObjectForJSON:a3];
  v9[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [a1 _writeJSONForObjectDetails:v8 toFile:v6];
}

+ (BOOL)initializeJSONFileAtPath:(id)a3
{
  v3 = a3;
  v4 = [@"{\n" dataUsingEncoding:4];
  v10 = 0;
  v5 = [v4 writeToFile:v3 options:1073741825 error:&v10];

  v6 = v10;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v8 = [v6 localizedDescription];
    NSLog(&cfstr_ThereWasAnErro.isa, v8);
  }

  return v5;
}

+ (void)_writeJSONForObjectDetails:(id)a3 toFile:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18 = a4;
  v6 = [MEMORY[0x1E695DF88] dataWithCapacity:0];
  v7 = [v5 lastObject];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:1 error:0];
        [v6 appendData:v15];

        if (v13 != v7)
        {
          v16 = [@" \n"];
          [v6 appendData:v16];
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [a1 writeJSONData:v6 toFile:v18];
}

+ (void)writeJSONData:(id)a3 toFile:(id)a4
{
  v5 = MEMORY[0x1E696AC00];
  v6 = a3;
  v7 = [v5 fileHandleForUpdatingAtPath:a4];
  [v7 seekToEndOfFile];
  [v7 writeData:v6];

  [v7 closeFile];
}

+ (id)_detailsForAsset:(id)a3 includingLocal:(BOOL)a4 includingFingerprints:(BOOL)a5
{
  v74 = a5;
  v5 = a4;
  v88 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [v6 entity];
  v9 = [v8 relationshipsByName];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __78__PLSMetadataUtilities__detailsForAsset_includingLocal_includingFingerprints___block_invoke;
  v85[3] = &unk_1E75746B8;
  v10 = v6;
  v86 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v85];

  v11 = [v10 cloudAssetGUID];
  v12 = [v10 uuid];
  v76 = v11;
  v77 = v12;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  [v7 setValue:v13 forKey:@"AssetCloudOrLocalID"];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [v10 dateCreated];
  v16 = [v14 stringWithFormat:@"%@", v15];
  [v7 setValue:v16 forKey:@"AssetDateCreated"];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v10 modificationDate];
  v19 = [v17 stringWithFormat:@"%@", v18];
  [v7 setValue:v19 forKey:@"AssetModificationDate"];

  v20 = MEMORY[0x1E696AD98];
  [v10 duration];
  v21 = [v20 numberWithDouble:?];
  [v7 setValue:v21 forKey:@"AssetDuration"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "favorite")}];
  [v7 setValue:v22 forKey:@"AssetIsFavorite"];

  v23 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "kind")}];
  [v7 setValue:v23 forKey:@"AssetKind"];

  v24 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "kindSubtype")}];
  [v7 setValue:v24 forKey:@"AssetKindSubtype"];

  v25 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "height")}];
  [v7 setValue:v25 forKey:@"AssetHeight"];

  v26 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "width")}];
  [v7 setValue:v26 forKey:@"AssetWidth"];

  v27 = [v10 directory];
  v28 = [v10 filename];
  v29 = [v27 stringByAppendingPathComponent:v28];

  v30 = [v10 managedObjectContext];
  v31 = [v30 pathManager];
  v32 = [v31 photoDirectoryWithType:1];
  v72 = v29;
  v33 = [v32 stringByAppendingPathComponent:v29];

  v34 = [MEMORY[0x1E696AC08] defaultManager];
  v71 = v33;
  v35 = [v34 fileExistsAtPath:v33];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:v35];
  [v7 setValue:v36 forKey:@"AssetExistsOnDisk"];

  v73 = v5;
  if (v5)
  {
    v37 = [v10 filename];
    [v7 setValue:v37 forKey:@"AssetFilename"];

    v38 = [v10 directory];
    [v7 setValue:v38 forKey:@"AssetDirectory"];
  }

  v39 = [v10 location];
  v40 = v39;
  if (v39)
  {
    [v39 coordinate];
    v42 = v41;
    v43 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v7 setValue:v43 forKey:@"AssetLocationLatitude"];

    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
    [v7 setValue:v44 forKey:@"AssetLocationLongitude"];
  }

  v70 = v40;
  v45 = [v10 albums];
  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v45, "count")}];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v47 = v45;
  v48 = [v47 countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v82;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v82 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = [*(*(&v81 + 1) + 8 * i) localizedTitle];
        [v46 addObject:v52];
      }

      v49 = [v47 countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v49);
  }

  [v7 setValue:v46 forKey:@"AssetAlbums"];
  v53 = [v10 additionalAttributes];
  v54 = [v53 entity];

  v55 = [v54 relationshipsByName];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __78__PLSMetadataUtilities__detailsForAsset_includingLocal_includingFingerprints___block_invoke_2;
  v79[3] = &unk_1E75746B8;
  v56 = v53;
  v80 = v56;
  [v55 enumerateKeysAndObjectsUsingBlock:v79];

  v57 = [v10 master];
  v58 = v57;
  if (v57)
  {
    v59 = [v57 scopedIdentifier];
    [v7 setValue:v59 forKey:@"AssetCloudMasterGUID"];
  }

  else
  {
    [v7 setValue:@"None" forKey:@"AssetCloudMasterGUID"];
  }

  v60 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "originalHeight")}];
  [v7 setValue:v60 forKey:@"AssetOriginalHeight"];

  v61 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "originalWidth")}];
  [v7 setValue:v61 forKey:@"AssetOriginalWidth"];

  v62 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "originalOrientation")}];
  [v7 setValue:v62 forKey:@"AssetOriginalOrientation"];

  if (v73)
  {
    [v7 setValue:v77 forKey:@"AssetID"];
    v63 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "cloudLocalState")}];
    [v7 setValue:v63 forKey:@"AssetCloudLocalState"];
  }

  if (v74)
  {
    v64 = [v10 mainFileURL];
    if (v64)
    {
      [MEMORY[0x1E6994AE0] fingerprintSchemeForStableHash];
      v75 = v56;
      v66 = v65 = v54;
      v78 = 0;
      v67 = [v66 fingerPrintForFileAtURL:v64 error:&v78];
      v68 = v78;

      v54 = v65;
      v56 = v75;
      if (v67)
      {
LABEL_26:
        [v7 setValue:v67 forKey:@"originalFileStableHash"];

        goto LABEL_27;
      }
    }

    else
    {
      v68 = 0;
    }

    v67 = @"None";
    goto LABEL_26;
  }

LABEL_27:

  return v7;
}

void __78__PLSMetadataUtilities__detailsForAsset_includingLocal_includingFingerprints___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) valueForKey:a2];
  if ([v8 isToMany])
  {
    if ([v8 isOrdered])
    {
      v6 = [v5 firstObject];
    }

    else
    {
      v7 = [v5 anyObject];
    }
  }
}

void __78__PLSMetadataUtilities__detailsForAsset_includingLocal_includingFingerprints___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) valueForKey:a2];
  if ([v8 isToMany])
  {
    if ([v8 isOrdered])
    {
      v6 = [v5 firstObject];
    }

    else
    {
      v7 = [v5 anyObject];
    }
  }
}

+ (id)_normalizeObjectForJSON:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 base64EncodedStringWithOptions:1];
LABEL_3:
    v6 = v5;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v8 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v7 setTimeZone:v8];
    v6 = [v7 stringFromDate:v4];

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [v4 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [v4 objectForKeyedSubscript:v14];
          v16 = [a1 _normalizeObjectForJSON:v15];
          [(__CFString *)v6 setObject:v16 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

LABEL_23:

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v4;
    v17 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v21 = [a1 _normalizeObjectForJSON:{*(*(&v25 + 1) + 8 * j), v25}];
          [(__CFString *)v6 addObject:v21];
        }

        v18 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([MEMORY[0x1E695DFB0] null], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v4, "isEqual:", v23), v23, v24))
  {
    v5 = v4;
    goto LABEL_3;
  }

  if (objc_opt_respondsToSelector())
  {
LABEL_28:
    v5 = [v4 description];
    goto LABEL_3;
  }

  v6 = @"non-normalized value";
LABEL_24:

  return v6;
}

+ (id)dictionaryFromManagedObject:(id)a3 excludeAttributes:(id)a4 includingRelationships:(id)a5 excludeRelationshipAttributes:(id)a6 andSubRelationships:(id)a7
{
  v87 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v64 = v15;
    v17 = [v12 entity];
    v56 = [v17 relationshipsByName];

    v18 = [v12 entity];
    v19 = [v18 attributesByName];

    v55 = v19;
    v20 = [v19 allKeys];
    v21 = [v20 mutableCopy];

    v57 = v13;
    if (v13)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v80 objects:v86 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v81;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v81 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [v21 removeObject:*(*(&v80 + 1) + 8 * i)];
          }

          v24 = [v22 countByEnumeratingWithState:&v80 objects:v86 count:16];
        }

        while (v24);
      }
    }

    v27 = [v12 dictionaryWithValuesForKeys:v21];
    v60 = [v27 mutableCopy];

    if (v14)
    {
      v53 = [v12 entity];
      v28 = [v53 relationshipsByName];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __143__PLSMetadataUtilities_dictionaryFromManagedObject_excludeAttributes_includingRelationships_excludeRelationshipAttributes_andSubRelationships___block_invoke;
      v78[3] = &unk_1E75746B8;
      v54 = v12;
      v29 = v12;
      v79 = v29;
      [v28 enumerateKeysAndObjectsUsingBlock:v78];

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = [v56 allKeys];
      v30 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (!v30)
      {
        goto LABEL_39;
      }

      v31 = v30;
      v32 = *v75;
      v62 = v21;
      v63 = v14;
      v58 = v29;
      v59 = v16;
      v61 = *v75;
      while (1)
      {
        v33 = 0;
        v65 = v31;
        do
        {
          if (*v75 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v74 + 1) + 8 * v33);
          if ([v14 containsObject:v34])
          {
            if (v16)
            {
              v35 = [v16 objectForKey:v34];
            }

            else
            {
              v35 = 0;
            }

            v36 = v16;
            if (v64)
            {
              v37 = [v64 objectForKey:v34];
            }

            else
            {
              v37 = 0;
            }

            v38 = [v29 entity];
            v39 = [v38 relationshipsByName];
            v40 = [v39 objectForKey:v34];

            v69 = v40;
            LOBYTE(v38) = [v40 isToMany];
            v68 = v34;
            v41 = [v29 valueForKey:v34];
            v42 = v41;
            if (v38)
            {
              v43 = v41;
              v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v67 = v43;
              v45 = v43;
              v46 = [v45 countByEnumeratingWithState:&v70 objects:v84 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v71;
                do
                {
                  for (j = 0; j != v47; ++j)
                  {
                    if (*v71 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = [a1 dictionaryFromManagedObject:*(*(&v70 + 1) + 8 * j) excludeAttributes:v37 includingRelationships:v35 excludeRelationshipAttributes:0 andSubRelationships:0];
                    [v44 addObject:v50];
                  }

                  v47 = [v45 countByEnumeratingWithState:&v70 objects:v84 count:16];
                }

                while (v47);
              }

              v21 = v62;
              v14 = v63;
              v29 = v58;
              v16 = v59;
              v51 = v69;
LABEL_35:
              [v60 setObject:v44 forKey:v68];

              v42 = v67;
            }

            else
            {
              v51 = v40;
              v16 = v36;
              v21 = v62;
              v14 = v63;
              if (v41)
              {
                v67 = v41;
                v44 = [a1 dictionaryFromManagedObject:v41 excludeAttributes:v37 includingRelationships:v35 excludeRelationshipAttributes:0 andSubRelationships:0];
                goto LABEL_35;
              }
            }

            v32 = v61;
            v31 = v65;
          }

          ++v33;
        }

        while (v33 != v31);
        v31 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (!v31)
        {
LABEL_39:

          v12 = v54;
          break;
        }
      }
    }

    v13 = v57;
    v15 = v64;
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

void __143__PLSMetadataUtilities_dictionaryFromManagedObject_excludeAttributes_includingRelationships_excludeRelationshipAttributes_andSubRelationships___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) valueForKey:a2];
  if ([v8 isToMany])
  {
    if ([v8 isOrdered])
    {
      v6 = [v5 firstObject];
    }

    else
    {
      v7 = [v5 anyObject];
    }
  }
}

+ (id)_allAlbumsInPhotoLibrary:(id)a3
{
  v3 = [a3 managedObjectContext];
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLGenericAlbum entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"kind" ascending:1];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
  [v6 setSortDescriptors:v8];

  v13 = 0;
  v9 = [v3 executeFetchRequest:v6 error:&v13];
  v10 = v13;
  v11 = v10;
  if (!v9)
  {
    NSLog(&cfstr_FailedToGetAlb.isa, v10);
  }

  return v9;
}

+ (BOOL)_writeDetails:(id)a3 forEntityNamed:(id)a4 toFilepath:(id)a5 withDefaultFilename:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (![v11 length])
  {
    v19 = 0;
    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:v9 forKey:v10];
  v14 = [v11 pathExtension];
  v15 = [v14 isEqualToString:@"json"];
  if ([v14 isEqual:&stru_1F0F06D80])
  {
    v25 = 0;
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [v16 fileExistsAtPath:v11 isDirectory:&v25];

    if (!v17)
    {
      v18 = [v11 stringByAppendingPathExtension:@"plist"];
      goto LABEL_8;
    }

    if (v25 == 1)
    {
      v18 = [v11 stringByAppendingPathComponent:v12];
LABEL_8:
      v20 = v18;

      v11 = v20;
    }
  }

  if (v15)
  {
    v24 = 0;
    v21 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:1 error:&v24];
  }

  else
  {
    v21 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:100 options:0 error:0];
  }

  v22 = v21;
  v19 = [v21 writeToFile:v11 options:1073741825 error:0];

LABEL_13:
  return v19;
}

@end