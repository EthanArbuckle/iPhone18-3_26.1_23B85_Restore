@interface PPConnectionsDataDetectors
+ (id)addressComponentValueWithLocationField:(unsigned __int8)field forDataDetectorsMatch:(id)match addressComponents:(id)components;
@end

@implementation PPConnectionsDataDetectors

+ (id)addressComponentValueWithLocationField:(unsigned __int8)field forDataDetectorsMatch:(id)match addressComponents:(id)components
{
  fieldCopy = field;
  matchCopy = match;
  componentsCopy = components;
  v9 = componentsCopy;
  v10 = 0;
  if (fieldCopy <= 4)
  {
    if (fieldCopy > 2)
    {
      if (fieldCopy == 3)
      {
        v11 = MEMORY[0x277CCA6E8];
      }

      else
      {
        v11 = MEMORY[0x277CCA6B0];
      }
    }

    else
    {
      if (fieldCopy == 1)
      {
        v12 = matchCopy;
LABEL_18:
        v10 = v12;
        goto LABEL_19;
      }

      if (fieldCopy != 2)
      {
        goto LABEL_19;
      }

      v11 = MEMORY[0x277CCA6D8];
    }

LABEL_17:
    v12 = [componentsCopy objectForKeyedSubscript:*v11];
    goto LABEL_18;
  }

  if (fieldCopy <= 6)
  {
    if (fieldCopy == 5)
    {
      v11 = MEMORY[0x277CCA6F0];
    }

    else
    {
      v11 = MEMORY[0x277CCA6E0];
    }

    goto LABEL_17;
  }

  if (fieldCopy != 7)
  {
    if (fieldCopy != 9)
    {
      goto LABEL_19;
    }

    v11 = MEMORY[0x277CCA6B8];
    goto LABEL_17;
  }

  v14 = [componentsCopy objectForKeyedSubscript:*MEMORY[0x277CCA6B0]];
  v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA6E0]];
  v10 = [PPConnectionsAddressFormatter formattedCityAndStateWithCity:v14 state:v15];

LABEL_19:

  return v10;
}

@end