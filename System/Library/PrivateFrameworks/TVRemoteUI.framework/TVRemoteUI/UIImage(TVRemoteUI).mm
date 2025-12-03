@interface UIImage(TVRemoteUI)
+ (id)tvrui_symbolImageWithName:()TVRemoteUI font:fontSize:weight:scale:maxPointSize:;
+ (id)tvrui_symbolImageWithName:()TVRemoteUI font:scale:;
+ (id)tvrui_symbolImageWithName:()TVRemoteUI fontSize:weight:scale:;
+ (id)tvrui_symbolImageWithName:()TVRemoteUI textStyle:weight:scale:maxPointSize:;
@end

@implementation UIImage(TVRemoteUI)

+ (id)tvrui_symbolImageWithName:()TVRemoteUI textStyle:weight:scale:maxPointSize:
{
  v10 = MEMORY[0x277D74300];
  v11 = a3;
  v12 = [v10 preferredFontForTextStyle:a4];
  [v12 pointSize];
  v13 = [self tvrui_symbolImageWithName:v11 font:v12 fontSize:a5 weight:a6 scale:? maxPointSize:?];

  return v13;
}

+ (id)tvrui_symbolImageWithName:()TVRemoteUI fontSize:weight:scale:
{
  v9 = MEMORY[0x277D755D0];
  v10 = a4;
  v11 = [v9 configurationWithPointSize:a5 weight:a6 scale:self];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:v10 withConfiguration:v11];

  return v12;
}

+ (id)tvrui_symbolImageWithName:()TVRemoteUI font:fontSize:weight:scale:maxPointSize:
{
  v10 = MEMORY[0x277D755D0];
  if (self >= a2)
  {
    selfCopy = a2;
  }

  else
  {
    selfCopy = self;
  }

  v12 = a5;
  v13 = [v10 configurationWithPointSize:a7 weight:a8 scale:selfCopy];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:v12 withConfiguration:v13];

  return v14;
}

+ (id)tvrui_symbolImageWithName:()TVRemoteUI font:scale:
{
  v7 = MEMORY[0x277D755D0];
  v8 = a3;
  v9 = [v7 configurationWithFont:a4 scale:a5];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:v8 withConfiguration:v9];

  return v10;
}

@end