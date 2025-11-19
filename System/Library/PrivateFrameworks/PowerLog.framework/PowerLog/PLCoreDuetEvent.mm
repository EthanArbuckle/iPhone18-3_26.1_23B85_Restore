@interface PLCoreDuetEvent
- (id)description;
@end

@implementation PLCoreDuetEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLCoreDuetEvent *)self bundleID];
  v5 = [(PLCoreDuetEvent *)self processName];
  v6 = [(PLCoreDuetEvent *)self eventIntervals];
  v7 = [(PLCoreDuetEvent *)self childBundleIDToWeight];
  v8 = [v3 stringWithFormat:@"bundleID=%@, processName=%@, eventIntervals=%@, childBundleIDToWeight=%@", v4, v5, v6, v7];

  return v8;
}

@end