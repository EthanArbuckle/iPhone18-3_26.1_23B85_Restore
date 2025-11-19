@interface WiFiUsageSessionPingPongStats
- (WiFiUsageSessionPingPongStats)initWithPingPongSequence:(id)a3;
@end

@implementation WiFiUsageSessionPingPongStats

- (WiFiUsageSessionPingPongStats)initWithPingPongSequence:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WiFiUsageSessionPingPongStats;
  v5 = [(WiFiUsageSessionPingPongStats *)&v20 init];
  v6 = v5;
  if (v5)
  {
    [(WiFiUsageSessionPingPongStats *)v5 setSequence:v4];
    -[WiFiUsageSessionPingPongStats setPingPongNth:](v6, "setPingPongNth:", [v4 count] - 2);
    v7 = [v4 count];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF = 'Low RSSI'"];
    v9 = [v4 filteredArrayUsingPredicate:v8];
    -[WiFiUsageSessionPingPongStats setPingPongSequenceIsLowRssiOnly:](v6, "setPingPongSequenceIsLowRssiOnly:", v7 == [v9 count]);

    v10 = [v4 count];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF = 'Reassoc'"];
    v12 = [v4 filteredArrayUsingPredicate:v11];
    -[WiFiUsageSessionPingPongStats setPingPongSequenceIsReassocOnly:](v6, "setPingPongSequenceIsReassocOnly:", v10 == [v12 count]);

    v13 = [v4 count];
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF = 'Low RSSI' OR SELF = 'Reassoc'"];
    v15 = [v4 filteredArrayUsingPredicate:v14];
    -[WiFiUsageSessionPingPongStats setPingPongSequenceIsReassocOrLowRSSIOnly:](v6, "setPingPongSequenceIsReassocOrLowRSSIOnly:", v13 == [v15 count]);

    v16 = @"NO";
    if (v6->_pingPongSequenceIsLowRssiOnly)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (v6->_pingPongSequenceIsReassocOnly)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    if (v6->_pingPongSequenceIsReassocOrLowRSSIOnly)
    {
      v16 = @"YES";
    }

    NSLog(&cfstr_SPingpongseque.isa, "[WiFiUsageSessionPingPongStats initWithPingPongSequence:]", v6->_sequence, v6->_pingPongNth, v17, v18, v16);
  }

  return v6;
}

@end