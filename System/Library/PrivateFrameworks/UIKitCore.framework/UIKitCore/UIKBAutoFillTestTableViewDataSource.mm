@interface UIKBAutoFillTestTableViewDataSource
- (UIKBAutoFillTestTableViewDataSource)init;
- (UIKBAutoFillTestTableViewDataSource)initWithCoder:(id)coder;
- (double)heightForFooterInSection:(int64_t)section;
- (double)heightForHeaderInSection:(int64_t)section;
- (double)heightForRowAtIndexPath:(id)path;
- (id)cellForRowAtIndexPath:(id)path;
- (id)titleForFooterInSection:(int64_t)section;
- (id)titleForHeaderInSection:(int64_t)section;
- (id)viewForFooterInSection:(int64_t)section;
- (id)viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (void)encodeWithCoder:(id)coder;
- (void)setFooterData:(id)data forSection:(int64_t)section;
- (void)setHeaderData:(id)data forSection:(int64_t)section;
- (void)setNumberOfRows:(int64_t)rows forSection:(int64_t)section;
@end

@implementation UIKBAutoFillTestTableViewDataSource

- (UIKBAutoFillTestTableViewDataSource)init
{
  v13.receiver = self;
  v13.super_class = UIKBAutoFillTestTableViewDataSource;
  v2 = [(UIKBAutoFillTestTableViewDataSource *)&v13 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    rowCountMap = v2->_rowCountMap;
    v2->_rowCountMap = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    visibleCellDataMap = v2->_visibleCellDataMap;
    v2->_visibleCellDataMap = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    headerDataMap = v2->_headerDataMap;
    v2->_headerDataMap = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    footerDataMap = v2->_footerDataMap;
    v2->_footerDataMap = dictionary4;

    v11 = v2;
  }

  return v2;
}

- (UIKBAutoFillTestTableViewDataSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = UIKBAutoFillTestTableViewDataSource;
  v5 = [(UIKBAutoFillTestTableViewDataSource *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"rowCountMap"];
    v7 = [v6 mutableCopy];
    rowCountMap = v5->_rowCountMap;
    v5->_rowCountMap = v7;

    v9 = [coderCopy decodeObjectForKey:@"visibleCellDataMap"];
    v10 = [v9 mutableCopy];
    visibleCellDataMap = v5->_visibleCellDataMap;
    v5->_visibleCellDataMap = v10;

    v12 = [coderCopy decodeObjectForKey:@"headerDataMap"];
    v13 = [v12 mutableCopy];
    headerDataMap = v5->_headerDataMap;
    v5->_headerDataMap = v13;

    v15 = [coderCopy decodeObjectForKey:@"footerDataMap"];
    v16 = [v15 mutableCopy];
    footerDataMap = v5->_footerDataMap;
    v5->_footerDataMap = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rowCountMap = self->_rowCountMap;
  coderCopy = coder;
  [coderCopy encodeObject:rowCountMap forKey:@"rowCountMap"];
  [coderCopy encodeObject:self->_visibleCellDataMap forKey:@"visibleCellDataMap"];
  [coderCopy encodeObject:self->_headerDataMap forKey:@"headerDataMap"];
  [coderCopy encodeObject:self->_footerDataMap forKey:@"footerDataMap"];
}

- (void)setNumberOfRows:(int64_t)rows forSection:(int64_t)section
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:rows];
  rowCountMap = self->_rowCountMap;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  [(NSMutableDictionary *)rowCountMap setObject:v8 forKeyedSubscript:v7];
}

- (void)setHeaderData:(id)data forSection:(int64_t)section
{
  headerDataMap = self->_headerDataMap;
  v6 = MEMORY[0x1E696AD98];
  dataCopy = data;
  v8 = [v6 numberWithInteger:section];
  [(NSMutableDictionary *)headerDataMap setObject:dataCopy forKeyedSubscript:v8];
}

- (void)setFooterData:(id)data forSection:(int64_t)section
{
  footerDataMap = self->_footerDataMap;
  v6 = MEMORY[0x1E696AD98];
  dataCopy = data;
  v8 = [v6 numberWithInteger:section];
  [(NSMutableDictionary *)footerDataMap setObject:dataCopy forKeyedSubscript:v8];
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  rowCountMap = self->_rowCountMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)rowCountMap objectForKeyedSubscript:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (id)cellForRowAtIndexPath:(id)path
{
  v3 = [(NSMutableDictionary *)self->_visibleCellDataMap objectForKeyedSubscript:path];
  cell = [v3 cell];

  if (!cell)
  {
    v5 = [UITableViewCell alloc];
    v6 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v9 = [v6 stringWithFormat:@"%@", uUIDString];
    cell = [(UITableViewCell *)v5 initWithStyle:0 reuseIdentifier:v9];
  }

  v10 = cell;

  return v10;
}

- (double)heightForRowAtIndexPath:(id)path
{
  v3 = [(NSMutableDictionary *)self->_visibleCellDataMap objectForKeyedSubscript:path];
  [v3 height];
  if (v4 == 0.0)
  {
    v5 = 44.0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  headerDataMap = self->_headerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)headerDataMap objectForKeyedSubscript:v4];

  title = [v5 title];

  return title;
}

- (id)titleForFooterInSection:(int64_t)section
{
  footerDataMap = self->_footerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)footerDataMap objectForKeyedSubscript:v4];

  title = [v5 title];

  return title;
}

- (double)heightForHeaderInSection:(int64_t)section
{
  headerDataMap = self->_headerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)headerDataMap objectForKeyedSubscript:v4];

  [v5 height];
  v6 = -1.0;
  if (v7 > 0.0)
  {
    [v5 height];
    v6 = v8;
  }

  return v6;
}

- (double)heightForFooterInSection:(int64_t)section
{
  footerDataMap = self->_footerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)footerDataMap objectForKeyedSubscript:v4];

  [v5 height];
  v6 = -1.0;
  if (v7 > 0.0)
  {
    [v5 height];
    v6 = v8;
  }

  return v6;
}

- (id)viewForHeaderInSection:(int64_t)section
{
  headerDataMap = self->_headerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)headerDataMap objectForKeyedSubscript:v4];

  headerFooterView = [v5 headerFooterView];

  return headerFooterView;
}

- (id)viewForFooterInSection:(int64_t)section
{
  footerDataMap = self->_footerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)footerDataMap objectForKeyedSubscript:v4];

  headerFooterView = [v5 headerFooterView];

  return headerFooterView;
}

@end