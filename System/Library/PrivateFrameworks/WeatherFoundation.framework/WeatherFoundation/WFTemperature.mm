@interface WFTemperature
- (BOOL)_unitIsHydrated:(int)hydrated outputValue:(double *)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTemperature:(id)temperature;
- (WFTemperature)init;
- (WFTemperature)initWithCoder:(id)coder;
- (WFTemperature)initWithTemperatureUnit:(int)unit value:(double)value;
- (double)celsius;
- (double)fahrenheit;
- (double)kelvin;
- (double)temperatureForUnit:(int)unit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_setValue:(double)value forUnit:(int)unit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFTemperature

- (WFTemperature)initWithTemperatureUnit:(int)unit value:(double)value
{
  v5 = *&unit;
  v6 = [(WFTemperature *)self init];
  v7 = v6;
  if (v6)
  {
    [(WFTemperature *)v6 _setValue:v5 forUnit:value];
  }

  return v7;
}

- (WFTemperature)init
{
  v5.receiver = self;
  v5.super_class = WFTemperature;
  v2 = [(WFTemperature *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WFTemperature *)v2 _resetTemperatureValues];
  }

  return v3;
}

- (WFTemperature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFTemperature;
  v5 = [(WFTemperature *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(WFTemperature *)v5 setKelvin:__31__WFTemperature_initWithCoder___block_invoke(v5, @"WFTemperatureKelvinKey", coderCopy)];
    v8 = [(WFTemperature *)v6 setFahrenheit:__31__WFTemperature_initWithCoder___block_invoke(v7, @"WFTemperatureFahrenheitKey", coderCopy)];
    [(WFTemperature *)v6 setCelsius:__31__WFTemperature_initWithCoder___block_invoke(v8, @"WFTemperatureCelsiusKey", coderCopy)];
  }

  return v6;
}

double __31__WFTemperature_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 containsValueForKey:v4])
  {
    [v5 decodeDoubleForKey:v4];
    v7 = v6;
  }

  else
  {
    v7 = NAN;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"WFTemperatureKelvinKey" forKey:self->_temperatureValues.kelvinVal];
  [coderCopy encodeDouble:@"WFTemperatureFahrenheitKey" forKey:self->_temperatureValues.fahrenheitVal];
  [coderCopy encodeDouble:@"WFTemperatureCelsiusKey" forKey:self->_temperatureValues.celsiusVal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [(WFTemperature *)self kelvin];
  [v4 setKelvin:?];
  [(WFTemperature *)self celsius];
  [v4 setCelsius:?];
  [(WFTemperature *)self fahrenheit];
  [v4 setFahrenheit:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFTemperature *)self isEqualToTemperature:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CCABB0];
  [(WFTemperature *)self temperatureForUnit:2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqualToTemperature:(id)temperature
{
  [temperature temperatureForUnit:2];
  v5 = v4;
  [(WFTemperature *)self temperatureForUnit:2];
  return vabdd_f64(v6, v5) < 2.22044605e-16;
}

- (double)kelvin
{
  v4 = NAN;
  if ([(WFTemperature *)self _unitIsHydrated:3 outputValue:&v4])
  {
    return v4;
  }

  [(WFTemperature *)self temperatureForUnit:3];
  return result;
}

- (double)celsius
{
  v4 = NAN;
  if ([(WFTemperature *)self _unitIsHydrated:2 outputValue:&v4])
  {
    return v4;
  }

  [(WFTemperature *)self temperatureForUnit:2];
  return result;
}

- (double)fahrenheit
{
  v4 = NAN;
  if ([(WFTemperature *)self _unitIsHydrated:1 outputValue:&v4])
  {
    return v4;
  }

  [(WFTemperature *)self temperatureForUnit:1];
  return result;
}

- (double)temperatureForUnit:(int)unit
{
  v3 = *&unit;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FF8000000000000;
  if ([(WFTemperature *)self _unitIsHydrated:*&unit outputValue:&v16])
  {
    v5 = v14[3];
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6 = [MEMORY[0x277CCAB58] indexSetWithIndex:3];
    [v6 addIndex:2];
    [v6 addIndex:1];
    [v6 removeIndex:v3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__WFTemperature_temperatureForUnit___block_invoke;
    v8[3] = &unk_279E6F678;
    v8[4] = self;
    v8[5] = &v13;
    v8[6] = &v9;
    [v6 enumerateIndexesUsingBlock:v8];
    if (WFTemperatureUnitIsValid(*(v10 + 6)))
    {
      v5 = WFConvertTemperature(*(v10 + 6), v3, v14[3]);
      [(WFTemperature *)self _setValue:v3 forUnit:?];
    }

    else
    {
      v5 = NAN;
    }

    _Block_object_dispose(&v9, 8);
  }

  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __36__WFTemperature_temperatureForUnit___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  result = [*(a1 + 32) _unitIsHydrated:a2 outputValue:*(*(a1 + 40) + 8) + 24];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = v4;
    *a3 = 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCABB0];
  [(WFTemperature *)self celsius];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [(WFTemperature *)self fahrenheit];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x277CCABB0];
  [(WFTemperature *)self kelvin];
  v10 = [v9 numberWithDouble:?];
  v11 = [v3 stringWithFormat:@"<%@: %p, celsius = %@, fahrenheit = %@, kelvin = %@>", v4, self, v6, v8, v10];

  return v11;
}

- (void)_setValue:(double)value forUnit:(int)unit
{
  if ((unit - 1) <= 2)
  {
    *(&self->super.isa + qword_272BE4CE0[unit - 1]) = value;
  }
}

- (BOOL)_unitIsHydrated:(int)hydrated outputValue:(double *)value
{
  if ((hydrated - 1) > 2)
  {
    return 0;
  }

  if (value)
  {
    *value = *(&self->super.isa + qword_272BE4CE0[hydrated - 1]);
  }

  return 1;
}

@end