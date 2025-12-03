@interface SACloneTreeWalker
+ (BOOL)isNodeID:(unint64_t)d oldestForDStreamID:(unint64_t)iD forVolPath:(id)path;
+ (id)getBundleIDsByPathForNodeID:(unint64_t)d forFsid:(fsid)fsid andPathList:(id)list;
+ (id)getBundleIDsOfInode:(unint64_t)inode withDirKey:(unint64_t)key andTag:(unint64_t)tag inVolume:(statfs *)volume usingPathList:(id)list andVolumesInfo:(id)info volumePath:(id)path;
+ (id)getDirInfoByDirKey:(unint64_t)key inVolume:(statfs *)volume volumesInfo:(id)info volumePath:(id)path;
+ (void)addAttributedCloneToBundleIDs:(id)ds withCloneSize:(int64_t)size withPurgeableSize:(unint64_t)purgeableSize onCloneData:(id)data;
+ (void)addCachePurgeableClones:(unint64_t)clones bundleIDs:(id)ds onCloneData:(id)data;
+ (void)addClonePathOfCloneID:(unint64_t)d FSId:(fsid *)id dataSize:(unint64_t)size purgeableSize:(unint64_t)purgeableSize dirStatKey:(unint64_t)key attributionTag:(unint64_t)tag bundleIDs:(id)ds cloneData:(id)self0;
+ (void)addPurgeableCloneOfSize:(unint64_t)size isPurgeable:(BOOL)purgeable withDirInfo:(id)info onCloneData:(id)data;
+ (void)newFromAPFS:(unint64_t)s inVolume:(statfs *)volume reply:(id)reply;
+ (void)processCloneMapOnVol:(id)vol pathList:(id)list appSizeBreakdownList:(id)breakdownList volumesInfo:(id)info collectClonesPaths:(BOOL)paths reply:(id)reply;
+ (void)updateAppSizeBreakdownList:(unint64_t)list FSId:(fsid *)id dataSize:(unint64_t)size attributionTag:(unint64_t)tag bundleIDs:(id)ds appSizeBreakdownList:(id)breakdownList pathList:(id)pathList;
@end

@implementation SACloneTreeWalker

+ (void)newFromAPFS:(unint64_t)s inVolume:(statfs *)volume reply:(id)reply
{
  replyCopy = reply;
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
  sCopy = s;
  if (fsctl(volume->f_mntonname, 0xC1104A71uLL, &v10, 1u))
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003D9D8();
    }

    v9 = [NSError errorWithDomain:NSCocoaErrorDomain code:4866 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v9);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, (v11 >> 2) & 1, (v11 >> 3) & 1, 0);
  }
}

+ (id)getBundleIDsByPathForNodeID:(unint64_t)d forFsid:(fsid)fsid andPathList:(id)list
{
  fsidCopy = fsid;
  listCopy = list;
  v7 = [SASupport getPathOfNodeID:d FSid:&fsidCopy];
  if (v7)
  {
    v8 = [listCopy getBundleIDsForSuccessorPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getDirInfoByDirKey:(unint64_t)key inVolume:(statfs *)volume volumesInfo:(id)info volumePath:(id)path
{
  pathCopy = path;
  infoCopy = info;
  v10 = [NSNumber numberWithUnsignedLongLong:key];
  v11 = [infoCopy getDirCacheElementForDirKey:v10 volumePath:pathCopy climbUpDSHierarchy:1 cacheDiscoveredDirElement:1];

  return v11;
}

+ (id)getBundleIDsOfInode:(unint64_t)inode withDirKey:(unint64_t)key andTag:(unint64_t)tag inVolume:(statfs *)volume usingPathList:(id)list andVolumesInfo:(id)info volumePath:(id)path
{
  listCopy = list;
  infoCopy = info;
  pathCopy = path;
  if (key)
  {
    v18 = [self getDirInfoByDirKey:key inVolume:volume volumesInfo:infoCopy volumePath:pathCopy];
    v19 = v18;
    if (v18)
    {
      bundleIDs = [v18 bundleIDs];

      if (bundleIDs)
      {
        bundleIDs2 = [v19 bundleIDs];

        goto LABEL_11;
      }
    }
  }

  if (!tag || (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", tag), v22 = objc_claimAutoreleasedReturnValue(), [infoCopy getBundleIDForTagHash:v22 volumePath:pathCopy], bundleIDs2 = objc_claimAutoreleasedReturnValue(), v22, !bundleIDs2))
  {
    v23 = [self getBundleIDsByPathForNodeID:inode forFsid:*&volume->f_fsid andPathList:listCopy];
    if (v23)
    {
      bundleIDs2 = v23;
    }

    else
    {
      bundleIDs2 = @"com.apple.fakeapp.SystemData";
    }
  }

LABEL_11:

  return bundleIDs2;
}

+ (void)addClonePathOfCloneID:(unint64_t)d FSId:(fsid *)id dataSize:(unint64_t)size purgeableSize:(unint64_t)purgeableSize dirStatKey:(unint64_t)key attributionTag:(unint64_t)tag bundleIDs:(id)ds cloneData:(id)self0
{
  dsCopy = ds;
  dataCopy = data;
  v17 = [SASupport getPathOfNodeID:d FSid:id];
  if (v17)
  {
    v18 = [SACloneInfo newWithDataSize:size cloneSize:size purgeableSize:purgeableSize dirStatKey:key attributionTag:tag clonePath:v17];
    v19 = [dataCopy objectForKeyedSubscript:dsCopy];
    [v19 addCloneInfo:v18];
  }
}

+ (void)updateAppSizeBreakdownList:(unint64_t)list FSId:(fsid *)id dataSize:(unint64_t)size attributionTag:(unint64_t)tag bundleIDs:(id)ds appSizeBreakdownList:(id)breakdownList pathList:(id)pathList
{
  dsCopy = ds;
  breakdownListCopy = breakdownList;
  pathListCopy = pathList;
  v16 = [SASupport getPathOfNodeID:list FSid:id];
  if (v16)
  {
    if (tag)
    {
      [breakdownListCopy updateTagsWithCloneSize:size bundleIDs:dsCopy];
    }

    else
    {
      v17 = [pathListCopy findAncestorOfPath:v16];
      [breakdownListCopy updatePath:v17 cloneSize:size bundleIDs:dsCopy];
    }
  }
}

+ (void)addCachePurgeableClones:(unint64_t)clones bundleIDs:(id)ds onCloneData:(id)data
{
  dsCopy = ds;
  dataCopy = data;
  if (dsCopy)
  {
    v8 = [SACloneSize newWithDataSize:0 cloneSize:0 purgeableSize:0 cacheFixUp:clones];
    v9 = [dataCopy objectForKeyedSubscript:dsCopy];

    if (v9)
    {
      v10 = [dataCopy objectForKeyedSubscript:dsCopy];
      [v10 updateWithSizeInfo:v8];
    }

    else
    {
      [dataCopy setObject:v8 forKeyedSubscript:dsCopy];
    }
  }
}

+ (void)addAttributedCloneToBundleIDs:(id)ds withCloneSize:(int64_t)size withPurgeableSize:(unint64_t)purgeableSize onCloneData:(id)data
{
  dataCopy = data;
  dsCopy = ds;
  v13 = [SACloneSize newWithDataSize:size cloneSize:size purgeableSize:purgeableSize cacheFixUp:0];
  v11 = [dataCopy objectForKeyedSubscript:dsCopy];

  if (v11)
  {
    v12 = [dataCopy objectForKeyedSubscript:dsCopy];

    [v12 updateWithSizeInfo:v13];
    dsCopy = v12;
  }

  else
  {
    [dataCopy setObject:v13 forKeyedSubscript:dsCopy];
  }
}

+ (void)addPurgeableCloneOfSize:(unint64_t)size isPurgeable:(BOOL)purgeable withDirInfo:(id)info onCloneData:(id)data
{
  purgeableCopy = purgeable;
  infoCopy = info;
  dataCopy = data;
  if (infoCopy)
  {
    bundleIDs = [infoCopy bundleIDs];

    if (bundleIDs)
    {
      v11 = objc_opt_new();
      if ([infoCopy purgeable])
      {
        if (![infoCopy cacheFolder] || purgeableCopy)
        {
LABEL_8:
          [v11 setDataSize:{objc_msgSend(v11, "dataSize") + size}];
          bundleIDs2 = [infoCopy bundleIDs];
          v13 = [dataCopy objectForKeyedSubscript:bundleIDs2];

          bundleIDs3 = [infoCopy bundleIDs];
          if (v13)
          {
            v15 = [dataCopy objectForKeyedSubscript:bundleIDs3];
            [v15 updateWithSizeInfo:v11];
          }

          else
          {
            [dataCopy setObject:v11 forKeyedSubscript:bundleIDs3];
          }
        }
      }

      else if (purgeableCopy)
      {
        goto LABEL_8;
      }
    }
  }
}

+ (void)processCloneMapOnVol:(id)vol pathList:(id)list appSizeBreakdownList:(id)breakdownList volumesInfo:(id)info collectClonesPaths:(BOOL)paths reply:(id)reply
{
  pathsCopy = paths;
  volCopy = vol;
  listCopy = list;
  breakdownListCopy = breakdownList;
  infoCopy = info;
  replyCopy = reply;
  v16 = SALog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003DA60(volCopy, v16);
  }

  bzero(&v82, 0x878uLL);
  v71 = [NSMutableDictionary dictionaryWithCapacity:100];
  if (statfs([volCopy UTF8String], &v82))
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
    replyCopy[2](replyCopy, 0, v21);

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
  v58 = replyCopy;
  v73 = 0;
  v74 = volCopy;
  v33 = 0;
  v34 = 0;
  v23 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v22 = 0;
  v35 = !pathsCopy;
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

      volCopy = v74;
      v55 = [self getBundleIDsOfInode:v73 withDirKey:v67 andTag:v68 inVolume:&v82 usingPathList:listCopy andVolumesInfo:infoCopy volumePath:v74];

      [self addAttributedCloneToBundleIDs:v55 withCloneSize:v53 withPurgeableSize:v54 onCloneData:v71];
      if (!((breakdownListCopy == 0) | v72 & 1))
      {
        [self updateAppSizeBreakdownList:v73 FSId:&v82.f_fsid dataSize:v53 attributionTag:v68 bundleIDs:v55 appSizeBreakdownList:breakdownListCopy pathList:listCopy];
      }

      if (((v59 | v72) & 1) == 0)
      {
        [self addClonePathOfCloneID:v73 FSId:&v82.f_fsid dataSize:v53 purgeableSize:v54 dirStatKey:v66 attributionTag:v68 bundleIDs:v55 cloneData:v71];
      }

      v24 = 0;
      v22 = v55;
      v26 = v57;
      replyCopy = v58;
      goto LABEL_15;
    }

    if (HIDWORD(v80) < 0x18)
    {
      volCopy = v74;
      v26 = v57;
      replyCopy = v58;
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

          v22 = [self getBundleIDsOfInode:v73 withDirKey:v67 andTag:v68 inVolume:&v82 usingPathList:listCopy andVolumesInfo:infoCopy volumePath:v74];

          [self addAttributedCloneToBundleIDs:v22 withCloneSize:v42 withPurgeableSize:v34 onCloneData:v71];
          if (!((breakdownListCopy == 0) | v72 & 1))
          {
            [self updateAppSizeBreakdownList:v73 FSId:&v82.f_fsid dataSize:v42 attributionTag:v68 bundleIDs:v22 appSizeBreakdownList:breakdownListCopy pathList:listCopy];
          }

          if (((v59 | v72) & 1) == 0)
          {
            [self addClonePathOfCloneID:v73 FSId:&v82.f_fsid dataSize:v42 purgeableSize:v34 dirStatKey:v66 attributionTag:v68 bundleIDs:v22 cloneData:v71];
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
        bundleIDs2 = *v44;
        v33 = *(v44 - 3);
        v47 = *(v44 - 2);

        if (v46)
        {
          v23 = [self getDirInfoByDirKey:v46 inVolume:&v82 volumesInfo:infoCopy volumePath:v74];
          if (v23)
          {
            [self addPurgeableCloneOfSize:v34 isPurgeable:bundleIDs2 & 1 withDirInfo:v23 onCloneData:v71];
            if ([v23 cacheFolder] && (bundleIDs2 & 1) != 0)
            {
              bundleIDs = [v23 bundleIDs];
              [self addCachePurgeableClones:v34 bundleIDs:bundleIDs onCloneData:v71];
            }

            LOBYTE(bundleIDs2) = [v23 purgeable] | bundleIDs2;
            if (breakdownListCopy && (bundleIDs2 & 1) != 0)
            {
              v49 = *(v44 - 2);
              bundleIDs2 = [v23 bundleIDs];
              [self updateAppSizeBreakdownList:v33 FSId:&v82.f_fsid dataSize:v34 attributionTag:v49 bundleIDs:bundleIDs2 appSizeBreakdownList:breakdownListCopy pathList:listCopy];

              LOBYTE(bundleIDs2) = 1;
            }
          }
        }

        else
        {
          v23 = 0;
        }

        if (v47 && (bundleIDs2 & 1) != 0)
        {
          [infoCopy addPurgeableTaggedClone:v47 size:v34 volumePath:v74];
        }

        if (v23 || *(v44 - 2))
        {
          v22 = 0;
          if (bundleIDs2)
          {
            goto LABEL_68;
          }

LABEL_59:
          bundleIDs3 = [v23 bundleIDs];
          v51 = v73 - 1;
          if (v47 || bundleIDs3)
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

        v22 = [self getBundleIDsByPathForNodeID:v33 forFsid:*&v82.f_fsid andPathList:listCopy];
        if ((bundleIDs2 & 1) == 0)
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
  volCopy = v74;
  v26 = v57;
  replyCopy = v58;
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
  (replyCopy)[2](replyCopy, v71, 0);
LABEL_16:
}

+ (BOOL)isNodeID:(unint64_t)d oldestForDStreamID:(unint64_t)iD forVolPath:(id)path
{
  pathCopy = path;
  bzero(&v28, 0x878uLL);
  if (statfs([pathCopy UTF8String], &v28))
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
  v22[1] = iD;
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
        while (*&v27[v15] == iD)
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
                if (v14 < d)
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
    v20 = v12 == d;
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