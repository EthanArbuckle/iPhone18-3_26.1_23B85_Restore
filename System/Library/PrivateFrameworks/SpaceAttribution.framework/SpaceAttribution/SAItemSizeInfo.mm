@interface SAItemSizeInfo
- (SAItemSizeInfo)init;
- (SAItemSizeInfo)initWithDataSize:(int64_t)a3 cloneSize:(int64_t)a4 purgeableSize:(int64_t)a5;
- (id)generateDictionary:(id)a3;
- (void)checkDirStatSizeInconsistency:(id)a3 path:(id)a4 diskCapacity:(int64_t)a5;
- (void)updateWithSizeInfo:(id)a3;
@end

@implementation SAItemSizeInfo

- (SAItemSizeInfo)init
{
  v6.receiver = self;
  v6.super_class = SAItemSizeInfo;
  v2 = [(SAItemSizeInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_failedDirStat = 0;
    *&v2->_isFileCloned = 0;
    *&v2->_physicalSize = 0u;
    *&v2->_cloneSize = 0u;
    *&v2->_dirStatsID = 0u;
    volumePath = v2->_volumePath;
    v2->_volumePath = 0;
  }

  return v3;
}

- (SAItemSizeInfo)initWithDataSize:(int64_t)a3 cloneSize:(int64_t)a4 purgeableSize:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = SAItemSizeInfo;
  v8 = [(SAItemSizeInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_cloneSize = a4;
    v8->_dataSize = a3;
    v8->_purgeableSize = a5;
    v10 = v8;
  }

  return v9;
}

- (void)updateWithSizeInfo:(id)a3
{
  v4 = a3;
  -[SAItemSizeInfo setDataSize:](self, "setDataSize:", [v4 dataSize] + -[SAItemSizeInfo dataSize](self, "dataSize"));
  -[SAItemSizeInfo setCloneSize:](self, "setCloneSize:", [v4 cloneSize] + -[SAItemSizeInfo cloneSize](self, "cloneSize"));
  -[SAItemSizeInfo setPhysicalSize:](self, "setPhysicalSize:", [v4 physicalSize] + -[SAItemSizeInfo physicalSize](self, "physicalSize"));
  v5 = [v4 purgeableSize];

  v6 = &v5[[(SAItemSizeInfo *)self purgeableSize]];

  [(SAItemSizeInfo *)self setPurgeableSize:v6];
}

- (id)generateDictionary:(id)a3
{
  dataSize = self->_dataSize;
  v5 = a3;
  v6 = [NSNumber numberWithLongLong:dataSize];
  v7 = [NSNumber numberWithLongLong:self->_cloneSize];
  v8 = [NSNumber numberWithLongLong:self->_purgeableSize];
  v9 = [NSNumber numberWithLongLong:self->_physicalSize];
  v10 = [NSNumber numberWithUnsignedLongLong:self->_dirStatsID];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:v5, @"bundles", v6, @"dataSize", v7, @"cloneSize", v8, @"purgeableSize", v9, @"physicalSize", v10, @"dirStatsID", 0];

  return v11;
}

- (void)checkDirStatSizeInconsistency:(id)a3 path:(id)a4 diskCapacity:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SAItemSizeInfo *)self usedDirStat])
  {
    if ([(SAItemSizeInfo *)self purgeableSize]< 0)
    {
      v10 = SALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412802;
        v23 = v9;
        v24 = 2048;
        v25 = [(SAItemSizeInfo *)self purgeableSize];
        v26 = 2112;
        v27 = v8;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Path (%@) dir-stat purgeableSize: %lld < 0 for bundles set %@", &v22, 0x20u);
      }
    }

    v11 = [(SAItemSizeInfo *)self physicalSize];
    if (v11 < [(SAItemSizeInfo *)self purgeableSize])
    {
      v12 = SALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = [(SAItemSizeInfo *)self purgeableSize];
        v17 = [(SAItemSizeInfo *)self physicalSize];
        v22 = 138413058;
        v23 = v8;
        v24 = 2112;
        v25 = v9;
        v26 = 2048;
        v27 = v16;
        v28 = 2048;
        v29 = v17;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: Path (%@) dir-stat purgeable size (%lld) is greater than dir-stat physical size (%lld)", &v22, 0x2Au);
      }
    }

    v13 = [(SAItemSizeInfo *)self physicalSize];
    if (v13 < [(SAItemSizeInfo *)self cloneSize])
    {
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = [(SAItemSizeInfo *)self cloneSize];
        v19 = [(SAItemSizeInfo *)self physicalSize];
        v22 = 138413058;
        v23 = v8;
        v24 = 2112;
        v25 = v9;
        v26 = 2048;
        v27 = v18;
        v28 = 2048;
        v29 = v19;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: Path (%@) dir-stat clone size (%lld) is greater than dir-stat physical size (%lld)", &v22, 0x2Au);
      }
    }

    if ([(SAItemSizeInfo *)self physicalSize]> a5)
    {
      v15 = SALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = [(SAItemSizeInfo *)self physicalSize];
        v21 = [(SAItemSizeInfo *)self dirStatsID];
        v22 = 134218754;
        v23 = v20;
        v24 = 2048;
        v25 = a5;
        v26 = 2048;
        v27 = v21;
        v28 = 2112;
        v29 = v8;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "dirStats physicalSize: %llu > diskCapacity: %llu for dirKey %llu bundleIDs %@", &v22, 0x2Au);
      }
    }
  }
}

@end