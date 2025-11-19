@interface TITesterUtils
+ (id)decomposeDiphthong:(unsigned __int16)a3;
+ (id)decomposeDoublePatchim:(unsigned __int16)a3;
+ (id)decomposeHangul:(unsigned __int16)a3;
+ (id)decomposeHangulSequence:(id)a3;
@end

@implementation TITesterUtils

+ (id)decomposeHangulSequence:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [v3 length];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = +[TITesterUtils decomposeHangul:](TITesterUtils, "decomposeHangul:", [v3 characterAtIndex:i]);
      [v4 appendString:v8];
    }
  }

  return v4;
}

+ (id)decomposeHangul:(unsigned __int16)a3
{
  v14 = a3;
  if ((a3 - 12623) <= 0x14)
  {
    v3 = [TITesterUtils decomposeDiphthong:?];
LABEL_5:
    v4 = v3;
    goto LABEL_9;
  }

  if ((a3 + 10332) <= 0xD45Bu)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&v14 length:1];
    goto LABEL_5;
  }

  v5 = (a3 + 21504) / 0x24Cu;
  v6 = (a3 + 21504) % 0x24Cu;
  v7 = v6 / 0x1Cu;
  v8 = v6 % 0x1Cu;
  v4 = [MEMORY[0x277CCAB68] string];
  v13 = [@"ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ" characterAtIndex:v5];
  v9 = [MEMORY[0x277CCACA8] stringWithCharacters:&v13 length:1];
  [v4 appendString:v9];

  v10 = +[TITesterUtils decomposeDiphthong:](TITesterUtils, "decomposeDiphthong:", [@"ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ" characterAtIndex:v7]);
  [v4 appendString:v10];
  if (v8)
  {
    v11 = +[TITesterUtils decomposeDoublePatchim:](TITesterUtils, "decomposeDoublePatchim:", [@"ㄱㄲㄳㄴㄵㄶㄷㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅄㅅㅆㅇㅈㅊㅋㅌㅍㅎ" characterAtIndex:v8 - 1]);
    [v4 appendString:v11];
  }

LABEL_9:

  return v4;
}

+ (id)decomposeDoublePatchim:(unsigned __int16)a3
{
  v8 = a3;
  v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
  v4 = [@"ㄳㄵㄶㄺㄻㄼㄽㄾㄿㅀㅄ" rangeOfString:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = [&unk_287ED4A90 objectAtIndex:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)decomposeDiphthong:(unsigned __int16)a3
{
  v8 = a3;
  v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
  v4 = [@"ㅘㅙㅚㅝㅞㅟㅢ" rangeOfString:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = [&unk_287ED4A78 objectAtIndex:v4];
  }

  v6 = v5;

  return v6;
}

@end