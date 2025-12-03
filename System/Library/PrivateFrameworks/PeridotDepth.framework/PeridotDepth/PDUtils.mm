@interface PDUtils
+ (id)getPresetName:(int)name;
+ (int)getPresetFromName:(id)name;
@end

@implementation PDUtils

+ (id)getPresetName:(int)name
{
  if (name <= 3)
  {
    v4 = (+[PDUtils getPresets]+ 16 * name)[8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)getPresetFromName:(id)name
{
  nameCopy = name;
  v4 = +[PDUtils getPresets];
  if (![nameCopy caseInsensitiveCompare:v4->var1])
  {
    goto LABEL_9;
  }

  if (![nameCopy caseInsensitiveCompare:v4[1].var1])
  {
    ++v4;
LABEL_9:
    var0 = v4->var0;
    goto LABEL_10;
  }

  if (![nameCopy caseInsensitiveCompare:v4[2].var1])
  {
    v4 += 2;
    goto LABEL_9;
  }

  if (![nameCopy caseInsensitiveCompare:v4[3].var1])
  {
    v4 += 3;
    goto LABEL_9;
  }

  var0 = -1;
LABEL_10:

  return var0;
}

@end