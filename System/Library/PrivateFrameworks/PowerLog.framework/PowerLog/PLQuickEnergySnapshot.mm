@interface PLQuickEnergySnapshot
- (PLQuickEnergySnapshot)initWithEnergies:(double)energies andNetworkEnergy:(double)energy;
- (double)computeEnergyDiff:(id)diff;
- (double)getTotalEnergy;
- (id)description;
@end

@implementation PLQuickEnergySnapshot

- (PLQuickEnergySnapshot)initWithEnergies:(double)energies andNetworkEnergy:(double)energy
{
  v10.receiver = self;
  v10.super_class = PLQuickEnergySnapshot;
  v6 = [(PLQuickEnergySnapshot *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(PLQuickEnergySnapshot *)v6 setCpuEnergy:energies];
    [(PLQuickEnergySnapshot *)v7 setNetworkEnergy:energy];
    date = [MEMORY[0x1E695DF00] date];
    [(PLQuickEnergySnapshot *)v7 setTimestamp:date];
  }

  return v7;
}

- (double)computeEnergyDiff:(id)diff
{
  diffCopy = diff;
  [(PLQuickEnergySnapshot *)self cpuEnergy];
  v6 = v5;
  [diffCopy cpuEnergy];
  v8 = v6 - v7;
  [(PLQuickEnergySnapshot *)self networkEnergy];
  v10 = v8 + v9;
  [diffCopy networkEnergy];
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
  timestamp = [(PLQuickEnergySnapshot *)self timestamp];
  [(PLQuickEnergySnapshot *)self cpuEnergy];
  v6 = v5;
  [(PLQuickEnergySnapshot *)self networkEnergy];
  v8 = [v3 stringWithFormat:@"timestamp=%@, cpuEnergy=%f, networkEnergy=%f", timestamp, v6, v7];

  return v8;
}

@end