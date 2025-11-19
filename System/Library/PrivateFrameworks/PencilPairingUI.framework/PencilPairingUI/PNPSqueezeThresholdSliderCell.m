@interface PNPSqueezeThresholdSliderCell
- (id)pencilSqueezeThreshold;
- (id)squeezeThresholdToThreshold:(id)a3;
- (id)thresholdToSqueezeThreshold:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setPencilSqueezeThreshold:(id)a3;
@end

@implementation PNPSqueezeThresholdSliderCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  [v4 setTarget:self];
  *&v4[*MEMORY[0x277D3FCB0]] = sel_setPencilSqueezeThreshold_;
  *&v4[*MEMORY[0x277D3FCA8]] = sel_pencilSqueezeThreshold;
  v5 = [v4 propertyForKey:@"extendedRange"];
  self->_isExtendedRange = [v5 BOOLValue];

  v6 = &kExtendedRangeTickValues;
  if (self->_isExtendedRange)
  {
    v7 = 9;
  }

  else
  {
    v8 = _AXSPencilExtendedSqueezeRangeEnabled();
    self->_isExtendedRange = v8 != 0;
    v7 = 5;
    if (v8)
    {
      v7 = 9;
    }

    else
    {
      v6 = &kNormalTickValues;
    }
  }

  self->_numTicks = v7;
  self->_tickValues = v6;
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D400C8]];
  [v4 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400F0]];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numTicks - 1];
  [v4 setProperty:v9 forKey:*MEMORY[0x277D400E8]];

  [v4 setProperty:&unk_286FED050 forKey:*MEMORY[0x277D3FEC0]];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numTicks - 1];
  [v4 setProperty:v10 forKey:*MEMORY[0x277D3FEB8]];

  [v4 setProperty:&unk_286FED068 forKey:*MEMORY[0x277D3FEF0]];
  v11.receiver = self;
  v11.super_class = PNPSqueezeThresholdSliderCell;
  [(PSSliderTableCell *)&v11 refreshCellContentsWithSpecifier:v4];
}

- (id)thresholdToSqueezeThreshold:(id)a3
{
  if (self->_numTicks)
  {
    v4 = [a3 unsignedIntegerValue];
    v5 = self->_numTicks - 1;
    if (v5 >= (v4 & ~(v4 >> 63)))
    {
      v5 = v4 & ~(v4 >> 63);
    }

    v6 = MEMORY[0x277CCABB0];
    v7 = self->_tickValues[v5];
  }

  else
  {
    v8 = MEMORY[0x277CCABB0];
    +[PNPSqueezeThresholdController defaultThreshold];
    v6 = v8;
  }

  v9 = [v6 numberWithDouble:v7];

  return v9;
}

- (id)squeezeThresholdToThreshold:(id)a3
{
  if (self->_numTicks)
  {
    [a3 doubleValue];
    numTicks = self->_numTicks;
    if (numTicks < 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      tickValues = self->_tickValues;
      v8 = *tickValues - v4;
      if (v8 < 0.0)
      {
        v8 = -v8;
      }

      for (i = 1; i != numTicks; ++i)
      {
        v10 = tickValues[i] - v4;
        if (v10 < 0.0)
        {
          v10 = -v10;
        }

        if (v10 < v8)
        {
          v8 = v10;
          v6 = i;
        }
      }
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)pencilSqueezeThreshold
{
  v3 = +[PNPSqueezeThresholdController sharedController];
  v4 = [v3 squeezeThreshold];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PNPSqueezeThresholdSliderCell *)self squeezeThresholdToThreshold:v4];
  }

  else
  {
    v6 = MEMORY[0x277CCABB0];
    +[PNPSqueezeThresholdController defaultThreshold];
    v7 = [v6 numberWithDouble:?];
    v5 = [(PNPSqueezeThresholdSliderCell *)self squeezeThresholdToThreshold:v7];
  }

  return v5;
}

- (void)setPencilSqueezeThreshold:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PNPSqueezeThresholdSliderCell *)self thresholdToSqueezeThreshold:v4];
  v6 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25E1BC000, v6, OS_LOG_TYPE_DEFAULT, "Setting squeze threshold: %@ (index: %@)", &v8, 0x16u);
  }

  v7 = +[PNPSqueezeThresholdController sharedController];
  [v7 setSqueezeThreshold:v5];
}

@end