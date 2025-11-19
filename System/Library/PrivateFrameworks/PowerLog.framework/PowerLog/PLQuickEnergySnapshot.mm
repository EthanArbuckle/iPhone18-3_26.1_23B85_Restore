@interface PLQuickEnergySnapshot
- (PLQuickEnergySnapshot)initWithEnergies:(double)a3 andNetworkEnergy:(double)a4;
- (double)computeEnergyDiff:(id)a3;
- (double)getTotalEnergy;
- (id)description;
@end

@implementation PLQuickEnergySnapshot

- (PLQuickEnergySnapshot)initWithEnergies:(double)a3 andNetworkEnergy:(double)a4
{
  v10.receiver = self;
  v10.super_class = PLQuickEnergySnapshot;
  v6 = [(PLQuickEnergySnapshot *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(PLQuickEnergySnapshot *)v6 setCpuEnergy:a3];
    [(PLQuickEnergySnapshot *)v7 setNetworkEnergy:a4];
    v8 = [MEMORY[0x1E695DF00] date];
    [(PLQuickEnergySnapshot *)v7 setTimestamp:v8];
  }

  return v7;
}

- (double)computeEnergyDiff:(id)a3
{
  v4 = a3;
  [(PLQuickEnergySnapshot *)self cpuEnergy];
  v6 = v5;
  [v4 cpuEnergy];
  v8 = v6 - v7;
  [(PLQuickEnergySnapshot *)self networkEnergy];
  v10 = v8 + v9;
  [v4 networkEnergy];
  v12 = v11;

  return v10 - v12;
}

- (double)getTotalEnergy
{
  [(PLQuickEnergySnapshot *)self cpuEnergy];
  v4 = v3;
  [(PLQuickEnergySnapshot *)self networkEnergy];
  return v4 + v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLQuickEnergySnapshot *)self timestamp];
  [(PLQuickEnergySnapshot *)self cpuEnergy];
  v6 = v5;
  [(PLQuickEnergySnapshot *)self networkEnergy];
  v8 = [v3 stringWithFormat:@"timestamp=%@, cpuEnergy=%f, networkEnergy=%f", v4, v6, v7];

  return v8;
}

@end