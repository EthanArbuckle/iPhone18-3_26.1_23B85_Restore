@interface UsageHelperBinEdges
- (id)description;
- (id)greaterOrEqualTo;
- (id)greaterThan;
- (id)lowerOrEqualTo;
- (id)lowerThan;
- (void)setGreaterOrEqualTo:(id)to;
- (void)setGreaterThan:(id)than;
- (void)setLowerOrEqualTo:(id)to;
- (void)setLowerThan:(id)than;
@end

@implementation UsageHelperBinEdges

- (id)description
{
  v2 = @"greather than";
  v3 = @"lowerOrEqualTo";
  if (self->_lowerEdgeIncluded)
  {
    v2 = @"greaterOrEqualTo";
    v3 = @"lowerThan";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@ %@:%@", v2, self->_lowerEdge, v3, self->_upperEdge];
}

- (id)greaterOrEqualTo
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v2 = self->_lowerEdge;
  }

  else
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136446466;
      v7 = "[UsageHelperBinEdges greaterOrEqualTo]";
      v8 = 1024;
      v9 = 33;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use greaterThan instead", &v6, 0x12u);
    }

    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)setGreaterOrEqualTo:(id)to
{
  v12 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_lowerEdgeIncluded)
  {
    objc_storeStrong(&self->_lowerEdge, to);
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446466;
      v9 = "[UsageHelperBinEdges setGreaterOrEqualTo:]";
      v10 = 1024;
      v11 = 39;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use setGreaterThan: instead", &v8, 0x12u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)lowerThan
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v2 = self->_upperEdge;
  }

  else
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136446466;
      v7 = "[UsageHelperBinEdges lowerThan]";
      v8 = 1024;
      v9 = 46;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use lowerOrEqualTo instead", &v6, 0x12u);
    }

    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)setLowerThan:(id)than
{
  v12 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  if (self->_lowerEdgeIncluded)
  {
    objc_storeStrong(&self->_upperEdge, than);
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446466;
      v9 = "[UsageHelperBinEdges setLowerThan:]";
      v10 = 1024;
      v11 = 52;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use setLowerOrEqualTo: instead", &v8, 0x12u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)greaterThan
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136446466;
      v7 = "[UsageHelperBinEdges greaterThan]";
      v8 = 1024;
      v9 = 59;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use greaterOrEqualTo instead", &v6, 0x12u);
    }

    v2 = 0;
  }

  else
  {
    v2 = self->_lowerEdge;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)setGreaterThan:(id)than
{
  v12 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  if (self->_lowerEdgeIncluded)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446466;
      v9 = "[UsageHelperBinEdges setGreaterThan:]";
      v10 = 1024;
      v11 = 65;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use setGreaterOrEqualTo: instead", &v8, 0x12u);
    }
  }

  else
  {
    objc_storeStrong(&self->_lowerEdge, than);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)lowerOrEqualTo
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136446466;
      v7 = "[UsageHelperBinEdges lowerOrEqualTo]";
      v8 = 1024;
      v9 = 72;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use lessThan instead", &v6, 0x12u);
    }

    v2 = 0;
  }

  else
  {
    v2 = self->_upperEdge;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)setLowerOrEqualTo:(id)to
{
  v12 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_lowerEdgeIncluded)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446466;
      v9 = "[UsageHelperBinEdges setLowerOrEqualTo:]";
      v10 = 1024;
      v11 = 78;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use setLessThan: instead", &v8, 0x12u);
    }
  }

  else
  {
    objc_storeStrong(&self->_upperEdge, to);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end