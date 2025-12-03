@interface CAMediaTimingFunction(RCPEasingFunction)
- (double)rcp_solveForDelta:()RCPEasingFunction withSteps:step:;
- (double)rcp_solveForStart:()RCPEasingFunction end:at:;
- (id)rcp_functionWithLinearEnd;
@end

@implementation CAMediaTimingFunction(RCPEasingFunction)

- (double)rcp_solveForStart:()RCPEasingFunction end:at:
{
  v7 = a2;
  *&a2 = a6;
  [self _solveForInput:a2];
  return v7 + (a4 - v7) * v8;
}

- (double)rcp_solveForDelta:()RCPEasingFunction withSteps:step:
{
  *&a6 = a9 / a8;
  v12 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
  v14 = (a9 + 1.0) / a8;
  [self rcp_solveForStart:*MEMORY[0x277CBF348] end:v13 at:{a2, a3, a6}];
  v16 = v15;
  *&v17 = v14;
  [self rcp_solveForStart:v12 end:v13 at:{a2, a3, v17}];
  return v18 - v16;
}

- (id)rcp_functionWithLinearEnd
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  [self getControlPointAtIndex:1 values:v7];
  LODWORD(v2) = HIDWORD(v7[0]);
  LODWORD(v1) = v7[0];
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  v5 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v1 :v2 :v3 :v4];

  return v5;
}

@end