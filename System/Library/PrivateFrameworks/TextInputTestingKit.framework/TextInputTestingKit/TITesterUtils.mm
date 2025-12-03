@interface TITesterUtils
+ (id)decomposeDiphthong:(unsigned __int16)diphthong;
+ (id)decomposeDoublePatchim:(unsigned __int16)patchim;
+ (id)decomposeHangul:(unsigned __int16)hangul;
+ (id)decomposeHangulSequence:(id)sequence;
@end

@implementation TITesterUtils

+ (id)decomposeHangulSequence:(id)sequence
{
  sequenceCopy = sequence;
  string = [MEMORY[0x277CCAB68] string];
  v5 = [sequenceCopy length];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = +[TITesterUtils decomposeHangul:](TITesterUtils, "decomposeHangul:", [sequenceCopy characterAtIndex:i]);
      [string appendString:v8];
    }
  }

  return string;
}

+ (id)decomposeHangul:(unsigned __int16)hangul
{
  hangulCopy = hangul;
  if ((hangul - 12623) <= 0x14)
  {
    v3 = [TITesterUtils decomposeDiphthong:?];
LABEL_5:
    string = v3;
    goto LABEL_9;
  }

  if ((hangul + 10332) <= 0xD45Bu)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&hangulCopy length:1];
    goto LABEL_5;
  }

  v5 = (hangul + 21504) / 0x24Cu;
  v6 = (hangul + 21504) % 0x24Cu;
  v7 = v6 / 0x1Cu;
  v8 = v6 % 0x1Cu;
  string = [MEMORY[0x277CCAB68] string];
  v13 = [@"ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ" characterAtIndex:v5];
  v9 = [MEMORY[0x277CCACA8] stringWithCharacters:&v13 length:1];
  [string appendString:v9];

  v10 = +[TITesterUtils decomposeDiphthong:](TITesterUtils, "decomposeDiphthong:", [@"ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ" characterAtIndex:v7]);
  [string appendString:v10];
  if (v8)
  {
    v11 = +[TITesterUtils decomposeDoublePatchim:](TITesterUtils, "decomposeDoublePatchim:", [@"ㄱㄲㄳㄴㄵㄶㄷㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅄㅅㅆㅇㅈㅊㅋㅌㅍㅎ" characterAtIndex:v8 - 1]);
    [string appendString:v11];
  }

LABEL_9:

  return string;
}

+ (id)decomposeDoublePatchim:(unsigned __int16)patchim
{
  patchimCopy = patchim;
  v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&patchimCopy length:1];
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

+ (id)decomposeDiphthong:(unsigned __int16)diphthong
{
  diphthongCopy = diphthong;
  v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&diphthongCopy length:1];
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