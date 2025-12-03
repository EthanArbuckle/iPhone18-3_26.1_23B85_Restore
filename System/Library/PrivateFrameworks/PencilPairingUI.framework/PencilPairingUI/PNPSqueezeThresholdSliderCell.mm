@interface PNPSqueezeThresholdSliderCell
- (id)pencilSqueezeThreshold;
- (id)squeezeThresholdToThreshold:(id)threshold;
- (id)thresholdToSqueezeThreshold:(id)threshold;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setPencilSqueezeThreshold:(id)threshold;
@end

@implementation PNPSqueezeThresholdSliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [specifierCopy setTarget:self];
  *&specifierCopy[*MEMORY[0x277D3FCB0]] = sel_setPencilSqueezeThreshold_;
  *&specifierCopy[*MEMORY[0x277D3FCA8]] = sel_pencilSqueezeThreshold;
  v5 = [specifierCopy propertyForKey:@"extendedRange"];
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
  [specifierCopy setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D400C8]];
  [specifierCopy setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400F0]];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numTicks - 1];
  [specifierCopy setProperty:v9 forKey:*MEMORY[0x277D400E8]];

  [specifierCopy setProperty:&unk_286FED050 forKey:*MEMORY[0x277D3FEC0]];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numTicks - 1];
  [specifierCopy setProperty:v10 forKey:*MEMORY[0x277D3FEB8]];

  [specifierCopy setProperty:&unk_286FED068 forKey:*MEMORY[0x277D3FEF0]];
  v11.receiver = self;
  v11.super_class = PNPSqueezeThresholdSliderCell;
  [(PSSliderTableCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
}

- (id)thresholdToSqueezeThreshold:(id)threshold
{
  if (self->_numTicks)
  {
    unsignedIntegerValue = [threshold unsignedIntegerValue];
    v5 = self->_numTicks - 1;
    if (v5 >= (unsignedIntegerValue & ~(unsignedIntegerValue >> 63)))
    {
      v5 = unsignedIntegerValue & ~(unsignedIntegerValue >> 63);
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

- (id)squeezeThresholdToThreshold:(id)threshold
{
  if (self->_numTicks)
  {
    [threshold doubleValue];
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
  squeezeThreshold = [v3 squeezeThreshold];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PNPSqueezeThresholdSliderCell *)self squeezeThresholdToThreshold:squeezeThreshold];
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

- (void)setPencilSqueezeThreshold:(id)threshold
{
  v12 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  v5 = [(PNPSqueezeThresholdSliderCell *)self thresholdToSqueezeThreshold:thresholdCopy];
  v6 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = thresholdCopy;
    _os_log_impl(&dword_25E1BC000, v6, OS_LOG_TYPE_DEFAULT, "Setting squeze threshold: %@ (index: %@)", &v8, 0x16u);
  }

  v7 = +[PNPSqueezeThresholdController sharedController];
  [v7 setSqueezeThreshold:v5];
}

@end