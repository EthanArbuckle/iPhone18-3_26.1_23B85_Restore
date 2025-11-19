@interface PDUtils
+ (id)getPresetName:(int)a3;
+ (int)getPresetFromName:(id)a3;
@end

@implementation PDUtils

+ (id)getPresetName:(int)a3
{
  if (a3 <= 3)
  {
    v4 = (+[PDUtils getPresets]+ 16 * a3)[8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)getPresetFromName:(id)a3
{
  v3 = a3;
  v4 = +[PDUtils getPresets];
  if (![v3 caseInsensitiveCompare:v4->var1])
  {
    goto LABEL_9;
  }

  if (![v3 caseInsensitiveCompare:v4[1].var1])
  {
    ++v4;
LABEL_9:
    var0 = v4->var0;
    goto LABEL_10;
  }

  if (![v3 caseInsensitiveCompare:v4[2].var1])
  {
    v4 += 2;
    goto LABEL_9;
  }

  if (![v3 caseInsensitiveCompare:v4[3].var1])
  {
    v4 += 3;
    goto LABEL_9;
  }

  var0 = -1;
LABEL_10:

  return var0;
}

@end