@interface WiFi3BarsNetwork
- (BOOL)containsAccessPointMatchingBSSIDs:(id)ds;
- (NSSet)accessPoints;
- (NSString)description;
- (WiFi3BarsNetwork)initWithCoder:(id)coder;
- (WiFi3BarsNetwork)initWithNetwork:(id)network;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFi3BarsNetwork

- (WiFi3BarsNetwork)initWithNetwork:(id)network
{
  v30 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v28.receiver = self;
  v28.super_class = WiFi3BarsNetwork;
  v6 = [(WiFi3BarsNetwork *)&v28 init];
  objc_storeStrong(&v6->_network, network);
  remoteIdentifier = [networkCopy remoteIdentifier];
  uniqueIdentifier = v6->_uniqueIdentifier;
  v6->_uniqueIdentifier = remoteIdentifier;

  v9 = [MEMORY[0x277CBEB58] set];
  if ([(TBNetwork *)v6->_network isMoving])
  {
    [v9 addObject:&unk_2848B9B18];
  }

  if ([(TBNetwork *)v6->_network isCaptive])
  {
    [v9 addObject:&unk_2848B9B30];
  }

  if ([(TBNetwork *)v6->_network isSuspicious])
  {
    [v9 addObject:&unk_2848B9B48];
  }

  if ([(TBNetwork *)v6->_network isPublic])
  {
    [v9 addObject:&unk_2848B9B60];
  }

  if ([(TBNetwork *)v6->_network isLowQuality])
  {
    [v9 addObject:&unk_2848B9B78];
  }

  v6->_type = [networkCopy type];
  v6->_venueGroup = [networkCopy venueGroup];
  v6->_venueType = [networkCopy venueType];
  popularityScore = [(TBNetwork *)v6->_network popularityScore];

  if (popularityScore)
  {
    popularityScore2 = [(TBNetwork *)v6->_network popularityScore];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    accessPoints = [networkCopy accessPoints];
    v13 = [accessPoints countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(accessPoints);
          }

          popularityScore3 = [*(*(&v24 + 1) + 8 * i) popularityScore];
          v15 += [popularityScore3 score];
        }

        v14 = [accessPoints countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    popularityScore2 = [TBPopularityScore popularityScoreWithValue:v15];
  }

  popularityScore = v6->_popularityScore;
  v6->_popularityScore = popularityScore2;

  if ([v9 count])
  {
    v20 = [MEMORY[0x277CBEB98] setWithSet:v9];
    attributes = v6->_attributes;
    v6->_attributes = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSSet)accessPoints
{
  network = [(WiFi3BarsNetwork *)self network];
  accessPoints = [network accessPoints];

  return accessPoints;
}

- (BOOL)containsAccessPointMatchingBSSIDs:(id)ds
{
  v39 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  network = [(WiFi3BarsNetwork *)self network];
  accessPointCount = [network accessPointCount];

  if (accessPointCount)
  {
    v7 = objc_autoreleasePoolPush();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = dsCopy;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      selfCopy = self;
      v27 = v7;
      v25 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [(WiFi3BarsNetwork *)self network:v25];
          accessPoints = [v14 accessPoints];

          v16 = [accessPoints countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(accessPoints);
                }

                bSSID = [*(*(&v29 + 1) + 8 * j) BSSID];
                v21 = [v13 isEqualToString:bSSID];

                if (v21)
                {

                  v22 = 1;
                  v7 = v27;
                  goto LABEL_20;
                }
              }

              v17 = [accessPoints countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v11 = v25;
          self = selfCopy;
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
        v22 = 0;
        v7 = v27;
      }

      while (v10);
    }

    else
    {
      v22 = 0;
    }

LABEL_20:

    objc_autoreleasePoolPop(v7);
    dsCopy = v28;
  }

  else
  {
    [WiFi3BarsNetwork containsAccessPointMatchingBSSIDs:?];
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  sSID = [(WiFi3BarsNetwork *)self SSID];
  [v6 appendFormat:@"SSID: %@ ", sSID];

  network = [(WiFi3BarsNetwork *)self network];
  [v6 appendFormat:@"APS: %lu ", objc_msgSend(network, "accessPointCount")];

  password = [(WiFi3BarsNetwork *)self password];
  v10 = @"YES";
  if (!password)
  {
    v10 = @"NO";
  }

  [v6 appendFormat:@"Password: %@ ", v10];

  uniqueIdentifier = [(WiFi3BarsNetwork *)self uniqueIdentifier];
  [v6 appendFormat:@"Identifier: %@ ", uniqueIdentifier];

  popularityScore = [(WiFi3BarsNetwork *)self popularityScore];
  [v6 appendFormat:@"Score: %lu", objc_msgSend(popularityScore, "score")];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  password = self->password;
  coderCopy = coder;
  [coderCopy encodeObject:password forKey:@"password"];
  [coderCopy encodeObject:self->_attributes forKey:@"_attributes"];
  [coderCopy encodeObject:self->_qualityScore forKey:@"_qualityScore"];
  [coderCopy encodeObject:self->_popularityScore forKey:@"_popularityScore"];
  [coderCopy encodeBool:self->matched forKey:@"matched"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeInteger:self->_venueGroup forKey:@"_venueGroup"];
  [coderCopy encodeInt32:self->_venueType forKey:@"_venueType"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"_uniqueIdentifier"];
  [coderCopy encodeObject:self->_SSID forKey:@"_SSID"];
  [coderCopy encodeBool:self->_unwantedNetworkName forKey:@"_unwantedNetworkName"];
}

- (WiFi3BarsNetwork)initWithCoder:(id)coder
{
  v24.receiver = self;
  v24.super_class = WiFi3BarsNetwork;
  coderCopy = coder;
  v4 = [(WiFi3BarsNetwork *)&v24 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
  password = v4->password;
  v4->password = v5;

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0, v24.receiver, v24.super_class}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_attributes"];
  attributes = v4->_attributes;
  v4->_attributes = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_qualityScore"];
  qualityScore = v4->_qualityScore;
  v4->_qualityScore = v12;

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_popularityScore"];
  popularityScore = v4->_popularityScore;
  v4->_popularityScore = v17;

  v4->matched = [coderCopy decodeBoolForKey:@"matched"];
  v4->_type = [coderCopy decodeIntForKey:@"_type"];
  v4->_venueGroup = [coderCopy decodeIntForKey:@"_venueGroup"];
  v4->_venueType = [coderCopy decodeInt32ForKey:@"_venueType"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueIdentifier"];
  uniqueIdentifier = v4->_uniqueIdentifier;
  v4->_uniqueIdentifier = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
  SSID = v4->_SSID;
  v4->_SSID = v21;

  LOBYTE(v16) = [coderCopy decodeBoolForKey:@"_unwantedNetworkName"];
  v4->_unwantedNetworkName = v16;
  return v4;
}

- (void)containsAccessPointMatchingBSSIDs:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 network];
  NSLog(&cfstr_SNetworkContai.isa, "[WiFi3BarsNetwork containsAccessPointMatchingBSSIDs:]", v1);
}

@end