@interface PLCoreDuetEvent
- (id)description;
@end

@implementation PLCoreDuetEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  bundleID = [(PLCoreDuetEvent *)self bundleID];
  processName = [(PLCoreDuetEvent *)self processName];
  eventIntervals = [(PLCoreDuetEvent *)self eventIntervals];
  childBundleIDToWeight = [(PLCoreDuetEvent *)self childBundleIDToWeight];
  v8 = [v3 stringWithFormat:@"bundleID=%@, processName=%@, eventIntervals=%@, childBundleIDToWeight=%@", bundleID, processName, eventIntervals, childBundleIDToWeight];

  return v8;
}

@end