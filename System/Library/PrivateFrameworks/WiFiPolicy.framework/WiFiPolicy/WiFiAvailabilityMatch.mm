@interface WiFiAvailabilityMatch
+ (id)matchWithNetwork:(id)network scannedNetwork:(id)scannedNetwork;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAvailabilityMatch:(id)match;
- (BOOL)isEqualToScannedNetwork:(id)network;
- (WiFiAvailabilityMatch)initWithNetwork:(id)network scannedNetwork:(id)scannedNetwork;
- (id)description;
- (unint64_t)hash;
@end

@implementation WiFiAvailabilityMatch

- (unint64_t)hash
{
  sSID = [(WiFiAvailabilityMatch *)self SSID];
  v3 = [sSID hash];

  return v3;
}

+ (id)matchWithNetwork:(id)network scannedNetwork:(id)scannedNetwork
{
  scannedNetworkCopy = scannedNetwork;
  networkCopy = network;
  [networkCopy setMatched:1];
  v7 = [[WiFiAvailabilityMatch alloc] initWithNetwork:networkCopy scannedNetwork:scannedNetworkCopy];

  return v7;
}

- (BOOL)isEqualToScannedNetwork:(id)network
{
  if (!network)
  {
    return 0;
  }

  sSID = [network SSID];
  network = [(WiFiAvailabilityMatch *)self network];
  sSID2 = [network SSID];
  v7 = [sSID isEqualToString:sSID2];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WiFiAvailabilityMatch *)self isEqualToAvailabilityMatch:equalCopy];

  return v5;
}

- (BOOL)isEqualToAvailabilityMatch:(id)match
{
  matchCopy = match;
  sSID = [(WiFiAvailabilityMatch *)self SSID];
  sSID2 = [matchCopy SSID];
  if ([sSID isEqualToString:sSID2])
  {
    network = [(WiFiAvailabilityMatch *)self network];
    source = [network source];
    network2 = [matchCopy network];
    v10 = source == [network2 source];
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

  network = [(WiFiAvailabilityMatch *)self network];
  [v6 appendFormat:@"Source: %ld ", objc_msgSend(network, "source")];

  sSID = [(WiFiAvailabilityMatch *)self SSID];
  [v6 appendFormat:@"SSID: %@ ", sSID];

  scannedNetwork = [(WiFiAvailabilityMatch *)self scannedNetwork];
  if (scannedNetwork)
  {
    scannedNetwork2 = [(WiFiAvailabilityMatch *)self scannedNetwork];
    [v6 appendFormat:@"RSSI: %ld ", objc_msgSend(scannedNetwork2, "RSSI")];
  }

  else
  {
    [v6 appendFormat:@"RSSI: %ld ", 0];
  }

  matchedAt = [(WiFiAvailabilityMatch *)self matchedAt];
  [v6 appendFormat:@"MatchedAt: %@ ", matchedAt];

  if ([(WiFiAvailabilityMatch *)self unwantedNetworkName])
  {
    [v6 appendString:@"unwantedNetworkName: 1"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (WiFiAvailabilityMatch)initWithNetwork:(id)network scannedNetwork:(id)scannedNetwork
{
  networkCopy = network;
  scannedNetworkCopy = scannedNetwork;
  v29.receiver = self;
  v29.super_class = WiFiAvailabilityMatch;
  v9 = [(WiFiAvailabilityMatch *)&v29 init];
  v10 = v9;
  if (!v9)
  {
    matchedAt = 0;
    goto LABEL_19;
  }

  if (!networkCopy)
  {
    NSLog(&cfstr_SMissingCandid.isa, "[WiFiAvailabilityMatch initWithNetwork:scannedNetwork:]");
    matchedAt = v10;
    v10 = 0;
    goto LABEL_19;
  }

  objc_storeStrong(&v9->_network, network);
  objc_storeStrong(&v10->_scannedNetwork, scannedNetwork);
  sSID = [(WiFiCandidateNetwork *)v10->_network SSID];
  if (sSID)
  {
    v12 = sSID;
    sSID2 = [(WiFiCandidateNetwork *)v10->_network SSID];
    v14 = [sSID2 length];

    if (v14)
    {
      network = v10->_network;
LABEL_9:
      sSID3 = [(WiFiCandidateNetwork *)network SSID];
      v21 = [sSID3 copy];
      SSID = v10->_SSID;
      v10->_SSID = v21;
LABEL_10:

      goto LABEL_12;
    }
  }

  sSID4 = [(WiFiScannedNetwork *)v10->_scannedNetwork SSID];
  if (sSID4)
  {
    v17 = sSID4;
    sSID5 = [(WiFiScannedNetwork *)v10->_scannedNetwork SSID];
    v19 = [sSID5 length];

    if (v19)
    {
      network = v10->_scannedNetwork;
      goto LABEL_9;
    }
  }

  if (!v10->_SSID)
  {
    sSID3 = [(WiFiScannedNetwork *)v10->_scannedNetwork scanProperties];
    SSID = [sSID3 objectForKey:@"SSID_STR"];
    v27 = [SSID copy];
    v28 = v10->_SSID;
    v10->_SSID = v27;

    goto LABEL_10;
  }

LABEL_12:
  if ([networkCopy source] == 1)
  {
    v23 = 2;
LABEL_17:
    v10->_priority = v23;
    goto LABEL_18;
  }

  if ([networkCopy source] != 2)
  {
    v23 = 1;
    goto LABEL_17;
  }

  v10->_priority = 0;
LABEL_18:
  date = [MEMORY[0x277CBEAA8] date];
  matchedAt = v10->_matchedAt;
  v10->_matchedAt = date;
LABEL_19:

  return v10;
}

@end