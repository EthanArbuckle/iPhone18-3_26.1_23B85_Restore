@interface SACloneGroupsAnalyzer
+ (BOOL)isNodeID:(unint64_t)a3 oldestForDStreamID:(unint64_t)a4 path:(id)a5 error:(id *)a6;
- (void)addPathOfClone:(id)a3 cloneData:(id)a4;
- (void)attributeCloneSizeForClone:(id)a3 volumesInfo:(id)a4 clonesData:(id)a5 appSizeBreakdownList:(id)a6 collectClonesPaths:(BOOL)a7;
- (void)fixUpCloneSizeForClone:(id)a3 volumesInfo:(id)a4 clonesData:(id)a5 appSizeBreakdownList:(id)a6 revert:(BOOL)a7;
- (void)iterateCloneGroupsOnVolume:(id)a3 volumesInfo:(id)a4 appSizeBreakdownList:(id)a5 collectClonesPaths:(BOOL)a6 reply:(id)a7;
- (void)updateAppSizeBreakdownForClone:(id)a3 appSizeBreakdownList:(id)a4 dataSize:(unint64_t)a5;
@end

@implementation SACloneGroupsAnalyzer

- (void)addPathOfClone:(id)a3 cloneData:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v15 bundleID];
  v7 = [v15 clonePath];
  if (v7 && v6)
  {
    v8 = [v5 objectForKeyedSubscript:v6];
    v9 = [v8 dataSize];
    v10 = [v5 objectForKeyedSubscript:v6];
    v11 = [v10 dataSize];
    v12 = [v5 objectForKeyedSubscript:v6];
    v13 = +[SACloneInfo newWithDataSize:cloneSize:purgeableSize:dirStatKey:attributionTag:clonePath:](SACloneInfo, "newWithDataSize:cloneSize:purgeableSize:dirStatKey:attributionTag:clonePath:", v9, v11, [v12 purgeableSize], objc_msgSend(v15, "dirStatID"), objc_msgSend(v15, "attributionHash"), v7);

    v14 = [v5 objectForKeyedSubscript:v6];
    [v14 addCloneInfo:v13];
  }
}

- (void)updateAppSizeBreakdownForClone:(id)a3 appSizeBreakdownList:(id)a4 dataSize:(unint64_t)a5
{
  v12 = a3;
  v7 = a4;
  v8 = [v12 bundleID];
  if (v8)
  {
    if ([v12 attributionHash])
    {
      [v7 updateTagsWithCloneSize:a5 bundleIDs:v8];
    }

    else if ([v12 dirStatID])
    {
      v9 = [v12 dirStatID];
      v10 = [v12 volPath];
      v11 = [SASupport getPathForDirStatKey:v9 volumePath:v10];

      if (v11)
      {
        [v7 updatePath:v11 cloneSize:a5 bundleIDs:v8];
      }
    }
  }
}

- (void)fixUpCloneSizeForClone:(id)a3 volumesInfo:(id)a4 clonesData:(id)a5 appSizeBreakdownList:(id)a6 revert:(BOOL)a7
{
  v12 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100013B3C;
  v16[3] = &unk_100064E58;
  v21 = a7;
  v17 = a5;
  v18 = a6;
  v19 = self;
  v20 = v12;
  v13 = v12;
  v14 = v18;
  v15 = v17;
  [v13 getFixUpSizeAndOwnerWithVolumesInfo:a4 reply:v16];
}

- (void)attributeCloneSizeForClone:(id)a3 volumesInfo:(id)a4 clonesData:(id)a5 appSizeBreakdownList:(id)a6 collectClonesPaths:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013D2C;
    v15[3] = &unk_100064E80;
    v20 = a7;
    v16 = v13;
    v17 = self;
    v18 = v12;
    v19 = v14;
    [v18 getAttributionSizeWithVolumesInfo:a4 reply:v15];
  }
}

+ (BOOL)isNodeID:(unint64_t)a3 oldestForDStreamID:(unint64_t)a4 path:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = malloc_type_malloc(0x40000uLL, 0xA4C5DB79uLL);
  if (v9)
  {
    v10 = v9;
    v26 = a6;
    v27 = a3;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v28, 0, sizeof(v28));
    v29 = v9;
    v30 = 9;
    v31 = 3;
    v32 = 0;
    while (1)
    {
      *(&v29 + 1) = 0x40000;
      if (fsctl([v8 fileSystemRepresentation], 0xC0684A87uLL, v28, 0))
      {
        break;
      }

      if (*(&v29 + 1))
      {
        v15 = 0;
        do
        {
          v16 = v10[v15];
          v17 = v15 + 1;
          if (v16 == 255)
          {
            v18 = [SAClone newWithInum:v11 volumePath:v8 flags:v12 dirStatID:0 attributionTag:0 physicalSize:0];

            if (([v18 isRegularPurgeable] & 1) == 0 && (!v13 || objc_msgSend(v18, "inum") < v13))
            {
              v13 = [v18 inum];
            }
          }

          else
          {
            if (v16 == 3)
            {
              v12 = *&v10[v17];
              v17 = v15 + 5;
            }

            else if (v10[v15])
            {
              v19 = SALog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v34 = v16;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unknown attribute %u", buf, 8u);
              }
            }

            else
            {
              v11 = *&v10[v17];
              v17 = v15 + 9;
            }

            v18 = v14;
          }

          v15 = v17;
          v14 = v18;
        }

        while (v17 < *(&v29 + 1));
      }

      else
      {
        v18 = v14;
      }

      v14 = v18;
      if (v32)
      {
        goto LABEL_33;
      }
    }

    v23 = SALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10003D7B8();
    }

    free(v10);
    if (v26)
    {
      v24 = __error();
      *v26 = sub_100001EA0(*v24);
    }

    v18 = v14;
LABEL_33:
    free(v10);
    v22 = v13 == v27;
  }

  else
  {
    v20 = SALog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003D848();
    }

    if (a6)
    {
      v21 = __error();
      sub_100001EA0(*v21);
      *a6 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (void)iterateCloneGroupsOnVolume:(id)a3 volumesInfo:(id)a4 appSizeBreakdownList:(id)a5 collectClonesPaths:(BOOL)a6 reply:(id)a7
{
  v51 = a6;
  v59 = a3;
  v58 = a4;
  v57 = a5;
  v10 = a7;
  v11 = objc_opt_new();
  v12 = malloc_type_malloc(0x40000uLL, 0x6400384DuLL);
  if (v12)
  {
    v13 = v12;
    v52 = 0;
    v53 = v11;
    v50 = v10;
    v14 = 0;
    v60 = 0;
    v61 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v56 = 0;
    v18 = 0;
    v62 = 0;
    v19 = 0;
    v54 = 0;
    memset(v63, 0, sizeof(v63));
    v64 = v12;
    v65 = 127;
    v66 = 1;
    v67 = 0;
    v49 = 0x8000200uLL;
    while (1)
    {
      *(&v64 + 1) = 0x40000;
      if (fsctl([v59 fileSystemRepresentation], 0xC0684A87uLL, v63, 0))
      {
        break;
      }

      if (*(&v64 + 1))
      {
        v20 = 0;
        v21 = v19;
        while (1)
        {
          v22 = v13[v20];
          if (((1 << v22) & v18) != 0)
          {
            v41 = SALog();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_10003D8D8(v22, v41);
            }

            v19 = v21;
            v10 = v50;
            goto LABEL_58;
          }

          v23 = v20 + 1;
          v18 |= 1 << v22;
          if (v13[v20] > 3u)
          {
            break;
          }

          if (v13[v20] <= 1u)
          {
            if (v13[v20])
            {
              v60 = *&v13[v23];
            }

            else
            {
              v14 = *&v13[v23];
            }

LABEL_29:
            v23 = v20 + 9;
            goto LABEL_30;
          }

          if (v22 == 2)
          {
            goto LABEL_29;
          }

          v15 = *&v13[v23];
          v23 = v20 + 5;
LABEL_30:
          v19 = v21;
LABEL_31:
          v21 = v19;
          v20 = v23;
          if (v23 >= *(&v64 + 1))
          {
            goto LABEL_52;
          }
        }

        if (v13[v20] > 5u)
        {
          if (v22 != 6)
          {
            if (v22 != 255)
            {
              v25 = v14;
              v26 = v16;
              v27 = v15;
              v28 = v17;
              v29 = SALog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v69) = v22;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unknown attribute %u", buf, 8u);
              }

              v19 = v21;
              v17 = v28;
              v15 = v27;
              v16 = v26;
              v14 = v25;
              goto LABEL_31;
            }

            v19 = [SAClone newWithInum:v14 volumePath:v59 flags:v15 dirStatID:v61 attributionTag:v16 physicalSize:v17];

            if ((v18 & 0x1B) != 0x1B)
            {
              v24 = SALog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 134219008;
                v69 = v18 & 0x1B ^ 0x1B;
                v70 = 2048;
                v71 = v14;
                v72 = 2048;
                v73 = v60;
                v74 = 1024;
                v75 = v15;
                v76 = 2048;
                v77 = v17;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Some attributes are missing (0x%llX). inum: %llu group ID: %llu flags: %d physicalSize: %llu", buf, 0x30u);
              }
            }

            [(SACloneGroupsAnalyzer *)self fixUpCloneSizeForClone:v19 volumesInfo:v58 clonesData:v53 appSizeBreakdownList:v57 revert:0, v49];
            if (v56 && v60 == v56)
            {
              if (!v19)
              {
                goto LABEL_51;
              }
            }

            else
            {
              if (v62 < 2)
              {
                v32 = SALog();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v49;
                  v69 = v60;
                  v70 = 2048;
                  v71 = v62;
                  _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Skipping the attribution of group %llu (number of clones: %llu)", buf, 0x16u);
                }

                v31 = v52;
                [(SACloneGroupsAnalyzer *)self fixUpCloneSizeForClone:v52 volumesInfo:v58 clonesData:v53 appSizeBreakdownList:v57 revert:1];
                v30 = v54;
              }

              else
              {
                v30 = v54;
                [(SACloneGroupsAnalyzer *)self attributeCloneSizeForClone:v54 volumesInfo:v58 clonesData:v53 appSizeBreakdownList:v57 collectClonesPaths:v51];
                v31 = v52;
              }

              v33 = v19;

              v54 = 0;
              v62 = 0;
              v52 = v33;
              if (!v19)
              {
                goto LABEL_51;
              }
            }

            if ([v19 isRegularPurgeable])
            {
              goto LABEL_51;
            }

            if ([v19 isInsidePurgeableCacheDir])
            {
              goto LABEL_51;
            }

            if ([v19 isInsidePurgeableDir])
            {
              goto LABEL_51;
            }

            v34 = [v19 bundleID];
            if (!v34)
            {
              goto LABEL_51;
            }

            v35 = v34;
            if (v54)
            {
              v36 = [v54 inum];
              v37 = [v19 inum];

              if (v36 <= v37)
              {
                goto LABEL_51;
              }
            }

            else
            {
            }

            v38 = v19;

            v54 = v38;
LABEL_51:
            v18 = 0;
            v17 = 0;
            v16 = 0;
            v15 = 0;
            v14 = 0;
            v61 = 0;
            ++v62;
            v56 = v60;
            goto LABEL_31;
          }

          v16 = *&v13[v23];
        }

        else if (v22 == 4)
        {
          v17 = *&v13[v23];
        }

        else
        {
          v61 = *&v13[v23];
        }

        goto LABEL_29;
      }

LABEL_52:
      if (v67)
      {
        if (v62 < 2)
        {
          v48 = SALog();
          v10 = v50;
          v40 = v52;
          v11 = v53;
          v39 = v54;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            sub_10003D950(v60, v62, v48);
          }

          [(SACloneGroupsAnalyzer *)self fixUpCloneSizeForClone:v52 volumesInfo:v58 clonesData:v53 appSizeBreakdownList:v57 revert:1];
        }

        else
        {
          v39 = v54;
          v11 = v53;
          [(SACloneGroupsAnalyzer *)self attributeCloneSizeForClone:v54 volumesInfo:v58 clonesData:v53 appSizeBreakdownList:v57 collectClonesPaths:v51];
          v10 = v50;
          v40 = v52;
        }

        free(v13);
        v10[2](v10, v11, 0);
        goto LABEL_62;
      }
    }

    v45 = SALog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10003D7B8();
    }

    free(v13);
    v46 = __error();
    v47 = sub_100001EA0(*v46);
    v10 = v50;
    (v50)[2](v50, 0, v47);

LABEL_58:
    v40 = v52;
    v11 = v53;
    v39 = v54;
  }

  else
  {
    v42 = SALog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10003D848();
    }

    v43 = __error();
    v44 = sub_100001EA0(*v43);
    (v10)[2](v10, 0, v44);

    v39 = 0;
    v19 = 0;
    v40 = 0;
  }

LABEL_62:
}

@end