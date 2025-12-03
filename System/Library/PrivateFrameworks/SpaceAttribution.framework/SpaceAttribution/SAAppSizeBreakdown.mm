@interface SAAppSizeBreakdown
- (SAAppSizeBreakdown)init;
- (id)generateDictionary;
- (void)addPath:(id)path fixedPath:(BOOL)fixedPath size:(unint64_t)size;
- (void)mergeWithAppSizeBreakdown:(id)breakdown;
- (void)updatePath:(id)path cacheSize:(unint64_t)size;
- (void)updatePath:(id)path cloneSize:(unint64_t)size;
@end

@implementation SAAppSizeBreakdown

- (SAAppSizeBreakdown)init
{
  v8.receiver = self;
  v8.super_class = SAAppSizeBreakdown;
  v2 = [(SAAppSizeBreakdown *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataPathsSizes = v2->_dataPathsSizes;
    v2->_dataPathsSizes = v3;

    v5 = objc_opt_new();
    fixedPathsSizes = v2->_fixedPathsSizes;
    v2->_fixedPathsSizes = v5;

    v2->_tagsSize = 0;
    v2->_pluginCacheSize = 0;
    v2->_maxPathLength = 0;
  }

  return v2;
}

- (void)addPath:(id)path fixedPath:(BOOL)fixedPath size:(unint64_t)size
{
  fixedPathCopy = fixedPath;
  v8 = MEMORY[0x277CCABB0];
  pathCopy = path;
  v10 = [v8 numberWithUnsignedLongLong:size];
  v11 = 8;
  if (fixedPathCopy)
  {
    v11 = 16;
  }

  [*(&self->super.isa + v11) setObject:v10 forKeyedSubscript:pathCopy];

  maxPathLength = self->_maxPathLength;
  v13 = [pathCopy length];

  if (maxPathLength <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = maxPathLength;
  }

  self->_maxPathLength = v14;
}

- (void)updatePath:(id)path cacheSize:(unint64_t)size
{
  pathCopy = path;
  v6 = [(NSMutableDictionary *)self->_dataPathsSizes objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") - size}];
    [(NSMutableDictionary *)self->_dataPathsSizes setObject:v8 forKeyedSubscript:pathCopy];
  }
}

- (void)updatePath:(id)path cloneSize:(unint64_t)size
{
  pathCopy = path;
  v6 = [(NSMutableDictionary *)self->_dataPathsSizes objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") + size}];
    [(NSMutableDictionary *)self->_dataPathsSizes setObject:v8 forKeyedSubscript:pathCopy];
  }
}

- (void)mergeWithAppSizeBreakdown:(id)breakdown
{
  dataPathsSizes = self->_dataPathsSizes;
  breakdownCopy = breakdown;
  dataPathsSizes = [breakdownCopy dataPathsSizes];
  [(NSMutableDictionary *)dataPathsSizes addEntriesFromDictionary:dataPathsSizes];

  fixedPathsSizes = self->_fixedPathsSizes;
  fixedPathsSizes = [breakdownCopy fixedPathsSizes];
  [(NSMutableDictionary *)fixedPathsSizes addEntriesFromDictionary:fixedPathsSizes];

  self->_tagsSize += [breakdownCopy tagsSize];
  pluginCacheSize = [breakdownCopy pluginCacheSize];
  maxPathLength = self->_maxPathLength;
  self->_pluginCacheSize += pluginCacheSize;
  maxPathLength = [breakdownCopy maxPathLength];

  if (maxPathLength <= maxPathLength)
  {
    v12 = maxPathLength;
  }

  else
  {
    v12 = maxPathLength;
  }

  self->_maxPathLength = v12;
}

- (id)generateDictionary
{
  v3 = MEMORY[0x277CBEAC0];
  dataPathsSizes = self->_dataPathsSizes;
  fixedPathsSizes = self->_fixedPathsSizes;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_tagsSize];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_pluginCacheSize];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_maxPathLength];
  v9 = [v3 dictionaryWithObjectsAndKeys:{dataPathsSizes, @"Data Paths", fixedPathsSizes, @"Fixed Paths", v6, @"Attribution Tags", v7, @"Plugin Cache Size", v8, @"Max Path Length", 0}];

  return v9;
}

@end