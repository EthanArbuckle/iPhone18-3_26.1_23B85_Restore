@interface STTestGroupSpecifierProvider
- (STTestGroupSpecifierProvider)init;
- (void)dealloc;
- (void)setIsHidden:(BOOL)a3;
- (void)timerFired:(id)a3;
@end

@implementation STTestGroupSpecifierProvider

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = STTestGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v3 dealloc];
}

- (STTestGroupSpecifierProvider)init
{
  v5.receiver = self;
  v5.super_class = STTestGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STTestGroupSpecifierProvider *)v2 setIsHidden:1];
  }

  return v3;
}

- (void)setIsHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(STTestGroupSpecifierProvider *)self timer];
  v6 = v5;
  if (v3)
  {
    [v5 invalidate];

    [(STTestGroupSpecifierProvider *)self setTimer:0];
  }

  else
  {

    if (!v6)
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277CBEBB8];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __44__STTestGroupSpecifierProvider_setIsHidden___block_invoke;
      v12 = &unk_279B7CC90;
      objc_copyWeak(&v13, &location);
      v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v9 block:2.0];
      [(STTestGroupSpecifierProvider *)self setTimer:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  self->_isHidden = v3;
}

void __44__STTestGroupSpecifierProvider_setIsHidden___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timerFired:v3];
}

- (void)timerFired:(id)a3
{
  v25 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  if ([v25 count])
  {
    v4 = objc_opt_new();
    v5 = [v25 count];
    if (v5)
    {
      v6 = v5;
      v7 = v5 - 1;
      [v4 addIndex:v5 - 1];
      if (v7)
      {
        [v4 addIndex:v6 - 2];
      }
    }

    [v25 removeObjectsAtIndexes:v4];
  }

  else if ([v25 count] < 5)
  {
    v4 = objc_opt_new();
    v8 = MEMORY[0x277D3FAD8];
    v9 = MEMORY[0x277CCACA8];
    v10 = MEMORY[0x277CCABB0];
    v11 = [(STGroupSpecifierProvider *)self specifiers];
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    v13 = [v9 stringWithFormat:@"%@", v12];
    v14 = [v8 preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    [v4 addObject:v14];
    v15 = MEMORY[0x277D3FAD8];
    v16 = MEMORY[0x277CCACA8];
    v17 = MEMORY[0x277CCABB0];
    v18 = [(STGroupSpecifierProvider *)self specifiers];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count") + 1}];
    v20 = [v16 stringWithFormat:@"%@", v19];
    v21 = [v15 preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    [v4 addObject:v21];
    v22 = MEMORY[0x277CCAA78];
    v23 = [(STGroupSpecifierProvider *)self specifiers];
    v24 = [v22 indexSetWithIndexesInRange:{objc_msgSend(v23, "count"), objc_msgSend(v4, "count")}];
    [v25 insertObjects:v4 atIndexes:v24];
  }

  else
  {
    v4 = [v25 lastObject];
    [v25 removeObject:v4];
  }
}

@end