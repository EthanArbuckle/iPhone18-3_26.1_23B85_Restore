@interface VMUPeakFootprintAnalyzer
- (id)analysisSummaryWithError:(id *)error;
@end

@implementation VMUPeakFootprintAnalyzer

- (id)analysisSummaryWithError:(id *)error
{
  physicalFootprint = [(VMUProcessObjectGraph *)self->super._graph physicalFootprint];
  physicalFootprintPeak = [(VMUProcessObjectGraph *)self->super._graph physicalFootprintPeak];
  v6 = objc_opt_new();
  v7 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Physical footprint" numericalValue:physicalFootprint objectValue:0 fieldType:2];
  [v6 addObject:v7];
  v8 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Physical footprint (peak)" numericalValue:physicalFootprintPeak objectValue:0 fieldType:2];

  [v6 addObject:v8];
  v9 = physicalFootprintPeak / physicalFootprint;
  if (v9 > 1.25)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Peak physical footprint was %.2f times higher than current -- past memory use was much higher. This can be analyzed with the Allocations instrument", v9];
    v11 = [VMUAnalyzerSummaryField alloc];
    v12 = [(VMUAnalyzerSummaryField *)v11 initWithKey:kVMUAnalysisSummaryKey[0] numericalValue:0 objectValue:v10 fieldType:0];

    [v6 addObject:v12];
    v8 = v12;
  }

  return v6;
}

@end