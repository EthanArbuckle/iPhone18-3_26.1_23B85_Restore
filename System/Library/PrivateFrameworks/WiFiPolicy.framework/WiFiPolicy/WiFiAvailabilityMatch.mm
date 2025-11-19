@interface WiFiAvailabilityMatch
+ (id)matchWithNetwork:(id)a3 scannedNetwork:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAvailabilityMatch:(id)a3;
- (BOOL)isEqualToScannedNetwork:(id)a3;
- (WiFiAvailabilityMatch)initWithNetwork:(id)a3 scannedNetwork:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation WiFiAvailabilityMatch

- (unint64_t)hash
{
  v2 = [(WiFiAvailabilityMatch *)self SSID];
  v3 = [v2 hash];

  return v3;
}

+ (id)matchWithNetwork:(id)a3 scannedNetwork:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setMatched:1];
  v7 = [[WiFiAvailabilityMatch alloc] initWithNetwork:v6 scannedNetwork:v5];

  return v7;
}

- (BOOL)isEqualToScannedNetwork:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 SSID];
  v5 = [(WiFiAvailabilityMatch *)self network];
  v6 = [v5 SSID];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WiFiAvailabilityMatch *)self isEqualToAvailabilityMatch:v4];

  return v5;
}

- (BOOL)isEqualToAvailabilityMatch:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAvailabilityMatch *)self SSID];
  v6 = [v4 SSID];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(WiFiAvailabilityMatch *)self network];
    v8 = [v7 source];
    v9 = [v4 network];
    v10 = v8 == [v9 source];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  v7 = [(WiFiAvailabilityMatch *)self network];
  [v6 appendFormat:@"Source: %ld ", objc_msgSend(v7, "source")];

  v8 = [(WiFiAvailabilityMatch *)self SSID];
  [v6 appendFormat:@"SSID: %@ ", v8];

  v9 = [(WiFiAvailabilityMatch *)self scannedNetwork];
  if (v9)
  {
    v10 = [(WiFiAvailabilityMatch *)self scannedNetwork];
    [v6 appendFormat:@"RSSI: %ld ", objc_msgSend(v10, "RSSI")];
  }

  else
  {
    [v6 appendFormat:@"RSSI: %ld ", 0];
  }

  v11 = [(WiFiAvailabilityMatch *)self matchedAt];
  [v6 appendFormat:@"MatchedAt: %@ ", v11];

  if ([(WiFiAvailabilityMatch *)self unwantedNetworkName])
  {
    [v6 appendString:@"unwantedNetworkName: 1"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (WiFiAvailabilityMatch)initWithNetwork:(id)a3 scannedNetwork:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = WiFiAvailabilityMatch;
  v9 = [(WiFiAvailabilityMatch *)&v29 init];
  v10 = v9;
  if (!v9)
  {
    matchedAt = 0;
    goto LABEL_19;
  }

  if (!v7)
  {
    NSLog(&cfstr_SMissingCandid.isa, "[WiFiAvailabilityMatch initWithNetwork:scannedNetwork:]");
    matchedAt = v10;
    v10 = 0;
    goto LABEL_19;
  }

  objc_storeStrong(&v9->_network, a3);
  objc_storeStrong(&v10->_scannedNetwork, a4);
  v11 = [(WiFiCandidateNetwork *)v10->_network SSID];
  if (v11)
  {
    v12 = v11;
    v13 = [(WiFiCandidateNetwork *)v10->_network SSID];
    v14 = [v13 length];

    if (v14)
    {
      network = v10->_network;
LABEL_9:
      v20 = [(WiFiCandidateNetwork *)network SSID];
      v21 = [v20 copy];
      SSID = v10->_SSID;
      v10->_SSID = v21;
LABEL_10:

      goto LABEL_12;
    }
  }

  v16 = [(WiFiScannedNetwork *)v10->_scannedNetwork SSID];
  if (v16)
  {
    v17 = v16;
    v18 = [(WiFiScannedNetwork *)v10->_scannedNetwork SSID];
    v19 = [v18 length];

    if (v19)
    {
      network = v10->_scannedNetwork;
      goto LABEL_9;
    }
  }

  if (!v10->_SSID)
  {
    v20 = [(WiFiScannedNetwork *)v10->_scannedNetwork scanProperties];
    SSID = [v20 objectForKey:@"SSID_STR"];
    v27 = [SSID copy];
    v28 = v10->_SSID;
    v10->_SSID = v27;

    goto LABEL_10;
  }

LABEL_12:
  if ([v7 source] == 1)
  {
    v23 = 2;
LABEL_17:
    v10->_priority = v23;
    goto LABEL_18;
  }

  if ([v7 source] != 2)
  {
    v23 = 1;
    goto LABEL_17;
  }

  v10->_priority = 0;
LABEL_18:
  v24 = [MEMORY[0x277CBEAA8] date];
  matchedAt = v10->_matchedAt;
  v10->_matchedAt = v24;
LABEL_19:

  return v10;
}

@end