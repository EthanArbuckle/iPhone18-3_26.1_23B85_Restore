@interface SACloneTreeWalker
+ (BOOL)isNodeID:(unint64_t)a3 oldestForDStreamID:(unint64_t)a4 forVolPath:(id)a5;
+ (id)getBundleIDsByPathForNodeID:(unint64_t)a3 forFsid:(fsid)a4 andPathList:(id)a5;
+ (id)getBundleIDsOfInode:(unint64_t)a3 withDirKey:(unint64_t)a4 andTag:(unint64_t)a5 inVolume:(statfs *)a6 usingPathList:(id)a7 andVolumesInfo:(id)a8 volumePath:(id)a9;
+ (id)getDirInfoByDirKey:(unint64_t)a3 inVolume:(statfs *)a4 volumesInfo:(id)a5 volumePath:(id)a6;
+ (void)addAttributedCloneToBundleIDs:(id)a3 withCloneSize:(int64_t)a4 withPurgeableSize:(unint64_t)a5 onCloneData:(id)a6;
+ (void)addCachePurgeableClones:(unint64_t)a3 bundleIDs:(id)a4 onCloneData:(id)a5;
+ (void)addClonePathOfCloneID:(unint64_t)a3 FSId:(fsid *)a4 dataSize:(unint64_t)a5 purgeableSize:(unint64_t)a6 dirStatKey:(unint64_t)a7 attributionTag:(unint64_t)a8 bundleIDs:(id)a9 cloneData:(id)a10;
+ (void)addPurgeableCloneOfSize:(unint64_t)a3 isPurgeable:(BOOL)a4 withDirInfo:(id)a5 onCloneData:(id)a6;
+ (void)newFromAPFS:(unint64_t)a3 inVolume:(statfs *)a4 reply:(id)a5;
+ (void)processCloneMapOnVol:(id)a3 pathList:(id)a4 appSizeBreakdownList:(id)a5 volumesInfo:(id)a6 collectClonesPaths:(BOOL)a7 reply:(id)a8;
+ (void)updateAppSizeBreakdownList:(unint64_t)a3 FSId:(fsid *)a4 dataSize:(unint64_t)a5 attributionTag:(unint64_t)a6 bundleIDs:(id)a7 appSizeBreakdownList:(id)a8 pathList:(id)a9;
@end

@implementation SACloneTreeWalker

+ (void)newFromAPFS:(unint64_t)a3 inVolume:(statfs *)a4 reply:(id)a5
{
  v7 = a5;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 1;
  v11 = 33;
  v13 = a3;
  if (fsctl(a4->f_mntonname, 0xC1104A71uLL, &v10, 1u))
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003D9D8();
    }

    v9 = [NSError errorWithDomain:NSCocoaErrorDomain code:4866 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v9);
  }

  else
  {
    (*(v7 + 2))(v7, (v11 >> 2) & 1, (v11 >> 3) & 1, 0);
  }
}

+ (id)getBundleIDsByPathForNodeID:(unint64_t)a3 forFsid:(fsid)a4 andPathList:(id)a5
{
  v10 = a4;
  v6 = a5;
  v7 = [SASupport getPathOfNodeID:a3 FSid:&v10];
  if (v7)
  {
    v8 = [v6 getBundleIDsForSuccessorPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getDirInfoByDirKey:(unint64_t)a3 inVolume:(statfs *)a4 volumesInfo:(id)a5 volumePath:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [NSNumber numberWithUnsignedLongLong:a3];
  v11 = [v9 getDirCacheElementForDirKey:v10 volumePath:v8 climbUpDSHierarchy:1 cacheDiscoveredDirElement:1];

  return v11;
}

+ (id)getBundleIDsOfInode:(unint64_t)a3 withDirKey:(unint64_t)a4 andTag:(unint64_t)a5 inVolume:(statfs *)a6 usingPathList:(id)a7 andVolumesInfo:(id)a8 volumePath:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  if (a4)
  {
    v18 = [a1 getDirInfoByDirKey:a4 inVolume:a6 volumesInfo:v16 volumePath:v17];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 bundleIDs];

      if (v20)
      {
        v21 = [v19 bundleIDs];

        goto LABEL_11;
      }
    }
  }

  if (!a5 || (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a5), v22 = objc_claimAutoreleasedReturnValue(), [v16 getBundleIDForTagHash:v22 volumePath:v17], v21 = objc_claimAutoreleasedReturnValue(), v22, !v21))
  {
    v23 = [a1 getBundleIDsByPathForNodeID:a3 forFsid:*&a6->f_fsid andPathList:v15];
    if (v23)
    {
      v21 = v23;
    }

    else
    {
      v21 = @"com.apple.fakeapp.SystemData";
    }
  }

LABEL_11:

  return v21;
}

+ (void)addClonePathOfCloneID:(unint64_t)a3 FSId:(fsid *)a4 dataSize:(unint64_t)a5 purgeableSize:(unint64_t)a6 dirStatKey:(unint64_t)a7 attributionTag:(unint64_t)a8 bundleIDs:(id)a9 cloneData:(id)a10
{
  v20 = a9;
  v16 = a10;
  v17 = [SASupport getPathOfNodeID:a3 FSid:a4];
  if (v17)
  {
    v18 = [SACloneInfo newWithDataSize:a5 cloneSize:a5 purgeableSize:a6 dirStatKey:a7 attributionTag:a8 clonePath:v17];
    v19 = [v16 objectForKeyedSubscript:v20];
    [v19 addCloneInfo:v18];
  }
}

+ (void)updateAppSizeBreakdownList:(unint64_t)a3 FSId:(fsid *)a4 dataSize:(unint64_t)a5 attributionTag:(unint64_t)a6 bundleIDs:(id)a7 appSizeBreakdownList:(id)a8 pathList:(id)a9
{
  v18 = a7;
  v14 = a8;
  v15 = a9;
  v16 = [SASupport getPathOfNodeID:a3 FSid:a4];
  if (v16)
  {
    if (a6)
    {
      [v14 updateTagsWithCloneSize:a5 bundleIDs:v18];
    }

    else
    {
      v17 = [v15 findAncestorOfPath:v16];
      [v14 updatePath:v17 cloneSize:a5 bundleIDs:v18];
    }
  }
}

+ (void)addCachePurgeableClones:(unint64_t)a3 bundleIDs:(id)a4 onCloneData:(id)a5
{
  v11 = a4;
  v7 = a5;
  if (v11)
  {
    v8 = [SACloneSize newWithDataSize:0 cloneSize:0 purgeableSize:0 cacheFixUp:a3];
    v9 = [v7 objectForKeyedSubscript:v11];

    if (v9)
    {
      v10 = [v7 objectForKeyedSubscript:v11];
      [v10 updateWithSizeInfo:v8];
    }

    else
    {
      [v7 setObject:v8 forKeyedSubscript:v11];
    }
  }
}

+ (void)addAttributedCloneToBundleIDs:(id)a3 withCloneSize:(int64_t)a4 withPurgeableSize:(unint64_t)a5 onCloneData:(id)a6
{
  v9 = a6;
  v10 = a3;
  v13 = [SACloneSize newWithDataSize:a4 cloneSize:a4 purgeableSize:a5 cacheFixUp:0];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v10];

    [v12 updateWithSizeInfo:v13];
    v10 = v12;
  }

  else
  {
    [v9 setObject:v13 forKeyedSubscript:v10];
  }
}

+ (void)addPurgeableCloneOfSize:(unint64_t)a3 isPurgeable:(BOOL)a4 withDirInfo:(id)a5 onCloneData:(id)a6
{
  v7 = a4;
  v16 = a5;
  v9 = a6;
  if (v16)
  {
    v10 = [v16 bundleIDs];

    if (v10)
    {
      v11 = objc_opt_new();
      if ([v16 purgeable])
      {
        if (![v16 cacheFolder] || v7)
        {
LABEL_8:
          [v11 setDataSize:{objc_msgSend(v11, "dataSize") + a3}];
          v12 = [v16 bundleIDs];
          v13 = [v9 objectForKeyedSubscript:v12];

          v14 = [v16 bundleIDs];
          if (v13)
          {
            v15 = [v9 objectForKeyedSubscript:v14];
            [v15 updateWithSizeInfo:v11];
          }

          else
          {
            [v9 setObject:v11 forKeyedSubscript:v14];
          }
        }
      }

      else if (v7)
      {
        goto LABEL_8;
      }
    }
  }
}

+ (void)processCloneMapOnVol:(id)a3 pathList:(id)a4 appSizeBreakdownList:(id)a5 volumesInfo:(id)a6 collectClonesPaths:(BOOL)a7 reply:(id)a8
{
  v9 = a7;
  v14 = a3;
  v69 = a4;
  v70 = a5;
  v75 = a6;
  v15 = a8;
  v16 = SALog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003DA60(v14, v16);
  }

  bzero(&v82, 0x878uLL);
  v71 = [NSMutableDictionary dictionaryWithCapacity:100];
  if (statfs([v14 UTF8String], &v82))
  {
    v17 = *__error();
    v18 = SALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003DAD8();
    }

    v19 = NSPOSIXErrorDomain;
    v20 = v17;
LABEL_7:
    v21 = [NSError errorWithDomain:v19 code:v20 userInfo:0];
    v15[2](v15, 0, v21);

    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_16;
  }

  v25 = malloc_type_malloc(0x1D4C0uLL, 0x1000040504FFAC1uLL);
  if (!v25)
  {
    v32 = SALog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10003DC5C();
    }

    v19 = NSPOSIXErrorDomain;
    v20 = 12;
    goto LABEL_7;
  }

  v26 = v25;
  v76 = 0x100000001;
  v80 = 0x1D4C000000000;
  v81 = v25;
  v77 = 0;
  v78 = 0;
  v79 = xmmword_10004CD10;
  v27 = fsctl(v82.f_mntonname, 0xC0384A74uLL, &v76, 1u);
  if (v27)
  {
    v28 = v27;
    v22 = 0;
    v23 = 0;
    goto LABEL_11;
  }

  v57 = v26;
  v58 = v15;
  v73 = 0;
  v74 = v14;
  v33 = 0;
  v34 = 0;
  v23 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v22 = 0;
  v35 = !v9;
  v36 = 0;
  v59 = v35;
  v72 = 1;
  do
  {
    if (HIDWORD(v80))
    {
      v37 = 1;
    }

    else
    {
      v37 = v36 == 0;
    }

    if (!v37)
    {
      if (v72)
      {
        v53 = 0;
      }

      else
      {
        v53 = v34;
      }

      if (v72)
      {
        v54 = v34;
      }

      else
      {
        v54 = 0;
      }

      v14 = v74;
      v55 = [a1 getBundleIDsOfInode:v73 withDirKey:v67 andTag:v68 inVolume:&v82 usingPathList:v69 andVolumesInfo:v75 volumePath:v74];

      [a1 addAttributedCloneToBundleIDs:v55 withCloneSize:v53 withPurgeableSize:v54 onCloneData:v71];
      if (!((v70 == 0) | v72 & 1))
      {
        [a1 updateAppSizeBreakdownList:v73 FSId:&v82.f_fsid dataSize:v53 attributionTag:v68 bundleIDs:v55 appSizeBreakdownList:v70 pathList:v69];
      }

      if (((v59 | v72) & 1) == 0)
      {
        [a1 addClonePathOfCloneID:v73 FSId:&v82.f_fsid dataSize:v53 purgeableSize:v54 dirStatKey:v66 attributionTag:v68 bundleIDs:v55 cloneData:v71];
      }

      v24 = 0;
      v22 = v55;
      v26 = v57;
      v15 = v58;
      goto LABEL_15;
    }

    if (HIDWORD(v80) < 0x18)
    {
      v14 = v74;
      v26 = v57;
      v15 = v58;
      if (!HIDWORD(v80))
      {
        v56 = SALog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          sub_10003DBE4(v74, v56);
        }
      }

      v30 = NSPOSIXErrorDomain;
      v31 = 5;
      goto LABEL_14;
    }

    if (HIDWORD(v80) != 24)
    {
      v38 = 0;
      v61 = v81;
      v62 = HIDWORD(v80);
      v60 = v81 + 48;
      v39 = 24;
      v40 = v22;
      while (1)
      {
        v65 = v39;
        v41 = &v61[v38];
        if (v36 && *v41 != v36)
        {
          if (v72)
          {
            v42 = 0;
          }

          else
          {
            v42 = v34;
          }

          if ((v72 & 1) == 0)
          {
            v34 = 0;
          }

          v22 = [a1 getBundleIDsOfInode:v73 withDirKey:v67 andTag:v68 inVolume:&v82 usingPathList:v69 andVolumesInfo:v75 volumePath:v74];

          [a1 addAttributedCloneToBundleIDs:v22 withCloneSize:v42 withPurgeableSize:v34 onCloneData:v71];
          if (!((v70 == 0) | v72 & 1))
          {
            [a1 updateAppSizeBreakdownList:v73 FSId:&v82.f_fsid dataSize:v42 attributionTag:v68 bundleIDs:v22 appSizeBreakdownList:v70 pathList:v69];
          }

          if (((v59 | v72) & 1) == 0)
          {
            [a1 addClonePathOfCloneID:v73 FSId:&v82.f_fsid dataSize:v42 purgeableSize:v34 dirStatKey:v66 attributionTag:v68 bundleIDs:v22 cloneData:v71];
          }

          v66 = 0;
          v67 = 0;
          v68 = 0;
          v73 = 0;
          v72 = 1;
        }

        else
        {
          v22 = v40;
        }

        v34 = *(v41 + 1);
        v43 = *(v41 + 2);
        v63 = v43;
        v64 = *v41;
        if (v43)
        {
          break;
        }

LABEL_69:
        v36 = v64;
        v38 = (v65 + 32 * v63);
        v39 = v38 + 24;
        v40 = v22;
        if (v38 + 24 >= v62)
        {
          goto LABEL_70;
        }
      }

      v44 = &v60[v38];
      while (2)
      {
        v46 = *(v44 - 1);
        v45 = *v44;
        v33 = *(v44 - 3);
        v47 = *(v44 - 2);

        if (v46)
        {
          v23 = [a1 getDirInfoByDirKey:v46 inVolume:&v82 volumesInfo:v75 volumePath:v74];
          if (v23)
          {
            [a1 addPurgeableCloneOfSize:v34 isPurgeable:v45 & 1 withDirInfo:v23 onCloneData:v71];
            if ([v23 cacheFolder] && (v45 & 1) != 0)
            {
              v48 = [v23 bundleIDs];
              [a1 addCachePurgeableClones:v34 bundleIDs:v48 onCloneData:v71];
            }

            LOBYTE(v45) = [v23 purgeable] | v45;
            if (v70 && (v45 & 1) != 0)
            {
              v49 = *(v44 - 2);
              v45 = [v23 bundleIDs];
              [a1 updateAppSizeBreakdownList:v33 FSId:&v82.f_fsid dataSize:v34 attributionTag:v49 bundleIDs:v45 appSizeBreakdownList:v70 pathList:v69];

              LOBYTE(v45) = 1;
            }
          }
        }

        else
        {
          v23 = 0;
        }

        if (v47 && (v45 & 1) != 0)
        {
          [v75 addPurgeableTaggedClone:v47 size:v34 volumePath:v74];
        }

        if (v23 || *(v44 - 2))
        {
          v22 = 0;
          if (v45)
          {
            goto LABEL_68;
          }

LABEL_59:
          v50 = [v23 bundleIDs];
          v51 = v73 - 1;
          if (v47 || v50)
          {

            if (v51 < v33)
            {
              v72 = 0;
              goto LABEL_68;
            }
          }

          else
          {
            v72 = 0;
            if (!v22 || v51 < v33)
            {
              goto LABEL_68;
            }
          }

          v72 = 0;
          v66 = *(v44 - 1);
          v67 = v46;
          v68 = v47;
          v73 = v33;
          goto LABEL_68;
        }

        v22 = [a1 getBundleIDsByPathForNodeID:v33 forFsid:*&v82.f_fsid andPathList:v69];
        if ((v45 & 1) == 0)
        {
          goto LABEL_59;
        }

LABEL_68:
        v44 += 4;
        if (!--v43)
        {
          goto LABEL_69;
        }

        continue;
      }
    }

LABEL_70:
    v77 = v36;
    v78 = v33;
    HIDWORD(v80) = 120000;
    v52 = fsctl(v82.f_mntonname, 0xC0384A74uLL, &v76, 1u);
  }

  while (!v52);
  v28 = v52;
  v14 = v74;
  v26 = v57;
  v15 = v58;
LABEL_11:
  v29 = SALog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10003DB4C(&v80 + 1);
  }

  v30 = NSPOSIXErrorDomain;
  v31 = v28;
LABEL_14:
  v24 = [NSError errorWithDomain:v30 code:v31 userInfo:0];
LABEL_15:
  free(v26);
  (v15)[2](v15, v71, 0);
LABEL_16:
}

+ (BOOL)isNodeID:(unint64_t)a3 oldestForDStreamID:(unint64_t)a4 forVolPath:(id)a5
{
  v7 = a5;
  bzero(&v28, 0x878uLL);
  if (statfs([v7 UTF8String], &v28))
  {
    v8 = *__error();
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003DCDC();
    }

LABEL_4:

    v10 = 0;
    goto LABEL_34;
  }

  v11 = malloc_type_malloc(0x1D4C0uLL, 0x1000040504FFAC1uLL);
  if (!v11)
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003DD64();
    }

    goto LABEL_4;
  }

  v22[0] = 0x100000001;
  v26 = 0x1D4C000000000;
  v27 = v11;
  v12 = -1;
  v24 = 0;
  v25 = -1;
  v22[1] = a4;
  v23 = 0;
  if (fsctl(v28.f_mntonname, 0xC0384A74uLL, v22, 1u))
  {
LABEL_7:
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003DB4C(&v26 + 1);
    }
  }

  else
  {
    v14 = 0;
    while (HIDWORD(v26) >= 0x18)
    {
      if (HIDWORD(v26) != 24)
      {
        v15 = 0;
        v16 = 24;
        while (*&v27[v15] == a4)
        {
          v17 = *&v27[v15 + 16];
          if (v17)
          {
            v18 = &v27[v15 + 48];
            v19 = v17;
            while (1)
            {
              v14 = *(v18 - 3);
              if ((*v18 & 1) == 0 && v14 < v12)
              {
                v12 = *(v18 - 3);
                if (v14 < a3)
                {
                  break;
                }
              }

              v18 += 32;
              if (!--v19)
              {
                goto LABEL_25;
              }
            }

            v12 = *(v18 - 3);
            goto LABEL_28;
          }

LABEL_25:
          v15 = (v16 + 32 * v17);
          v16 = v15 + 24;
          if (v15 + 24 >= HIDWORD(v26))
          {
            goto LABEL_15;
          }
        }

        break;
      }

LABEL_15:
      v23 = v14;
      HIDWORD(v26) = 120000;
      if (fsctl(v28.f_mntonname, 0xC0384A74uLL, v22, 1u))
      {
        goto LABEL_7;
      }
    }
  }

LABEL_28:
  if (v12)
  {
    v20 = v12 == a3;
  }

  else
  {
    v20 = 0;
  }

  v10 = v20;
LABEL_34:

  return v10;
}

@end