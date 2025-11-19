@interface AWDCoreRoutineMapItem(LearnedLocationEngine)
- (void)initWithMapItem:()LearnedLocationEngine;
@end

@implementation AWDCoreRoutineMapItem(LearnedLocationEngine)

- (void)initWithMapItem:()LearnedLocationEngine
{
  v4 = a3;
  v5 = objc_opt_new();
  if (![v4 source])
  {
    v6 = 0;
    goto LABEL_33;
  }

  if ([v4 source])
  {
    [v5 addMapItemSources:1];
  }

  if (([v4 source] & 2) != 0)
  {
    [v5 addMapItemSources:12];
  }

  if (([v4 source] & 4) != 0)
  {
    [v5 addMapItemSources:2];
  }

  if (([v4 source] & 8) != 0)
  {
    [v5 addMapItemSources:4];
  }

  if (([v4 source] & 0x10) != 0)
  {
    [v5 addMapItemSources:5];
  }

  if (([v4 source] & 0x40) != 0)
  {
    [v5 addMapItemSources:7];
  }

  if (([v4 source] & 0x80) != 0)
  {
    [v5 addMapItemSources:8];
  }

  if (([v4 source] & 0x100) != 0)
  {
    [v5 addMapItemSources:9];
  }

  if (([v4 source] & 0x200) != 0)
  {
    [v5 addMapItemSources:10];
  }

  if (([v4 source] & 0x400) != 0)
  {
    [v5 addMapItemSources:11];
  }

  if (([v4 source] & 0x800) != 0)
  {
    [v5 addMapItemSources:13];
  }

  if (([v4 source] & 0x1000) != 0)
  {
    [v5 addMapItemSources:14];
  }

  if (([v4 source] & 0x2000) != 0)
  {
    [v5 addMapItemSources:15];
  }

  if (([v4 source] & 0x4000) != 0)
  {
    [v5 addMapItemSources:16];
  }

  if (([v4 source] & 0x8000) != 0)
  {
    v6 = 17;
LABEL_33:
    [v5 addMapItemSources:v6];
  }

  [v5 setHasMuid:{objc_msgSend(v4, "validMUID")}];

  return v5;
}

@end