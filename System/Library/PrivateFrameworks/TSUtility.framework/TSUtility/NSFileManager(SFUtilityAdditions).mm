@interface NSFileManager(SFUtilityAdditions)
- (uint64_t)_changeFileProtectionAtURL:()SFUtilityAdditions fromProtection:toProtection:recursively:error:;
- (uint64_t)_fileProtection:()SFUtilityAdditions isGreaterThan:;
- (uint64_t)_fileProtectionAtURL:()SFUtilityAdditions recursively:passesTest:;
- (uint64_t)_logFileProtectionAtURL:()SFUtilityAdditions recursively:indent:;
- (uint64_t)_setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:shouldUpdateAttributesHandler:;
- (uint64_t)applyFileAttributesFromDocumentAtURL:()SFUtilityAdditions toDocumentAtURL:error:;
- (uint64_t)changeFileProtectionAtURL:()SFUtilityAdditions fromProtection:toProtection:recursively:error:;
- (uint64_t)directoryUsage:()SFUtilityAdditions;
- (uint64_t)hasAtLeastFileProtection:()SFUtilityAdditions atURL:recursively:;
- (uint64_t)hasAtMostFileProtection:()SFUtilityAdditions atURL:recursively:;
- (uint64_t)pathUsage:()SFUtilityAdditions;
- (uint64_t)setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:;
@end

@implementation NSFileManager(SFUtilityAdditions)

- (uint64_t)directoryUsage:()SFUtilityAdditions
{
  v4 = [self subpathsAtPath:?];
  v5 = [v4 count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *MEMORY[0x277CCA1C0];
  do
  {
    v10 = [objc_msgSend(a3 stringByAppendingPathComponent:{objc_msgSend(v4, "objectAtIndex:", v8)), "stringByResolvingSymlinksInPath"}];
    v11 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v11)
    {
      v12 = [v11 objectForKey:v9];
      if (v12)
      {
        v7 += [v12 unsignedLongLongValue];
      }
    }

    ++v8;
  }

  while (v6 != v8);
  return v7;
}

- (uint64_t)pathUsage:()SFUtilityAdditions
{
  v11 = 0;
  if (![self fileExistsAtPath:a3 isDirectory:&v11])
  {
    return 0;
  }

  if (v11 == 1)
  {
    return [self directoryUsage:a3];
  }

  v10 = 0;
  v6 = [self attributesOfItemAtPath:a3 error:&v10];
  if (!v6)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) pathUsage:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:58 description:{@"Failed to get size of file at path: %@ error: %@", a3, v10}];
  }

  return [v6 fileSize];
}

- (uint64_t)_setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:shouldUpdateAttributesHandler:
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v13 = objc_opt_new();
  v14 = [self attributesOfItemAtPath:objc_msgSend(a4 error:{"path"), &v40}];
  fileType = [v14 fileType];
  if (!fileType)
  {
    goto LABEL_28;
  }

  v16 = fileType;
  v17 = [fileType isEqualToString:*MEMORY[0x277CCA1F8]];
  v18 = *MEMORY[0x277CCA1F0];
  if ((v17 & 1) == 0 && ([v16 isEqualToString:*MEMORY[0x277CCA1F0]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCA1E8]) & 1) == 0)
  {
    v29 = +[TSUAssertionHandler currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) _setAttributes:ofItemAtURL:recursively:error:shouldUpdateAttributesHandler:]"];
    [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"), 79, @"Unhandled type: %@", v16}];
    goto LABEL_28;
  }

  if (([v16 isEqualToString:v18] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCA1E8]))
  {
    v19 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v19 && ([objc_msgSend(objc_msgSend(a4 "path")] & 1) != 0 || a7 && !(*(a7 + 16))(a7, v14))
    {
      v20 = 1;
    }

    else
    {
      v20 = [self setAttributes:a3 ofItemAtPath:objc_msgSend(a4 error:{"path"), &v40}];
    }
  }

  else
  {
    v20 = 0;
  }

  if ([v16 isEqualToString:*MEMORY[0x277CCA1E8]])
  {
    v21 = a5 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_29;
  }

  v22 = [self contentsOfDirectoryAtURL:a4 includingPropertiesForKeys:0 options:0 error:&v40];
  if (!v22)
  {
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  v23 = v22;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v24)
  {
    v20 = 1;
    goto LABEL_32;
  }

  v25 = v24;
  v26 = *v37;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v37 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = [self _setAttributes:a3 ofItemAtURL:*(*(&v36 + 1) + 8 * i) recursively:1 error:&v40 shouldUpdateAttributesHandler:a7];
    }

    v20 = v28;
    v25 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v25);
LABEL_29:
  if ((v20 & 1) == 0 && v40)
  {
    v31 = v40;
    v20 = 0;
  }

LABEL_32:
  [v13 drain];
  if ((v20 & 1) == 0 && v40)
  {
    v32 = v40;
  }

  if (a6)
  {
    v33 = v20;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    v34 = v40;
    if (!v40)
    {
      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
    }

    *a6 = v34;
  }

  return v20;
}

- (uint64_t)applyFileAttributesFromDocumentAtURL:()SFUtilityAdditions toDocumentAtURL:error:
{
  v38 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  if (!a3 || !a4 || (v9 = defaultManager, ![defaultManager fileExistsAtPath:objc_msgSend(a3 isDirectory:{"path"), &v37}]) || v37 != 1 || !objc_msgSend(v9, "fileExistsAtPath:isDirectory:", objc_msgSend(a4, "path"), &v37) || (v37 & 1) == 0)
  {
    v25 = +[TSUAssertionHandler currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) applyFileAttributesFromDocumentAtURL:toDocumentAtURL:error:]"];
    [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"), 165, @"Must provide non-nil source and destination document package URLs."}];
    if (a5)
    {
      v27 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA050];
      v29 = 4;
      goto LABEL_31;
    }

    return 0;
  }

  v10 = [v9 enumeratorAtPath:{objc_msgSend(a3, "path")}];
  if (!v10 || (v11 = v10, ![v9 setAttributes:objc_msgSend(v10 ofItemAtPath:"directoryAttributes") error:{objc_msgSend(a4, "path"), &v38}]))
  {
    v31 = +[TSUAssertionHandler currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) applyFileAttributesFromDocumentAtURL:toDocumentAtURL:error:]"];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"];
    [v31 handleFailureInFunction:v32 file:v33 lineNumber:178 description:{@"Could not copy top level attributes. %@", v38}];
    if (a5)
    {
      if (v38)
      {
        v30 = v38;
        goto LABEL_32;
      }

      v27 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA050];
      v29 = 512;
LABEL_31:
      v30 = [v27 errorWithDomain:v28 code:v29 userInfo:0];
LABEL_32:
      v14 = 0;
      *a5 = v30;
      return v14;
    }

    return 0;
  }

  nextObject = [v11 nextObject];
  if (!nextObject)
  {
    return 1;
  }

  nextObject2 = nextObject;
  LODWORD(v14) = 1;
  v35 = *MEMORY[0x277CCA050];
  v36 = v11;
  do
  {
    v15 = [objc_msgSend(a4 "path")];
    fileAttributes = [v11 fileAttributes];
    if (fileAttributes)
    {
      v17 = [v9 setAttributes:fileAttributes ofItemAtPath:v15 error:&v38];
      v18 = v17;
      if (a5 && (v17 & 1) == 0 && !*a5)
      {
        if (v38)
        {
          v19 = v38;
        }

        else
        {
          v19 = [MEMORY[0x277CCA9B8] errorWithDomain:v35 code:512 userInfo:0];
        }

        *a5 = v19;
      }

      if ((v18 & 1) == 0)
      {
        v22 = +[TSUAssertionHandler currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) applyFileAttributesFromDocumentAtURL:toDocumentAtURL:error:]"];
        v11 = v36;
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"];
        [v22 handleFailureInFunction:v23 file:v24 lineNumber:202 description:{@"Could not set attributes on item at path: %@ error: %@", v15, v38}];
      }

      v14 = v14 & v18;
    }

    else
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:v35 code:256 userInfo:0];
      }

      v20 = +[TSUAssertionHandler currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) applyFileAttributesFromDocumentAtURL:toDocumentAtURL:error:]"];
      [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"), 212, @"Could not get file attributes for: %@", objc_msgSend(objc_msgSend(a3, "path"), "stringByAppendingPathComponent:", nextObject2)}];
      v14 = 0;
      v11 = v36;
    }

    nextObject2 = [v11 nextObject];
  }

  while (nextObject2);
  return v14;
}

- (uint64_t)setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:
{
  v7 = a5;
  v9 = [self _setAttributes:a3 ofItemAtURL:a4 recursively:a5 error:a6 shouldUpdateAttributesHandler:0];
  v10 = v9;
  if (a6 && (v9 & 1) == 0)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) setAttributes:ofItemAtURL:recursively:error:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"];
    v14 = &stru_287DDF830;
    if (v7)
    {
      v14 = @" recursively";
    }

    [v11 handleFailureInFunction:v12 file:v13 lineNumber:223 description:{@"Failed to%@ change file attributes at %@: %@", v14, a4, *a6}];
  }

  return v10;
}

- (uint64_t)_changeFileProtectionAtURL:()SFUtilityAdditions fromProtection:toProtection:recursively:error:
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = *MEMORY[0x277CCA1B0];
  v17[0] = a5;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__NSFileManager_SFUtilityAdditions___changeFileProtectionAtURL_fromProtection_toProtection_recursively_error___block_invoke;
  v15[3] = &unk_279D662C0;
  v15[4] = a5;
  v15[5] = a4;
  return [self _setAttributes:v13 ofItemAtURL:a3 recursively:a6 error:a7 shouldUpdateAttributesHandler:v15];
}

- (uint64_t)changeFileProtectionAtURL:()SFUtilityAdditions fromProtection:toProtection:recursively:error:
{
  if (!a5)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) changeFileProtectionAtURL:fromProtection:toProtection:recursively:error:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"), 240, @"No file protection specified."}];
    if (a3)
    {
      return 0;
    }

LABEL_9:
    v17 = +[TSUAssertionHandler currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) changeFileProtectionAtURL:fromProtection:toProtection:recursively:error:]"];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"), 241, @"No URL specified.", v19, v20, v21}];
    return 0;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  result = [self _changeFileProtectionAtURL:a3 fromProtection:? toProtection:? recursively:? error:?];
  if (a7 && (result & 1) == 0)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) changeFileProtectionAtURL:fromProtection:toProtection:recursively:error:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/NSFileManager_SFUAdditions.mm"];
    v14 = &stru_287DDF830;
    if (a6)
    {
      v14 = @" recursively";
    }

    [v11 handleFailureInFunction:v12 file:v13 lineNumber:250 description:{@"Failed to %@ change file protection at %@: %@", v14, a3, *a7}];
    return 0;
  }

  return result;
}

- (uint64_t)_fileProtection:()SFUtilityAdditions isGreaterThan:
{
  v4 = *MEMORY[0x277CCA1B8];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *MEMORY[0x277CCA1B8];
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = *MEMORY[0x277CCA1B8];
  }

  v7 = *MEMORY[0x277CCA190];
  if ([v5 isEqualToString:*MEMORY[0x277CCA190]] && !objc_msgSend(v6, "isEqualToString:", v7))
  {
    return 1;
  }

  if ([v5 isEqualToString:v4] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", v4))
  {
    return 1;
  }

  result = [v5 isEqualToString:*MEMORY[0x277CCA198]];
  if (result)
  {
    result = [v6 isEqualToString:*MEMORY[0x277CCA1A0]];
    if (result)
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)_fileProtectionAtURL:()SFUtilityAdditions recursively:passesTest:
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v9 = [self attributesOfItemAtPath:objc_msgSend(a3 error:{"path"), &v24}];
  if ([v24 code] == 260)
  {
    return 1;
  }

  fileType = [v9 fileType];
  if (!fileType)
  {
    return 1;
  }

  v11 = fileType;
  if ([fileType isEqualToString:*MEMORY[0x277CCA1F0]])
  {
    return (*(a5 + 16))(a5, [v9 objectForKey:*MEMORY[0x277CCA1B0]]);
  }

  if (![v11 isEqualToString:*MEMORY[0x277CCA1E8]] || a4 == 0)
  {
    return 1;
  }

  v14 = [self contentsOfDirectoryAtURL:a3 includingPropertiesForKeys:0 options:0 error:0];
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v16)
  {
    return 1;
  }

  v17 = v16;
  v18 = *v21;
LABEL_12:
  v19 = 0;
  while (1)
  {
    if (*v21 != v18)
    {
      objc_enumerationMutation(v15);
    }

    result = [self _fileProtectionAtURL:*(*(&v20 + 1) + 8 * v19) recursively:1 passesTest:a5];
    if (!result)
    {
      return result;
    }

    if (v17 == ++v19)
    {
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
      result = 1;
      if (v17)
      {
        goto LABEL_12;
      }

      return result;
    }
  }
}

- (uint64_t)hasAtLeastFileProtection:()SFUtilityAdditions atURL:recursively:
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__NSFileManager_SFUtilityAdditions__hasAtLeastFileProtection_atURL_recursively___block_invoke;
  v6[3] = &unk_279D662E8;
  v6[4] = self;
  v6[5] = a3;
  return [self _fileProtectionAtURL:a4 recursively:a5 passesTest:v6];
}

- (uint64_t)hasAtMostFileProtection:()SFUtilityAdditions atURL:recursively:
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__NSFileManager_SFUtilityAdditions__hasAtMostFileProtection_atURL_recursively___block_invoke;
  v6[3] = &unk_279D662E8;
  v6[4] = self;
  v6[5] = a3;
  return [self _fileProtectionAtURL:a4 recursively:a5 passesTest:v6];
}

- (uint64_t)_logFileProtectionAtURL:()SFUtilityAdditions recursively:indent:
{
  v22 = *MEMORY[0x277D85DE8];
  result = [objc_msgSend(self attributesOfItemAtPath:objc_msgSend(a3 error:{"path"), 0), "fileType"}];
  if (result)
  {
    v10 = result;
    result = [result isEqualToString:*MEMORY[0x277CCA1F0]];
    if ((result & 1) == 0)
    {
      result = [v10 isEqualToString:*MEMORY[0x277CCA1E8]];
      if (result && a4 != 0)
      {
        result = [self contentsOfDirectoryAtURL:a3 includingPropertiesForKeys:0 options:0 error:0];
        if (result)
        {
          v12 = result;
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@/", a5, objc_msgSend(objc_msgSend(a3, "path"), "lastPathComponent")];
          if ([v12 count] != 1)
          {
            v13 = [a5 stringByAppendingString:@"\t"];
          }

          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          result = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (result)
          {
            v14 = result;
            v15 = *v18;
            do
            {
              v16 = 0;
              do
              {
                if (*v18 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [self _logFileProtectionAtURL:*(*(&v17 + 1) + 8 * v16++) recursively:1 indent:v13];
              }

              while (v14 != v16);
              result = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
              v14 = result;
            }

            while (result);
          }
        }
      }
    }
  }

  return result;
}

@end