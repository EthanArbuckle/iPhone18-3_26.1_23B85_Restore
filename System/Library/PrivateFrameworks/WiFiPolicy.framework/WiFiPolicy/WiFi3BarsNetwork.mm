@interface WiFi3BarsNetwork
- (BOOL)containsAccessPointMatchingBSSIDs:(id)a3;
- (NSSet)accessPoints;
- (NSString)description;
- (WiFi3BarsNetwork)initWithCoder:(id)a3;
- (WiFi3BarsNetwork)initWithNetwork:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFi3BarsNetwork

- (WiFi3BarsNetwork)initWithNetwork:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v28.receiver = self;
  v28.super_class = WiFi3BarsNetwork;
  v6 = [(WiFi3BarsNetwork *)&v28 init];
  objc_storeStrong(&v6->_network, a3);
  v7 = [v5 remoteIdentifier];
  uniqueIdentifier = v6->_uniqueIdentifier;
  v6->_uniqueIdentifier = v7;

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

  v6->_type = [v5 type];
  v6->_venueGroup = [v5 venueGroup];
  v6->_venueType = [v5 venueType];
  v10 = [(TBNetwork *)v6->_network popularityScore];

  if (v10)
  {
    v11 = [(TBNetwork *)v6->_network popularityScore];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [v5 accessPoints];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(v12);
          }

          v18 = [*(*(&v24 + 1) + 8 * i) popularityScore];
          v15 += [v18 score];
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v11 = [TBPopularityScore popularityScoreWithValue:v15];
  }

  popularityScore = v6->_popularityScore;
  v6->_popularityScore = v11;

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
  v2 = [(WiFi3BarsNetwork *)self network];
  v3 = [v2 accessPoints];

  return v3;
}

- (BOOL)containsAccessPointMatchingBSSIDs:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WiFi3BarsNetwork *)self network];
  v6 = [v5 accessPointCount];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      v26 = self;
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
          v15 = [v14 accessPoints];

          v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v29 + 1) + 8 * j) BSSID];
                v21 = [v13 isEqualToString:v20];

                if (v21)
                {

                  v22 = 1;
                  v7 = v27;
                  goto LABEL_20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v11 = v25;
          self = v26;
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
    v4 = v28;
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

  v7 = [(WiFi3BarsNetwork *)self SSID];
  [v6 appendFormat:@"SSID: %@ ", v7];

  v8 = [(WiFi3BarsNetwork *)self network];
  [v6 appendFormat:@"APS: %lu ", objc_msgSend(v8, "accessPointCount")];

  v9 = [(WiFi3BarsNetwork *)self password];
  v10 = @"YES";
  if (!v9)
  {
    v10 = @"NO";
  }

  [v6 appendFormat:@"Password: %@ ", v10];

  v11 = [(WiFi3BarsNetwork *)self uniqueIdentifier];
  [v6 appendFormat:@"Identifier: %@ ", v11];

  v12 = [(WiFi3BarsNetwork *)self popularityScore];
  [v6 appendFormat:@"Score: %lu", objc_msgSend(v12, "score")];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  password = self->password;
  v5 = a3;
  [v5 encodeObject:password forKey:@"password"];
  [v5 encodeObject:self->_attributes forKey:@"_attributes"];
  [v5 encodeObject:self->_qualityScore forKey:@"_qualityScore"];
  [v5 encodeObject:self->_popularityScore forKey:@"_popularityScore"];
  [v5 encodeBool:self->matched forKey:@"matched"];
  [v5 encodeInteger:self->_type forKey:@"_type"];
  [v5 encodeInteger:self->_venueGroup forKey:@"_venueGroup"];
  [v5 encodeInt32:self->_venueType forKey:@"_venueType"];
  [v5 encodeObject:self->_uniqueIdentifier forKey:@"_uniqueIdentifier"];
  [v5 encodeObject:self->_SSID forKey:@"_SSID"];
  [v5 encodeBool:self->_unwantedNetworkName forKey:@"_unwantedNetworkName"];
}

- (WiFi3BarsNetwork)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = WiFi3BarsNetwork;
  v3 = a3;
  v4 = [(WiFi3BarsNetwork *)&v24 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
  password = v4->password;
  v4->password = v5;

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0, v24.receiver, v24.super_class}];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"_attributes"];
  attributes = v4->_attributes;
  v4->_attributes = v10;

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"_qualityScore"];
  qualityScore = v4->_qualityScore;
  v4->_qualityScore = v12;

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [v3 decodeObjectOfClasses:v16 forKey:@"_popularityScore"];
  popularityScore = v4->_popularityScore;
  v4->_popularityScore = v17;

  v4->matched = [v3 decodeBoolForKey:@"matched"];
  v4->_type = [v3 decodeIntForKey:@"_type"];
  v4->_venueGroup = [v3 decodeIntForKey:@"_venueGroup"];
  v4->_venueType = [v3 decodeInt32ForKey:@"_venueType"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueIdentifier"];
  uniqueIdentifier = v4->_uniqueIdentifier;
  v4->_uniqueIdentifier = v19;

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
  SSID = v4->_SSID;
  v4->_SSID = v21;

  LOBYTE(v16) = [v3 decodeBoolForKey:@"_unwantedNetworkName"];
  v4->_unwantedNetworkName = v16;
  return v4;
}

- (void)containsAccessPointMatchingBSSIDs:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 network];
  NSLog(&cfstr_SNetworkContai.isa, "[WiFi3BarsNetwork containsAccessPointMatchingBSSIDs:]", v1);
}

@end