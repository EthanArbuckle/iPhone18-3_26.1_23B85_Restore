@interface NSUserActivity(IMAVPlayer)
- (double)currentTime;
- (id)containerIdentifier;
- (id)containerTitle;
- (id)itemIdentifier;
- (id)itemTitle;
- (id)storeTrackID;
- (uint64_t)setValue:()IMAVPlayer forKey:;
- (void)setCurrentTime:()IMAVPlayer;
@end

@implementation NSUserActivity(IMAVPlayer)

- (id)itemTitle
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"itemTitle"];

  return v2;
}

- (id)itemIdentifier
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"itemIdentifier"];

  return v2;
}

- (id)containerTitle
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"containerTitle"];

  return v2;
}

- (id)containerIdentifier
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"containerIdentifier"];

  return v2;
}

- (void)setCurrentTime:()IMAVPlayer
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [a1 setValue:v2 forKey:@"currentTime"];
}

- (double)currentTime
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"currentTime"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)storeTrackID
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"storeTrackID"];

  return v2;
}

- (uint64_t)setValue:()IMAVPlayer forKey:
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = result;
    v10 = a4;
    v11[0] = a3;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a4;
    v8 = a3;
    v9 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];

    [v5 addUserInfoEntriesFromDictionary:v9];
    return [v5 setNeedsSave:1];
  }

  return result;
}

@end