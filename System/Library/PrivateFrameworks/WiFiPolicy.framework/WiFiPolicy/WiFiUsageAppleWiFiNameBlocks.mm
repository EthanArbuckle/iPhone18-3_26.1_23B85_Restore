@interface WiFiUsageAppleWiFiNameBlocks
- (WiFiUsageAppleWiFiNameBlocks)initWithAPName:(id)a3;
@end

@implementation WiFiUsageAppleWiFiNameBlocks

- (WiFiUsageAppleWiFiNameBlocks)initWithAPName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 containsString:@"."] & 1) == 0 && (v22.receiver = self, v22.super_class = WiFiUsageAppleWiFiNameBlocks, v6 = -[WiFiUsageAppleWiFiNameBlocks init](&v22, sel_init), (self = v6) != 0))
  {
    [(WiFiUsageAppleWiFiNameBlocks *)v6 setBuilding:0];
    [(WiFiUsageAppleWiFiNameBlocks *)self setSection:0];
    [(WiFiUsageAppleWiFiNameBlocks *)self setFloor:0];
    [(WiFiUsageAppleWiFiNameBlocks *)self setPod:0];
    [(WiFiUsageAppleWiFiNameBlocks *)self setOther:0];
    v7 = 0;
    if ([v5 containsString:@"-"])
    {
      v7 = [v5 componentsSeparatedByString:@"-"];
    }

    if ([v7 count])
    {
      v8 = [v7 objectAtIndex:0];
      [(WiFiUsageAppleWiFiNameBlocks *)self setBuilding:v8];
    }

    if ([v7 count] >= 2)
    {
      v9 = [v7 objectAtIndex:1];
      v10 = [v9 length];

      v11 = [v7 objectAtIndex:1];
      v12 = v11;
      if (v10 < 2)
      {
        [(WiFiUsageAppleWiFiNameBlocks *)self setFloor:v11];
      }

      else
      {
        v13 = [v11 substringWithRange:{0, 1}];
        [(WiFiUsageAppleWiFiNameBlocks *)self setSection:v13];

        v14 = [v7 objectAtIndex:1];
        v15 = [v14 substringWithRange:{1, 1}];
        [(WiFiUsageAppleWiFiNameBlocks *)self setFloor:v15];

        v12 = [v7 objectAtIndex:1];
        v16 = [v12 substringFromIndex:2];
        [(WiFiUsageAppleWiFiNameBlocks *)self setPod:v16];
      }
    }

    if ([v7 count] >= 4)
    {
      v19 = [v7 objectAtIndex:1];
      [(WiFiUsageAppleWiFiNameBlocks *)self setSection:v19];

      v20 = [v7 objectAtIndex:2];
      [(WiFiUsageAppleWiFiNameBlocks *)self setFloor:v20];

      [(WiFiUsageAppleWiFiNameBlocks *)self setPod:0];
    }

    if ([v7 count] >= 2)
    {
      v21 = [v7 lastObject];
      [(WiFiUsageAppleWiFiNameBlocks *)self setOther:v21];
    }

    self = self;

    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end