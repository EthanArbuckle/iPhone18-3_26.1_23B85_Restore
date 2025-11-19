@interface UIKBAutoFillTestTableViewDataSource
- (UIKBAutoFillTestTableViewDataSource)init;
- (UIKBAutoFillTestTableViewDataSource)initWithCoder:(id)a3;
- (double)heightForFooterInSection:(int64_t)a3;
- (double)heightForHeaderInSection:(int64_t)a3;
- (double)heightForRowAtIndexPath:(id)a3;
- (id)cellForRowAtIndexPath:(id)a3;
- (id)titleForFooterInSection:(int64_t)a3;
- (id)titleForHeaderInSection:(int64_t)a3;
- (id)viewForFooterInSection:(int64_t)a3;
- (id)viewForHeaderInSection:(int64_t)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFooterData:(id)a3 forSection:(int64_t)a4;
- (void)setHeaderData:(id)a3 forSection:(int64_t)a4;
- (void)setNumberOfRows:(int64_t)a3 forSection:(int64_t)a4;
@end

@implementation UIKBAutoFillTestTableViewDataSource

- (UIKBAutoFillTestTableViewDataSource)init
{
  v13.receiver = self;
  v13.super_class = UIKBAutoFillTestTableViewDataSource;
  v2 = [(UIKBAutoFillTestTableViewDataSource *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    rowCountMap = v2->_rowCountMap;
    v2->_rowCountMap = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    visibleCellDataMap = v2->_visibleCellDataMap;
    v2->_visibleCellDataMap = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    headerDataMap = v2->_headerDataMap;
    v2->_headerDataMap = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    footerDataMap = v2->_footerDataMap;
    v2->_footerDataMap = v9;

    v11 = v2;
  }

  return v2;
}

- (UIKBAutoFillTestTableViewDataSource)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = UIKBAutoFillTestTableViewDataSource;
  v5 = [(UIKBAutoFillTestTableViewDataSource *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"rowCountMap"];
    v7 = [v6 mutableCopy];
    rowCountMap = v5->_rowCountMap;
    v5->_rowCountMap = v7;

    v9 = [v4 decodeObjectForKey:@"visibleCellDataMap"];
    v10 = [v9 mutableCopy];
    visibleCellDataMap = v5->_visibleCellDataMap;
    v5->_visibleCellDataMap = v10;

    v12 = [v4 decodeObjectForKey:@"headerDataMap"];
    v13 = [v12 mutableCopy];
    headerDataMap = v5->_headerDataMap;
    v5->_headerDataMap = v13;

    v15 = [v4 decodeObjectForKey:@"footerDataMap"];
    v16 = [v15 mutableCopy];
    footerDataMap = v5->_footerDataMap;
    v5->_footerDataMap = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rowCountMap = self->_rowCountMap;
  v5 = a3;
  [v5 encodeObject:rowCountMap forKey:@"rowCountMap"];
  [v5 encodeObject:self->_visibleCellDataMap forKey:@"visibleCellDataMap"];
  [v5 encodeObject:self->_headerDataMap forKey:@"headerDataMap"];
  [v5 encodeObject:self->_footerDataMap forKey:@"footerDataMap"];
}

- (void)setNumberOfRows:(int64_t)a3 forSection:(int64_t)a4
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  rowCountMap = self->_rowCountMap;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)rowCountMap setObject:v8 forKeyedSubscript:v7];
}

- (void)setHeaderData:(id)a3 forSection:(int64_t)a4
{
  headerDataMap = self->_headerDataMap;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)headerDataMap setObject:v7 forKeyedSubscript:v8];
}

- (void)setFooterData:(id)a3 forSection:(int64_t)a4
{
  footerDataMap = self->_footerDataMap;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)footerDataMap setObject:v7 forKeyedSubscript:v8];
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  rowCountMap = self->_rowCountMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)rowCountMap objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

  return v6;
}

- (id)cellForRowAtIndexPath:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_visibleCellDataMap objectForKeyedSubscript:a3];
  v4 = [v3 cell];

  if (!v4)
  {
    v5 = [UITableViewCell alloc];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    v9 = [v6 stringWithFormat:@"%@", v8];
    v4 = [(UITableViewCell *)v5 initWithStyle:0 reuseIdentifier:v9];
  }

  v10 = v4;

  return v10;
}

- (double)heightForRowAtIndexPath:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_visibleCellDataMap objectForKeyedSubscript:a3];
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

- (id)titleForHeaderInSection:(int64_t)a3
{
  headerDataMap = self->_headerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)headerDataMap objectForKeyedSubscript:v4];

  v6 = [v5 title];

  return v6;
}

- (id)titleForFooterInSection:(int64_t)a3
{
  footerDataMap = self->_footerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)footerDataMap objectForKeyedSubscript:v4];

  v6 = [v5 title];

  return v6;
}

- (double)heightForHeaderInSection:(int64_t)a3
{
  headerDataMap = self->_headerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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

- (double)heightForFooterInSection:(int64_t)a3
{
  footerDataMap = self->_footerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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

- (id)viewForHeaderInSection:(int64_t)a3
{
  headerDataMap = self->_headerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)headerDataMap objectForKeyedSubscript:v4];

  v6 = [v5 headerFooterView];

  return v6;
}

- (id)viewForFooterInSection:(int64_t)a3
{
  footerDataMap = self->_footerDataMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)footerDataMap objectForKeyedSubscript:v4];

  v6 = [v5 headerFooterView];

  return v6;
}

@end