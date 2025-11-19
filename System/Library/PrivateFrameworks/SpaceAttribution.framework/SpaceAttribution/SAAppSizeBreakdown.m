@interface SAAppSizeBreakdown
- (SAAppSizeBreakdown)init;
- (id)generateDictionary;
- (void)addPath:(id)a3 fixedPath:(BOOL)a4 size:(unint64_t)a5;
- (void)mergeWithAppSizeBreakdown:(id)a3;
- (void)updatePath:(id)a3 cacheSize:(unint64_t)a4;
- (void)updatePath:(id)a3 cloneSize:(unint64_t)a4;
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

- (void)addPath:(id)a3 fixedPath:(BOOL)a4 size:(unint64_t)a5
{
  v6 = a4;
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithUnsignedLongLong:a5];
  v11 = 8;
  if (v6)
  {
    v11 = 16;
  }

  [*(&self->super.isa + v11) setObject:v10 forKeyedSubscript:v9];

  maxPathLength = self->_maxPathLength;
  v13 = [v9 length];

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

- (void)updatePath:(id)a3 cacheSize:(unint64_t)a4
{
  v9 = a3;
  v6 = [(NSMutableDictionary *)self->_dataPathsSizes objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") - a4}];
    [(NSMutableDictionary *)self->_dataPathsSizes setObject:v8 forKeyedSubscript:v9];
  }
}

- (void)updatePath:(id)a3 cloneSize:(unint64_t)a4
{
  v9 = a3;
  v6 = [(NSMutableDictionary *)self->_dataPathsSizes objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") + a4}];
    [(NSMutableDictionary *)self->_dataPathsSizes setObject:v8 forKeyedSubscript:v9];
  }
}

- (void)mergeWithAppSizeBreakdown:(id)a3
{
  dataPathsSizes = self->_dataPathsSizes;
  v5 = a3;
  v6 = [v5 dataPathsSizes];
  [(NSMutableDictionary *)dataPathsSizes addEntriesFromDictionary:v6];

  fixedPathsSizes = self->_fixedPathsSizes;
  v8 = [v5 fixedPathsSizes];
  [(NSMutableDictionary *)fixedPathsSizes addEntriesFromDictionary:v8];

  self->_tagsSize += [v5 tagsSize];
  v9 = [v5 pluginCacheSize];
  maxPathLength = self->_maxPathLength;
  self->_pluginCacheSize += v9;
  v11 = [v5 maxPathLength];

  if (maxPathLength <= v11)
  {
    v12 = v11;
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