@interface PTFrameRateRangeSettings
+ (BOOL)ignoresKey:(id)a3;
+ (id)settingsControllerModule;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)drillDownSummary;
- (id)succinctDescription;
- (void)setDefaultValues;
- (void)setFrameRateRange:(CAFrameRateRange)a3;
- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4;
- (void)setHighFrameRateReason:(unsigned int)a3;
- (void)setPreset:(unint64_t)a3;
- (void)validate;
@end

@implementation PTFrameRateRangeSettings

- (void)setDefaultValues
{
  v2 = *(MEMORY[0x277CD9DD0] + 4);
  v3 = *(MEMORY[0x277CD9DD0] + 8);
  self->_minimum = *MEMORY[0x277CD9DD0];
  self->_maximum = v2;
  self->_preferred = v3;
  self->_preset = 0;
  self->_reasonComponent = 0;
  self->_reason = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (([(PTFrameRateRangeSettings *)self isEqual:v4]& 1) == 0)
  {
    *(v4 + 52) = self->_minimum;
    *(v4 + 56) = self->_maximum;
    *(v4 + 60) = self->_preferred;
    *(v4 + 64) = self->_preset;
    *(v4 + 48) = self->_reasonComponent;
    *(v4 + 50) = self->_reason;
  }

  return v4;
}

+ (id)settingsControllerModule
{
  v31[7] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.preset == 3"];
  v3 = [PTRowAction actionWithHandler:&__block_literal_global];
  v20 = [PTButtonRow rowWithTitle:@"Validate min<=pref<=max OR min<=max action:pref=unspecified", v3];

  v29 = [(PTRow *)PTChoiceRow rowWithTitle:@"Preset" valueKeyPath:@"preset"];
  v28 = [v29 possibleValues:&unk_282FADDE0 titles:&unk_282FADDC8];
  v31[0] = v28;
  v27 = [(PTRow *)PTChoiceRow rowWithTitle:@"minimum" valueKeyPath:@"minimum"];
  v26 = [v27 possibleValues:&unk_282FADE10 titles:&unk_282FADDF8];
  v25 = [v26 condition:v2];
  v31[1] = v25;
  v24 = [(PTRow *)PTChoiceRow rowWithTitle:@"maximum" valueKeyPath:@"maximum"];
  v23 = [v24 possibleValues:&unk_282FADE10 titles:&unk_282FADDF8];
  v22 = [v23 condition:v2];
  v31[2] = v22;
  v19 = [(PTRow *)PTChoiceRow rowWithTitle:@"preferred" valueKeyPath:@"preferred"];
  v4 = [v19 possibleValues:&unk_282FADE10 titles:&unk_282FADDF8];
  v5 = v2;
  v21 = v2;
  v6 = [v4 condition:v2];
  v31[3] = v6;
  v7 = [(PTRow *)PTEditFloatRow rowWithTitle:@"reason component" valueKeyPath:@"reasonComponent"];
  v8 = [v7 between:0.0 and:65535.0];
  v9 = [v8 precision:0];
  v31[4] = v9;
  v10 = [(PTRow *)PTEditFloatRow rowWithTitle:@"reason" valueKeyPath:@"reason"];
  v11 = [v10 between:0.0 and:65535.0];
  v12 = [v11 precision:0];
  v31[5] = v12;
  v13 = [v20 condition:v5];
  v31[6] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:7];

  v15 = [PTModule sectionWithRows:v14];
  v30 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v17 = [PTModule moduleWithTitle:@"Frame Rate Range" contents:v16];

  return v17;
}

uint64_t __52__PTFrameRateRangeSettings_settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 validate];

  return 1;
}

- (void)setFrameRateRange:(CAFrameRateRange)a3
{
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  if (CAFrameRateRangeIsEqualToRange(*MEMORY[0x277CD9DD0], a3))
  {
    if (!self->_preset)
    {
      goto LABEL_14;
    }

    [(PTFrameRateRangeSettings *)self willChangeValueForKey:@"preset"];
    self->_preset = 0;
  }

  else
  {
    v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    v13.minimum = minimum;
    v13.maximum = maximum;
    v13.preferred = preferred;
    if (CAFrameRateRangeIsEqualToRange(v11, v13))
    {
      if (self->_preset == 1)
      {
        goto LABEL_14;
      }

      [(PTFrameRateRangeSettings *)self willChangeValueForKey:@"preset"];
      v7 = 1;
    }

    else
    {
      v12 = CAFrameRateRangeMake(80.0, 120.0, 80.0);
      v14.minimum = minimum;
      v14.maximum = maximum;
      v14.preferred = preferred;
      IsEqualToRange = CAFrameRateRangeIsEqualToRange(v12, v14);
      preset = self->_preset;
      if (IsEqualToRange)
      {
        if (preset == 2)
        {
          goto LABEL_14;
        }

        [(PTFrameRateRangeSettings *)self willChangeValueForKey:@"preset"];
        v7 = 2;
      }

      else
      {
        if (preset == 3)
        {
          goto LABEL_14;
        }

        [(PTFrameRateRangeSettings *)self willChangeValueForKey:@"preset"];
        v7 = 3;
      }
    }

    self->_preset = v7;
  }

  [(PTFrameRateRangeSettings *)self didChangeValueForKey:@"preset"];
LABEL_14:
  [(PTFrameRateRangeSettings *)self setMinimum:minimum];
  [(PTFrameRateRangeSettings *)self setMaximum:maximum];

  [(PTFrameRateRangeSettings *)self setPreferred:preferred];
}

- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4
{
  v4 = *&a4;
  [(PTFrameRateRangeSettings *)self setFrameRateRange:*&a3.minimum, *&a3.maximum, *&a3.preferred];

  [(PTFrameRateRangeSettings *)self setHighFrameRateReason:v4];
}

- (void)setPreset:(unint64_t)a3
{
  [(PTFrameRateRangeSettings *)self willChangeValueForKey:@"preset"];
  self->_preset = a3;
  [(PTFrameRateRangeSettings *)self didChangeValueForKey:@"preset"];
  if (a3 == 2)
  {
    v8 = 80.0;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v8 = 120.0;
LABEL_7:
    *&v5 = CAFrameRateRangeMake(80.0, 120.0, v8);
    goto LABEL_8;
  }

  if (a3)
  {
    return;
  }

  LODWORD(v5) = *MEMORY[0x277CD9DD0];
  LODWORD(v6) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v7) = *(MEMORY[0x277CD9DD0] + 8);
LABEL_8:

  [(PTFrameRateRangeSettings *)self setFrameRateRange:v5, v6, v7];
}

+ (BOOL)ignoresKey:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"frameRateRange"];
  v5 = [v3 isEqualToString:@"highFrameRateReason"];

  return v4 | v5;
}

- (id)drillDownSummary
{
  if ([(PTFrameRateRangeSettings *)self preset])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%d, %d, %d)", self->_minimum, self->_maximum, self->_preferred];
  }

  else
  {
    v3 = @"(CAFrameRateRangeDefault)";
  }

  return v3;
}

- (void)setHighFrameRateReason:(unsigned int)a3
{
  v3 = a3;
  [(PTFrameRateRangeSettings *)self setReasonComponent:HIWORD(a3)];

  [(PTFrameRateRangeSettings *)self setReason:v3];
}

- (void)validate
{
  minimum = self->_minimum;
  preferred = self->_preferred;
  maximum = self->_maximum;
  if (preferred)
  {
    v8 = 0;
  }

  else
  {
    v8 = minimum <= maximum;
  }

  v9 = v8;
  v10 = preferred <= maximum && minimum <= preferred;
  if (!v10 && (v9 & 1) == 0)
  {
    LODWORD(v2) = *MEMORY[0x277CD9DD0];
    LODWORD(v3) = *(MEMORY[0x277CD9DD0] + 4);
    LODWORD(v4) = *(MEMORY[0x277CD9DD0] + 8);
    [(PTFrameRateRangeSettings *)self setFrameRateRange:v2, v3, v4];
  }
}

- (id)succinctDescription
{
  v2 = [(PTFrameRateRangeSettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PTFrameRateRangeSettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PTFrameRateRangeSettings *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PTFrameRateRangeSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27835EC80;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

id __66__PTFrameRateRangeSettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) drillDownSummary];
  v4 = [v2 appendObject:v3 withName:@"frameRateRange"];

  return [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"highFrameRateReason"), @"highFrameRateReason"}];
}

@end