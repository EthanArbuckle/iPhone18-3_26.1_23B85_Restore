@interface SAItemSizeInfo
- (SAItemSizeInfo)init;
- (SAItemSizeInfo)initWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize;
- (id)generateDictionary:(id)dictionary;
- (void)checkDirStatSizeInconsistency:(id)inconsistency path:(id)path diskCapacity:(int64_t)capacity;
- (void)updateWithSizeInfo:(id)info;
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

- (SAItemSizeInfo)initWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize
{
  v12.receiver = self;
  v12.super_class = SAItemSizeInfo;
  v8 = [(SAItemSizeInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_cloneSize = cloneSize;
    v8->_dataSize = size;
    v8->_purgeableSize = purgeableSize;
    v10 = v8;
  }

  return v9;
}

- (void)updateWithSizeInfo:(id)info
{
  infoCopy = info;
  -[SAItemSizeInfo setDataSize:](self, "setDataSize:", [infoCopy dataSize] + -[SAItemSizeInfo dataSize](self, "dataSize"));
  -[SAItemSizeInfo setCloneSize:](self, "setCloneSize:", [infoCopy cloneSize] + -[SAItemSizeInfo cloneSize](self, "cloneSize"));
  -[SAItemSizeInfo setPhysicalSize:](self, "setPhysicalSize:", [infoCopy physicalSize] + -[SAItemSizeInfo physicalSize](self, "physicalSize"));
  purgeableSize = [infoCopy purgeableSize];

  v6 = &purgeableSize[[(SAItemSizeInfo *)self purgeableSize]];

  [(SAItemSizeInfo *)self setPurgeableSize:v6];
}

- (id)generateDictionary:(id)dictionary
{
  dataSize = self->_dataSize;
  dictionaryCopy = dictionary;
  v6 = [NSNumber numberWithLongLong:dataSize];
  v7 = [NSNumber numberWithLongLong:self->_cloneSize];
  v8 = [NSNumber numberWithLongLong:self->_purgeableSize];
  v9 = [NSNumber numberWithLongLong:self->_physicalSize];
  v10 = [NSNumber numberWithUnsignedLongLong:self->_dirStatsID];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:dictionaryCopy, @"bundles", v6, @"dataSize", v7, @"cloneSize", v8, @"purgeableSize", v9, @"physicalSize", v10, @"dirStatsID", 0];

  return v11;
}

- (void)checkDirStatSizeInconsistency:(id)inconsistency path:(id)path diskCapacity:(int64_t)capacity
{
  inconsistencyCopy = inconsistency;
  pathCopy = path;
  if ([(SAItemSizeInfo *)self usedDirStat])
  {
    if ([(SAItemSizeInfo *)self purgeableSize]< 0)
    {
      v10 = SALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412802;
        v23 = pathCopy;
        v24 = 2048;
        capacityCopy = [(SAItemSizeInfo *)self purgeableSize];
        v26 = 2112;
        v27 = inconsistencyCopy;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Path (%@) dir-stat purgeableSize: %lld < 0 for bundles set %@", &v22, 0x20u);
      }
    }

    physicalSize = [(SAItemSizeInfo *)self physicalSize];
    if (physicalSize < [(SAItemSizeInfo *)self purgeableSize])
    {
      v12 = SALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        purgeableSize = [(SAItemSizeInfo *)self purgeableSize];
        physicalSize2 = [(SAItemSizeInfo *)self physicalSize];
        v22 = 138413058;
        v23 = inconsistencyCopy;
        v24 = 2112;
        capacityCopy = pathCopy;
        v26 = 2048;
        v27 = purgeableSize;
        v28 = 2048;
        v29 = physicalSize2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: Path (%@) dir-stat purgeable size (%lld) is greater than dir-stat physical size (%lld)", &v22, 0x2Au);
      }
    }

    physicalSize3 = [(SAItemSizeInfo *)self physicalSize];
    if (physicalSize3 < [(SAItemSizeInfo *)self cloneSize])
    {
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        cloneSize = [(SAItemSizeInfo *)self cloneSize];
        physicalSize4 = [(SAItemSizeInfo *)self physicalSize];
        v22 = 138413058;
        v23 = inconsistencyCopy;
        v24 = 2112;
        capacityCopy = pathCopy;
        v26 = 2048;
        v27 = cloneSize;
        v28 = 2048;
        v29 = physicalSize4;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: Path (%@) dir-stat clone size (%lld) is greater than dir-stat physical size (%lld)", &v22, 0x2Au);
      }
    }

    if ([(SAItemSizeInfo *)self physicalSize]> capacity)
    {
      v15 = SALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        physicalSize5 = [(SAItemSizeInfo *)self physicalSize];
        dirStatsID = [(SAItemSizeInfo *)self dirStatsID];
        v22 = 134218754;
        v23 = physicalSize5;
        v24 = 2048;
        capacityCopy = capacity;
        v26 = 2048;
        v27 = dirStatsID;
        v28 = 2112;
        v29 = inconsistencyCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "dirStats physicalSize: %llu > diskCapacity: %llu for dirKey %llu bundleIDs %@", &v22, 0x2Au);
      }
    }
  }
}

@end