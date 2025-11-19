@interface PLAggregateState
+ (id)stateWithSubstateIndices:(id)a3;
- (PLAggregateState)init;
- (PLAggregateState)initWithSubstateIndices:(id)a3;
- (void)dealloc;
- (void)incrementCount;
- (void)resetStats;
- (void)setTime:(id)a3 energy:(id)a4 energyAbsolute:(id)a5 energyAbsoluteNet:(id)a6 energyPassedChargeNet:(id)a7 energyChargeAccumNet:(id)a8 energyRaw:(id)a9;
- (void)updateCompositeStateWithBaseStates:(id)a3;
@end

@implementation PLAggregateState

- (void)resetStats
{
  [(PLAggregateState *)self setTime:&off_13AF8 energy:&off_13AF8 energyAbsolute:&off_13AF8 energyAbsoluteNet:&off_13AF8 energyPassedChargeNet:&off_13AF8 energyChargeAccumNet:&off_13AF8 energyRaw:&off_13AF8];

  [(PLAggregateState *)self setCount:&off_13AF8];
}

- (void)incrementCount
{
  v3 = [NSNumber numberWithInteger:[(NSNumber *)[(PLAggregateState *)self count] integerValue]+ 1];

  [(PLAggregateState *)self setCount:v3];
}

- (PLAggregateState)init
{
  v5.receiver = self;
  v5.super_class = PLAggregateState;
  v2 = [(PLAggregateState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLAggregateState *)v2 resetStats];
    [(PLAggregateState *)v3 setCompositeTime:&off_13AF8];
  }

  return v3;
}

- (PLAggregateState)initWithSubstateIndices:(id)a3
{
  v7.receiver = self;
  v7.super_class = PLAggregateState;
  v4 = [(PLAggregateState *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PLAggregateState *)v4 setTime:&off_13AF8];
    [(PLAggregateState *)v5 setEnergy:&off_13AF8];
    [(PLAggregateState *)v5 setEnergyAbsolute:&off_13AF8];
    [(PLAggregateState *)v5 setEnergyAbsoluteNet:&off_13AF8];
    [(PLAggregateState *)v5 setEnergyPassedChargeNet:&off_13AF8];
    [(PLAggregateState *)v5 setEnergyChargeAccumNet:&off_13AF8];
    [(PLAggregateState *)v5 setEnergyRaw:&off_13AF8];
    [(PLAggregateState *)v5 setCount:&off_13AF8];
    [(PLAggregateState *)v5 setSubstateIndices:a3];
    [(PLAggregateState *)v5 setCompositeTime:&off_13AF8];
  }

  return v5;
}

+ (id)stateWithSubstateIndices:(id)a3
{
  v3 = [[PLAggregateState alloc] initWithSubstateIndices:a3];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLAggregateState;
  [(PLAggregateState *)&v3 dealloc];
}

- (void)setTime:(id)a3 energy:(id)a4 energyAbsolute:(id)a5 energyAbsoluteNet:(id)a6 energyPassedChargeNet:(id)a7 energyChargeAccumNet:(id)a8 energyRaw:(id)a9
{
  [(PLAggregateState *)self setTime:a3];
  [(PLAggregateState *)self setEnergy:a4];
  [(PLAggregateState *)self setEnergyAbsolute:a5];
  [(PLAggregateState *)self setEnergyRaw:a9];
  [(PLAggregateState *)self setEnergyAbsoluteNet:a6];
  [(PLAggregateState *)self setEnergyPassedChargeNet:a7];

  [(PLAggregateState *)self setEnergyChargeAccumNet:a8];
}

- (void)updateCompositeStateWithBaseStates:(id)a3
{
  [(PLAggregateState *)self setTime:&off_13AF8 energy:&off_13AF8 energyAbsolute:&off_13AF8 energyAbsoluteNet:&off_13AF8 energyPassedChargeNet:&off_13AF8 energyChargeAccumNet:&off_13AF8 energyRaw:&off_13AF8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(PLAggregateState *)self substateIndices];
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        [(NSNumber *)[(PLAggregateState *)self time] doubleValue];
        v12 = v11;
        [objc_msgSend(objc_msgSend(a3 objectAtIndex:{objc_msgSend(v10, "integerValue")), "time"), "doubleValue"}];
        [(PLAggregateState *)self setTime:[NSNumber numberWithDouble:v12 + v13]];
        [(NSNumber *)[(PLAggregateState *)self energy] doubleValue];
        v15 = v14;
        [objc_msgSend(objc_msgSend(a3 objectAtIndex:{objc_msgSend(v10, "integerValue")), "energy"), "doubleValue"}];
        [(PLAggregateState *)self setEnergy:[NSNumber numberWithDouble:v15 + v16]];
        [(NSNumber *)[(PLAggregateState *)self energyAbsolute] doubleValue];
        v18 = v17;
        [objc_msgSend(objc_msgSend(a3 objectAtIndex:{objc_msgSend(v10, "integerValue")), "energyAbsolute"), "doubleValue"}];
        [(PLAggregateState *)self setEnergyAbsolute:[NSNumber numberWithDouble:v18 + v19]];
        [(NSNumber *)[(PLAggregateState *)self energyAbsoluteNet] doubleValue];
        v21 = v20;
        [objc_msgSend(objc_msgSend(a3 objectAtIndex:{objc_msgSend(v10, "integerValue")), "energyAbsoluteNet"), "doubleValue"}];
        [(PLAggregateState *)self setEnergyAbsoluteNet:[NSNumber numberWithDouble:v21 + v22]];
        [(NSNumber *)[(PLAggregateState *)self energyPassedChargeNet] doubleValue];
        v24 = v23;
        [objc_msgSend(objc_msgSend(a3 objectAtIndex:{objc_msgSend(v10, "integerValue")), "energyPassedChargeNet"), "doubleValue"}];
        [(PLAggregateState *)self setEnergyPassedChargeNet:[NSNumber numberWithDouble:v24 + v25]];
        [(NSNumber *)[(PLAggregateState *)self energyChargeAccumNet] doubleValue];
        v27 = v26;
        [objc_msgSend(objc_msgSend(a3 objectAtIndex:{objc_msgSend(v10, "integerValue")), "energyChargeAccumNet"), "doubleValue"}];
        [(PLAggregateState *)self setEnergyChargeAccumNet:[NSNumber numberWithDouble:v27 + v28]];
        [(NSNumber *)[(PLAggregateState *)self energyRaw] doubleValue];
        v30 = v29;
        [objc_msgSend(objc_msgSend(a3 objectAtIndex:{objc_msgSend(v10, "integerValue")), "energyRaw"), "doubleValue"}];
        [(PLAggregateState *)self setEnergyRaw:[NSNumber numberWithDouble:v30 + v31]];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  [(NSNumber *)[(PLAggregateState *)self compositeTime] doubleValue];
  v33 = v32;
  [(NSNumber *)[(PLAggregateState *)self time] doubleValue];
  [(PLAggregateState *)self setCompositeTime:[NSNumber numberWithDouble:v33 + v34]];
}

@end