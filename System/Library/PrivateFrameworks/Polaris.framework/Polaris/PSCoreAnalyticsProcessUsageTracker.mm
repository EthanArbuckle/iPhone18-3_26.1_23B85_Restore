@interface PSCoreAnalyticsProcessUsageTracker
- (BOOL)okToSendCAEvents;
- (PSCoreAnalyticsProcessUsageTracker)init;
- (PSCoreAnalyticsProcessUsageTracker)initWithDelegate:(id)delegate;
@end

@implementation PSCoreAnalyticsProcessUsageTracker

- (PSCoreAnalyticsProcessUsageTracker)init
{
  v3 = [PSCoreAnalyticsProcessUsageTracker alloc];
  v4 = objc_opt_new();
  v5 = [(PSCoreAnalyticsProcessUsageTracker *)v3 initWithDelegate:v4];

  return v5;
}

- (PSCoreAnalyticsProcessUsageTracker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PSCoreAnalyticsProcessUsageTracker;
  v5 = [(PSCoreAnalyticsProcessUsageTracker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PSCoreAnalyticsProcessUsageTracker *)v5 setMaxPhysicalFootprint:115343360];
    [(PSCoreAnalyticsProcessUsageTracker *)v6 setHysteresisMargin:10485760];
    [(PSCoreAnalyticsProcessUsageTracker *)v6 setAllowedPhysicalFootprint:[(PSCoreAnalyticsProcessUsageTracker *)v6 maxPhysicalFootprint]];
    [(PSCoreAnalyticsProcessUsageTracker *)v6 setDelegate:delegateCopy];
  }

  return v6;
}

- (BOOL)okToSendCAEvents
{
  delegate = [(PSCoreAnalyticsProcessUsageTracker *)self delegate];
  readProcessUsage = [delegate readProcessUsage];

  if (!readProcessUsage)
  {
    return 0;
  }

  delegate2 = [(PSCoreAnalyticsProcessUsageTracker *)self delegate];
  physicalFootprint = [delegate2 physicalFootprint];
  allowedPhysicalFootprint = [(PSCoreAnalyticsProcessUsageTracker *)self allowedPhysicalFootprint];

  maxPhysicalFootprint = [(PSCoreAnalyticsProcessUsageTracker *)self maxPhysicalFootprint];
  v9 = physicalFootprint <= allowedPhysicalFootprint;
  if (physicalFootprint > allowedPhysicalFootprint)
  {
    maxPhysicalFootprint -= [(PSCoreAnalyticsProcessUsageTracker *)self hysteresisMargin];
  }

  [(PSCoreAnalyticsProcessUsageTracker *)self setAllowedPhysicalFootprint:maxPhysicalFootprint];
  delegate3 = [(PSCoreAnalyticsProcessUsageTracker *)self delegate];
  [delegate3 didCheckIfOKToSendCAEventsWithResult:physicalFootprint <= allowedPhysicalFootprint];

  return v9;
}

@end