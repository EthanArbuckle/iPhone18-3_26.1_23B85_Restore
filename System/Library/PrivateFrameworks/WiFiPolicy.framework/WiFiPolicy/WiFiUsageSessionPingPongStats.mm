@interface WiFiUsageSessionPingPongStats
- (WiFiUsageSessionPingPongStats)initWithPingPongSequence:(id)sequence;
@end

@implementation WiFiUsageSessionPingPongStats

- (WiFiUsageSessionPingPongStats)initWithPingPongSequence:(id)sequence
{
  sequenceCopy = sequence;
  v20.receiver = self;
  v20.super_class = WiFiUsageSessionPingPongStats;
  v5 = [(WiFiUsageSessionPingPongStats *)&v20 init];
  v6 = v5;
  if (v5)
  {
    [(WiFiUsageSessionPingPongStats *)v5 setSequence:sequenceCopy];
    -[WiFiUsageSessionPingPongStats setPingPongNth:](v6, "setPingPongNth:", [sequenceCopy count] - 2);
    v7 = [sequenceCopy count];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF = 'Low RSSI'"];
    v9 = [sequenceCopy filteredArrayUsingPredicate:v8];
    -[WiFiUsageSessionPingPongStats setPingPongSequenceIsLowRssiOnly:](v6, "setPingPongSequenceIsLowRssiOnly:", v7 == [v9 count]);

    v10 = [sequenceCopy count];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF = 'Reassoc'"];
    v12 = [sequenceCopy filteredArrayUsingPredicate:v11];
    -[WiFiUsageSessionPingPongStats setPingPongSequenceIsReassocOnly:](v6, "setPingPongSequenceIsReassocOnly:", v10 == [v12 count]);

    v13 = [sequenceCopy count];
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF = 'Low RSSI' OR SELF = 'Reassoc'"];
    v15 = [sequenceCopy filteredArrayUsingPredicate:v14];
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