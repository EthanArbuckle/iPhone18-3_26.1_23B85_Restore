@interface PCSKeyClient
- (PCSKeyClient)initWithName:(id)name values:(id)values dsid:(id)dsid;
- (id)getValues:(id)values;
- (void)updateWithValues:(id)values dsid:(id)dsid;
@end

@implementation PCSKeyClient

- (PCSKeyClient)initWithName:(id)name values:(id)values dsid:(id)dsid
{
  nameCopy = name;
  valuesCopy = values;
  dsidCopy = dsid;
  if (nameCopy)
  {
    v15.receiver = self;
    v15.super_class = PCSKeyClient;
    v11 = [(PCSKeyClient *)&v15 init];
    v12 = v11;
    if (v11)
    {
      [(PCSKeyClient *)v11 setUuid:nameCopy];
      if (valuesCopy)
      {
        [(PCSKeyClient *)v12 updateWithValues:valuesCopy dsid:dsidCopy];
      }

      else
      {
        [(PCSKeyClient *)v12 setIsNewWatch:1];
      }
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)updateWithValues:(id)values dsid:(id)dsid
{
  valuesCopy = values;
  dsidCopy = dsid;
  v7 = [valuesCopy objectForKeyedSubscript:@"lastSeen"];
  [(PCSKeyClient *)self setLastSeen:v7];

  v8 = [valuesCopy objectForKeyedSubscript:@"lastHash"];
  [(PCSKeyClient *)self setLastHash:v8];

  v9 = [valuesCopy objectForKeyedSubscript:@"name"];
  [(PCSKeyClient *)self setName:v9];

  v10 = [valuesCopy objectForKeyedSubscript:@"lastSent"];
  [(PCSKeyClient *)self setLastSent:v10];

  v11 = [valuesCopy objectForKeyedSubscript:@"failures"];
  -[PCSKeyClient setFailures:](self, "setFailures:", [v11 intValue]);

  v12 = [valuesCopy objectForKeyedSubscript:@"numberHandshakes"];
  -[PCSKeyClient setNumberHandshakes:](self, "setNumberHandshakes:", [v12 longValue]);

  v13 = [valuesCopy objectForKeyedSubscript:@"buildVersion"];
  [(PCSKeyClient *)self setBuildVersion:v13];

  v14 = [valuesCopy objectForKeyedSubscript:@"firstSync"];
  [(PCSKeyClient *)self setFirstSync:v14];

  v15 = [valuesCopy objectForKeyedSubscript:@"protocol"];
  -[PCSKeyClient setProtocolVersion:](self, "setProtocolVersion:", [v15 longValue]);

  if (dsidCopy && ([valuesCopy objectForKeyedSubscript:@"dsid"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", dsidCopy), v16, v17))
  {
    v18 = [valuesCopy objectForKeyedSubscript:@"iCDP2"];
    -[PCSKeyClient setICDP:](self, "setICDP:", [v18 BOOLValue]);

    v19 = [valuesCopy objectForKeyedSubscript:@"circle2"];
    -[PCSKeyClient setCircle:](self, "setCircle:", [v19 BOOLValue]);

    v20 = [valuesCopy objectForKeyedSubscript:@"firstSync"];
  }

  else
  {
    [(PCSKeyClient *)self setICDP:0];
    [(PCSKeyClient *)self setCircle:0];
    v20 = +[NSDate date];
  }

  v21 = v20;
  [(PCSKeyClient *)self setFirstSync:v20];
}

- (id)getValues:(id)values
{
  valuesCopy = values;
  uuid = [(PCSKeyClient *)self uuid];

  if (uuid)
  {
    if (!valuesCopy)
    {
      valuesCopy = &stru_100039CF8;
    }

    lastSeen = [(PCSKeyClient *)self lastSeen];

    if (!lastSeen)
    {
      v7 = +[NSDate date];
      [(PCSKeyClient *)self setLastSeen:v7];
    }

    lastHash = [(PCSKeyClient *)self lastHash];

    if (!lastHash)
    {
      v9 = +[NSData data];
      [(PCSKeyClient *)self setLastHash:v9];
    }

    name = [(PCSKeyClient *)self name];

    if (!name)
    {
      uuid2 = [(PCSKeyClient *)self uuid];
      [(PCSKeyClient *)self setName:uuid2];
    }

    buildVersion = [(PCSKeyClient *)self buildVersion];

    if (!buildVersion)
    {
      [(PCSKeyClient *)self setBuildVersion:@"0"];
    }

    v30[0] = @"lastSeen";
    lastSeen2 = [(PCSKeyClient *)self lastSeen];
    v31[0] = lastSeen2;
    v30[1] = @"lastHash";
    lastHash2 = [(PCSKeyClient *)self lastHash];
    v31[1] = lastHash2;
    v30[2] = @"name";
    name2 = [(PCSKeyClient *)self name];
    v31[2] = name2;
    v30[3] = @"failures";
    v13 = [NSNumber numberWithInt:[(PCSKeyClient *)self failures]];
    v31[3] = v13;
    v30[4] = @"numberHandshakes";
    v14 = [NSNumber numberWithLong:[(PCSKeyClient *)self numberHandshakes]];
    v31[4] = v14;
    v30[5] = @"buildVersion";
    buildVersion2 = [(PCSKeyClient *)self buildVersion];
    v31[5] = buildVersion2;
    v30[6] = @"protocol";
    v16 = [NSNumber numberWithLong:[(PCSKeyClient *)self protocolVersion]];
    v31[6] = v16;
    v30[7] = @"iCDP2";
    v17 = [NSNumber numberWithBool:[(PCSKeyClient *)self iCDP]];
    v31[7] = v17;
    v30[8] = @"circle2";
    v18 = [NSNumber numberWithBool:[(PCSKeyClient *)self circle]];
    v30[9] = @"dsid";
    v31[8] = v18;
    v31[9] = valuesCopy;
    v19 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:10];
    v20 = [v26 dictionaryWithDictionary:v19];

    lastSent = [(PCSKeyClient *)self lastSent];

    if (lastSent)
    {
      lastSent2 = [(PCSKeyClient *)self lastSent];
      [v20 setObject:lastSent2 forKey:@"lastSent"];
    }

    firstSync = [(PCSKeyClient *)self firstSync];

    if (firstSync)
    {
      firstSync2 = [(PCSKeyClient *)self firstSync];
      [v20 setObject:firstSync2 forKey:@"firstSync"];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end