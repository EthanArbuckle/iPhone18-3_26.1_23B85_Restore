@interface Vr3QrKl7Yn9l4CTz
- (Vr3QrKl7Yn9l4CTz)init;
- (Vr3QrKl7Yn9l4CTz)initWithfOZWnqN9bY6jwOMf:(id)a3;
- (void)dYBT28sn68SB69rn;
- (void)gCEWuNTdkAWg8Jj5WithStMYeuN4F4F4tdlz:(id)a3 workflows:(id)a4;
- (void)hiMi2bftgysHNCmu;
- (void)jzyh7hNN2V5AZJR1;
- (void)m2fzkz0hfx3YgwiD:(BOOL)a3;
- (void)p3IhAuuUciVQl4AK;
- (void)ppirDXSrO0poQaQJ;
- (void)qvdJFx0260C4oDQI;
- (void)sFFfMcUAtN14Bjc5;
- (void)uNvANT3HHuMUUYmG;
- (void)y6doGzfhnVRCi9Iy;
- (void)zs3Lq7W446m0cZJL;
@end

@implementation Vr3QrKl7Yn9l4CTz

- (Vr3QrKl7Yn9l4CTz)init
{
  v10.receiver = self;
  v10.super_class = Vr3QrKl7Yn9l4CTz;
  v2 = [(Vr3QrKl7Yn9l4CTz *)&v10 init];
  if (v2)
  {
    v3 = +[PJXBDBF1h0EU80dy sharedInstance];
    cacheManager = v2->_cacheManager;
    v2->_cacheManager = v3;

    v5 = +[ASCoreDataManager sharedInstance];
    coreDataManager = v2->_coreDataManager;
    v2->_coreDataManager = v5;

    v7 = +[_TtC3asd21PrecomputationManager shared];
    precomputationManager = v2->_precomputationManager;
    v2->_precomputationManager = v7;
  }

  return v2;
}

- (Vr3QrKl7Yn9l4CTz)initWithfOZWnqN9bY6jwOMf:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Vr3QrKl7Yn9l4CTz;
  v6 = [(Vr3QrKl7Yn9l4CTz *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheManager, a3);
  }

  return v7;
}

- (void)sFFfMcUAtN14Bjc5
{
  v3 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "purgeAllUserData", v4, 2u);
  }

  [(Vr3QrKl7Yn9l4CTz *)self y6doGzfhnVRCi9Iy];
  [(Vr3QrKl7Yn9l4CTz *)self m2fzkz0hfx3YgwiD:1];
  [(Vr3QrKl7Yn9l4CTz *)self hiMi2bftgysHNCmu];
  [(Vr3QrKl7Yn9l4CTz *)self p3IhAuuUciVQl4AK];
  [(Vr3QrKl7Yn9l4CTz *)self qvdJFx0260C4oDQI];
}

- (void)dYBT28sn68SB69rn
{
  v2 = +[ASFileCacheManager sharedInstance];
  [v2 cleanupCache:&stru_100690900];
}

- (void)uNvANT3HHuMUUYmG
{
  v2 = +[ASFileCacheManager sharedInstance];
  [v2 deleteAllCache:&stru_100690920];
}

- (void)qvdJFx0260C4oDQI
{
  v2 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager];
  [v2 vWMDLV5jN1a2h2p2:&__NSDictionary0__struct completionHandler:&stru_100690960];
}

- (void)gCEWuNTdkAWg8Jj5WithStMYeuN4F4F4tdlz:(id)a3 workflows:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if ([v6 containsObject:&off_1006BA910])
    {
      v16 = v7;
      v17 = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            v14 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager:v16];
            v22 = v13;
            v23 = &off_1006BA928;
            v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
            [v14 vWMDLV5jN1a2h2p2:v15 completionHandler:&stru_100690980];

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v10);
      }

      v7 = v16;
      v6 = v17;
    }
  }

  else
  {
    [(Vr3QrKl7Yn9l4CTz *)self m2fzkz0hfx3YgwiD:1];
    [(Vr3QrKl7Yn9l4CTz *)self qvdJFx0260C4oDQI];
    [(Vr3QrKl7Yn9l4CTz *)self jzyh7hNN2V5AZJR1];
  }
}

- (void)jzyh7hNN2V5AZJR1
{
  v2 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager];
  v5 = 0;
  [v2 ax7Szgk7yfiKNgSDError:&v5];
  v3 = v5;

  if (v3)
  {
    v4 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594404(v4);
    }
  }
}

- (void)y6doGzfhnVRCi9Iy
{
  v3 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "purgeBindings", v5, 2u);
  }

  v4 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager];
  [v4 removeAllBindings];
}

- (void)m2fzkz0hfx3YgwiD:(BOOL)a3
{
  v3 = a3;
  v5 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "purgeDFCs", buf, 2u);
  }

  v6 = &__NSDictionary0__struct;
  if (v3)
  {
    v6 = &off_1006BAC80;
  }

  v7 = v6;
  v8 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager];
  v11 = 0;
  [v8 nYOW3DfIUVSEf2Hm:v7 rTZQrPNUbDSIifrh:&v11];

  v9 = v11;
  if (v9)
  {
    v10 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594404(v10);
    }
  }

  if (v3)
  {
    [(PrecomputationManager *)self->_precomputationManager notifyCachesWereRemovedWithCompletionHandler:&stru_1006909A0];
    [(Vr3QrKl7Yn9l4CTz *)self uNvANT3HHuMUUYmG];
  }

  else
  {
    [(Vr3QrKl7Yn9l4CTz *)self ppirDXSrO0poQaQJ];
  }
}

- (void)ppirDXSrO0poQaQJ
{
  v4 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager];
  v2 = +[_TtC3asd23ASDConfigurationManager shared];
  v3 = [v2 payloadWorkflowTTLs];
  [v4 vWMDLV5jN1a2h2p2:v3 completionHandler:&stru_1006909C0];
}

- (void)zs3Lq7W446m0cZJL
{
  v2 = [(Vr3QrKl7Yn9l4CTz *)self coreDataManager];
  v6 = 0;
  [v2 mILKmibfRWMwFVWD:@"DB_R115061196" iZGmRj7VI4MJ9lO1:0 AndError:&v6];
  v3 = v6;

  v4 = qword_1006DF770;
  if (v3)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594524(v4);
    }
  }

  else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[ASCleanupManager] JSON Bags purged successfully.", v5, 2u);
  }
}

- (void)p3IhAuuUciVQl4AK
{
  v3 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "purgeG", v6, 2u);
  }

  v4 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager];
  v5 = [v4 removeAllGeocodings];
}

- (void)hiMi2bftgysHNCmu
{
  v3 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "purgeR", v6, 2u);
  }

  v4 = [(Vr3QrKl7Yn9l4CTz *)self cacheManager];
  v5 = [v4 removeRavioli];
}

@end