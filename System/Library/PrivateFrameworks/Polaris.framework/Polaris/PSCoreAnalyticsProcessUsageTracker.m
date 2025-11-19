@interface PSCoreAnalyticsProcessUsageTracker
- (BOOL)okToSendCAEvents;
- (PSCoreAnalyticsProcessUsageTracker)init;
- (PSCoreAnalyticsProcessUsageTracker)initWithDelegate:(id)a3;
@end

@implementation PSCoreAnalyticsProcessUsageTracker

- (PSCoreAnalyticsProcessUsageTracker)init
{
  v3 = [PSCoreAnalyticsProcessUsageTracker alloc];
  v4 = objc_opt_new();
  v5 = [(PSCoreAnalyticsProcessUsageTracker *)v3 initWithDelegate:v4];

  return v5;
}

- (PSCoreAnalyticsProcessUsageTracker)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PSCoreAnalyticsProcessUsageTracker;
  v5 = [(PSCoreAnalyticsProcessUsageTracker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PSCoreAnalyticsProcessUsageTracker *)v5 setMaxPhysicalFootprint:115343360];
    [(PSCoreAnalyticsProcessUsageTracker *)v6 setHysteresisMargin:10485760];
    [(PSCoreAnalyticsProcessUsageTracker *)v6 setAllowedPhysicalFootprint:[(PSCoreAnalyticsProcessUsageTracker *)v6 maxPhysicalFootprint]];
    [(PSCoreAnalyticsProcessUsageTracker *)v6 setDelegate:v4];
  }

  return v6;
}

- (BOOL)okToSendCAEvents
{
  v3 = [(PSCoreAnalyticsProcessUsageTracker *)self delegate];
  v4 = [v3 readProcessUsage];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PSCoreAnalyticsProcessUsageTracker *)self delegate];
  v6 = [v5 physicalFootprint];
  v7 = [(PSCoreAnalyticsProcessUsageTracker *)self allowedPhysicalFootprint];

  v8 = [(PSCoreAnalyticsProcessUsageTracker *)self maxPhysicalFootprint];
  v9 = v6 <= v7;
  if (v6 > v7)
  {
    v8 -= [(PSCoreAnalyticsProcessUsageTracker *)self hysteresisMargin];
  }

  [(PSCoreAnalyticsProcessUsageTracker *)self setAllowedPhysicalFootprint:v8];
  v10 = [(PSCoreAnalyticsProcessUsageTracker *)self delegate];
  [v10 didCheckIfOKToSendCAEventsWithResult:v6 <= v7];

  return v9;
}

@end